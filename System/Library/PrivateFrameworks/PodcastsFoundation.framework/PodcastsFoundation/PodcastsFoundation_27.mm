uint64_t sub_1D8FC48B0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FC494C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FC49D4(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FC4A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FC5174(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8FC4A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D91C8A10;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D8FC4AF4()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

unint64_t sub_1D8FC4B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FC5174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FC4B70(uint64_t a1)
{
  v2 = sub_1D8FC5770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC4BAC(uint64_t a1)
{
  v2 = sub_1D8FC5770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ContentID.init(from:)(void *a1)
{
  result = sub_1D8FC51C0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t ContentID.encode(to:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v17 = a2;
  v15[1] = a3;
  v6 = sub_1D9176C2C();
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86F0, &qword_1D91A2550);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC5770();
  sub_1D9179F1C();
  if (a4)
  {
    if (a4 == 1)
    {
      v13 = [v17 URIRepresentation];
      sub_1D9176B9C();

      v20 = 2;
      sub_1D8EF24D0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB8]);
      sub_1D91799FC();
      (*(v16 + 8))(v8, v6);
    }

    else
    {
      v21 = 1;
      sub_1D91799BC();
    }
  }

  else
  {
    v18 = v17;
    v19 = 0;
    sub_1D8EF1720();
    sub_1D91799FC();
  }

  return (*(v10 + 8))(v12, v9);
}

void *sub_1D8FC4EAC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FC51C0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t ContentID.debugDescription.getter(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v12 = 0xD000000000000010;
      MEMORY[0x1DA7298F0](a1, a2);
      v9 = 10530;
      v10 = 0xE200000000000000;
      goto LABEL_7;
    }

    sub_1D917946C();

    v12 = 0xD00000000000001ALL;
    v4 = [a1 debugDescription];
    v5 = sub_1D917820C();
    v7 = v6;

    MEMORY[0x1DA7298F0](v5, v7);
  }

  else
  {
    v12 = 0xD000000000000011;
    sub_1D917946C();

    v8 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v8);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D15B0);
  }

  v9 = 41;
  v10 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1DA7298F0](v9, v10);
  return v12;
}

uint64_t _s18PodcastsFoundation9ContentIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        sub_1D8D6F530();
        return sub_1D917914C() & 1;
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {

      return sub_1D9179ACC();
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

unint64_t sub_1D8FC5174(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_1D8FC51C0(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1D9176C2C();
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8700, &qword_1D91A2830);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v33 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D8FC5770();
  v14 = v32;
  sub_1D9179EEC();
  if (v14)
  {
LABEL_3:
    v16 = v33;
    goto LABEL_4;
  }

  v15 = v9;
  v34 = 0;
  sub_1D8EF1774();
  sub_1D917989C();
  if (v36 != 1)
  {
    v13 = v35;
    v9[1](v11, v8);
    goto LABEL_11;
  }

  LOBYTE(v35) = 2;
  sub_1D8EF24D0(&qword_1ECAB2C98, MEMORY[0x1E6968FD0]);
  sub_1D917989C();
  v18 = v31;
  if ((*(v31 + 48))(v4, 1, v5) != 1)
  {
    (*(v18 + 32))(v7, v4, v5);
    v21 = sub_1D8D2A5E8();
    v32 = v11;
    v30 = v7;
    v22 = sub_1D9176B1C();
    v35 = 0;
    v13 = [v21 managedObjectIDForURI:v22 error:&v35];

    if (v13)
    {
      v23 = *(v31 + 8);
      v24 = v35;
      v23(v30, v5);
      v15[1](v32, v8);
      goto LABEL_11;
    }

    v13 = v35;
    sub_1D9176A6C();

    swift_willThrow();
    (*(v31 + 8))(v30, v5);
    v15[1](v32, v8);
    goto LABEL_3;
  }

  sub_1D8E677CC(v4);
  LOBYTE(v35) = 1;
  v19 = sub_1D917984C();
  if (v20)
  {
    v13 = v19;
    v9[1](v11, v8);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return v13;
  }

  v32 = v9;
  v25 = sub_1D917951C();
  swift_allocError();
  v26 = v11;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
  *v28 = &type metadata for ContentID;
  v31 = v8;
  v29 = v33;
  v13 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1D9179ECC();
  sub_1D91794FC();
  (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6B08], v25);
  swift_willThrow();
  (*(v32 + 1))(v26, v31);
  v16 = v29;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

unint64_t sub_1D8FC5770()
{
  result = qword_1EDCD5EF0;
  if (!qword_1EDCD5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EF0);
  }

  return result;
}

uint64_t sub_1D8FC57C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FC580C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D8FC586C()
{
  result = qword_1ECAB86F8;
  if (!qword_1ECAB86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86F8);
  }

  return result;
}

unint64_t sub_1D8FC58C4()
{
  result = qword_1EDCD5EE0;
  if (!qword_1EDCD5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EE0);
  }

  return result;
}

unint64_t sub_1D8FC591C()
{
  result = qword_1EDCD5EE8;
  if (!qword_1EDCD5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EE8);
  }

  return result;
}

uint64_t ContentID.asAdamID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t ContentKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x79726F6765746163;
  v2 = 2003789939;
  v3 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v4 = 0x65646F73697065;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FC5A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = *a2;
  v5 = 0xE400000000000000;
  v6 = 2003789939;
  v7 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v8 = 0x65646F73697065;
  }

  if (*a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x79726F6765746163;
  }

  if (*a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 2003789939)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v4 == 4)
      {
        v12 = 0x6F6974617473;
      }

      else
      {
        v12 = 0x776F6E6B6E75;
      }

      if (v9 != (v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000))
      {
        goto LABEL_34;
      }
    }
  }

  else if (*a2)
  {
    v11 = 0xE700000000000000;
    if (v4 == 1)
    {
      if (v9 != 0x6C656E6E616863)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x65646F73697065)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x79726F6765746163)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_1D9179ACC();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D8FC5BF4()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FC5CEC(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FC5DD0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FC5EC4@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::ContentKind_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation11ContentKindO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D8FC5EF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE400000000000000;
  v6 = 2003789939;
  v7 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v8 = 0x65646F73697065;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ContentKind.debugDescription.getter(unsigned __int8 a1)
{
  v1 = a1;
  strcpy(v11, "ContentKind.");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v2 = 0xE800000000000000;
  v3 = 0x79726F6765746163;
  v4 = 0xE400000000000000;
  v5 = 2003789939;
  v6 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v7 = 0x65646F73697065;
  }

  if (a1)
  {
    v3 = v7;
    v2 = 0xE700000000000000;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1DA7298F0](v8, v9);

  return v11[0];
}

unint64_t _s18PodcastsFoundation11ContentKindO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FC61D4()
{
  result = qword_1ECAB8708;
  if (!qword_1ECAB8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8708);
  }

  return result;
}

unint64_t sub_1D8FC622C()
{
  result = qword_1ECAB8710;
  if (!qword_1ECAB8710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8718, &qword_1D91A2930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8710);
  }

  return result;
}

unint64_t sub_1D8FC62A0()
{
  result = qword_1ECAB2AD0;
  if (!qword_1ECAB2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AD0);
  }

  return result;
}

uint64_t ContentReference.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x1DA72B390](1);
      return sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a3);
  }
}

uint64_t ContentReference.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D9179DBC();
  ContentReference.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC6518()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1D9179DBC();
  ContentReference.hash(into:)(v6, v4, v1, v2, v3);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC658C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *v1;
  sub_1D9179DBC();
  ContentReference.hash(into:)(v7, v5, v2, v3, v4);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC660C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64496D616461;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x64496D616461;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8FC66AC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FC6728(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FC6790(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8FC6808(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8FC6868(uint64_t *a1@<X8>)
{
  v2 = 0x646E696B24;
  if (*v1)
  {
    v2 = 0x64496D616461;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8FC68A0()
{
  if (*v0)
  {
    return 0x64496D616461;
  }

  else
  {
    return 0x646E696B24;
  }
}

void sub_1D8FC68D4(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D8FC6938(uint64_t a1)
{
  v2 = sub_1D8FC77D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC6974(uint64_t a1)
{
  v2 = sub_1D8FC77D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentReference.encode(to:)(void *a1, int a2, void *a3, uint64_t a4, int a5)
{
  v34 = a5;
  v28 = a4;
  v30 = a3;
  LODWORD(v31) = a2;
  v6 = sub_1D917953C();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8720, &unk_1D91A29C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC77D4();
  sub_1D9179F1C();
  v37 = v31;
  v36 = 0;
  sub_1D8FC7828();
  v13 = v32;
  sub_1D91799FC();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v15 = v30;
  v32 = v6;
  if (!v34)
  {
    v33 = v30;
    v35 = 1;
    sub_1D8EF1720();
    sub_1D91799FC();
    return (*(v10 + 8))(v12, v9);
  }

  v31 = v9;
  v16 = v10;
  if (v34 == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = v15;
    sub_1D9179EFC();
    sub_1D91794FC();
    v18 = sub_1D917954C();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
    *(v20 + 24) = &type metadata for ContentID;
    v22 = v28;
    *v20 = v15;
    *(v20 + 8) = v22;
    v23 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v24 = v28;

    sub_1D9179EFC();
    sub_1D91794FC();
    v18 = sub_1D917954C();
    swift_allocError();
    v20 = v25;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
    *(v20 + 24) = &type metadata for ContentID;
    *v20 = v15;
    *(v20 + 8) = v24;
    v23 = 2;
  }

  *(v20 + 16) = v23;
  v26 = v29;
  v27 = v32;
  (*(v29 + 16))(v20 + v21, v8, v32);
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B30], v18);
  swift_willThrow();
  (*(v26 + 8))(v8, v27);
  return (*(v16 + 8))(v12, v31);
}

uint64_t sub_1D8FC6E0C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FC75F4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

unint64_t ContentReference.debugDescription.getter(unsigned __int8 a1, void *a2, uint64_t a3, char a4)
{
  sub_1D917946C();

  v19 = 0xD000000000000017;
  v20 = 0x80000001D91D16B0;
  strcpy(v18, "ContentKind.");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  v10 = 0xE400000000000000;
  v11 = 2003789939;
  v12 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v11 = v12;
    v10 = 0xE700000000000000;
  }

  v13 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v13 = 0x65646F73697065;
  }

  if (a1)
  {
    v9 = v13;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 2u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  MEMORY[0x1DA7298F0](v14, v15);

  MEMORY[0x1DA7298F0](v18[0], v18[1]);

  MEMORY[0x1DA7298F0](0x203A6469202CLL, 0xE600000000000000);
  v16 = ContentID.debugDescription.getter(a2, a3, a4);
  MEMORY[0x1DA7298F0](v16);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v19;
}

uint64_t _s18PodcastsFoundation16ContentReferenceV2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = 0x79726F6765746163;
  v15 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v18 = 0xE400000000000000;
      v17 = 2003789939;
    }

    else
    {
      if (a1 == 4)
      {
        v17 = 0x6E6F6974617473;
      }

      else
      {
        v17 = 0x6E776F6E6B6E75;
      }

      v18 = 0xE700000000000000;
    }
  }

  else
  {
    v16 = 0x6C656E6E616863;
    if (a1 != 1)
    {
      v16 = 0x65646F73697065;
    }

    if (a1)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x79726F6765746163;
    }

    if (v15)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE800000000000000;
    }
  }

  v19 = 0xE800000000000000;
  v20 = 0xE400000000000000;
  v21 = 2003789939;
  v22 = 0x6E6F6974617473;
  if (a5 != 4)
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (a5 != 3)
  {
    v21 = v22;
    v20 = 0xE700000000000000;
  }

  v23 = 0x6C656E6E616863;
  if (a5 != 1)
  {
    v23 = 0x65646F73697065;
  }

  if (a5)
  {
    v14 = v23;
    v19 = 0xE700000000000000;
  }

  if (a5 <= 2u)
  {
    v24 = v14;
  }

  else
  {
    v24 = v21;
  }

  if (a5 <= 2u)
  {
    v25 = v19;
  }

  else
  {
    v25 = v20;
  }

  if (v17 == v24 && v18 == v25)
  {
  }

  else
  {
    v26 = sub_1D9179ACC();

    result = 0;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        sub_1D8D6F530();
        if (sub_1D917914C())
        {
          return 1;
        }
      }
    }

    else if (a8 == 2 && (a2 == a6 && a3 == a7 || (sub_1D9179ACC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a8 && a2 == a6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D8FC75F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8740, &qword_1D91A2CC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC77D4();
  sub_1D9179EEC();
  v9 = 0;
  sub_1D8FC7A8C();
  sub_1D91798FC();
  v6 = v10;
  v8[15] = 1;
  sub_1D8EF1774();
  sub_1D91798FC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_1D8FC77D4()
{
  result = qword_1ECAB2270;
  if (!qword_1ECAB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2270);
  }

  return result;
}

unint64_t sub_1D8FC7828()
{
  result = qword_1ECAB8728;
  if (!qword_1ECAB8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8728);
  }

  return result;
}

unint64_t sub_1D8FC7880()
{
  result = qword_1ECAB8730;
  if (!qword_1ECAB8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8730);
  }

  return result;
}

uint64_t sub_1D8FC78D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FC791C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D8FC7988()
{
  result = qword_1ECAB8738;
  if (!qword_1ECAB8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8738);
  }

  return result;
}

unint64_t sub_1D8FC79E0()
{
  result = qword_1ECAB2260;
  if (!qword_1ECAB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2260);
  }

  return result;
}

unint64_t sub_1D8FC7A38()
{
  result = qword_1ECAB2268;
  if (!qword_1ECAB2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2268);
  }

  return result;
}

unint64_t sub_1D8FC7A8C()
{
  result = qword_1ECAB2AC8;
  if (!qword_1ECAB2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AC8);
  }

  return result;
}

uint64_t DatabaseRepresentable.deviceURI.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  (*(a2 + 40))(a1, a2, v12);
  if (!v15)
  {
    return 0;
  }

  (*(a2 + 56))(a1, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1D8E677CC(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    sub_1D9176B3C();

    v17 = sub_1D9176ACC();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v14, v7);
    return v17;
  }
}

uint64_t LibraryEntity.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v6 = 0x2D6C656E6E616843;
      sub_1D8E40D20();
      v4 = sub_1D917927C();
      MEMORY[0x1DA7298F0](v4);

      return v6;
    }

    v3 = 0x2D776F6853;
  }

  else
  {
    v3 = 0x2D65646F73697045;
  }

  v6 = v3;
  MEMORY[0x1DA7298F0](a1, a2);
  return v6;
}

uint64_t LibraryEntity.typeName.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x65646F73697045;
  }

  if (a3 == 1)
  {
    return 2003789907;
  }

  return 0x6C656E6E616843;
}

uint64_t sub_1D8FC7EAC(uint64_t a1)
{
  v2 = sub_1D8FC8964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC7EE8(uint64_t a1)
{
  v2 = sub_1D8FC8964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC7F24()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F73697065;
  }
}

uint64_t sub_1D8FC7F78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FC8A60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FC7FA0(uint64_t a1)
{
  v2 = sub_1D8FC8910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC7FDC(uint64_t a1)
{
  v2 = sub_1D8FC8910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC8018(uint64_t a1)
{
  v2 = sub_1D8FC8A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC8054(uint64_t a1)
{
  v2 = sub_1D8FC8A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC8090(uint64_t a1)
{
  v2 = sub_1D8FC89B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC80CC(uint64_t a1)
{
  v2 = sub_1D8FC89B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryEntity.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v29 = a4;
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8748, &qword_1D91A2D30);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8750, &qword_1D91A2D38);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8758, &qword_1D91A2D40);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8760, &qword_1D91A2D48);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC8910();
  sub_1D9179F1C();
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_1D8FC89B8();
      sub_1D917993C();
      v17 = v22;
      sub_1D91799BC();
      v18 = v21;
    }

    else
    {
      v32 = 2;
      sub_1D8FC8964();
      v9 = v23;
      sub_1D917993C();
      v28 = v27;
      sub_1D8EF1720();
      v17 = v25;
      sub_1D91799FC();
      v18 = v24;
    }

    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v30 = 0;
    sub_1D8FC8A0C();
    sub_1D917993C();
    sub_1D91799BC();
    (*(v20 + 8))(v12, v10);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t LibraryEntity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](a2);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1DA72B390](v5);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t LibraryEntity.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](a1);
      return sub_1D9179E1C();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1DA72B390](v5);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void *LibraryEntity.init(from:)(void *a1)
{
  result = sub_1D8FC8B78(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1D8FC8660@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FC8B78(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D8FC86BC()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9179DBC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](v1);
      return sub_1D9179E1C();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA72B390](v3);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC8754(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](v2);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA72B390](v3);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FC87E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](v2);
      return sub_1D9179E1C();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA72B390](v4);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation13LibraryEntityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_1D9179ACC();
      }

      return 1;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_1D9179ACC();
      }

      return 1;
    }

    return 0;
  }

  return a6 == 2 && a1 == a4;
}

unint64_t sub_1D8FC8910()
{
  result = qword_1ECAB2740;
  if (!qword_1ECAB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2740);
  }

  return result;
}

unint64_t sub_1D8FC8964()
{
  result = qword_1ECAB8768;
  if (!qword_1ECAB8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8768);
  }

  return result;
}

unint64_t sub_1D8FC89B8()
{
  result = qword_1ECAB2728;
  if (!qword_1ECAB2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2728);
  }

  return result;
}

unint64_t sub_1D8FC8A0C()
{
  result = qword_1ECAB2700;
  if (!qword_1ECAB2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2700);
  }

  return result;
}

uint64_t sub_1D8FC8A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1D8FC8B78(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8798, &qword_1D91A3358);
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v32 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87A0, &qword_1D91A3360);
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87A8, &qword_1D91A3368);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87B0, &qword_1D91A3370);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = a1[3];
  v41 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D8FC8910();
  v14 = v40;
  sub_1D9179EEC();
  if (!v14)
  {
    v33 = 0;
    v15 = v39;
    v40 = v9;
    v16 = sub_1D917991C();
    v17 = (2 * *(v16 + 16)) | 1;
    v42 = v16;
    v43 = v16 + 32;
    v44 = 0;
    v45 = v17;
    v18 = sub_1D8E89BD4();
    v19 = v11;
    if (v18 == 3 || v44 != v45 >> 1)
    {
      v23 = sub_1D917951C();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
      *v25 = &type metadata for LibraryEntity;
      v13 = v19;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v40 + 8))(v19, v8);
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        LOBYTE(v46) = 1;
        sub_1D8FC89B8();
        v20 = v4;
        v13 = v11;
        v21 = v33;
        sub_1D917982C();
        v22 = v40;
        if (v21)
        {
          (*(v40 + 8))(v11, v8);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        v39 = v11;
        v30 = v34;
        v13 = sub_1D91798BC();
        (*(v37 + 8))(v20, v30);
        (*(v22 + 8))(v39, v8);
      }

      else
      {
        LOBYTE(v46) = 2;
        sub_1D8FC8964();
        v13 = v11;
        v28 = v33;
        sub_1D917982C();
        v29 = v40;
        if (!v28)
        {
          sub_1D8EF1774();
          v31 = v36;
          sub_1D91798FC();
          (*(v38 + 8))(v15, v31);
          (*(v29 + 8))(v19, v8);
          swift_unknownObjectRelease();
          v13 = v46;
          goto LABEL_10;
        }

        (*(v40 + 8))(v19, v8);
      }
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_1D8FC8A0C();
      v13 = v11;
      v27 = v33;
      sub_1D917982C();
      if (!v27)
      {
        v13 = sub_1D91798BC();
        (*(v35 + 8))(v7, v5);
      }

      (*(v40 + 8))(v11, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return v13;
}

unint64_t sub_1D8FC92A0()
{
  result = qword_1ECAB8770;
  if (!qword_1ECAB8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8770);
  }

  return result;
}

unint64_t sub_1D8FC9348()
{
  result = qword_1ECAB8778;
  if (!qword_1ECAB8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8778);
  }

  return result;
}

unint64_t sub_1D8FC93A0()
{
  result = qword_1ECAB8780;
  if (!qword_1ECAB8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8780);
  }

  return result;
}

unint64_t sub_1D8FC93F8()
{
  result = qword_1ECAB8788;
  if (!qword_1ECAB8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8788);
  }

  return result;
}

unint64_t sub_1D8FC9450()
{
  result = qword_1ECAB8790;
  if (!qword_1ECAB8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8790);
  }

  return result;
}

unint64_t sub_1D8FC94A8()
{
  result = qword_1ECAB26F0;
  if (!qword_1ECAB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26F0);
  }

  return result;
}

unint64_t sub_1D8FC9500()
{
  result = qword_1ECAB26F8;
  if (!qword_1ECAB26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26F8);
  }

  return result;
}

unint64_t sub_1D8FC9558()
{
  result = qword_1ECAB2718;
  if (!qword_1ECAB2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2718);
  }

  return result;
}

unint64_t sub_1D8FC95B0()
{
  result = qword_1ECAB2720;
  if (!qword_1ECAB2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2720);
  }

  return result;
}

unint64_t sub_1D8FC9608()
{
  result = qword_1ECAB2708;
  if (!qword_1ECAB2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2708);
  }

  return result;
}

unint64_t sub_1D8FC9660()
{
  result = qword_1ECAB2710;
  if (!qword_1ECAB2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2710);
  }

  return result;
}

unint64_t sub_1D8FC96B8()
{
  result = qword_1ECAB2730;
  if (!qword_1ECAB2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2730);
  }

  return result;
}

unint64_t sub_1D8FC9710()
{
  result = qword_1ECAB2738;
  if (!qword_1ECAB2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2738);
  }

  return result;
}

uint64_t MediaAPIRepresentable.catalogURI.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  (*(a2 + 56))(a1, a2, v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D8E677CC(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v18[1] = (*(a2 + 48))(a1, a2);
    sub_1D8E40D20();
    sub_1D917927C();
    sub_1D9176B3C();

    v16 = sub_1D9176ACC();
    v17 = *(v8 + 8);
    v17(v10, v7);
    v17(v14, v7);
    return v16;
  }
}

void MediaIdentifier.init(episodeID:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D8DA8564(a1, a2, 1);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v6 = -1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D9189080;
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;
      *a4 = v9;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v6 = 2;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9189080;
    *(v7 + 32) = a1;
    *a4 = v7;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v6 = 1;
  }

  *(a4 + 32) = v6;
}

void MediaIdentifier.init(showID:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D8DA8564(a1, a2, 1);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = -1;
    }

    else
    {
      *a4 = a1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 3;
    }
  }

  else
  {
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
  }
}

uint64_t MTEpisode.preferredContentID.getter()
{
  v1 = [v0 storeTrackId];
  if ((v1 & 0x8000000000000000) != 0 || (v1 ? (v2 = v1 == 1000000000000) : (v2 = 1), v2))
  {
    v3 = [v0 uuid];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D917820C();

      return v5;
    }

    else
    {
      if (qword_1ECAB0C38 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1ECAB0C40);
      v7 = v0;
      v8 = sub_1D917741C();
      v9 = sub_1D9178D0C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v7;
        v12 = v7;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Encountered an episode model without an identifier: %@", v10, 0xCu);
        sub_1D8E262AC(v11);
        MEMORY[0x1DA72CB90](v11, -1, -1);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    v13 = [v0 storeTrackId];
    return v13 & ~(v13 >> 63);
  }
}

double sub_1D8FC9DE0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v8 = sub_1D917820C();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1D8FCA928(v5, v8, v10, v11);

  return result;
}

id EpisodeLevelCalculator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EpisodeLevelCalculator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeLevelCalculator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EpisodeLevelCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeLevelCalculator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FC9F04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 predicateForAllEpisodesOnPodcastUuid_];

  v7 = [v4 predicateForVisuallyPlayed_];
  v8 = [v4 predicateForPlayedDateSetByListening];
  v9 = [v7 AND_];

  v10 = [v4 predicateForHasEpisodeNumber];
  v11 = [v6 AND_];
  v12 = [v11 AND_];

  v13 = @"MTEpisode";
  v14 = v12;
  v15 = [v4 sortDescriptorsForLastDatePlayedAscending_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v16 = sub_1D91785FC();

  sub_1D8F61018(v16);

  v17 = sub_1D91785DC();

  v18 = [a3 objectsInEntity:v13 predicate:v14 sortDescriptors:v17 returnsObjectsAsFaults:0 limit:1];

  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v19 = sub_1D91785FC();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1D917935C();
  if (!result)
  {
LABEL_10:

LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA72AA90](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id sub_1D8FCA200(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 predicateForAllEpisodesOnPodcastUuid_];

  v11 = [v8 predicateForHasEpisodeNumber];
  v12 = [v10 AND_];

  v13 = [v8 predicateForEpisodeType_];
  v14 = [v12 AND_];

  v15 = sub_1D8FC9F04(a2, a3, a4);
  v16 = v15;
  if (v15 && [v15 seasonNumber] >= 1 && objc_msgSend(v16, sel_episodeNumber) >= 1)
  {
    v17 = [v8 predicateForSeasonNumber_];
    v18 = [v14 AND_];

    v19 = v18;
    v20 = [v8 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
    v14 = [v19 AND_];
  }

  else
  {
    v21 = [a1 latestSeasonNumber];
    if (v21 < 1)
    {
      v19 = v16;
    }

    else
    {
      v22 = [v8 predicateForSeasonNumber_];
      v23 = [v14 AND_];

      v19 = v16;
      v14 = v23;
    }
  }

  return v14;
}

void sub_1D8FCA484(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1D9178A8C();
  v9 = [v6 predicateForEpisodeUuids_];

  v10 = [v9 NOT];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D918A530;
  v12 = sub_1D917820C();
  v14 = v13;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  *(v11 + 56) = v7;
  v15 = sub_1D8D34978();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = MEMORY[0x1E69E73D8];
  *(v11 + 96) = MEMORY[0x1E69E7360];
  *(v11 + 104) = v16;
  *(v11 + 64) = v15;
  *(v11 + 72) = 1000000;
  v17 = sub_1D9178C8C();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v19 = [v6 predicateForAllEpisodesOnPodcastUuid_];

  v35 = v10;
  v20 = [v19 AND_];

  v34 = v17;
  v36 = [v20 AND_];

  v21 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v21 setPredicate_];
  [v21 setReturnsObjectsAsFaults_];
  [v21 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v33 = v21;
  v37 = a5;
  v22 = sub_1D917908C();
  v32 = v22;
  if (v22 >> 62)
  {
    v23 = sub_1D917935C();
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
LABEL_16:

      [v37 saveInCurrentBlock];

      return;
    }
  }

  if (v23 < 1)
  {
    goto LABEL_20;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA72AA90](v24, v32);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      break;
    }

LABEL_6:
    ++v24;
    swift_unknownObjectRelease();
    if (v23 == v24)
    {
      goto LABEL_16;
    }
  }

  v27 = v26;
  v28 = objc_autoreleasePoolPush();
  v29 = sub_1D9179D9C();
  sub_1D917820C();
  v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v27 setValue:v29 forKey:{v30, v33}];

  if (!__OFADD__(v25++, 1))
  {
    if (__ROR8__(0x8F5C28F5C28F5C29 * v25 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v37 saveInCurrentBlock];
    }

    objc_autoreleasePoolPop(v28);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1D8FCA928(char a1, unint64_t a2, uint64_t a3, void *a4)
{
  LOBYTE(v7) = a1;
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a4 podcastForUuid_];

  if (v9)
  {
    v50 = v9;
    if ([v9 isSerialShowTypeInFeed] && (v7 & 1) != 0)
    {
      v10 = sub_1D8FCA200(v9, a2, a3, a4);
      v11 = objc_opt_self();
      v51 = v10;
      v12 = [v11 sortDescriptorsForEpisodeNumberAscending_];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v15 = [v13 predicateForAllEpisodesOnPodcastUuid_];

      v51 = v15;
      v12 = [v13 sortDescriptorsForCalculatingEpisodeLevel];
    }

    v16 = v12;
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v17 = sub_1D91785FC();

    v18 = @"MTEpisode";
    sub_1D8F61018(v17);

    v19 = sub_1D91785DC();

    v20 = [a4 objectsInEntity:v18 predicate:v51 sortDescriptors:v19 returnsObjectsAsFaults:0 limit:10];

    if (v20)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v21 = sub_1D91785FC();

      if (v21 >> 62)
      {
        goto LABEL_58;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFF8;

      sub_1D9179C4C();
      sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
      if (swift_dynamicCastMetatype() || (v42 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_10:
      }

      else
      {
        v43 = v22 + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v43 += 8;
          if (!--v42)
          {
            goto LABEL_10;
          }
        }

        v21 = v22 | 1;
      }

      while (1)
      {
        v23 = v21 >> 62 ? sub_1D917935C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v47 = a2;
        v48 = a3;
        v49 = a4;
        v24 = v21 & 0xC000000000000001;
        a3 = v21;
        v46 = v7;
        if (!v23)
        {
          break;
        }

        a2 = 0;
        v52 = v21 & 0xFFFFFFFFFFFFFF8;
        v25 = kEpisodeLevel;
        if (v7)
        {
          v25 = kEpisodeShowTypeSpecificLevel;
        }

        v7 = *v25;
        a4 = (v21 & 0xC000000000000001);
        while (1)
        {
          if (v24)
          {
            v26 = a3;
            v27 = MEMORY[0x1DA72AA90](a2, a3);
          }

          else
          {
            if (a2 >= *(v52 + 16))
            {
              goto LABEL_55;
            }

            v26 = a3;
            v27 = *(a3 + 8 * a2 + 32);
          }

          v28 = v27;
          a3 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v29 = sub_1D9179D9C();
          sub_1D917820C();
          v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          [v28 setValue:v29 forKey:v30];

          ++a2;
          v31 = a3 == v23;
          a3 = v26;
          v24 = a4;
          if (v31)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

        v45 = sub_1D91796FC();
        swift_bridgeObjectRelease_n();
        v21 = v45;
      }

      v52 = v21 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      if (v23)
      {
        v32 = 0;
        a2 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v32;
          while (1)
          {
            if (v24)
            {
              v33 = MEMORY[0x1DA72AA90](v7, a3);
              v32 = (&v7->isa + 1);
              if (__OFADD__(v7, 1))
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (v7 >= *(v52 + 16))
              {
                goto LABEL_57;
              }

              v33 = *(a3 + 8 * v7 + 32);
              v32 = (&v7->isa + 1);
              if (__OFADD__(v7, 1))
              {
                goto LABEL_56;
              }
            }

            v34 = v33;
            v35 = [v34 uuid];
            if (v35)
            {
              break;
            }

            v7 = (v7 + 1);
            if (v32 == v23)
            {
              goto LABEL_50;
            }
          }

          v36 = v35;
          v37 = sub_1D917820C();
          a4 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_1D8D4241C(0, *(a2 + 16) + 1, 1, a2);
          }

          v40 = *(a2 + 16);
          v39 = *(a2 + 24);
          if (v40 >= v39 >> 1)
          {
            a2 = sub_1D8D4241C((v39 > 1), v40 + 1, 1, a2);
          }

          *(a2 + 16) = v40 + 1;
          v41 = a2 + 16 * v40;
          *(v41 + 32) = v37;
          *(v41 + 40) = a4;
        }

        while (v32 != v23);
      }

      else
      {
        a2 = MEMORY[0x1E69E7CC0];
      }

LABEL_50:

      v44 = sub_1D8FC0F28(a2);

      sub_1D8FCA484(v46 & 1, v47, v48, v44, v49);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall MTEpisode.resolveAvailabilityDate()()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 pubDate];
  v8 = v7;
  sub_1D9176E2C();
  sub_1D9176CCC();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  [v1 firstTimeAvailableAsFree];
  v12 = v11;
  if ([v1 entitlementState] == 1)
  {
    [v1 firstTimeAvailableAsPaid];
    v14 = v13;
    v15 = &selRef_firstTimeAvailableAsFree;
    if (v12 <= 0.0)
    {
      v15 = &selRef_pubDate;
    }

    [v1 *v15];
    if (v8 < v10)
    {
      [v1 pubDate];
    }

    v17 = v16;
    if (v14 > 0.0)
    {
      v18 = v16;
      [v1 firstTimeAvailableAsPaid];
      v17 = v19;
      v16 = v18;
    }

    if (v16 >= v17)
    {
      v16 = v17;
    }
  }

  else
  {
    v20 = &selRef_firstTimeAvailableAsFree;
    if (v12 <= 0.0)
    {
      v20 = &selRef_firstTimeAvailableAsPaid;
    }

    [v1 *v20];
    if (v8 < v10)
    {
      [v1 pubDate];
    }
  }

  [v1 setFirstTimeAvailable_];
  [v1 firstTimeAvailable];
  if (v21 == 0.0)
  {
    [v1 pubDate];
    [v1 setFirstTimeAvailable_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsBookmarked()()
{
  if (([v0 isBookmarked] & 1) == 0)
  {
    sub_1D9176CDC();

    [v0 markAsBookmarkedOnTimestamp_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsBookmarked(onTimestamp:)(Swift::Double onTimestamp)
{
  [v1 setIsBookmarked_];
  [v1 lastBookmarkedDate];
  if (v3 < onTimestamp)
  {

    [v1 setLastBookmarkedDate_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsUnbookmarked()()
{
  if ([v0 isBookmarked])
  {

    [v0 setIsBookmarked_];
  }
}

uint64_t static MTEpisode.adamID(from:)(uint64_t a1)
{
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  else
  {
    return a1 & ~(a1 >> 63);
  }
}

uint64_t MTEpisode.allEpisodeStateIdentifiers.getter()
{
  v1 = v0;
  v2 = [v0 uuid];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 storeTrackId];
  v8 = [objc_opt_self() isEmpty_];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 & ~(v7 >> 63);
  }

  v10 = sub_1D9100928(v4, v6, v9, v8);

  return v10;
}

uint64_t Set<>.firstEpisodeUUID.getter(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  while (v4)
  {
    v5 = v1;
LABEL_10:
    v6 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v7 = *(result + 48) + 24 * (v6 | (v5 << 6));
    if (*(v7 + 16) == 1)
    {
      v8 = *v7;

      return v8;
    }
  }

  while (1)
  {
    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v5);
    ++v1;
    if (v4)
    {
      v1 = v5;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id MTEpisode.attributedDescriptionFromHTML.getter()
{
  result = [v0 itemDescriptionWithHTMLData];
  if (result)
  {
    v2 = result;
    v3 = sub_1D9176C8C();
    v5 = v4;

    sub_1D8CF2154(0, &qword_1ECAAFDD0, 0x1E696ACD0);
    sub_1D8CF2154(0, &qword_1ECAAFD60, 0x1E696AAB0);
    v6 = sub_1D9178D5C();
    sub_1D8D7567C(v3, v5);
    return v6;
  }

  return result;
}

void MTEpisode.attributedDescriptionFromHTML.setter(void *a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = objc_opt_self();
    v40[0] = 0;
    v4 = a1;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v40];
    v6 = v40[0];
    if (v5)
    {
      v7 = sub_1D9176C8C();
      v9 = v8;

      sub_1D8D752C4(v7, v9);
      v10 = [v1 itemDescriptionWithHTMLData];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D9176C8C();
        v14 = v13;

        if (v9 >> 60 == 15)
        {
          if (v14 >> 60 != 15)
          {
            goto LABEL_24;
          }

LABEL_19:

          sub_1D8D7567C(v7, v9);
          sub_1D8D75668(v7, v9);
          return;
        }

        if (v14 >> 60 != 15)
        {
          sub_1D8D752C4(v7, v9);
          sub_1D8DA04B0(v12, v14);
          v38 = sub_1D8FCC138(v7, v9, v12, v14);
          sub_1D8D75668(v12, v14);
          sub_1D8D7567C(v7, v9);
          sub_1D8D75668(v12, v14);
          sub_1D8D75668(v7, v9);
          if (v38)
          {

            sub_1D8D7567C(v7, v9);
LABEL_26:

            return;
          }

LABEL_25:
          v39 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
          [v1 setItemDescriptionWithHTMLData_];

          sub_1D8D7567C(v7, v9);
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >> 60 == 15)
        {
          goto LABEL_19;
        }

        v12 = 0;
        v14 = 0xF000000000000000;
      }

LABEL_24:
      sub_1D8D75668(v7, v9);
      sub_1D8D75668(v12, v14);
      goto LABEL_25;
    }

    v20 = v6;
    v21 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F88);
    v23 = v1;
    v24 = v21;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136446466;
      v29 = [v23 uuid];
      if (!v29)
      {
        v30 = [v23 objectID];
        v29 = [v30 description];
      }

      v31 = sub_1D917820C();
      v33 = v32;

      v34 = sub_1D8CFA924(v31, v33, v40);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2082;
      swift_getErrorValue();
      v35 = sub_1D9179D2C();
      v37 = sub_1D8CFA924(v35, v36, v40);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Failed to encode NSAttributedString from kEpisodeDescriptionWithHTMLData for %{public}s with error: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    [v23 setItemDescriptionWithHTMLData_];
  }

  else
  {
    v15 = [v1 itemDescriptionWithHTMLData];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D9176C8C();
      v19 = v18;

      sub_1D8D7567C(v17, v19);

      [v1 setItemDescriptionWithHTMLData_];
    }
  }
}

uint64_t sub_1D8FCBEF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D8FCC080(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D8D7567C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D90C9C94(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D8D7567C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D8FCC080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D917681C();
  v11 = result;
  if (result)
  {
    result = sub_1D917683C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D917682C();
  sub_1D90C9C94(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D8FCC138(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D8D752C4(a3, a4);
          return sub_1D8FCBEF0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL MTEpisode.bookmarksSyncType.getter()
{
  v1 = [v0 priceType];
  if (v1)
  {
    v2 = v1;
    sub_1D917820C();
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = MTEpisodePriceTypeFromPersistentString(v3);

  return (v4 - 2) < 3;
}

id static MTEpisode.predicateForPurgeableEpisodes(globalRetentionPolicy:evaluationDate:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918C190;
  *(v5 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v5 + 40) = sub_1D8FCD114(a1, a2);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v6 = sub_1D91785DC();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id static MTEpisode.predicateForDownloadedNonPurgeableEpisodes(globalRetentionPolicy:evaluationDate:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918C190;
  *(v5 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  v6 = sub_1D8FCD114(a1, a2);
  v7 = [v6 NOT];

  *(v5 + 40) = v7;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v8 = sub_1D91785DC();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v9;
}

id static MTEpisode.predicate<A>(forEpisodeStoreTrackIdStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D917843C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      v5 += 8;
      --v4;
    }

    while (v4);

    v6 = v11;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D8FC0EF8(v6);

  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98, MEMORY[0x1E69E81B8]);
  v8 = sub_1D9178A8C();

  v9 = [ObjCClassFromMetadata predicateForEpisodeStoreTrackIds_];

  return v9;
}

id static MTEpisode.predicateForEpisodesWhichShouldBeFeedDeleted(showUUID:forBootstrapGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [ObjCClassFromMetadata predicateForAllEpisodesOnPodcastUuid_];

  v6 = _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0();
  v7 = [v5 AND_];

  v8 = [ObjCClassFromMetadata predicateForFeedDeleted_];
  v9 = [v7 AND_];

  return v9;
}

id static MTEpisode.predicateForContinuePlayingShelf.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 predicateForPartiallyPlayed];
  *(v0 + 40) = [v1 predicateForPodcastIsNotHidden];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v2 = sub_1D91785DC();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v3;
}

id static MTEpisode.predicateForShowDetailEpisodes(showUUID:hidePlayedEpisodes:seasonToShow:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 predicateForAllEpisodesOnPodcastUuid_];

  v11 = v10;
  v12 = [v8 predicateForEpisodeTypeFilter_];
  v13 = [v11 AND_];

  if (a3)
  {
    v14 = [v8 predicateForVisuallyPlayed_];
    v15 = [v13 AND_];

    v13 = v15;
  }

  if (a5)
  {
    return v13;
  }

  v17 = [v8 predicateForSeasonNumber_];
  v18 = [v13 AND_];

  return v18;
}

void sub_1D8FCCB08(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v28 = 0;
    v27 = 1;
LABEL_66:
    *a2 = v28;
    *(a2 + 8) = v27 & 1;
    return;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v29 = a2;

    v9 = sub_1D8FF7E64();
    v27 = v30;

    a2 = v29;
LABEL_63:
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v9;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = a2;
      v7 = sub_1D917957C();
      a2 = v31;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (v7)
          {
            v16 = v7 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v9 = 0;
        if (v7)
        {
          while (1)
          {
            v22 = *v7 - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v33 = v4;
        v27 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v32[0] = *a1;
  v32[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v9 = 0;
        v24 = v32;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v9 = 0;
        v13 = v32 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v19 = v32 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
}

id static MTEpisode.predicateForAllEpisodes(forPodcast:)(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9189060;
    v10 = sub_1D917820C();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1D8D34978();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = sub_1D917820C();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    *(v9 + 136) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    *(v9 + 144) = sub_1D8CF3274(&qword_1ECAAFC70, qword_1EDCD0810, 0x1E696AD98, MEMORY[0x1E69E81C8]);
    *(v9 + 112) = v17;
    return sub_1D9178C8C();
  }

  if (a3 == 1)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D918A530;
    v5 = sub_1D917820C();
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1D8D34978();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    *(v4 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    *(v4 + 104) = sub_1D8CF3274(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630, MEMORY[0x1E69E81C8]);
    *(v4 + 72) = a1;
    v8 = a1;
    return sub_1D9178C8C();
  }

  v19 = objc_opt_self();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v21 = [v19 predicateForAllEpisodesOnPodcastUuid_];

  return v21;
}

id sub_1D8FCD114(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176FBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v46 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A48], v3, v12);
  sub_1D9176F9C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D8CF5EF8(v9);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F20);
    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Unable to move the date cursor 45 days back. Purgeability is undefined while this is true, so no episodes will be marked as purgeable", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v19 = [objc_opt_self() falsePredicate];

    return v19;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v46[1] = sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D9195F30;
    v22 = sub_1D917820C();
    v24 = v23;
    v25 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1D8D34978();
    v47 = a1;
    v27 = v26;
    *(v21 + 64) = v26;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v28 = sub_1D917820C();
    *(v21 + 96) = v25;
    *(v21 + 104) = v27;
    *(v21 + 72) = v28;
    *(v21 + 80) = v29;
    v30 = sub_1D917820C();
    *(v21 + 136) = v25;
    *(v21 + 144) = v27;
    *(v21 + 112) = v30;
    *(v21 + 120) = v31;
    v32 = sub_1D917820C();
    *(v21 + 176) = v25;
    *(v21 + 184) = v27;
    *(v21 + 152) = v32;
    *(v21 + 160) = v33;
    v34 = v14;
    v35 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    *(v21 + 216) = sub_1D8CF2154(0, &qword_1ECAAFC98, 0x1E695DF00);
    *(v21 + 224) = sub_1D8CF3274(&qword_1ECAAFC90, &qword_1ECAAFC98, 0x1E695DF00, MEMORY[0x1E69E81C8]);
    *(v21 + 192) = v35;
    v36 = sub_1D9178C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D91A34C0;
    *(v37 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE24predicateForStoreEpisodeSo11NSPredicateCyFZ_0();
    *(v37 + 40) = [swift_getObjCClassFromMetadata() predicateForAllUnbookmarkedEpisodes];
    *(v37 + 48) = sub_1D8FCDCF0(v47);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D918C190;
    *(v38 + 32) = [v36 NOT];
    EpisodeSo11NSPredicateCyFZ_0 = _sSo9MTEpisodeC18PodcastsFoundationE25predicateForUpNextEpisodeSo11NSPredicateCyFZ_0();
    v40 = [EpisodeSo11NSPredicateCyFZ_0 NOT];

    *(v38 + 40) = v40;
    v41 = sub_1D91785DC();

    v42 = objc_opt_self();
    v43 = [v42 orPredicateWithSubpredicates_];

    *(v37 + 56) = v43;
    v44 = sub_1D91785DC();

    v45 = [v42 andPredicateWithSubpredicates_];

    (*(v11 + 8))(v34, v10);
    return v45;
  }
}

uint64_t static MTEpisode.predicateForIsCurrentNewEpisode.getter()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = sub_1D917820C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D8D34978();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_1D9178C8C();
}

uint64_t sub_1D8FCD804(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B9C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

void *sub_1D8FCD898(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1D9179B0C();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D8FCD954@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1D9179B0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v5;
  return result;
}

id _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 predicateForDownloaded:1 excludeHidden:1];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918C190;
  *(v2 + 32) = [v1 predicateForDownloadBehavior_];
  *(v2 + 40) = [v1 predicateForDownloadBehavior_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v3 = sub_1D91785DC();

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  *(v0 + 40) = v5;
  v6 = sub_1D91785DC();

  v7 = [v4 andPredicateWithSubpredicates_];

  return v7;
}

id _sSo9MTEpisodeC18PodcastsFoundationE24predicateForStoreEpisodeSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = MEMORY[0x1E69E73D8];
  *(v0 + 136) = MEMORY[0x1E69E7360];
  *(v0 + 144) = v8;
  *(v0 + 112) = 1000000000000;
  v9 = sub_1D9178C8C();
  v10 = [objc_opt_self() notPredicateWithSubpredicate_];

  return v10;
}

id sub_1D8FCDCF0(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9195F30;
  v2 = sub_1D917820C();
  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v1 + 64) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v7 = sub_1D917820C();
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  v9 = MEMORY[0x1E69E7360];
  v10 = MEMORY[0x1E69E73D8];
  *(v1 + 136) = MEMORY[0x1E69E7360];
  *(v1 + 144) = v10;
  *(v1 + 112) = 0x100000001;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = a1;
  *(v1 + 216) = v9;
  *(v1 + 224) = v10;
  *(v1 + 192) = 0;
  v11 = sub_1D9178C8C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189060;
  v13 = sub_1D917820C();
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = sub_1D917820C();
  *(v12 + 96) = v5;
  *(v12 + 104) = v6;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  *(v12 + 136) = v9;
  *(v12 + 144) = v10;
  *(v12 + 112) = 0;
  v17 = sub_1D9178C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D918C190;
  *(v18 + 32) = v11;
  *(v18 + 40) = v17;
  v19 = v11;
  v20 = v17;
  v21 = sub_1D91785DC();

  v22 = objc_opt_self();
  v23 = [v22 orPredicateWithSubpredicates_];

  v24 = [v22 notPredicateWithSubpredicate_];
  return v24;
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE25predicateForUpNextEpisodeSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = sub_1D917820C();
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  return sub_1D9178C8C();
}

id _sSo9MTEpisodeC18PodcastsFoundationE35predicateForCurrentNewEpisodesShelfSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  *(v0 + 32) = [objc_opt_self() predicateForPodcastIsSubscribed_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = sub_1D917820C();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D8D34978();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v0 + 40) = sub_1D9178C8C();
  v5 = sub_1D91785DC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = sub_1D9176E6C();
  *(v0 + 136) = sub_1D8CF2154(0, &qword_1EDCD0928, 0x1E696AFB0);
  *(v0 + 144) = sub_1D8CF3274(&qword_1EDCD0920, &qword_1EDCD0928, 0x1E696AFB0, MEMORY[0x1E69E81C8]);
  *(v0 + 112) = v8;
  return sub_1D9178C8C();
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE23predicateForAllEpisodes10forPodcastSo11NSPredicateCSo9MTPodcastC_tFZ_0(void *a1)
{
  v1 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  v3 = sub_1D917820C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v2 + 104) = sub_1D8CF3274(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630, MEMORY[0x1E69E81C8]);
  *(v2 + 72) = v1;
  v6 = v1;
  v7 = sub_1D9178C8C();

  return v7;
}

uint64_t static MTEpisode.sortDescriptorsForUngroupedStation(orderedBy:)(int a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 <= 2)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D9189070;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v21 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v21);

      v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v24 = [v22 initWithKey:v23 ascending:0];

      result = v20;
      *(v20 + 32) = v24;
      return result;
    }

    if (a1 != 1)
    {
      return result;
    }

    v11 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
LABEL_10:
    v12 = v11;
    sub_1D8D28BC8();
    v13 = sub_1D91785FC();

    return v13;
  }

  switch(a1)
  {
    case 3:
      v11 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
      goto LABEL_10;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D918C190;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v14 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v14);

      v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v17 = [v15 initWithKey:v16 ascending:1];

      *(v3 + 32) = v17;
      sub_1D917820C();
      v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v10 = [v18 initWithKey:v9 ascending:1];
      break;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D918C190;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v4 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v4);

      v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = [v5 initWithKey:v6 ascending:0];

      *(v3 + 32) = v7;
      sub_1D917820C();
      v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v10 = [v8 initWithKey:v9 ascending:0];
      break;
    default:
      return result;
  }

  v19 = v10;

  result = v3;
  *(v3 + 40) = v19;
  return result;
}

uint64_t MTEpisodeEntitlementState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701147238;
    case 2:
      return 0x6C7469746E656E75;
    case 1:
      return 0x64656C7469746E65;
  }

  type metadata accessor for MTEpisodeEntitlementState(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCE944@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FCEA04(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D8FCE974(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 1701147238;
  }

  if (v2 == 2)
  {
    return 0x6C7469746E656E75;
  }

  if (v2 == 1)
  {
    return 0x64656C7469746E65;
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCEA04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701147238 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C7469746E65 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7469746E656E75 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1D8FCEB3C()
{
  result = qword_1ECAB87C0;
  if (!qword_1ECAB87C0)
  {
    type metadata accessor for MTEpisodeEntitlementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87C0);
  }

  return result;
}

uint64_t MTEpisodePubDateLimit.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x68746E6F4D656E6FLL;
    }

    if (a1 == 3)
    {
      return 0x74696D694C6F6ELL;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6B656557656E6FLL;
    }

    if (a1 == 1)
    {
      return 0x736B6565576F7774;
    }
  }

  type metadata accessor for MTEpisodePubDateLimit(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCEC54(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x6B656557656E6FLL;
    }

    if (v2 == 1)
    {
      return 0x736B6565576F7774;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x68746E6F4D656E6FLL;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_1D9179C9C();
    __break(1u);
    return result;
  }

  return 0x74696D694C6F6ELL;
}

uint64_t MTEpisodeType.helperEpisodeType.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id static MTEpisode.fetchRequestForMostPlayedShows(since:)(uint64_t a1)
{
  v37[1] = a1;
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v5 = swift_allocObject();
  v38 = xmmword_1D9189080;
  *(v5 + 16) = xmmword_1D9189080;
  v6 = objc_opt_self();
  v7 = [v6 expressionForKeyPath_];
  *(v5 + 56) = sub_1D8CF2154(0, &qword_1ECAAFE28, 0x1E696ABC8);
  *(v5 + 32) = v7;
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = sub_1D91785DC();

  v10 = [v6 expressionForFunction:v8 arguments:v9];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v11 setExpression_];
  v12 = v11;
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v12 setName_];

  [v12 setExpressionResultType_];
  v14 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D918C190;
  v16 = objc_opt_self();
  sub_1D9176E0C();
  sub_1D9176D0C();
  v18 = v17;
  (*(v2 + 8))(v4, v1);
  *(v15 + 32) = [v16 predicateForAtLeastPartiallyPlayedInInterval_];
  *(v15 + 40) = [v16 predicateForPodcastIsSubscribed_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v19 = sub_1D91785DC();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = v38;
  v22 = sub_1D917820C();
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v25 = sub_1D91785DC();

  [v14 setPropertiesToGroupBy_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D918A530;
  v27 = sub_1D917820C();
  *(v26 + 56) = v23;
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  *(v26 + 88) = sub_1D8CF2154(0, &qword_1ECAB87C8, 0x1E695D5C8);
  *(v26 + 64) = v12;
  v29 = v12;
  v30 = sub_1D91785DC();

  [v14 setPropertiesToFetch_];

  [v14 setResultType_];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D9189070;
  v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v34 = [v32 initWithKey:v33 ascending:0];

  *(v31 + 32) = v34;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v35 = sub_1D91785DC();

  [v14 setSortDescriptors_];

  return v14;
}

double static MTPodcastEpisodeLimit.allShowSettingsCases.getter()
{
  if (qword_1ECAB3688 != -1)
  {
    swift_once();
  }

  return result;
}

Swift::String __swiftcall MTPodcastEpisodeLimit.title(for:)(PodcastsFoundation::AutoDownloadSettingPresentationStyle a1)
{
  v2 = *a1;
  if (v1 <= 5)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v25 = *a1;
        v9 = &v25;
      }

      else if (v1 == 4)
      {
        v26 = *a1;
        v9 = &v26;
        v1 = 5;
      }

      else
      {
        v27 = *a1;
        v9 = &v27;
        v1 = 10;
      }
    }

    else
    {
      if (!v1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (v1 == 1)
      {
        if (*a1)
        {
          if (v2 == 1)
          {
            if (qword_1EDCD5F00 == -1)
            {
              goto LABEL_51;
            }
          }

          else if (qword_1EDCD5F00 == -1)
          {
LABEL_51:
            v16 = sub_1D917693C();
            goto LABEL_57;
          }
        }

        else if (qword_1EDCD5F00 == -1)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (v1 != 2)
      {
        goto LABEL_56;
      }

      v24 = *a1;
      v9 = &v24;
    }

    v16 = sub_1D8FD395C(v9, v1);
    goto LABEL_57;
  }

  if (v1 <= 8)
  {
    if (v1 == 6)
    {
      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D9189080;
      v18 = MEMORY[0x1E69E65A8];
      *(v3 + 56) = MEMORY[0x1E69E6530];
      *(v3 + 64) = v18;
      v5 = 24;
    }

    else
    {
      if (v1 == 7)
      {
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v6 = swift_allocObject();
        v7 = MEMORY[0x1E69E6530];
        *(v6 + 16) = xmmword_1D9189080;
        v8 = MEMORY[0x1E69E65A8];
        *(v6 + 56) = v7;
        *(v6 + 64) = v8;
        *(v6 + 32) = 7;
        goto LABEL_37;
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D9189080;
      v19 = MEMORY[0x1E69E65A8];
      *(v3 + 56) = MEMORY[0x1E69E6530];
      *(v3 + 64) = v19;
      v5 = 14;
    }

LABEL_36:
    *(v3 + 32) = v5;
LABEL_37:
    v20 = sub_1D91781DC();
    v22 = v21;

    v16 = v20;
    v17 = v22;
    goto LABEL_57;
  }

  if (v1 <= 0xFFFFFFFFLL)
  {
    if (v1 == 9)
    {
      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D9189080;
      v4 = MEMORY[0x1E69E65A8];
      *(v3 + 56) = MEMORY[0x1E69E6530];
      *(v3 + 64) = v4;
      v5 = 30;
      goto LABEL_36;
    }

    if (v1 == 0xFFFFFFFFLL)
    {
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

LABEL_56:
    type metadata accessor for MTPodcastEpisodeLimit(0);
    v16 = sub_1D9179C9C();
    __break(1u);
    goto LABEL_57;
  }

  if (v1 != 0x100000001)
  {
    if (v1 != 0x100000000)
    {
      goto LABEL_56;
    }

    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_51;
    }

LABEL_52:
    swift_once();
    goto LABEL_51;
  }

  v10 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
  [v10 episodeLimitForKey_];

  v28 = v2;
  v11 = MTPodcastEpisodeLimit.title(for:)(&v28);
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189080;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D8D34978();
  *(v12 + 32) = v11;
  v13 = sub_1D91781DC();
  v15 = v14;

  v16 = v13;
  v17 = v15;
LABEL_57:
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

void MTPodcastEpisodeLimit.countValue(in:completionHandler:)(void *a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 1;
  if (a4 <= 5)
  {
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        v8 = 0;
        if (a4 == 4)
        {
          v7 = 5;
        }

        else
        {
          v7 = 10;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_36;
      }

      if (a4 != 1 && a4 != 2)
      {
        goto LABEL_37;
      }
    }

    v8 = 0;
    v7 = a4;
    goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a4 == 6)
    {
      v9 = a1;
      v10 = &selRef_predicateForEpisodesPublishedToday;
    }

    else
    {
      v9 = a1;
      if (a4 == 7)
      {
        v10 = &selRef_predicateForEpisodesPublishedThisWeek;
      }

      else
      {
        v10 = &selRef_predicateForEpisodesPublishedLastTwoWeeks;
      }
    }

LABEL_27:
    v7 = [objc_opt_self() *v10];
    if (v7)
    {
      v18 = v7;
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a2;
      v19[4] = a3;
      v19[5] = v9;
      v23[4] = sub_1D8FD3BA4;
      v23[5] = v19;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_1D8CF5F60;
      v23[3] = &block_descriptor_56;
      v20 = _Block_copy(v23);
      v21 = v18;

      v22 = v9;

      [v22 performBlock_];
      _Block_release(v20);

      return;
    }

LABEL_35:
    v8 = 1;
    goto LABEL_36;
  }

  if (a4 > 0xFFFFFFFFLL)
  {
    if (a4 == 0x100000001)
    {
      v11 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
      v12 = [v11 episodeLimitForKey_];

      if (v12 == 0x100000001)
      {
        if (qword_1EDCD0F18 != -1)
        {
          swift_once();
        }

        v13 = sub_1D917744C();
        __swift_project_value_buffer(v13, qword_1EDCD0F20);
        v14 = sub_1D917741C();
        v15 = sub_1D9178CFC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1D8CEC000, v14, v15, "Episode global default set as global default, which is unresolvable.", v16, 2u);
          MEMORY[0x1DA72CB90](v16, -1, -1);
        }

        sub_1D8FD3B50();
        v17 = swift_allocError();
        a2(0, 1, v17);

        v8 = 1;
        v7 = 0;
        goto LABEL_36;
      }

      MTPodcastEpisodeLimit.countValue(in:completionHandler:)(a1, a2, a3, v12);
      v7 = 0;
      goto LABEL_35;
    }

    if (a4 != 0x100000000)
    {
      goto LABEL_37;
    }

    v7 = 0;
    v8 = 0;
LABEL_36:
    a2(v7, v8, 0);
    return;
  }

  if (a4 == 9)
  {
    v9 = a1;
    v10 = &selRef_predicateForEpisodesPublishedThisMonth;
    goto LABEL_27;
  }

  if (a4 == 0xFFFFFFFFLL)
  {
    goto LABEL_36;
  }

LABEL_37:
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D9179C9C();
  __break(1u);
}

void MTPodcastEpisodeLimit.countEpisodes(matching:in:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a2;
  v12[4] = sub_1D8FD44CC;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_7_1;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = a2;

  [v11 performBlock_];
  _Block_release(v9);
}

void sub_1D8FD0064(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1D8FD43E4();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v7 setPredicate_];
  v11[0] = 0;
  v8 = [a4 countForFetchRequest:v7 error:v11];
  v9 = v11[0];
  if (v11[0])
  {
    swift_willThrow();
    v10 = v9;
    (a2)(0, 1, v9);
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    a2();
  }
}

BOOL sub_1D8FD017C(char *a1)
{
  v1 = a1;
  while (v1 == 0x100000001)
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v1 = [v2 episodeLimitForKey_];
  }

  return (v1 - 1) < 5;
}

id MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest.getter(uint64_t a1)
{
  v1 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v2 setPredicate_];

  return v2;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedAutomaticallyDownloadedEpisodes.getter(uint64_t a1)
{
  if (([objc_opt_self() isPodcastsApp] & 1) == 0 && !objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v11 = 0;
  v4 = swift_allocObject();
  v4[2] = &v11;
  v4[3] = v3;
  v4[4] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8FD3BB0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_16;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1D8FD049C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a3 excludeHidden:0];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];

  sub_1D8FD43E4();
  v6 = sub_1D917907C();

  *a1 = v6;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedAutomaticallyDownloadedEpisodes()(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D917906C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD0798, 0, 0);
}

uint64_t sub_1D8FD0798()
{
  if (([objc_opt_self() isPodcastsApp] & 1) != 0 || objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    v2 = v0[5];
    v1 = v0[6];
    v4 = v0[3];
    v3 = v0[4];
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 mainOrPrivateContext];
    v0[7] = v6;

    v7 = swift_allocObject();
    v0[8] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
    v6;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_1D8FD0980;
    v9 = v0[6];
    v10 = MEMORY[0x1E69E6530];

    return MEMORY[0x1EEDB6538](v0 + 2, v9, sub_1D8FD3BBC, v7, v10);
  }

  else
  {

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_1D8FD0980()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_1D8FD0BB0;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D8FD0B34;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D8FD0B34()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {

    v2 = *(v0 + 8);

    v2(v1);
  }
}

uint64_t sub_1D8FD0BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8FD0C1C(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];

  sub_1D8FD43E4();
  v6 = sub_1D917907C();

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t MTPodcastEpisodeLimit.objectIDsForAutomaticallyDownloadedEpisodesExcludedByGlobalSettings.getter(uint64_t a1)
{
  v2 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v3 setPredicate_];

  v4 = sub_1D8FD0DA0(v3, a1);
  return v4;
}

uint64_t sub_1D8FD0DA0(void *a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (([objc_opt_self() isPodcastsApp] & 1) == 0 && !objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = &v15;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D8FD44A8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_84_0;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  [v9 performBlockAndWait_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = v15;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t MTPodcastEpisodeLimit.persistentIDsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD1060, 0, 0);
}

uint64_t sub_1D8FD1060()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:v0[4] excludeHidden:0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v6;
  [v6 setPredicate_];

  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = v4;
  v9 = v6;
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
  *v10 = v0;
  v10[1] = sub_1D8FD120C;
  v12 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v12, sub_1D8FD3BD8, v7, v11);
}

uint64_t sub_1D8FD120C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D8FD44BC;
  }

  else
  {
    v5 = sub_1D8FD44C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D8FD13A0(char **a2@<X8>)
{
  sub_1D8FD43E4();
  v4 = sub_1D917908C();
  if (!v2)
  {
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_1D917935C();
      if (v6)
      {
LABEL_4:
        v24 = MEMORY[0x1E69E7CC0];
        sub_1D8E3148C(0, v6 & ~(v6 >> 63), 0);
        if (v6 < 0)
        {
          __break(1u);
          return;
        }

        v7 = v24;
        if ((v5 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v6; ++i)
          {
            v9 = [MEMORY[0x1DA72AA90](i v5)];
            swift_unknownObjectRelease();
            v11 = *(v24 + 16);
            v10 = *(v24 + 24);
            if (v11 >= v10 >> 1)
            {
              sub_1D8E3148C((v10 > 1), v11 + 1, 1);
            }

            *(v24 + 16) = v11 + 1;
            *(v24 + 8 * v11 + 32) = v9;
          }
        }

        else
        {
          v12 = 32;
          do
          {
            v13 = [*(v5 + v12) persistentID];
            v15 = *(v24 + 16);
            v14 = *(v24 + 24);
            if (v15 >= v14 >> 1)
            {
              v16 = v13;
              sub_1D8E3148C((v14 > 1), v15 + 1, 1);
              v13 = v16;
            }

            *(v24 + 16) = v15 + 1;
            *(v24 + 8 * v15 + 32) = v13;
            v12 += 8;
            --v6;
          }

          while (v6);
        }

        v17 = *(v24 + 16);
        if (v17)
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
    v17 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v17)
    {
LABEL_16:
      v18 = (v7 + 32);
      v19 = MEMORY[0x1E69E7CC0];
      do
      {
        v21 = *v18++;
        v20 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1D8ECD368(0, *(v19 + 2) + 1, 1, v19);
          }

          v23 = *(v19 + 2);
          v22 = *(v19 + 3);
          if (v23 >= v22 >> 1)
          {
            v19 = sub_1D8ECD368((v22 > 1), v23 + 1, 1, v19);
          }

          *(v19 + 2) = v23 + 1;
          *&v19[8 * v23 + 32] = v20;
        }

        --v17;
      }

      while (v17);
      goto LABEL_27;
    }

LABEL_26:
    v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

    *a2 = v19;
  }
}

uint64_t MTPodcastEpisodeLimit.assetURLsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD16F0, 0, 0);
}

uint64_t sub_1D8FD16F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:v0[4] excludeHidden:0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v6;
  [v6 setPredicate_];

  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = v4;
  v9 = v6;
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
  *v10 = v0;
  v10[1] = sub_1D8FD189C;
  v12 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v12, sub_1D8FD3BF4, v7, v11);
}

uint64_t sub_1D8FD189C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1D8FD1AA4;
  }

  else
  {
    v5 = sub_1D8FD1A30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D8FD1A30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D8FD1AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8FD1B10(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v46 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8FD43E4();
  v11 = sub_1D917908C();
  if (!v2)
  {
    v50 = v6;
    v51 = v10;
    v49 = v7;
    v46[1] = 0;
    if (v11 >> 62)
    {
      goto LABEL_41;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v47 = v8;
    v46[0] = a2;
    if (v12)
    {
      v13 = v11;
      v53 = MEMORY[0x1E69E7CC0];
      sub_1D8E316C0(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return;
      }

      v14 = v53;
      v15 = v13;
      v52 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = 0;
        do
        {
          MEMORY[0x1DA72AA90](v16, v15);
          v17 = [swift_unknownObjectRetain() assetURL];
          if (v17)
          {
            v18 = v17;
            v19 = sub_1D917820C();
            v21 = v20;
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v19 = 0;
            v21 = 0;
          }

          v53 = v14;
          v23 = v14[2];
          v22 = v14[3];
          if (v23 >= v22 >> 1)
          {
            sub_1D8E316C0((v22 > 1), v23 + 1, 1);
            v14 = v53;
          }

          ++v16;
          v14[2] = v23 + 1;
          v24 = &v14[2 * v23];
          v24[4] = v19;
          v24[5] = v21;
          v15 = v52;
        }

        while (v12 != v16);
      }

      else
      {
        v25 = 4;
        do
        {
          v26 = v15[v25];
          v27 = [v26 assetURL];
          if (v27)
          {
            v28 = v27;
            v29 = sub_1D917820C();
            v31 = v30;
          }

          else
          {

            v29 = 0;
            v31 = 0;
          }

          v53 = v14;
          v33 = v14[2];
          v32 = v14[3];
          if (v33 >= v32 >> 1)
          {
            sub_1D8E316C0((v32 > 1), v33 + 1, 1);
            v14 = v53;
          }

          v14[2] = v33 + 1;
          v34 = &v14[2 * v33];
          v34[4] = v29;
          v34[5] = v31;
          ++v25;
          --v12;
          v15 = v52;
        }

        while (v12);
      }

      v8 = v47;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v35 = v14[2];
    v36 = v49;
    a2 = v50;
    if (v35)
    {
      v37 = 0;
      v38 = (v8 + 6);
      v52 = (v8 + 4);
      v48 = (v8 + 7);
      v8 = v14 + 5;
      v39 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v37 >= v14[2])
        {
          __break(1u);
LABEL_41:
          v45 = v11;
          v12 = sub_1D917935C();
          v11 = v45;
          goto LABEL_4;
        }

        if (*v8)
        {

          sub_1D9176BFC();

          if ((*v38)(a2, 1, v36) != 1)
          {
            v40 = v36;
            v41 = *v52;
            (*v52)(v51, a2, v40);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1D8ECC9D4(0, *(v39 + 2) + 1, 1, v39);
            }

            v43 = *(v39 + 2);
            v42 = *(v39 + 3);
            if (v43 >= v42 >> 1)
            {
              v39 = sub_1D8ECC9D4((v42 > 1), v43 + 1, 1, v39);
            }

            *(v39 + 2) = v43 + 1;
            v44 = v49;
            v11 = v41(&v39[((*(v47 + 80) + 32) & ~*(v47 + 80)) + v47[9] * v43], v51, v49);
            v36 = v44;
            a2 = v50;
            goto LABEL_28;
          }
        }

        else
        {
          (*v48)(a2, 1, 1, v36);
        }

        v11 = sub_1D8E677CC(a2);
LABEL_28:
        ++v37;
        v8 += 2;
        if (v35 == v37)
        {
          goto LABEL_38;
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_38:

    *v46[0] = v39;
  }
}

uint64_t MTPodcastEpisodeLimit.objectIDsForAutomaticallyDownloadedEpisodesExcludedByShowSettings(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest(uuid:)(a1, a2, a3);
  v5 = sub_1D8FD0DA0(v4, a3);

  return v5;
}

id MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:a3 excludeHidden:0];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v4 predicateForDownloadedEpisodesOnPodcastUuid_];

  v8 = [v5 AND_];
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = v8;
  v11 = [v9 initWithEntityName_];
  [v11 setPredicate_];

  return v11;
}

void sub_1D8FD214C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D8FD43E4();
  v4 = sub_1D917908C();
  v14 = v4;
  v22 = a3;
  v24 = MEMORY[0x1E69E7CC0];
  v15 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v16 = sub_1D917935C();
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA72AA90](v17, v14);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_24;
      }

      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      swift_once();
      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1EDCD0F88);
      v6 = 0;
      v7 = sub_1D917741C();
      v8 = sub_1D9178CFC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v24 = v10;
        *v9 = 134218242;
        *(v9 + 4) = v16;
        *(v9 + 12) = 2080;
        swift_getErrorValue();
        v11 = sub_1D9179D2C();
        v13 = sub_1D8CFA924(v11, v12, &v24);

        *(v9 + 14) = v13;
        _os_log_impl(&dword_1D8CEC000, v7, v8, "Couldn't fetch episode object IDs for MTPodcastEpisodeLimit of %lld: %s.", v9, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        MEMORY[0x1DA72CB90](v9, -1, -1);
      }

      else
      {
      }

      return;
    }

    v21 = [v18 objectID];

    ++v17;
    if (v21)
    {
      MEMORY[0x1DA729B90]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      v23 = v24;
      v17 = v20;
    }
  }

  *v22 = v23;
}

Swift::Int __swiftcall MTPodcastEpisodeLimit.numberOfExcludedDownloadedEpisodes(from:)(Swift::String from)
{
  v2 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  if (os_feature_enabled_serial_sort_auto_downloads())
  {
    v7 = 0;
    v8 = 0;
    v9 = v2;
LABEL_11:
    v15 = objc_opt_self();
    v16 = [v15 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:v9 excludeHidden:0];
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v18 = [v15 predicateForDownloadedEpisodesOnPodcastUuid_];

    v19 = [v16 AND_];
    v20 = sub_1D8FD27D4(v19, v2);

    sub_1D8D15664(v7, v8);
    return v20;
  }

  v22 = 0;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = countAndFlagsBits;
  v8[4] = object;
  v8[5] = &v22;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FD3C10;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_41_0;
  v11 = _Block_copy(aBlock);
  v12 = v6;

  [v12 performBlockAndWait_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x100000001;
    }

    if (v2 == 0x100000001)
    {
      v9 = v14;
    }

    else
    {
      v9 = v2;
    }

    v7 = sub_1D8FD3C10;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1D8FD274C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 podcastForUuid_];

  if (v7)
  {
    v8 = [v7 isSerialShowTypeInFeed];
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_1D8FD27D4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v4 setPredicate_];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v15;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8FD449C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_74_1;
  v9 = _Block_copy(aBlock);
  v10 = v6;
  v11 = v4;

  [v10 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedDownloadedEpisodes(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1D8FD2A80;

  return sub_1D8FD2F08(a1, a2, a3);
}

uint64_t sub_1D8FD2A80(uint64_t a1)
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

    return MEMORY[0x1EEE6DFA0](sub_1D8FD2BCC, 0, 0);
  }
}

uint64_t sub_1D8FD2BCC()
{
  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = [v2 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:v1 excludeHidden:0];
  v0[6] = v3;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v2 predicateForDownloadedEpisodesOnPodcastUuid_];
  v0[7] = v5;

  v6 = [v3 AND_];
  v0[8] = v6;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1D8FD2CFC;

  return sub_1D8FD3C1C(v6);
}

uint64_t sub_1D8FD2CFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1D8FD2E98;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_1D8FD2E2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D8FD2E2C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_1D8FD2E98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D8FD2F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D917906C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD2FCC, 0, 0);
}

uint64_t sub_1D8FD2FCC()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];
  v0[8] = v2;

  if (os_feature_enabled_serial_sort_auto_downloads())
  {

    v3 = v0[4];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_allocObject();
    v0[9] = v11;
    v11[2] = v2;
    v11[3] = v10;
    v11[4] = v9;
    (*(v7 + 104))(v6, *MEMORY[0x1E695D2B8], v8);
    v2;

    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_1D8FD31A8;
    v13 = v0[7];
    v14 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEDB6538](v0 + 11, v13, sub_1D8FD447C, v11, v14);
  }
}

void sub_1D8FD31A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];

    (*(v4 + 8))(v3, v5);

    MEMORY[0x1EEE6DFA0](sub_1D8FD3304, 0, 0);
  }
}

uint64_t sub_1D8FD3304()
{
  v1 = *(v0 + 32);

  if (v1 == 0x100000001)
  {
    if (*(v0 + 88))
    {
      v2 = 0;
    }

    else
    {
      v2 = 0x100000001;
    }
  }

  else
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_1D8FD3398(void *a1@<X0>, unsigned __int8 *a4@<X8>)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 podcastForUuid_];

  if (v7)
  {
    v8 = [v7 isSerialShowTypeInFeed];
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_1D8FD3428(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1D8FD43E4();
  result = sub_1D917907C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FD35F0@<X0>(uint64_t *a2@<X8>)
{
  sub_1D8FD43E4();
  result = sub_1D917907C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MTPodcast.currentEpisodeLimitAllowsAutomaticDownloads.getter()
{
  v1 = [v0 episodeLimit];

  return MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter(v1);
}

id MTPodcast.currentEpisodeLimitIsNextNEpisodes.getter()
{
  result = [v0 isSerialShowTypeInFeed];
  if (result)
  {
    v2 = [v0 episodeLimit];

    return sub_1D8FD017C(v2);
  }

  return result;
}

id PodcastEpisodeLimitHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastEpisodeLimitHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastEpisodeLimitHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PodcastEpisodeLimitHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PodcastEpisodeLimitHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AutoDownloadSettingPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FD395C(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1D9189080;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a2;
  v6 = sub_1D91781DC();

  return v6;
}

unint64_t sub_1D8FD3B50()
{
  result = qword_1ECAB87D8;
  if (!qword_1ECAB87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87D8);
  }

  return result;
}

uint64_t sub_1D8FD3C1C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D917906C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD3CDC, 0, 0);
}

uint64_t sub_1D8FD3CDC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];
  v0[7] = v6;

  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v7;
  [v7 setPredicate_];
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v6;
  v9 = v7;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D8FD3E8C;
  v11 = v0[6];
  v12 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEDB6538](v0 + 2, v11, sub_1D8FD43C8, v8, v12);
}

uint64_t sub_1D8FD3E8C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_1D8FD40C0;
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D8FD4040;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D8FD4040()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {

    v3 = *(v0 + 8);

    v3(v2);
  }
}

uint64_t sub_1D8FD40C0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

id _s18PodcastsFoundation25PodcastEpisodeLimitHelperC15allGlobalLimitsSo5NSSetCvgZ_0()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1D91795CC();
  v0 = 0x20u;
  do
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1D917959C();
    sub_1D91795DC();
    sub_1D91795EC();
    sub_1D91795AC();
    v0 += 8;
  }

  while (v0 != 120);
  sub_1D8F61220(v5);

  v1 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v2 = sub_1D91785DC();

  v3 = [v1 initWithArray_];

  return v3;
}

unint64_t sub_1D8FD4294()
{
  result = qword_1ECAB87E8;
  if (!qword_1ECAB87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87E8);
  }

  return result;
}

unint64_t sub_1D8FD42EC()
{
  result = qword_1ECAB87F0;
  if (!qword_1ECAB87F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB87F8, &qword_1D91A36E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87F0);
  }

  return result;
}

unint64_t sub_1D8FD4374()
{
  result = qword_1ECAB8800;
  if (!qword_1ECAB8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8800);
  }

  return result;
}

unint64_t sub_1D8FD43E4()
{
  result = qword_1EDCD5B00;
  if (!qword_1EDCD5B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD5B00);
  }

  return result;
}

uint64_t objectdestroy_33Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t TranscriptRequestInformation.episodeAdamId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptRequestInformation.episodeTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptRequestInformation.ttmlIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptRequestInformation.selectedTextTimeInterval.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

uint64_t TranscriptRequestInformation.showName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void TranscriptRequestInformation.showName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  v13 = *a13;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v13;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

id MTInterest.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTInterest.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTInterest();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTInterest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTInterest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MTInterest.createFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D8FD495C(id *a1)
{
  v1 = [*a1 lastUpdatedDate];
  sub_1D9176DFC();
}

void sub_1D8FD49C8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 unknownSyncProperties];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D9176C8C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D8FD4A30(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  }

  v4 = v3;
  [v2 setUnknownSyncProperties_];
}

uint64_t MTInterest.state.getter()
{
  [v0 interestValue];
  if (v1 == -1.0)
  {
    return 0;
  }

  if (v1 == 0.0)
  {
    return 1;
  }

  if (v1 == 1.0)
  {
    return 2;
  }

  return 3;
}

uint64_t static MTInterest.predicateForInterest(withAdamID:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v2 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v2 + 104) = sub_1D8E96578();
  *(v2 + 72) = v3;
  return sub_1D9178C8C();
}

uint64_t sub_1D8FD4CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D9189080;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D8D34978();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  return sub_1D9178C8C();
}

id static MTInterest.predicateForDislikedInterestsChannels()()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x6C656E6E616863;
  *(v0 + 40) = 0xE700000000000000;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  strcpy((v4 + 32), "interestValue");
  *(v4 + 46) = -4864;
  v5 = sub_1D9178C8C();
  v6 = [v5 AND_];

  return v6;
}

uint64_t static MTInterest.predicateForInterests(excludingAdamIDs:)(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = 0x44496D616461;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8808, &qword_1D91BDE40);
  *(v2 + 104) = sub_1D8FD53C8();
  *(v2 + 72) = a1;

  return sub_1D9178C8C();
}

uint64_t static MTInterest.predicateForNeutralInterests()()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918A530;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v1 = sub_1D8D34978();
  strcpy((v0 + 32), "interestValue");
  *(v0 + 46) = -4864;
  v2 = MEMORY[0x1E69E65A8];
  *(v0 + 96) = MEMORY[0x1E69E6530];
  *(v0 + 104) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = 0;
  return sub_1D9178C8C();
}

id sub_1D8FD50E8(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1D8D34978();
  *(v1 + 64) = v3;
  strcpy((v1 + 32), "interestValue");
  *(v1 + 46) = -4864;
  v4 = sub_1D9178C8C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9189080;
  *(v5 + 56) = v2;
  *(v5 + 64) = v3;
  *(v5 + 32) = 0x79726F6765746163;
  *(v5 + 40) = 0xE800000000000000;
  v6 = sub_1D9178C8C();
  v7 = [v4 AND_];

  return v7;
}

id _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "interestValue");
  *(v0 + 46) = -4864;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  *(v4 + 32) = 0x79726F6765746163;
  *(v4 + 40) = 0xE800000000000000;
  v5 = sub_1D9178C8C();
  v6 = [v5 NOT];

  v7 = [v3 AND_];
  return v7;
}

unint64_t sub_1D8FD53C8()
{
  result = qword_1ECAAFEC0;
  if (!qword_1ECAAFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8808, &qword_1D91BDE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFEC0);
  }

  return result;
}

uint64_t RemoteInterestError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

double static RemoteInterest.allSyncKeys.getter()
{
  if (qword_1ECAB3690 != -1)
  {
    swift_once();
  }

  return result;
}

void RemoteInterest.init(dictionary:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D8D33C70(0x44496D616461, 0xE600000000000000), (v5 & 1) != 0) && (sub_1D8CFAD1C(*(a1 + 56) + 32 * v4, &v32), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v6 = sub_1D8D33C70(0x7473657265746E69, 0xED000065756C6156), (v7 & 1) != 0) && (sub_1D8CFAD1C(*(a1 + 56) + 32 * v6, &v32), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v8 = sub_1D8D33C70(0x616470557473616CLL, 0xEF65746144646574), (v9 & 1) != 0))
    {
      sub_1D8CFAD1C(*(a1 + 56) + 32 * v8, &v32);
      v10 = swift_dynamicCast();
      if (v10)
      {
        v11 = v31;
      }

      else
      {
        v11 = 0;
      }

      v12 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }

    v34 = v12;
    v13 = *aAdamid_22;
    v14 = unk_1F54610B0;

    v15 = sub_1D8D33C70(v13, v14);
    v17 = v16;

    if (v17)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1D8F86F90();
      }

      sub_1D8D65618((*(a1 + 56) + 32 * v15), &v32);
      sub_1D8F80C60(v15, a1);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D8D64450(&v32);
    v18 = aInterestvalue_4[0];
    v19 = aInterestvalue_4[1];

    v20 = sub_1D8D33C70(v18, v19);
    v22 = v21;

    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8F86F90();
      }

      sub_1D8D65618((*(a1 + 56) + 32 * v20), &v32);
      sub_1D8F80C60(v20, a1);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D8D64450(&v32);
    v23 = qword_1F54610C8;
    v24 = unk_1F54610D0;

    v25 = sub_1D8D33C70(v23, v24);
    v27 = v26;

    if (v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8F86F90();
      }

      sub_1D8D65618((*(a1 + 56) + 32 * v25), &v32);
      sub_1D8F80C60(v25, a1);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D8D64450(&v32);
    sub_1D8FD5948(a1);
    v29 = v28;

    v30 = v34;
    *a2 = v31;
    *(a2 + 8) = v31;
    *(a2 + 16) = v11;
    *(a2 + 24) = v30;
    *(a2 + 32) = v29;
  }

  else
  {

    sub_1D8FD5BF0();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_1D8FD5948(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_13:
    v19 = __clz(__rbit64(v6)) | (v8 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_1D8CFAD1C(*(a1 + 56) + 32 * v19, v37);
    *&v36 = v22;
    *(&v36 + 1) = v21;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1D8CFAD1C(&v34, v28);

    sub_1D90F25C8(v28, v29);
    v32[0] = v34;
    v32[1] = v35;
    v31 = v33;
    v23 = *(v2 + 16);
    if (*(v2 + 24) <= v23)
    {
      sub_1D9003430(v23 + 1, 1);
      v2 = v38;
    }

    v9 = v31;
    sub_1D9179DBC();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    v10 = sub_1D9179E1C();
    v11 = v2 + 64;
    v12 = -1 << *(v2 + 32);
    v13 = v10 & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v2 + 64 + 8 * (v13 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v12) >> 6;
      while (++v14 != v25 || (v24 & 1) == 0)
      {
        v26 = v14 == v25;
        if (v14 == v25)
        {
          v14 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v14);
        if (v27 != -1)
        {
          v15 = __clz(__rbit64(~v27)) + (v14 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v2 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v2 + 48) + 16 * v15) = v9;
    v16 = *(v2 + 56) + 40 * v15;
    v17 = v29[1];
    *v16 = v29[0];
    *(v16 + 16) = v17;
    *(v16 + 32) = v30;
    ++*(v2 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  while (1)
  {
    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v18 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v18);
    ++v8;
    if (v6)
    {
      v8 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1D8FD5BF0()
{
  result = qword_1ECAB8818;
  if (!qword_1ECAB8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8818);
  }

  return result;
}

unint64_t sub_1D8FD5C48()
{
  result = qword_1ECAB8820;
  if (!qword_1ECAB8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8820);
  }

  return result;
}

uint64_t sub_1D8FD5CAC(uint64_t a1, int a2)
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

uint64_t sub_1D8FD5CF4(uint64_t result, int a2, int a3)
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

unint64_t MTBookmarksSyncType.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD00000000000001DLL;
  if (a1 == 1)
  {
    v2 = 5067332;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 5460818;
  }
}

unint64_t sub_1D8FD5DAC()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v3 = 5067332;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 5460818;
  }
}

unint64_t MTSubscriptionSyncType.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001DLL;
  v2 = 0xD00000000000001DLL;
  if (a1 == 1)
  {
    v2 = 13174;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 12662;
  }
}

unint64_t sub_1D8FD5E68()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v3 = 13174;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 12662;
  }
}

uint64_t RemoteSyncTypeWithUnknownSyncProperties.encodeUnknownSyncProperties()(uint64_t a1, uint64_t a2)
{
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  (*(a2 + 8))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
  sub_1D8FD62C0(&qword_1ECAB0148, sub_1D8FD6000, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  v4 = sub_1D91765AC();

  return v4;
}

unint64_t sub_1D8FD6000()
{
  result = qword_1ECAB2B60;
  if (!qword_1ECAB2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B60);
  }

  return result;
}

uint64_t Dictionary<>.flatteningUnknownSyncProperties<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = v7(a3, a4);
  if (!*(a2 + 16))
  {

LABEL_6:

    return a2;
  }

  v10 = sub_1D8D33C70(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D8CFAD1C(*(a2 + 56) + 32 * v10, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7(a3, a4);
  sub_1D8F7ECD4(v18);

  sub_1D8D64450(v18);
  sub_1D917656C();
  swift_allocObject();
  sub_1D917655C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
  sub_1D8FD62C0(&qword_1ECAB0140, sub_1D8FD6344, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1D917654C();
  v14 = sub_1D8FD6398(v18[0]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = a2;
  sub_1D8FD6580(v14, sub_1D8FD6534, 0, isUniquelyReferenced_nonNull_native, v18);

  sub_1D8D7567C(v16, v17);
  return v18[0];
}

uint64_t sub_1D8FD62C0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8828, qword_1D91A3B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FD6344()
{
  result = qword_1ECAB2B58;
  if (!qword_1ECAB2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B58);
  }

  return result;
}

_OWORD *sub_1D8FD6398(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  result = sub_1D917977C();
  v3 = result;
  v4 = 0;
  v27 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 4;
  v24 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v27 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_1D8FD68E4(*(v27 + 56) + 40 * v15, v26);

      AnyCodable.value.getter(v25);
      sub_1D8FD6940(v26);
      v3 = v24;
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v24[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      result = sub_1D8D65618(v25, (v24[7] + 32 * v15));
      v20 = v24[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v24[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1D8FD6534@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1D8CFAD1C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

unint64_t sub_1D8FD6580(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_1D9026624(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_1D8D65618(v47, v45);
  v14 = *a5;
  result = sub_1D8D33C70(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1D900C074();
    result = sub_1D8D33C70(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1D8F86F90();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_1D8CFAD1C(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v25 + v24));
    sub_1D8D65618(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1D8D65618(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_1D9026624(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_1D8D65618(v47, v45);
        v34 = *a5;
        result = sub_1D8D33C70(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_1D900C074();
          result = sub_1D8D33C70(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_1D8CFAD1C(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v33 + v32));
          sub_1D8D65618(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1D8D65618(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1D9026624(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_1D8D1B144(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D8FD69F0()
{
  v1 = sub_1D9176A7C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 settings];
  if (!v6)
  {
    v9 = [objc_opt_self() falsePredicate];

    v10 = v9;
    return;
  }

  v7 = v6;
  v110 = v0;
  v8 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v116)
  {
    v111 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        sub_1D8D65618(&v115, &v113);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v114)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v111 = v117;
        sub_1D91791DC();
        v8 = MEMORY[0x1E69E7CC0];
        if (!v116)
        {
          goto LABEL_16;
        }
      }

      sub_1D91791DC();
    }

    while (v116);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v111 = v8;
  }

LABEL_16:

  (*(v2 + 8))(v5, v1);
  *&v115 = v8;
  v11 = v111;
  if (v111 >> 62)
  {
    goto LABEL_56;
  }

  v12 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v13 = v110;
    v14 = &selRef_allPlayedEpsWeight;
    v112 = v12;
    if (v12)
    {
      v15 = 0;
      v16 = v11 & 0xC000000000000001;
      v17 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v18 = MEMORY[0x1DA72AA90](v15);
        }

        else
        {
          if (v15 >= *(v17 + 16))
          {
            goto LABEL_53;
          }

          v18 = *(v11 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v21 = [v18 integerForEpisodesToShow];
        v22 = [v13 defaultSettings];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 integerForEpisodesToShow];

          if (v21 == v24)
          {
            sub_1D917959C();
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
          }

          else
          {
          }

          v13 = v110;
        }

        else
        {
        }

        ++v15;
        v11 = v111;
        if (v20 == v112)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_32:
    v25 = v115;
    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v106 = OBJC_IVAR___PFRestrictionsController__state;
    v107 = qword_1ECAB1CD0;
    v26 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v26 + 24));
    v27 = *(v26 + 16);
    os_unfair_lock_unlock((v26 + 24));
    if (!v27)
    {
      goto LABEL_60;
    }

    *&v115 = v8;
    if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
    {
      v28 = *(v25 + 16);
      if (!v28)
      {
        break;
      }

      goto LABEL_38;
    }

    v28 = sub_1D917935C();
    if (!v28)
    {
      break;
    }

LABEL_38:
    v29 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1DA72AA90](v29, v25);
      }

      else
      {
        if (v29 >= *(v25 + 16))
        {
          goto LABEL_55;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v30 podcast];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 isExplicit];

        if (v35)
        {
        }

        else
        {
          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
        }

        v14 = &selRef_allPlayedEpsWeight;
      }

      else
      {
      }

      ++v29;
      if (v32 == v28)
      {
        v36 = v115;
        goto LABEL_59;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v37 = v11;
    v12 = sub_1D917935C();
    v11 = v37;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v25 = v36;
LABEL_60:
  if (v25 >> 62)
  {
LABEL_81:
    v38 = sub_1D917935C();
    if (v38)
    {
      goto LABEL_62;
    }

    goto LABEL_82;
  }

  v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_82:
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_83;
  }

LABEL_62:
  v39 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  do
  {
    v41 = v39;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1DA72AA90](v41, v25);
      }

      else
      {
        if (v41 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v42 = *(v25 + 8 * v41 + 32);
      }

      v43 = v42;
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v44 = [v42 podcast];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 uuid];

        v14 = &selRef_allPlayedEpsWeight;
        if (v46)
        {
          break;
        }
      }

      ++v41;
      if (v39 == v38)
      {
        goto LABEL_83;
      }
    }

    v47 = sub_1D917820C();
    v49 = v48;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1D8D4241C(0, *(v40 + 2) + 1, 1, v40);
    }

    v52 = *(v40 + 2);
    v51 = *(v40 + 3);
    if (v52 >= v51 >> 1)
    {
      v40 = sub_1D8D4241C((v51 > 1), v52 + 1, 1, v40);
    }

    *(v40 + 2) = v52 + 1;
    v53 = &v40[16 * v52];
    *(v53 + 4) = v47;
    *(v53 + 5) = v49;
    v14 = &selRef_allPlayedEpsWeight;
  }

  while (v39 != v38);
LABEL_83:

  v54 = objc_opt_self();
  sub_1D8F60B24(v40);

  v55 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v56 = sub_1D91785DC();

  v57 = [v55 initWithArray_];

  v104 = v54;
  v58 = [v54 predicateForAllEpisodesOnPodcastUuids_];

  v59 = v110;
  v60 = [v110 defaultSettings];
  if (!v60)
  {
    v63 = v111;
    if (v112)
    {
      v109 = v58;
      goto LABEL_90;
    }

    goto LABEL_109;
  }

  v61 = v60;
  v62 = [v60 v14[501]];

  v63 = v111;
  if (v62 >= 1)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1D918A530;
    v65 = sub_1D917820C();
    v67 = v66;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    v68 = sub_1D8D34978();
    *(v64 + 32) = v65;
    *(v64 + 40) = v67;
    *(v64 + 96) = MEMORY[0x1E69E6530];
    *(v64 + 104) = MEMORY[0x1E69E65A8];
    *(v64 + 64) = v68;
    *(v64 + 72) = v62;
    v69 = sub_1D9178C8C();
    v70 = [v58 AND_];

    v58 = v70;
  }

  if (!v112)
  {
LABEL_109:

    return;
  }

  v109 = v58;
  v14 = &selRef_allPlayedEpsWeight;
LABEL_90:
  v71 = 0;
  v72 = v63 & 0xC000000000000001;
  v108 = v63 & 0xFFFFFFFFFFFFFF8;
  v103 = @"episodeLevel";
  v102 = xmmword_1D918A530;
  v73 = v112;
  v105 = v63 & 0xC000000000000001;
  while (1)
  {
    if (v72)
    {
      v76 = MEMORY[0x1DA72AA90](v71, v63);
    }

    else
    {
      if (v71 >= *(v108 + 16))
      {
        goto LABEL_112;
      }

      v76 = *(v63 + 8 * v71 + 32);
    }

    v75 = v76;
    v77 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    v78 = [v76 v14[501]];
    v79 = [v59 defaultSettings];
    if (!v79 || (v80 = v79, v81 = [v79 v14[501]], v80, v82 = v78 == v81, v14 = &selRef_allPlayedEpsWeight, !v82))
    {
      v83 = [v75 podcast];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 uuid];
        if (v85)
        {
          v86 = v85;
          v87 = *(v107 + v106);
          os_unfair_lock_lock((v87 + 24));
          v88 = *(v87 + 16);
          os_unfair_lock_unlock((v87 + 24));
          if (v88 && ([v84 isExplicit] & 1) != 0)
          {
            v74 = v75;
            v75 = v86;
            v72 = v105;
          }

          else
          {
            v89 = v14;
            v90 = [v104 predicateForAllEpisodesOnPodcastUuid_];

            v91 = [v75 v89 + 136];
            if (v91 >= 1)
            {
              v92 = v91;
              sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
              v93 = swift_allocObject();
              *(v93 + 16) = v102;
              v94 = sub_1D917820C();
              v96 = v95;
              *(v93 + 56) = MEMORY[0x1E69E6158];
              v97 = sub_1D8D34978();
              *(v93 + 32) = v94;
              *(v93 + 40) = v96;
              *(v93 + 96) = MEMORY[0x1E69E6530];
              *(v93 + 104) = MEMORY[0x1E69E65A8];
              *(v93 + 64) = v97;
              *(v93 + 72) = v92;
              v59 = v110;
              v63 = v111;
              v98 = sub_1D9178C8C();
              v99 = [v90 AND_];

              v90 = v99;
            }

            v72 = v105;
            v100 = v109;
            v101 = [v109 OR:v90];

            v74 = v100;
            v109 = v101;
            v14 = &selRef_allPlayedEpsWeight;
          }

          v73 = v112;
        }
      }
    }

    ++v71;
    if (v77 == v73)
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_112:
  __break(1u);
}

void __swiftcall MTPlaylist.unsafePredicateForStationEpisodesFromPodcast(podcastUuid:)(NSPredicate *__return_ptr retstr, Swift::String podcastUuid)
{
  v30 = podcastUuid;
  v3 = sub_1D9176A7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 settings];
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = v8;
  v29 = v2;
  v10 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v35)
  {
    v31 = v4;
    do
    {
      while (1)
      {
        sub_1D8D65618(&v34, &v32);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v33)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v10 = v36;
        sub_1D91791DC();
        v4 = v31;
        if (!v35)
        {
          goto LABEL_12;
        }
      }

      sub_1D91791DC();
    }

    while (v35);
    v4 = v31;
  }

LABEL_12:

  (*(v4 + 8))(v7, v3);
  if (v10 >> 62)
  {
LABEL_35:
    v31 = sub_1D917935C();
    if (v31)
    {
      goto LABEL_14;
    }

LABEL_36:

    goto LABEL_37;
  }

  v31 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_14:
  v11 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA72AA90](v11, v10);
    }

    else
    {
      if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v12 = *(v10 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v15 = [v12 podcast];
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = v15;
    v17 = [v15 uuid];

    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = sub_1D917820C();
    v20 = v19;

    if (v18 == v30._countAndFlagsBits && v20 == v30._object)
    {
      break;
    }

    v22 = sub_1D9179ACC();

    if (v22)
    {
      countAndFlagsBits = v30._countAndFlagsBits;
      object = v30._object;
      goto LABEL_30;
    }

LABEL_15:

    ++v11;
    if (v14 == v31)
    {
      goto LABEL_36;
    }
  }

  countAndFlagsBits = v30._countAndFlagsBits;
  object = v30._object;

LABEL_30:

  v25 = [v13 podcast];
  if (v25)
  {
    v26 = v25;
    sub_1D8FD7974(countAndFlagsBits, object, [v25 isExplicit], objc_msgSend(v13, sel_integerForEpisodesToShow));

    return;
  }

LABEL_37:
  v27 = [objc_opt_self() falsePredicate];

  v28 = v27;
}

id sub_1D8FD7974(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 24));
  if (v7 && (a3 & 1) != 0)
  {
    v8 = [objc_opt_self() falsePredicate];

    return v8;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v12 = [v10 predicateForAllEpisodesOnPodcastUuid_];

    if (a4 >= 1)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = sub_1D917820C();
      v16 = v15;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v17 = sub_1D8D34978();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      v18 = MEMORY[0x1E69E65A8];
      *(v13 + 96) = MEMORY[0x1E69E6530];
      *(v13 + 104) = v18;
      *(v13 + 64) = v17;
      *(v13 + 72) = a4;
      v19 = sub_1D9178C8C();
      v20 = [v12 AND_];

      v12 = v20;
    }

    v21 = sub_1D8D6CD58();
    v22 = [v12 AND_];

    v23 = v22;
    v24 = sub_1D8D6D430();
    v25 = [v23 AND_];

    return v25;
  }
}

unint64_t sub_1D8FD7BFC()
{
  result = qword_1ECAAFC60;
  if (!qword_1ECAAFC60)
  {
    sub_1D8CF2154(255, &qword_1EDCD5B00, off_1E85675C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFC60);
  }

  return result;
}

void sub_1D8FD7C64(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D917913C();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1D917914C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t static MTPodcastPlaylistSettings.sortDescriptorsForGroupedStation(orderedBy:)(int a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 <= 2)
  {
    if (!a1)
    {

      return _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE33sortDescriptorsForManualShowOrderSaySo16NSSortDescriptorCGyFZ_0();
    }

    if (a1 != 1)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D9189070;
    sub_1D917820C();
    v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v7 = [v5 initWithKey:v6 ascending:0];
LABEL_10:
    v9 = v7;

    result = v4;
    *(v4 + 32) = v9;
    return result;
  }

  switch(a1)
  {
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D9189070;
      sub_1D917820C();
      v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = [v8 initWithKey:v6 ascending:1];
      goto LABEL_10;
    case 4:
      v3 = 1;
      break;
    case 5:
      v3 = 0;
      break;
    default:
      return result;
  }

  return _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE27sortDescriptorsForShowTitle9ascendingSaySo16NSSortDescriptorCGSb_tFZ_0(v3);
}

uint64_t sub_1D8FD7F90(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:a2 & 1];

  *(v3 + 32) = v6;
  return v3;
}

uint64_t _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE33sortDescriptorsForManualShowOrderSaySo16NSSortDescriptorCGyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  MEMORY[0x1DA7298F0](46, 0xE100000000000000);
  v1 = sub_1D917820C();
  MEMORY[0x1DA7298F0](v1);

  v2 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v2 initWithKey:v3 ascending:0];

  *(v0 + 32) = v4;
  return v0;
}

uint64_t _sSo25MTPodcastPlaylistSettingsC18PodcastsFoundationE27sortDescriptorsForShowTitle9ascendingSaySo16NSSortDescriptorCGSb_tFZ_0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  MEMORY[0x1DA7298F0](46, 0xE100000000000000);
  v3 = sub_1D917820C();
  MEMORY[0x1DA7298F0](v3);

  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:a1 & 1 selector:sel_localizedStandardCompare_];

  *(v2 + 32) = v6;
  return v2;
}

PodcastsFoundation::FeedURLComposerError_optional __swiftcall FeedURLComposerError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D8FD8284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8FD8B20();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D8FD830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8840, &unk_1D91A3BB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1D8ECA48C(a1, &v19 - v11);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    if (a2)
    {
      return sub_1D8FD880C(a2, a3);
    }

    else
    {
      sub_1D8FD8574();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v20 = a3;
    v14 = *(v7 + 32);
    v14(v9, v12, v6);
    v15 = objc_opt_self();
    sub_1D9176ACC();
    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v15) = [v15 isSupportedUrlString_];

    if (v15)
    {
      return (v14)(v20, v9, v6);
    }

    else
    {
      sub_1D8FD8574();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      return (*(v7 + 8))(v9, v6);
    }
  }
}

unint64_t sub_1D8FD8574()
{
  result = qword_1ECAB8848;
  if (!qword_1ECAB8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8848);
  }

  return result;
}

uint64_t sub_1D8FD880C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  if (!a1)
  {
    goto LABEL_4;
  }

  v12[0] = 0x6C616E7265746E69;
  v12[1] = 0xEB000000002F2F3ALL;
  v12[3] = a1;
  v7 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v7);

  sub_1D9176BFC();

  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1D8E677CC(v6);
LABEL_4:
    sub_1D8FD8574();
    swift_allocError();
    *v10 = 2;
    return swift_willThrow();
  }

  return (*(v9 + 32))(a2, v6, v8);
}

id FeedURLComposer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedURLComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedURLComposer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeedURLComposer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedURLComposer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8FD8A5C()
{
  result = qword_1ECAB8850;
  if (!qword_1ECAB8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8850);
  }

  return result;
}

unint64_t sub_1D8FD8B20()
{
  result = qword_1ECAB8858;
  if (!qword_1ECAB8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8858);
  }

  return result;
}

uint64_t sub_1D8FD8B74(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1D8FD9118(*a1, v2);
  sub_1D8FD8F88(v1, v2);

  return sub_1D8FD9104(v1, v2);
}

uint64_t MTPodcast.episodeUserFilter.setter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1D8FD8F88(a1, a2);

  return sub_1D8FD9104(a1, v2);
}

void (*MTPodcast.episodeUserFilter.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = MTPodcast.episodeUserFilter.getter();
  *(v4 + 8) = v5;
  return sub_1D8FD8C98;
}

void sub_1D8FD8C98(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = (*a1)[4];
  if (a2)
  {
    sub_1D8FD9118(**a1, v4);
    [v5 willChangeValueForKey_];
    if (v4 == 255)
    {
      v9 = 0;
      v6 = 0;
      v8 = 0xF000000000000000;
    }

    else
    {
      sub_1D91765CC();
      swift_allocObject();
      sub_1D8F95C9C(v3, v4);
      sub_1D91765BC();
      v2[2] = v3;
      *(v2 + 24) = v4;
      sub_1D8F993C0();
      v6 = sub_1D91765AC();
      v8 = v7;

      sub_1D8FD9104(v3, v4);
      sub_1D8D752C4(v6, v8);
      v9 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D7567C(v6, v8);
    }

    v10 = v2[4];
    [v10 setPrimitiveValue:v9 forKey:@"episodeUserFilter"];
    swift_unknownObjectRelease();
    [v10 didChangeValueForKey_];
    sub_1D8D75668(v6, v8);
    sub_1D8FD9104(v3, v4);
    v11 = *v2;
    v12 = *(v2 + 8);
  }

  else
  {
    [(*a1)[4] willChangeValueForKey_];
    if (v4 == 255)
    {
      v16 = 0;
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    else
    {
      sub_1D91765CC();
      swift_allocObject();
      sub_1D8F95C9C(v3, v4);
      sub_1D91765BC();
      v2[2] = v3;
      *(v2 + 24) = v4;
      sub_1D8F993C0();
      v13 = sub_1D91765AC();
      v15 = v14;

      sub_1D8FD9104(v3, v4);
      sub_1D8D752C4(v13, v15);
      v16 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
      sub_1D8D7567C(v13, v15);
    }

    v17 = v2[4];
    [v17 setPrimitiveValue:v16 forKey:@"episodeUserFilter"];
    swift_unknownObjectRelease();
    [v17 didChangeValueForKey_];
    sub_1D8D75668(v13, v15);
    v11 = v3;
    v12 = v4;
  }

  sub_1D8FD9104(v11, v12);

  free(v2);
}

uint64_t sub_1D8FD8F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = ~a2;
  [v3 willChangeValueForKey_];
  if (v6)
  {
    sub_1D91765CC();
    swift_allocObject();
    sub_1D8F95C9C(a1, v4);
    sub_1D91765BC();
    sub_1D8F993C0();
    v7 = sub_1D91765AC();
    v9 = v8;

    sub_1D8FD9104(a1, v4);
    sub_1D8D752C4(v7, v9);
    v10 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    sub_1D8D7567C(v7, v9);
  }

  else
  {
    v10 = 0;
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  [v3 setPrimitiveValue:v10 forKey:@"episodeUserFilter"];
  swift_unknownObjectRelease();
  [v3 didChangeValueForKey_];
  return sub_1D8D75668(v7, v9);
}

uint64_t sub_1D8FD9104(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8F95794(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8FD9118(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8F95C9C(a1, a2);
  }

  return a1;
}

void static MTPodcast.recalculateAvailabilityDates(in:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() predicateForEpisodesWithUnsatisfiedAvailabilityDate];
  sub_1D8FD43E4();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v7 setPredicate_];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = a2;
  v8[5] = a3;
  v12[4] = sub_1D8FD946C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_57;
  v9 = _Block_copy(v12);
  v10 = a1;
  v11 = v7;
  sub_1D8E8CDBC(a2, a3);

  [v10 performBlock_];
  _Block_release(v9);
}

void sub_1D8FD9298(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v5 = sub_1D917908C();
  v6 = sub_1D8FBF204(v5);

  if (!v6)
  {
    goto LABEL_17;
  }

  v17 = a1;
  if (v6 >> 62)
  {
    v7 = sub_1D917935C();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1DA72AA90](i, v6);
        }

        else
        {
          v11 = *(v6 + 8 * i + 32);
        }

        v10 = v11;
        [v11 resolveAvailabilityDate];
        v12 = [v10 podcast];
        if (v12)
        {
          v13 = v12;
          [v12 latestEpisodeAvailabilityTime];
          v15 = v14;
          [v10 firstTimeAvailable];
          if (v15 < v16)
          {
            [v10 firstTimeAvailable];
            [v13 setLatestEpisodeAvailabilityTime_];
            v9 = v10;
            v10 = v13;
          }

          else
          {
            v9 = v13;
          }
        }
      }
    }
  }

  [v17 saveInCurrentBlock];
LABEL_17:
  if (a3)
  {
    a3();
  }
}

void MTPodcast.shouldBeDeleted.getter()
{
  v1 = v0;
  v2 = [v0 episodes];
  if (!v2)
  {
LABEL_25:
    [v1 subscribed];
    return;
  }

  v3 = v2;
  sub_1D8FD43E4();
  sub_1D8FD7BFC();
  v4 = sub_1D9178A9C();

  v19 = v0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D9178B3C();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
    v6 = v4;
  }

  v18 = v7;
  v13 = (v7 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_1D917938C() || (swift_dynamicCast(), (v16 = v20) == 0))
    {
LABEL_21:
      sub_1D8D1B144(v6);

LABEL_24:
      v1 = v19;
      goto LABEL_25;
    }

LABEL_19:
    if ([v16 isBookmarked])
    {
      sub_1D8D1B144(v6);

      goto LABEL_24;
    }

    v17 = [v16 isDownloaded];

    if (v17)
    {
      goto LABEL_21;
    }
  }

  v14 = v8;
  v15 = v9;
  if (v9)
  {
LABEL_15:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v5 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall MTPodcast.calculateNewEpisodeCount(in:serialShowsUseExperimentalRules:)(NSManagedObjectContext *in, Swift::Bool serialShowsUseExperimentalRules)
{
  v5 = objc_opt_self();
  v6 = [v2 showTypeInFeed];
  v7 = [v5 showTypeFromString_];

  if (v7 != 1 && serialShowsUseExperimentalRules)
  {
    v8 = &selRef_calculateSerialNewEpisodeCountIn_;
  }

  else
  {
    v8 = &selRef_calculateEpisodicNewEpisodeCountIn_;
  }

  v9 = *v8;

  [v2 v9];
}

id sub_1D8FD98CC()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v75 - v11;
  v13 = [v1 uuid];
  if (!v13 || (v13, sub_1D9176CDC(), v15 = v14, [v1 lastDatePlayed], v16 + 2592000.0 < v15))
  {
    [v1 setNewEpisodesCount_];

    return [v1 setNewTrailersCount_];
  }

  [v1 lastDatePlayed];
  sub_1D9176CBC();
  sub_1D9176E2C();
  v86 = v8;
  sub_1D9176D7C();
  v18 = *(v3 + 8);
  v84 = v3 + 8;
  v85 = v2;
  v83 = v18;
  v18(v5, v2);
  v19 = [v1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D918A530;
  v21 = sub_1D917820C();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1D8D34978();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v20 + 104) = sub_1D8FDA6DC();
  *(v20 + 72) = v19;
  v24 = v19;
  v25 = sub_1D9178C8C();

  v26 = objc_opt_self();
  v27 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v28 = [v26 predicateForEpisodesPublishedAfterDate_];

  v82 = v25;
  v29 = [v25 AND_];

  v30 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"firstTimeAvailable" ascending:0];
  v31 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v81 = v29;
  [v31 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D9189070;
  *(v32 + 32) = v30;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v33 = v30;
  v34 = sub_1D91785DC();

  [v31 setSortDescriptors_];

  [v31 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v35 = sub_1D917908C();
  v47 = v35;
  if (!(v35 >> 62))
  {
    v48 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v48;
    if (v48)
    {
      goto LABEL_12;
    }

LABEL_42:
    v51 = v81;
    goto LABEL_43;
  }

LABEL_41:
  v71 = sub_1D917935C();
  v72 = sub_1D917935C();
  v49 = v71;
  v48 = v72;
  if (!v72)
  {
    goto LABEL_42;
  }

LABEL_12:
  v76 = v49;
  if ((v47 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x1DA72AA90](0, v47);
  }

  else
  {
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_48;
    }

    v50 = *(v47 + 32);
  }

  v77 = v50;
  if (v76 <= 9)
  {
    v79 = v47 & 0xC000000000000001;
    v52 = v77;
    [v77 pubDate];
    v54 = v53;
    sub_1D9176CCC();
    v56 = v55;
    [v1 lastDatePlayed];
    v58 = v57;
    [v52 pubDate];
    if (v59 < v58 || v54 < v56)
    {

      goto LABEL_44;
    }

    if (v76 < 1)
    {

      v69 = v85;
      v70 = v83;
      v83(v86, v85);
      v70(v12, v69);
      v64 = 0;
      v68 = 0;
      goto LABEL_38;
    }

    v80 = v33;
    v33 = 0;
    v87 = MEMORY[0x1E69E7CC0];
    v75 = v47 & 0xFFFFFFFFFFFFFF8;
    v60 = v79;
    v78 = v1;
    do
    {
      if (v60)
      {
        v61 = MEMORY[0x1DA72AA90](v33, v47);
      }

      else
      {
        if (v33 >= *(v75 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v61 = *(v47 + 8 * v33 + 32);
      }

      v62 = v61;
      v63 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        swift_once();
        v36 = sub_1D917744C();
        __swift_project_value_buffer(v36, qword_1EDCD0F88);
        v37 = v48;
        v38 = sub_1D917741C();
        v39 = sub_1D9178CFC();

        v40 = os_log_type_enabled(v38, v39);
        v41 = v85;
        if (v40)
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          v44 = v48;
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v42 + 4) = v45;
          *v43 = v45;
          _os_log_impl(&dword_1D8CEC000, v38, v39, "Failed to fetch newest episodes with error: %@", v42, 0xCu);
          sub_1D8E262AC(v43);
          MEMORY[0x1DA72CB90](v43, -1, -1);
          MEMORY[0x1DA72CB90](v42, -1, -1);
        }

        v46 = v83;
        v83(v86, v41);
        v46(v12, v41);
        goto LABEL_45;
      }

      if ([v61 &selRef_numberWithUnsignedInt_ + 2])
      {
        sub_1D917959C();
        sub_1D91795DC();
        v1 = v78;
        sub_1D91795EC();
        sub_1D91795AC();
        v60 = v79;
      }

      else
      {
      }

      ++v33;
    }

    while (v63 != v48);

    if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x4000000000000000) == 0)
    {
      v64 = *(v87 + 16);
      goto LABEL_34;
    }

LABEL_48:
    v64 = sub_1D917935C();
LABEL_34:
    v65 = v85;
    v66 = v86;
    v67 = v83;

    v67(v66, v65);
    result = (v67)(v12, v65);
    if (v64 == v76)
    {
      v68 = 0;
      v64 = v76;
    }

    else
    {
      v68 = v76 - v64;
      if (__OFSUB__(v76, v64))
      {
        __break(1u);
        return result;
      }
    }

LABEL_38:
    [v1 setNewEpisodesCount_];
    return [v1 setNewTrailersCount_];
  }

  v51 = v33;
  v33 = v77;
LABEL_43:

LABEL_44:
  v73 = v85;
  v74 = v83;
  v83(v86, v85);
  v74(v12, v73);
LABEL_45:
  [v1 setNewEpisodesCount_];
  return [v1 setNewTrailersCount_];
}

id sub_1D8FDA2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 uuid];
  if (v9)
  {
    v10 = v9;
    v29 = v4;
    [v2 lastDatePlayed];
    sub_1D9176CBC();
    v11 = objc_opt_self();
    v12 = [v11 predicateForAllEpisodesOnPodcastUuid_];

    v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v14 = [v11 predicateForEpisodesPublishedAfterDate_];

    v15 = [v12 AND_];
    v16 = [a1 countOfObjectsInEntity:@"MTEpisode" predicate:v15];
    [v2 lastDatePlayed];
    if (v17 == 0.0)
    {
      (*(v5 + 8))(v8, v29);

      [v2 setNewEpisodesCount_];
      return [v2 setNewTrailersCount_];
    }

    v27 = v16;
    v28 = a1;
    if (v16)
    {
      v19 = [v11 predicateForEpisodeType_];
      v20 = [v15 AND_];

      v21 = @"MTEpisode";
      v22 = v20;
      v23 = [v28 countOfObjectsInEntity:v21 predicate:v22];

      result = (*(v5 + 8))(v8, v29);
      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      v24 = v27;
      if (v23 != v27)
      {
        v25 = &v27[-v23];
        if (v27 >= v23)
        {
          if ((v25 & 0x8000000000000000) == 0)
          {
            v24 = v23;
LABEL_15:
            [v2 setNewEpisodesCount_];
            return [v2 setNewTrailersCount_];
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      (*(v5 + 8))(v8, v29);

      v24 = 0;
    }

    v25 = 0;
    goto LABEL_15;
  }

  [v2 setNewEpisodesCount_];

  return [v2 setNewTrailersCount_];
}