uint64_t sub_26292B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_262921EB8(a2);
  sub_26292C8C4(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2629226C4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F680, &qword_262950610);
  v9 = (a2 + *(result + 36));
  *v9 = sub_26292E340;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_26292B710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26292B7F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26292B8C0(uint64_t a1)
{
  sub_26292B964();
  if (v1 <= 0x3F)
  {
    sub_26292B9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2628DCCD8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26292B964()
{
  if (!qword_27FF2F698)
  {
    v0 = sub_26294D968();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF2F698);
    }
  }
}

void sub_26292B9B4(uint64_t a1)
{
  if (!qword_27FF2F6A0)
  {
    sub_26294D168();
    v1 = sub_26294D968();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2F6A0);
    }
  }
}

unint64_t sub_26292BA10()
{
  result = qword_27FF2F6A8;
  if (!qword_27FF2F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F680, &qword_262950610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6B0, &qword_262950680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6B8, &qword_262950688);
    sub_2628DFD0C(&qword_27FF2F6C0, &qword_27FF2F6B0, &qword_262950680, MEMORY[0x277CE1198]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6C8, &qword_262950690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D0, &qword_262950698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6D8, &qword_2629506A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6E0, &qword_2629506A8);
    sub_2628DFD0C(&qword_27FF2F6E8, &qword_27FF2F6D8, &qword_2629506A0, MEMORY[0x277CDDA18]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
    sub_26292BC88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F6A8);
  }

  return result;
}

unint64_t sub_26292BC88()
{
  result = qword_27FF2F6F8;
  if (!qword_27FF2F6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F6F0, &qword_2629506B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F700, &qword_2629506B8);
    sub_2628DFD0C(&qword_27FF2F708, &qword_27FF2F700, &qword_2629506B8, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F6F8);
  }

  return result;
}

unint64_t sub_26292BD7C()
{
  result = qword_27FF2F718;
  if (!qword_27FF2F718)
  {
    sub_26292BDE4(255, &qword_27FF2F710, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F718);
  }

  return result;
}

uint64_t sub_26292BDE4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26292BE2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();
}

uint64_t sub_26292BEAC(uint64_t a1, void **a2)
{
  v4 = sub_26294DD18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v13 = v12;
  sub_26294D008();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26292C034@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SEStorageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_262922880(v4, a1);
}

unint64_t sub_26292C0AC()
{
  result = qword_27FF2F748;
  if (!qword_27FF2F748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F738, &qword_262950718);
    sub_26292C164();
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F748);
  }

  return result;
}

unint64_t sub_26292C164()
{
  result = qword_27FF2F750;
  if (!qword_27FF2F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F758, &qword_262950728);
    sub_2628DFD0C(&qword_27FF2F760, &qword_27FF2F768, &qword_262950730, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F750);
  }

  return result;
}

uint64_t sub_26292C214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26292C25C()
{
  result = qword_27FF2F770;
  if (!qword_27FF2F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F740, &qword_262950720);
    sub_26292C2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F770);
  }

  return result;
}

unint64_t sub_26292C2E0()
{
  result = qword_27FF2F778;
  if (!qword_27FF2F778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F780, &qword_262950738);
    sub_26292C36C();
    sub_26292C5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F778);
  }

  return result;
}

unint64_t sub_26292C36C()
{
  result = qword_27FF2F788;
  if (!qword_27FF2F788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F790, &qword_262950740);
    sub_26292C3F8();
    sub_26292C4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F788);
  }

  return result;
}

unint64_t sub_26292C3F8()
{
  result = qword_27FF2F798;
  if (!qword_27FF2F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F7A0, &qword_262950748);
    sub_26292C214(&qword_27FF2F7A8, type metadata accessor for PassbookView, &unk_262950D5C);
    sub_26292C214(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F798);
  }

  return result;
}

unint64_t sub_26292C4E4()
{
  result = qword_27FF2F7B0;
  if (!qword_27FF2F7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F7B8, &qword_262950750);
    sub_26292C214(&qword_27FF2F7C0, type metadata accessor for RecommendedForDeleteView, &unk_26294F63C);
    sub_26292C214(&qword_27FF2F7C8, type metadata accessor for ViennaView, &unk_26294E820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F7B0);
  }

  return result;
}

unint64_t sub_26292C5D0()
{
  result = qword_27FF2F7D0;
  if (!qword_27FF2F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F7D8, &qword_262950758);
    sub_26292C65C();
    sub_26292C748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F7D0);
  }

  return result;
}

unint64_t sub_26292C65C()
{
  result = qword_27FF2F7E0;
  if (!qword_27FF2F7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F7E8, &qword_262950760);
    sub_26292C214(&qword_27FF2EFE8, type metadata accessor for MuirfieldView, &unk_2629512B4);
    sub_26292C214(&qword_27FF2F7F0, type metadata accessor for ESimView, &unk_26294F550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F7E0);
  }

  return result;
}

unint64_t sub_26292C748()
{
  result = qword_27FF2F7F8;
  if (!qword_27FF2F7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F800, &qword_262950768);
    sub_26292C214(&qword_27FF2E850, type metadata accessor for ViennaAppCategoryView, &unk_26294FE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F7F8);
  }

  return result;
}

uint64_t sub_26292C8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26292C92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26292C98C()
{
  result = qword_27FF2F8A8;
  if (!qword_27FF2F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8A0, &qword_2629508A8);
    sub_26292CA18();
    sub_26292CE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8A8);
  }

  return result;
}

unint64_t sub_26292CA18()
{
  result = qword_27FF2F8B0;
  if (!qword_27FF2F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8B8, &qword_2629508B0);
    sub_26292CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8B0);
  }

  return result;
}

unint64_t sub_26292CAA4()
{
  result = qword_27FF2F8C0;
  if (!qword_27FF2F8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8C8, &qword_2629508B8);
    sub_26292CB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8C0);
  }

  return result;
}

unint64_t sub_26292CB30()
{
  result = qword_27FF2F8D0;
  if (!qword_27FF2F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8D8, &qword_2629508C0);
    sub_26292CBE8();
    sub_2628DFD0C(&qword_27FF2F930, &qword_27FF2F938, &qword_2629508F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8D0);
  }

  return result;
}

unint64_t sub_26292CBE8()
{
  result = qword_27FF2F8E0;
  if (!qword_27FF2F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8E8, &qword_2629508C8);
    sub_26292CCA0();
    sub_2628DFD0C(&qword_27FF2F920, &qword_27FF2F928, &qword_2629508E8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8E0);
  }

  return result;
}

unint64_t sub_26292CCA0()
{
  result = qword_27FF2F8F0;
  if (!qword_27FF2F8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F8F8, &qword_2629508D0);
    sub_26292CD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F8F0);
  }

  return result;
}

unint64_t sub_26292CD2C()
{
  result = qword_27FF2F900;
  if (!qword_27FF2F900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F908, &qword_2629508D8);
    sub_26292CDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F900);
  }

  return result;
}

unint64_t sub_26292CDB8()
{
  result = qword_27FF2F910;
  if (!qword_27FF2F910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F918, &qword_2629508E0);
    sub_2629139D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F910);
  }

  return result;
}

unint64_t sub_26292CE3C()
{
  result = qword_27FF2F940;
  if (!qword_27FF2F940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F948, &qword_2629508F8);
    sub_26292CEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F940);
  }

  return result;
}

unint64_t sub_26292CEC8()
{
  result = qword_27FF2F950;
  if (!qword_27FF2F950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F958, &qword_262950900);
    sub_26292CF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F950);
  }

  return result;
}

unint64_t sub_26292CF54()
{
  result = qword_27FF2F960;
  if (!qword_27FF2F960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F968, &qword_262950908);
    sub_26292CCA0();
    sub_2628DFD0C(&qword_27FF2F930, &qword_27FF2F938, &qword_2629508F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F960);
  }

  return result;
}

unint64_t sub_26292D01C()
{
  result = qword_27FF2F998;
  if (!qword_27FF2F998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F990, &qword_262950920);
    v1 = MEMORY[0x277CDDF68];
    sub_2628DFD0C(&qword_27FF2F9A0, &qword_27FF2F9A8, &qword_262950928, MEMORY[0x277CDDF68]);
    sub_2628DFD0C(&qword_27FF2F9B0, &qword_27FF2F9B8, &qword_262950930, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F998);
  }

  return result;
}

unint64_t sub_26292D104()
{
  result = qword_27FF2F9E8;
  if (!qword_27FF2F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F268, &unk_26294FBC0);
    sub_2628DFD0C(&qword_27FF2F9F0, &qword_27FF2F5B8, &qword_262950248, MEMORY[0x277CDF028]);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2F9E8);
  }

  return result;
}

unint64_t sub_26292D1F8()
{
  result = qword_27FF2FA08;
  if (!qword_27FF2FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA00, &qword_262950968);
    sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA08);
  }

  return result;
}

unint64_t sub_26292D3D4()
{
  result = qword_27FF2FA40;
  if (!qword_27FF2FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA40);
  }

  return result;
}

unint64_t sub_26292D428()
{
  result = qword_27FF2FA48;
  if (!qword_27FF2FA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA30, &qword_2629509D0);
    sub_26292D4E0();
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA48);
  }

  return result;
}

unint64_t sub_26292D4E0()
{
  result = qword_27FF2FA50;
  if (!qword_27FF2FA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA58, &qword_2629509E0);
    sub_26292D3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA50);
  }

  return result;
}

unint64_t sub_26292D578()
{
  result = qword_27FF2FA60;
  if (!qword_27FF2FA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA20, &qword_2629509C0);
    sub_26292D5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA60);
  }

  return result;
}

unint64_t sub_26292D5FC()
{
  result = qword_27FF2FA68;
  if (!qword_27FF2FA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA70, &qword_262950A30);
    sub_26292D6B4();
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA68);
  }

  return result;
}

unint64_t sub_26292D6B4()
{
  result = qword_27FF2FA78;
  if (!qword_27FF2FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FA80, &qword_262950A38);
    sub_2628DFD0C(&qword_27FF2FA88, &qword_27FF2FA90, &qword_262950A40, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FA78);
  }

  return result;
}

uint64_t sub_26292D788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FA70, &qword_262950A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26292D804()
{
  result = qword_27FF2FAB8;
  if (!qword_27FF2FAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAB0, &qword_262950A58);
    sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
    sub_26292C214(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FAB8);
  }

  return result;
}

double sub_26292D8EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_26292D8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26294D268();
  *a1 = result;
  return result;
}

uint64_t sub_26292D96C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294D288();
  *a1 = result;
  return result;
}

unint64_t sub_26292D9C4()
{
  result = qword_27FF2FAE8;
  if (!qword_27FF2FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAE0, &qword_262950B28);
    sub_26292DA7C();
    sub_2628DFD0C(&qword_27FF2FB10, &qword_27FF2FB18, &qword_262950B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FAE8);
  }

  return result;
}

unint64_t sub_26292DA7C()
{
  result = qword_27FF2FAF0;
  if (!qword_27FF2FAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAF8, &qword_262950B30);
    sub_26292DB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FAF0);
  }

  return result;
}

unint64_t sub_26292DB08()
{
  result = qword_27FF2FB00;
  if (!qword_27FF2FB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB08, &qword_262950B38);
    sub_2629139D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB00);
  }

  return result;
}

uint64_t sub_26292DB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_2628DF758(a1, a2, a3 & 1);
  }

  else
  {

    return sub_26292DBE8(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_26292DBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_2628DF758(a1, a2, a3 & 1);
  }

  else
  {

    return sub_26292DC3C(a1, a2, a3, a4);
  }
}

uint64_t sub_26292DC3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2628DF758(a1, a2, a3 & 1);
}

unint64_t sub_26292DC78()
{
  result = qword_27FF2FB30;
  if (!qword_27FF2FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAD8, &qword_262950AF0);
    sub_26292DD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB30);
  }

  return result;
}

unint64_t sub_26292DD04()
{
  result = qword_27FF2FB38;
  if (!qword_27FF2FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB40, &qword_262950B58);
    sub_26292DD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB38);
  }

  return result;
}

unint64_t sub_26292DD90()
{
  result = qword_27FF2FB48;
  if (!qword_27FF2FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB50, &qword_262950B60);
    sub_26292DE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB48);
  }

  return result;
}

unint64_t sub_26292DE1C()
{
  result = qword_27FF2FB58;
  if (!qword_27FF2FB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB60, &qword_262950B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB68, &unk_262950B70);
    sub_26292DEE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB58);
  }

  return result;
}

unint64_t sub_26292DEE4()
{
  result = qword_27FF2FB70;
  if (!qword_27FF2FB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB68, &unk_262950B70);
    sub_26292D9C4();
    sub_2628DFD0C(&qword_27FF2F930, &qword_27FF2F938, &qword_2629508F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB70);
  }

  return result;
}

unint64_t sub_26292DF9C()
{
  result = qword_27FF2FB78;
  if (!qword_27FF2FB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAC8, &qword_262950AE0);
    sub_26292E028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB78);
  }

  return result;
}

unint64_t sub_26292E028()
{
  result = qword_27FF2FB80;
  if (!qword_27FF2FB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB28, &qword_262950B50);
    sub_26292E0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FB80);
  }

  return result;
}

unint64_t sub_26292E0B4()
{
  result = qword_27FF2FB88[0];
  if (!qword_27FF2FB88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FB20, &qword_262950B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FAE0, &qword_262950B28);
    sub_26292D9C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF2FB88);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for SEStorageView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_26294D168();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F678, &qword_262950608);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26292E2C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SEStorageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_26292E390(uint64_t a1)
{
  sub_26292EA8C(319);
  if (v1 <= 0x3F)
  {
    sub_26292EAE4(319, &qword_27FF2FC18, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26292EAE4(319, &qword_27FF2FC20, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26292E484(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_26294C4F8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + 26;
  if (a2 > v16)
  {
    v19 = *(v10 + 64) + ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 1;
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_16;
    }

    v22 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v22 <= 0xFF)
      {
        if (v22 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_36;
        }

LABEL_23:
        v23 = (v21 - 1) << v20;
        if (v19 > 3)
        {
          v23 = 0;
        }

        if (*(v10 + 64) + ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFF8)) & ~v14) == -1)
        {
          v25 = 0;
        }

        else
        {
          if (v19 <= 3)
          {
            v24 = *(v10 + 64) + ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFF8)) & ~v14) + 1;
          }

          else
          {
            v24 = 4;
          }

          if (v24 > 2)
          {
            if (v24 == 3)
            {
              v25 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v25 = *a1;
            }
          }

          else if (v24 == 1)
          {
            v25 = *a1;
          }

          else
          {
            v25 = *a1;
          }
        }

        return v16 + (v25 | v23) + 1;
      }

      v21 = *(a1 + v19);
      if (*(a1 + v19))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v26 = *(a1 + 1);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v29 = (*(v7 + 48))((a1 + v12 + 16) & ~v12);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v10 + 48);

  return v28((v18 + ((((a1 + v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_26292E728(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_26294C4F8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v12 <= v14)
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v21 = (v15 + 16) & ~v15;
  v23 = v18 + ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 1;
  if (a3 <= v20)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v20 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v20 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v20 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v20 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v23] = 0;
    }

    else if (v8)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v19 & 0x80000000) != 0)
    {
      if (v12 == v20)
      {
        if (v11 >= 2)
        {
          v29 = *(v10 + 56);

          v29(&a1[v15 + 16] & ~v15, (a2 + 1));
        }
      }

      else
      {
        v30 = *(v13 + 56);

        v30((v17 + 26 + (((&a1[v15 + 16] & ~v15) + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v26 = ~v20 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v18 + ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 1);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (v18 + ((v17 + 26 + ((v21 + v22) & 0xFFFFFFF8)) & ~v17) == -1)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v18 + ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 1);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v23] = v27;
  }
}

void sub_26292EA8C(uint64_t a1)
{
  if (!qword_27FF2FC10)
  {
    sub_26294C4F8();
    v1 = sub_26294DEE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2FC10);
    }
  }
}

void sub_26292EAE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26294DEE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26292EB74(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_26294DB48();
}

uint64_t sub_26292ED44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a1;
  v55 = a2;
  v3 = sub_26294D4E8();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC28, &qword_262950BF8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC30, &qword_262950C00);
  v5 = *(a1 + 16);
  sub_26294D4F8();
  sub_26294D1B8();
  v67 = sub_26294D1B8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC38, &qword_262950C08);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC40, &qword_262950C10);
  swift_getTupleTypeMetadata();
  v44 = sub_26294DB38();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_26294D9C8();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = sub_26294D1B8();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = &v36 - v10;
  v37 = swift_getWitnessTable();
  v63 = v37;
  v64 = MEMORY[0x277CDF900];
  v50 = MEMORY[0x277CDFAD8];
  v38 = swift_getWitnessTable();
  v65 = v9;
  v66 = v38;
  v41 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v36 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC48, &qword_262950C18);
  v14 = sub_26294D1B8();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v36 = &v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E8E8, &qword_262950C20);
  v16 = sub_26294D1B8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v40 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v45 = &v36 - v20;
  v21 = *(v49 + 24);
  v56 = v5;
  v57 = v21;
  v58 = v51;
  sub_26294D338();
  sub_26294D9B8();
  v22 = v39;
  sub_26294D7F8();
  (*(v47 + 8))(v8, v6);
  v23 = v52;
  sub_26294D4D8();
  v24 = v38;
  sub_26294D768();
  (*(v53 + 8))(v23, v54);
  (*(v46 + 8))(v22, v9);
  v65 = v9;
  v66 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2629312AC();
  v26 = v36;
  sub_26294D6D8();
  (*(v42 + 8))(v13, OpaqueTypeMetadata2);
  v27 = [objc_opt_self() secondarySystemBackgroundColor];
  v65 = sub_26294D838();
  v28 = sub_2628DFD0C(&qword_27FF2FC58, &qword_27FF2FC48, &qword_262950C18, MEMORY[0x277CE0470]);
  v61 = OpaqueTypeConformance2;
  v62 = v28;
  v29 = swift_getWitnessTable();
  v30 = v40;
  sub_26294D718();

  (*(v48 + 8))(v26, v14);
  v31 = sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
  v59 = v29;
  v60 = v31;
  swift_getWitnessTable();
  v32 = *(v17 + 16);
  v33 = v45;
  v32(v45, v30, v16);
  v34 = *(v17 + 8);
  v34(v30, v16);
  v32(v55, v33, v16);
  return (v34)(v33, v16);
}

uint64_t sub_26292F56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC38, &qword_262950C08);
  v7 = MEMORY[0x28223BE20](v133);
  v129 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = (&v112 - v9);
  sub_26294D4F8();
  v10 = sub_26294D1B8();
  v124 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v123 = &v112 - v11;
  v130 = v12;
  v135 = sub_26294D1B8();
  v139 = *(v135 - 8);
  v13 = MEMORY[0x28223BE20](v135);
  v138 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v112 - v15;
  v16 = sub_26294D398();
  v121 = *(v16 - 8);
  v122 = v16;
  MEMORY[0x28223BE20](v16);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26294D8E8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC60, &qword_262950C28);
  MEMORY[0x28223BE20](v22 - 8);
  v119 = &v112 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC68, &qword_262950C30);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v118 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v117 = &v112 - v28;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC28, &qword_262950BF8);
  v29 = MEMORY[0x28223BE20](v127);
  v132 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v112 - v31;
  v125 = a2;
  v126 = a3;
  v33 = a2;
  v34 = a1;
  v36 = type metadata accessor for CleanupUsageRowView(0, v33, a3, v35);
  v37 = *(a1 + *(v36 + 48));
  v136 = v32;
  v131 = v36;
  if (v37 == 2)
  {
    v38 = v36;
    (*(v25 + 56))(v32, 1, 1, v24);
  }

  else
  {
    v114 = v25;
    v115 = v24;
    v116 = v34;
    sub_26294D8D8();
    (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
    v113 = sub_26294D908();

    (*(v19 + 8))(v21, v18);
    sub_26294DAE8();
    sub_26294D0D8();
    v39 = v173;
    v40 = v174;
    v41 = v175;
    v42 = v176;
    v43 = v177;
    v44 = v178;
    if (v37)
    {
      v45 = sub_26294D848();
    }

    else
    {
      v45 = sub_26294D868();
    }

    v46 = v45;
    KeyPath = swift_getKeyPath();
    LOBYTE(v146) = v40;
    LOBYTE(v153[0]) = v42;
    *&v166 = v113;
    *(&v166 + 1) = v39;
    LOBYTE(v167) = v40;
    *(&v167 + 1) = v41;
    LOBYTE(v168) = v42;
    *(&v168 + 1) = v43;
    *&v169 = v44;
    *(&v169 + 1) = KeyPath;
    *&v170 = v46;
    if (v37)
    {
      v48 = v120;
      sub_26294D388();
      v49 = v136;
      v51 = v114;
      v50 = v115;
      v52 = v122;
    }

    else
    {
      *&v155 = MEMORY[0x277D84F90];
      sub_262931CC8(&qword_27FF2FCF8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD00, &qword_262950C98);
      sub_2628DFD0C(&qword_27FF2FD08, &qword_27FF2FD00, &qword_262950C98, MEMORY[0x277D83970]);
      v48 = v120;
      v52 = v122;
      sub_26294DF08();
      v49 = v136;
      v51 = v114;
      v50 = v115;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC98, &qword_262950C40);
    sub_262931464();
    v53 = v119;
    sub_26294D788();
    (*(v121 + 8))(v48, v52);
    v157 = v168;
    v158 = v169;
    *&v159 = v170;
    v155 = v166;
    v156 = v167;
    sub_2628DF6F0(&v155, &qword_27FF2FC98, &qword_262950C40);
    v54 = sub_26294D568();
    sub_26294D058();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v118;
    sub_262906F00(v53, v118, &qword_27FF2FC60, &qword_262950C28);
    v64 = v63 + *(v50 + 36);
    *v64 = v54;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = v63;
    v66 = v117;
    sub_262906F00(v65, v117, &qword_27FF2FC68, &qword_262950C30);
    sub_262906F00(v66, v49, &qword_27FF2FC68, &qword_262950C30);
    (*(v51 + 56))(v49, 0, 1, v50);
    v34 = v116;
    v38 = v131;
  }

  if (*(v34 + *(v38 + 52)) == 1)
  {
    v67 = sub_26294D878();
    sub_26294DAE8();
    sub_26294D0D8();
    v120 = v180;
    v121 = v179;
    v118 = v182;
    v119 = v181;
    v116 = v184;
    v117 = v183;
    v122 = v67;
  }

  else
  {
    v121 = 0;
    v122 = 0;
    v119 = 0;
    v120 = 0;
    v117 = 0;
    v118 = 0;
    v116 = 0;
  }

  v68 = v123;
  v69 = v125;
  v70 = v126;
  sub_26294D748();
  sub_26294D568();
  v71 = sub_262931CC8(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v164 = v70;
  v165 = v71;
  v72 = v34;
  v73 = v130;
  WitnessTable = swift_getWitnessTable();
  v75 = v138;
  sub_26294D808();
  v124[1](v68, v73);
  v162 = WitnessTable;
  v163 = MEMORY[0x277CDF918];
  v76 = v135;
  v130 = swift_getWitnessTable();
  v77 = v139;
  v123 = *(v139 + 16);
  (v123)(v137, v75, v76);
  v78 = *(v77 + 8);
  v139 = v77 + 8;
  v124 = v78;
  (v78)(v75, v76);
  v79 = sub_26294D3C8();
  v80 = v134;
  *v134 = v79;
  v80[1] = 0;
  *(v80 + 16) = 1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC70, &qword_262950C38);
  sub_2629303BC(v72, v69, v70, v80 + *(v81 + 44));
  LOBYTE(v77) = sub_26294D578();
  sub_26294D058();
  v82 = v80 + *(v133 + 36);
  *v82 = v77;
  *(v82 + 1) = v83;
  *(v82 + 2) = v84;
  *(v82 + 3) = v85;
  *(v82 + 4) = v86;
  v82[40] = 0;
  v87 = (v72 + *(v131 + 44));
  v88 = v87[1];
  if (v88)
  {
    *&v166 = *v87;
    *(&v166 + 1) = v88;
    sub_2628DF230();

    v89 = sub_26294D648();
    v91 = v90;
    v93 = v92;
    sub_26294D8A8();
    v131 = sub_26294D608();
    v95 = v94;
    v97 = v96;
    v99 = v98;

    sub_2628DF758(v89, v91, v93 & 1);

    sub_26294DB08();
    sub_26294D0D8();
    LOBYTE(v89) = v97 & 1;
    LOBYTE(v166) = v97 & 1;
    v100 = sub_26294D558();
    sub_26294D058();
    *&v155 = v131;
    *(&v155 + 1) = v95;
    LOBYTE(v156) = v89;
    *(&v156 + 1) = v99;
    v157 = v146;
    v158 = v147;
    v159 = v148;
    LOBYTE(v160) = v100;
    *(&v160 + 1) = v101;
    *&v161[0] = v102;
    *(&v161[0] + 1) = v103;
    *&v161[1] = v104;
    BYTE8(v161[1]) = 0;
    nullsub_1();
    v170 = v159;
    v171 = v160;
    v172[0] = v161[0];
    *(v172 + 9) = *(v161 + 9);
    v166 = v155;
    v167 = v156;
    v168 = v157;
    v169 = v158;
  }

  else
  {
    sub_262931300(&v166);
  }

  v105 = v132;
  sub_2628DF954(v136, v132, &qword_27FF2FC28, &qword_262950BF8);
  v153[0] = v122;
  v153[1] = v121;
  v153[2] = v120;
  v153[3] = v119;
  v153[4] = v118;
  v153[5] = v117;
  v153[6] = v116;
  v154[0] = v105;
  v154[1] = v153;
  v106 = v138;
  v107 = v135;
  (v123)(v138, v137, v135);
  v154[2] = v106;
  v108 = v134;
  v109 = v129;
  sub_2628DF954(v134, v129, &qword_27FF2FC38, &qword_262950C08);
  v150 = v170;
  v151 = v171;
  v152[0] = v172[0];
  *(v152 + 9) = *(v172 + 9);
  v146 = v166;
  v147 = v167;
  v148 = v168;
  v149 = v169;
  v154[3] = v109;
  v154[4] = &v146;
  sub_2628DF954(&v166, &v155, &qword_27FF2FC40, &qword_262950C10);
  v145[0] = v127;
  v145[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC30, &qword_262950C00);
  v145[2] = v107;
  v145[3] = v133;
  v145[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FC40, &qword_262950C10);
  v140 = sub_262931698(&qword_27FF2FC78, &qword_27FF2FC28, &qword_262950BF8, sub_26293131C);
  v141 = sub_26293153C();
  v142 = v130;
  v143 = sub_2629315E0();
  v144 = sub_262931698(&qword_27FF2FCD0, &qword_27FF2FC40, &qword_262950C10, sub_262931714);
  sub_26292EB74(v154, 5uLL, v145);

  sub_2628DF6F0(&v166, &qword_27FF2FC40, &qword_262950C10);
  sub_2628DF6F0(v108, &qword_27FF2FC38, &qword_262950C08);
  v110 = v124;
  (v124)(v137, v107);
  sub_2628DF6F0(v136, &qword_27FF2FC28, &qword_262950BF8);
  v159 = v150;
  v160 = v151;
  v161[0] = v152[0];
  *(v161 + 9) = *(v152 + 9);
  v155 = v146;
  v156 = v147;
  v157 = v148;
  v158 = v149;
  sub_2628DF6F0(&v155, &qword_27FF2FC40, &qword_262950C10);
  sub_2628DF6F0(v109, &qword_27FF2FC38, &qword_262950C08);
  (v110)(v138, v107);

  return sub_2628DF6F0(v132, &qword_27FF2FC28, &qword_262950BF8);
}

uint64_t sub_2629303BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD10, &qword_262950CA0) - 8;
  MEMORY[0x28223BE20](v79);
  v6 = v76 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD18, &qword_262950CA8) - 8;
  v7 = MEMORY[0x28223BE20](v81);
  v85 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = v76 - v10;
  MEMORY[0x28223BE20](v9);
  v86 = v76 - v11;
  v78 = a1;
  v12 = a1[1];
  *&v106 = *a1;
  *(&v106 + 1) = v12;
  v13 = sub_2628DF230();

  v76[0] = v13;
  v14 = sub_26294D648();
  v16 = v15;
  v18 = v17;
  sub_26294D598();
  v19 = sub_26294D638();
  v21 = v20;
  v23 = v22;
  v76[1] = v24;

  sub_2628DF758(v14, v16, v18 & 1);

  sub_26294D898();
  v25 = sub_26294D608();
  v27 = v26;
  v29 = v28;
  v77 = v30;

  sub_2628DF758(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v32 = &v6[*(v79 + 44)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD20, &qword_262950CE0) + 28);
  v34 = *MEMORY[0x277CE0B28];
  v35 = sub_26294D5F8();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  *v6 = v25;
  *(v6 + 1) = v27;
  v6[16] = v29 & 1;
  *(v6 + 3) = v77;
  *(v6 + 4) = KeyPath;
  v36 = v78;
  *(v6 + 5) = 1;
  v6[48] = 0;
  sub_26294DAF8();
  sub_26294D1F8();
  v37 = v80;
  sub_262906F00(v6, v80, &qword_27FF2FD10, &qword_262950CA0);
  v38 = (v37 + *(v81 + 44));
  v39 = v120;
  v38[4] = v119;
  v38[5] = v39;
  v38[6] = v121;
  v40 = v116;
  *v38 = v115;
  v38[1] = v40;
  v41 = v118;
  v38[2] = v117;
  v38[3] = v41;
  sub_262906F00(v37, v86, &qword_27FF2FD18, &qword_262950CA8);
  v43 = type metadata accessor for CleanupUsageRowView(0, v82, v83, v42);
  if (*(v36 + *(v43 + 40)))
  {
    sub_26293198C(&v106);
  }

  else
  {
    *&v106 = sub_262930A20(v43);
    *(&v106 + 1) = v44;
    v45 = sub_26294D648();
    v47 = v46;
    v49 = v48;
    sub_26294D5B8();
    v50 = sub_26294D638();
    v52 = v51;
    v54 = v53;

    sub_2628DF758(v45, v47, v49 & 1);

    sub_26294D8A8();
    v55 = sub_26294D608();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    sub_2628DF758(v50, v52, v54 & 1);

    sub_26294DAF8();
    sub_26294D1F8();
    LOBYTE(v96[0]) = v59 & 1;
    *&v97 = v55;
    *(&v97 + 1) = v57;
    LOBYTE(v98) = v59 & 1;
    *(&v98 + 1) = v61;
    nullsub_1();
    v112 = v103;
    v113 = v104;
    v114 = v105;
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v111 = v102;
    v106 = v97;
    v107 = v98;
  }

  v62 = v85;
  v63 = v86;
  sub_2628DF954(v86, v85, &qword_27FF2FD18, &qword_262950CA8);
  v93 = v112;
  v94 = v113;
  v95 = v114;
  v89 = v108;
  v90 = v109;
  v91 = v110;
  v92 = v111;
  v87 = v106;
  v88 = v107;
  v64 = v84;
  sub_2628DF954(v62, v84, &qword_27FF2FD18, &qword_262950CA8);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD28, &qword_262950D18) + 48);
  v66 = v94;
  v96[6] = v93;
  v96[7] = v94;
  v67 = v95;
  v96[8] = v95;
  v69 = v91;
  v68 = v92;
  v96[4] = v91;
  v96[5] = v92;
  v70 = v89;
  v71 = v90;
  v96[2] = v89;
  v96[3] = v90;
  v73 = v87;
  v72 = v88;
  v96[0] = v87;
  v96[1] = v88;
  v74 = (v64 + v65);
  v74[6] = v93;
  v74[7] = v66;
  v74[8] = v67;
  v74[2] = v70;
  v74[3] = v71;
  v74[4] = v69;
  v74[5] = v68;
  *v74 = v73;
  v74[1] = v72;
  sub_2628DF954(v96, &v97, &qword_27FF2FD30, &unk_262950D20);
  sub_2628DF6F0(v63, &qword_27FF2FD18, &qword_262950CA8);
  v103 = v93;
  v104 = v94;
  v105 = v95;
  v99 = v89;
  v100 = v90;
  v101 = v91;
  v102 = v92;
  v97 = v87;
  v98 = v88;
  sub_2628DF6F0(&v97, &qword_27FF2FD30, &unk_262950D20);
  return sub_2628DF6F0(v62, &qword_27FF2FD18, &qword_262950CA8);
}

uint64_t sub_262930A20(uint64_t a1)
{
  v3 = sub_26294C5F8();
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294C578();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26294C4B8();
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_26294C4F8();
  v15 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = v1 + *(a1 + 36);
  v21 = v20;
  v23 = v22;
  sub_2628DF954(v19, v13, &qword_27FF2E978, &qword_26294EC40);
  if ((*(v23 + 48))(v13, 1, v21) == 1)
  {
    sub_2628DF6F0(v13, &qword_27FF2E978, &qword_26294EC40);
    v24 = v66;
    (*(v66 + 104))(v5, *MEMORY[0x277D48E00], v3);
    v25 = sub_26294C5E8();
    (*(v24 + 8))(v5, v3);
  }

  else
  {
    v26 = *(v23 + 32);
    v59 = v18;
    v26(v18, v13, v21);
    v58 = v8;
    sub_26294C558();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD38, &unk_262950D30);
    v64 = v21;
    v27 = sub_26294C568();
    v28 = *(v27 - 8);
    v29 = v28;
    v67 = v23;
    v30 = *(v28 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26294E7D0;
    v33 = v32 + v31;
    v34 = v9;
    v35 = v5;
    v36 = v3;
    v37 = *(v29 + 104);
    v37(v33, *MEMORY[0x277CC9968], v27);
    v37(v33 + v30, *MEMORY[0x277CC9940], v27);
    v38 = v66;
    sub_2629319A8(v32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v39 = v60;
    sub_26294C4E8();
    v40 = v61;
    v41 = v58;
    v42 = v59;
    sub_26294C548();

    v43 = *(v67 + 8);
    v67 += 8;
    v43(v39, v64);
    (*(v62 + 1))(v41, v63);
    v44 = v40;
    v45 = sub_26294C4A8();
    if ((v46 & 1) != 0 || v45 > 1)
    {
      v62 = v43;
      v63 = v34;
      v47 = sub_26294C498();
      if ((v48 & 1) != 0 || v47 >= 2)
      {
        (*(v38 + 104))(v35, *MEMORY[0x277D48E00], v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_26294ECB0;
        v50 = v44;
        v51 = objc_opt_self();
        v52 = sub_26294C4C8();
        v53 = [v51 localizedStringFromDate:v52 dateStyle:1 timeStyle:0];

        v54 = sub_26294DD68();
        v56 = v55;

        *(v49 + 56) = MEMORY[0x277D837D0];
        *(v49 + 64) = sub_2628DF5B8();
        *(v49 + 32) = v54;
        *(v49 + 40) = v56;
        v25 = sub_26294C6B8();

        (*(v38 + 8))(v35, v36);
        (*(v65 + 8))(v50, v63);
      }

      else
      {
        (*(v38 + 104))(v35, *MEMORY[0x277D48E00], v36);
        v25 = sub_26294C5E8();
        (*(v38 + 8))(v35, v36);
        (*(v65 + 8))(v40, v63);
      }

      v62(v42, v64);
    }

    else
    {
      (*(v38 + 104))(v35, *MEMORY[0x277D48E00], v36);
      v25 = sub_26294C5E8();
      (*(v38 + 8))(v35, v36);
      (*(v65 + 8))(v40, v34);
      v43(v42, v64);
    }
  }

  return v25;
}

unint64_t sub_2629312AC()
{
  result = qword_27FF2FC50;
  if (!qword_27FF2FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FC50);
  }

  return result;
}

double sub_262931300(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_26293131C()
{
  result = qword_27FF2FC80;
  if (!qword_27FF2FC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC68, &qword_262950C30);
    sub_2629313A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FC80);
  }

  return result;
}

unint64_t sub_2629313A8()
{
  result = qword_27FF2FC88;
  if (!qword_27FF2FC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC60, &qword_262950C28);
    sub_262931464();
    sub_262931CC8(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FC88);
  }

  return result;
}

unint64_t sub_262931464()
{
  result = qword_27FF2FC90;
  if (!qword_27FF2FC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC98, &qword_262950C40);
    sub_2629317C0(&qword_27FF2E9D0, &qword_27FF2E9D8, &qword_26294EA40);
    sub_2628DFD0C(&qword_27FF2EA08, &qword_27FF2EA10, &qword_26294EA50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FC90);
  }

  return result;
}

unint64_t sub_26293153C()
{
  result = qword_27FF2FCA0;
  if (!qword_27FF2FCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC30, &qword_262950C00);
    sub_2629317C0(&qword_27FF2FCA8, &qword_27FF2FCB0, &qword_262950C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FCA0);
  }

  return result;
}

unint64_t sub_2629315E0()
{
  result = qword_27FF2FCB8;
  if (!qword_27FF2FCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC38, &qword_262950C08);
    sub_2628DFD0C(&qword_27FF2FCC0, &qword_27FF2FCC8, &qword_262950C50, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FCB8);
  }

  return result;
}

uint64_t sub_262931698(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_262931714()
{
  result = qword_27FF2FCD8;
  if (!qword_27FF2FCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FCE0, &qword_262950C58);
    sub_2629317C0(&qword_27FF2FCE8, &qword_27FF2FCF0, &qword_262950C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FCD8);
  }

  return result;
}

uint64_t sub_2629317C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_262931838@<X0>(uint64_t a1@<X8>)
{
  result = sub_26294D2F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2629318C0(uint64_t a1)
{
  v2 = sub_26294D5F8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26294D238();
}

double sub_26293198C(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2629319A8(uint64_t a1)
{
  v2 = sub_26294C568();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD40, &qword_262950D40);
    v9 = sub_26294DF68();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_262931CC8(&qword_27FF2FD48, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_26294DD38();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_262931CC8(&qword_27FF2FD50, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_26294DD48();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_262931CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262931D40(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC28, &qword_262950BF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC30, &qword_262950C00);
  sub_26294D4F8();
  sub_26294D1B8();
  sub_26294D1B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC38, &qword_262950C08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC40, &qword_262950C10);
  swift_getTupleTypeMetadata();
  sub_26294DB38();
  swift_getWitnessTable();
  sub_26294D9C8();
  sub_26294D1B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FC48, &qword_262950C18);
  sub_26294D1B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E8E8, &qword_262950C20);
  sub_26294D1B8();
  swift_getOpaqueTypeConformance2();
  sub_2628DFD0C(&qword_27FF2FC58, &qword_27FF2FC48, &qword_262950C18, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
  return swift_getWitnessTable();
}

uint64_t sub_262932010(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629321B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for PassbookView(uint64_t a1)
{
  result = qword_27FF2FD58;
  if (!qword_27FF2FD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629323AC()
{
  v0 = sub_26294C828();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_26294C848();
  sub_26294C848();
  v7 = MEMORY[0x26672BE40](v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_2629324E0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for PassbookView(0);
  v3 = v2 - 8;
  v35 = *(v2 - 8);
  v33 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF88, &qword_26294F6C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF90, &qword_26294F6C8);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  *v7 = sub_26294D3C8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F030, &unk_262950DB0) + 44)];
  v39 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F038, &unk_26294F7A0);
  sub_26290CE58();
  sub_26294D5E8();
  v13 = [objc_opt_self() secondarySystemBackgroundColor];
  v40 = sub_26294D838();
  v14 = sub_26294D9D8();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F078, &qword_262950DE0) + 36)] = v14;
  v32 = v1;
  v40 = sub_26294C868();
  v41 = v15;
  v16 = sub_2628DFD0C(&qword_27FF2EFB8, &qword_27FF2EF88, &qword_26294F6C0, MEMORY[0x277CE1198]);
  v17 = sub_2628DF230();
  v18 = MEMORY[0x277D837D0];
  sub_26294D708();

  sub_2629348F0(v7);
  sub_26294CD78();
  v19 = v34;
  sub_262934958(v1, v34);
  v20 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v21 = swift_allocObject();
  sub_2629349C0(v19, v21 + v20);
  type metadata accessor for PassbookCategoryView(0);
  v40 = v5;
  v41 = v18;
  v42 = v16;
  v43 = v17;
  swift_getOpaqueTypeConformance2();
  sub_262935C98(&qword_27FF2EFC0, MEMORY[0x277D49038], MEMORY[0x277D49048]);
  sub_262935C98(&qword_27FF2EFC8, type metadata accessor for PassbookCategoryView, &unk_262951808);
  v22 = v38;
  v23 = v36;
  sub_26294D778();

  (*(v37 + 8))(v11, v23);
  v24 = *(v32 + *(v3 + 28) + 8);
  type metadata accessor for SEStorageManagementController(0);
  sub_262935C98(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v25 = v24;
  v26 = sub_26294D178();
  v28 = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF98, &qword_26294F6D0);
  v30 = (v22 + *(result + 36));
  *v30 = v26;
  v30[1] = v28;
  return result;
}

uint64_t sub_2629329C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_26294CD78();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v14 = *(a2 + *(type metadata accessor for PassbookView(0) + 20) + 8);
  v15 = type metadata accessor for PassbookCategoryView(0);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  sub_26294DA08();
  v17 = (a3 + v15[5]);
  type metadata accessor for SEStorageManagementController(0);
  sub_262935C98(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  *v17 = sub_26294D178();
  v17[1] = v18;
  *(a3 + v15[7]) = 0;
  (*(v7 + 104))(v12, *MEMORY[0x277CDF0D8], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_26294D928();
  (*(v7 + 8))(v12, v6);
  v19 = v15[9];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_262932C40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  sub_26290CEE8();
  return sub_26294DA98();
}

uint64_t sub_262932CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for PassbookView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v14 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  sub_262934958(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2629349C0(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EB58, &qword_26294ECF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B0, &unk_262950DD0);
  sub_2628DFD0C(&qword_27FF2F088, &qword_27FF2EB58, &qword_26294ECF0, MEMORY[0x277D83980]);
  sub_2628DFD0C(&qword_27FF2E8A8, &qword_27FF2E8B0, &unk_262950DD0, MEMORY[0x277CDD938]);
  sub_262935C98(&qword_27FF2F090, MEMORY[0x277D49038], MEMORY[0x277D49058]);
  v8 = v15;
  sub_26294DA68();
  sub_262934958(v14, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  sub_2629349C0(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_262934AFC;
  *(v10 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F050, &unk_262950DC0);
  v12 = (v8 + *(result + 36));
  *v12 = sub_262935C40;
  v12[1] = v10;
  return result;
}

uint64_t sub_262932FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_26294CD78();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E928, &unk_26294F880);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E930, &unk_26294FFB0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
  v11 = sub_2628DF824();
  v12 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = MEMORY[0x277D49038];
  sub_262935C98(&qword_27FF2F0A8, MEMORY[0x277D49038], MEMORY[0x277D49050]);
  sub_262935C98(&qword_27FF2F0B0, v13, MEMORY[0x277D49040]);
  sub_262935C98(&qword_27FF2EFC0, v13, MEMORY[0x277D49048]);
  return sub_26294D118();
}

uint64_t sub_26293322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v51 = sub_26294C5F8();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v48 - v9);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - v11;
  v12 = sub_26294CD38();
  v14 = v13;
  sub_26294CD28();
  v15 = a1;
  sub_26294CD48();
  v17 = sub_2629205EC(v16);
  v19 = v18;
  *v10 = v12;
  v10[1] = v14;
  sub_2628DF954(v7, v10 + v8[9], &qword_27FF2E978, &qword_26294EC40);
  *(v10 + v8[15]) = 1;
  *(v10 + v8[10]) = 0;
  v20 = (v10 + v8[11]);
  *v20 = v17;
  v20[1] = v19;
  *(v10 + v8[12]) = 2;
  *(v10 + v8[13]) = 0;
  v21 = v10 + v8[14];
  SEStorageManagementViewModel.WalletUsageCategory.iconView.getter(&v59);
  v22 = v59;
  v23 = v60;
  v48 = v61;
  v49 = v62;
  sub_26294DAE8();
  sub_26294D0D8();
  v63 = v23;
  v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v25 = *(sub_26294D1D8() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_26294D378();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #6.0 }

  *v24 = _Q0;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *(v21 + 1) = v48;
  v33 = v65;
  *(v21 + 40) = v64;
  *v21 = v22;
  v21[8] = v23;
  *(v21 + 9) = v59;
  *(v21 + 3) = *(&v59 + 3);
  *(v21 + 4) = v49;
  *(v21 + 56) = v33;
  *(v21 + 72) = v66;
  sub_2628DF6F0(v7, &qword_27FF2E978, &qword_26294EC40);
  v34 = v50;
  v35 = v51;
  (*(v56 + 104))(v50, *MEMORY[0x277D48DF8], v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26294E7D0;
  v37 = v15;
  v38 = sub_26294CD38();
  v40 = v39;
  v41 = MEMORY[0x277D837D0];
  *(v36 + 56) = MEMORY[0x277D837D0];
  v42 = sub_2628DF5B8();
  *(v36 + 64) = v42;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  sub_26294CD48();
  v44 = sub_2629205EC(v43);
  *(v36 + 96) = v41;
  *(v36 + 104) = v42;
  *(v36 + 72) = v44;
  *(v36 + 80) = v45;
  sub_26294C6B8();

  (*(v56 + 8))(v34, v35);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  v46 = v52;
  sub_26294D798();

  sub_2628DF6F0(v10, &qword_27FF2E950, &unk_26294FFC0);
  v57 = v37;
  v58 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  sub_2628DF824();
  sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  sub_26294D6C8();
  return sub_2628DF6F0(v46, &qword_27FF2E930, &unk_26294FFB0);
}

uint64_t sub_2629337DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v3 = type metadata accessor for PassbookView(0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26294CD78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_26294C5F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D48DF0], v8);
  v19 = sub_26294C5E8();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v5);
  sub_262934958(v22, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + *(v20 + 80) + v14) & ~*(v20 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_2629349C0(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v27[0] = v19;
  v27[1] = v13;
  v24 = v27;
  v25 = 0x6873617274;
  v26 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();
}

uint64_t sub_262933B34(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_26294CBA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PassbookView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26294CD58();
  v14 = *(v13 + 16);
  v30 = v9;
  if (v14)
  {
    v26 = v10;
    v27 = v11;
    v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v13;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v32 = *(v15 + 56);
    v33 = v16;
    do
    {
      v33(v8, v17, v5);
      v18 = sub_26294CB98();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      if ((v35 & 1) == 0)
      {
        sub_2628F122C(v8, v4, 0, 1);
        sub_2628EC330();
      }

      sub_2628DF6F0(v4, &qword_27FF2ED68, &qword_26294F2F0);
      (*(v15 - 8))(v8, v5);
      v17 += v32;
      --v14;
    }

    while (v14);

    v19 = v31;
    v12 = v28;
    v10 = v26;
  }

  else
  {

    v19 = v31;
  }

  v20 = *(v19 + *(v30 + 20) + 8);
  sub_262934958(v19, v12);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_2629349C0(v12, v22 + v21);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v34 & 1) == 0)
  {
    v23 = v20;

    sub_262905918(v23, v23, sub_2629361D0, v22);
  }
}

uint64_t sub_262933F10(uint64_t a1)
{
  v3 = type metadata accessor for PassbookView(0);
  v4 = v3 - 8;
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = v5;
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_26294CBA8();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26294CD78();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F098, &qword_26294F7E0);
  v73 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = (&v50 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0A0, &qword_26294F7E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v50 - v20;
  v21 = *(v4 + 28);
  v54 = v1;
  v22 = *(v1 + v21 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v22;
  v23 = v58;
  sub_26294CFF8();

  v24 = v19;

  v26 = 0;
  v60 = v13 + 16;
  v69 = (v73 + 48);
  v70 = (v73 + 56);
  v62 = v13;
  v63 = v77;
  v27 = *(v77 + 16);
  v73 = v59 + 16;
  v28 = (v59 + 8);
  v65 = (v13 + 8);
  v66 = (v13 + 32);
  v29 = v57;
  v67 = v27;
  v68 = v24;
  v56 = a1;
  v55 = v12;
  while (1)
  {
    if (v26 == v27)
    {
      v30 = 1;
      v72 = v27;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      if (v26 >= *(v63 + 16))
      {
        goto LABEL_22;
      }

      v31 = v26 + 1;
      v33 = v61;
      v32 = v62;
      v34 = v63 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26;
      v35 = *(v29 + 48);
      *v61 = v26;
      (*(v32 + 16))(&v33[v35], v34, v12);
      v36 = v33;
      v24 = v68;
      sub_262906F00(v36, v68, &qword_27FF2F098, &qword_26294F7E0);
      v30 = 0;
      v72 = v31;
    }

    v37 = v71;
    (*v70)(v24, v30, 1, v29);
    sub_262906F00(v24, v37, &qword_27FF2F0A0, &qword_26294F7E8);
    if ((*v69)(v37, 1, v29) == 1)
    {
      break;
    }

    (*v66)(v23, v37 + *(v29 + 48), v12);
    if (sub_26294C5A8())
    {
      v38 = sub_26294CD58();
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = *(v59 + 80);
        v64 = v38;
        v41 = v38 + ((v40 + 32) & ~v40);
        v42 = *(v59 + 72);
        v43 = *(v59 + 16);
        do
        {
          v43(v11, v41, v9);
          v44 = sub_26294CB98();
          (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_26294CFF8();

          if ((v75 & 1) == 0)
          {
            sub_2628F122C(v11, v8, 0, 1);
            sub_2628EC330();
          }

          sub_2628DF6F0(v8, &qword_27FF2ED68, &qword_26294F2F0);
          (*v28)(v11, v9);
          v41 += v42;
          --v39;
        }

        while (v39);

        v29 = v57;
        v12 = v55;
        v23 = v58;
      }

      else
      {
      }

      v24 = v68;
    }

    result = (*v65)(v23, v12);
    v27 = v67;
    v26 = v72;
  }

  v45 = v53;
  sub_262934958(v54, v53);
  v46 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v47 = swift_allocObject();
  sub_2629349C0(v45, v47 + v46);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v74;
  sub_26294CFF8();

  if ((v76 & 1) == 0)
  {
    v49 = v48;

    sub_262905918(v49, v49, sub_262935C48, v47);
  }
}

uint64_t sub_262934694(char a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = sub_26294D0F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E9A0, &qword_26294E9A8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  if (a1)
  {
    type metadata accessor for PassbookView(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v15 = v18[1];
    MEMORY[0x28223BE20](v14);
    v18[-2] = a2;
    sub_2629180CC(a3, v15, v13);

    v16 = sub_26294C8A8();
    v17 = (*(*(v16 - 8) + 48))(v13, 1, v16);
    result = sub_2628DF6F0(v13, &qword_27FF2E9A0, &qword_26294E9A8);
    if (v17 == 1)
    {
      sub_26291D460(v9);
      sub_26294D0E8();
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_2629348F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF88, &qword_26294F6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262934958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629349C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262934A68(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PassbookView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_262934B60@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v50 = a1;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD68, &qword_262950F90);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD70, &qword_262950F98);
  MEMORY[0x28223BE20](v51);
  v9 = &v39 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD78, &qword_262950FA0);
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = &v39 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v54)
  {
    KeyPath = swift_getKeyPath();
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD80, &qword_262951018);
    (*(*(v15 - 8) + 16))(v7, v50, v15);
    v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDB0, &unk_262951030) + 36)];
    *v16 = KeyPath;
    v16[1] = sub_262913BC8;
    v16[2] = v14;
    *&v7[*(v5 + 36)] = 0x3FE0000000000000;
    sub_2628DF954(v7, v9, &qword_27FF2FD68, &qword_262950F90);
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FD88, &unk_262951020);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    v19 = sub_2628DFD0C(&qword_27FF2FD90, &qword_27FF2FD80, &qword_262951018, MEMORY[0x277CE04B0]);
    v20 = sub_2628DF230();
    v21 = sub_2629362AC();
    v22 = sub_26291E4DC();
    v54 = v15;
    v55 = MEMORY[0x277D837D0];
    v56 = v17;
    v57 = v18;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v61 = v22;
    swift_getOpaqueTypeConformance2();
    sub_262936390();
    sub_26294D3F8();
    return sub_2628DF6F0(v7, &qword_27FF2FD68, &qword_262950F90);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v24 = v54;
    v25 = v55;
    v49 = v55;

    v62 = v24;
    v63 = v25;
    type metadata accessor for SEStorageManagementController(0);
    sub_262935C98(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    v26 = sub_26294D188();
    swift_getKeyPath();
    v47 = v10;
    sub_26294D198();

    v46 = &v39;
    v43 = v55;
    v44 = v54;
    v45 = v56;
    v28 = MEMORY[0x28223BE20](v27);
    v48 = v5;
    v42 = v38;
    MEMORY[0x28223BE20](v28);
    v38[3] = a3;
    v29 = v12;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD80, &qword_262951018);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FD88, &unk_262951020);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F568, &qword_262951650);
    v31 = sub_2628DFD0C(&qword_27FF2FD90, &qword_27FF2FD80, &qword_262951018, MEMORY[0x277CE04B0]);
    v32 = sub_2628DF230();
    v33 = sub_2629362AC();
    v34 = sub_26291E4DC();
    v38[1] = v33;
    v38[2] = v34;
    v38[0] = v32;
    v35 = v30;
    sub_26294D728();

    v36 = v47;
    v37 = v52;
    (*(v47 + 16))(v9, v29, v52);
    swift_storeEnumTagMultiPayload();
    v54 = v35;
    v55 = MEMORY[0x277D837D0];
    v56 = v40;
    v57 = v41;
    v58 = v31;
    v59 = v32;
    v60 = v33;
    v61 = v34;
    swift_getOpaqueTypeConformance2();
    sub_262936390();
    sub_26294D3F8();
    return (*(v36 + 8))(v29, v37);
  }
}

uint64_t sub_26293525C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v67 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDB8, &qword_262951070);
  MEMORY[0x28223BE20](v69);
  v6 = &v55 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F560, &unk_2629501F0);
  MEMORY[0x28223BE20](v71);
  v63 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_26294C5F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B8, &qword_262950248);
  v68 = *(v70 - 8);
  v15 = MEMORY[0x28223BE20](v70);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v55 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v72 = &v55 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v75 == 1)
  {
    v61 = v6;
    v62 = a3;
    v58 = *MEMORY[0x277D48DF0];
    v60 = *(v12 + 104);
    v60(v14);
    v22 = sub_26294C5E8();
    v24 = v23;
    v59 = *(v12 + 8);
    v59(v14, v11);
    v73 = v22;
    v74 = v24;
    sub_26294D028();
    v25 = sub_26294D048();
    v26 = *(v25 - 8);
    v56 = *(v26 + 56);
    v57 = v26 + 56;
    v56(v10, 0, 1, v25);
    v27 = swift_allocObject();
    v28 = v67;
    *(v27 + 16) = v67;
    *(v27 + 24) = a2;
    v55 = sub_2628DF230();
    v29 = a2;
    sub_26294D998();
    (v60)(v14, v58, v11);
    v30 = sub_26294C5E8();
    v32 = v31;
    v59(v14, v11);
    v73 = v30;
    v74 = v32;
    sub_26294D038();
    v56(v10, 0, 1, v25);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = v29;
    v34 = v29;
    v35 = v66;
    sub_26294D998();
    v36 = v68;
    v37 = *(v68 + 16);
    v38 = v64;
    v39 = v72;
    v40 = v70;
    v37(v64, v72, v70);
    v41 = v65;
    v37(v65, v35, v40);
    v42 = v63;
    v37(v63, v38, v40);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5C0, &qword_262950250);
    v37((v42 + *(v43 + 48)), v41, v40);
    v44 = *(v36 + 8);
    v44(v41, v40);
    v44(v38, v40);
    sub_2628DF954(v42, v61, &qword_27FF2F560, &unk_2629501F0);
    swift_storeEnumTagMultiPayload();
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    sub_2628DFD0C(&qword_27FF2F9F0, &qword_27FF2F5B8, &qword_262950248, MEMORY[0x277CDF028]);
    sub_26294D3F8();
    sub_2628DF6F0(v42, &qword_27FF2F560, &unk_2629501F0);
    v44(v35, v40);
    return (v44)(v39, v40);
  }

  else
  {
    (*(v12 + 104))(v14, *MEMORY[0x277D48DF0], v11);
    v46 = sub_26294C5E8();
    v48 = v47;
    (*(v12 + 8))(v14, v11);
    v73 = v46;
    v74 = v48;
    sub_26294D038();
    v49 = sub_26294D048();
    (*(*(v49 - 8) + 56))(v10, 0, 1, v49);
    v50 = swift_allocObject();
    *(v50 + 16) = v67;
    *(v50 + 24) = a2;
    sub_2628DF230();
    v51 = a2;
    v52 = v72;
    sub_26294D998();
    v53 = v68;
    v54 = v70;
    (*(v68 + 16))(v6, v52, v70);
    swift_storeEnumTagMultiPayload();
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    sub_2628DFD0C(&qword_27FF2F9F0, &qword_27FF2F5B8, &qword_262950248, MEMORY[0x277CDF028]);
    sub_26294D3F8();
    return (*(v53 + 8))(v52, v54);
  }
}

uint64_t sub_262935B3C@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v3 = v8;
  if (v8)
  {
    sub_2628DF230();
    result = sub_26294D648();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t sub_262935C08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262935C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262935CE8()
{
  v1 = sub_26294CD78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PassbookView(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_26294C8A8();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);

  v11 = v0 + v8 + v6[8];

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v13 = sub_26294D168();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26294D0F8();
    (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_262935F38()
{
  v1 = *(sub_26294CD78() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PassbookView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_262933B34(v0 + v2, v5);
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for PassbookView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26294D0F8();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2629362AC()
{
  result = qword_27FF2FD98;
  if (!qword_27FF2FD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FD88, &unk_262951020);
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    sub_2628DFD0C(&qword_27FF2F9F0, &qword_27FF2F5B8, &qword_262950248, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FD98);
  }

  return result;
}

unint64_t sub_262936390()
{
  result = qword_27FF2FDA0;
  if (!qword_27FF2FDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FD68, &qword_262950F90);
    sub_26293641C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FDA0);
  }

  return result;
}

unint64_t sub_26293641C()
{
  result = qword_27FF2FDA8;
  if (!qword_27FF2FDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FDB0, &unk_262951030);
    sub_2628DFD0C(&qword_27FF2FD90, &qword_27FF2FD80, &qword_262951018, MEMORY[0x277CE04B0]);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FDA8);
  }

  return result;
}

uint64_t sub_262936518()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26293659C()
{
  result = qword_27FF2FDC0;
  if (!qword_27FF2FDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FDC8, qword_262951078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FD80, &qword_262951018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FD88, &unk_262951020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F568, &qword_262951650);
    sub_2628DFD0C(&qword_27FF2FD90, &qword_27FF2FD80, &qword_262951018, MEMORY[0x277CE04B0]);
    sub_2628DF230();
    sub_2629362AC();
    sub_26291E4DC();
    swift_getOpaqueTypeConformance2();
    sub_262936390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FDC0);
  }

  return result;
}

uint64_t dispatch thunk of SEStorageManagementProtocol.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_262906944;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SEStorageManagementProtocol.complete(sufficientSpace:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2629070E0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SEStorageManagementProtocol.deletePasses(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_262936AA4;

  return v9(a1, a2, a3);
}

uint64_t sub_262936AA4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SEStorageManagementProtocol.deleteCredentials(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_262936DE0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SEStorageManagementProtocol.offloadMuirfield()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_262936DE0;

  return v7(a1, a2);
}

uint64_t sub_262936DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294CA28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDD0, &unk_2629515B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262936F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294CA28();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDD0, &unk_2629515B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ViennaGroupView(uint64_t a1)
{
  result = qword_27FF2FDD8;
  if (!qword_27FF2FDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629370B8(uint64_t a1)
{
  sub_26294CA28();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SEStorageManagementController(319);
    if (v2 <= 0x3F)
    {
      sub_262937174();
      if (v3 <= 0x3F)
      {
        sub_2629371C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_262937174()
{
  result = qword_27FF2FDE8;
  if (!qword_27FF2FDE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FF2FDE8);
  }

  return result;
}

void sub_2629371C4(uint64_t a1)
{
  if (!qword_27FF2FDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FDF8, "4;");
    v1 = sub_26294D068();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2FDF0);
    }
  }
}

uint64_t sub_262937244(uint64_t a1, uint64_t a2)
{
  v34 = sub_26294C7F8();
  v32 = *(v34 - 8);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = sub_26294C538();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = MEMORY[0x26672C010](v13);
  v33 = a2;
  MEMORY[0x26672C010](v16);
  v17 = sub_26294C518();
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v15, v8);
  if (v17)
  {
    sub_26294CA18();
    v19 = sub_26294C7D8();
    v21 = v20;
    v22 = *(v32 + 8);
    v23 = v7;
    v24 = v34;
    v22(v23, v34);
    sub_26294CA18();
    v25 = sub_26294C7D8();
    v27 = v26;
    v22(v5, v24);
    if (v19 == v25 && v21 == v27)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_26294E058();
    }
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_2629374DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26294D328();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ViennaGroupView(0);
  sub_2628DF954(v1 + *(v10 + 32), v9, &qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_262906F00(v9, a1, &qword_27FF2FDF8, "4;");
  }

  sub_26294DEB8();
  v12 = sub_26294D508();
  sub_26294CE18();

  sub_26294D318();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2629376C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE00, &qword_262951630);
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE08, &qword_262951138);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE10, &qword_262951140);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v80 - v11;
  v12 = sub_26294C538();
  v87 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v86 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26294C5F8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE18, &qword_262951148);
  MEMORY[0x28223BE20](v85);
  v21 = &v80 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE20, &qword_262951150);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v100 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE28, &qword_262951158);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v94 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v93 = &v80 - v26;
  v102 = v1;
  v84 = v21;
  sub_26293A718(v1, v21);
  v27 = type metadata accessor for ViennaGroupView(0);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v83 = v27;
  v32 = *(v27 + 24);
  v99 = v2;
  v88 = *(v2 + v32);
  v98 = v14;
  if (v88 == 1)
  {
    (*(v15 + 104))(v19, *MEMORY[0x277D48E08], v14);
    v33 = sub_26294C5E8();
    v35 = v34;
    (*(v15 + 8))(v19, v14);
    v103 = v33;
    v104 = v35;
    sub_2628DF230();
    v36 = sub_26294D648();
    v38 = v37;
    v80 = v12;
    v40 = v39;
    v81 = v9;
    sub_26294D5C8();
    v28 = sub_26294D638();
    v29 = v41;
    v43 = v42;
    v31 = v44;
    v14 = v98;

    v45 = v40 & 1;
    v12 = v80;
    sub_2628DF758(v36, v38, v45);
    v9 = v81;

    v30 = v43 & 1;
  }

  v103 = v28;
  v104 = v29;
  v105 = v30;
  v106 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE30, &qword_262951160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F568, &qword_262951650);
  sub_26293AFE0();
  sub_2628DFD0C(&qword_27FF2FE50, &qword_27FF2FE30, &qword_262951160, MEMORY[0x277CE14C0]);
  sub_26291E4DC();
  sub_26294DA88();
  (*(v15 + 104))(v101, *MEMORY[0x277D48DF8], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26294E7D0;
  v47 = v86;
  v48 = v99;
  MEMORY[0x26672C010]();
  v49 = sub_26294C508();
  v51 = v50;
  (*(v87 + 8))(v47, v12);
  v52 = MEMORY[0x277D837D0];
  *(v46 + 56) = MEMORY[0x277D837D0];
  v53 = sub_2628DF5B8();
  *(v46 + 64) = v53;
  *(v46 + 32) = v49;
  *(v46 + 40) = v51;
  v54 = *(v48 + *(v83 + 20));
  v55 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  v56 = swift_beginAccess();
  v57 = *(v54 + v55);
  MEMORY[0x28223BE20](v56);

  v58 = v91;
  sub_262918124(sub_26293B0DC, v57, v91);

  v59 = sub_26294CA28();
  v60 = *(v59 - 8);
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_2628DF6F0(v58, &qword_27FF2FE10, &qword_262951140);
    v61 = 0.0;
  }

  else
  {
    sub_26294C9F8();
    v63 = v62;
    (*(v60 + 8))(v58, v59);
    v61 = v63;
  }

  v64 = v93;
  v65 = sub_2629205EC(v61);
  *(v46 + 96) = v52;
  *(v46 + 104) = v53;
  *(v46 + 72) = v65;
  *(v46 + 80) = v66;
  v67 = v101;
  sub_26294C6B8();

  (*(v15 + 8))(v67, v98);
  sub_26293B0FC();
  v68 = v90;
  v69 = v100;
  sub_26294D798();

  (*(v89 + 8))(v69, v68);
  if (v88)
  {
    v70 = 1;
    v72 = v95;
    v71 = v96;
  }

  else
  {
    v73 = v82;
    sub_26293ADC8();
    v72 = v95;
    v74 = v73;
    v71 = v96;
    (*(v95 + 32))(v9, v74, v96);
    v70 = 0;
  }

  (*(v72 + 56))(v9, v70, 1, v71);
  v75 = v94;
  sub_2628DF954(v64, v94, &qword_27FF2FE28, &qword_262951158);
  v76 = v97;
  sub_2628DF954(v9, v97, &qword_27FF2FE08, &qword_262951138);
  v77 = v92;
  sub_2628DF954(v75, v92, &qword_27FF2FE28, &qword_262951158);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE60, &qword_262951170);
  sub_2628DF954(v76, v77 + *(v78 + 48), &qword_27FF2FE08, &qword_262951138);
  sub_2628DF6F0(v9, &qword_27FF2FE08, &qword_262951138);
  sub_2628DF6F0(v64, &qword_27FF2FE28, &qword_262951158);
  sub_2628DF6F0(v76, &qword_27FF2FE08, &qword_262951138);
  return sub_2628DF6F0(v75, &qword_27FF2FE28, &qword_262951158);
}

uint64_t sub_262938100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE68, &unk_262951660);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEC8, &qword_2629511D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v50 - v8;
  v10 = type metadata accessor for ViennaGroupView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FED0, &qword_2629511D8);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = v50 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FED8, &qword_2629511E0);
  v15 = MEMORY[0x28223BE20](v53);
  v58 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v52 = v50 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE10, &qword_262951140);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v50 - v22;
  v56 = v10;
  v24 = *(a1 + *(v10 + 20));
  v25 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v65 = a1;

  sub_262918124(sub_26293C02C, v26, v23);

  v27 = sub_26294CA28();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v23, 1, v27);
  v61 = v9;
  v57 = v20;
  if (v29 == 1)
  {
    sub_2628DF6F0(v23, &qword_27FF2FE10, &qword_262951140);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = sub_26294C928();
    (*(v28 + 8))(v23, v27);
  }

  v31 = sub_262944990(v30);

  v66 = v31;
  swift_getKeyPath();
  sub_26293B394(a1, v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v33 = swift_allocObject();
  sub_26293B3FC(v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26293B460;
  *(v34 + 24) = v33;
  v50[1] = v12;
  v35 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEE0, &qword_262951220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEE8, &qword_262951228);
  sub_2628DFD0C(&qword_27FF2FEF0, &qword_27FF2FEE0, &qword_262951220, MEMORY[0x277D83980]);
  sub_26293B588();
  sub_26294DA58();
  if (sub_262938FE4())
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    sub_26293B394(a1, v35);
    v38 = swift_allocObject();
    sub_26293B3FC(v35, v38 + v32);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_26293B920;
    *(v37 + 24) = v38;
    v36 = sub_262935C40;
  }

  v39 = v61;
  v40 = v57;
  v41 = v52;
  (*(v54 + 32))(v52, v64, v55);
  v42 = (v41 + *(v53 + 36));
  *v42 = v36;
  v42[1] = v37;
  sub_26293B988(v41, v40);
  if (*(a1 + *(v56 + 24)) == 1)
  {
    v43 = v51;
    sub_262939EE8(v51);
    sub_262906F00(v43, v39, &qword_27FF2FE68, &unk_262951660);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  (*(v59 + 56))(v39, v44, 1, v60);
  v45 = v58;
  sub_2628DF954(v40, v58, &qword_27FF2FED8, &qword_2629511E0);
  v46 = v62;
  sub_2628DF954(v39, v62, &qword_27FF2FEC8, &qword_2629511D0);
  v47 = v63;
  sub_2628DF954(v45, v63, &qword_27FF2FED8, &qword_2629511E0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF08, &qword_262951238);
  sub_2628DF954(v46, v47 + *(v48 + 48), &qword_27FF2FEC8, &qword_2629511D0);
  sub_2628DF6F0(v39, &qword_27FF2FEC8, &qword_2629511D0);
  sub_2628DF6F0(v40, &qword_27FF2FED8, &qword_2629511E0);
  sub_2628DF6F0(v46, &qword_27FF2FEC8, &qword_2629511D0);
  return sub_2628DF6F0(v45, &qword_27FF2FED8, &qword_2629511E0);
}

uint64_t sub_26293889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_26294C5F8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26294C9D8();
  v62 = *(v9 - 8);
  OpaqueTypeConformance2 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = v10;
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ViennaGroupView(0);
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = v12;
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EF20, &qword_26294F5D0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v52 - v14);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF00, &qword_262951230);
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = &v52 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF30, &qword_262951288);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v72 = &v52 - v17;
  if (sub_262938FE4())
  {
    v18 = sub_26294C9B8() & 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = sub_26294C988();
  v71 = a2;
  v20 = v19;
  v22 = v21;
  sub_26294C968();
  sub_26294C998();
  v24 = sub_2629205EC(v23);
  v54 = &v52;
  *v15 = v20;
  v15[1] = v22;
  *(v15 + v13[15]) = 1;
  *(v15 + v13[10]) = 0;
  v25 = (v15 + v13[11]);
  *v25 = v24;
  v25[1] = v26;
  *(v15 + v13[12]) = v18;
  *(v15 + v13[13]) = 0;
  MEMORY[0x28223BE20](v24);
  *(&v52 - 2) = a3;
  *(&v52 - 1) = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  v52 = sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
  v27 = sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
  v28 = v57;
  sub_26294D6C8();
  sub_2628DF6F0(v15, &qword_27FF2EF20, &qword_26294F5D0);
  v29 = v58;
  sub_26293B394(a3, v58);
  v31 = v61;
  v30 = v62;
  v32 = OpaqueTypeConformance2;
  (*(v62 + 16))(v61, v71, OpaqueTypeConformance2);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = (v56 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v35 = swift_allocObject();
  sub_26293B3FC(v29, v35 + v33);
  (*(v30 + 32))(v35 + v34, v31, v32);
  v73 = v13;
  v74 = v53;
  v75 = v52;
  v76 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v65;
  sub_26294D6E8();

  (*(v59 + 8))(v28, v36);
  v38 = v67;
  v37 = v68;
  v39 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277D48DF8], v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26294E7D0;
  v41 = sub_26294C988();
  v43 = v42;
  v44 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  v45 = sub_2628DF5B8();
  *(v40 + 64) = v45;
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  sub_26294C998();
  v47 = sub_2629205EC(v46);
  *(v40 + 96) = v44;
  *(v40 + 104) = v45;
  *(v40 + 72) = v47;
  *(v40 + 80) = v48;
  sub_26294C6B8();

  (*(v37 + 8))(v38, v39);
  v73 = v36;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v72;
  sub_26294D798();

  return (*(v64 + 8))(v50, v49);
}

uint64_t sub_262938FE4()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEA8, &unk_2629516B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDF8, "4;");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEB0, &qword_2629511C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_2629374DC(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_2628DF6F0(v8, &qword_27FF2FDF8, "4;");
    v19 = 1;
  }

  else
  {
    MEMORY[0x26672D010](v18);
    sub_2628DF6F0(v8, &qword_27FF2F118, &qword_26294FA50);
    v19 = 0;
  }

  v20 = *(v1 + 56);
  v20(v17, v19, 1, v0);
  (*(v1 + 104))(v15, *MEMORY[0x277CDF0D0], v0);
  v20(v15, 0, 1, v0);
  v21 = *(v3 + 48);
  sub_2628DF954(v17, v5, &qword_27FF2FEB0, &qword_2629511C0);
  sub_2628DF954(v15, &v5[v21], &qword_27FF2FEB0, &qword_2629511C0);
  v22 = *(v1 + 48);
  if (v22(v5, 1, v0) != 1)
  {
    sub_2628DF954(v5, v12, &qword_27FF2FEB0, &qword_2629511C0);
    if (v22(&v5[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v5[v21], v0);
      sub_26293BF98(&qword_27FF2FEB8, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
      v23 = sub_26294DD48();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
      sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
      v25(v12, v0);
      sub_2628DF6F0(v5, &qword_27FF2FEB0, &qword_2629511C0);
      return v23 & 1;
    }

    sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
    sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
  sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
  if (v22(&v5[v21], 1, v0) != 1)
  {
LABEL_9:
    sub_2628DF6F0(v5, &qword_27FF2FEA8, &unk_2629516B0);
    v23 = 0;
    return v23 & 1;
  }

  sub_2628DF6F0(v5, &qword_27FF2FEB0, &qword_2629511C0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_26293952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = type metadata accessor for ViennaGroupView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_26294C5F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D48DF0], v8);
  v12 = sub_26294C5E8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  sub_26293B394(a1, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_26293B3FC(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v19[0] = v12;
  v19[1] = v14;
  v18[4] = v19;
  v18[5] = 0x6873617274;
  v18[6] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
  sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
  sub_26294D988();
}

uint64_t sub_2629397C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26294C5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF38, &unk_2629517C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26294ECB0;
  *(v8 + 32) = a2;
  v10[1] = v8;
  sub_26293BF98(&qword_27FF2FF40, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF48, &qword_262951290);
  sub_2628DFD0C(&qword_27FF2FF50, &qword_27FF2FF48, &qword_262951290, MEMORY[0x277D83970]);
  sub_26294DF08();
  sub_262939980(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_262939980(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v22 - v3;
  v4 = sub_26294C588();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF10, &qword_262951760);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v26 = MEMORY[0x277D84FA0];
  sub_26294C598();
  sub_26294C5B8();
  sub_26293BF98(&qword_27FF2FF18, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  while (1)
  {
    sub_26294DE68();
    sub_26293BF98(&qword_27FF2FF20, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v11 = sub_26294DD48();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      break;
    }

    v12 = sub_26294DE88();
    v14 = *v13;
    v12(v25, 0);
    sub_26294DE78();
    sub_26294423C(v25, v14);
  }

  sub_2628DF6F0(v10, &qword_27FF2FF10, &qword_262951760);
  v15 = type metadata accessor for ViennaGroupView(0);
  v16 = v24;
  v17 = sub_26294C9D8();
  v18 = v23;
  (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  v19 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (LOBYTE(v25[0]) == 1)
  {
  }

  else
  {
    sub_2628F44C0(v22, v18, v19, 1u);

    sub_2628EC330();
  }

  v20 = sub_2628DF6F0(v18, &qword_27FF2ED60, &qword_26294F2E8);
  return (*(v16 + *(v15 + 28)))(v20);
}

uint64_t sub_262939D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED60, &qword_26294F2E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  type metadata accessor for ViennaGroupView(0);
  v7 = sub_26294C9D8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_26294C9B8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v11[15] & 1) == 0)
  {
    sub_2628F44C0(a1, v6, 0, (v9 & 1) == 0);
    sub_2628EC330();
  }

  return sub_2628DF6F0(v6, &qword_27FF2ED60, &qword_26294F2E8);
}

uint64_t sub_262939EE8@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE10, &qword_262951140);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - v5;
  v7 = sub_26294C5F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE90, &qword_262951670);
  MEMORY[0x28223BE20](v13);
  v15 = (&v70 - v14);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE80, &qword_262951178);
  MEMORY[0x28223BE20](v84);
  v83 = &v70 - v16;
  v17 = *MEMORY[0x277D48E08];
  v18 = *(v8 + 104);
  v75 = v8 + 104;
  v74 = v18;
  v18(v12, v17, v7);
  v71 = sub_26294C5E8();
  v20 = v19;
  v21 = *(v8 + 8);
  v80 = v8 + 8;
  v81 = v7;
  v78 = v21;
  v21(v12, v7);
  v22 = *(v1 + *(type metadata accessor for ViennaGroupView(0) + 20));
  v23 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v77 = v22;
  v76 = v23;
  v24 = *(v22 + v23);
  v86 = v1;

  sub_262918124(sub_26293C02C, v24, v6);

  v25 = sub_26294CA28();
  v26 = *(v25 - 8);
  v73 = *(v26 + 48);
  v27 = v73(v6, 1, v25);
  v70 = v26;
  v72 = v25;
  if (v27 == 1)
  {
    sub_2628DF6F0(v6, &qword_27FF2FE10, &qword_262951140);
    v28 = 0.0;
  }

  else
  {
    sub_26294C8D8();
    v30 = v29;
    (*(v26 + 8))(v6, v25);
    v28 = v30;
  }

  v31 = sub_2629205EC(v28);
  v33 = v32;
  v34 = v1;
  v35 = sub_262938FE4();
  *v15 = v71;
  v15[1] = v20;
  *(v15 + v13[15]) = 1;
  v36 = v13[9];
  v37 = sub_26294C4F8();
  (*(*(v37 - 8) + 56))(v15 + v36, 1, 1, v37);
  *(v15 + v13[10]) = 1;
  v38 = (v15 + v13[11]);
  *v38 = v31;
  v38[1] = v33;
  *(v15 + v13[12]) = 2;
  *(v15 + v13[13]) = v35 & 1;
  v39 = v15 + v13[14];
  KeyPath = swift_getKeyPath();
  v41 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE98, &qword_2629511B0) + 36)];
  v42 = *(sub_26294D1D8() + 20);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_26294D378();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #6.0 }

  *v41 = _Q0;
  *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *v39 = KeyPath;
  v39[8] = 0;
  *(v39 + 2) = 0xD000000000000015;
  *(v39 + 3) = 0x800000026295ED70;
  *(v39 + 4) = 0x4000000000000000;
  sub_26294DAE8();
  sub_26294D0D8();
  v50 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEA0, &qword_2629511B8) + 36)];
  v51 = v88;
  *v50 = v87;
  *(v50 + 1) = v51;
  *(v50 + 2) = v89;
  if (sub_262938FE4())
  {
    v52 = 0.5;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v83;
  sub_262906F00(v15, v83, &qword_27FF2FE90, &qword_262951670);
  v54 = v85;
  *(v53 + *(v84 + 36)) = v52;
  v55 = v81;
  v74(v54, *MEMORY[0x277D48DF8], v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26294E7D0;
  v57 = MEMORY[0x277D837D0];
  *(v56 + 56) = MEMORY[0x277D837D0];
  v58 = sub_2628DF5B8();
  *(v56 + 64) = v58;
  *(v56 + 32) = 0x442074656C707041;
  *(v56 + 40) = 0xEB00000000617461;
  v59 = *(v77 + v76);
  MEMORY[0x28223BE20](v58);
  *(&v70 - 2) = v34;

  v60 = v79;
  sub_262918124(sub_26293C02C, v59, v79);

  v61 = v72;
  if (v73(v60, 1, v72) == 1)
  {
    sub_2628DF6F0(v60, &qword_27FF2FE10, &qword_262951140);
    v62 = 0.0;
  }

  else
  {
    sub_26294C8D8();
    v64 = v63;
    (*(v70 + 8))(v60, v61);
    v62 = v64;
  }

  v65 = sub_2629205EC(v62);
  *(v56 + 96) = v57;
  *(v56 + 104) = v58;
  *(v56 + 72) = v65;
  *(v56 + 80) = v66;
  v67 = v85;
  sub_26294C6B8();

  v78(v67, v55);
  sub_26293B2A8();
  v68 = v83;
  sub_26294D798();

  return sub_2628DF6F0(v68, &qword_27FF2FE80, &qword_262951178);
}

__n128 sub_26293A718@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v15 = sub_26294D4E8();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEC0, &qword_2629511C8);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = sub_26294D338();
  v21 = 1;
  sub_26293AB0C(a1, &v32);
  v28 = v38;
  v29 = v39;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v22 = v32;
  v23 = v33;
  v31[5] = v37;
  v31[6] = v38;
  v31[7] = v39;
  v31[8] = v40;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  v31[4] = v36;
  v30 = v40;
  v31[0] = v32;
  sub_2628DF954(&v22, &v18, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v31, &qword_27FF2E900, &qword_26294FDB0);
  *&v20[103] = v28;
  *&v20[87] = v27;
  *&v20[39] = v24;
  *&v20[23] = v23;
  *&v20[119] = v29;
  *&v20[135] = v30;
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[7] = v22;
  *&v19[97] = *&v20[96];
  *&v19[113] = *&v20[112];
  *&v19[129] = *&v20[128];
  *&v19[33] = *&v20[32];
  *&v19[49] = *&v20[48];
  *&v19[65] = *&v20[64];
  *&v19[81] = *&v20[80];
  *&v19[1] = *v20;
  v18 = v9;
  v19[0] = v21;
  *&v19[144] = *(&v30 + 1);
  *&v19[17] = *&v20[16];
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE40, &qword_262951168);
  sub_2628DFD0C(&qword_27FF2FE48, &qword_27FF2FE40, &qword_262951168, MEMORY[0x277CE1138]);
  sub_26294D768();
  (*(v3 + 8))(v5, v15);
  v40 = *&v19[112];
  v41 = *&v19[128];
  v42 = *&v19[144];
  v36 = *&v19[48];
  v37 = *&v19[64];
  v38 = *&v19[80];
  v39 = *&v19[96];
  v32 = v18;
  v33 = *v19;
  v34 = *&v19[16];
  v35 = *&v19[32];
  sub_2628DF6F0(&v32, &qword_27FF2FE40, &qword_262951168);
  sub_26294DAE8();
  sub_26294D1F8();
  v10 = v17;
  (*(v6 + 32))(v17, v8, v16);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE18, &qword_262951148) + 36);
  v12 = *&v19[64];
  *(v11 + 64) = *&v19[48];
  *(v11 + 80) = v12;
  *(v11 + 96) = *&v19[80];
  v13 = *v19;
  *v11 = v18;
  *(v11 + 16) = v13;
  result = *&v19[32];
  *(v11 + 32) = *&v19[16];
  *(v11 + 48) = result;
  return result;
}

__n128 sub_26293AB0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE10, &qword_262951140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31[-v5];
  v7 = *(a1 + *(type metadata accessor for ViennaGroupView(0) + 20));
  v8 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_viennaGroups;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v32 = a1;

  sub_262918124(sub_26293C02C, v9, v6);

  v10 = sub_26294CA28();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_2628DF6F0(v6, &qword_27FF2FE10, &qword_262951140);
    v12 = 0.0;
  }

  else
  {
    sub_26294C9F8();
    v14 = v13;
    (*(v11 + 8))(v6, v10);
    v12 = v14;
  }

  *&v33 = sub_2629205EC(v12);
  *(&v33 + 1) = v15;
  sub_2628DF230();
  v16 = sub_26294D648();
  v18 = v17;
  v20 = v19;
  LODWORD(v33) = sub_26294D4C8();
  v21 = sub_26294D618();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2628DF758(v16, v18, v20 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  v28 = v38;
  *(a2 + 96) = v37;
  *(a2 + 112) = v28;
  *(a2 + 128) = v39;
  v29 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v29;
  result = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_26293ADC8()
{
  v1 = sub_26294C5F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v0;
  (*(v2 + 104))(v4, *MEMORY[0x277D48E08], v1);
  v5 = sub_26294C5E8();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v22 = v5;
  v23 = v7;
  sub_2628DF230();
  v8 = sub_26294D648();
  v10 = v9;
  LOBYTE(v4) = v11;
  sub_26294D5C8();
  v12 = sub_26294D638();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_2628DF758(v8, v10, v4 & 1);

  v22 = v12;
  v23 = v14;
  v24 = v16 & 1;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE68, &unk_262951660);
  sub_26293B1EC();
  return sub_26294DAA8();
}

unint64_t sub_26293AFE0()
{
  result = qword_27FF2FE38;
  if (!qword_27FF2FE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FE18, &qword_262951148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FE40, &qword_262951168);
    sub_2628DFD0C(&qword_27FF2FE48, &qword_27FF2FE40, &qword_262951168, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FE38);
  }

  return result;
}

unint64_t sub_26293B0FC()
{
  result = qword_27FF2FE58;
  if (!qword_27FF2FE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FE20, &qword_262951150);
    sub_26293AFE0();
    sub_2628DFD0C(&qword_27FF2FE50, &qword_27FF2FE30, &qword_262951160, MEMORY[0x277CE14C0]);
    sub_26291E4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FE58);
  }

  return result;
}

unint64_t sub_26293B1EC()
{
  result = qword_27FF2FE70;
  if (!qword_27FF2FE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FE68, &unk_262951660);
    sub_26293B2A8();
    sub_26293BF98(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FE70);
  }

  return result;
}

unint64_t sub_26293B2A8()
{
  result = qword_27FF2FE78;
  if (!qword_27FF2FE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FE80, &qword_262951178);
    sub_2628DFD0C(&qword_27FF2FE88, &qword_27FF2FE90, &qword_262951670, &unk_262950BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FE78);
  }

  return result;
}

uint64_t sub_26293B368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26294C978();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26293B394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaGroupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26293B3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViennaGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26293B460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ViennaGroupView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_26293889C(a1, a2, v8, a3);
}

uint64_t sub_26293B4E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26293B520(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF28, &qword_2629517E0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_26293B588()
{
  result = qword_27FF2FEF8;
  if (!qword_27FF2FEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FEE8, &qword_262951228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FF00, &qword_262951230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2EF20, &qword_26294F5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E938, &unk_26294F890);
    sub_2628DFD0C(&qword_27FF2EF18, &qword_27FF2EF20, &qword_26294F5D0, &unk_262950BA8);
    sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26293BF98(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FEF8);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for ViennaGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CA28();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_26294DAC8();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26293B988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FED8, &qword_2629511E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26293BA08()
{
  v1 = (type metadata accessor for ViennaGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C9D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_26294CA28();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {

      v12 = *(v11 + 32);
      v13 = sub_26294DAC8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  else
  {
  }

  v14 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v8, v2 | v7 | 7);
}

uint64_t sub_26293BC64()
{
  v1 = *(type metadata accessor for ViennaGroupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294C9D8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_262939D48(v0 + v2, v5);
}

uint64_t sub_26293BD30()
{
  v1 = (type metadata accessor for ViennaGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CA28();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_26294DAC8();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26293BF0C()
{
  v1 = *(type metadata accessor for ViennaGroupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2629397C8(v0 + v2, v3);
}

uint64_t sub_26293BF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26293C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26293C1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294C8A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for MuirfieldView(uint64_t a1)
{
  result = qword_27FF2FF68;
  if (!qword_27FF2FF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26293C31C(uint64_t a1)
{
  sub_26294C8A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SEStorageManagementController(319);
    if (v2 <= 0x3F)
    {
      sub_26293C3B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26293C3B8(uint64_t a1)
{
  if (!qword_27FF2E810)
  {
    sub_26294D0F8();
    v1 = sub_26294D068();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF2E810);
    }
  }
}

uint64_t sub_26293C42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v3 = sub_26294D468();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF90, &qword_262951318);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF98, &qword_262951320);
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = &v24 - v11;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFA0, &qword_262951328);
  sub_2628DFD0C(&qword_27FF2FFA8, &qword_27FF2FFA0, &qword_262951328, MEMORY[0x277CE14C0]);
  sub_26294D5E8();
  sub_26294D458();
  v13 = sub_2628DFD0C(&qword_27FF2FFB0, &qword_27FF2FF90, &qword_262951318, MEMORY[0x277CDE5A0]);
  v14 = MEMORY[0x277CDE0D0];
  sub_26294D828();
  (*(v26 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v29 = v6;
  v30 = v3;
  v31 = v13;
  v32 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v27;
  v16 = v24;
  sub_26294D7A8();
  (*(v10 + 8))(v12, v16);
  v17 = *(v25 + *(type metadata accessor for MuirfieldView(0) + 20));
  type metadata accessor for SEStorageManagementController(0);
  sub_26293FD00(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v18 = v17;
  v19 = sub_26294D178();
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFB8, &qword_262951330);
  v23 = (v15 + *(result + 36));
  *v23 = v19;
  v23[1] = v21;
  return result;
}

uint64_t sub_26293C7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFC0, &qword_262951338);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFC8, &qword_262951340);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_26293C9C8(&v16 - v12);
  sub_26293CCB0(v7);
  sub_2628DF954(v13, v11, &qword_27FF2FFC8, &qword_262951340);
  sub_26293E2E4(v7, v5);
  sub_2628DF954(v11, a1, &qword_27FF2FFC8, &qword_262951340);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFD0, &qword_262951348);
  sub_26293E2E4(v5, a1 + *(v14 + 48));
  sub_2628DF6F0(v7, &qword_27FF2FFC0, &qword_262951338);
  sub_2628DF6F0(v13, &qword_27FF2FFC8, &qword_262951340);
  sub_2628DF6F0(v5, &qword_27FF2FFC0, &qword_262951338);
  return sub_2628DF6F0(v11, &qword_27FF2FFC8, &qword_262951340);
}

uint64_t sub_26293C9C8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_26294C5F8();
  v21 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30048, &qword_2629513B8);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v25 = v1;
  sub_26293D5C8(&v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30050, &qword_2629513C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30058, &qword_2629513C8);
  sub_26293FB24();
  sub_26293FBDC();
  sub_26294DA78();
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26294E7D0;
  v11 = sub_26294C878();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2628DF5B8();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_26294C888();
  v17 = sub_2629205EC(v16);
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v17;
  *(v10 + 80) = v18;
  sub_26294C6B8();

  (*(v3 + 8))(v5, v21);
  sub_26293FC60();
  v19 = v22;
  sub_26294D798();

  return (*(v23 + 8))(v9, v19);
}

uint64_t sub_26293CCB0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFD8, &qword_262951350);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v17 = v1;
  sub_26293DF10(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFE0, &qword_262951358);
  sub_26293E35C();
  sub_26294DAA8();
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26294ECB0;
  sub_26294C888();
  v12 = sub_2629205EC(v11);
  v14 = v13;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2628DF5B8();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_26294C6B8();

  (*(v3 + 8))(v5, v2);
  sub_26293F69C();
  sub_26294D798();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26293CF64(uint64_t a1)
{
  type metadata accessor for MuirfieldView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EBB8, &qword_26294ECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E930, &unk_26294FFB0);
  sub_2628DFD0C(&qword_27FF30078, &qword_27FF2EBB8, &qword_26294ECF8, MEMORY[0x277D83980]);
  sub_2628DF824();
  sub_26293FD00(&qword_27FF30080, MEMORY[0x277D48F80], MEMORY[0x277D48F88]);
  return sub_26294DA68();
}

uint64_t sub_26293D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_26294C5F8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26294C7F8();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E950, &unk_26294FFC0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v45 - v12);
  v14 = sub_26294CBC8();
  v16 = v15;
  v47 = a1;
  sub_26294CBB8();
  *v13 = v14;
  v13[1] = v16;
  sub_2628DF954(v10, v13 + v11[9], &qword_27FF2E978, &qword_26294EC40);
  *(v13 + v11[15]) = 1;
  *(v13 + v11[10]) = 0;
  v17 = (v13 + v11[11]);
  *v17 = 0;
  v17[1] = 0;
  *(v13 + v11[12]) = 2;
  *(v13 + v11[13]) = 0;
  v18 = v13 + v11[14];
  sub_26294CBD8();
  v19 = sub_26294C7D8();
  v21 = v20;
  (*(v5 + 8))(v7, v46);
  KeyPath = swift_getKeyPath();
  sub_26294DAE8();
  sub_26294D0D8();
  v52 = 0;
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E980, &unk_26294EC50) + 36)];
  v24 = *(sub_26294D1D8() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_26294D378();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #6.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  v32 = v54;
  *(v18 + 40) = v53;
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = v19;
  *(v18 + 3) = v21;
  *(v18 + 4) = 0x4000000000000000;
  *(v18 + 56) = v32;
  *(v18 + 72) = v55;
  sub_2628DF6F0(v10, &qword_27FF2E978, &qword_26294EC40);
  v34 = v48;
  v33 = v49;
  v35 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277D48DF8], v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26294E7D0;
  v37 = sub_26294CBC8();
  v39 = v38;
  v40 = MEMORY[0x277D837D0];
  *(v36 + 56) = MEMORY[0x277D837D0];
  v41 = sub_2628DF5B8();
  *(v36 + 64) = v41;
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v42 = sub_2629205EC(0.0);
  *(v36 + 96) = v40;
  *(v36 + 104) = v41;
  *(v36 + 72) = v42;
  *(v36 + 80) = v43;
  sub_26294C6B8();

  (*(v33 + 8))(v34, v35);
  sub_2628DFD0C(&qword_27FF2E948, &qword_27FF2E950, &unk_26294FFC0, &unk_262950BA8);
  sub_26294D798();

  return sub_2628DF6F0(v13, &qword_27FF2E950, &unk_26294FFC0);
}

__n128 sub_26293D5C8@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_26294D338();
  v11 = 1;
  sub_2628DEDFC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_2628DF954(__dst, v8, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v13, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v10[7], __dst, 0x120uLL);
  v4 = v11;
  sub_26294DAE8();
  sub_26294D1F8();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  memcpy((a2 + 17), v10, 0x127uLL);
  v5 = __src[5];
  *(a2 + 376) = __src[4];
  *(a2 + 392) = v5;
  *(a2 + 408) = __src[6];
  v6 = __src[1];
  *(a2 + 312) = __src[0];
  *(a2 + 328) = v6;
  result = __src[3];
  *(a2 + 344) = __src[2];
  *(a2 + 360) = result;
  return result;
}

uint64_t sub_26293D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_26294D3B8();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MuirfieldView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30010, &qword_262951370);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  sub_26293F734(a1, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_26293F79C(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E900, &qword_26294FDB0);
  sub_26293F860();
  sub_26294D988();
  sub_26294D3A8();
  sub_2628DFD0C(&qword_27FF30018, &qword_27FF30010, &qword_262951370, MEMORY[0x277CDF028]);
  sub_26293FD00(&qword_27FF30020, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v16 = v25;
  v15 = v26;
  sub_26294D6B8();
  (*(v3 + 8))(v5, v16);
  (*(v10 + 8))(v12, v9);
  v17 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30008, &qword_262951368) + 36);
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = [objc_opt_self() secondarySystemBackgroundColor];
  v27 = sub_26294D838();
  v19 = sub_26294D9D8();
  *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFF8, &qword_262951360) + 36)) = v19;
  LOBYTE(v19) = sub_2628E48F4();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFE0, &qword_262951358);
  v23 = (v15 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_26293F93C;
  v23[2] = v21;
  return result;
}

uint64_t sub_26293DB14(uint64_t a1)
{
  v2 = type metadata accessor for MuirfieldView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26293F734(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26293F79C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2628F739C(sub_26293FAAC, v6);
}

uint64_t sub_26293DC20(char a1)
{
  v2 = sub_26294D0F8();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for MuirfieldView(0);
    sub_26291D460(v6);
    sub_26294D0E8();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

__n128 sub_26293DD0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
  v6 = sub_26294C5E8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v23[0] = v6;
  *(&v23[0] + 1) = v8;
  sub_2628DF230();
  v9 = sub_26294D648();
  v11 = v10;
  LOBYTE(v6) = v12;
  v13 = sub_26294D628();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2628DF758(v9, v11, v6 & 1);

  sub_26294DAE8();
  sub_26294D1F8();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  v20 = v23[5];
  *(a1 + 96) = v23[4];
  *(a1 + 112) = v20;
  *(a1 + 128) = v23[6];
  v21 = v23[1];
  *(a1 + 32) = v23[0];
  *(a1 + 48) = v21;
  result = v23[3];
  *(a1 + 64) = v23[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26293DF10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D48E08], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26294ECB0;
  sub_26294C888();
  v8 = sub_2629205EC(v7);
  v10 = v9;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2628DF5B8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = sub_26294C6B8();
  v13 = v12;

  (*(v3 + 8))(v5, v2);
  v31 = v11;
  v32 = v13;
  sub_2628DF230();
  v14 = sub_26294D648();
  v16 = v15;
  LOBYTE(v5) = v17;
  sub_26294D5B8();
  v18 = sub_26294D638();
  v20 = v19;
  v22 = v21;

  sub_2628DF758(v14, v16, v5 & 1);

  LODWORD(v31) = sub_26294D4C8();
  v23 = sub_26294D618();
  v25 = v24;
  LOBYTE(v5) = v26;
  v28 = v27;
  sub_2628DF758(v18, v20, v22 & 1);

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v28;
  return result;
}

uint64_t sub_26293E17C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF78, &qword_262951308);
  MEMORY[0x28223BE20](v1);
  v3 = v7 - v2;
  *v3 = sub_26294D3C8();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF80, &qword_262951310);
  sub_26293C42C(v0, &v3[*(v4 + 44)]);
  v7[0] = sub_26294C868();
  v7[1] = v5;
  sub_2628DFD0C(&qword_27FF2FF88, &qword_27FF2FF78, &qword_262951308, MEMORY[0x277CE1198]);
  sub_2628DF230();
  sub_26294D708();
  sub_2628DF6F0(v3, &qword_27FF2FF78, &qword_262951308);
}

uint64_t sub_26293E2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FFC0, &qword_262951338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26293E35C()
{
  result = qword_27FF2FFE8;
  if (!qword_27FF2FFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FFE0, &qword_262951358);
    sub_26293E414();
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FFE8);
  }

  return result;
}

unint64_t sub_26293E414()
{
  result = qword_27FF2FFF0;
  if (!qword_27FF2FFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FFF8, &qword_262951360);
    sub_26293E4CC();
    sub_2628DFD0C(&qword_27FF2E8E0, &qword_27FF2E8E8, &qword_262950C20, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF2FFF0);
  }

  return result;
}

unint64_t sub_26293E4CC()
{
  result = qword_27FF30000;
  if (!qword_27FF30000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30008, &qword_262951368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30010, &qword_262951370);
    sub_26294D3B8();
    sub_2628DFD0C(&qword_27FF30018, &qword_27FF30010, &qword_262951370, MEMORY[0x277CDF028]);
    sub_26293FD00(&qword_27FF30020, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_2628DFD0C(&qword_27FF30028, &qword_27FF30030, &unk_262951378, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30000);
  }

  return result;
}

uint64_t sub_26293E644@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  v42 = a1;
  v46 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30088, &qword_2629514F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30090, &qword_2629514F8);
  MEMORY[0x28223BE20](v43);
  v45 = &v36 - v7;
  v8 = sub_26294C5F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30098, &qword_262951500);
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v47)
  {
    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300A0, &unk_262951578);
    (*(*(v16 - 8) + 16))(v6, v42, v16);
    v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300C0, &qword_262951588) + 36)];
    *v17 = KeyPath;
    v17[1] = sub_26294027C;
    v17[2] = v15;
    *&v6[*(v4 + 36)] = 0x3FE0000000000000;
    sub_2628DF954(v6, v45, &qword_27FF30088, &qword_2629514F0);
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    v19 = sub_2628DFD0C(&qword_27FF300A8, &qword_27FF300A0, &unk_262951578, MEMORY[0x277CE04B0]);
    v20 = sub_2628DF230();
    v21 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    v47 = v16;
    v48 = MEMORY[0x277D837D0];
    v49 = v18;
    v50 = v19;
    v51 = v20;
    v52 = v21;
    swift_getOpaqueTypeConformance2();
    sub_26293FE40();
    sub_26294D3F8();
    return sub_2628DF6F0(v6, &qword_27FF30088, &qword_2629514F0);
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D48E08], v8);
    v23 = sub_26294C5E8();
    v25 = v24;
    v40 = v24;
    (*(v9 + 8))(v11, v8);
    v53 = v23;
    v54 = v25;
    type metadata accessor for SEStorageManagementController(0);
    sub_26293FD00(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
    v26 = sub_26294D188();
    swift_getKeyPath();
    sub_26294D198();

    v38 = &v36;
    v37 = v49;
    MEMORY[0x28223BE20](v27);
    v28 = v12;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300A0, &unk_262951578);
    v39 = v4;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F560, &unk_2629501F0);
    v30 = sub_2628DFD0C(&qword_27FF300A8, &qword_27FF300A0, &unk_262951578, MEMORY[0x277CE04B0]);
    v34 = sub_2628DF230();
    v35 = sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    v31 = v41;
    v32 = v36;
    sub_26294D738();

    v33 = v44;
    (*(v28 + 16))(v45, v31, v44);
    swift_storeEnumTagMultiPayload();
    v47 = v32;
    v48 = MEMORY[0x277D837D0];
    v49 = v29;
    v50 = v30;
    v51 = v34;
    v52 = v35;
    swift_getOpaqueTypeConformance2();
    sub_26293FE40();
    sub_26294D3F8();
    return (*(v28 + 8))(v31, v33);
  }
}

uint64_t sub_26293ED70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B0, &qword_262950240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v45 - v5;
  v7 = sub_26294C5F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5B8, &qword_262950248);
  v55 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v54 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = v45 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v51 = v45 - v17;
  MEMORY[0x28223BE20](v16);
  v57 = v45 - v18;
  v19 = *MEMORY[0x277D48E08];
  v50 = *(v8 + 104);
  v46 = v7;
  v50(v10, v19, v7);
  v20 = sub_26294C5E8();
  v22 = v21;
  v49 = *(v8 + 8);
  v49(v10, v7);
  v58 = v20;
  v59 = v22;
  v23 = sub_26294D048();
  v24 = *(v23 - 8);
  v47 = *(v24 + 56);
  v48 = v24 + 56;
  v25 = v6;
  v47(v6, 1, 1, v23);
  v26 = swift_allocObject();
  v27 = v52;
  *(v26 + 16) = a1;
  *(v26 + 24) = v27;
  v45[1] = sub_2628DF230();
  v28 = v27;
  sub_26294D998();
  v29 = v46;
  v50(v10, *MEMORY[0x277D48DF0], v46);
  v30 = sub_26294C5E8();
  v32 = v31;
  v49(v10, v29);
  v58 = v30;
  v59 = v32;
  sub_26294D038();
  v47(v25, 0, 1, v23);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = v28;
  v34 = v28;
  v35 = v51;
  sub_26294D998();
  v36 = v55;
  v37 = *(v55 + 16);
  v38 = v53;
  v39 = v57;
  v37(v53, v57, v11);
  v40 = v54;
  v37(v54, v35, v11);
  v41 = v56;
  v37(v56, v38, v11);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F5C0, &qword_262950250);
  v37(&v41[*(v42 + 48)], v40, v11);
  v43 = *(v36 + 8);
  v43(v35, v11);
  v43(v39, v11);
  v43(v40, v11);
  return (v43)(v38, v11);
}

uint64_t sub_26293F284(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2EDE8, &qword_26294F428);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v16[15] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16[14] = 1;
    v7 = a2;
    sub_26294D008();
    if (qword_27FF2E7C0 != -1)
    {
      swift_once();
    }

    v8 = sub_26294CE48();
    __swift_project_value_buffer(v8, qword_27FF314B0);
    v9 = v7;
    v10 = sub_26294CE28();
    v11 = sub_26294DE98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26294CFF8();

      *(v12 + 4) = v16[13];

      _os_log_impl(&dword_2628DB000, v10, v11, "Controller loading %{BOOL}d", v12, 8u);
      MEMORY[0x26672DCE0](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v13 = sub_26294DE28();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v9;
    v15 = v9;
    sub_2628EB2A0(0, 0, v5, &unk_262951590, v14);
  }

  return result;
}

uint64_t sub_26293F554(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if ((v9 & 1) == 0)
  {
    v4 = (a2 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
    v5 = *(a2 + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_deleteCompletion);
    if (v5)
    {
      v6 = v4[1];

      v5(0);
      sub_262907104(v5, v6);
      v7 = *v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_262907104(v7, v8);
    return sub_2628E6C54();
  }

  return result;
}

uint64_t sub_26293F630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26294D2D8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26293F69C()
{
  result = qword_27FF30038;
  if (!qword_27FF30038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FFD8, &qword_262951350);
    sub_26293E35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30038);
  }

  return result;
}

uint64_t sub_26293F734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MuirfieldView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26293F79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MuirfieldView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26293F800()
{
  v1 = *(type metadata accessor for MuirfieldView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26293DB14(v2);
}

unint64_t sub_26293F860()
{
  result = qword_27FF30040;
  if (!qword_27FF30040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2E900, &qword_26294FDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30040);
  }

  return result;
}

uint64_t sub_26293F8E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26294D2D8();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for MuirfieldView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294C8A8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26294D0F8();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26293FAAC(char a1)
{
  type metadata accessor for MuirfieldView(0);

  return sub_26293DC20(a1);
}

unint64_t sub_26293FB24()
{
  result = qword_27FF30060;
  if (!qword_27FF30060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30050, &qword_2629513C0);
    sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30060);
  }

  return result;
}

unint64_t sub_26293FBDC()
{
  result = qword_27FF30068;
  if (!qword_27FF30068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30058, &qword_2629513C8);
    sub_2628DF824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30068);
  }

  return result;
}

unint64_t sub_26293FC60()
{
  result = qword_27FF30070;
  if (!qword_27FF30070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30048, &qword_2629513B8);
    sub_26293FB24();
    sub_26293FBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30070);
  }

  return result;
}

uint64_t sub_26293FD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26293FD60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2FF78, &qword_262951308);
  sub_2628DFD0C(&qword_27FF2FF88, &qword_27FF2FF78, &qword_262951308, MEMORY[0x277CE1198]);
  sub_2628DF230();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26293FE40()
{
  result = qword_27FF300B0;
  if (!qword_27FF300B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30088, &qword_2629514F0);
    sub_26293FECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF300B0);
  }

  return result;
}

unint64_t sub_26293FECC()
{
  result = qword_27FF300B8;
  if (!qword_27FF300B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF300C0, &qword_262951588);
    sub_2628DFD0C(&qword_27FF300A8, &qword_27FF300A0, &unk_262951578, MEMORY[0x277CE04B0]);
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF300B8);
  }

  return result;
}

uint64_t sub_26293FFC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262940008()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_262940048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_262906944;

  return sub_2628F7490(a1, v4, v5, v6);
}

unint64_t sub_262940100()
{
  result = qword_27FF300C8;
  if (!qword_27FF300C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF300D0, &qword_262951598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF300A0, &unk_262951578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F560, &unk_2629501F0);
    sub_2628DFD0C(&qword_27FF300A8, &qword_27FF300A0, &unk_262951578, MEMORY[0x277CE04B0]);
    sub_2628DF230();
    sub_2628DFD0C(&qword_27FF2F578, &qword_27FF2F560, &unk_2629501F0, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_26293FE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF300C8);
  }

  return result;
}

id sub_2629402C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_262940330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26294CBA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDD0, &unk_2629515B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262940474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26294CBA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDD0, &unk_2629515B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for PassbookGroupView(uint64_t a1)
{
  result = qword_27FF300D8;
  if (!qword_27FF300D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629405F0(uint64_t a1)
{
  sub_26294CBA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SEStorageManagementController(319);
    if (v2 <= 0x3F)
    {
      sub_262937174();
      if (v3 <= 0x3F)
      {
        sub_2629371C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2629406C8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_262940774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26294D328();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PassbookGroupView(0);
  sub_2628DF954(v1 + *(v10 + 32), v9, &qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_262906F00(v9, a1, &qword_27FF2FDF8, "4;");
  }

  sub_26294DEB8();
  v12 = sub_26294D508();
  sub_26294CE18();

  sub_26294D318();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26294095C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE00, &qword_262951630);
  v74 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v65 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE08, &qword_262951138);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v75 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v62 - v7;
  v78 = sub_26294C5F8();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300E8, &qword_262951638);
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300F0, &qword_262951640);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v62 - v19;
  v80 = v2;
  v66 = v13;
  sub_262943830(v13);
  v20 = type metadata accessor for PassbookGroupView(0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v20 + 24);
  v73 = v2;
  v67 = *(v2 + v25);
  if (v67 == 1)
  {
    v26 = v78;
    (*(v8 + 104))(v10, *MEMORY[0x277D48E08], v78);
    v27 = sub_26294C5E8();
    v29 = v28;
    (*(v8 + 8))(v10, v26);
    v81 = v27;
    v82 = v29;
    sub_2628DF230();
    v30 = sub_26294D648();
    v64 = v8;
    v31 = v30;
    v62 = v11;
    v33 = v32;
    v63 = v10;
    v35 = v34;
    sub_26294D5C8();
    v21 = sub_26294D638();
    v22 = v36;
    LOBYTE(v26) = v37;
    v24 = v38;

    v10 = v63;
    v39 = v31;
    v8 = v64;
    sub_2628DF758(v39, v33, v35 & 1);

    v23 = v26 & 1;
  }

  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF300F8, &qword_262951648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F568, &qword_262951650);
  sub_2628DF40C();
  sub_2628DFD0C(&qword_27FF30100, &qword_27FF300F8, &qword_262951648, MEMORY[0x277CE14C0]);
  sub_26291E4DC();
  v40 = v68;
  sub_26294DA88();
  v41 = v78;
  (*(v8 + 104))(v10, *MEMORY[0x277D48DF8], v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_26294E7D0;
  v43 = sub_26294CA78();
  v45 = v44;
  v46 = MEMORY[0x277D837D0];
  *(v42 + 56) = MEMORY[0x277D837D0];
  v47 = sub_2628DF5B8();
  *(v42 + 64) = v47;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_26294CA88();
  v49 = sub_2629205EC(v48);
  *(v42 + 96) = v46;
  *(v42 + 104) = v47;
  *(v42 + 72) = v49;
  *(v42 + 80) = v50;
  sub_26294C6B8();

  (*(v8 + 8))(v10, v41);
  sub_262945020();
  v51 = v70;
  v52 = v71;
  sub_26294D798();

  (*(v69 + 8))(v40, v51);
  if (v67)
  {
    v53 = 1;
    v54 = v74;
  }

  else
  {
    v55 = v65;
    sub_262943FF8();
    v54 = v74;
    (*(v74 + 32))(v77, v55, v79);
    v53 = 0;
  }

  v56 = v77;
  (*(v54 + 56))(v77, v53, 1, v79);
  v57 = v72;
  sub_2628DF954(v52, v72, &qword_27FF300F0, &qword_262951640);
  v58 = v75;
  sub_2628DF954(v56, v75, &qword_27FF2FE08, &qword_262951138);
  v59 = v76;
  sub_2628DF954(v57, v76, &qword_27FF300F0, &qword_262951640);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30110, &qword_262951658);
  sub_2628DF954(v58, v59 + *(v60 + 48), &qword_27FF2FE08, &qword_262951138);
  sub_2628DF6F0(v56, &qword_27FF2FE08, &qword_262951138);
  sub_2628DF6F0(v52, &qword_27FF300F0, &qword_262951640);
  sub_2628DF6F0(v58, &qword_27FF2FE08, &qword_262951138);
  return sub_2628DF6F0(v57, &qword_27FF300F0, &qword_262951640);
}

uint64_t sub_262941110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE68, &unk_262951660);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEC8, &qword_2629511D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = v46 - v8;
  v57 = type metadata accessor for PassbookGroupView(0);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30118, &qword_2629516C0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v52 = v46 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30120, &qword_2629516C8);
  v13 = MEMORY[0x28223BE20](v54);
  v59 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = v46 - v16;
  MEMORY[0x28223BE20](v15);
  v58 = v46 - v17;
  v49 = a1;
  v18 = sub_26294CAB8();
  v19 = sub_262944CD8(v18);

  v69 = v19;
  KeyPath = swift_getKeyPath();
  sub_26294511C(a1, v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v46[1] = v10;
  v21 = swift_allocObject();
  v47 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262945184(v47, v21 + v20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2629451E8;
  *(v22 + 24) = v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30128, &qword_262951708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30130, &qword_262951710);
  sub_2628DFD0C(&qword_27FF30138, &qword_27FF30128, &qword_262951708, MEMORY[0x277D83980]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30140, &qword_262951718);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30148, &qword_262951720);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30150, &qword_262951728);
  v26 = sub_2629452D8(&qword_27FF30158, &qword_27FF30148, &qword_262951720, sub_26294538C);
  v27 = sub_262945470();
  v65 = v24;
  v66 = v25;
  v28 = v52;
  v29 = v49;
  v67 = v26;
  v68 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v23;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26294DA58();
  v31 = 0;
  v32 = 0;
  if ((sub_262942158() & 1) == 0)
  {
    v33 = v47;
    sub_26294511C(v29, v47);
    v34 = swift_allocObject();
    sub_262945184(v33, v34 + v20);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2629456F0;
    *(v32 + 24) = v34;
    v31 = sub_262935C40;
  }

  v35 = v53;
  (*(v55 + 32))(v53, v28, v56);
  v36 = (v35 + *(v54 + 36));
  *v36 = v31;
  v36[1] = v32;
  v37 = v58;
  sub_262945790(v35, v58);
  if (*(v29 + *(v57 + 24)) == 1)
  {
    v38 = v48;
    sub_262943324(v48);
    v39 = v62;
    sub_262906F00(v38, v62, &qword_27FF2FE68, &unk_262951660);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v62;
  }

  (*(v60 + 56))(v39, v40, 1, v61);
  v41 = v59;
  sub_2628DF954(v37, v59, &qword_27FF30120, &qword_2629516C8);
  v42 = v63;
  sub_2628DF954(v39, v63, &qword_27FF2FEC8, &qword_2629511D0);
  v43 = v64;
  sub_2628DF954(v41, v64, &qword_27FF30120, &qword_2629516C8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30198, &unk_262951750);
  sub_2628DF954(v42, v43 + *(v44 + 48), &qword_27FF2FEC8, &qword_2629511D0);
  sub_2628DF6F0(v39, &qword_27FF2FEC8, &qword_2629511D0);
  sub_2628DF6F0(v37, &qword_27FF30120, &qword_2629516C8);
  sub_2628DF6F0(v42, &qword_27FF2FEC8, &qword_2629511D0);
  return sub_2628DF6F0(v41, &qword_27FF30120, &qword_2629516C8);
}

uint64_t sub_262941828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a1;
  v85 = a4;
  v6 = sub_26294CB98();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = v7;
  v82 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PassbookGroupView(0);
  v78 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = v9;
  v80 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_26294C5F8();
  v71 = *(v72 - 1);
  MEMORY[0x28223BE20](v72);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E978, &qword_26294EC40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30178, &qword_262951738);
  MEMORY[0x28223BE20](v14);
  v16 = (&v64 - v15);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30168, &qword_262951730);
  MEMORY[0x28223BE20](v88);
  v68 = &v64 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30148, &qword_262951720);
  MEMORY[0x28223BE20](v74);
  v69 = &v64 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30140, &qword_262951718);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v64 - v19;
  if (sub_262942158())
  {
    v20 = sub_26294CB78() & 1;
  }

  else
  {
    v20 = 2;
  }

  v66 = v20;
  v21 = *(a3 + *(v8 + 20));
  v22 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_snapshotDataProvider;
  swift_beginAccess();
  sub_262906C54(v21 + v22, v89);
  v23 = sub_26294CAF8();
  MEMORY[0x28223BE20](v23);
  *(&v64 - 2) = v89;
  LOBYTE(v22) = sub_2629406C8(sub_262945808, (&v64 - 4), v23);

  v87 = a3;
  if (v22)
  {
    v24 = sub_26294CAE8();
  }

  else
  {
    v24 = 0;
  }

  v65 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v25 = sub_26294CB38();
  v27 = v26;
  sub_26294CB08();
  sub_26294CB58();
  v29 = sub_2629205EC(v28);
  v31 = v30;
  v32 = v24 & 1;
  v86 = v24 & 1;
  if (v24)
  {
    v33 = v66;
  }

  else
  {
    v33 = 2;
  }

  *v16 = v25;
  v16[1] = v27;
  sub_2628DF954(v13, v16 + v14[9], &qword_27FF2E978, &qword_26294EC40);
  *(v16 + v14[15]) = v32;
  *(v16 + v14[10]) = 0;
  v34 = (v16 + v14[11]);
  *v34 = v29;
  v34[1] = v31;
  *(v16 + v14[12]) = v33;
  *(v16 + v14[13]) = 0;
  sub_2629426A0(v87, v16 + v14[14]);
  sub_2628DF6F0(v13, &qword_27FF2E978, &qword_26294EC40);
  v35 = v68;
  sub_262906F00(v16, v68, &qword_27FF30178, &qword_262951738);
  *(v35 + *(v88 + 36)) = (v65 & 1) == 0;
  v36 = v71;
  v37 = v70;
  v38 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D48DF8], v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26294E7D0;
  v67 = a2;
  v40 = sub_26294CB38();
  v42 = v41;
  v43 = MEMORY[0x277D837D0];
  *(v39 + 56) = MEMORY[0x277D837D0];
  v44 = sub_2628DF5B8();
  *(v39 + 64) = v44;
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_26294CB58();
  v46 = sub_2629205EC(v45);
  *(v39 + 96) = v43;
  *(v39 + 104) = v44;
  *(v39 + 72) = v46;
  *(v39 + 80) = v47;
  sub_26294C6B8();

  (*(v36 + 8))(v37, v38);
  sub_26294538C();
  v48 = v69;
  sub_26294D798();

  v49 = sub_2628DF6F0(v35, &qword_27FF30168, &qword_262951730);
  v72 = &v64;
  MEMORY[0x28223BE20](v49);
  *(&v64 - 32) = v86;
  v50 = v87;
  v51 = v77;
  *(&v64 - 3) = v87;
  *(&v64 - 2) = v51;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30150, &qword_262951728);
  v77 = sub_2629452D8(&qword_27FF30158, &qword_27FF30148, &qword_262951720, sub_26294538C);
  v52 = sub_262945470();
  v53 = v73;
  v54 = v74;
  sub_26294D6C8();
  sub_2628DF6F0(v48, &qword_27FF30148, &qword_262951720);
  v55 = v80;
  sub_26294511C(v50, v80);
  v57 = v82;
  v56 = v83;
  v58 = v84;
  (*(v83 + 16))(v82, v67, v84);
  v59 = (*(v78 + 80) + 17) & ~*(v78 + 80);
  v60 = (v79 + *(v56 + 80) + v59) & ~*(v56 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v86;
  sub_262945184(v55, v61 + v59);
  (*(v56 + 32))(v61 + v60, v57, v58);
  v89[0] = v54;
  v89[1] = v88;
  v89[2] = v77;
  v89[3] = v52;
  swift_getOpaqueTypeConformance2();
  v62 = v76;
  sub_26294D6E8();

  return (*(v75 + 8))(v53, v62);
}

uint64_t sub_262942158()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEA8, &unk_2629516B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDF8, "4;");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEB0, &qword_2629511C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_262940774(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_2628DF6F0(v8, &qword_27FF2FDF8, "4;");
    v19 = 1;
  }

  else
  {
    MEMORY[0x26672D010](v18);
    sub_2628DF6F0(v8, &qword_27FF2F118, &qword_26294FA50);
    v19 = 0;
  }

  v20 = *(v1 + 56);
  v20(v17, v19, 1, v0);
  (*(v1 + 104))(v15, *MEMORY[0x277CDF0D0], v0);
  v20(v15, 0, 1, v0);
  v21 = *(v3 + 48);
  sub_2628DF954(v17, v5, &qword_27FF2FEB0, &qword_2629511C0);
  sub_2628DF954(v15, &v5[v21], &qword_27FF2FEB0, &qword_2629511C0);
  v22 = *(v1 + 48);
  if (v22(v5, 1, v0) != 1)
  {
    sub_2628DF954(v5, v12, &qword_27FF2FEB0, &qword_2629511C0);
    if (v22(&v5[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v5[v21], v0);
      sub_26293BF98(&qword_27FF2FEB8, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
      v23 = sub_26294DD48();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
      sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
      v25(v12, v0);
      sub_2628DF6F0(v5, &qword_27FF2FEB0, &qword_2629511C0);
      return v23 & 1;
    }

    sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
    sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
    (*(v1 + 8))(v12, v0);
    goto LABEL_9;
  }

  sub_2628DF6F0(v15, &qword_27FF2FEB0, &qword_2629511C0);
  sub_2628DF6F0(v17, &qword_27FF2FEB0, &qword_2629511C0);
  if (v22(&v5[v21], 1, v0) != 1)
  {
LABEL_9:
    sub_2628DF6F0(v5, &qword_27FF2FEA8, &unk_2629516B0);
    v23 = 0;
    return v23 & 1;
  }

  sub_2628DF6F0(v5, &qword_27FF2FEB0, &qword_2629511C0);
  v23 = 1;
  return v23 & 1;
}

double sub_2629426A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + *(type metadata accessor for PassbookGroupView(0) + 20)) + OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_passArts);

  v4 = sub_26294CB18();
  if (!*(v3 + 16))
  {

    goto LABEL_5;
  }

  v6 = sub_262902590(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:

    sub_26294D8D8();
    goto LABEL_6;
  }

  v9 = *(*(v3 + 56) + 40 * v6 + 32);

LABEL_6:
  sub_262945DC8();
  sub_26294D3F8();
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_262942818@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v6 = type metadata accessor for PassbookGroupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_26294C5F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E938, &unk_26294F890);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  if (a1)
  {
    v28 = a4;
    v17 = *MEMORY[0x277D48DF0];
    v18 = *(v10 + 104);
    v29 = v14;
    v18(v12, v17, v9);
    v19 = sub_26294C5E8();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    sub_26294511C(v30, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    v24 = sub_262945184(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v32[0] = v19;
    v32[1] = v21;
    MEMORY[0x28223BE20](v24);
    *(&v28 - 4) = v32;
    *(&v28 - 3) = 0x6873617274;
    *(&v28 - 2) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E990, &unk_26294F8B0);
    sub_2628DFD0C(&qword_27FF2E998, &qword_27FF2E990, &unk_26294F8B0, MEMORY[0x277CDEFF0]);
    sub_26294D988();

    v25 = v28;
    (*(v29 + 32))(v28, v16, v13);
    return (*(v29 + 56))(v25, 0, 1, v13);
  }

  else
  {
    v27 = *(v14 + 56);

    return v27(a4, 1, 1, v13);
  }
}

uint64_t sub_262942BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26294C5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF38, &unk_2629517C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26294ECB0;
  *(v8 + 32) = a2;
  v10[1] = v8;
  sub_26293BF98(&qword_27FF2FF40, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF48, &qword_262951290);
  sub_2628DFD0C(&qword_27FF2FF50, &qword_27FF2FF48, &qword_262951290, MEMORY[0x277D83970]);
  sub_26294DF08();
  sub_262942DB4(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_262942DB4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v22 - v3;
  v4 = sub_26294C588();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF10, &qword_262951760);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v26 = MEMORY[0x277D84FA0];
  sub_26294C598();
  sub_26294C5B8();
  sub_26293BF98(&qword_27FF2FF18, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  while (1)
  {
    sub_26294DE68();
    sub_26293BF98(&qword_27FF2FF20, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v11 = sub_26294DD48();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      break;
    }

    v12 = sub_26294DE88();
    v14 = *v13;
    v12(v25, 0);
    sub_26294DE78();
    sub_26294423C(v25, v14);
  }

  sub_2628DF6F0(v10, &qword_27FF2FF10, &qword_262951760);
  v15 = type metadata accessor for PassbookGroupView(0);
  v16 = v24;
  v17 = sub_26294CB98();
  v18 = v23;
  (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  v19 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (LOBYTE(v25[0]) == 1)
  {
  }

  else
  {
    sub_2628F122C(v22, v18, v19, 1);

    sub_2628EC330();
  }

  v20 = sub_2628DF6F0(v18, &qword_27FF2ED68, &qword_26294F2F0);
  return (*(v16 + *(v15 + 28)))(v20);
}

uint64_t sub_26294317C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2ED68, &qword_26294F2F0);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13[-v8];
  if (a1)
  {
    type metadata accessor for PassbookGroupView(0);
    v10 = sub_26294CB98();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v9, a3, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v12 = sub_26294CB78();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if ((v13[15] & 1) == 0)
    {
      sub_2628F122C(a2, v9, 0, (v12 & 1) == 0);
      sub_2628EC330();
    }

    return sub_2628DF6F0(v9, &qword_27FF2ED68, &qword_26294F2F0);
  }

  return result;
}

uint64_t sub_262943324@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_26294C5F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE90, &qword_262951670);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v45 - v7);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE80, &qword_262951178);
  MEMORY[0x28223BE20](v49);
  v47 = &v45 - v9;
  v10 = *MEMORY[0x277D48E08];
  v48 = *(v2 + 104);
  v46 = v1;
  v48(v4, v10, v1);
  v11 = sub_26294C5E8();
  v13 = v12;
  v14 = *(v2 + 8);
  v50 = v2 + 8;
  v51 = v14;
  v14(v4, v1);
  sub_26294CA38();
  v16 = sub_2629205EC(v15);
  v18 = v17;
  *v8 = v11;
  v8[1] = v13;
  *(v8 + v6[17]) = 1;
  v19 = v6[11];
  v20 = sub_26294C4F8();
  (*(*(v20 - 8) + 56))(v8 + v19, 1, 1, v20);
  *(v8 + v6[12]) = 1;
  v21 = (v8 + v6[13]);
  *v21 = v16;
  v21[1] = v18;
  *(v8 + v6[14]) = 2;
  *(v8 + v6[15]) = 0;
  v22 = v8 + v6[16];
  KeyPath = swift_getKeyPath();
  v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE98, &qword_2629511B0) + 36)];
  v25 = *(sub_26294D1D8() + 20);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_26294D378();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #6.0 }

  *v24 = _Q0;
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E988, &unk_26294F8A0) + 36)] = 256;
  *v22 = KeyPath;
  v22[8] = 0;
  *(v22 + 2) = 0xD000000000000015;
  *(v22 + 3) = 0x800000026295ED70;
  *(v22 + 4) = 0x4000000000000000;
  sub_26294DAE8();
  sub_26294D0D8();
  v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FEA0, &qword_2629511B8) + 36)];
  v34 = v54;
  *v33 = v53;
  *(v33 + 1) = v34;
  *(v33 + 2) = v55;
  if (sub_262942158())
  {
    v35 = 0.5;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = v47;
  sub_262906F00(v8, v47, &qword_27FF2FE90, &qword_262951670);
  *(v36 + *(v49 + 36)) = v35;
  v37 = v46;
  v48(v4, *MEMORY[0x277D48DF8], v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26294E7D0;
  v39 = MEMORY[0x277D837D0];
  *(v38 + 56) = MEMORY[0x277D837D0];
  v40 = sub_2628DF5B8();
  *(v38 + 64) = v40;
  *(v38 + 32) = 0x442074656C707041;
  *(v38 + 40) = 0xEB00000000617461;
  sub_26294CA38();
  v42 = sub_2629205EC(v41);
  *(v38 + 96) = v39;
  *(v38 + 104) = v40;
  *(v38 + 72) = v42;
  *(v38 + 80) = v43;
  sub_26294C6B8();

  v51(v4, v37);
  sub_26293B2A8();
  sub_26294D798();

  return sub_2628DF6F0(v36, &qword_27FF2FE80, &qword_262951178);
}

__n128 sub_262943830@<Q0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v2 = sub_26294D4E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8F0, &qword_26294FF90);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = sub_26294D338();
  v20 = 1;
  sub_262943B6C(v23);
  memcpy(v21, v23, sizeof(v21));
  memcpy(v22, v23, sizeof(v22));
  sub_2628DF954(v21, v18, &qword_27FF2E8F8, &unk_26294F910);
  sub_2628DF6F0(v22, &qword_27FF2E8F8, &unk_26294F910);
  memcpy(&v19[7], v21, 0x120uLL);
  *v18 = v9;
  *&v18[8] = 0;
  v18[16] = v20;
  memcpy(&v18[17], v19, 0x127uLL);
  sub_26294D4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E888, &unk_2629513D0);
  sub_2628DFD0C(&qword_27FF2E890, &qword_27FF2E888, &unk_2629513D0, MEMORY[0x277CE1138]);
  sub_26294D768();
  (*(v3 + 8))(v5, v2);
  memcpy(v23, v18, 0x138uLL);
  sub_2628DF6F0(v23, &qword_27FF2E888, &unk_2629513D0);
  sub_26294DAE8();
  sub_26294D1F8();
  v10 = v17;
  (*(v6 + 32))(v17, v8, v16);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E880, &unk_26294F770) + 36);
  v12 = *&v18[80];
  *(v11 + 64) = *&v18[64];
  *(v11 + 80) = v12;
  *(v11 + 96) = *&v18[96];
  v13 = *&v18[16];
  *v11 = *v18;
  *(v11 + 16) = v13;
  result = *&v18[48];
  *(v11 + 32) = *&v18[32];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_262943B6C@<X0>(void *a1@<X8>)
{
  v40 = a1;
  v1 = sub_26294DC58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26294CA68();
  v5 = sub_26294CA78();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v78 = v5;
  v79 = v7;
  sub_2628DF230();
  v8 = sub_26294D648();
  v10 = v9;
  LOBYTE(v7) = v11;
  LODWORD(v78) = sub_26294D4B8();
  v12 = sub_26294D618();
  v37 = v13;
  v38 = v12;
  v15 = v14;
  v39 = v16;
  sub_2628DF758(v8, v10, v7 & 1);

  sub_26294DAF8();
  sub_26294D1F8();
  v15 &= 1u;
  v100 = v15;
  sub_26294CA88();
  v78 = sub_2629205EC(v17);
  v79 = v18;
  v19 = sub_26294D648();
  v21 = v20;
  LOBYTE(v7) = v22;
  LODWORD(v78) = sub_26294D4C8();
  v23 = sub_26294D618();
  v25 = v24;
  v27 = v26;
  v36 = v28;
  sub_2628DF758(v19, v21, v7 & 1);

  sub_26294DB08();
  sub_26294D1F8();
  LOBYTE(v19) = v27 & 1;
  v91 = v27 & 1;
  v30 = v37;
  v29 = v38;
  *&v49 = v38;
  *(&v49 + 1) = v37;
  LOBYTE(v50) = v15;
  *(&v50 + 1) = *v99;
  DWORD1(v50) = *&v99[3];
  v31 = v39;
  *(&v50 + 1) = v39;
  v55 = v96;
  v56 = v97;
  v57 = v98;
  v51 = v92;
  v52 = v93;
  v53 = v94;
  v54 = v95;
  v41[6] = v96;
  v41[7] = v97;
  v41[2] = v92;
  v41[3] = v93;
  v41[4] = v94;
  v41[5] = v95;
  v41[0] = v49;
  v41[1] = v50;
  v32 = v23;
  *&v58 = v23;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = v19;
  *(&v59 + 1) = *v90;
  DWORD1(v59) = *&v90[3];
  v33 = v36;
  *(&v59 + 1) = v36;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v41[12] = v43;
  v41[13] = v44;
  v41[10] = v59;
  v41[11] = v42;
  v41[14] = v45;
  v41[15] = v46;
  v41[16] = v47;
  v41[17] = v48;
  v41[8] = v98;
  v41[9] = v58;
  memcpy(v40, v41, 0x120uLL);
  v67[0] = v32;
  v67[1] = v25;
  v68 = v19;
  *v69 = *v90;
  *&v69[3] = *&v90[3];
  v70 = v33;
  v75 = v46;
  v76 = v47;
  v77 = v48;
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v45;
  sub_2628DF954(&v49, &v78, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF954(&v58, &v78, &qword_27FF2E900, &qword_26294FDB0);
  sub_2628DF6F0(v67, &qword_27FF2E900, &qword_26294FDB0);
  v78 = v29;
  v79 = v30;
  v80 = v15;
  *v81 = *v99;
  *&v81[3] = *&v99[3];
  v82 = v31;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  return sub_2628DF6F0(&v78, &qword_27FF2E900, &qword_26294FDB0);
}

uint64_t sub_262943FF8()
{
  v1 = sub_26294C5F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v0;
  (*(v2 + 104))(v4, *MEMORY[0x277D48E08], v1);
  v5 = sub_26294C5E8();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v22 = v5;
  v23 = v7;
  sub_2628DF230();
  v8 = sub_26294D648();
  v10 = v9;
  LOBYTE(v4) = v11;
  sub_26294D5C8();
  v12 = sub_26294D638();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_2628DF758(v8, v10, v4 & 1);

  v22 = v12;
  v23 = v14;
  v24 = v16 & 1;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FE68, &unk_262951660);
  sub_2629452D8(&qword_27FF2FE70, &qword_27FF2FE68, &unk_262951660, sub_26293B2A8);
  return sub_26294DAA8();
}

uint64_t sub_26294423C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_26294E088();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_262944540(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26294431C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A0, &qword_2629517B0);
  result = sub_26294DF58();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26294E088();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262944540(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26294431C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_262944660();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2629447A0(v5 + 1);
  }

  v8 = *v3;
  result = sub_26294E088();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26294E068();
  __break(1u);
  return result;
}

void *sub_262944660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A0, &qword_2629517B0);
  v2 = *v0;
  v3 = sub_26294DF48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2629447A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A0, &qword_2629517B0);
  result = sub_26294DF58();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26294E088();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void *sub_262944990(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FF28, &qword_2629517E0);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_26294C9D8();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_262906F00(v20, v7, &qword_27FF2FF28, &qword_2629517E0);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301D0, &qword_2629517E8);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_262906F00(v7, v11, &qword_27FF2FF28, &qword_2629517E0);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

void *sub_262944CD8(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A8, &qword_2629517B8);
  v2 = MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = v39 - v6;
  v8 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v39[1] = v10;
    v40 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v40;
    v12 = 0;
    v13 = 0;
    v44 = sub_26294CB98();
    v14 = *(v44 - 8);
    v15 = *(v14 + 16);
    v42 = v14 + 16;
    v43 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = *(v14 + 72);
    v17 = v8;
    v39[0] = v9;
    while (1)
    {
      v20 = v46;
      v21 = *(v47 + 48);
      *v46 = v12;
      v43(v20 + v21, v16, v44);
      result = sub_262906F00(v20, v7, &qword_27FF301A8, &qword_2629517B8);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301B8, &qword_2629517D0);
        v26 = *(v9 + 72);
        v27 = v40;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if ((result - v27) == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v28 / v26);
        v31 = v8 + v27;
        v32 = v17[3] >> 1;
        v33 = v32 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v31 >= v17 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v18 = v39[0];
        v7 = v23;
        v19 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      result = sub_262906F00(v7, v11, &qword_27FF301A8, &qword_2629517B8);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v41;
      v17 = v8;
      if (v45 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v36 = v8[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v38;
  }

  return v8;
}

unint64_t sub_262945020()
{
  result = qword_27FF30108;
  if (!qword_27FF30108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF300E8, &qword_262951638);
    sub_2628DF40C();
    sub_2628DFD0C(&qword_27FF30100, &qword_27FF300F8, &qword_262951648, MEMORY[0x277CE14C0]);
    sub_26291E4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30108);
  }

  return result;
}

uint64_t sub_26294511C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookGroupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262945184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629451E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PassbookGroupView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_262941828(a1, a2, v8, a3);
}

uint64_t sub_262945270(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A8, &qword_2629517B8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_2629452D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26293BF98(&qword_27FF2E958, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26294538C()
{
  result = qword_27FF30160;
  if (!qword_27FF30160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30168, &qword_262951730);
    sub_2628DFD0C(&qword_27FF30170, &qword_27FF30178, &qword_262951738, &unk_262950BA8);
    sub_2628DFD0C(&qword_27FF30180, &qword_27FF30188, &unk_262951740, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30160);
  }

  return result;
}

unint64_t sub_262945470()
{
  result = qword_27FF30190;
  if (!qword_27FF30190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30150, &qword_262951728);
    sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30190);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for PassbookGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CBA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_26294DAC8();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_262945758()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262945790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30120, &qword_2629516C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262945834()
{
  v1 = (type metadata accessor for PassbookGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_26294CBA8();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {

      v12 = *(v11 + 32);
      v13 = sub_26294DAC8();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  else
  {
  }

  v14 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v8, v2 | v7 | 7);
}

uint64_t sub_262945A90()
{
  v1 = *(type metadata accessor for PassbookGroupView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294CB98() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26294317C(v5, v0 + v2, v6);
}

uint64_t sub_262945B60()
{
  v1 = (type metadata accessor for PassbookGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CBA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_26294DAC8();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_262945D3C()
{
  v1 = *(type metadata accessor for PassbookGroupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_262942BFC(v0 + v2, v3);
}

unint64_t sub_262945DC8()
{
  result = qword_27FF301B0;
  if (!qword_27FF301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF301B0);
  }

  return result;
}

uint64_t sub_262945E7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_262946074(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294CD78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for PassbookCategoryView(uint64_t a1)
{
  result = qword_27FF301D8;
  if (!qword_27FF301D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629462A4(uint64_t a1)
{
  sub_26294CD78();
  if (v1 <= 0x3F)
  {
    sub_2628DCCD8(319);
    if (v2 <= 0x3F)
    {
      sub_26290E0CC(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_26290E0CC(319, &qword_27FF2F0E8, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26290E0CC(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_262946448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDF8, "4;");
  MEMORY[0x28223BE20](v2 - 8);
  sub_2628DF954(a1, &v5 - v3, &qword_27FF2FDF8, "4;");
  return sub_26294D2C8();
}

uint64_t sub_2629464F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8[-v2];
  type metadata accessor for PassbookCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v9 = v0;
  sub_262918150(sub_26294C47C, v10, v3);

  v4 = sub_26294CD78();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2628DF6F0(v3, &qword_27FF2F080, &unk_26294F7D0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = sub_26294CD58();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_2629466A8()
{
  v0 = sub_26294CCE8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_26294CD08();
  sub_26294CD08();
  v7 = MEMORY[0x26672C300](v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_2629467DC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_26294DAC8();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v45 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301F0, &qword_262951860);
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301F8, &qword_262951868);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30200, &qword_262951870);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v39[0] = v39 - v15;
  *v8 = sub_26294D3C8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30208, &qword_262951878);
  sub_262946D20(v1, &v8[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F110, &unk_2629518B0) + 28);
  v39[1] = *(type metadata accessor for PassbookCategoryView(0) + 32);
  v39[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D958();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = KeyPath;
  v50 = sub_26294CD38();
  v51 = v21;
  v22 = sub_26294B734();
  v23 = sub_2628DF230();
  v24 = MEMORY[0x277D837D0];
  sub_26294D708();

  sub_2628DF6F0(v8, &qword_27FF301F0, &qword_262951860);
  v49 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F140, &unk_26294FA60);
  v50 = v6;
  v51 = v24;
  v52 = v22;
  v53 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
  v28 = sub_2629136CC();
  v50 = v27;
  v51 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v40;
  sub_26294D818();
  (*(v41 + 8))(v12, v30);
  v31 = v44;
  sub_26294D938();
  v33 = v45;
  v32 = v46;
  v34 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x277CDF0D0], v47);
  sub_26294DAB8();
  v35 = *(v32 + 8);
  v35(v33, v34);
  v35(v31, v34);
  v50 = v30;
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v36 = v42;
  v37 = v39[0];
  sub_26294D7C8();
  return (*(v43 + 8))(v37, v36);
}

uint64_t sub_262946D20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E0, &qword_262951990);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - v6;
  v7 = sub_26294D468();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30228, &qword_262951998);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30230, &qword_2629519A0);
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30238, &qword_2629519A8);
  v37 = *(v39 - 8);
  v18 = v37;
  v19 = MEMORY[0x28223BE20](v39);
  v38 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - v21;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30240, &qword_2629519B0);
  sub_26294BA44();
  sub_26294D5E8();
  v23 = sub_2628DFD0C(&qword_27FF30268, &qword_27FF30228, &qword_262951998, MEMORY[0x277CDE5A0]);
  sub_26294D7A8();
  (*(v12 + 8))(v14, v11);
  sub_26294D458();
  v47 = v11;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v22;
  v25 = v41;
  sub_26294D828();
  (*(v42 + 8))(v10, v25);
  (*(v40 + 8))(v17, v15);
  v26 = v43;
  sub_262947510(v43);
  v27 = *(v18 + 16);
  v28 = v38;
  v29 = v39;
  v30 = v24;
  v27(v38, v24, v39);
  v31 = v44;
  sub_2628DF954(v26, v44, &qword_27FF2F1E0, &qword_262951990);
  v32 = v45;
  v27(v45, v28, v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30270, &qword_2629519C8);
  sub_2628DF954(v31, &v32[*(v33 + 48)], &qword_27FF2F1E0, &qword_262951990);
  sub_2628DF6F0(v26, &qword_27FF2F1E0, &qword_262951990);
  v34 = *(v37 + 8);
  v34(v30, v29);
  sub_2628DF6F0(v31, &qword_27FF2F1E0, &qword_262951990);
  return (v34)(v28, v29);
}

uint64_t sub_26294723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassbookCategoryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(sub_2629464F0() + 16);

  v15 = sub_2629464F0();
  sub_26294B860(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26294B8C8(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + v8 + v6) = v7 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30278, &unk_262951A60);
  type metadata accessor for PassbookGroupView(0);
  sub_2628DFD0C(&qword_27FF30280, &qword_27FF30278, &unk_262951A60, MEMORY[0x277D83980]);
  sub_26294BF44(&qword_27FF30260, type metadata accessor for PassbookGroupView, &unk_2629515E0);
  sub_26294BF44(&qword_27FF30288, MEMORY[0x277D48F58], MEMORY[0x277D48F68]);
  sub_26294DA68();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  LOBYTE(v9) = v14[7];
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30240, &qword_2629519B0);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_26292E384;
  v13[2] = v11;
  return result;
}

uint64_t sub_262947510@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F228, &unk_2629519D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F230, &unk_26294FB50);
  MEMORY[0x28223BE20](v37);
  v39 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F238, &unk_2629519E0);
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v37 - v10;
  v11 = sub_26294DAC8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  type metadata accessor for PassbookCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  v18 = v1;
  sub_26294D938();
  (*(v12 + 104))(v15, *MEMORY[0x277CDF0D0], v11);
  v19 = sub_26294DAB8();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v21 = v17;
  v22 = v6;
  v20(v21, v11);
  v23 = v40;
  v24 = 1;
  if (v19)
  {
    *v4 = sub_26294D3C8();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F240, &unk_26294FB60);
    sub_262949900(v18, &v4[*(v25 + 44)]);
    sub_26294DAE8();
    sub_26294D1F8();
    v26 = v39;
    sub_262906F00(v4, v39, &qword_27FF2F228, &unk_2629519D0);
    v27 = (v26 + *(v37 + 36));
    v28 = v47;
    v27[4] = v46;
    v27[5] = v28;
    v27[6] = v48;
    v29 = v43;
    *v27 = v42;
    v27[1] = v29;
    v30 = v45;
    v27[2] = v44;
    v27[3] = v30;
    v31 = [objc_opt_self() secondarySystemBackgroundColor];
    v32 = sub_26294D838();
    v33 = sub_26294D528();
    sub_262906F00(v26, v9, &qword_27FF2F230, &unk_26294FB50);
    v34 = &v9[*(v22 + 36)];
    *v34 = v32;
    v34[8] = v33;
    v35 = v38;
    sub_262906F00(v9, v38, &qword_27FF2F238, &unk_2629519E0);
    sub_262906F00(v35, v23, &qword_27FF2F238, &unk_2629519E0);
    v24 = 0;
  }

  return (*(v41 + 56))(v23, v24, 1, v22);
}

uint64_t sub_262947970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F180, &qword_26294FA88);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F170, &unk_2629518E0);
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F188, &qword_26294FA90);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F190, &qword_26294FA98);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v60 - v7;
  v8 = sub_26294DAC8();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v60 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1A0, &qword_26294FAA8);
  v65 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v17 = &v60 - v16;
  v18 = sub_26294D448();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F158, &unk_26294FA70);
  v62 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F148, &unk_2629518D0);
  MEMORY[0x28223BE20](v79);
  v23 = (&v60 - v22);
  type metadata accessor for PassbookCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v83 == 1)
  {
    sub_26294D428();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1C0, &unk_26294FB00);
    sub_2628DFD0C(&qword_27FF2F1C8, &qword_27FF2F1C0, &unk_26294FB00, MEMORY[0x277CDD7F8]);
    sub_26294D088();
    v24 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70, MEMORY[0x277CDD7A8]);
    MEMORY[0x26672CAA0](v21, v19, v24);
    v83 = v19;
    v84 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0, MEMORY[0x277CDDF68]);
    v27 = v81;
    MEMORY[0x26672CAB0](v17, v81, v80, OpaqueTypeConformance2, v26);
    v65[1](v17, v27);
    (*(v62 + 8))(v21, v19);
  }

  else
  {
    v62 = v19;
    v65 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    v28 = a1;
    v29 = v63;
    sub_26294D938();
    v31 = v66;
    v30 = v67;
    v32 = v64;
    (*(v66 + 104))(v64, *MEMORY[0x277CDF0D0], v67);
    v33 = sub_26294DAB8();
    v34 = *(v31 + 8);
    v34(v32, v30);
    v34(v29, v30);
    if (v33)
    {
      v35 = sub_26294D408();
      MEMORY[0x28223BE20](v35);
      *(&v60 - 2) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
      sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8, MEMORY[0x277CDF028]);
      v36 = v71;
      sub_26294D088();
      v37 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98, MEMORY[0x277CDD7A8]);
      v38 = v61;
      v39 = v74;
      MEMORY[0x26672CAA0](v36, v74, v37);
      v41 = v68;
      v40 = v69;
      v42 = v70;
      (*(v69 + 16))(v68, v38, v70);
      (*(v40 + 56))(v41, 0, 1, v42);
      v83 = v39;
      v84 = v37;
      v43 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v41, v42, v43);
      sub_2628DF6F0(v41, &qword_27FF2F198, &qword_26294FAA0);
      (*(v40 + 8))(v38, v42);
      v44 = v72;
      (*(v72 + 8))(v36, v39);
      v45 = v80;
    }

    else
    {
      v46 = v68;
      v47 = v70;
      (*(v69 + 56))(v68, 1, 1, v70);
      v48 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98, MEMORY[0x277CDD7A8]);
      v39 = v74;
      v83 = v74;
      v84 = v48;
      v49 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v46, v47, v49);
      sub_2628DF6F0(v46, &qword_27FF2F198, &qword_26294FAA0);
      v45 = v80;
      v36 = v71;
      v44 = v72;
    }

    v50 = sub_26294D428();
    MEMORY[0x28223BE20](v50);
    *(&v60 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
    sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8, MEMORY[0x277CDF028]);
    sub_26294D088();
    v51 = *(v75 + 48);
    v52 = v78;
    v53 = v73;
    sub_262913804(v78, v73);
    (*(v44 + 16))(v53 + v51, v36, v39);
    v54 = v76;
    sub_26294D3E8();
    v55 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70, MEMORY[0x277CDD7A8]);
    v83 = v62;
    v84 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0, MEMORY[0x277CDDF68]);
    v23 = v65;
    MEMORY[0x26672CAC0](v54, v81, v45, v56, v57);
    (*(v77 + 8))(v54, v45);
    (*(v44 + 8))(v36, v39);
    sub_2628DF6F0(v52, &qword_27FF2F198, &qword_26294FAA0);
  }

  v58 = sub_2629136CC();
  MEMORY[0x26672CAA0](v23, v79, v58);
  return sub_2628DF6F0(v23, &qword_27FF2F148, &unk_2629518D0);
}

void sub_2629485B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for PassbookCategoryView(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = v5;
  v51 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294CB98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = v47 - v13;
  v14 = sub_26294CBA8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(v4 + 28) + 8);
  v18 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v47[1] = v17;
  v19 = *(v17 + v18);
  v61 = *(v19 + 16);
  if (v61)
  {
    v47[0] = a1;
    v60 = v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v66 = v7 + 16;
    v20 = (v7 + 8);
    v64 = (v7 + 32);
    v58 = (v15 + 8);
    v59 = v15 + 16;

    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v23 = v57;
    v55 = v14;
    v56 = v7;
    v53 = v19;
    v54 = v15;
    while (v21 < *(v19 + 16))
    {
      v24 = *(v15 + 72);
      v63 = v21;
      (*(v15 + 16))(v23, v60 + v24 * v21, v14);
      v25 = sub_26294CAB8();
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v62 = v25;
        v65 = v27;
        v28 = v25 + v27;
        v29 = *(v7 + 72);
        v30 = *(v7 + 16);
        v30(v11, v25 + v27, v6);
        while (1)
        {
          if (sub_26294CB78())
          {
            v30(v67, v11, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_26291D74C(0, *(v22 + 2) + 1, 1, v22);
            }

            v32 = *(v22 + 2);
            v31 = *(v22 + 3);
            if (v32 >= v31 >> 1)
            {
              v22 = sub_26291D74C((v31 > 1), v32 + 1, 1, v22);
            }

            (*v20)(v11, v6);
            *(v22 + 2) = v32 + 1;
            (*v64)(&v22[v65 + v32 * v29], v67, v6);
          }

          else
          {
            (*v20)(v11, v6);
          }

          v28 += v29;
          if (!--v26)
          {
            break;
          }

          v30(v11, v28, v6);
        }

        v14 = v55;
        v7 = v56;
        v19 = v53;
        v15 = v54;
        v23 = v57;
      }

      else
      {
      }

      v21 = v63 + 1;
      (*v58)(v23, v14);
      if (v21 == v61)
      {

        a1 = v47[0];
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
LABEL_20:
    v33 = *(v22 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v35 = v68;
    MEMORY[0x28223BE20](v34);
    v47[-2] = a1;
    v36 = v48;
    sub_262918150(sub_26294B840, v35, v48);

    v37 = sub_26294CD78();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      sub_2628DF6F0(v36, &qword_27FF2F080, &unk_26294F7D0);
      v39 = 0;
    }

    else
    {
      v39 = sub_26294CD68();
      (*(v38 + 8))(v36, v37);
    }

    v40 = v33 == v39;
    v41 = a1;
    v42 = v51;
    sub_26294B860(v41, v51);
    v43 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v44 = v43 + v50;
    v45 = swift_allocObject();
    v46 = sub_26294B8C8(v42, v45 + v43);
    *(v45 + v44) = v40;
    MEMORY[0x28223BE20](v46);
    LOBYTE(v47[-2]) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
    sub_2629139D0();
    sub_26294D988();
  }
}

uint64_t sub_262948CAC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  type metadata accessor for PassbookCategoryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v13 = a1;
  sub_262918150(sub_26294C47C, v14, v6);

  v7 = sub_26294CD78();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2628DF6F0(v6, &qword_27FF2F080, &unk_26294F7D0);
  }

  v10 = sub_26294CD18();
  result = (*(v8 + 8))(v6, v7);
  if (v10)
  {
    v11 = sub_2629464F0();
    sub_2628F1CA4(v11, (a2 & 1) == 0);
  }

  return result;
}

double sub_262948E8C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C5F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D48E08], v4);
  v8 = (v5 + 8);
  if (a1)
  {
    v9 = sub_26294C5E8();
    v11 = v10;
    (*v8)(v7, v4);
    *&v30 = v9;
    *(&v30 + 1) = v11;
    sub_2628DF230();
    v25 = sub_26294D648();
    v26 = v12;
    v27 = v13 & 1;
    v28 = v14;
    v29 = 0;
  }

  else
  {
    v15 = sub_26294C5E8();
    v17 = v16;
    (*v8)(v7, v4);
    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_2628DF230();
    v25 = sub_26294D648();
    v26 = v19;
    v27 = v18 & 1;
    v28 = v20;
    v29 = 1;
  }

  sub_26294D3F8();
  result = *&v30;
  v22 = v31;
  v23 = v32;
  *a2 = v30;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_262949084(uint64_t a1)
{
  v2 = type metadata accessor for PassbookCategoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26294B860(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26294B8C8(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_2629491CC(uint64_t a1)
{
  v2 = sub_26294DAC8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  type metadata accessor for PassbookCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
  v9 = sub_26294DAB8();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = sub_2629464F0();
    sub_2628F1CA4(v11, 0);
  }

  v12 = sub_26294DB28();
  MEMORY[0x28223BE20](v12);
  *&v14[-16] = a1;
  sub_26294D108();
}

uint64_t sub_2629493D4(uint64_t a1)
{
  v16 = a1;
  v1 = sub_26294DAC8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v17 = *(type metadata accessor for PassbookCategoryView(0) + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  v8 = *MEMORY[0x277CDF0D0];
  v9 = *(v2 + 104);
  v9(v5, *MEMORY[0x277CDF0D0], v1);
  v14 = sub_26294DAB8();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v14)
  {
    v11 = *MEMORY[0x277CDF0D8];
  }

  else
  {
    v11 = v8;
  }

  v9(v7, v11, v1);
  (*(v2 + 16))(v5, v7, v1);
  sub_26294D948();
  return (v10)(v7, v1);
}

double sub_2629495D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26294DAC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  type metadata accessor for PassbookCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v7 + 104))(v10, *MEMORY[0x277CDF0D0], v6);
  v13 = sub_26294DAB8();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF0], v2);
  v15 = (v3 + 8);
  if (v13)
  {
    v16 = sub_26294C5E8();
    v18 = v17;
    (*v15)(v5, v2);
    *&v37 = v16;
    *(&v37 + 1) = v18;
    sub_2628DF230();
    v32 = sub_26294D648();
    v33 = v19;
    v34 = v20 & 1;
    v35 = v21;
    v36 = 0;
  }

  else
  {
    v22 = sub_26294C5E8();
    v24 = v23;
    (*v15)(v5, v2);
    *&v37 = v22;
    *(&v37 + 1) = v24;
    sub_2628DF230();
    v32 = sub_26294D648();
    v33 = v26;
    v34 = v25 & 1;
    v35 = v27;
    v36 = 1;
  }

  sub_26294D3F8();
  result = *&v37;
  v29 = v38;
  v30 = v39;
  *a1 = v37;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  return result;
}

uint64_t sub_262949900@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F248, &unk_2629519F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_26294DA38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_26294DA28();
  *v9 = sub_26294D338();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F250, &unk_26294FB70);
  sub_262949B64(a1, &v9[*(v17 + 44)]);
  v18 = *(v11 + 16);
  v18(v14, v16, v10);
  sub_2628DF954(v9, v7, &qword_27FF2F248, &unk_2629519F0);
  v18(a2, v14, v10);
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F258, &qword_262951A00) + 48)];
  sub_2628DF954(v7, v19, &qword_27FF2F248, &unk_2629519F0);
  sub_2628DF6F0(v9, &qword_27FF2F248, &unk_2629519F0);
  v20 = *(v11 + 8);
  v20(v16, v10);
  sub_2628DF6F0(v7, &qword_27FF2F248, &unk_2629519F0);
  return (v20)(v14, v10);
}

void sub_262949B64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for PassbookCategoryView(0);
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = v5;
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F260, &unk_26294FB80);
  v7 = MEMORY[0x28223BE20](v6);
  v89 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v78 - v9;
  v83 = sub_26294C5F8();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26294CB98();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v78 - v16;
  v18 = sub_26294CBA8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v101 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 28);
  v87 = a1;
  v22 = *(a1 + v21 + 8);
  v23 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v80 = v22;
  v24 = *(v22 + v23);
  v98 = *(v24 + 16);
  if (v98)
  {
    v79 = v6;
    v96 = v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v95 = v19 + 16;
    v104 = v12 + 16;
    v25 = (v12 + 8);
    v102 = (v12 + 32);
    v94 = (v19 + 8);

    v27 = 0;
    v105 = v15;
    v28 = MEMORY[0x277D84F90];
    v93 = v12;
    v92 = v18;
    v91 = v19;
    v97 = v26;
    while (v27 < *(v26 + 16))
    {
      (*(v19 + 16))(v101, v96 + *(v19 + 72) * v27, v18);
      v29 = sub_26294CAB8();
      v30 = *(v29 + 16);
      if (v30)
      {
        v100 = v27;
        v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v99 = v29;
        v103 = v31;
        v32 = v29 + v31;
        v33 = *(v12 + 72);
        v34 = *(v12 + 16);
        do
        {
          v34(v17, v32, v11);
          if (sub_26294CB78())
          {
            v34(v105, v17, v11);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_26291D74C(0, *(v28 + 2) + 1, 1, v28);
            }

            v36 = *(v28 + 2);
            v35 = *(v28 + 3);
            if (v36 >= v35 >> 1)
            {
              v28 = sub_26291D74C((v35 > 1), v36 + 1, 1, v28);
            }

            (*v25)(v17, v11);
            *(v28 + 2) = v36 + 1;
            (*v102)(&v28[v103 + v36 * v33], v105, v11);
          }

          else
          {
            (*v25)(v17, v11);
          }

          v32 += v33;
          --v30;
        }

        while (v30);

        v12 = v93;
        v18 = v92;
        v19 = v91;
        v27 = v100;
      }

      else
      {
      }

      ++v27;
      (*v94)(v101, v18);
      v26 = v97;
      if (v27 == v98)
      {

        v6 = v79;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_19:
    v37 = *(v28 + 2);

    v38 = v82;
    v39 = v81;
    v40 = v83;
    (*(v82 + 104))(v81, *MEMORY[0x277D48E08], v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26294ECB0;
    sub_2628FA818();
    v42 = MEMORY[0x277D83C10];
    *(v41 + 56) = MEMORY[0x277D83B88];
    *(v41 + 64) = v42;
    *(v41 + 32) = v43;
    v44 = sub_26294C6B8();
    v46 = v45;

    (*(v38 + 8))(v39, v40);
    v111 = v44;
    v112 = v46;
    sub_2628DF230();
    v47 = sub_26294D648();
    v49 = v48;
    LOBYTE(v38) = v50;
    sub_26294D5D8();
    v51 = sub_26294D638();
    v104 = v52;
    v54 = v53;
    v105 = v55;

    sub_2628DF758(v47, v49, v38 & 1);

    LODWORD(v103) = sub_26294D528();
    LODWORD(v102) = v54 & 1;
    LOBYTE(v111) = v54 & 1;
    LOBYTE(v108) = 1;
    v56 = sub_26294DB08();
    v58 = v57;
    v59 = *(v6 + 36);
    v60 = v88;
    v61 = &v88[v59];
    v62 = v86;
    sub_26294B860(v87, v86);
    v63 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v64 = swift_allocObject();
    sub_26294B8C8(v62, v64 + v63);
    sub_26294D988();
    KeyPath = swift_getKeyPath();
    v66 = swift_allocObject();
    *(v66 + 16) = v37 == 0;
    v67 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0) + 36)];
    *v67 = KeyPath;
    v67[1] = sub_262913BC8;
    v67[2] = v66;
    LOBYTE(KeyPath) = sub_26294D528();
    v68 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F270, &unk_262951A40) + 36)];
    *v68 = KeyPath;
    *(v68 + 8) = 0u;
    *(v68 + 24) = 0u;
    v68[40] = 1;
    v69 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F278, &unk_26294FBD0) + 36)];
    *v69 = v56;
    v69[1] = v58;
    *v60 = 0;
    *(v60 + 8) = 1;
    v70 = v89;
    sub_2628DF954(v60, v89, &qword_27FF2F260, &unk_26294FB80);
    v71 = v51;
    *&v108 = v51;
    v72 = v104;
    *(&v108 + 1) = v104;
    LOBYTE(KeyPath) = v102;
    LOBYTE(v109) = v102;
    *(&v109 + 1) = *v107;
    DWORD1(v109) = *&v107[3];
    v73 = v105;
    *(&v109 + 1) = v105;
    LOBYTE(v61) = v103;
    v110[0] = v103;
    *&v110[1] = *v106;
    *&v110[4] = *&v106[3];
    memset(&v110[8], 0, 32);
    v110[40] = 1;
    v74 = *&v110[16];
    v75 = v90;
    *(v90 + 48) = *v110;
    *(v75 + 64) = v74;
    *(v75 + 73) = *&v110[25];
    v76 = v109;
    *(v75 + 16) = v108;
    *(v75 + 32) = v76;
    *v75 = 0;
    *(v75 + 8) = 1;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F280, &unk_262951A50);
    sub_2628DF954(v70, v75 + *(v77 + 64), &qword_27FF2F260, &unk_26294FB80);
    sub_2628DF954(&v108, &v111, &qword_27FF2F288, &qword_26294FBE0);
    sub_2628DF6F0(v60, &qword_27FF2F260, &unk_26294FB80);
    sub_2628DF6F0(v70, &qword_27FF2F260, &unk_26294FB80);
    v111 = v71;
    v112 = v72;
    v113 = KeyPath;
    *v114 = *v107;
    *&v114[3] = *&v107[3];
    v115 = v73;
    v116 = v61;
    *v117 = *v106;
    *&v117[3] = *&v106[3];
    v118 = 0u;
    v119 = 0u;
    v120 = 1;
    sub_2628DF6F0(&v111, &qword_27FF2F288, &qword_26294FBE0);
  }
}

void sub_26294A644()
{
  v1 = type metadata accessor for PassbookCategoryView(0);
  v2 = v1 - 8;
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v53 = v3;
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26294CB98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v49 - v11;
  v12 = sub_26294CBA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 28);
  v55 = v0;
  v17 = *(v0 + v16 + 8);
  v18 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v51 = v17;
  v19 = *&v17[v18];
  v64 = *(v19 + 16);
  if (v64)
  {
    v61 = v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = (v5 + 8);
    v67 = (v5 + 32);
    v59 = (v13 + 8);
    v60 = v13 + 16;

    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v68 = v5 + 16;
    v57 = v12;
    v58 = v5;
    v56 = v13;
    v62 = v21;
    v63 = v15;
    while (v22 < *(v21 + 16))
    {
      v24 = *(v13 + 72);
      v66 = v22;
      (*(v13 + 16))(v15, v61 + v24 * v22, v12);
      v25 = sub_26294CAB8();
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v65 = v25;
        v69 = v27;
        v28 = v25 + v27;
        v29 = *(v5 + 72);
        v30 = *(v5 + 16);
        v30(v9, v25 + v27, v4);
        while (1)
        {
          if (sub_26294CB78())
          {
            v30(v70, v9, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_26291D74C(0, *(v23 + 2) + 1, 1, v23);
            }

            v32 = *(v23 + 2);
            v31 = *(v23 + 3);
            if (v32 >= v31 >> 1)
            {
              v23 = sub_26291D74C((v31 > 1), v32 + 1, 1, v23);
            }

            (*v20)(v9, v4);
            *(v23 + 2) = v32 + 1;
            (*v67)(&v23[v69 + v32 * v29], v70, v4);
          }

          else
          {
            (*v20)(v9, v4);
          }

          v28 += v29;
          if (!--v26)
          {
            break;
          }

          v30(v9, v28, v4);
        }

        v12 = v57;
        v5 = v58;
        v13 = v56;
      }

      else
      {
      }

      v22 = v66 + 1;
      v15 = v63;
      (*v59)(v63, v12);
      v21 = v62;
      if (v22 == v64)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
LABEL_20:
    v33 = *(v23 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v51;
    sub_26294CFF8();

    v36 = v71;
    MEMORY[0x28223BE20](v35);
    v37 = v55;
    *(&v49 - 2) = v55;
    v38 = v50;
    sub_262918150(sub_26294C47C, v36, v50);

    v39 = sub_26294CD78();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_2628DF6F0(v38, &qword_27FF2F080, &unk_26294F7D0);
      v41 = 0;
    }

    else
    {
      v41 = sub_26294CD68();
      (*(v40 + 8))(v38, v39);
    }

    v42 = v33 == v41;
    v43 = v37;
    v44 = v54;
    sub_26294B860(v43, v54);
    v45 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v46 = v45 + v53;
    v47 = swift_allocObject();
    sub_26294B8C8(v44, v47 + v45);
    *(v47 + v46) = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if ((v71 & 1) == 0)
    {
      v48 = v34;

      sub_262905918(v48, v48, sub_26294BBC8, v47);
    }
  }
}

uint64_t sub_26294AD38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D48DF0], v2);
  v6 = sub_26294C5E8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v22 = v6;
  v23 = v8;
  sub_2628DF230();
  v9 = sub_26294D648();
  v11 = v10;
  LOBYTE(v6) = v12;
  v22 = sub_26294D858();
  v13 = sub_26294D618();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2628DF758(v9, v11, v6 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

id sub_26294AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PassbookCategoryView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_26294CBA8();
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v21 = *(a2 + *(v9 + 28) + 8);
  sub_26294B860(a2, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_26294B8C8(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for PassbookGroupView(0);
  *(a4 + v16[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  swift_storeEnumTagMultiPayload();
  v17 = v21;
  *(a4 + v16[5]) = v21;
  *(a4 + v16[6]) = a3;
  v18 = (a4 + v16[7]);
  *v18 = sub_26294C1B8;
  v18[1] = v14;

  return v17;
}

uint64_t sub_26294B0D0(int a1, char *a2, int a3)
{
  v29 = a1;
  v30 = a3;
  v4 = sub_26294D168();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v24 - v7;
  v28 = sub_26294D0F8();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26294DAC8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  type metadata accessor for PassbookCategoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v12 + 104))(v15, *MEMORY[0x277CDF0D0], v11);
  v18 = sub_26294DAB8();
  v19 = *(v12 + 8);
  v19(v15, v11);
  result = (v19)(v17, v11);
  if (v18)
  {
    MEMORY[0x28223BE20](result);
    *(&v24 - 2) = a2;
    sub_26294DB18();
    sub_26294D108();
  }

  if (v30 & 1) != 0 && (v29)
  {
    sub_26291D460(v10);
    sub_26294D0E8();
    (*(v8 + 8))(v10, v28);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v21 = *(v31 + 16);

    if (!v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
      v23 = v24;
      MEMORY[0x26672D010]();
      sub_26294D138();
      (*(v25 + 8))(v23, v26);
      MEMORY[0x26672D010](v22);
      sub_26294D128();
      return sub_26294D9F8();
    }
  }

  return result;
}

uint64_t sub_26294B4E8()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  (*(v1 + 104))(v8 - v5, *MEMORY[0x277CDF0D8], v0);
  type metadata accessor for PassbookCategoryView(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D948();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_26294B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2629467DC(a2);
  v5 = *(v2 + *(a1 + 20) + 8);
  type metadata accessor for SEStorageManagementController(0);
  sub_26294BF44(&qword_27FF2E800, type metadata accessor for SEStorageManagementController, &protocol conformance descriptor for SEStorageManagementController);
  v6 = v5;
  v7 = sub_26294D178();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301E8, &qword_262951858);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

unint64_t sub_26294B734()
{
  result = qword_27FF30210;
  if (!qword_27FF30210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F0, &qword_262951860);
    sub_2628DFD0C(&qword_27FF30218, &qword_27FF30220, &unk_2629518C0, MEMORY[0x277CE1198]);
    sub_2628DFD0C(&qword_27FF2F138, &qword_27FF2F110, &unk_2629518B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30210);
  }

  return result;
}

uint64_t sub_26294B860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookCategoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26294B8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookCategoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26294B92C()
{
  v1 = *(type metadata accessor for PassbookCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_262948CAC(v2, v3);
}

uint64_t sub_26294B9B8()
{
  v1 = *(type metadata accessor for PassbookCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2629491CC(v2);
}

unint64_t sub_26294BA44()
{
  result = qword_27FF30248;
  if (!qword_27FF30248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30240, &qword_2629519B0);
    sub_26294BAFC();
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30248);
  }

  return result;
}

unint64_t sub_26294BAFC()
{
  result = qword_27FF30250;
  if (!qword_27FF30250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30258, &qword_2629519B8);
    sub_26294BF44(&qword_27FF30260, type metadata accessor for PassbookGroupView, &unk_2629515E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30250);
  }

  return result;
}

uint64_t sub_26294BBC8(int a1)
{
  v3 = *(type metadata accessor for PassbookCategoryView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[*(v3 + 64)];

  return sub_26294B0D0(a1, v4, v5);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for PassbookCategoryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CD78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v0 + v3 + v1[10];
  v10 = sub_26294DAC8();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_26294D0F8();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

id sub_26294BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PassbookCategoryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_26294AF00(a1, v6, v7, a2);
}

uint64_t sub_26294BF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_20Tm()
{
  v1 = (type metadata accessor for PassbookCategoryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CD78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v8 = sub_26294D168();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v0 + v3 + v1[10];
  v10 = sub_26294DAC8();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_26294D0F8();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_26294C21C()
{
  result = qword_27FF30290;
  if (!qword_27FF30290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301E8, &qword_262951858);
    sub_26294C2A8();
    sub_26290C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30290);
  }

  return result;
}

unint64_t sub_26294C2A8()
{
  result = qword_27FF30298;
  if (!qword_27FF30298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF302A0, &qword_262951A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30200, &qword_262951870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F8, &qword_262951868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F140, &unk_26294FA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F0, &qword_262951860);
    sub_26294B734();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    sub_2629136CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30298);
  }

  return result;
}