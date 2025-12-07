uint64_t CrisisResource.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CrisisResource.phoneNumber.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CrisisResource.smsNumber.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CrisisResource.website.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrisisResource(0) + 32);

  return sub_247DF5FEC(v3, a1);
}

uint64_t type metadata accessor for CrisisResource(uint64_t a1)
{
  result = qword_27EE7BC40;
  if (!qword_27EE7BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247DF5FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t CrisisResource.websearchQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrisisResource(0) + 36));

  return v1;
}

uint64_t CrisisResource.languageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrisisResource(0) + 40));

  return v1;
}

uint64_t CrisisResource.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrisisResource(0) + 44));

  return v1;
}

uint64_t CrisisResource.city.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrisisResource(0) + 48));

  return v1;
}

uint64_t sub_247DF61A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656372756F736572;
    v6 = 0x6D754E656E6F6870;
    if (a1 != 2)
    {
      v6 = 0x65626D754E736D73;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65676175676E616CLL;
    v2 = 0x437972746E756F63;
    if (a1 != 7)
    {
      v2 = 2037672291;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65746973626577;
    if (a1 != 4)
    {
      v3 = 0x6372616573626577;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_247DF62F4()
{
  v1 = *v0;
  sub_247DFAAC8();
  MEMORY[0x24C1BBB60](v1);
  return sub_247DFAAE8();
}

uint64_t sub_247DF6368(uint64_t a1)
{
  v2 = *v1;
  sub_247DFAAC8();
  MEMORY[0x24C1BBB60](v2);
  return sub_247DFAAE8();
}

uint64_t sub_247DF63B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_247DF7684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_247DF63F4(uint64_t a1)
{
  v2 = sub_247DF67B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DF6430(uint64_t a1)
{
  v2 = sub_247DF67B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrisisResource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC08, &qword_247DFAE10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DF67B4();
  sub_247DFAB08();
  v10[15] = *v3;
  v10[14] = 0;
  sub_247DF6808();
  sub_247DFAA58();
  if (!v2)
  {
    v10[13] = 1;
    sub_247DFAA28();
    v10[12] = 2;
    sub_247DFAA28();
    v10[11] = 3;
    sub_247DFAA28();
    type metadata accessor for CrisisResource(0);
    v10[10] = 4;
    sub_247DFA828();
    sub_247DF6F44(&qword_27EE7BC20, MEMORY[0x277CC9268]);
    sub_247DFAA38();
    v10[9] = 5;
    sub_247DFAA28();
    v10[8] = 6;
    sub_247DFAA48();
    v10[7] = 7;
    sub_247DFAA48();
    v10[6] = 8;
    sub_247DFAA28();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_247DF67B4()
{
  result = qword_27EE7BC10;
  if (!qword_27EE7BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC10);
  }

  return result;
}

unint64_t sub_247DF6808()
{
  result = qword_27EE7BC18;
  if (!qword_27EE7BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC18);
  }

  return result;
}

uint64_t CrisisResource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC28, &qword_247DFAE18);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for CrisisResource(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_247DF67B4();
  sub_247DFAAF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v14 = v34;
  v45 = 0;
  sub_247DF6EF0();
  sub_247DFAA18();
  *v12 = v46;
  v44 = 1;
  *(v12 + 1) = sub_247DFA9E8();
  *(v12 + 2) = v15;
  v43 = 2;
  *(v12 + 3) = sub_247DFA9E8();
  *(v12 + 4) = v16;
  v42 = 3;
  *(v12 + 5) = sub_247DFA9E8();
  *(v12 + 6) = v17;
  sub_247DFA828();
  v41 = 4;
  sub_247DF6F44(&qword_27EE7BC38, MEMORY[0x277CC9280]);
  sub_247DFA9F8();
  sub_247DF6F88(v6, &v12[v10[8]]);
  v40 = 5;
  v18 = sub_247DFA9E8();
  v19 = &v12[v10[9]];
  *v19 = v18;
  v19[1] = v20;
  v39 = 6;
  v21 = sub_247DFAA08();
  v22 = &v12[v10[10]];
  *v22 = v21;
  v22[1] = v23;
  v38 = 7;
  v24 = sub_247DFAA08();
  v25 = &v12[v10[11]];
  *v25 = v24;
  v25[1] = v26;
  v37 = 8;
  v27 = sub_247DFA9E8();
  v29 = v28;
  (*(v14 + 8))(v9, v35);
  v30 = &v12[v10[12]];
  *v30 = v27;
  v30[1] = v29;
  sub_247DF6FF8(v12, v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_247DF705C(v12);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_247DF6E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247DF6EF0()
{
  result = qword_27EE7BC30;
  if (!qword_27EE7BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC30);
  }

  return result;
}

uint64_t sub_247DF6F44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_247DFA828();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247DF6F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247DF6FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrisisResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247DF705C(uint64_t a1)
{
  v2 = type metadata accessor for CrisisResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247DF70FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_247DF71E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

void sub_247DF72AC(uint64_t a1)
{
  sub_247DF7360();
  if (v1 <= 0x3F)
  {
    sub_247DF73B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_247DF7360()
{
  if (!qword_27EE7BC50)
  {
    v0 = sub_247DFA998();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE7BC50);
    }
  }
}

void sub_247DF73B0(uint64_t a1)
{
  if (!qword_27EE7BC58)
  {
    sub_247DFA828();
    v1 = sub_247DFA998();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE7BC58);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrisisResource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CrisisResource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_247DF7580()
{
  result = qword_27EE7BC60;
  if (!qword_27EE7BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC60);
  }

  return result;
}

unint64_t sub_247DF75D8()
{
  result = qword_27EE7BC68;
  if (!qword_27EE7BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC68);
  }

  return result;
}

unint64_t sub_247DF7630()
{
  result = qword_27EE7BC70;
  if (!qword_27EE7BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC70);
  }

  return result;
}

uint64_t sub_247DF7684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xEC00000065707954;
  if (v4 || (sub_247DFAA78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_247DFAA78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_247DFAA78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65626D754E736D73 && a2 == 0xE900000000000072 || (sub_247DFAA78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_247DFAA78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6372616573626577 && a2 == 0xEE00797265755168 || (sub_247DFAA78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_247DFAA78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_247DFAA78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_247DFAA78();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *CrisisResourcesProvider.getCrisisResources(resourceType:isoCountryCode:locale:locality:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a5;
  v80 = a3;
  v72 = a2;
  v76 = sub_247DFA828();
  v71 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_247DFA898();
  v11 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_247DFA8B8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v79 = &v61[-v18];
  v77 = *a1;
  if (qword_27EE7BBF8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_27EE7BCB8);
  swift_beginAccess();
  v20 = *(v15 + 16);
  v66 = v15 + 16;
  v67 = v19;
  v65 = v20;
  v20(v79, v19, v14);
  v21 = *(v11 + 16);
  v73 = a4;
  v21(v13, a4, v78);

  v22 = sub_247DFA8A8();
  v23 = sub_247DFA968();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v70 = v10;
    v25 = v24;
    v63 = swift_slowAlloc();
    v82 = v63;
    *v25 = 136315906;
    v81 = v77;
    v26 = sub_247DFA8F8();
    v62 = v23;
    v28 = sub_247DF8EAC(v26, v27, &v82);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v69 = v15;
    v29 = v72;
    *(v25 + 14) = sub_247DF8EAC(v72, v80, &v82);
    *(v25 + 22) = 2080;
    sub_247DF9454(&qword_27EE7BC90, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
    v64 = v14;
    v30 = v78;
    v31 = sub_247DFAA68();
    v33 = v32;
    (*(v11 + 8))(v13, v30);
    v34 = sub_247DF8EAC(v31, v33, &v82);

    *(v25 + 24) = v34;
    *(v25 + 32) = 2080;
    v35 = v74;
    if (a6)
    {
      v36 = v74;
    }

    else
    {
      v36 = 0x3E6C696E3CLL;
    }

    if (a6)
    {
      v37 = a6;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_247DF8EAC(v36, v37, &v82);

    *(v25 + 34) = v38;
    v39 = v76;
    _os_log_impl(&dword_247DF5000, v22, v62, "Retrieving crisis resource with resourceType: %s, isoCountryCode: %s, locale: %s, locality: %s", v25, 0x2Au);
    v40 = v63;
    swift_arrayDestroy();
    MEMORY[0x24C1BBE10](v40, -1, -1);
    v41 = v25;
    v10 = v70;
    MEMORY[0x24C1BBE10](v41, -1, -1);

    v42 = v69;
    v43 = *(v69 + 8);
    v44 = v64;
    v43(v79, v64);
  }

  else
  {

    (*(v11 + 8))(v13, v78);
    v43 = *(v15 + 8);
    v43(v79, v14);
    v44 = v14;
    v42 = v15;
    v35 = v74;
    v39 = v76;
    v29 = v72;
  }

  LOBYTE(v82) = v77;
  v45 = v75;
  sub_247DF816C(&v82, v29, v80, v73, v35, a6, v10);
  if (!v45)
  {
    v46 = sub_247DFA838();
    v48 = v47;
    v69 = v42;
    v70 = v10;
    sub_247DFA7F8();
    swift_allocObject();
    sub_247DFA7E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC78, &qword_247DFB000);
    sub_247DF8D5C();
    sub_247DFA7D8();
    v80 = 0;

    v39 = v82;
    v50 = v68;
    v65(v68, v67, v44);

    v51 = sub_247DFA8A8();
    v52 = sub_247DFA968();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = v79;
      *v53 = 134218242;
      *(v53 + 4) = *(v39 + 16);

      *(v53 + 12) = 2080;
      v54 = type metadata accessor for CrisisResource(0);
      v55 = MEMORY[0x24C1BB9E0](v39, v54);
      v64 = v44;
      v57 = sub_247DF8EAC(v55, v56, &v82);

      *(v53 + 14) = v57;
      _os_log_impl(&dword_247DF5000, v51, v52, "Retrieved %ld resource(s): %s", v53, 0x16u);
      v58 = v79;
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x24C1BBE10](v58, -1, -1);
      MEMORY[0x24C1BBE10](v53, -1, -1);
      sub_247DF8E58(v46, v48);

      v59 = v68;
      v60 = v64;
    }

    else
    {
      sub_247DF8E58(v46, v48);

      v59 = v50;
      v60 = v44;
    }

    v43(v59, v60);
    (*(v71 + 8))(v70, v76);
  }

  return v39;
}

void sub_247DF816C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v90 = a6;
  v79 = a5;
  v94 = a4;
  v88 = a2;
  v89 = a3;
  v84 = a7;
  v8 = sub_247DFA898();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DFA8B8();
  v11 = *(v10 - 8);
  v92 = v10;
  v93 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v91 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v77 - v14;
  v15 = sub_247DFA808();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC00, &qword_247DFB080);
  MEMORY[0x28223BE20](v17 - 8);
  v80 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BCA0, &qword_247DFB088);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v77 - v20;
  v22 = sub_247DFA878();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_247DFA858();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v95 = [objc_opt_self() bundleForClass_];
  sub_247DFA888();
  sub_247DFA868();
  (*(v23 + 8))(v25, v22);
  if ((*(v27 + 6))(v21, 1, v26) == 1)
  {
    sub_247DF9628(v21);
    if (qword_27EE7BBF8 != -1)
    {
      swift_once();
    }

    v32 = v92;
    v33 = __swift_project_value_buffer(v92, qword_27EE7BCB8);
    swift_beginAccess();
    v34 = v93;
    v35 = v91;
    (*(v93 + 16))(v91, v33, v32);
    v37 = v85;
    v36 = v86;
    v38 = v87;
    (*(v86 + 16))(v85, v94, v87);
    v39 = sub_247DFA8A8();
    v40 = sub_247DFA978();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v96 = v42;
      *v41 = 136315138;
      sub_247DF9454(&qword_27EE7BC90, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v43 = sub_247DFAA68();
      v44 = v37;
      v45 = v34;
      v47 = v46;
      (*(v36 + 8))(v44, v38);
      v48 = sub_247DF8EAC(v43, v47, &v96);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_247DF5000, v39, v40, "No languageCode found in locale: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x24C1BBE10](v42, -1, -1);
      MEMORY[0x24C1BBE10](v41, -1, -1);

      (*(v45 + 8))(v91, v92);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      (*(v34 + 8))(v35, v32);
    }

    sub_247DF9690();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
  }

  else
  {
    v91 = v27;
    v49 = *(v27 + 4);
    v94 = v26;
    v49(v29, v21, v26);
    v98[0] = 0;
    v98[1] = 0xE000000000000000;
    sub_247DFA9B8();

    v50 = 0xED0000746C756173;
    strcpy(v98, "ResourceData/");
    HIWORD(v98[1]) = -4864;
    v51 = 0x73416C6175786553;
    v52 = 0xD000000000000010;
    v53 = 0x8000000247DFB3B0;
    if (v30 != 5)
    {
      v52 = 1296126787;
      v53 = 0xE400000000000000;
    }

    v54 = 0x8000000247DFB3D0;
    v55 = 0x65486C61746E654DLL;
    if (v30 == 3)
    {
      v55 = 0xD000000000000010;
    }

    else
    {
      v54 = 0xEC00000068746C61;
    }

    if (v30 <= 4)
    {
      v52 = v55;
      v53 = v54;
    }

    if (v30 != 1)
    {
      v51 = 0x6F436E6F73696F50;
      v50 = 0xED00006C6F72746ELL;
    }

    if (!v30)
    {
      v51 = 0xD000000000000011;
      v50 = 0x8000000247DFB3F0;
    }

    if (v30 <= 2)
    {
      v56 = v51;
    }

    else
    {
      v56 = v52;
    }

    if (v30 <= 2)
    {
      v57 = v50;
    }

    else
    {
      v57 = v53;
    }

    MEMORY[0x24C1BB9A0](v56, v57);

    MEMORY[0x24C1BB9A0](47, 0xE100000000000000);
    v87 = v29;
    v58 = sub_247DFA848();
    MEMORY[0x24C1BB9A0](v58);

    MEMORY[0x24C1BB9A0](47, 0xE100000000000000);
    MEMORY[0x24C1BB9A0](v88, v89);
    MEMORY[0x24C1BB9A0](47, 0xE100000000000000);
    v60 = v98[0];
    v59 = v98[1];
    v96 = v98[0];
    v97 = v98[1];
    v61 = v93;
    if (v90)
    {
      v98[0] = v79;
      v98[1] = v90;

      MEMORY[0x24C1BB9A0](47, 0xE100000000000000);
      MEMORY[0x24C1BB9A0](v98[0], v98[1]);

      v60 = v96;
      v59 = v97;
    }

    v62 = sub_247DFA8D8();
    v63 = sub_247DFA8D8();
    v64 = sub_247DFA8D8();
    v65 = [v95 pathForResource:v62 ofType:v63 inDirectory:v64];

    if (v65)
    {
      sub_247DFA8E8();

      v66 = sub_247DFA828();
      (*(*(v66 - 8) + 56))(v80, 1, 1, v66);
      (*(v82 + 104))(v81, *MEMORY[0x277CC91D8], v83);
      sub_247DFA818();

      (*(v91 + 1))(v87, v94);
    }

    else
    {
      if (qword_27EE7BBF8 != -1)
      {
        swift_once();
      }

      v68 = v92;
      v69 = __swift_project_value_buffer(v92, qword_27EE7BCB8);
      swift_beginAccess();
      v70 = v78;
      (*(v61 + 16))(v78, v69, v68);

      v71 = sub_247DFA8A8();
      v72 = sub_247DFA978();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v99 = v74;
        *v73 = 136315138;
        v75 = sub_247DF8EAC(v60, v59, &v99);

        *(v73 + 4) = v75;
        _os_log_impl(&dword_247DF5000, v71, v72, "Failed to resolve bundle resource path in directory: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x24C1BBE10](v74, -1, -1);
        MEMORY[0x24C1BBE10](v73, -1, -1);
      }

      else
      {
      }

      (*(v61 + 8))(v70, v68);
      sub_247DF9690();
      swift_allocError();
      *v76 = 2;
      swift_willThrow();

      (*(v91 + 1))(v87, v94);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_247DF8D5C()
{
  result = qword_27EE7BC80;
  if (!qword_27EE7BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7BC78, &qword_247DFB000);
    sub_247DF9454(&qword_27EE7BC88, type metadata accessor for CrisisResource, &protocol conformance descriptor for CrisisResource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BC80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247DF8E58(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_247DF8EAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247DF8F78(v11, 0, 0, 1, a1, a2);
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
    sub_247DF95C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_247DF8F78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247DF9084(a5, a6);
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
    result = sub_247DFA9C8();
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

void *sub_247DF9084(uint64_t a1, unint64_t a2)
{
  v3 = sub_247DF90D0(a1, a2);
  sub_247DF9200(&unk_2859EBC00);
  return v3;
}

void *sub_247DF90D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_247DF92EC(v5, 0);
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

  result = sub_247DFA9C8();
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
        v10 = sub_247DFA928();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247DF92EC(v10, 0);
        result = sub_247DFA9A8();
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

uint64_t sub_247DF9200(uint64_t result)
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

  result = sub_247DF9360(result, v11, 1, v3);
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

void *sub_247DF92EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC98, &qword_247DFB078);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247DF9360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BC98, &qword_247DFB078);
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

uint64_t sub_247DF9454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CrisisResourcesProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CrisisResourcesProvider(_WORD *result, int a2, int a3)
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

uint64_t sub_247DF95C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247DF9628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7BCA0, &qword_247DFB088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247DF9690()
{
  result = qword_27EE7BCA8;
  if (!qword_27EE7BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BCA8);
  }

  return result;
}

uint64_t sub_247DF96E4()
{
  sub_247DF9AA4();
  result = sub_247DFA988();
  qword_27EE7BCB0 = result;
  return result;
}

id static Log.crisisResources.getter()
{
  if (qword_27EE7BBF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE7BCB0;

  return v1;
}

uint64_t sub_247DF97B4()
{
  v0 = sub_247DFA8B8();
  __swift_allocate_value_buffer(v0, qword_27EE7BCB8);
  __swift_project_value_buffer(v0, qword_27EE7BCB8);
  if (qword_27EE7BBF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE7BCB0;
  return sub_247DFA8C8();
}

uint64_t static Logger.crisisResources.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE7BBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_247DFA8B8();
  v3 = __swift_project_value_buffer(v2, qword_27EE7BCB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.crisisResources.setter(uint64_t a1)
{
  if (qword_27EE7BBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_247DFA8B8();
  v3 = __swift_project_value_buffer(v2, qword_27EE7BCB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.crisisResources.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EE7BBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_247DFA8B8();
  __swift_project_value_buffer(v1, qword_27EE7BCB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_247DF9AA4()
{
  result = qword_27EE7BCD0;
  if (!qword_27EE7BCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE7BCD0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t CrisisResourceType.asDirectoryName.getter()
{
  v1 = *v0;
  v2 = 0x73416C6175786553;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 1296126787;
  }

  v4 = 0x65486C61746E654DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6F436E6F73696F50;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

CrisisResources::CrisisResourceType_optional __swiftcall CrisisResourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DFA9D8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CrisisResourceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x68206C61746E656DLL;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 1835103075;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  v5 = 0xD00000000000001CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_247DF9DAC()
{
  result = qword_27EE7BCD8;
  if (!qword_27EE7BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BCD8);
  }

  return result;
}

uint64_t sub_247DF9E00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000068746C6165;
  v3 = 0x68206C61746E656DLL;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1835103075;
  if (a1 == 5)
  {
    v6 = 0xD000000000000011;
    v5 = 0x8000000247DFB340;
  }

  v7 = 0x8000000247DFB310;
  if (a1 == 3)
  {
    v8 = 0xD000000000000019;
  }

  else
  {
    v8 = 0x68206C61746E656DLL;
  }

  if (a1 != 3)
  {
    v7 = 0xED000068746C6165;
  }

  if (a1 <= 4u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (a1 <= 4u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0x8000000247DFB2D0;
  v12 = 0xD00000000000001CLL;
  if (a1 != 1)
  {
    v12 = 0xD000000000000015;
    v11 = 0x8000000247DFB2F0;
  }

  if (!a1)
  {
    v12 = 0xD000000000000019;
    v11 = 0x8000000247DFB2B0;
  }

  if (a1 <= 2u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000247DFB2B0;
LABEL_36:
      if (v13 != 0xD000000000000019)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000247DFB2D0;
      if (v13 != 0xD00000000000001CLL)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v2 = 0x8000000247DFB2F0;
    v3 = 0xD000000000000015;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000247DFB340;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v13 != 1835103075)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_40;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000247DFB310;
      goto LABEL_36;
    }
  }

  if (v13 != v3)
  {
LABEL_43:
    v15 = sub_247DFAA78();
    goto LABEL_44;
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_247DF9FE0(uint64_t a1)
{
  sub_247DFA908();
}

uint64_t sub_247DFA10C(uint64_t a1, unsigned __int8 a2)
{
  sub_247DFAAC8();
  sub_247DFA908();

  return sub_247DFAAE8();
}

void sub_247DFA250(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000068746C6165;
  v4 = 0x68206C61746E656DLL;
  v5 = 0x8000000247DFB340;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 1835103075;
    v5 = 0xE400000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000019;
    v3 = 0x8000000247DFB310;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000019;
  v8 = 0x8000000247DFB2B0;
  v9 = 0x8000000247DFB2D0;
  v10 = 0xD00000000000001CLL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = 0x8000000247DFB2F0;
  }

  if (*v1)
  {
    v7 = v10;
    v8 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v8;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CrisisResourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrisisResourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247DFA544()
{
  result = qword_27EE7BCE0;
  if (!qword_27EE7BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BCE0);
  }

  return result;
}

uint64_t CrisisResourceError.hashValue.getter()
{
  v1 = *v0;
  sub_247DFAAC8();
  MEMORY[0x24C1BBB60](v1);
  return sub_247DFAAE8();
}

unint64_t sub_247DFA624()
{
  result = qword_27EE7BCE8;
  if (!qword_27EE7BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7BCE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrisisResourceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CrisisResourceError(uint64_t result, unsigned int a2, unsigned int a3)
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