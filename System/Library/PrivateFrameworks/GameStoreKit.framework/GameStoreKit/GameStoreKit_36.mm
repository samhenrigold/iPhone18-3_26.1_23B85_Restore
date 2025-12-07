void *sub_24E99B650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E99B6F4(uint64_t a1)
{
  sub_24E69A5C4(319, &qword_27F223450, 0x277CBDA58);
  if (v1 <= 0x3F)
  {
    sub_24E99B7B8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v3 <= 0x3F)
      {
        sub_24E99B808(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E99B7B8()
{
  if (!qword_27F2234E8)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2234E8);
    }
  }
}

void sub_24E99B808(uint64_t a1)
{
  if (!qword_27F2234F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213840, &unk_24F93B3C0);
    v1 = sub_24F922F48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2234F0);
    }
  }
}

uint64_t sub_24E99B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactsListDataSource.Item(0);
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

uint64_t sub_24E99B974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactsListDataSource.Item(0);
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

void sub_24E99BA30(uint64_t a1)
{
  type metadata accessor for ContactsListDataSource.Item(319);
  if (v1 <= 0x3F)
  {
    sub_24E99BAD4(319);
    if (v2 <= 0x3F)
    {
      sub_24E99BB44(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E99BAD4(uint64_t a1)
{
  if (!qword_27F223510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    sub_24E99A594();
    v1 = sub_24F923388();
    if (!v2)
    {
      atomic_store(v1, &qword_27F223510);
    }
  }
}

void sub_24E99BB44(uint64_t a1)
{
  if (!qword_27F223518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213840, &unk_24F93B3C0);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F223518);
    }
  }
}

unint64_t sub_24E99BBAC()
{
  result = qword_27F223520;
  if (!qword_27F223520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223310, &qword_24F96E4B0);
    sub_24E602068(&qword_27F223528, &qword_27F223308, &qword_24F96E4A8, MEMORY[0x277CDDB50]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223520);
  }

  return result;
}

unint64_t sub_24E99BC94()
{
  result = qword_27F223530;
  if (!qword_27F223530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223538, &qword_24F96E670);
    sub_24E99BD4C();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223530);
  }

  return result;
}

unint64_t sub_24E99BD4C()
{
  result = qword_27F223540;
  if (!qword_27F223540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223548, &qword_24F96E678);
    sub_24E99BE04();
    sub_24E602068(&qword_27F2233A0, &qword_27F2233A8, &qword_24F96E4F0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223540);
  }

  return result;
}

unint64_t sub_24E99BE04()
{
  result = qword_27F223550;
  if (!qword_27F223550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223558, qword_24F96E680);
    sub_24E6312D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223550);
  }

  return result;
}

unint64_t sub_24E99BE90()
{
  result = qword_27F223590;
  if (!qword_27F223590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223580, &qword_24F96E6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223598, &qword_24F96E6E8);
    sub_24E99BF58();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223590);
  }

  return result;
}

unint64_t sub_24E99BF58()
{
  result = qword_27F2235A0;
  if (!qword_27F2235A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223598, &qword_24F96E6E8);
    sub_24E99C010();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2235A0);
  }

  return result;
}

unint64_t sub_24E99C010()
{
  result = qword_27F2235A8;
  if (!qword_27F2235A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2235B0, &unk_24F96E6F0);
    sub_24E99C0C8();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2235A8);
  }

  return result;
}

unint64_t sub_24E99C0C8()
{
  result = qword_27F2235B8;
  if (!qword_27F2235B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2235C0, &qword_24F9D9560);
    sub_24E602068(&qword_27F2235C8, &qword_27F2235D0, &qword_24F96E700, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2235B8);
  }

  return result;
}

unint64_t sub_24E99C180()
{
  result = qword_27F2235D8;
  if (!qword_27F2235D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223570, &qword_24F96E6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223598, &qword_24F96E6E8);
    sub_24E99BF58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2235D8);
  }

  return result;
}

unint64_t sub_24E99C248()
{
  result = qword_27F223600;
  if (!qword_27F223600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2235F0, &qword_24F96E718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223608, &qword_24F96E728);
    sub_24E99C310();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223600);
  }

  return result;
}

unint64_t sub_24E99C310()
{
  result = qword_27F223610;
  if (!qword_27F223610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223608, &qword_24F96E728);
    sub_24E99C3C8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223610);
  }

  return result;
}

unint64_t sub_24E99C3C8()
{
  result = qword_27F223618;
  if (!qword_27F223618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223620, &qword_24F96E730);
    sub_24E99C480();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223618);
  }

  return result;
}

unint64_t sub_24E99C480()
{
  result = qword_27F223628;
  if (!qword_27F223628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223630, &qword_24F96E738);
    sub_24E602068(&qword_27F223638, &qword_27F223640, &unk_24F96E740, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223628);
  }

  return result;
}

unint64_t sub_24E99C538()
{
  result = qword_27F223648;
  if (!qword_27F223648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2235E0, &qword_24F96E708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223608, &qword_24F96E728);
    sub_24E99C310();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223648);
  }

  return result;
}

unint64_t sub_24E99C600()
{
  result = qword_27F2236D8;
  if (!qword_27F2236D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2236C8, &qword_24F96E768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2236E0, &unk_24F968C10);
    sub_24E602068(&qword_27F2220C0, &unk_27F2236E0, &unk_24F968C10, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2236D8);
  }

  return result;
}

unint64_t sub_24E99C6FC()
{
  result = qword_27F2236F0;
  if (!qword_27F2236F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2236B8, &qword_24F96E758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2236E0, &unk_24F968C10);
    sub_24E602068(&qword_27F2220C0, &unk_27F2236E0, &unk_24F968C10, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2236F0);
  }

  return result;
}

unint64_t sub_24E99C7F8()
{
  result = qword_27F223718;
  if (!qword_27F223718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223708, &qword_24F96E790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F223720, &qword_24F957550);
    sub_24E602068(&qword_27F21CD10, &unk_27F223720, &qword_24F957550, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223718);
  }

  return result;
}

unint64_t sub_24E99C8F4()
{
  result = qword_27F223730;
  if (!qword_27F223730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2236F8, &qword_24F96E780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F223720, &qword_24F957550);
    sub_24E602068(&qword_27F21CD10, &unk_27F223720, &qword_24F957550, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223730);
  }

  return result;
}

unint64_t sub_24E99C9F0()
{
  result = qword_27F223758;
  if (!qword_27F223758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223748, &qword_24F96E7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223760, &qword_24F96E7B8);
    sub_24E99CAB8();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223758);
  }

  return result;
}

unint64_t sub_24E99CAB8()
{
  result = qword_27F223768;
  if (!qword_27F223768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223760, &qword_24F96E7B8);
    sub_24E99CB70();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223768);
  }

  return result;
}

unint64_t sub_24E99CB70()
{
  result = qword_27F223770;
  if (!qword_27F223770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223778, &qword_24F96E7C0);
    sub_24E99CC28();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223770);
  }

  return result;
}

unint64_t sub_24E99CC28()
{
  result = qword_27F223780;
  if (!qword_27F223780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223788, &qword_24F96E7C8);
    sub_24E602068(&qword_27F223790, &qword_27F223798, &unk_24F96E7D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223780);
  }

  return result;
}

unint64_t sub_24E99CCE0()
{
  result = qword_27F2237A0;
  if (!qword_27F2237A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223738, &qword_24F96E798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223760, &qword_24F96E7B8);
    sub_24E99CAB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2237A0);
  }

  return result;
}

unint64_t sub_24E99CDA8()
{
  result = qword_27F2237C8;
  if (!qword_27F2237C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237B8, &qword_24F96E7E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237D0, &qword_24F96E7F8);
    sub_24E99CE70();
    swift_getOpaqueTypeConformance2();
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2237C8);
  }

  return result;
}

unint64_t sub_24E99CE70()
{
  result = qword_27F2237D8;
  if (!qword_27F2237D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237D0, &qword_24F96E7F8);
    sub_24E99CF28();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2237D8);
  }

  return result;
}

unint64_t sub_24E99CF28()
{
  result = qword_27F2237E0;
  if (!qword_27F2237E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237E8, &qword_24F96E800);
    sub_24E99CFE0();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2237E0);
  }

  return result;
}

unint64_t sub_24E99CFE0()
{
  result = qword_27F2237F0;
  if (!qword_27F2237F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237F8, &qword_24F96E808);
    sub_24E99D06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2237F0);
  }

  return result;
}

unint64_t sub_24E99D06C()
{
  result = qword_27F223800;
  if (!qword_27F223800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223808, &qword_24F96E810);
    sub_24E602068(&qword_27F223810, &qword_27F223818, &qword_24F96E818, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223800);
  }

  return result;
}

unint64_t sub_24E99D124()
{
  result = qword_27F223820;
  if (!qword_27F223820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237A8, &qword_24FA04E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2237D0, &qword_24F96E7F8);
    sub_24E99CE70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223820);
  }

  return result;
}

unint64_t sub_24E99D1EC()
{
  result = qword_27F223848;
  if (!qword_27F223848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223838, &qword_24F96E830);
    sub_24E602068(&qword_27F223850, &qword_27F223840, &qword_24F96E838, MEMORY[0x277D7EB00]);
    sub_24E7857F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223848);
  }

  return result;
}

unint64_t sub_24E99D2A4()
{
  result = qword_27F223858;
  if (!qword_27F223858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223828, &qword_24F96E820);
    sub_24E602068(&qword_27F223850, &qword_27F223840, &qword_24F96E838, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223858);
  }

  return result;
}

uint64_t StarRatingView.init(starRating:numberOfStars:includeFilledStarsOnly:interStarSpacing:font:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t StarRatingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_24F924A78();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F925508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223860, &qword_24F96E840);
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223868, &qword_24F96E848);
  MEMORY[0x28223BE20](v33);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223870, &unk_24F96E850);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  v15 = v1[1];
  v16 = v1[3];
  v17 = v1[4];
  if (*(v1 + 16) == 1)
  {
    *v14 = 1;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    swift_storeEnumTagMultiPayload();
    sub_24E99D974();
    sub_24E99DAFC();

    return sub_24F924E28();
  }

  else
  {
    v19 = *v1;
    LOBYTE(v42) = 0;
    v43 = v15;
    v44 = v16;
    v45 = v17;
    v30[1] = v12;

    sub_24F9254E8();
    v30[0] = sub_24E99D974();
    sub_24F926678();
    (*(v4 + 8))(v6, v3);
    sub_24F924A68();
    sub_24F924A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = MEMORY[0x277D85048];
    *(v20 + 64) = sub_24E99D9C8();
    *(v20 + 32) = v19;
    sub_24F92B118();
    sub_24F924A48();

    sub_24F924A58();
    sub_24F924A98();
    v42 = &type metadata for StarRatingView.StarsView;
    v43 = v30[0];
    swift_getOpaqueTypeConformance2();
    v21 = v32;
    sub_24F926518();

    (*(v31 + 8))(v8, v21);
    v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223888, &qword_24F96E860) + 36)];
    *v22 = v19;
    *(v22 + 1) = v16;
    *(v22 + 2) = v15;
    *(v22 + 12) = 1;
    v22[26] = 1;
    v23 = sub_24F927628();
    LOBYTE(v37) = 1;
    v24 = *v36;
    *(&v37 + 1) = *v36;
    DWORD1(v37) = *&v36[3];
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v17;
    *&v39 = v19;
    *(&v39 + 1) = v16;
    *&v40 = v15;
    WORD4(v40) = 0;
    BYTE10(v40) = 1;
    *&v41 = v23;
    *(&v41 + 1) = v25;
    v26 = &v10[*(v33 + 36)];
    v27 = v40;
    v28 = v41;
    *(v26 + 2) = v39;
    *(v26 + 3) = v27;
    *(v26 + 4) = v28;
    v29 = v38;
    *v26 = v37;
    *(v26 + 1) = v29;
    LOBYTE(v42) = 1;
    HIDWORD(v42) = *&v36[3];
    *(&v42 + 1) = v24;
    v43 = v15;
    v44 = v16;
    v45 = v17;
    v46 = v19;
    v47 = v16;
    v48 = v15;
    v49 = 0;
    v50 = 1;
    v51 = v23;
    v52 = v25;

    sub_24E99DA1C(&v37, v35);
    sub_24E601704(&v42, &qword_27F223890, &qword_24F96E868);
    sub_24E99DA8C(v10, v14);
    swift_storeEnumTagMultiPayload();
    sub_24E99DAFC();
    sub_24F924E28();

    return sub_24E99DD7C(v10);
  }
}

unint64_t sub_24E99D974()
{
  result = qword_27F223878;
  if (!qword_27F223878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223878);
  }

  return result;
}

unint64_t sub_24E99D9C8()
{
  result = qword_27F223880;
  if (!qword_27F223880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223880);
  }

  return result;
}

uint64_t sub_24E99DA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223890, &qword_24F96E868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E99DA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223868, &qword_24F96E848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E99DAFC()
{
  result = qword_27F223898;
  if (!qword_27F223898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223868, &qword_24F96E848);
    sub_24E99DBB4();
    sub_24E602068(&qword_27F2238C8, &qword_27F223890, &qword_24F96E868, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223898);
  }

  return result;
}

unint64_t sub_24E99DBB4()
{
  result = qword_27F2238A0;
  if (!qword_27F2238A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223888, &qword_24F96E860);
    sub_24E99DC6C();
    sub_24E602068(&qword_27F2238B8, &qword_27F2238C0, &qword_24F96E878, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2238A0);
  }

  return result;
}

unint64_t sub_24E99DC6C()
{
  result = qword_27F2238A8;
  if (!qword_27F2238A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2238B0, &qword_24F96E870);
    sub_24E99D974();
    swift_getOpaqueTypeConformance2();
    sub_24E99DD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2238A8);
  }

  return result;
}

unint64_t sub_24E99DD24()
{
  result = qword_27F2141E0;
  if (!qword_27F2141E0)
  {
    sub_24F925658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141E0);
  }

  return result;
}

uint64_t sub_24E99DD7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223868, &qword_24F96E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E99DE00@<X0>(int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v30 = a2;
  v28 = a1;
  v33 = a3;
  v32 = sub_24F927748();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223948, &qword_24F96EB18);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-v7];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223938, &qword_24F96EB10);
  MEMORY[0x28223BE20](v29);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223920, &qword_24F96EB08);
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-v12];
  v14 = sub_24F926DF8();
  v15 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_24F926E78();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v8 = v14;
  KeyPath = swift_getKeyPath();
  v20 = (v8 + *(v6 + 44));
  *v20 = KeyPath;
  v20[1] = v30;

  if (v28)
  {
    v21 = MEMORY[0x277CE13D8];
    v22 = sub_24F925198();
  }

  else
  {
    v21 = MEMORY[0x277CE13B8];
    v22 = sub_24F9251B8();
  }

  v23 = v22;
  sub_24E6009C8(v8, v10, &qword_27F223948, &qword_24F96EB18);
  *&v10[*(v29 + 36)] = v23;
  v25 = v31;
  v24 = v32;
  (*(v3 + 104))(v31, *v21, v32);
  (*(v3 + 32))(&v13[*(v11 + 36)], v25, v24);
  sub_24E6009C8(v10, v13, &qword_27F223938, &qword_24F96EB10);
  sub_24E99E9C4();
  sub_24F926B18();
  return sub_24E601704(v13, &qword_27F223920, &qword_24F96EB08);
}

uint64_t sub_24E99E1A0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  result = sub_24F9249A8();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223900, &unk_24F96EAD0);
    swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223910, &qword_24F96EB00);
    sub_24E99E938();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223920, &qword_24F96EB08);
    sub_24E99E9C4();
    swift_getOpaqueTypeConformance2();
    return sub_24F927228();
  }

  return result;
}

uint64_t sub_24E99E330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E99E378(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_24E99E3D4()
{
  result = qword_27F2238D0;
  if (!qword_27F2238D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2238D8, &qword_24F96E918);
    sub_24E99D974();
    sub_24E99DAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2238D0);
  }

  return result;
}

uint64_t sub_24E99E460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24E99E4B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24E99E50C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E99E554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24E99E5E8@<X0>(uint64_t a1@<X8>)
{
  if (__OFSUB__(*(v3 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_24F927788();
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
  }

  return result;
}

void (*sub_24E99E684(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24E99E70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E99EBD0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24E99E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E99EBD0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24E99E7D4(uint64_t a1)
{
  v2 = sub_24E99EBD0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24E99E824()
{
  result = qword_27F2238F0;
  if (!qword_27F2238F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2238F0);
  }

  return result;
}

unint64_t sub_24E99E87C()
{
  result = qword_27F2238F8;
  if (!qword_27F2238F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2238F8);
  }

  return result;
}

uint64_t sub_24E99E8EC()
{

  return swift_deallocObject();
}

unint64_t sub_24E99E938()
{
  result = qword_27F223918;
  if (!qword_27F223918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223908, &qword_24FA2E780);
    sub_24E62A758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223918);
  }

  return result;
}

unint64_t sub_24E99E9C4()
{
  result = qword_27F223928;
  if (!qword_27F223928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223920, &qword_24F96EB08);
    sub_24E99EA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223928);
  }

  return result;
}

unint64_t sub_24E99EA50()
{
  result = qword_27F223930;
  if (!qword_27F223930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223938, &qword_24F96EB10);
    sub_24E99EB08();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223930);
  }

  return result;
}

unint64_t sub_24E99EB08()
{
  result = qword_27F223940;
  if (!qword_27F223940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223948, &qword_24F96EB18);
    sub_24E62A864();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223940);
  }

  return result;
}

unint64_t sub_24E99EBD0()
{
  result = qword_27F223950;
  if (!qword_27F223950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223950);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E99EC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24E99ECDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E99ED6C@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v2 = sub_24F924B38();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F9241F8();
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223968, &unk_24F9B2B00);
  v69 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223970, &unk_24F96ECB0);
  MEMORY[0x28223BE20](v67);
  v7 = &v67 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223978, &unk_24F9B2B10);
  MEMORY[0x28223BE20](v71);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223980, &unk_24F96ECC0);
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v67 - v11;
  v12 = *(v1 + 64);
  v88 = v12;
  v13 = *(v1 + 48);
  v86[2] = *(v1 + 32);
  v87 = v13;
  v14 = *(v1 + 16);
  v86[0] = *v1;
  v86[1] = v14;
  v15 = *(&v87 + 1);
  v79 = v16;
  if (*(&v87 + 1))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v12;
    v18 = sub_24E972460;
  }

  else
  {
    v18 = CGSizeMake;
    v17 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  MEMORY[0x28223BE20](v19);
  *(&v67 - 2) = v86;
  sub_24E5FCA4C(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223988, &unk_24F9B2B20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223990, &unk_24F96ECD0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223998, &unk_24F9B2B30);
  v22 = sub_24E602068(&qword_27F2239A0, &qword_27F223998, &unk_24F9B2B30, MEMORY[0x277CE11A8]);
  v82 = v21;
  v83 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v20;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v68;
  sub_24F926F88();
  v25 = v87;
  v26 = sub_24F927618();
  v28 = v27;
  (*(v69 + 32))(v7, v24, v70);
  v29 = &v7[*(v67 + 36)];
  *v29 = v25;
  *(v29 + 1) = v26;
  *(v29 + 2) = v28;
  v30 = &v9[*(v71 + 36)];
  v31 = *MEMORY[0x277CE0118];
  v32 = v76;
  v70 = *(v76 + 104);
  v33 = v77;
  v70(v30, v31, v77);
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)] = 256;
  sub_24E6009C8(v7, v9, &qword_27F223970, &unk_24F96ECB0);

  v34 = v72;
  sub_24F9241E8();
  sub_24E9A0198();
  sub_24E9A0334(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v35 = v74;
  sub_24F926178();
  (*(v73 + 8))(v34, v35);
  sub_24E601704(v9, &qword_27F223978, &unk_24F9B2B10);
  v84 = sub_24F9271D8();
  v85 = sub_24E9A0334(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v36 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v37 = v70;
  v70(v36, v31, v33);
  __swift_project_boxed_opaque_existential_1(&v82, v84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = &v67;
  v39 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = (&v67 - v40);
  v42 = v75;
  (v37)(v75, *MEMORY[0x277CE0128], v33, v39);
  LOBYTE(v25) = sub_24F924B28();
  v43 = v33;
  v44 = v81;
  (*(v32 + 8))(v42, v43);
  *v41 = ((v25 & 1) == 0) | 0xC00C000000000000;
  swift_getAssociatedConformanceWitness();
  v45 = sub_24F927348();
  v46 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D0, &qword_24F96ECE0);
  v49 = v78;
  v48 = v79;
  v50 = v80;
  (*(v78 + 16))(v80 + v47[9], v44, v79);
  *v50 = v45;
  v50[1] = v46;
  v50[2] = 0x4008000000000000;
  v51 = v50 + v47[10];

  *v51 = sub_24F923398() & 1;
  *(v51 + 1) = v52;
  v51[16] = v53 & 1;
  v54 = v50 + v47[11];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v55 = qword_27F24E488;
  v56 = sub_24F923398();
  v58 = v57;
  v60 = v59;
  v61 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D8, &unk_24F96ED10) + 36);
  *v61 = v55;
  v61[8] = v56 & 1;
  *(v61 + 2) = v58;
  v61[24] = v60 & 1;
  LOBYTE(v55) = sub_24F923398();
  v63 = v62;
  LOBYTE(v58) = v64;

  (*(v49 + 8))(v44, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E0, &unk_24F9B2B80);
  v66 = v50 + *(result + 36);
  *v66 = v55 & 1;
  *(v66 + 1) = v63;
  v66[16] = v58 & 1;
  return result;
}

uint64_t sub_24E99F6F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_24F9248C8();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223998, &unk_24F9B2B30);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223990, &unk_24F96ECD0);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  *v8 = sub_24F927618();
  v8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E8, &unk_24F96ED20);
  sub_24E99F9E4(a1, v8 + *(v13 + 44));
  sub_24F9248B8();
  v14 = sub_24E602068(&qword_27F2239A0, &qword_27F223998, &unk_24F9B2B30, MEMORY[0x277CE11A8]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v20);
  sub_24E601704(v8, &qword_27F223998, &unk_24F9B2B30);
  v22 = *a1;
  v23 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  *&v22 = v6;
  *(&v22 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_24F9269C8();

  return (*(v18 + 8))(v11, v15);
}

uint64_t sub_24E99F9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_24F924848();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F0, &unk_24F9B2B90);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v53 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8, &unk_24F96ED30);
  MEMORY[0x28223BE20](v59);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v12;
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v14;
  v15 = sub_24F9271D8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A00, &unk_24F9B2BA0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A08, &qword_24F96ED40);
  MEMORY[0x28223BE20](v21);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24F924B38();
  (*(*(v30 - 8) + 104))(v17, v29, v30);
  v31 = a1;
  if (*(a1 + 48))
  {
    v32 = *(a1 + 48);
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v32 = sub_24F926D08();
  }

  sub_24E9A0384(v17, v20);
  *&v20[*(v18 + 36)] = v32;

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v20, v25, &qword_27F223A00, &unk_24F9B2BA0);
  v33 = &v25[*(v21 + 36)];
  v34 = v71;
  *v33 = v70;
  *(v33 + 1) = v34;
  *(v33 + 2) = v72;
  sub_24E6009C8(v25, v28, &qword_27F223A08, &qword_24F96ED40);
  v35 = v31;
  LOBYTE(v67) = *(v31 + 34);
  SystemImage.rawValue.getter();
  v36 = sub_24F926DF8();
  v37 = sub_24F925908();
  (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
  v38 = sub_24F925968();
  sub_24E601704(v7, &qword_27F214698, &unk_24F95F810);
  KeyPath = swift_getKeyPath();
  v67 = v36;
  v68 = KeyPath;
  v69 = v38;
  sub_24F925958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
  sub_24E60156C();
  v40 = v60;
  sub_24F9260C8();

  v41 = *(v35 + 24);
  v67 = v41;
  LOBYTE(v68) = *(v35 + 32);
  if (v68 == 1)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_24F92BDC8();
    v42 = sub_24F9257A8();
    sub_24F921FD8();

    v43 = v54;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v67, &qword_27F223A10, &qword_24F9B2BF0);
    (*(v55 + 8))(v43, v56);
    if (v66 != 1)
    {
      goto LABEL_12;
    }
  }

  v44 = *(v35 + 40);
  if (!v44)
  {
    if (*(v35 + 33))
    {
      v45 = sub_24F926C88();
LABEL_13:
      v44 = v45;
      goto LABEL_14;
    }

LABEL_12:
    v45 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_13;
  }

LABEL_14:
  v46 = v58;
  (*(v62 + 32))(v58, v40, v63);
  *(v46 + *(v59 + 36)) = v44;
  v47 = v61;
  sub_24E6009C8(v46, v61, &qword_27F2239F8, &unk_24F96ED30);
  v48 = v57;
  sub_24E9A03F0(v28, v57);
  v49 = v64;
  sub_24E9A0460(v47, v64);
  v50 = v65;
  sub_24E9A03F0(v48, v65);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A18, &unk_24F96ED80);
  sub_24E9A0460(v49, v50 + *(v51 + 48));
  sub_24E601704(v47, &qword_27F2239F8, &unk_24F96ED30);
  sub_24E601704(v28, &qword_27F223A08, &qword_24F96ED40);
  sub_24E601704(v49, &qword_27F2239F8, &unk_24F96ED30);
  return sub_24E601704(v48, &qword_27F223A08, &qword_24F96ED40);
}

uint64_t sub_24E9A0150()
{

  return swift_deallocObject();
}

unint64_t sub_24E9A0198()
{
  result = qword_27F2239A8;
  if (!qword_27F2239A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223978, &unk_24F9B2B10);
    sub_24E9A0250();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0, &qword_24F951970, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2239A8);
  }

  return result;
}

unint64_t sub_24E9A0250()
{
  result = qword_27F2239B0;
  if (!qword_27F2239B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223970, &unk_24F96ECB0);
    sub_24E602068(&qword_27F2239B8, &qword_27F223968, &unk_24F9B2B00, MEMORY[0x277CDF028]);
    sub_24E602068(&qword_27F2239C0, &qword_27F2239C8, &unk_24F9B2B40, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2239B0);
  }

  return result;
}

uint64_t sub_24E9A0334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9A0384(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9A03F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A08, &qword_24F96ED40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9A0460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8, &unk_24F96ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9A04D4()
{
  result = qword_27F223A20;
  if (!qword_27F223A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2239E0, &unk_24F9B2B80);
    sub_24E9A0560();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A20);
  }

  return result;
}

unint64_t sub_24E9A0560()
{
  result = qword_27F223A28;
  if (!qword_27F223A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2239D8, &unk_24F96ED10);
    sub_24E602068(&qword_27F223A30, &qword_27F2239D0, &qword_24F96ECE0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A28);
  }

  return result;
}

uint64_t AttributeDynamicLookup.subscript.getter(void *a1, uint64_t a2)
{
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  return MEMORY[0x28211CB00](v3, v3, a2);
}

{
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  return MEMORY[0x28211CB00](v3, v3, a2);
}

uint64_t AttributeScopes.AchievementCountTextStyleAttributes.Value.font.getter()
{
  v1 = *v0;
  v2 = sub_24F92B098();
  v3 = v2;
  v4 = 66.0;
  if (v1)
  {
    v4 = 30.36;
  }

  CTFontCreateWithNameAndOptions(v2, v4, 0, 0x20000uLL);

  return sub_24F925A78();
}

uint64_t AttributeScopes.AchievementCountTextStyleAttributes.Value.textColor.getter(uint64_t a1)
{
  if (*v1)
  {
    return sub_24F926D38();
  }

  else
  {
    return sub_24F926D18();
  }
}

uint64_t AttributeScopes.AchievementCountTextStyleAttributes.Value.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t AttributeScopes.AchievementCountTextStyleAttributes.Value.rawValue.getter()
{
  if (*v0)
  {
    return 0x616E696D6F6E6564;
  }

  else
  {
    return 0x6F746172656D756ELL;
  }
}

uint64_t sub_24E9A07A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E696D6F6E6564;
  }

  else
  {
    v3 = 0x6F746172656D756ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000072;
  }

  else
  {
    v4 = 0xEB00000000726F74;
  }

  if (*a2)
  {
    v5 = 0x616E696D6F6E6564;
  }

  else
  {
    v5 = 0x6F746172656D756ELL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726F74;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24E9A0854()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9A08E4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E9A0960()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E9A09EC@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24E9A0A4C(uint64_t *a1@<X8>)
{
  v2 = 0x6F746172656D756ELL;
  if (*v1)
  {
    v2 = 0x616E696D6F6E6564;
  }

  v3 = 0xE900000000000072;
  if (*v1)
  {
    v3 = 0xEB00000000726F74;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static AttributeScopes.AchievementCountTextStyleAttributes.name.getter()
{
  swift_beginAccess();
  v0 = *aTextstyle_1;

  return v0;
}

uint64_t static AttributeScopes.AchievementCountTextStyleAttributes.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aTextstyle_1 = a1;
  *&aTextstyle_1[8] = a2;
}

unint64_t sub_24E9A0C54()
{
  result = qword_27F223A48;
  if (!qword_27F223A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A48);
  }

  return result;
}

uint64_t sub_24E9A0CAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aTextstyle_1 = v2;
  *&aTextstyle_1[8] = v1;
}

unint64_t sub_24E9A0E38()
{
  result = qword_27F223A50;
  if (!qword_27F223A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A50);
  }

  return result;
}

uint64_t sub_24E9A0E8C()
{
  swift_beginAccess();
  v0 = *aTextstyle_1;

  return v0;
}

uint64_t type metadata accessor for AttributeScopes.AchievementCountTextAttributes(uint64_t a1)
{
  result = qword_27F223A68;
  if (!qword_27F223A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9A0FA8(uint64_t a1)
{
  sub_24E9A126C(&qword_27F223A78, &protocol conformance descriptor for AttributeScopes.AchievementCountTextAttributes);

  return sub_24F91EC68();
}

uint64_t sub_24E9A1010(uint64_t a1)
{
  sub_24E9A126C(&qword_27F223A78, &protocol conformance descriptor for AttributeScopes.AchievementCountTextAttributes);

  return sub_24F91EC68();
}

double sub_24E9A1078@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aTextstyle_1[8];
  *a1 = *aTextstyle_1;
  a1[1] = v2;

  return result;
}

uint64_t sub_24E9A1100(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91EDF8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E9A1180(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91EDF8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E9A11F0(uint64_t a1)
{
  result = sub_24F91EDF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E9A126C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeScopes.AchievementCountTextAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E9A12B0()
{
  result = qword_27F223A80;
  if (!qword_27F223A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A80);
  }

  return result;
}

unint64_t sub_24E9A1304()
{
  result = qword_27F223A88;
  if (!qword_27F223A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A88);
  }

  return result;
}

unint64_t sub_24E9A1358()
{
  result = qword_27F223A90;
  if (!qword_27F223A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A90);
  }

  return result;
}

unint64_t sub_24E9A13AC()
{
  result = qword_27F223A98;
  if (!qword_27F223A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223A98);
  }

  return result;
}

unint64_t sub_24E9A142C()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_24E9A1480@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9B4690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9A14A8(uint64_t a1)
{
  v2 = sub_24E9A19A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9A14E4(uint64_t a1)
{
  v2 = sub_24E9A19A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiplayerActivityReviewBaseInfo.ActionMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v29 = &v25 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AA0, &qword_24F96F0A8);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24E9A19A8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v26 = v6;
  v27 = v18;
  type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v35 = 0;
  sub_24E9A2390(&qword_27F223AB0, type metadata accessor for PlayTogetherReviewMetricsInfo, &protocol conformance descriptor for PlayTogetherReviewMetricsInfo);
  v20 = v29;
  v21 = v30;
  sub_24F92CC18();
  sub_24E6009C8(v20, v27, &unk_27F212718, &unk_24F9391A0);
  v34 = 1;
  sub_24F92CC18();
  v29 = v16;
  sub_24E6009C8(v9, &v27[*(v16 + 20)], &unk_27F212718, &unk_24F9391A0);
  v33 = 2;
  v22 = v26;
  sub_24F92CC18();
  (*(v31 + 8))(v15, v21);
  v23 = v27;
  sub_24E6009C8(v22, &v27[*(v29 + 6)], &unk_27F212718, &unk_24F9391A0);
  sub_24E9A23D8(v23, v28, type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_24E9A2440(v23, type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics);
}

unint64_t sub_24E9A19A8()
{
  result = qword_27F223AA8;
  if (!qword_27F223AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223AA8);
  }

  return result;
}

unint64_t sub_24E9A1A14()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0xD00000000000001DLL;
  v4 = 0x654D6E6F69746361;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 1)
  {
    v5 = 0x7274654D65676170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24E9A1AEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9B47B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9A1B14(uint64_t a1)
{
  v2 = sub_24E9A233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9A1B50(uint64_t a1)
{
  v2 = sub_24E9A233C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MultiplayerActivityReviewBaseInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
  MEMORY[0x28223BE20](v30);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928818();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A708();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AB8, &unk_24F96F0B0);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v28 - v8;
  v10 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9A233C();
  v37 = v9;
  v13 = v39;
  sub_24F92D108();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v5;
    v15 = v34;
    v16 = v35;
    v39 = v12;
    LOBYTE(v40) = 0;
    sub_24E9A2390(&qword_27F21F8C0, MEMORY[0x277D22408], MEMORY[0x277D22420]);
    sub_24F92CC68();
    v17 = *(v16 + 32);
    v18 = v39;
    v19 = v36;
    v36 = v6;
    v17(v39, v19, v6);
    LOBYTE(v40) = 1;
    sub_24E9A2390(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
    sub_24F92CC68();
    (*(v32 + 32))(v18 + v10[5], v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v43 = 2;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    v20 = v18 + v10[6];
    v21 = v41;
    *v20 = v40;
    *(v20 + 16) = v21;
    *(v20 + 32) = v42;
    v43 = 3;
    sub_24F92CC68();
    v22 = v18 + v10[7];
    v23 = v41;
    *v22 = v40;
    *(v22 + 16) = v23;
    *(v22 + 32) = v42;
    v43 = 4;
    sub_24E688020();
    sub_24F92CC18();
    v24 = v33;
    v25 = (v18 + v10[8]);
    v26 = v41;
    *v25 = v40;
    v25[1] = v26;
    v25[2] = v42;
    LOBYTE(v40) = 5;
    sub_24E9A2390(&qword_27F223AC8, type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics, &protocol conformance descriptor for MultiplayerActivityReviewBaseInfo.ActionMetrics);
    v27 = v31;
    sub_24F92CC68();
    (*(v24 + 8))(v37, v38);
    sub_24E9B3BB8(v27, v18 + v10[9], type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics);
    sub_24E9A23D8(v18, v29, type metadata accessor for MultiplayerActivityReviewBaseInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E9A2440(v18, type metadata accessor for MultiplayerActivityReviewBaseInfo);
  }
}

unint64_t sub_24E9A233C()
{
  result = qword_27F223AC0;
  if (!qword_27F223AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223AC0);
  }

  return result;
}

uint64_t sub_24E9A2390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9A23D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9A2440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E9A24CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24F928818();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24E9A2658(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24F92A708();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24F928818();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24E9A27D0(uint64_t a1)
{
  sub_24F92A708();
  if (v1 <= 0x3F)
  {
    sub_24F928818();
    if (v2 <= 0x3F)
    {
      sub_24E6CFC68(319);
      if (v3 <= 0x3F)
      {
        sub_24E9A323C(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E9A28D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E9A2960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24E9A29DC(uint64_t a1)
{
  sub_24E9A328C(319, &unk_27F212758, type metadata accessor for PlayTogetherReviewMetricsInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24E9A2AB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v15 = type metadata accessor for Player(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[12]);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[13];
      goto LABEL_9;
    }

    v19 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[17];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_24E9A2D44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  result = type metadata accessor for Player(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v19 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[17];

  return v20(v21, a2, a2, v19);
}

void sub_24E9A2FE0(uint64_t a1)
{
  sub_24E65E794(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0);
  if (v1 <= 0x3F)
  {
    sub_24E65E794(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730);
    if (v2 <= 0x3F)
    {
      sub_24E9A328C(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24E9A323C(319, &qword_27F223B10, &type metadata for MultiplayerActivityReviewView.PageState, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24E9A328C(319, &qword_27F223B18, type metadata accessor for GameActivityDraft, MEMORY[0x277CDF338]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Player(319);
            if (v6 <= 0x3F)
            {
              sub_24E9A323C(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24F928FD8();
                if (v8 <= 0x3F)
                {
                  sub_24E9A328C(319, &qword_27F223B20, type metadata accessor for GameActivityPlayersDraft, MEMORY[0x277CDF338]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for MultiplayerActivityReviewBaseInfo(319);
                    if (v10 <= 0x3F)
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

void sub_24E9A323C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E9A328C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit29MultiplayerActivityReviewViewV9PageStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E9A3308(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_24E9A335C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_24E9A3390()
{
  result = qword_27F223B28;
  if (!qword_27F223B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B28);
  }

  return result;
}

unint64_t sub_24E9A33E8()
{
  result = qword_27F223B30;
  if (!qword_27F223B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B30);
  }

  return result;
}

unint64_t sub_24E9A3440()
{
  result = qword_27F223B38;
  if (!qword_27F223B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B38);
  }

  return result;
}

unint64_t sub_24E9A3498()
{
  result = qword_27F223B40;
  if (!qword_27F223B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B40);
  }

  return result;
}

unint64_t sub_24E9A34F0()
{
  result = qword_27F223B48;
  if (!qword_27F223B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B48);
  }

  return result;
}

unint64_t sub_24E9A3548()
{
  result = qword_27F223B50;
  if (!qword_27F223B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B50);
  }

  return result;
}

uint64_t sub_24E9A35B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v145 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v147 = &v108 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v13 - 8);
  v144 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v137 = &v108 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v108 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v20 - 8);
  v139 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v136 = &v108 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v27 - 8);
  v135 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v141 = &v108 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v31 - 8);
  v134 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v140 = &v108 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v35 - 8);
  v133 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v146 = &v108 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v39 - 8);
  v132 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v108 - v42;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v44 = type metadata accessor for MultiplayerActivityReviewView(0);
  v45 = v44[5];
  *(a5 + v45) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v46 = a5 + v44[6];
  *v46 = swift_getKeyPath();
  v46[40] = 0;
  v47 = v44[7];
  *(a5 + v47) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v48 = a5 + v44[11];
  LOBYTE(v152) = 0;
  sub_24F926F28();
  v49 = v155;
  *v48 = v154;
  *(v48 + 1) = v49;
  LOBYTE(v152) = 0;
  sub_24F926F28();
  v142 = v155;
  v50 = a5 + v44[16];
  LOBYTE(v152) = 1;
  sub_24F926F28();
  v51 = v155;
  *v50 = v154;
  *(v50 + 1) = v51;
  v52 = (a5 + v44[14]);
  v53 = a2[1];
  *v52 = *a2;
  v52[1] = v53;
  v54 = a2[3];
  v52[2] = a2[2];
  v52[3] = v54;
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  v55 = v154;
  swift_beginAccess();
  v143 = v55;
  v56 = *(v55 + 16);
  v148 = a1;
  if (v56)
  {
    v57 = v56;
    v58 = &qword_27F23F000;
  }

  else
  {
    v128 = a4;
    v124 = type metadata accessor for GameActivityDraftGameInfo(0);
    v59 = *(v124 - 8);
    v123 = *(v59 + 56);
    v125 = (v59 + 56);
    v129 = v43;
    v123(v43, 1, 1, v124);
    v113 = sub_24F9289E8();
    v60 = *(v113 - 8);
    v121 = *(v60 + 56);
    v122 = v60 + 56;
    v121(v146, 1, 1, v113);
    v119 = type metadata accessor for Leaderboard(0);
    v61 = *(v119 - 8);
    v118 = *(v61 + 56);
    v120 = v61 + 56;
    v118(v140, 1, 1, v119);
    v62 = type metadata accessor for ChallengeDefinitionDetail(0);
    v63 = *(v62 - 8);
    v116 = *(v63 + 56);
    v117 = v63 + 56;
    v116(v141, 1, 1, v62);
    v64 = type metadata accessor for ActivityDefinitionDetail(0);
    v65 = *(v64 - 8);
    v114 = *(v65 + 56);
    v115 = v65 + 56;
    v114(v26, 1, 1, v64);
    v66 = sub_24F920418();
    v67 = *(v66 - 8);
    v111 = *(v67 + 56);
    v112 = v67 + 56;
    v111(v19, 1, 1, v66);
    v68 = sub_24F920A88();
    v69 = *(v68 - 8);
    v109 = *(v69 + 56);
    v110 = v69 + 56;
    v109(v147, 1, 1, v68);
    v126 = 0x800000024FA4C1F0;
    LOBYTE(v151) = 0;
    v70 = MEMORY[0x277D84F90];
    sub_24E609EB8(MEMORY[0x277D84F90]);

    v127 = sub_24E6086DC(v70);
    type metadata accessor for GameActivityDraft(0);
    v71 = swift_allocObject();
    v130 = v19;
    v131 = v26;
    v57 = v71;
    v72 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    v123((v71 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo), 1, 1, v124);
    v73 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
    v121(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork, 1, 1, v113);
    v74 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
    v118(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard, 1, 1, v119);
    v121 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
    v116(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition, 1, 1, v62);
    v122 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
    v114((v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition), 1, 1, v64);
    v123 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
    v111((v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance), 1, 1, v66);
    v75 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
    *(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
    v124 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
    v109(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit, 1, 1, v68);
    v76 = (v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
    v125 = (v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
    *v76 = 0;
    v76[1] = 0;
    v120 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
    sub_24F91FDB8();
    v77 = v132;
    sub_24E60169C(v129, v132, &qword_27F212B28, &qword_24F939910);
    sub_24E601704(v57 + v72, &qword_27F212B28, &qword_24F939910);
    sub_24E6009C8(v77, v57 + v72, &qword_27F212B28, &qword_24F939910);
    v78 = v133;
    sub_24E60169C(v146, v133, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v57 + v73, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E6009C8(v78, v57 + v73, &qword_27F213FB0, &qword_24F93E6B0);
    v79 = v140;
    v80 = v134;
    sub_24E60169C(v140, v134, &qword_27F212890, &qword_24F939670);
    sub_24E601704(v57 + v74, &qword_27F212890, &qword_24F939670);
    sub_24E6009C8(v80, v57 + v74, &qword_27F212890, &qword_24F939670);
    v81 = v141;
    v82 = v135;
    sub_24E60169C(v141, v135, &qword_27F212A08, &qword_24F9397D0);
    v83 = v121;
    sub_24E601704(v121 + v57, &qword_27F212A08, &qword_24F9397D0);
    sub_24E6009C8(v82, v83 + v57, &qword_27F212A08, &qword_24F9397D0);

    *(v57 + v75) = MEMORY[0x277D84F90];
    v84 = v136;
    sub_24E60169C(v131, v136, &qword_27F2142A0, &unk_24F94CF90);
    v85 = v122;
    sub_24E601704(v57 + v122, &qword_27F2142A0, &unk_24F94CF90);
    sub_24E6009C8(v84, v57 + v85, &qword_27F2142A0, &unk_24F94CF90);
    v86 = v137;
    sub_24E60169C(v130, v137, &qword_27F2142B8, &unk_24F954820);
    v87 = v123;
    sub_24E601704(v123 + v57, &qword_27F2142B8, &unk_24F954820);
    sub_24E6009C8(v86, v87 + v57, &qword_27F2142B8, &unk_24F954820);
    v88 = v138;
    sub_24E60169C(v147, v138, &qword_27F2198F8, &unk_24F94CFA0);
    v89 = v124;
    sub_24E601704(v57 + v124, &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E6009C8(v88, v57 + v89, &qword_27F2198F8, &unk_24F94CFA0);
    v90 = v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules;
    *v90 = xmmword_24F96F070;
    *(v90 + 16) = v126;
    *(v90 + 24) = 0;
    *(v90 + 25) = v149;
    *(v90 + 28) = *(&v149 + 3);
    *(v90 + 32) = xmmword_24F96F080;
    *(v90 + 48) = 0xE900000000000073;
    *(v90 + 56) = 64;
    v91 = MEMORY[0x277D84F90];
    *(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(MEMORY[0x277D84F90]);
    *(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v91;
    *(v57 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v127;
    v92 = v125;
    v93 = v146;
    if (v125[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v108 - 3) = 0;
      *(&v108 - 2) = 0;
      *(&v108 - 4) = v57;
      v152 = v57;
      sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
      sub_24F91FD78();
    }

    else
    {
      *v125 = 0;
      v92[1] = 0;
    }

    sub_24E601704(v147, &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E601704(v130, &qword_27F2142B8, &unk_24F954820);
    sub_24E601704(v131, &qword_27F2142A0, &unk_24F94CF90);
    sub_24E601704(v81, &qword_27F212A08, &qword_24F9397D0);
    sub_24E601704(v79, &qword_27F212890, &qword_24F939670);
    sub_24E601704(v93, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v129, &qword_27F212B28, &qword_24F939910);
    a1 = v148;
    a4 = v128;
    v58 = &qword_27F23F000;
  }

  v95 = a5 + v44[15];
  type metadata accessor for GameActivityDraft(0);

  sub_24F9233C8();
  sub_24E9A23D8(a1, a5 + v44[10], type metadata accessor for Player);
  *(a5 + v44[12]) = a4;
  type metadata accessor for GameActivityPlayersDraft(0);

  sub_24F9233C8();
  LOBYTE(v149) = 0;
  sub_24F926F28();

  v96 = v153;
  *v95 = v152;
  *(v95 + 1) = v96;
  swift_getKeyPath();
  v152 = v57;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v97 = v58[460];
  swift_beginAccess();
  v98 = v144;
  sub_24E60169C(v57 + v97, v144, &qword_27F2142B8, &unk_24F954820);
  v99 = sub_24F920418();
  v100 = 1;
  v101 = (*(*(v99 - 8) + 48))(v98, 1, v99);
  sub_24E601704(v98, &qword_27F2142B8, &unk_24F954820);
  if (v101 != 1)
  {
    swift_getKeyPath();
    v149 = v57;
    sub_24F91FD88();

    v102 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
    swift_beginAccess();
    v103 = v139;
    sub_24E60169C(v57 + v102, v139, &qword_27F2142A0, &unk_24F94CF90);
    v104 = type metadata accessor for ActivityDefinitionDetail(0);
    v100 = (*(*(v104 - 8) + 48))(v103, 1, v104) == 1;
    sub_24E601704(v103, &qword_27F2142A0, &unk_24F94CF90);
  }

  v105 = v145;
  v106 = v44[8];
  v150 = v100;
  sub_24E9B6BF4(v100);
  sub_24F926F28();

  sub_24E9B4680(v100);

  sub_24E9A2440(v148, type metadata accessor for Player);
  *(a5 + v106) = v151;
  return sub_24E9B3BB8(v105, a5 + v44[17], type metadata accessor for MultiplayerActivityReviewBaseInfo);
}

void sub_24E9A4820(uint64_t *a2@<X8>)
{
  type metadata accessor for GameActivityPlayersDraft(0);
  swift_allocObject();

  v4 = sub_24F4A51AC(v3);

  *a2 = v4;
}

uint64_t sub_24E9A4880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223B58, &unk_24F96F430);
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v59 = &v49 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A68, &qword_24F935560);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223B60, &qword_24F96F440);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  sub_24E9A50C0(v2, &v49 - v8);
  v10 = sub_24F925338();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925318();
  v54 = sub_24E9B33F8();
  v55 = v6;
  v57 = v7;
  sub_24F926798();
  (*(v11 + 8))(v13, v10);
  sub_24E601704(v9, &qword_27F223B60, &qword_24F96F440);
  v14 = type metadata accessor for MultiplayerActivityReviewView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24E9A23D8(v2, &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultiplayerActivityReviewView);
  sub_24F92B7F8();
  v17 = sub_24F92B7E8();
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_24E9B3BB8(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for MultiplayerActivityReviewView);
  v21 = sub_24F92B858();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v49 - v24;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v51 = sub_24F923DD8();
    v52 = &v49;
    v50 = *(v51 - 8);
    MEMORY[0x28223BE20](v51);
    v49 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_24F92C888();

    v62 = 0xD00000000000003DLL;
    v63 = 0x800000024FA4BFA0;
    v66 = 161;
    v27 = sub_24F92CD88();
    MEMORY[0x253050C20](v27);

    v53 = v3;
    v29 = MEMORY[0x28223BE20](v28);
    (*(v22 + 16))(&v49 - v24, &v49 - v24, v21, v29);
    v30 = v49;
    sub_24F923DC8();
    (*(v22 + 8))(v25, v21);
    v3 = v53;
    v31 = v58;
    v32 = v59;
    (*(v56 + 32))(v59, v55, v58);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A70, &qword_24F935568);
    (*(v50 + 32))(&v32[*(v33 + 36)], v30, v51);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A78, &qword_24F935570);
    v35 = v59;
    v36 = &v59[*(v34 + 36)];
    v37 = sub_24F923AD8();
    v38 = v25;
    v32 = v35;
    (*(v22 + 32))(&v36[*(v37 + 20)], v38, v21);
    *v36 = &unk_24F96F4D0;
    *(v36 + 1) = v19;
    v31 = v58;
    (*(v56 + 32))(v35, v55, v58);
  }

  v39 = sub_24F927558();
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C40, &qword_24F96F4E0);
  v62 = v57;
  v63 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v31;
  v63 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C48, &qword_24F96F4E8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C50, &qword_24F96F4F0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C58, &qword_24F96F4F8);
  v45 = sub_24E9B3D04();
  v62 = v44;
  v63 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v62 = v3;
  v63 = v43;
  v64 = v41;
  v65 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v62 = v42;
  v63 = v47;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  return (*(v61 + 8))(v32, v3);
}

uint64_t sub_24E9A50C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_24F921CB8();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MultiplayerActivityReviewView(0);
  v6 = v5 - 8;
  v59 = *(v5 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v63 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v62 = &v58 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DE8, &qword_24FA07590);
  v65 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v64 = &v58 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D10, &qword_24F96F6C0);
  v68 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v66 = &v58 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C10, &qword_24F96F4A0);
  MEMORY[0x28223BE20](v71);
  v12 = &v58 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D18, &qword_24F96F6C8);
  v61 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v58 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D20, &qword_24F96F6D0);
  MEMORY[0x28223BE20](v74);
  v76 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D28, &qword_24F96F6D8);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BA8, &qword_24F96F460);
  MEMORY[0x28223BE20](v75);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BB8, &qword_24F96F468);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = a1;
  v82 = *(a1 + *(v6 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF8, &qword_24F96F6B8);
  sub_24F926F38();
  v24 = v81;
  if (v81)
  {
    if (v81 == 1)
    {
      *v12 = sub_24F924C88();
      *(v12 + 1) = 0;
      v12[16] = 1;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D30, &qword_24F96F6E0);
      sub_24E9B282C(&v12[*(v25 + 44)]);
      v26 = sub_24E602068(&qword_27F223C18, &qword_27F223C10, &qword_24F96F4A0, MEMORY[0x277CE1198]);
      v27 = v71;
      v70 = v19;
      v28 = v72;
      MEMORY[0x25304C400](2, MEMORY[0x277D84F90], v71, v26);
      sub_24E601704(v12, &qword_27F223C10, &qword_24F96F4A0);
      v29 = v61;
      v30 = v73;
      (*(v61 + 16))(v17, v28, v73);
      swift_storeEnumTagMultiPayload();
      sub_24E9B37D8();
      *&v82 = v27;
      *(&v82 + 1) = v26;
      swift_getOpaqueTypeConformance2();
      v31 = v70;
      sub_24F924E28();
      sub_24E60169C(v31, v76, &qword_27F223BA8, &qword_24F96F460);
      swift_storeEnumTagMultiPayload();
      sub_24E9B36D4();
      v32 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
      *&v82 = v77;
      *(&v82 + 1) = v32;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v82 = v78;
      *(&v82 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24E601704(v31, &qword_27F223BA8, &qword_24F96F460);
      return (*(v29 + 8))(v72, v30);
    }

    else
    {
      v41 = v23;
      v42 = v60;
      sub_24E9A23D8(v41, v60, type metadata accessor for MultiplayerActivityReviewView);
      v43 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v44 = swift_allocObject();
      sub_24E9B3BB8(v42, v44 + v43, type metadata accessor for MultiplayerActivityReviewView);
      v45 = v24;
      v46 = v62;
      sub_24F921A18();
      v48 = v69;
      v47 = v70;
      v49 = v67;
      (*(v69 + 104))(v67, *MEMORY[0x277D7ECB0], v70);
      v50 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
      v51 = v64;
      v52 = v77;
      sub_24F925E38();
      (*(v48 + 8))(v49, v47);
      (*(v63 + 8))(v46, v52);
      sub_24F9257D8();
      sub_24F927618();
      *&v82 = v52;
      *(&v82 + 1) = v50;
      v53 = swift_getOpaqueTypeConformance2();
      v54 = v66;
      v55 = v78;
      sub_24F9266F8();
      (*(v65 + 8))(v51, v55);
      v56 = v68;
      v57 = v79;
      (*(v68 + 16))(v76, v54, v79);
      swift_storeEnumTagMultiPayload();
      sub_24E9B36D4();
      *&v82 = v55;
      *(&v82 + 1) = v53;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24E9B4680(v24);
      return (*(v56 + 8))(v54, v57);
    }
  }

  else
  {
    sub_24E9A5C84(v22);
    v35 = sub_24F925818();
    v36 = sub_24F924058();
    v37 = &v22[*(v20 + 36)];
    *v37 = v36;
    v37[8] = v35;
    sub_24E60169C(v22, v17, &qword_27F223BB8, &qword_24F96F468);
    swift_storeEnumTagMultiPayload();
    sub_24E9B37D8();
    v38 = sub_24E602068(&qword_27F223C18, &qword_27F223C10, &qword_24F96F4A0, MEMORY[0x277CE1198]);
    *&v82 = v71;
    *(&v82 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E60169C(v19, v76, &qword_27F223BA8, &qword_24F96F460);
    swift_storeEnumTagMultiPayload();
    sub_24E9B36D4();
    v39 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    *&v82 = v77;
    *(&v82 + 1) = v39;
    v40 = swift_getOpaqueTypeConformance2();
    *&v82 = v78;
    *(&v82 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E601704(v19, &qword_27F223BA8, &qword_24F96F460);
    return sub_24E601704(v22, &qword_27F223BB8, &qword_24F96F468);
  }
}

uint64_t sub_24E9A5C84@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for MultiplayerActivityReviewView(0);
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v50 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BD8, &qword_24F96F488);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BD0, &qword_24F96F480);
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  MEMORY[0x28223BE20](v15);
  v51 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BC0, &qword_24F96F470);
  v19 = *(v18 - 8);
  v55 = v18;
  v56 = v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v46 - v20;
  sub_24F769764(v11);
  sub_24F769764(v8);
  v21 = sub_24EF46EA0(v11, v8);
  sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v11, &qword_27F215598, &qword_24F945EF0);
  v58 = v1;
  v22 = v59;
  v48 = type metadata accessor for MultiplayerActivityReviewView;
  sub_24E9A23D8(v1, v59, type metadata accessor for MultiplayerActivityReviewView);
  v23 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v46 = v3;
  v47 = swift_allocObject();
  sub_24E9B3BB8(v22, v47 + v23, type metadata accessor for MultiplayerActivityReviewView);
  v24 = v1;
  v25 = v49;
  sub_24E9A23D8(v24, v49, type metadata accessor for MultiplayerActivityReviewView);
  v26 = swift_allocObject();
  sub_24E9B3BB8(v25, v26 + v23, type metadata accessor for MultiplayerActivityReviewView);
  *v14 = v21;
  v27 = v12[19];
  *&v14[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v28 = v12[20];
  *&v14[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v29 = v12[21];
  *&v14[v29] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = v12[22];
  *&v14[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v14[v12[23]] = 0;
  v31 = &v14[v12[24]];
  v65[0] = 1;
  v32 = MEMORY[0x277D839B0];
  sub_24F926F28();
  v33 = v62;
  *v31 = v61;
  *(v31 + 1) = v33;
  v34 = v47;
  *(v14 + 1) = sub_24E9B55B8;
  *(v14 + 2) = v34;
  *(v14 + 3) = sub_24E9B561C;
  *(v14 + 4) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158);
  v35 = v58;
  sub_24F9233D8();
  LOBYTE(v26) = sub_24F4A25AC();

  LOBYTE(v61) = v26 & 1;
  v36 = v59;
  sub_24E9A23D8(v35, v59, v48);
  v37 = swift_allocObject();
  sub_24E9B3BB8(v36, v37 + v23, type metadata accessor for MultiplayerActivityReviewView);
  v38 = sub_24E602068(&qword_27F223BE0, &qword_27F223BD8, &qword_24F96F488, &unk_24F9AB368);
  v39 = MEMORY[0x277D839C8];
  v40 = v51;
  sub_24F926AB8();

  sub_24E601704(v14, &qword_27F223BD8, &qword_24F96F488);
  v61 = v12;
  v62 = v32;
  v63 = v38;
  v64 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v52;
  v42 = v53;
  sub_24F926858();
  (*(v54 + 8))(v40, v42);
  v60 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BC8, &qword_24F96F478);
  v61 = v42;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  sub_24E9B39A8();
  v44 = v55;
  sub_24F926B08();
  return (*(v56 + 8))(v43, v44);
}

double sub_24E9A63E4(uint64_t a1)
{
  v2 = type metadata accessor for MultiplayerActivityReviewView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24E9A23D8(a1, v5, type metadata accessor for MultiplayerActivityReviewView);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24E9B3BB8(v5, v12 + v11, type metadata accessor for MultiplayerActivityReviewView);
  sub_24EA998B8(0, 0, v8, &unk_24F96FAB0, v12);

  return result;
}

uint64_t sub_24E9A65C4()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24E9A6670();
}

uint64_t sub_24E9A6670()
{
  v1[49] = v0;
  v2 = sub_24F920638();
  v1[50] = v2;
  v1[51] = *(v2 - 8);
  v1[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF0, &unk_24F96F6A8);
  v1[53] = swift_task_alloc();
  v3 = sub_24F91F6B8();
  v1[54] = v3;
  v1[55] = *(v3 - 8);
  v1[56] = swift_task_alloc();
  v4 = sub_24F91F4A8();
  v1[57] = v4;
  v1[58] = *(v4 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v1[63] = v5;
  v1[64] = *(v5 - 8);
  v1[65] = swift_task_alloc();
  v6 = sub_24F920418();
  v1[66] = v6;
  v1[67] = *(v6 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v1[70] = swift_task_alloc();
  v7 = type metadata accessor for ActivityDefinitionDetail(0);
  v1[71] = v7;
  v1[72] = *(v7 - 8);
  v1[73] = swift_task_alloc();
  v1[74] = type metadata accessor for Game(0);
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  sub_24F92B7F8();
  v1[81] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v1[82] = v9;
  v1[83] = v8;

  return MEMORY[0x2822009F8](sub_24E9A6AD0, v9, v8);
}

uint64_t sub_24E9A6AD0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 536);
  v20 = *(v0 + 528);
  v3 = type metadata accessor for MultiplayerActivityReviewView(0);
  *(v0 + 672) = v3;
  *(v0 + 132) = v3[9];
  *(v0 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  sub_24F9233D8();
  v4 = *(v0 + 296);
  swift_getKeyPath();
  *(v0 + 304) = v4;
  *(v0 + 688) = sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  sub_24E60169C(v4 + v5, v1, &qword_27F2142B8, &unk_24F954820);

  LODWORD(v2) = (*(v2 + 48))(v1, 1, v20);
  sub_24E601704(v1, &qword_27F2142B8, &unk_24F954820);
  if (v2 == 1)
  {
LABEL_4:
    v11 = *(v0 + 392);
    *(v0 + 248) = *(v11 + v3[8]);
    *(v0 + 312) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF8, &qword_24F96F6B8);
    sub_24F926F48();
    v12 = v3[14];
    *(v0 + 824) = v12;
    v13 = (v11 + v12);
    *(v0 + 696) = *v13;
    *(v0 + 704) = v13[1];
    *(v0 + 712) = v13[2];
    *(v0 + 720) = v13[3];
    *(v0 + 728) = *(v11 + v3[12]);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

    v15 = swift_task_alloc();
    *(v0 + 736) = v15;
    *v15 = v0;
    v15[1] = sub_24E9A6FCC;

    return MEMORY[0x28217F228](v0 + 16, v14, v14);
  }

  v6 = *(v0 + 624);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  sub_24F9233D8();
  v9 = *(v0 + 368);
  swift_getKeyPath();
  *(v0 + 376) = v9;
  sub_24F91FD88();

  v10 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  sub_24E60169C(v9 + v10, v6, &qword_27F2142A0, &unk_24F94CF90);

  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    sub_24E601704(*(v0 + 624), &qword_27F2142A0, &unk_24F94CF90);
    goto LABEL_4;
  }

  v16 = *(v0 + 624);
  v17 = *(v0 + 392);

  sub_24E601704(v16, &qword_27F2142A0, &unk_24F94CF90);
  *(v0 + 280) = *(v17 + v3[8]);
  *(v0 + 384) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF8, &qword_24F96F6B8);
  sub_24F926F48();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24E9A6FCC()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {

    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_24E9A899C;
  }

  else
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_24E9A70FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E9A70FC()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 96) = v2;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v1;
  *(v0 + 128) = 2;

  v5 = swift_task_alloc();
  *(v0 + 752) = v5;
  v6 = sub_24E653FF8();
  *v5 = v0;
  v5[1] = sub_24E9A7208;
  v7 = *(v0 + 728);
  v8 = *(v0 + 608);

  return MEMORY[0x28217F4B0](v8, v0 + 96, v7, &type metadata for GameDataIntent, v6, v3, v4);
}

uint64_t sub_24E9A7208()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_24E9A8C74;
  }

  else
  {
    v5 = sub_24E9A7348;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E9A7348()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v10 = *(v0 + 696);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 136) = v10;
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v5 = swift_task_alloc();
  *(v0 + 768) = v5;
  v6 = sub_24E729968();
  *v5 = v0;
  v5[1] = sub_24E9A7450;
  v7 = *(v0 + 728);
  v8 = *(v0 + 584);

  return MEMORY[0x28217F4B0](v8, v0 + 136, v7, &type metadata for GameActivityDefinitionDataIntent, v6, v3, v4);
}

uint64_t sub_24E9A7450()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_24E9A8F68;
  }

  else
  {
    v5 = sub_24E9A756C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E9A756C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 560);
  sub_24F9233D8();
  sub_24E9A23D8(v1, v2, type metadata accessor for Game);
  v4 = v2[3];
  *v3 = v2[2];
  v3[1] = v4;
  v5 = v2[1];
  v3[2] = *v2;
  v3[3] = v5;
  v6 = v2[7];
  v7 = *(v0 + 600);
  if (v6)
  {
    v8 = *(v7 + 48);
    v9 = v6;
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v10 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 616);
  v11 = *(v0 + 576);
  v34 = *(v0 + 568);
  v12 = *(v0 + 560);
  v35 = *(v0 + 392) + *(v0 + 824);
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = *(v10 + 72);
  v14 = type metadata accessor for GameActivityDraftGameInfo(0);
  v15 = *(v14 + 28);
  v16 = sub_24F9289E8();
  (*(*(v16 - 8) + 16))(v12 + v15, v7 + v13, v16);
  LOBYTE(v13) = *(v7 + 105);

  sub_24E9A2440(v7, type metadata accessor for Game);
  *(v12 + *(v14 + 32)) = v13;
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_24F34DCA8(v12);

  sub_24F9233D8();
  v17 = *(v0 + 328);
  sub_24E9A23D8(v32, v33, type metadata accessor for ActivityDefinitionDetail);
  (*(v11 + 56))(v33, 0, 1, v34);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = v33;
  *(v0 + 336) = v17;
  sub_24F91FD78();

  sub_24E601704(v33, &qword_27F2142A0, &unk_24F94CF90);
  v19 = *(v35 + 56);
  *(v0 + 784) = v19;
  if (v19)
  {
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(*(v0 + 392) + *(v0 + 824) + 48);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    *(v0 + 168) = v21;
    *(v0 + 176) = v20;
    *(v0 + 184) = v22;
    *(v0 + 192) = v19;

    v25 = swift_task_alloc();
    *(v0 + 792) = v25;
    v26 = sub_24E7299BC();
    *v25 = v0;
    v25[1] = sub_24E9A79F0;
    v27 = *(v0 + 728);
    v28 = *(v0 + 552);

    return MEMORY[0x28217F4B0](v28, v0 + 168, v27, &type metadata for GameActivityInstanceDataIntent, v26, v23, v24);
  }

  else
  {
    v29 = type metadata accessor for ASKBagContract(0);
    v30 = swift_task_alloc();
    *(v0 + 808) = v30;
    *v30 = v0;
    v30[1] = sub_24E9A7DB4;

    return MEMORY[0x28217F228](v0 + 344, v29, v29);
  }
}

uint64_t sub_24E9A79F0()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_24E9A9280;
  }

  else
  {

    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_24E9A7B20;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E9A7B20()
{
  v1 = v0[79];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[66];

  sub_24F9233D8();
  (*(v3 + 16))(v1, v2, v4);
  (*(v3 + 56))(v1, 0, 1, v4);
  sub_24F34E2DC(v1);

  (*(v3 + 8))(v2, v4);
  v5 = v0[76];
  v6 = v0[73];
  v7 = v0[49];
  *(swift_task_alloc() + 16) = v7;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24E9A2440(v6, type metadata accessor for ActivityDefinitionDetail);
  sub_24E9A2440(v5, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E9A7DB4()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_24E9A95B8;
  }

  else
  {
    v5 = sub_24E9A7EF0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E9A7EF0()
{
  v1 = v0[73];
  v2 = v0[71];

  if (!*(v1 + *(v2 + 48) + 8))
  {
    ASKBagContract.language.getter();
  }

  v3 = &qword_27F211000;
  if (*(v0[73] + *(v0[71] + 52) + 8))
  {
  }

  else
  {
    v4 = v0[65];
    v6 = v0[63];
    v5 = v0[64];

    v7 = sub_24F92B098();
    sub_24F92A448();

    sub_24F92A3F8();
    (*(v5 + 8))(v4, v6);
    if (!v0[34])
    {

      if (qword_27F211420 != -1)
      {
        swift_once();
      }

      v46 = sub_24F9220D8();
      __swift_project_value_buffer(v46, qword_27F39E8B0);
      v47 = sub_24F9220B8();
      v48 = sub_24F92BDB8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_24E5DD000, v47, v48, "MultiplayerActivityReviewView partyURLString is missing.", v49, 2u);
        MEMORY[0x2530542D0](v49, -1, -1);
      }

      v17 = v0[76];
      v18 = v0[73];

      sub_24E9B45B0();
      v20 = swift_allocError();
      *v50 = 0;
      swift_willThrow();

      goto LABEL_20;
    }
  }

  v9 = v0[61];
  v8 = v0[62];
  v11 = v0[57];
  v10 = v0[58];

  sub_24F91F488();

  sub_24E60169C(v8, v9, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v10 + 48))(v9, 1, v11) == 1)
  {
    v12 = v0[61];

    sub_24E601704(v12, &qword_27F228530, &unk_24F93C6E0);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E8B0);
    v14 = sub_24F9220B8();
    v15 = sub_24F92BDB8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24E5DD000, v14, v15, "UpdateActivityDefinitionActionImplementation can not instantiate activity instance data as we do not have a storefront and locale metadata.", v16, 2u);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    v17 = v0[76];
    v18 = v0[73];
    v19 = v0[62];

    sub_24E9B45B0();
    v20 = swift_allocError();
    *v21 = 1;
    swift_willThrow();

    sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
LABEL_20:
    sub_24E9A2440(v18, type metadata accessor for ActivityDefinitionDetail);
    sub_24E9A2440(v17, type metadata accessor for Game);
    goto LABEL_21;
  }

  v67 = v0[102];
  v22 = v0[60];
  v23 = v0[58];
  v24 = v0[59];
  v25 = v0[56];
  v26 = v0[57];
  v27 = v0[55];
  v63 = v0[54];
  v64 = v0[53];
  v65 = v0[52];
  v28 = v0[51];
  v66 = v0[50];
  (*(v23 + 32))(v22, v0[61], v26);
  (*(v23 + 16))(v24, v22, v26);
  v0[10] = sub_24F9201E8();
  v0[11] = sub_24E9A2390(&qword_27F223D08, MEMORY[0x277D0C9B8], MEMORY[0x277D0C9B0]);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_24F9201D8();

  sub_24F91F6A8();
  sub_24F91F668();
  (*(v27 + 8))(v25, v63);
  sub_24E6086DC(MEMORY[0x277D84F90]);
  v29 = sub_24F9204E8();
  (*(*(v29 - 8) + 56))(v64, 1, 1, v29);
  (*(v28 + 104))(v65, *MEMORY[0x277D0CD18], v66);

  sub_24F9203D8();
  v20 = v67;
  if (!v67)
  {
    v36 = v0[79];
    v37 = v0[68];
    v38 = v0[67];
    v39 = v0[66];
    v68 = v0[62];
    v40 = v0[60];
    v41 = v0[57];
    v42 = v0[58];
    sub_24F9233D8();
    (*(v38 + 16))(v36, v37, v39);
    (*(v38 + 56))(v36, 0, 1, v39);
    sub_24F34E2DC(v36);

    (*(v38 + 8))(v37, v39);
    (*(v42 + 8))(v40, v41);
    sub_24E601704(v68, &qword_27F228530, &unk_24F93C6E0);
    v43 = v0[76];
    v44 = v0[73];
    v45 = v0[49];
    *(swift_task_alloc() + 16) = v45;
    sub_24F9276F8();
    sub_24F923B18();

    sub_24E9A2440(v44, type metadata accessor for ActivityDefinitionDetail);
    sub_24E9A2440(v43, type metadata accessor for Game);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    goto LABEL_26;
  }

  v30 = v0[76];
  v31 = v0[73];
  v32 = v0[62];
  v33 = v0[60];
  v34 = v0[57];
  v35 = v0[58];

  (*(v35 + 8))(v33, v34);
  sub_24E601704(v32, &qword_27F228530, &unk_24F93C6E0);
  sub_24E9A2440(v31, type metadata accessor for ActivityDefinitionDetail);
  sub_24E9A2440(v30, type metadata accessor for Game);
  v3 = &qword_27F211000;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v3[132] != -1)
  {
    swift_once();
  }

  v51 = sub_24F9220D8();
  __swift_project_value_buffer(v51, qword_27F39E8B0);
  v52 = v20;
  v53 = sub_24F9220B8();
  v54 = sub_24F92BDB8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = v20;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v58;
    *v56 = v58;
    _os_log_impl(&dword_24E5DD000, v53, v54, "MultiplayerReviewView failed to load activity definition: %@", v55, 0xCu);
    sub_24E601704(v56, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v56, -1, -1);
    MEMORY[0x2530542D0](v55, -1, -1);
  }

  v59 = v0[49];

  v60 = swift_task_alloc();
  *(v60 + 16) = v59;
  *(v60 + 24) = v20;
  sub_24F9276F8();
  sub_24F923B18();

LABEL_26:

  v61 = v0[1];

  return v61();
}

uint64_t sub_24E9A899C()
{

  v1 = v0[93];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "MultiplayerReviewView failed to load activity definition: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[49];

  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;
  sub_24F9276F8();
  sub_24F923B18();

  v12 = v0[1];

  return v12();
}

uint64_t sub_24E9A8C74()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[95];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "MultiplayerReviewView failed to load activity definition: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[49];

  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;
  sub_24F9276F8();
  sub_24F923B18();

  v12 = v0[1];

  return v12();
}

uint64_t sub_24E9A8F68()
{
  v1 = v0[76];

  sub_24E9A2440(v1, type metadata accessor for Game);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[97];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8B0);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "MultiplayerReviewView failed to load activity definition: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[49];

  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  sub_24F9276F8();
  sub_24F923B18();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24E9A9280()
{
  v1 = v0[76];
  v2 = v0[73];

  sub_24E9A2440(v2, type metadata accessor for ActivityDefinitionDetail);
  sub_24E9A2440(v1, type metadata accessor for Game);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[100];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E8B0);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "MultiplayerReviewView failed to load activity definition: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = v0[49];

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  sub_24F9276F8();
  sub_24F923B18();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E9A95B8()
{
  v1 = v0[76];
  v2 = v0[73];

  sub_24E9A2440(v2, type metadata accessor for ActivityDefinitionDetail);
  sub_24E9A2440(v1, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[102];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E8B0);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "MultiplayerReviewView failed to load activity definition: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = v0[49];

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  sub_24F9276F8();
  sub_24F923B18();

  v14 = v0[1];

  return v14();
}

uint64_t sub_24E9A98D8()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E9A9984;

  return sub_24E9A6670();
}

uint64_t sub_24E9A9984()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E9B725C, v1, v0);
}

uint64_t sub_24E9A9AC0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C48, &qword_24F96F4E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-v5];
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223B58, &unk_24F96F430);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C50, &qword_24F96F4F0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A68, &qword_24F935560);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B60, &qword_24F96F440);
  v11 = sub_24E9B33F8();
  v26 = v10;
  v27 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v9;
  v27 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C58, &qword_24F96F4F8);
  v15 = sub_24E9B3D04();
  v26 = v14;
  v27 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  sub_24F926A58();
  v17 = (a2 + *(type metadata accessor for MultiplayerActivityReviewView(0) + 64));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v26) = v18;
  v27 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v20 = v30;
  v21 = sub_24F925818();
  v26 = v7;
  v27 = v8;
  v28 = v13;
  v29 = v16;
  v22 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304C0E0](v20, v21, v3, v22);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E9A9D60@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C78, &qword_24F96F508);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v4;
  v5 = sub_24F925018();
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C68, &qword_24F96F500);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C58, &qword_24F96F4F8);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  sub_24F9233D8();
  v13 = sub_24F34F43C();

  v37 = a1;
  sub_24F9233D8();
  v14 = v43;
  swift_getKeyPath();
  v43 = v14;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v15 = *(v14 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

  v43 = v13;
  sub_24EA0A6C0(v15);
  v16 = *(v43 + 16);

  if (v16 || (sub_24F9233D8(), v17 = v43, swift_getKeyPath(), v43 = v17, sub_24F91FD88(), , v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite), , , v19 = *(v18 + 16), , v19))
  {
    v20 = v41;
    (*(v40 + 56))(v9, 1, 1, v41);
    v21 = sub_24E602068(&qword_27F223C70, &qword_27F223C68, &qword_24F96F500, MEMORY[0x277CDD7A8]);
    v43 = v38;
    v44 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v9, v20, OpaqueTypeConformance2);
    sub_24E601704(v9, &qword_27F223C58, &qword_24F96F4F8);
  }

  else
  {
    v25 = sub_24F924F98();
    MEMORY[0x28223BE20](v25);
    *(&v33 - 2) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C80, &qword_24F96F560);
    sub_24E9B4140();
    v26 = v34;
    sub_24F923668();
    v27 = sub_24E602068(&qword_27F223C70, &qword_27F223C68, &qword_24F96F500, MEMORY[0x277CDD7A8]);
    v28 = v36;
    v29 = v38;
    MEMORY[0x25304AA30](v26, v38, v27);
    v31 = v40;
    v30 = v41;
    (*(v40 + 16))(v9, v28, v41);
    (*(v31 + 56))(v9, 0, 1, v30);
    v43 = v29;
    v44 = v27;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v9, v30, v32);
    sub_24E601704(v9, &qword_27F223C58, &qword_24F96F4F8);
    (*(v31 + 8))(v28, v30);
    (*(v35 + 8))(v26, v29);
  }

  v23 = sub_24E9B3D04();
  MEMORY[0x25304AA30](v12, v39, v23);
  return sub_24E601704(v12, &qword_27F223C58, &qword_24F96F4F8);
}

uint64_t sub_24E9AA370@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_24F925598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CB0, &qword_24F96F580);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CB8, &qword_24F96F588);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = sub_24F9232F8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_24E9AA900(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CC0, &unk_24F96F590);
  sub_24E9B4284();
  v16 = v42;
  sub_24F921788();
  sub_24F925588();
  sub_24E602068(&qword_27F223CD8, &qword_27F223CB0, &qword_24F96F580, MEMORY[0x277D7EB00]);
  sub_24E9A2390(&qword_27F21A8C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  sub_24F926178();
  (*(v2 + 8))(v4, v1);
  v17 = v11;
  v18 = v12;
  v19 = v41;
  (*(v9 + 8))(v17, v8);
  v43[3] = sub_24F9271D8();
  v43[4] = sub_24E9A2390(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
  sub_24E60169C(v43, v16, &qword_27F223CE0, &qword_24F96F5A0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CA8, &unk_24F96F570);
  (*(v19 + 16))(v16 + v23[9], v14, v18);
  v24 = v16 + v23[10];
  *v24 = sub_24F923398() & 1;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26 & 1;
  v27 = v16 + v23[11];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v28 = qword_27F24E488;
  v29 = sub_24F923398();
  v31 = v30;
  v33 = v32;
  v34 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C98, &qword_24F96F568) + 36);
  *v34 = v28;
  *(v34 + 8) = v29 & 1;
  *(v34 + 16) = v31;
  *(v34 + 24) = v33 & 1;
  LOBYTE(v28) = sub_24F923398();
  v36 = v35;
  LOBYTE(v31) = v37;
  sub_24E601704(v43, &qword_27F223CE0, &qword_24F96F5A0);
  (*(v19 + 8))(v14, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C80, &qword_24F96F560);
  v39 = v16 + *(result + 36);
  *v39 = v28 & 1;
  *(v39 + 8) = v36;
  *(v39 + 16) = v31 & 1;
  return result;
}

uint64_t sub_24E9AA900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  MEMORY[0x28223BE20](v3 - 8);
  v135 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v139 = &v129 - v6;
  v134 = type metadata accessor for DismissDashboardAction(0);
  MEMORY[0x28223BE20](v134);
  v138 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  MEMORY[0x28223BE20](updated);
  v137 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for InvitePlayersToMultiplayerActivityAction(0);
  MEMORY[0x28223BE20](v145);
  v141 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for OpenURLAction(0);
  MEMORY[0x28223BE20](v143);
  v147 = (&v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v129 - v12;
  v150 = type metadata accessor for GameActivityDraftGameInfo(0);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_24F920418();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v146 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v129 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v17 - 8);
  v144 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v154 = (&v129 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v21 - 8);
  v155 = &v129 - v22;
  v157 = sub_24F91F4A8();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v153 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v129 - v25;
  v27 = type metadata accessor for ActivityDefinitionDetail(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v160 = (&v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for MultiplayerActivityReviewView(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v140 = a1;
  *(a1 + 32) = 0;
  v142 = v30;
  v31 = *(v30 + 36);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  v33 = v1;
  sub_24F9233D8();
  v34 = *v161;
  swift_getKeyPath();
  *v161 = v34;
  v35 = sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v36 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  sub_24E60169C(v34 + v36, v26, &qword_27F2142A0, &unk_24F94CF90);

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v37 = &qword_27F2142A0;
    v38 = &unk_24F94CF90;
    v39 = v26;
    return sub_24E601704(v39, v37, v38);
  }

  v40 = v160;
  sub_24E9B3BB8(v26, v160, type metadata accessor for ActivityDefinitionDetail);
  v41 = v33;
  sub_24F9233D8();
  v42 = *v161;
  swift_getKeyPath();
  *v161 = v42;
  sub_24F91FD88();

  v43 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  v44 = v154;
  sub_24E60169C(v42 + v43, v154, &qword_27F2142B8, &unk_24F954820);

  v45 = v158;
  v46 = v158[6];
  v47 = v159;
  if (v46(v44, 1, v159))
  {
    sub_24E9A2440(v40, type metadata accessor for ActivityDefinitionDetail);
    sub_24E601704(v44, &qword_27F2142B8, &unk_24F954820);
    v48 = v155;
    (*(v156 + 56))(v155, 1, 1, v157);
LABEL_7:
    v37 = &qword_27F228530;
    v38 = &unk_24F93C6E0;
LABEL_8:
    v39 = v48;
    return sub_24E601704(v39, v37, v38);
  }

  v49 = v41;
  v50 = v32;
  v132 = v49;
  v130 = v46;
  v133 = v35;
  v131 = v31;
  v51 = (v45 + 2);
  v52 = v44;
  v53 = v152;
  v54 = v47;
  v129 = v45[2];
  v129(v152, v52, v47);
  sub_24E601704(v52, &qword_27F2142B8, &unk_24F954820);
  v55 = v155;
  sub_24F9203F8();
  v48 = v55;
  v58 = v45[1];
  v57 = (v45 + 1);
  v56 = v58;
  (v58)(v53, v54);
  v59 = v156;
  v60 = v157;
  if ((*(v156 + 48))(v48, 1, v157) == 1)
  {
    sub_24E9A2440(v40, type metadata accessor for ActivityDefinitionDetail);
    goto LABEL_7;
  }

  v152 = v51;
  v154 = v56;
  v62 = v153;
  (*(v59 + 32))(v153, v48, v60);
  v155 = v50;
  sub_24F9233D8();
  v63 = *v161;
  swift_getKeyPath();
  *v161 = v63;
  sub_24F91FD88();

  v64 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  v65 = v63 + v64;
  v48 = v151;
  sub_24E60169C(v65, v151, &qword_27F212B28, &qword_24F939910);

  if ((*(v149 + 6))(v48, 1, v150) == 1)
  {
    (*(v59 + 8))(v62, v60);
    sub_24E9A2440(v160, type metadata accessor for ActivityDefinitionDetail);
    v37 = &qword_27F212B28;
    v38 = &qword_24F939910;
    goto LABEL_8;
  }

  v150 = v57;
  v66 = v148;
  sub_24E9B3BB8(v48, v148, type metadata accessor for GameActivityDraftGameInfo);
  sub_24F9233D8();
  v67 = *v161;
  swift_getKeyPath();
  *v161 = v67;
  sub_24F91FD88();

  v68 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  v69 = v67 + v68;
  v48 = v144;
  sub_24E60169C(v69, v144, &qword_27F2142B8, &unk_24F954820);

  v70 = v159;
  if (v130(v48, 1, v159) == 1)
  {
    sub_24E9A2440(v66, type metadata accessor for GameActivityDraftGameInfo);
    (*(v59 + 8))(v153, v60);
    sub_24E9A2440(v160, type metadata accessor for ActivityDefinitionDetail);
    v37 = &qword_27F2142B8;
    v38 = &unk_24F954820;
    goto LABEL_8;
  }

  (v158[4])(v146, v48, v70);
  v71 = sub_24F91F398();
  v73 = v72;
  v74 = v147;
  sub_24F928A98();
  *v74 = v71;
  v74[1] = v73;
  v75 = *(v142 + 52);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158);
  sub_24F9233D8();
  v77 = *v161;
  swift_getKeyPath();
  *v161 = v77;
  sub_24E9A2390(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);
  sub_24F91FD88();

  swift_beginAccess();
  v78 = *(v77 + 24);

  v79 = *(v78 + 16);
  if (v79)
  {
    v80 = sub_24EAE67A0(*(v78 + 16), 0);
    v81 = sub_24EAE84BC(v161, v80 + 32, v79, v78);
    result = sub_24E6586B4(*v161);
    if (v81 != v79)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      return result;
    }

    v149 = v80;
  }

  else
  {

    v149 = MEMORY[0x277D84F90];
  }

  v158 = v75;
  v151 = v76;
  sub_24F9233D8();
  v82 = *v161;
  swift_getKeyPath();
  *v161 = v82;
  sub_24F91FD88();

  swift_beginAccess();
  v83 = *(v82 + 16);

  v84 = 1 << *(v83 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v83 + 64);
  v87 = (v84 + 63) >> 6;

  v88 = 0;
  v89 = MEMORY[0x277D84F90];
  while (v86)
  {
LABEL_27:
    v91 = *(v83 + 56) + 24 * (__clz(__rbit64(v86)) | (v88 << 6));
    *v161 = *v91;
    *&v161[8] = *(v91 + 8);
    v92 = sub_24E8E0F58();
    v93 = *(v92 + 16);
    v94 = *(v89 + 2);
    v95 = v94 + v93;
    if (__OFADD__(v94, v93))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      swift_once();
      goto LABEL_44;
    }

    v96 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v95 > *(v89 + 3) >> 1)
    {
      if (v94 <= v95)
      {
        v98 = v94 + v93;
      }

      else
      {
        v98 = v94;
      }

      v89 = sub_24E615E80(isUniquelyReferenced_nonNull_native, v98, 1, v89);
    }

    v86 &= v86 - 1;
    if (*(v96 + 16))
    {
      if ((*(v89 + 3) >> 1) - *(v89 + 2) < v93)
      {
        goto LABEL_51;
      }

      swift_arrayInitWithCopy();

      if (v93)
      {
        v99 = *(v89 + 2);
        v100 = __OFADD__(v99, v93);
        v101 = v99 + v93;
        if (v100)
        {
          goto LABEL_52;
        }

        *(v89 + 2) = v101;
      }
    }

    else
    {

      if (v93)
      {
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v90 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v90 >= v87)
    {
      break;
    }

    v86 = *(v83 + 64 + 8 * v90);
    ++v88;
    if (v86)
    {
      v88 = v90;
      goto LABEL_27;
    }
  }

  *v161 = v149;
  sub_24EA0A6C0(v89);
  v102 = *v161;
  v104 = *v160;
  v103 = v160[1];

  v105 = sub_24F91F398();
  v107 = v106;
  v86 = v141;
  sub_24E9A23D8(v148, &v141[*(v145 + 24)], type metadata accessor for GameActivityDraftGameInfo);
  sub_24F9233D8();
  v108 = sub_24F4A2890();

  v109 = *(v108 + 16);
  v155 = v102;
  v149 = v103;
  v144 = v104;
  v142 = v105;
  v130 = v107;
  if (v109)
  {
    v110 = sub_24EAE678C(v109, 0);
    v111 = sub_24EAE8364(v161, v110 + 4, v109, v108);
    result = sub_24E6586B4(*v161);
    if (v111 != v109)
    {
      goto LABEL_55;
    }

    v158 = v110;
  }

  else
  {

    v158 = MEMORY[0x277D84F90];
  }

  sub_24F9233D8();
  v112 = *v161;
  swift_getKeyPath();
  *v161 = v112;
  sub_24F91FD88();

  v113 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  v114 = v145;
  sub_24E60169C(v112 + v113, v86 + *(v145 + 36), &qword_27F2142A0, &unk_24F94CF90);

  sub_24F9233D8();
  v115 = *v161;
  swift_getKeyPath();
  *v161 = v115;
  sub_24F91FD88();

  v116 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  sub_24E60169C(v115 + v116, v86 + v114[10], &qword_27F2142B8, &unk_24F954820);

  sub_24F928A98();
  v117 = v149;
  *v86 = v144;
  *(v86 + 8) = v117;
  v118 = v130;
  *(v86 + 16) = v142;
  *(v86 + 24) = v118;
  *(v86 + v114[7]) = v155;
  *(v86 + v114[8]) = v158;
  v88 = v137;
  v129(v137, v146, v159);
  v87 = updated;
  sub_24F928A98();
  v89 = v138;
  sub_24F928A98();
  sub_24E9B2B4C(v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_24F93FC20;
  *(v83 + 56) = v143;
  *(v83 + 64) = sub_24E9A2390(&qword_27F2162F8, type metadata accessor for OpenURLAction, &protocol conformance descriptor for OpenURLAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v83 + 32));
  sub_24E9A23D8(v147, boxed_opaque_existential_1, type metadata accessor for OpenURLAction);
  if (qword_27F210D28 != -1)
  {
    goto LABEL_53;
  }

LABEL_44:
  v120 = v148;
  v121 = v153;
  if (byte_27F39D1B1 == 1)
  {
    *(v83 + 96) = v134;
    *(v83 + 104) = sub_24E9A2390(&qword_27F216288, type metadata accessor for DismissDashboardAction, &unk_24F9A5050);
    v122 = __swift_allocate_boxed_opaque_existential_1((v83 + 72));
    sub_24E9A23D8(v89, v122, type metadata accessor for DismissDashboardAction);
  }

  else
  {
    sub_24F928A98();
    sub_24F92A678();
    v123 = sub_24F92A6B8();
    v124 = MEMORY[0x277D223D8];
    *(v83 + 96) = v123;
    *(v83 + 104) = v124;
    __swift_allocate_boxed_opaque_existential_1((v83 + 72));
    v121 = v153;
    sub_24F92A668();
  }

  v125 = v140;
  *(v83 + 136) = v145;
  *(v83 + 144) = sub_24E9A2390(&qword_27F214298, type metadata accessor for InvitePlayersToMultiplayerActivityAction, &unk_24F9D4CF4);
  v126 = __swift_allocate_boxed_opaque_existential_1((v83 + 112));
  sub_24E9A23D8(v86, v126, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  *(v83 + 176) = v87;
  *(v83 + 184) = sub_24E9A2390(&qword_27F2163D0, type metadata accessor for UpdateGamedActivityInstanceAction, &unk_24F9DE3BC);
  v127 = __swift_allocate_boxed_opaque_existential_1((v83 + 152));
  sub_24E9A23D8(v88, v127, type metadata accessor for UpdateGamedActivityInstanceAction);
  *&v161[24] = sub_24F928DD8();
  v162 = MEMORY[0x277D21D10];
  __swift_allocate_boxed_opaque_existential_1(v161);
  sub_24F928DC8();
  sub_24E9A2440(v89, type metadata accessor for DismissDashboardAction);
  sub_24E9A2440(v88, type metadata accessor for UpdateGamedActivityInstanceAction);
  sub_24E9A2440(v86, type metadata accessor for InvitePlayersToMultiplayerActivityAction);
  sub_24E9A2440(v147, type metadata accessor for OpenURLAction);
  (v154)(v146, v159);
  sub_24E9A2440(v120, type metadata accessor for GameActivityDraftGameInfo);
  (*(v156 + 8))(v121, v157);
  sub_24E9A2440(v160, type metadata accessor for ActivityDefinitionDetail);
  result = sub_24E601704(v125, qword_27F21B590, &unk_24F93BE30);
  v128 = *&v161[16];
  *v125 = *v161;
  *(v125 + 16) = v128;
  *(v125 + 32) = v162;
  return result;
}

uint64_t sub_24E9AC04C@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_24F9248C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8._object = 0x800000024FA4BFE0;
  v8._countAndFlagsBits = 0xD000000000000027;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v8, v9);
  sub_24E600AEC();
  v10 = sub_24F925E18();
  v12 = v11;
  v24._countAndFlagsBits = v10;
  v24._object = v11;
  v14 = v13 & 1;
  v25 = v13 & 1;
  v26 = v15;
  sub_24F9268B8();
  sub_24E600B40(v10, v12, v14);

  v16 = sub_24F9257F8();
  sub_24F923318();
  v17 = &v7[*(v5 + 36)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_24F9248B8();
  sub_24E6AFAB0();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F2177A8, &unk_24F946390);
}

uint64_t sub_24E9AC274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_24F9271D8();
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24F927418();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F927538();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F927148();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F50, &qword_24F96FC98);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F78, &unk_24F96FCA8);
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  LOBYTE(a1) = sub_24F925808();
  sub_24F923318();
  v18 = &v16[*(v14 + 36)];
  *v18 = a1;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_24F9273F8();
  sub_24F927448();
  (*(v5 + 8))(v7, v28);
  sub_24F927138();
  (*(v8 + 8))(v10, v27);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24F924B38();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_24E9B6EAC();
  sub_24E9A2390(&qword_27F214E30, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  sub_24F926248();
  sub_24E9A2440(v4, MEMORY[0x277CE1260]);
  (*(v11 + 8))(v13, v29);
  return sub_24E601704(v16, &qword_27F223F50, &qword_24F96FC98);
}

uint64_t sub_24E9AC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F926C88();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F78, &unk_24F96FCA8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F48, &qword_24F96FC90);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_24E9AC710(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F40, &qword_24F96FC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F48, &qword_24F96FC90);
  sub_24E6A4C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F50, &qword_24F96FC98);
  sub_24F9271D8();
  sub_24E9B6EAC();
  sub_24E9A2390(&qword_27F214E30, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  swift_getOpaqueTypeConformance2();
  sub_24E9B701C();
  return sub_24F927568();
}

uint64_t sub_24E9AC870(uint64_t a1)
{
  type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF8, &qword_24F96F6B8);
  return sub_24F926F48();
}

uint64_t sub_24E9AC8DC(uint64_t a1, void *a2)
{
  type metadata accessor for MultiplayerActivityReviewView(0);
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CF8, &qword_24F96F6B8);
  return sub_24F926F48();
}

uint64_t sub_24E9AC95C@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v106 = type metadata accessor for ActivityDefinitionDetail(0);
  v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = (&v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v93 - v6;
  MEMORY[0x28223BE20](v7);
  v94 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v93 - v12;
  v109 = type metadata accessor for PlayTogetherReviewHeader(0);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v93 - v17;
  v19 = type metadata accessor for GameActivityDraftGameInfo(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v107 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v93 - v23;
  v100 = type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  v105 = v1;
  sub_24F9233D8();
  v25 = v121;
  swift_getKeyPath();
  v121 = v25;
  v26 = sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v27 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v25 + v27, v18, &qword_27F212B28, &qword_24F939910);

  v28 = *(v20 + 48);
  v93 = v19;
  if (v28(v18, 1, v19) == 1)
  {
    sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
    v29 = 1;
    v31 = v109;
    v30 = v110;
    return (*(v108 + 56))(v30, v29, 1, v31);
  }

  v101 = v24;
  sub_24E9B3BB8(v18, v24, type metadata accessor for GameActivityDraftGameInfo);
  sub_24F9233D8();
  v32 = v120;
  swift_getKeyPath();
  v120 = v32;
  sub_24F91FD88();

  v33 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  v34 = v32 + v33;
  v35 = v94;
  sub_24E60169C(v34, v94, &qword_27F2142A0, &unk_24F94CF90);

  v36 = *(v111 + 48);
  v37 = v106;
  v111 += 48;
  v95 = v36;
  v38 = v36(v35, 1, v106);
  v97 = v26;
  if (v38)
  {
    sub_24E601704(v35, &qword_27F2142A0, &unk_24F94CF90);
    v39 = sub_24F9289E8();
    v40 = v96;
    (*(*(v39 - 8) + 56))(v96, 1, 1, v39);
    v41 = v103;
LABEL_6:
    v43 = *(v93 + 28);
    sub_24F9289E8();
    v44 = *(v39 - 8);
    v45 = v101;
    (*(v44 + 16))(v112, &v101[v43], v39);
    if ((*(v44 + 48))(v40, 1, v39) != 1)
    {
      sub_24E601704(v40, &qword_27F213FB0, &qword_24F93E6B0);
    }

    v46 = v106;
    goto LABEL_9;
  }

  v41 = v103;
  sub_24E9A23D8(v35, v103, type metadata accessor for ActivityDefinitionDetail);
  sub_24E601704(v35, &qword_27F2142A0, &unk_24F94CF90);
  v40 = v96;
  sub_24E60169C(v41 + *(v37 + 32), v96, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E9A2440(v41, type metadata accessor for ActivityDefinitionDetail);
  v39 = sub_24F9289E8();
  v42 = *(v39 - 8);
  if ((*(v42 + 48))(v40, 1, v39) == 1)
  {
    goto LABEL_6;
  }

  (*(v42 + 32))(v112, v40, v39);
  v46 = v106;
  v45 = v101;
LABEL_9:
  v47 = v105;
  sub_24F9289E8();
  (*(*(v39 - 8) + 56))(v112, 0, 1, v39);
  sub_24E9A23D8(v45, v107, type metadata accessor for GameActivityDraftGameInfo);
  sub_24F9233D8();
  v48 = v119;
  swift_getKeyPath();
  v119 = v48;
  sub_24F91FD88();

  v49 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  v50 = v48 + v49;
  v51 = v99;
  sub_24E60169C(v50, v99, &qword_27F2142A0, &unk_24F94CF90);

  if (v95(v51, 1, v46))
  {
    sub_24E601704(v51, &qword_27F2142A0, &unk_24F94CF90);
    v106 = 0;
    v105 = 0;
  }

  else
  {
    sub_24E9A23D8(v51, v41, type metadata accessor for ActivityDefinitionDetail);
    sub_24E601704(v51, &qword_27F2142A0, &unk_24F94CF90);
    v52 = v41[5];
    v106 = v41[4];
    v105 = v52;

    sub_24E9A2440(v41, type metadata accessor for ActivityDefinitionDetail);
  }

  sub_24F9233D8();
  v53 = v118;
  swift_getKeyPath();
  v118 = v53;
  sub_24F91FD88();

  v54 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  v55 = v53 + v54;
  v56 = v102;
  sub_24E60169C(v55, v102, &qword_27F2142A0, &unk_24F94CF90);

  if (v95(v56, 1, v46))
  {
    sub_24E601704(v56, &qword_27F2142A0, &unk_24F94CF90);
    v111 = 0;
    v103 = 0;
  }

  else
  {
    sub_24E9A23D8(v56, v41, type metadata accessor for ActivityDefinitionDetail);
    sub_24E601704(v56, &qword_27F2142A0, &unk_24F94CF90);
    v57 = v41[7];
    v111 = v41[6];
    v103 = v57;

    sub_24E9A2440(v41, type metadata accessor for ActivityDefinitionDetail);
  }

  v58 = v47;
  v99 = sub_24E9B2090();
  v97 = v59;
  v96 = sub_24E9B24E8();
  v61 = v60;
  v62 = v100;
  v63 = v58 + *(v100 + 68);
  v64 = (v63 + *(type metadata accessor for MultiplayerActivityReviewBaseInfo(0) + 32));
  v66 = *v64;
  v65 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  v69 = v64[4];
  v70 = v64[5];
  v71 = (v58 + *(v62 + 64));
  v72 = *v71;
  v73 = *(v71 + 1);
  v116 = v72;
  v117 = v73;
  sub_24E68FE2C(v66, v65, v67, v68, v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  sub_24E9A2440(v101, type metadata accessor for GameActivityDraftGameInfo);
  v74 = v113;
  v102 = v114;
  LODWORD(v101) = v115;
  v75 = v98;
  sub_24E6009C8(v112, v98, &qword_27F213FB0, &qword_24F93E6B0);
  v31 = v109;
  sub_24E9B3BB8(v107, v75 + *(v109 + 20), type metadata accessor for GameActivityDraftGameInfo);
  v76 = (v75 + v31[6]);
  v77 = v105;
  *v76 = v106;
  v76[1] = v77;
  v78 = (v75 + v31[7]);
  v79 = v103;
  *v78 = v111;
  v78[1] = v79;
  v80 = (v75 + v31[8]);
  v81 = v97;
  *v80 = v99;
  v80[1] = v81;
  v82 = (v75 + v31[9]);
  *v82 = v96;
  v82[1] = v61;
  v83 = v75 + v31[10];
  *v83 = 0;
  *(v83 + 8) = 1;
  v84 = (v75 + v31[11]);
  *v84 = v66;
  v84[1] = v65;
  v84[2] = v67;
  v84[3] = v68;
  v84[4] = v69;
  v84[5] = v70;
  v85 = v75 + v31[12];
  *v85 = swift_getKeyPath();
  *(v85 + 8) = 0;
  v86 = v31[13];
  *(v75 + v86) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v87 = v31[14];
  *(v75 + v87) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v88 = v75 + v31[15];
  v89 = v102;
  *v88 = v74;
  *(v88 + 8) = v89;
  *(v88 + 16) = v101;
  v90 = v104;
  sub_24E9B3BB8(v75, v104, type metadata accessor for PlayTogetherReviewHeader);
  v91 = v90;
  v30 = v110;
  sub_24E9B3BB8(v91, v110, type metadata accessor for PlayTogetherReviewHeader);
  v29 = 0;
  return (*(v108 + 56))(v30, v29, 1, v31);
}

uint64_t sub_24E9AD72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D40, &qword_24F96F7C0);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = (&v45 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D48, &qword_24F96F7C8);
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D50, &qword_24F96F7D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D58, &qword_24F96F7D8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v55 = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D60, &qword_24F96F7E0);
  sub_24E9B5764();
  sub_24F923438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v20 + 32) = sub_24F9273C8();
  *(v20 + 40) = v21;
  sub_24F926C98();
  *(v20 + 48) = sub_24F9273C8();
  *(v20 + 56) = v22;
  sub_24F9273D8();
  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v23 = &v19[*(v15 + 44)];
  *v23 = v59;
  *(v23 + 8) = v60;
  *(v23 + 24) = v61;
  v24 = (a1 + *(type metadata accessor for MultiplayerActivityReviewView(0) + 44));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v57) = v25;
  v58 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if ((v56 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158), sub_24F9233D8(), v27 = sub_24F4A25AC(), , v27))
  {
    v46 = v6;
    v47 = v10;
    v48 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
    sub_24F9233D8();
    v28 = sub_24F34F43C();

    sub_24F9233D8();
    v29 = v57;
    swift_getKeyPath();
    v57 = v29;
    sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD88();

    v30 = *&v29[OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite];

    v57 = v28;
    sub_24EA0A6C0(v30);
    v31 = *(v57 + 2);

    if (v31 || (sub_24F9233D8(), v32 = v57, swift_getKeyPath(), v57 = v32, sub_24F91FD88(), , v33 = *&v32[OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite], , , v34 = *(v33 + 16), , v34))
    {
      v35 = v49;
      sub_24E9B17C4(v49);
      v36 = sub_24F9257F8();
      v37 = v52;
      v38 = v35 + *(v52 + 36);
      *v38 = v36;
      *(v38 + 8) = 0u;
      *(v38 + 24) = 0u;
      v38[40] = 1;
      v39 = v50;
      sub_24E6009C8(v35, v50, &qword_27F223D40, &qword_24F96F7C0);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v37 = v52;
      v39 = v50;
    }

    (*(v51 + 56))(v39, v40, 1, v37);
    sub_24E6009C8(v39, v13, &qword_27F223D48, &qword_24F96F7C8);
    v41 = 0;
    v10 = v47;
    a2 = v48;
    v6 = v46;
  }

  else
  {
    v41 = 1;
  }

  (*(v53 + 56))(v13, v41, 1, v6);
  v42 = v54;
  sub_24E60169C(v19, v54, &qword_27F223D58, &qword_24F96F7D8);
  sub_24E60169C(v13, v10, &qword_27F223D50, &qword_24F96F7D0);
  sub_24E60169C(v42, a2, &qword_27F223D58, &qword_24F96F7D8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D80, &qword_24F96F7F8);
  sub_24E60169C(v10, a2 + *(v43 + 48), &qword_27F223D50, &qword_24F96F7D0);
  sub_24E601704(v13, &qword_27F223D50, &qword_24F96F7D0);
  sub_24E601704(v19, &qword_27F223D58, &qword_24F96F7D8);
  sub_24E601704(v10, &qword_27F223D50, &qword_24F96F7D0);
  return sub_24E601704(v42, &qword_27F223D58, &qword_24F96F7D8);
}

uint64_t sub_24E9ADE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D78, &unk_24F96F7E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  *v12 = sub_24F924C88();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DD0, L"6\x1BŢ");
  sub_24E9AE048(a1, &v12[*(v13 + 44)]);
  v14 = sub_24F925818();
  sub_24F769764(v9);
  type metadata accessor for MultiplayerActivityReviewView(0);
  sub_24F769764(v6);
  sub_24EF46EA0(v9, v6);
  sub_24E601704(v6, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24E6009C8(v12, a2, &qword_27F223D78, &unk_24F96F7E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D60, &qword_24F96F7E0);
  v24 = a2 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_24E9AE048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v266 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3 - 8);
  v258 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v280 = &v225 - v6;
  v263 = type metadata accessor for PlayerPickerView(0);
  MEMORY[0x28223BE20](v263);
  v260 = &v225 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v8 - 8);
  v246 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v257 = &v225 - v11;
  v12 = type metadata accessor for GameActivityDraftGameInfo(0);
  v278 = *(v12 - 8);
  v279 = v12;
  MEMORY[0x28223BE20](v12);
  v259 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DD8, &qword_24F96F850);
  MEMORY[0x28223BE20](v254);
  v256 = &v225 - v14;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DE0, &qword_24F96F858);
  MEMORY[0x28223BE20](v255);
  v247 = &v225 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DE8, &qword_24F96F860);
  MEMORY[0x28223BE20](v16 - 8);
  v265 = &v225 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v264 = &v225 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DF0, &qword_24F96F868);
  v276 = *(v20 - 8);
  v277 = v20;
  MEMORY[0x28223BE20](v20);
  v240 = (&v225 - v21);
  v22 = sub_24F920418();
  v272 = *(v22 - 1);
  v273 = v22;
  MEMORY[0x28223BE20](v22);
  v241 = &v225 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v24 - 8);
  v270 = (&v225 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v26 - 8);
  v271 = &v225 - v27;
  v28 = sub_24F91F4A8();
  v274 = *(v28 - 8);
  v275 = v28;
  MEMORY[0x28223BE20](v28);
  v243 = &v225 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DF8, &qword_24F96F870);
  MEMORY[0x28223BE20](v30 - 8);
  v262 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v282 = &v225 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E00, &qword_24F96F878);
  v252 = *(v34 - 8);
  v253 = v34;
  MEMORY[0x28223BE20](v34);
  v238 = &v225 - v35;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08, &qword_24F96F880);
  MEMORY[0x28223BE20](v235);
  v237 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v236 = &v225 - v38;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E10, &qword_24F96F888);
  MEMORY[0x28223BE20](v228);
  v231 = &v225 - v39;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E18, &qword_24F96F890);
  MEMORY[0x28223BE20](v230);
  v232 = &v225 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E20, &qword_24F96F898);
  MEMORY[0x28223BE20](v41 - 8);
  v234 = &v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v229 = &v225 - v44;
  MEMORY[0x28223BE20](v45);
  v233 = &v225 - v46;
  v47 = type metadata accessor for ActivityDefinitionDetail(0);
  v249 = *(v47 - 8);
  v250 = v47;
  MEMORY[0x28223BE20](v47);
  v239 = &v225 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v49 - 8);
  v248 = &v225 - v50;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E28, &qword_24F96F8A0);
  MEMORY[0x28223BE20](v269);
  v251 = &v225 - v51;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E30, &qword_24F96F8A8);
  MEMORY[0x28223BE20](v267);
  v53 = &v225 - v52;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E38, &qword_24F96F8B0);
  MEMORY[0x28223BE20](v268);
  v55 = &v225 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = (&v225 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v59);
  v61 = (&v225 - v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E40, &qword_24F96F8B8);
  MEMORY[0x28223BE20](v62 - 8);
  v261 = &v225 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v66 = &v225 - v65;
  sub_24F769764(v61);
  v67 = type metadata accessor for MultiplayerActivityReviewView(0);
  v68 = a1;
  v242 = a1 + *(v67 + 20);
  sub_24F769764(v58);
  LOBYTE(a1) = sub_24EF46EA0(v61, v58);
  v245 = v58;
  sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
  v244 = v61;
  sub_24E601704(v61, &qword_27F215598, &qword_24F945EF0);
  v281 = v67;
  v283 = v66;
  if (a1)
  {
    v226 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
    v227 = v68;
    sub_24F9233D8();
    v69 = v295;
    swift_getKeyPath();
    *&v295 = v69;
    sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD88();

    v70 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
    swift_beginAccess();
    v71 = v69 + v70;
    v72 = v248;
    sub_24E60169C(v71, v248, &qword_27F2142A0, &unk_24F94CF90);

    if ((*(v249 + 48))(v72, 1, v250))
    {
      sub_24E601704(v72, &qword_27F2142A0, &unk_24F94CF90);
      v73 = 1;
    }

    else
    {
      v77 = v239;
      sub_24E9A23D8(v72, v239, type metadata accessor for ActivityDefinitionDetail);
      sub_24E601704(v72, &qword_27F2142A0, &unk_24F94CF90);
      v79 = *(v77 + 48);
      v78 = *(v77 + 56);

      sub_24E9A2440(v77, type metadata accessor for ActivityDefinitionDetail);
      v73 = 1;
      if (v78)
      {
        *&v295 = v79;
        *(&v295 + 1) = v78;
        sub_24E600AEC();
        v80 = sub_24F925E18();
        v82 = v81;
        v84 = v83;
        sub_24F9259D8();
        v249 = sub_24F925C98();
        v250 = v85;
        v87 = v86;
        v89 = v88;

        sub_24E600B40(v80, v82, v84 & 1);

        KeyPath = swift_getKeyPath();
        v91 = sub_24F9251C8();
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA0, &qword_24FA1D940);
        v93 = v231;
        v94 = &v231[*(v92 + 36)];
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
        v96 = *MEMORY[0x277CE13B8];
        v97 = sub_24F927748();
        (*(*(v97 - 8) + 104))(&v94[v95], v96, v97);
        *v94 = v91;
        *v93 = v249;
        *(v93 + 8) = v87;
        *(v93 + 16) = v89 & 1;
        *(v93 + 24) = v250;
        *(v93 + 32) = KeyPath;
        *(v93 + 40) = 0;
        LOBYTE(KeyPath) = sub_24F9257F8();
        v98 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA8, &qword_24F96F968) + 36);
        *v98 = KeyPath;
        *(v98 + 8) = 0u;
        *(v98 + 24) = 0u;
        *(v98 + 40) = 1;
        LOBYTE(KeyPath) = sub_24F925818();
        sub_24F923318();
        v99 = v93 + *(v228 + 36);
        *v99 = KeyPath;
        *(v99 + 8) = v100;
        *(v99 + 16) = v101;
        *(v99 + 24) = v102;
        *(v99 + 32) = v103;
        *(v99 + 40) = 0;
        sub_24F927628();
        sub_24F9242E8();
        v104 = v232;
        sub_24E6009C8(v93, v232, &qword_27F223E10, &qword_24F96F888);
        v105 = (v104 + *(v230 + 36));
        v106 = v300;
        v105[4] = v299;
        v105[5] = v106;
        v105[6] = v301;
        v107 = v296;
        *v105 = v295;
        v105[1] = v107;
        v108 = v298;
        v105[2] = v297;
        v105[3] = v108;
        v109 = v229;
        sub_24E6009C8(v104, v229, &qword_27F223E18, &qword_24F96F890);
        v110 = v233;
        sub_24E6009C8(v109, v233, &qword_27F223E20, &qword_24F96F898);
        v111 = v236;
        sub_24F9271E8();
        v112 = sub_24F9257F8();
        v113 = v234;
        v114 = v111 + *(v235 + 36);
        *v114 = v112;
        *(v114 + 8) = 0u;
        *(v114 + 24) = 0u;
        *(v114 + 40) = 1;
        sub_24E60169C(v110, v113, &qword_27F223E20, &qword_24F96F898);
        v115 = v237;
        sub_24E60169C(v111, v237, &qword_27F223E08, &qword_24F96F880);
        v116 = v238;
        sub_24E60169C(v113, v238, &qword_27F223E20, &qword_24F96F898);
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EB0, &unk_24F96F970);
        sub_24E60169C(v115, v116 + *(v117 + 48), &qword_27F223E08, &qword_24F96F880);
        sub_24E601704(v111, &qword_27F223E08, &qword_24F96F880);
        sub_24E601704(v110, &qword_27F223E20, &qword_24F96F898);
        sub_24E601704(v115, &qword_27F223E08, &qword_24F96F880);
        sub_24E601704(v113, &qword_27F223E20, &qword_24F96F898);
        v75 = v251;
        sub_24E6009C8(v116, v251, &qword_27F223E00, &qword_24F96F878);
        v73 = 0;
        v74 = v227;
        goto LABEL_8;
      }
    }

    v74 = v227;
    v75 = v251;
LABEL_8:
    (*(v252 + 56))(v75, v73, 1, v253);
    sub_24E60169C(v75, v226, &qword_27F223E28, &qword_24F96F8A0);
    swift_storeEnumTagMultiPayload();
    sub_24E9B5960();
    sub_24E9B5A14();
    sub_24F924E28();
    sub_24E601704(v75, &qword_27F223E28, &qword_24F96F8A0);
    v76 = v281;
    goto LABEL_9;
  }

  sub_24E9AC95C(v55);
  sub_24E60169C(v55, v53, &qword_27F223E38, &qword_24F96F8B0);
  swift_storeEnumTagMultiPayload();
  sub_24E9B5960();
  sub_24E9B5A14();
  sub_24F924E28();
  sub_24E601704(v55, &qword_27F223E38, &qword_24F96F8B0);
  v74 = v68;
  v76 = v67;
LABEL_9:
  v118 = v275;
  v119 = v271;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  sub_24F9233D8();
  v120 = *&v294[0];
  swift_getKeyPath();
  *&v294[0] = v120;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v121 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  v122 = v120 + v121;
  v123 = v270;
  sub_24E60169C(v122, v270, &qword_27F2142B8, &unk_24F954820);

  v125 = v272;
  v124 = v273;
  if ((*(v272 + 48))(v123, 1, v273))
  {
    sub_24E601704(v123, &qword_27F2142B8, &unk_24F954820);
    (*(v274 + 56))(v119, 1, 1, v118);
  }

  else
  {
    v126 = v241;
    (*(v125 + 16))(v241, v123, v124);
    sub_24E601704(v123, &qword_27F2142B8, &unk_24F954820);
    sub_24F9203F8();
    v76 = v281;
    (*(v125 + 8))(v126, v124);
    v127 = v274;
    if ((*(v274 + 48))(v119, 1, v118) != 1)
    {
      goto LABEL_21;
    }
  }

  sub_24E601704(v119, &qword_27F228530, &unk_24F93C6E0);
  (*(v276 + 56))(v282, 1, 1, v277);
  while (1)
  {
    v128 = v76;
    v129 = v74 + *(v76 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF8, &qword_24F96F158);
    sub_24F9233D8();
    v130 = sub_24F4A25AC();

    if (!v130)
    {
      break;
    }

    v131 = v74 + *(v76 + 60);
    v132 = *v131;
    v133 = *(v131 + 8);
    LOBYTE(v294[0]) = v132;
    *(&v294[0] + 1) = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if (v293[0])
    {
      break;
    }

    v181 = v247;
    sub_24E9A23D8(v74 + *(v128 + 40), v247, type metadata accessor for Player);
    v182 = v275;
    sub_24F9233D8();
    v183 = *&v294[0];
    swift_getKeyPath();
    *&v294[0] = v183;
    sub_24F91FD88();

    v184 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    v185 = type metadata accessor for GameActivityCustomizePlayersRowView(0);
    sub_24E60169C(v183 + v184, v181 + v185[5], &qword_27F212B28, &qword_24F939910);

    v119 = v182;
    sub_24F9233D8();
    v186 = sub_24F34F43C();

    sub_24F9233D8();
    v118 = v74;
    v187 = *&v294[0];
    swift_getKeyPath();
    *&v294[0] = v187;
    sub_24F91FD88();

    v188 = *(v187 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

    *&v294[0] = v186;
    sub_24EA0A6C0(v188);
    v280 = *&v294[0];
    v76 = v118;
    sub_24F9233D8();
    v189 = *&v294[0];
    swift_getKeyPath();
    *&v294[0] = v189;
    sub_24F91FD88();

    v190 = *(v189 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite);

    v191 = *(v190 + 16);
    if (!v191)
    {

      v127 = MEMORY[0x277D84F90];
LABEL_23:
      v207 = v247;
      sub_24F92A6F8();
      type metadata accessor for ChallengesPlayerPickerPageInfo(0);
      sub_24F928808();
      v208 = v118 + v281[17];
      v209 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
      sub_24E60169C(v208 + v209[6], v207 + v185[10], &qword_27F2169E8, &qword_24F943600);
      sub_24E60169C(v208 + v209[7], v207 + v185[11], &qword_27F2169E8, &qword_24F943600);
      v210 = v209[9];
      v211 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
      sub_24E60169C(v208 + v210 + *(v211 + 24), v207 + v185[12], &unk_27F212718, &unk_24F9391A0);
      *(v207 + v185[6]) = v280;
      *(v207 + v185[7]) = v127;
      *(v207 + v185[9]) = 0x4044000000000000;
      v212 = (v207 + v185[13]);
      *v212 = 0u;
      v212[1] = 0u;
      v213 = sub_24F9257F8();
      v214 = v256;
      v215 = v207 + *(v255 + 36);
      *v215 = v213;
      *(v215 + 8) = 0u;
      *(v215 + 24) = 0u;
      *(v215 + 40) = 1;
      sub_24E60169C(v207, v214, &qword_27F223DE0, &qword_24F96F858);
      swift_storeEnumTagMultiPayload();
      sub_24E9B5AD4();
      sub_24E9A2390(&qword_27F223E88, type metadata accessor for PlayerPickerView, &unk_24F9A51B4);
      v138 = v264;
      sub_24F924E28();
      sub_24E601704(v207, &qword_27F223DE0, &qword_24F96F858);
      goto LABEL_24;
    }

    v127 = sub_24EAE678C(*(v190 + 16), 0);
    v74 = sub_24EAEAC9C(v294, (v127 + 4), v191, v190);
    sub_24E6586B4(*&v294[0]);
    if (v74 == v191)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    v192 = v243;
    (v127[4])(v243, v119, v118);
    v193 = sub_24F9249A8();
    v194 = v240;
    *v240 = v193;
    *(v194 + 8) = 0;
    *(v194 + 16) = 1;
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E90, &qword_24F96F928);
    sub_24E9B02A0(v192, v74, v194 + *(v195 + 44));
    v196 = v127;
    v197 = sub_24F9257F8();
    v198 = v194 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E98, &qword_24F96F930) + 36);
    *v198 = v197;
    *(v198 + 8) = 0u;
    *(v198 + 24) = 0u;
    *(v198 + 40) = 1;
    v199 = sub_24F925818();
    sub_24F923318();
    v200 = v277;
    v201 = v194 + *(v277 + 36);
    *v201 = v199;
    *(v201 + 8) = v202;
    *(v201 + 16) = v203;
    *(v201 + 24) = v204;
    *(v201 + 32) = v205;
    *(v201 + 40) = 0;
    v206 = v282;
    sub_24E6009C8(v194, v282, &qword_27F223DF0, &qword_24F96F868);
    (*(v276 + 56))(v206, 0, 1, v200);
    (v196[1])(v243, v118);
  }

  sub_24F9233D8();
  v134 = *&v294[0];
  swift_getKeyPath();
  *&v294[0] = v134;
  sub_24F91FD88();

  v135 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  v136 = v257;
  sub_24E60169C(v134 + v135, v257, &qword_27F212B28, &qword_24F939910);

  if ((*(v278 + 48))(v136, 1, v279) == 1)
  {
    sub_24E601704(v136, &qword_27F212B28, &qword_24F939910);
    v137 = 1;
    v138 = v264;
    goto LABEL_25;
  }

  v139 = v136;
  v140 = v259;
  sub_24E9B3BB8(v139, v259, type metadata accessor for GameActivityDraftGameInfo);
  v141 = v281;
  v142 = v281[10];
  v270 = type metadata accessor for Player;
  sub_24E9A23D8(v74 + v142, v280, type metadata accessor for Player);
  v143 = *(v263 + 40);
  v269 = v129;
  v144 = v263;
  v273 = type metadata accessor for GameActivityDraftGameInfo;
  v274 = v143;
  v145 = v260;
  sub_24E9A23D8(v140, &v260[v143], type metadata accessor for GameActivityDraftGameInfo);
  v146 = v74;
  v147 = v74 + v141[17];
  v148 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  sub_24E60169C(v147 + *(v148 + 24), v294, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v294, v145 + v144[8]);
  sub_24E60169C(v147 + *(v148 + 28), v293, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v293, v145 + v144[9]);
  v149 = v146 + v141[11];
  v150 = *v149;
  v151 = *(v149 + 8);
  LOBYTE(v288) = v150;
  v289 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v276 = v291;
  v277 = v290;
  LODWORD(v275) = v292;
  v272 = *(v146 + v141[12]);
  v152 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  v271 = [v152 init];
  sub_24F9233D8();
  v153 = v290;
  v154 = v244;
  sub_24F769764(v244);
  v155 = v245;
  sub_24F769764(v245);
  LODWORD(v281) = sub_24EF46EA0(v154, v155);
  sub_24E601704(v155, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v154, &qword_27F215598, &qword_24F945EF0);
  v156 = v145 + v144[11];
  LOBYTE(v288) = 0;
  sub_24F926F28();
  v157 = v291;
  *v156 = v290;
  *(v156 + 8) = v157;
  v158 = v144;
  v159 = v145 + v144[14];
  *v159 = swift_getKeyPath();
  *(v159 + 8) = 0;
  *(v159 + 16) = 0;
  *(v159 + 24) = 0;
  *(v159 + 32) = 0;
  v160 = v280;
  v161 = v270;
  sub_24E9A23D8(v280, v145, v270);
  *(v145 + v158[5]) = v153;
  sub_24E9A23D8(v160, v258, v161);
  swift_getKeyPath();
  v290 = v153;
  sub_24E9A2390(&qword_27F255050, type metadata accessor for GameActivityPlayersDraft, &unk_24F9FE5A8);

  sub_24F91FD88();

  swift_beginAccess();

  v269 = sub_24F461F6C(v162);
  swift_getKeyPath();
  v288 = v153;
  sub_24F91FD88();

  swift_beginAccess();

  v268 = sub_24F461F6C(v163);
  swift_getKeyPath();
  v287 = v153;
  sub_24F91FD88();

  swift_beginAccess();
  v164 = *(v153 + 32);

  v165 = v246;
  sub_24E9A23D8(v145 + v274, v246, v273);
  (*(v278 + 56))(v165, 0, 1, v279);
  type metadata accessor for GameActivityPlayerPickerDataSource(0);
  v166 = swift_allocObject();
  v167 = MEMORY[0x277D84F90];
  v166[2] = MEMORY[0x277D84F90];
  v166[3] = v167;
  v166[4] = v167;
  v166[5] = v167;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__friendsThatPlayInfo) = MEMORY[0x277D84F98];
  v168 = (v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
  *v168 = 0;
  v168[1] = 0xE000000000000000;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__allPickerRows) = v167;
  v169 = v272;

  v170 = v271;
  sub_24F91FDB8();
  v171 = v258;
  sub_24E9A23D8(v258, v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_initiator, v161);
  v172 = sub_24F45D828(v167);
  sub_24E9A2440(v171, type metadata accessor for Player);
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_playerIDsToExclude) = v172;
  v173 = (v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_preselectedInfo);
  v174 = v268;
  *v173 = v269;
  v173[1] = v174;
  v173[2] = v164;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_objectGraph) = v169;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_contactStore) = v170;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_shouldIncludeContact) = 1;
  *(v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__hasAnyFriendSuggestions) = 1;
  sub_24E6009C8(v165, v166 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_gameInfo, &qword_27F212B28, &qword_24F939910);
  v175 = v263;
  v176 = v260;
  v177 = &v260[*(v263 + 24)];
  v284 = v166;
  sub_24F926F28();

  sub_24E9A2440(v280, type metadata accessor for Player);
  v178 = v286;
  *v177 = v285;
  *(v177 + 1) = v178;
  v179 = v176 + v175[12];
  v180 = v276;
  *v179 = v277;
  *(v179 + 8) = v180;
  *(v179 + 16) = v275;
  *(v176 + v175[7]) = v169;
  *(v176 + v175[13]) = v281 & 1;
  sub_24E9A23D8(v176, v256, type metadata accessor for PlayerPickerView);
  swift_storeEnumTagMultiPayload();
  sub_24E9B5AD4();
  sub_24E9A2390(&qword_27F223E88, type metadata accessor for PlayerPickerView, &unk_24F9A51B4);
  v138 = v264;
  sub_24F924E28();
  sub_24E9A2440(v176, type metadata accessor for PlayerPickerView);
  sub_24E9A2440(v259, type metadata accessor for GameActivityDraftGameInfo);
LABEL_24:
  v137 = 0;
LABEL_25:
  v216 = v283;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E68, &qword_24F96F8C0);
  (*(*(v217 - 8) + 56))(v138, v137, 1, v217);
  v218 = v261;
  sub_24E60169C(v216, v261, &qword_27F223E40, &qword_24F96F8B8);
  v219 = v282;
  v220 = v262;
  sub_24E60169C(v282, v262, &qword_27F223DF8, &qword_24F96F870);
  v221 = v265;
  sub_24E60169C(v138, v265, &qword_27F223DE8, &qword_24F96F860);
  v222 = v266;
  sub_24E60169C(v218, v266, &qword_27F223E40, &qword_24F96F8B8);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E70, &qword_24F96F8C8);
  sub_24E60169C(v220, v222 + *(v223 + 48), &qword_27F223DF8, &qword_24F96F870);
  sub_24E60169C(v221, v222 + *(v223 + 64), &qword_27F223DE8, &qword_24F96F860);
  sub_24E601704(v138, &qword_27F223DE8, &qword_24F96F860);
  sub_24E601704(v219, &qword_27F223DF8, &qword_24F96F870);
  sub_24E601704(v283, &qword_27F223E40, &qword_24F96F8B8);
  sub_24E601704(v221, &qword_27F223DE8, &qword_24F96F860);
  sub_24E601704(v220, &qword_27F223DF8, &qword_24F96F870);
  return sub_24E601704(v218, &qword_27F223E40, &qword_24F96F8B8);
}

uint64_t sub_24E9B02A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v82 = a1;
  v102 = a3;
  v3 = type metadata accessor for MultiplayerActivityReviewView(0);
  v96 = *(v3 - 8);
  v95 = *(v96 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923488();
  v6 = *(v5 - 8);
  v98 = v5;
  v99 = v6;
  MEMORY[0x28223BE20](v5);
  v88 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220ED8, &qword_24F992060);
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v74 - v10;
  v84 = sub_24F9241F8();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_24F91F4A8();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EC0, &qword_24F96F9B0);
  MEMORY[0x28223BE20](v79);
  v78 = &v74 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EC8, &qword_24F96F9B8);
  v92 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v80 = &v74 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223ED0, &qword_24F96F9C0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223ED8, &qword_24F96F9C8);
  MEMORY[0x28223BE20](v18 - 8);
  v103 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  *v22 = sub_24F924C98();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v81 = v22;
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EE0, &qword_24F96F9D0) + 44);
  v23._object = 0x800000024FA4C0E0;
  v23._countAndFlagsBits = 0xD000000000000030;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v104 = localizedString(_:comment:)(v23, v24);
  sub_24E600AEC();
  v25 = sub_24F925E18();
  v27 = v26;
  v29 = v28;
  sub_24F925988();
  v30 = sub_24F925C98();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24E600B40(v25, v27, v29 & 1);

  v104._countAndFlagsBits = v30;
  v104._object = v32;
  v34 &= 1u;
  LOBYTE(v105) = v34;
  v106 = v36;
  sub_24F9268B8();
  sub_24E600B40(v30, v32, v34);

  (*(v76 + 16))(v75, v82, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EE8, &qword_24F96F9D8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223EF0, &qword_24F96F9E0);
  v38 = sub_24E9B5C40();
  v104._countAndFlagsBits = v37;
  v104._object = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v78;
  sub_24F9277C8();
  v40 = v79;
  v41 = v39 + *(v79 + 36);
  v42 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v43 = type metadata accessor for GradientBackground(0);
  (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  *(v41 + 16) = xmmword_24F96F090;
  *(v41 + 32) = 0x4028000000000000;
  *(v41 + 40) = 257;
  v44 = v83;
  sub_24F9241E8();
  v45 = sub_24E9B5D3C();
  v46 = sub_24E9A2390(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v47 = v80;
  v48 = v40;
  v49 = v84;
  sub_24F926178();
  v50 = v49;
  (*(v85 + 8))(v44, v49);
  sub_24E601704(v39, &qword_27F223EC0, &qword_24F96F9B0);
  v51 = v88;
  sub_24F923478();
  v52 = v94;
  sub_24E9A23D8(v97, v94, type metadata accessor for MultiplayerActivityReviewView);
  v53 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v54 = swift_allocObject();
  sub_24E9B3BB8(v52, v54 + v53, type metadata accessor for MultiplayerActivityReviewView);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_24E9B5E24;
  *(v55 + 24) = v54;
  v56 = v93;
  v57 = v98;
  sub_24F927268();

  (*(v99 + 8))(v51, v57);
  sub_24F9235A8();
  v104._countAndFlagsBits = v48;
  v104._object = v50;
  v105 = v45;
  v106 = v46;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F220EE0, &qword_27F220ED8, &qword_24F992060, MEMORY[0x277CDF728]);
  v58 = v86;
  v59 = v56;
  v60 = v90;
  v61 = v100;
  sub_24F926658();
  (*(v101 + 8))(v59, v61);
  (*(v92 + 8))(v47, v60);
  v62 = v81;
  v63 = v103;
  sub_24E60169C(v81, v103, &qword_27F223ED8, &qword_24F96F9C8);
  v64 = v89;
  v65 = *(v89 + 16);
  v66 = v87;
  v67 = v91;
  v65(v87, v58, v91);
  v68 = v63;
  v69 = v102;
  sub_24E60169C(v68, v102, &qword_27F223ED8, &qword_24F96F9C8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F18, &qword_24F96FA20);
  v71 = v69 + *(v70 + 48);
  *v71 = 0;
  *(v71 + 8) = 1;
  v65((v69 + *(v70 + 64)), v66, v67);
  v72 = *(v64 + 8);
  v72(v58, v67);
  sub_24E601704(v62, &qword_27F223ED8, &qword_24F96F9C8);
  v72(v66, v67);
  return sub_24E601704(v103, &qword_27F223ED8, &qword_24F96F9C8);
}

uint64_t sub_24E9B0DB8@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = sub_24F9248C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8, &unk_24F946410);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EF0, &qword_24F96F9E0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11._countAndFlagsBits = 0xD00000000000002CLL;
  v11._object = 0x800000024FA4C120;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v22 = localizedString(_:comment:)(v11, v12);
  sub_24E600AEC();
  sub_24F926EB8();
  v13 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v15 = &v7[*(v5 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v7, &qword_27F2177F8, &unk_24F946410);
  v16 = &v10[*(v8 + 36)];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = sub_24F926E78();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  sub_24F9248B8();
  sub_24E9B5C40();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v10, &qword_27F223EF0, &qword_24F96F9E0);
}

uint64_t sub_24E9B10A0()
{
  v45 = sub_24F921B58();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = (v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_24F9284A8();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v41 - v10;
  v12 = sub_24F928AD8();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  MEMORY[0x28223BE20](v18);
  v53 = v41 - v19;
  v20 = v0 + *(type metadata accessor for MultiplayerActivityReviewView(0) + 68);
  v21 = *(type metadata accessor for MultiplayerActivityReviewBaseInfo(0) + 36);
  v22 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
  sub_24E60169C(v20 + v21 + *(v22 + 20), v11, &unk_27F212718, &unk_24F9391A0);
  v23 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  if ((*(*(v23 - 8) + 48))(v11, 1, v23) == 1)
  {
    v24 = &unk_27F212718;
    v25 = &unk_24F9391A0;
    v26 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
    v41[1] = v0;
    sub_24F9233D8();
    v27 = v55[0];
    swift_getKeyPath();
    v55[0] = v27;
    sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD88();

    v28 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v27 + v28, v8, &qword_27F212B28, &qword_24F939910);

    if ((*(v46 + 48))(v8, 1, v47))
    {
      sub_24E601704(v8, &qword_27F212B28, &qword_24F939910);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v31 = v42;
      sub_24E9A23D8(v8, v42, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v8, &qword_27F212B28, &qword_24F939910);
      v29 = *v31;
      v30 = v31[1];

      sub_24E9A2440(v31, type metadata accessor for GameActivityDraftGameInfo);
    }

    v32 = v50;
    sub_24EDA5FB8(v29, v30, v17);

    sub_24E9A2440(v11, type metadata accessor for PlayTogetherReviewMetricsInfo);
    v33 = v48;
    v34 = v49;
    v35 = v53;
    (*(v48 + 32))(v53, v17, v49);
    (*(v33 + 16))(v14, v35, v34);
    sub_24F928498();
    sub_24F7695C8(v55);
    if (v56)
    {
      v50 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v36 = v52;
      v54[3] = v52;
      v54[4] = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v38 = v51;
      (*(v51 + 16))(boxed_opaque_existential_1, v32, v36);
      v39 = v43;
      sub_24F76973C(v43);
      sub_24F9218A8();
      (*(v44 + 8))(v39, v45);
      (*(v38 + 8))(v32, v36);
      (*(v33 + 8))(v53, v34);
      __swift_destroy_boxed_opaque_existential_1(v54);
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v51 + 8))(v32, v52);
    (*(v33 + 8))(v35, v34);
    v24 = &unk_27F212740;
    v25 = &unk_24F940730;
    v26 = v55;
  }

  return sub_24E601704(v26, v24, v25);
}

double sub_24E9B17C4@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F924B38();
  v53 = *(v2 - 8);
  v3 = v53;
  MEMORY[0x28223BE20](v2);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D88, &qword_24F96F800);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = sub_24F9271D8();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277CE0118];
  v52 = *(v3 + 104);
  v52(v15, v16, v2, v13);
  v17 = sub_24F9232F8();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_24E9AA900(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D90, &qword_24F96F808);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255270, &qword_24F96F810);
  v19 = sub_24E9B581C();
  v56 = v18;
  v57 = v19;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v20 = sub_24F925198();
  LOBYTE(v7) = sub_24F925808();
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DA8, &unk_24F96F818) + 36)];
  *v21 = v20;
  v21[4] = v7;
  v22 = &v11[*(v9 + 44)];
  v23 = MEMORY[0x277CE1260];
  sub_24E9A23D8(v15, v22, MEMORY[0x277CE1260]);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)) = 256;
  v59 = v12;
  v60 = sub_24E9A2390(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v55 = v15;
  sub_24E9A23D8(v15, boxed_opaque_existential_1, v23);
  __swift_project_boxed_opaque_existential_1(v58, v59);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = (&v51 - v27);
  v29 = v54;
  v52(v54, *MEMORY[0x277CE0128], v2, v26);
  LOBYTE(v18) = sub_24F924B28();
  (*(v53 + 8))(v29, v2);
  *v28 = ((v18 & 1) == 0) | 0xC008000000000000;
  swift_getAssociatedConformanceWitness();
  v30 = sub_24F927348();
  v31 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(v58);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DB0, &qword_24F96F828);
  sub_24E60169C(v11, a1 + v32[9], &qword_27F223D88, &qword_24F96F800);
  *a1 = v30;
  a1[1] = v31;
  a1[2] = 0x4000000000000000;
  v33 = a1 + v32[10];

  *v33 = sub_24F923398() & 1;
  *(v33 + 1) = v34;
  v33[16] = v35 & 1;
  v36 = a1 + v32[11];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  v38 = sub_24F923398();
  v40 = v39;
  v42 = v41;
  v43 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DB8, &qword_24F96F830) + 36);
  *v43 = v37;
  v43[8] = v38 & 1;
  *(v43 + 2) = v40;
  v43[24] = v42 & 1;
  LOBYTE(v37) = sub_24F923398();
  v45 = v44;
  LOBYTE(v40) = v46;

  sub_24E601704(v11, &qword_27F223D88, &qword_24F96F800);
  v47 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DC0, &qword_24F96F838) + 36);
  *v47 = v37 & 1;
  *(v47 + 1) = v45;
  v47[16] = v40 & 1;
  v48 = sub_24F9257F8();
  sub_24E9A2440(v55, MEMORY[0x277CE1260]);
  v49 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DC8, &qword_24F96F840) + 36);
  *v49 = v48;
  result = 0.0;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 1;
  return result;
}

void *sub_24E9B1E34(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      return sub_24F926F48();
    }
  }

  return result;
}

uint64_t sub_24E9B1EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = sub_24F925838();
  v11 = sub_24F924058();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BC0, &qword_24F96F470);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BF8, &unk_24F96F490) + 36);
  *v13 = v11;
  *(v13 + 8) = v10;
  sub_24F769764(v9);
  type metadata accessor for MultiplayerActivityReviewView(0);
  sub_24F769764(v6);
  v14 = sub_24EF46EA0(v9, v6);
  sub_24E601704(v6, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223BC8, &qword_24F96F478);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_24E9B2090()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for ActivityDefinitionDetail(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  sub_24F9233D8();
  v7 = v25;
  swift_getKeyPath();
  v25 = v7;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v2, &qword_27F2142A0, &unk_24F94CF90);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F2142A0, &unk_24F94CF90);
    return 0;
  }

  sub_24E9B3BB8(v2, v6, type metadata accessor for ActivityDefinitionDetail);
  v9 = &v6[*(v3 + 40)];
  if (v9[8] == 1 || (v10 = &v6[*(v3 + 36)], v10[8] == 1))
  {
    sub_24E9A2440(v6, type metadata accessor for ActivityDefinitionDetail);
    return 0;
  }

  v12 = *v9;
  v13 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  if (v12 == v13)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 7173486;
    *(inited + 40) = 0xE300000000000000;
    v24 = v12;
    sub_24E9B5BEC();
    *(inited + 48) = sub_24F92C628();
    *(inited + 56) = v15;
    v16 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
    v17 = 0x800000024FA4C0B0;
    v18 = 0xD000000000000028;
  }

  else
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_24F93A400;
    *(v19 + 32) = 7235949;
    *(v19 + 40) = 0xE300000000000000;
    v24 = v12;
    sub_24E9B5BEC();
    *(v19 + 48) = sub_24F92C628();
    *(v19 + 56) = v20;
    *(v19 + 64) = 7889261;
    *(v19 + 72) = 0xE300000000000000;
    v24 = v13;
    *(v19 + 80) = sub_24F92C628();
    *(v19 + 88) = v21;
    v16 = sub_24E6086DC(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
    swift_arrayDestroy();
    v18 = 0xD00000000000002ELL;
    v17 = 0x800000024FA4C080;
  }

  countAndFlagsBits = localizedString(_:with:)(*&v18, v16)._countAndFlagsBits;

  sub_24E9A2440(v6, type metadata accessor for ActivityDefinitionDetail);
  return countAndFlagsBits;
}

uint64_t sub_24E9B24E8()
{
  v0 = sub_24F920418();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  type metadata accessor for MultiplayerActivityReviewView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
  sub_24F9233D8();
  v7 = v19;
  swift_getKeyPath();
  v19 = v7;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v6, &qword_27F2142B8, &unk_24F954820);

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_24E601704(v6, &qword_27F2142B8, &unk_24F954820);
    return 0;
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_24E601704(v6, &qword_27F2142B8, &unk_24F954820);
  v10 = sub_24F920408();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  if (!v12)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x646F437974726170;
  v14 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v15 = sub_24E6086DC(inited);
  swift_setDeallocating();
  sub_24E601704(v14, &qword_27F219F90, &qword_24F955020);
  v16._object = 0x800000024FA4C050;
  v16._countAndFlagsBits = 0xD000000000000024;
  countAndFlagsBits = localizedString(_:with:)(v16, v15)._countAndFlagsBits;

  return countAndFlagsBits;
}

__n128 sub_24E9B282C@<Q0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_24F925488();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F20, &qword_24F96FA90);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  sub_24F923798();
  sub_24F925478();
  sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
  sub_24E9A2390(&qword_27F223F28, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_24F926078();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v13 = sub_24F925808();
  v14 = &v12[*(v10 + 44)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  sub_24F927618();
  sub_24F9242E8();
  v15 = v21;
  sub_24E6009C8(v12, v21, &qword_27F223F20, &qword_24F96FA90);
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223F30, &unk_24F96FA98) + 36);
  v17 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v17;
  *(v16 + 96) = v28;
  v18 = v23;
  *v16 = v22;
  *(v16 + 16) = v18;
  result = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_24E9B2B4C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for GameActivityDraftGameInfo(0);
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = v1 + *(type metadata accessor for MultiplayerActivityReviewView(0) + 68);
  v15 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  sub_24E60169C(v14 + *(v15 + 36), v10, &unk_27F212718, &unk_24F9391A0);
  v16 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    sub_24E601704(v10, &unk_27F212718, &unk_24F9391A0);
    v17 = sub_24F928AD8();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v13, 1, 1, v17);
    sub_24F928A98();
    result = (*(v18 + 48))(v13, 1, v17);
    if (result != 1)
    {
      return sub_24E601704(v13, &qword_27F223CE8, &unk_24F983FE0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223AF0, &qword_24F96F150);
    sub_24F9233D8();
    v20 = v30;
    swift_getKeyPath();
    v30 = v20;
    sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
    sub_24F91FD88();

    v21 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v20 + v21, v7, &qword_27F212B28, &qword_24F939910);

    if ((*(v2 + 48))(v7, 1, v28))
    {
      sub_24E601704(v7, &qword_27F212B28, &qword_24F939910);
      v22 = 0;
      v23 = 0;
    }

    else
    {
      sub_24E9A23D8(v7, v4, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v7, &qword_27F212B28, &qword_24F939910);
      v22 = *v4;
      v23 = v4[1];

      sub_24E9A2440(v4, type metadata accessor for GameActivityDraftGameInfo);
    }

    v24 = v29;
    sub_24EDA5FB8(v22, v23, v13);

    sub_24E9A2440(v10, type metadata accessor for PlayTogetherReviewMetricsInfo);
    v25 = sub_24F928AD8();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v13, 0, 1, v25);
    return (*(v26 + 32))(v24, v13, v25);
  }

  return result;
}

uint64_t sub_24E9B3050@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v36 = sub_24F9248C8();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DA0, &qword_24FA1D780) - 8;
  MEMORY[0x28223BE20](v30);
  v3 = &v29 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255270, &qword_24F96F810);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - v4;
  v5._object = 0x800000024FA4BFE0;
  v5._countAndFlagsBits = 0xD000000000000027;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v5, v6);
  sub_24E600AEC();
  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  sub_24F9258D8();
  v12 = sub_24F925C98();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24E600B40(v7, v9, v11 & 1);

  v37._countAndFlagsBits = v12;
  v37._object = v14;
  LOBYTE(v38._countAndFlagsBits) = v16 & 1;
  v38._object = v18;
  sub_24F9268B8();
  sub_24E600B40(v12, v14, v16 & 1);

  v19 = sub_24F925808();
  v20 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390) + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  *&v3[*(v30 + 44)] = sub_24F926C88();
  sub_24F927618();
  sub_24F9242E8();
  v21 = v31;
  sub_24E6009C8(v3, v31, &qword_27F223DA0, &qword_24FA1D780);
  v22 = (v21 + *(v32 + 36));
  v23 = v21;
  v24 = v42;
  v22[4] = v41;
  v22[5] = v24;
  v22[6] = v43;
  v25 = v38;
  *v22 = v37;
  v22[1] = v25;
  v26 = v40;
  v22[2] = v39;
  v22[3] = v26;
  v27 = v33;
  sub_24F9248B8();
  sub_24E9B581C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v34 + 8))(v27, v36);
  return sub_24E601704(v23, &unk_27F255270, &qword_24F96F810);
}

unint64_t sub_24E9B33F8()
{
  result = qword_27F223B68;
  if (!qword_27F223B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B60, &qword_24F96F440);
    sub_24E9B3484();
    sub_24E669F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B68);
  }

  return result;
}

unint64_t sub_24E9B3484()
{
  result = qword_27F223B70;
  if (!qword_27F223B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B78, &qword_24F96F448);
    sub_24E9B3510();
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B70);
  }

  return result;
}

unint64_t sub_24E9B3510()
{
  result = qword_27F223B80;
  if (!qword_27F223B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B88, &qword_24F96F450);
    sub_24E9B3594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B80);
  }

  return result;
}

unint64_t sub_24E9B3594()
{
  result = qword_27F223B90;
  if (!qword_27F223B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B98, &qword_24F96F458);
    sub_24E9B36D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DE8, &qword_24FA07590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DC8, &unk_24F94D3F0);
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223B90);
  }

  return result;
}

unint64_t sub_24E9B36D4()
{
  result = qword_27F223BA0;
  if (!qword_27F223BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BA8, &qword_24F96F460);
    sub_24E9B37D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C10, &qword_24F96F4A0);
    sub_24E602068(&qword_27F223C18, &qword_27F223C10, &qword_24F96F4A0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223BA0);
  }

  return result;
}

unint64_t sub_24E9B37D8()
{
  result = qword_27F223BB0;
  if (!qword_27F223BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BB8, &qword_24F96F468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BC0, &qword_24F96F470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BC8, &qword_24F96F478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BD0, &qword_24F96F480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BD8, &qword_24F96F488);
    sub_24E602068(&qword_27F223BE0, &qword_27F223BD8, &qword_24F96F488, &unk_24F9AB368);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E6A4C1C();
    sub_24E9B39A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223BB0);
  }

  return result;
}

unint64_t sub_24E9B39A8()
{
  result = qword_27F223BE8;
  if (!qword_27F223BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BC8, &qword_24F96F478);
    sub_24E9B3A60();
    sub_24E602068(&qword_27F223C00, &qword_27F223C08, &unk_24FA1D690, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223BE8);
  }

  return result;
}

unint64_t sub_24E9B3A60()
{
  result = qword_27F223BF0;
  if (!qword_27F223BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BF8, &unk_24F96F490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BD0, &qword_24F96F480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223BD8, &qword_24F96F488);
    sub_24E602068(&qword_27F223BE0, &qword_27F223BD8, &qword_24F96F488, &unk_24F9AB368);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223BF0);
  }

  return result;
}

uint64_t sub_24E9B3BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9B3C20()
{
  type metadata accessor for MultiplayerActivityReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24E9A98D8();
}

unint64_t sub_24E9B3D04()
{
  result = qword_27F223C60;
  if (!qword_27F223C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C58, &qword_24F96F4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C68, &qword_24F96F500);
    sub_24E602068(&qword_27F223C70, &qword_27F223C68, &qword_24F96F500, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223C60);
  }

  return result;
}

uint64_t sub_24E9B3E24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F2142A0, &unk_24F94CF90);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F2142A0, &unk_24F94CF90);
}

uint64_t sub_24E9B3F98@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_24E9A2390(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v11 = *a3;
  swift_beginAccess();
  return sub_24E60169C(v10 + v11, a6, a4, a5);
}

uint64_t sub_24E9B407C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F2142B8, &unk_24F954820);
  return sub_24F34E2DC(v4);
}

unint64_t sub_24E9B4140()
{
  result = qword_27F223C88;
  if (!qword_27F223C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C80, &qword_24F96F560);
    sub_24E9B41CC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223C88);
  }

  return result;
}

unint64_t sub_24E9B41CC()
{
  result = qword_27F223C90;
  if (!qword_27F223C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C98, &qword_24F96F568);
    sub_24E602068(&qword_27F223CA0, &qword_27F223CA8, &unk_24F96F570, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223C90);
  }

  return result;
}

unint64_t sub_24E9B4284()
{
  result = qword_27F223CC8;
  if (!qword_27F223CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223CC0, &unk_24F96F590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2177A8, &unk_24F946390);
    sub_24E6AFAB0();
    swift_getOpaqueTypeConformance2();
    sub_24E9B434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223CC8);
  }

  return result;
}

unint64_t sub_24E9B434C()
{
  result = qword_27F223CD0;
  if (!qword_27F223CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223CD0);
  }

  return result;
}

uint64_t sub_24E9B4454(uint64_t a1)
{
  v2 = sub_24F926E78();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924468();
}

uint64_t sub_24E9B451C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9246F8();
  *a1 = result;
  return result;
}

unint64_t sub_24E9B45B0()
{
  result = qword_27F223D00;
  if (!qword_27F223D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223D00);
  }

  return result;
}

double sub_24E9B4620()
{
  v1 = *(type metadata accessor for MultiplayerActivityReviewView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E9A63E4(v2);
}

void sub_24E9B4680(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_24E9B4690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA4C150 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA4C170 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA4C190 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24E9B47B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4C1B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA4C1D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t objectdestroy_85Tm()
{
  v1 = type metadata accessor for MultiplayerActivityReviewView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = *(v3 + v1[8]);
  if (v12 >= 2)
  {
  }

  v13 = v3 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C20, &qword_24F96F4B0);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C28, &qword_24F96F4B8);

  v15 = v3 + v1[10];

  v16 = type metadata accessor for Player(0);
  v17 = v16[6];
  v18 = sub_24F9289E8();
  v64 = *(v18 - 8);
  v63 = *(v64 + 8);
  v63(v15 + v17, v18);

  if (*(v15 + v16[9] + 8) != 1)
  {
  }

  v19 = v15 + v16[13];
  v20 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v62 = v18;
    v21 = type metadata accessor for CallProviderConversationHandle(0);
    v22 = *(*(v21 - 8) + 48);
    if (!v22(v19, 1, v21))
    {

      v23 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v64 + 48))(v19 + v23, 1, v62))
      {
        v63(v19 + v23, v62);
      }
    }

    v24 = v19 + *(v20 + 20);
    v25 = v22(v24, 1, v21);
    v18 = v62;
    if (!v25)
    {

      v26 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v64 + 48))(v24 + v26, 1, v62))
      {
        v63(v24 + v26, v62);
      }
    }
  }

  if (*(v15 + v16[15] + 8))
  {
  }

  v27 = v15 + v16[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v27, 1, PlayedTogetherInfo))
  {

    v29 = type metadata accessor for Game(0);
    v63(v27 + v29[18], v18);
    v30 = v29[19];
    if (!(*(v64 + 48))(v27 + v30, 1, v18))
    {
      v63(v27 + v30, v18);
    }

    v31 = v18;

    v32 = v29[21];
    v33 = sub_24F920818();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v27 + v32, 1, v33))
    {
      (*(v34 + 8))(v27 + v32, v33);
    }

    v18 = v31;
  }

  v35 = v15 + v16[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v35, 1, ChallengeInfo))
  {

    v37 = type metadata accessor for Game(0);
    v63(v35 + v37[18], v18);
    v38 = v37[19];
    if (!(*(v64 + 48))(v35 + v38, 1, v18))
    {
      v63(v35 + v38, v18);
    }

    v39 = v37[21];
    v40 = sub_24F920818();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v35 + v39, 1, v40))
    {
      (*(v41 + 8))(v35 + v39, v40);
    }
  }

  v42 = v3 + v1[13];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C30, &qword_24F96F4C0);
  (*(*(v43 - 8) + 8))(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C38, &qword_24F96F4C8);

  v44 = v3 + v1[17];
  v45 = sub_24F92A708();
  (*(*(v45 - 8) + 8))(v44, v45);
  v46 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  v47 = v46[5];
  v48 = sub_24F928818();
  (*(*(v48 - 8) + 8))(v44 + v47, v48);
  __swift_destroy_boxed_opaque_existential_1((v44 + v46[6]));
  __swift_destroy_boxed_opaque_existential_1((v44 + v46[7]));
  if (*(v44 + v46[8] + 8))
  {
  }

  v49 = v44 + v46[9];
  v50 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v51 = *(*(v50 - 8) + 48);
  if (!v51(v49, 1, v50))
  {
    v52 = *(v50 + 20);
    v53 = sub_24F928698();
    (*(*(v53 - 8) + 8))(v49 + v52, v53);
  }

  v54 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
  v55 = v49 + *(v54 + 20);
  if (!v51(v55, 1, v50))
  {
    v56 = *(v50 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v49 + *(v54 + 24);
  if (!v51(v58, 1, v50))
  {
    v59 = *(v50 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  return swift_deallocObject();
}

uint64_t sub_24E9B561C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MultiplayerActivityReviewView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D38, &qword_24F96F7B8);
  return sub_24E9AD72C(v1 + v4, a1 + *(v5 + 44));
}

void *sub_24E9B56D4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for MultiplayerActivityReviewView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24E9B1E34(a1, a2, v6);
}

unint64_t sub_24E9B5764()
{
  result = qword_27F223D68;
  if (!qword_27F223D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223D60, &qword_24F96F7E0);
    sub_24E602068(&qword_27F223D70, &qword_27F223D78, &unk_24F96F7E8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223D68);
  }

  return result;
}

unint64_t sub_24E9B581C()
{
  result = qword_27F223D98;
  if (!qword_27F223D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255270, &qword_24F96F810);
    sub_24E9B58A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223D98);
  }

  return result;
}

unint64_t sub_24E9B58A8()
{
  result = qword_27F255280;
  if (!qword_27F255280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223DA0, &qword_24FA1D780);
    sub_24E6AFAB0();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255280);
  }

  return result;
}

unint64_t sub_24E9B5960()
{
  result = qword_27F223E48;
  if (!qword_27F223E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223E38, &qword_24F96F8B0);
    sub_24E9A2390(&qword_27F223E50, type metadata accessor for PlayTogetherReviewHeader, &unk_24F945F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223E48);
  }

  return result;
}

unint64_t sub_24E9B5A14()
{
  result = qword_27F223E58;
  if (!qword_27F223E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223E28, &qword_24F96F8A0);
    sub_24E602068(&qword_27F223E60, &qword_27F223E00, &qword_24F96F878, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223E58);
  }

  return result;
}

unint64_t sub_24E9B5AD4()
{
  result = qword_27F223E78;
  if (!qword_27F223E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223DE0, &qword_24F96F858);
    sub_24E9A2390(&qword_27F223E80, type metadata accessor for GameActivityCustomizePlayersRowView, &unk_24F961AD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223E78);
  }

  return result;
}

uint64_t sub_24E9B5B90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9246F8();
  *a1 = result;
  return result;
}

unint64_t sub_24E9B5BEC()
{
  result = qword_27F223EB8;
  if (!qword_27F223EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223EB8);
  }

  return result;
}

unint64_t sub_24E9B5C40()
{
  result = qword_27F223EF8;
  if (!qword_27F223EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223EF0, &qword_24F96F9E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2177F8, &unk_24F946410);
    sub_24E6AFC48();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223EF8);
  }

  return result;
}

unint64_t sub_24E9B5D3C()
{
  result = qword_27F223F00;
  if (!qword_27F223F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223EC0, &qword_24F96F9B0);
    sub_24E602068(&qword_27F223F08, &qword_27F223F10, &qword_24F96FA18, MEMORY[0x277CDF188]);
    sub_24E9A2390(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F00);
  }

  return result;
}

uint64_t sub_24E9B5E80()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for MultiplayerActivityReviewView(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + v1[6];
  if (*(v9 + 40))
  {
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  else
  {
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = *(v3 + v1[8]);
  if (v12 >= 2)
  {
  }

  v13 = v3 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C20, &qword_24F96F4B0);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C28, &qword_24F96F4B8);

  v15 = v3 + v1[10];

  v16 = type metadata accessor for Player(0);
  v17 = v16[6];
  v18 = sub_24F9289E8();
  v64 = *(v18 - 8);
  v63 = *(v64 + 8);
  v63(v15 + v17, v18);

  if (*(v15 + v16[9] + 8) != 1)
  {
  }

  v19 = v15 + v16[13];
  v20 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v62 = v18;
    v21 = type metadata accessor for CallProviderConversationHandle(0);
    v22 = *(*(v21 - 8) + 48);
    if (!v22(v19, 1, v21))
    {

      v23 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v64 + 48))(v19 + v23, 1, v62))
      {
        v63(v19 + v23, v62);
      }
    }

    v24 = v19 + *(v20 + 20);
    v25 = v22(v24, 1, v21);
    v18 = v62;
    if (!v25)
    {

      v26 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v64 + 48))(v24 + v26, 1, v62))
      {
        v63(v24 + v26, v62);
      }
    }
  }

  if (*(v15 + v16[15] + 8))
  {
  }

  v27 = v15 + v16[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v27, 1, PlayedTogetherInfo))
  {

    v29 = type metadata accessor for Game(0);
    v63(v27 + v29[18], v18);
    v30 = v29[19];
    if (!(*(v64 + 48))(v27 + v30, 1, v18))
    {
      v63(v27 + v30, v18);
    }

    v31 = v18;

    v32 = v29[21];
    v33 = sub_24F920818();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v27 + v32, 1, v33))
    {
      (*(v34 + 8))(v27 + v32, v33);
    }

    v18 = v31;
  }

  v35 = v15 + v16[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v35, 1, ChallengeInfo))
  {

    v37 = type metadata accessor for Game(0);
    v63(v35 + v37[18], v18);
    v38 = v37[19];
    if (!(*(v64 + 48))(v35 + v38, 1, v18))
    {
      v63(v35 + v38, v18);
    }

    v39 = v37[21];
    v40 = sub_24F920818();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v35 + v39, 1, v40))
    {
      (*(v41 + 8))(v35 + v39, v40);
    }
  }

  v42 = v3 + v1[13];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C30, &qword_24F96F4C0);
  (*(*(v43 - 8) + 8))(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223C38, &qword_24F96F4C8);

  v44 = v3 + v1[17];
  v45 = sub_24F92A708();
  (*(*(v45 - 8) + 8))(v44, v45);
  v46 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  v47 = v46[5];
  v48 = sub_24F928818();
  (*(*(v48 - 8) + 8))(v44 + v47, v48);
  __swift_destroy_boxed_opaque_existential_1((v44 + v46[6]));
  __swift_destroy_boxed_opaque_existential_1((v44 + v46[7]));
  if (*(v44 + v46[8] + 8))
  {
  }

  v49 = v44 + v46[9];
  v50 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v51 = *(*(v50 - 8) + 48);
  if (!v51(v49, 1, v50))
  {
    v52 = *(v50 + 20);
    v53 = sub_24F928698();
    (*(*(v53 - 8) + 8))(v49 + v52, v53);
  }

  v54 = type metadata accessor for MultiplayerActivityReviewBaseInfo.ActionMetrics(0);
  v55 = v49 + *(v54 + 20);
  if (!v51(v55, 1, v50))
  {
    v56 = *(v50 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v49 + *(v54 + 24);
  if (!v51(v58, 1, v50))
  {
    v59 = *(v50 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  return swift_deallocObject();
}

uint64_t sub_24E9B6AE8()
{
  type metadata accessor for MultiplayerActivityReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24E9A65C4();
}

id sub_24E9B6BF4(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_24E9B6C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B58, &unk_24F96F430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C40, &qword_24F96F4E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A68, &qword_24F935560);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223B60, &qword_24F96F440);
  sub_24E9B33F8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C48, &qword_24F96F4E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C50, &qword_24F96F4F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223C58, &qword_24F96F4F8);
  sub_24E9B3D04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E9B6E2C()
{
  result = qword_27F223F38;
  if (!qword_27F223F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F38);
  }

  return result;
}

unint64_t sub_24E9B6EAC()
{
  result = qword_27F223F58;
  if (!qword_27F223F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F50, &qword_24F96FC98);
    sub_24E9B6F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F58);
  }

  return result;
}

unint64_t sub_24E9B6F38()
{
  result = qword_27F223F60;
  if (!qword_27F223F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F68, &qword_24F96FCA0);
    sub_24E602068(&qword_27F223F70, &qword_27F223F78, &unk_24F96FCA8, MEMORY[0x277CE04B0]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F60);
  }

  return result;
}

unint64_t sub_24E9B701C()
{
  result = qword_27F223F80;
  if (!qword_27F223F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F48, &qword_24F96FC90);
    sub_24E602068(&qword_27F223F70, &qword_27F223F78, &unk_24F96FCA8, MEMORY[0x277CE04B0]);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F80);
  }

  return result;
}

unint64_t sub_24E9B7104()
{
  result = qword_27F223F88;
  if (!qword_27F223F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F90, &qword_24F96FCB8);
    sub_24E6A4C1C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223F50, &qword_24F96FC98);
    sub_24F9271D8();
    sub_24E9B6EAC();
    sub_24E9A2390(&qword_27F214E30, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
    swift_getOpaqueTypeConformance2();
    sub_24E9B701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223F88);
  }

  return result;
}

void (*TodayCardMediaInAppPurchase.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v48 = sub_24F928388();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v36 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v36 - v22;
  sub_24F929608();
  sub_24F928398();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_24F929548();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_24F928398();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for InAppPurchaseLockup(0);
  swift_allocObject();
  v28 = v42;
  v29 = InAppPurchaseLockup.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit27TodayCardMediaInAppPurchase_lockup) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
  }

  return v30;
}

uint64_t TodayCardMediaInAppPurchase.__allocating_init(lockup:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaInAppPurchase.init(lockup:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaInAppPurchase.init(lockup:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit27TodayCardMediaInAppPurchase_lockup) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a2, v18 - v11, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v25, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a2, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v25, &qword_27F235830, &qword_24F93B8C0);
  v16 = v23;
  *(v3 + 32) = v22;
  *(v3 + 48) = v16;
  *(v3 + 64) = v24;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 4;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaInAppPurchase.offerAdamIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27TodayCardMediaInAppPurchase_lockup);
  v3 = *(v2 + 24);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 40) = v3;

  return v1;
}

uint64_t TodayCardMediaInAppPurchase.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaInAppPurchase.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9B7C30()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27TodayCardMediaInAppPurchase_lockup);
  v4 = *(v3 + 24);
  *(v2 + 32) = *(v3 + 16);
  *(v2 + 40) = v4;

  return v2;
}

uint64_t type metadata accessor for TodayCardMediaInAppPurchase(uint64_t a1)
{
  result = qword_27F223F98;
  if (!qword_27F223F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PaginatedPagePresenterState.nextPage.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_24E9B7D88(v1, v5);
  if (v7)
  {
    sub_24E612B0C(v5, a1);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_24E9B7DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E9B7E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24E9B7E54(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

JSValue __swiftcall AppUpdateMetadata.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = result.super.isa;
  v21[1] = *v2;

  v14 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
  v15 = [v11 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  result.super.isa = [v11 valueWithBool:*(v2 + 8) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_24F92C328();
  updated = type metadata accessor for AppUpdateMetadata(0);
  sub_24E728A00(v2 + *(updated + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E728998(v6);
    v17 = in.super.isa;
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = in.super.isa;
    v18 = sub_24F92CDE8();
    (*(v8 + 8))(v10, v7);
  }

  v20 = [v11 valueWithObject:v18 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v20)
  {
    goto LABEL_13;
  }

  sub_24F92C328();
  result.super.isa = [v11 valueWithBool:*(v2 + *(updated + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();

    return v14;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppUpdateMetadata(uint64_t a1)
{
  result = qword_27F223FD8;
  if (!qword_27F223FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall AppUpdateLockupsIntent.makeValue(in:)(JSContext in)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  v4 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v11 = *(v7 + 16);
    if (v11)
    {
      v19 = MEMORY[0x277D84F90];
      v12 = result.super.isa;
      sub_24F92C978();
      v13 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v14 = *(v4 + 72);
      do
      {
        sub_24E9B8498(v13, v6);
        AppUpdateMetadata.makeValue(in:)(in);
        sub_24E9B84FC(v6);
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v13 += v14;
        --v11;
      }

      while (v11);
      v15 = v19;
    }

    else
    {
      v16 = result.super.isa;
      v15 = MEMORY[0x277D84F90];
    }

    v19 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8, &qword_24F99CEC0);
    v17 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v17)
    {

      sub_24F92C328();

      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E9B8498(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E9B84FC(uint64_t a1)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_24E9B8578()
{
  result = qword_27F223FB0;
  if (!qword_27F223FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223FB0);
  }

  return result;
}

unint64_t sub_24E9B85D0()
{
  result = qword_27F223FB8;
  if (!qword_27F223FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223FB8);
  }

  return result;
}

unint64_t sub_24E9B8628()
{
  result = qword_27F223FC0;
  if (!qword_27F223FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223FC8, &qword_24F96FE88);
    sub_24E9B86AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223FC0);
  }

  return result;
}

unint64_t sub_24E9B86AC()
{
  result = qword_27F223FD0;
  if (!qword_27F223FD0)
  {
    type metadata accessor for UpdatesLockup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F223FD0);
  }

  return result;
}

uint64_t sub_24E9B871C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24E9B87EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9B889C(uint64_t a1)
{
  sub_24E9B8928();
  if (v1 <= 0x3F)
  {
    sub_24E728940(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E9B8928()
{
  if (!qword_27F223FE8)
  {
    v0 = sub_24F92AEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F223FE8);
    }
  }
}

void __swiftcall NqmlConfiguration.init(font:)(GameStoreKit::NqmlConfiguration *__return_ptr retstr, UIFont font)
{
  retstr->newline._countAndFlagsBits = 10;
  retstr->newline._object = 0xE100000000000000;
  retstr->font = font;
  v3 = font.super.isa;
  retstr->paragraphStyle.super.isa = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  retstr->listItemBullet._countAndFlagsBits = 161644770;
  retstr->listItemBullet._object = 0xA400000000000000;
  retstr->listItemStyle.super.isa = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  retstr->orderedListItemStyle.super.isa = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  retstr->orderedListItemBulletFormat._countAndFlagsBits = 606245;
  retstr->orderedListItemBulletFormat._object = 0xE300000000000000;
}

uint64_t NqmlConfiguration.newline.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NqmlConfiguration.newline.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NqmlConfiguration.listItemBullet.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NqmlConfiguration.listItemBullet.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NqmlConfiguration.orderedListItemBulletFormat.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t NqmlConfiguration.orderedListItemBulletFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_24E9B8CF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24E9B8D40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24E9B8DA4(void *a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void *a4, uint64_t a5, __n128 a6)
{
  v36 = a3;
  v31 = a5;
  v32 = a1;
  v33 = a4;
  v6 = sub_24F92AC68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_24F91F4A8();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  sub_24F9298F8();
  v37 = MEMORY[0x25304F260]();
  if (v37)
  {
    sub_24F91F488();
    if ((*(v39 + 48))(v11, 1, v12) == 1)
    {
      sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
      v18 = sub_24F92A868();
      sub_24E979414();
      swift_allocError();
      sub_24F92A808();
      swift_willThrow();
    }

    else
    {
      v29 = v7;
      v30 = v6;
      v19 = v39;
      v36 = *(v39 + 32);
      v36(v17, v11, v12);
      (*(v19 + 16))(v14, v17, v12);
      sub_24E615E00(v31, v38);
      v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      v36((v18 + v20), v14, v12);
      v23 = v33;
      *(v18 + v21) = v33;
      sub_24E612C80(v38, v18 + v22);
      *(v18 + ((v22 + 47) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v24 = v32;
      v25 = v23;

      v27 = v34;
      v26 = v35;
      sub_24F92AC48();
      if (!v26)
      {
        v18 = sub_24F92AC58();

        (*(v29 + 8))(v27, v30);
        (*(v39 + 8))(v17, v12);
        return v18;
      }

      (*(v39 + 8))(v17, v12);
    }
  }

  else
  {
    v18 = sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v18;
}

id sub_24E9B923C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v38 = a6;
  v41 = a3;
  v42 = sub_24F9281B8();
  v10 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = v11;
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221538, qword_24F966790);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a5, v15, v17);
  result = [objc_opt_self() createBagForSubProfile];
  if (result)
  {
    v21 = result;
    v22 = objc_allocWithZone(MEMORY[0x277CEE440]);
    v23 = sub_24F91F3B8();
    v24 = [v22 initWithURL:v23 bag:v21];

    (*(v16 + 8))(v19, v15);
    [v24 setClientInfo_];
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    sub_24F928EC8();
    v25 = sub_24F92A788();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v14, 1, v25) == 1)
    {
      sub_24E601704(v14, &qword_27F221538, qword_24F966790);
      v27 = 0;
    }

    else
    {
      v27 = MEMORY[0x2530500F0]();
      (*(v26 + 8))(v14, v25);
    }

    [v24 setAccount_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224000, "R\b\x1B");
    v28 = [v24 perform];
    v37 = sub_24F92A9D8();
    v38 = v24;
    v35 = *(v10 + 16);
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v35(v40, v41, v42);
    v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v36 = swift_allocObject();
    v33 = *(v10 + 32);
    v33(v36 + v32, v29, v31);
    v35(v29, v30, v31);
    v34 = swift_allocObject();
    v33(v34 + v32, v29, v31);
    v44[3] = sub_24F9298F8();
    v44[4] = MEMORY[0x277D22078];
    v44[0] = v43;

    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E9B96E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 1;
  v1 = sub_24F9281A8();
}

void sub_24E9B98C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 0;
  v1 = sub_24F9281A8();
}

unint64_t sub_24E9B9C28()
{
  result = qword_27F21C8C8;
  if (!qword_27F21C8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21C8C8);
  }

  return result;
}

uint64_t sub_24E9B9C94()
{
  v1 = sub_24F91F4A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

id sub_24E9B9D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_24F91F4A8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24E9B923C(v10, a1, a2, a3, v3 + v8, *(v3 + v9), (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_24E9B9E24(__n128 a1)
{
  sub_24F9281B8();

  sub_24E9B96E0();
}

uint64_t objectdestroy_4Tm_1(__n128 a1)
{
  v2 = sub_24F9281B8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_24E9B9F1C(__n128 a1)
{
  sub_24F9281B8();

  sub_24E9B98C8();
}

uint64_t sub_24E9B9FA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24E9BA064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsMediaPreviewPageView(uint64_t a1)
{
  result = qword_27F224008;
  if (!qword_27F224008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9BA154(uint64_t a1)
{
  sub_24E9BA1F0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameDetailsMediaPreviewPageIntent(319);
    if (v2 <= 0x3F)
    {
      sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E9BA1F0(uint64_t a1)
{
  if (!qword_27F224018)
  {
    type metadata accessor for GameMediaPreviewPlatformOptionProvider(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F224018);
    }
  }
}

uint64_t sub_24E9BA264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for GameDetailsMediaPreviewPageView(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224020, &qword_24F970070);
  MEMORY[0x28223BE20](v6);
  v8 = (&v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224028, &qword_24F970078);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(v4 + 28);
  v36 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  v37 = sub_24E9BB5D0(&qword_27F21D340, type metadata accessor for GameDetailsMediaPreviewPageIntent, &unk_24F98C2DC);
  v14 = __swift_allocate_boxed_opaque_existential_1(&v33);
  sub_24E9BAF38(v2 + v13, v14, type metadata accessor for GameDetailsMediaPreviewPageIntent);
  v15 = *(v2 + *(v4 + 32));

  sub_24F57BC34(&v33, v15, 1, v8);
  v32 = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224030, &unk_24F970080);
  v17 = sub_24E9BADC4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224048, &qword_24F970090);
  v19 = sub_24E602068(&qword_27F224050, &qword_27F224048, &qword_24F970090, MEMORY[0x277CDDB60]);
  v33 = v18;
  v34 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F926A58();
  sub_24E9BAED0(v8);
  v21 = v27;
  sub_24E9BAF38(v2, v27, type metadata accessor for GameDetailsMediaPreviewPageView);
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = swift_allocObject();
  sub_24E9BB460(v21, v23 + v22);
  v33 = v6;
  v34 = v16;
  v35 = v17;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24E7C5DC4();
  v24 = v29;
  sub_24F925EF8();

  return (*(v30 + 8))(v12, v24);
}

uint64_t sub_24E9BA644(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224048, &qword_24F970090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924F98();
  v10 = a1;
  type metadata accessor for GameMediaPreviewPlatformAccessoryView(0);
  sub_24E9BB5D0(&qword_27F224060, type metadata accessor for GameMediaPreviewPlatformAccessoryView, &unk_24F993068);
  sub_24F9242A8();
  v7 = sub_24E602068(&qword_27F224050, &qword_27F224048, &qword_24F970090, MEMORY[0x277CDDB60]);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E9BA820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224058, &unk_24F9700A8);
  sub_24F926F38();
  v4 = a1 + *(type metadata accessor for GameDetailsMediaPreviewPageView(0) + 20);
  v5 = *&v4[*(type metadata accessor for GameDetailsMediaPreviewPageIntent(0) + 28)];
  type metadata accessor for GameMediaPreviewPlatformOptionProvider(0);
  sub_24E9BB5D0(&qword_27F224068, type metadata accessor for GameMediaPreviewPlatformOptionProvider, &unk_24F9AA3D8);

  sub_24F927378();
  result = type metadata accessor for GameMediaPreviewPlatformAccessoryView(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_24E9BA918(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = *(a2 + 1);

  return MEMORY[0x2822009F8](sub_24E9BAA6C, 0, 0);
}

uint64_t sub_24E9BAA6C()
{
  sub_24F92B7F8();
  *(v0 + 144) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E9BAB00, v2, v1);
}

uint64_t sub_24E9BAB00()
{
  v1 = v0[7];

  v2 = v1[1];
  v0[2] = *v1;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224058, &unk_24F9700A8);
  sub_24F926F38();
  v0[19] = v0[4];

  return MEMORY[0x2822009F8](sub_24E9BABA0, 0, 0);
}

uint64_t sub_24E9BABA0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v14 = *(v0 + 112);
  v3 = *(v0 + 96);
  v15 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v16 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = *(v0 + 128);
  *(v9 + 16) = v1;
  *(v9 + 24) = v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = v8;
  type metadata accessor for GSKShelf(0);
  (*(v6 + 104))(v4, *MEMORY[0x277D85778], v7);
  sub_24F92B928();

  (*(v3 + 16))(v15, v14, v5);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();

  (*(v3 + 8))(v14, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v11 - 8) + 56))(v16, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

unint64_t sub_24E9BADC4()
{
  result = qword_27F224038;
  if (!qword_27F224038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224020, &qword_24F970070);
    sub_24E602068(&qword_27F215758, &qword_27F215760, &unk_24F940B30, &unk_24FA0AFB0);
    sub_24E9BAE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224038);
  }

  return result;
}

unint64_t sub_24E9BAE7C()
{
  result = qword_27F224040;
  if (!qword_27F224040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224040);
  }

  return result;
}

uint64_t sub_24E9BAED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224020, &qword_24F970070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9BAF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9BAFA0()
{
  v1 = type metadata accessor for GameDetailsMediaPreviewPageView(0);
  v24 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v2 = v0 + v24 + *(v1 + 20);

  v3 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  v4 = *(v3 + 20);
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);

  v8 = v2 + *(v3 + 32);
  v9 = type metadata accessor for Page.Background(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v7(v8, v5);
          v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v14 = sub_24F922348();
          v15 = *(v14 - 8);
          if (!(*(v15 + 48))(v8 + v13, 1, v14))
          {
            (*(v15 + 8))(v8 + v13, v14);
          }
        }
      }

      else
      {
        v7(v8, v5);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!(*(v6 + 48))(v8, 1, v5))
      {
        v7(v8, v5);
      }

      v16 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v17 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
      {
        v18 = sub_24F91F4A8();
        (*(*(v18 - 8) + 8))(v16, v18);
        v7(v16 + v17[5], v5);
        v19 = v17[9];
        v20 = sub_24F928698();
        v21 = *(v20 - 8);
        v22 = *(v21 + 48);
        if (!v22(v16 + v19, 1, v20))
        {
          (*(v21 + 8))(v16 + v19, v20);
        }

        v23 = v17[10];
        if (!v22(v16 + v23, 1, v20))
        {
          (*(v21 + 8))(v16 + v23, v20);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v12 = sub_24F928388();
      (*(*(v12 - 8) + 8))(v8, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24E9BB460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9BB4C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *(type metadata accessor for GameDetailsMediaPreviewPageView(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24E9BA918(a1, a2, a3, v3 + v9);
}

uint64_t sub_24E9BB5D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9BB618()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224028, &qword_24F970078);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224020, &qword_24F970070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224030, &unk_24F970080);
  sub_24E9BADC4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224048, &qword_24F970090);
  sub_24E602068(&qword_27F224050, &qword_27F224048, &qword_24F970090, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24E7C5DC4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PrivacyHeaderSupplementaryItem.__allocating_init(id:bodyText:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {

    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();

    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v9 + 24) = v19;
  *(v9 + 40) = v13;
  *(v9 + 56) = v21;
  *(v9 + 16) = a2;
  return v9;
}

uint64_t PrivacyHeaderSupplementaryItem.init(id:bodyText:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {

    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();

    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v4 + 24) = v20;
  *(v4 + 40) = v14;
  *(v4 + 56) = v22;
  *(v4 + 16) = a2;
  return v4;
}

uint64_t sub_24E9BBAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830, &qword_24F93B8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrivacyHeaderSupplementaryItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24F928388();
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  type metadata accessor for LinkableText();
  v40 = a1;
  sub_24F928398();
  v16 = *(v7 + 16);
  v44 = a2;
  v16(v9, a2, v6);
  sub_24E9BC08C(&qword_27F21C360, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_24F929548();
  v17 = v43[0];
  if (v43[0])
  {
    v37 = v6;
    type metadata accessor for Action(0);
    v18 = v40;
    sub_24F928398();
    v36 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v44);
    v19 = *(v10 + 8);
    v20 = v15;
    v21 = v38;
    v19(v20, v38);
    sub_24F928398();
    v22 = sub_24F928348();
    if (v23)
    {
      v41 = v22;
      v42 = v23;
    }

    else
    {
      v27 = v33;
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v30 = v29;
      (*(v34 + 8))(v27, v35);
      v41 = v28;
      v42 = v30;
      v18 = v40;
    }

    sub_24F92C7F8();
    v19(v12, v21);
    v31 = v37;
    v24 = swift_allocObject();
    PrivacyHeaderSupplementaryItem.init(id:bodyText:action:)(v43, v17, v36);
    (*(v7 + 8))(v44, v31);
    v19(v18, v21);
  }

  else
  {
    v24 = sub_24F92AC38();
    sub_24E9BC08C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v25 = 0x7478655479646F62;
    v26 = v39;
    v25[1] = 0xE800000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v7 + 8))(v44, v6);
    (*(v10 + 8))(v40, v38);
  }

  return v24;
}