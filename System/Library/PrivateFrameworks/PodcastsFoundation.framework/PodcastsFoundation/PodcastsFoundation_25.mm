uint64_t sub_1D8F9C028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8F9C080(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for EpisodeListType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EpisodeListType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8F9C210()
{
  result = qword_1ECAB7FC8;
  if (!qword_1ECAB7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FC8);
  }

  return result;
}

unint64_t sub_1D8F9C268()
{
  result = qword_1ECAB7FD0;
  if (!qword_1ECAB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FD0);
  }

  return result;
}

unint64_t sub_1D8F9C2C0()
{
  result = qword_1ECAB7FD8;
  if (!qword_1ECAB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FD8);
  }

  return result;
}

unint64_t sub_1D8F9C318()
{
  result = qword_1ECAB7FE0;
  if (!qword_1ECAB7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FE0);
  }

  return result;
}

unint64_t sub_1D8F9C370()
{
  result = qword_1ECAB7FE8;
  if (!qword_1ECAB7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FE8);
  }

  return result;
}

unint64_t sub_1D8F9C3C8()
{
  result = qword_1ECAB7FF0;
  if (!qword_1ECAB7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FF0);
  }

  return result;
}

unint64_t sub_1D8F9C420()
{
  result = qword_1ECAB7FF8;
  if (!qword_1ECAB7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FF8);
  }

  return result;
}

unint64_t sub_1D8F9C478()
{
  result = qword_1ECAB8000;
  if (!qword_1ECAB8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8000);
  }

  return result;
}

unint64_t sub_1D8F9C4D0()
{
  result = qword_1ECAB8008;
  if (!qword_1ECAB8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8008);
  }

  return result;
}

unint64_t sub_1D8F9C528()
{
  result = qword_1ECAB8010;
  if (!qword_1ECAB8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8010);
  }

  return result;
}

unint64_t sub_1D8F9C580()
{
  result = qword_1ECAB8018;
  if (!qword_1ECAB8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8018);
  }

  return result;
}

unint64_t sub_1D8F9C5D8()
{
  result = qword_1ECAB8020;
  if (!qword_1ECAB8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8020);
  }

  return result;
}

unint64_t sub_1D8F9C630()
{
  result = qword_1ECAB8028;
  if (!qword_1ECAB8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8028);
  }

  return result;
}

unint64_t sub_1D8F9C688()
{
  result = qword_1ECAB8030;
  if (!qword_1ECAB8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8030);
  }

  return result;
}

unint64_t sub_1D8F9C6E0()
{
  result = qword_1ECAB8038;
  if (!qword_1ECAB8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8038);
  }

  return result;
}

unint64_t sub_1D8F9C734()
{
  result = qword_1ECAB80D8;
  if (!qword_1ECAB80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB80D8);
  }

  return result;
}

uint64_t sub_1D8F9C788(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4B70, &qword_1D918C4A0);
    sub_1D8F9C824(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8F9C824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8F9C888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F69647561;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 0x6C616E7265747865;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69647561;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F9C97C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F9CA18(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F9CAA0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F9CB38@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::EpisodeMediaType_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation16EpisodeMediaTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D8F9CB68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D8F9CBD8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8F9CD5C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EpisodeMediaType.encode(to:)(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t _s18PodcastsFoundation16EpisodeMediaTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D8F9CD5C(void *a1)
{
  v3 = sub_1D917950C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v8 = sub_1D9179ADC();
    v11 = v8;
    v12 = v9;
    v13 = v8 == 0x6F69647561 && v9 == 0xE500000000000000;
    if (v13 || (sub_1D9179ACC() & 1) != 0)
    {

      v7 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v7;
    }

    if (v11 == 0x6F65646976 && v12 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      v7 = 1;
      goto LABEL_12;
    }

    if (v11 == 0x6C616E7265747865 && v12 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0 || v11 == 0x746E656D75636F64 && v12 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      v7 = 2;
      goto LABEL_12;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D9179ECC();
    strcpy(v18, "Unknown case ");
    v18[7] = -4864;
    MEMORY[0x1DA7298F0](v11, v12);

    sub_1D91794FC();
    v7 = sub_1D917951C();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v15 = &type metadata for EpisodeMediaType;
    (*(v4 + 16))(&v15[v16], v6, v3);
    (*(*(v7 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1D8F9D104()
{
  result = qword_1ECAB80F8;
  if (!qword_1ECAB80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB80F8);
  }

  return result;
}

uint64_t sub_1D8F9D16C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EpisodeSortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EpisodeSortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8F9D1F4()
{
  v1 = *v0;
  sub_1D9179DBC();
  EpisodeSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F9D258(uint64_t a1)
{
  EpisodeSortType.rawValue.getter(*v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F9D2AC(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  EpisodeSortType.rawValue.getter(v2);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F9D30C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t EpisodeSortType.ascendingSortType.getter(uint64_t result)
{
  if (result <= 9u && ((0x285u >> result) & 1) != 0)
  {
    return byte_1D919E586[result];
  }

  return result;
}

uint64_t EpisodeSortType.baseSortType.getter(uint64_t result)
{
  if (result - 1) <= 9u && ((0x285u >> (result - 1)))
  {
    return byte_1D919E590[(result - 1)];
  }

  return result;
}

Swift::Bool __swiftcall EpisodeSortType.baseSortTypeMatches(other:)(PodcastsFoundation::EpisodeSortType other)
{
  v2 = other;
  if (v1 - 1) <= 9u && ((0x285u >> (v1 - 1)))
  {
    v1 = byte_1D919E590[(v1 - 1)];
  }

  if (other - 1) <= 9u && ((0x285u >> (other - 1)))
  {
    v2 = byte_1D919E590[(other - 1)];
  }

  v3 = EpisodeSortType.rawValue.getter(v1);
  v5 = v4;
  if (v3 == EpisodeSortType.rawValue.getter(v2) && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t EpisodeSortType.playDescriptors.getter(char a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
    goto LABEL_5;
  }

  if (a1 == 4)
  {
    v1 = [objc_opt_self() seasonSortDescriptors_];
LABEL_5:
    v2 = v1;
    sub_1D8D28BC8();
    v3 = sub_1D91785FC();

    return v3;
  }

  return EpisodeSortType.descriptors.getter(a1);
}

unint64_t _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D9179C6C();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8F9D638()
{
  result = qword_1ECAB8100;
  if (!qword_1ECAB8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8100);
  }

  return result;
}

uint64_t EpisodeType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73756E6F62;
  }

  if (a1 == 1)
  {
    return 1819047270;
  }

  return 0x72656C69617274;
}

uint64_t sub_1D8F9D6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047270;
  if (v2 != 1)
  {
    v4 = 0x72656C69617274;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73756E6F62;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1819047270;
  if (*a2 != 1)
  {
    v8 = 0x72656C69617274;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73756E6F62;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F9D7DC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F9D874(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F9D8F8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F9D98C@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::EpisodeType_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation11EpisodeTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D8F9D9BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047270;
  if (v2 != 1)
  {
    v5 = 0x72656C69617274;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73756E6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s18PodcastsFoundation11EpisodeTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D8F9DB10()
{
  result = qword_1ECAB8108;
  if (!qword_1ECAB8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8108);
  }

  return result;
}

unint64_t sub_1D8F9DB74()
{
  result = qword_1EDCD5768[0];
  if (!qword_1EDCD5768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5768);
  }

  return result;
}

BOOL EpisodeUserFilter.skipsTrailersDuringPlayback.getter(uint64_t a1, uint64_t a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3)
  {
    v4 = v2 >= 2;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

id EpisodeUserFilter.basePredicate.getter(uint64_t a1, uint64_t a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v4 = [objc_opt_self() predicateForAllBookmarkedEpisodes];
      }

      else if (v2 == 4)
      {
        v4 = [objc_opt_self() predicateForVisuallyPlayed_];
      }

      else
      {
        v4 = [objc_opt_self() predicateForSubscriptionOnly];
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v4 = [objc_opt_self() predicateForVisuallyPlayed_];
      }

      else
      {
        v4 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
      }
    }

    else
    {
      v4 = [objc_opt_self() truePredicate];
    }
  }

  else
  {
    v4 = [objc_opt_self() predicateForSeasonNumber_];
  }

  return v4;
}

BOOL static EpisodeUserFilter.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        v4 = *(a1 + 16);
        v5 = *(a3 + 16);
        v6 = *(a3 + 24);
        v7 = *(a1 + 24);
        sub_1D8F95C9C(v5, v6);
        LOBYTE(v4) = static EpisodeUserFilter.== infix(_:_:)(v4, v7, v5, v6);
        sub_1D8F95794(v5, v6);
        return v4 & 1;
      }

      return 0;
    }

    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (a4 != 2 || a3 != 3)
        {
          return 0;
        }
      }

      else if (a1 == 4)
      {
        if (a4 != 2 || a3 != 4)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 5)
      {
        return 0;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        if (a4 != 2 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }
}

uint64_t EpisodeUserFilter.title.getter(uint64_t a1, uint64_t a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v3 = v2;
  if (v4)
  {
    if (v2 > 2)
    {
      if (v2 == 4)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v2)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }

      if (v2 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_17:
    swift_once();
    return sub_1D917693C();
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7360];
  *(v5 + 16) = xmmword_1D9189080;
  v7 = MEMORY[0x1E69E73D8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  v8 = sub_1D91781DC();

  return v8;
}

uint64_t sub_1D8F9E128(uint64_t a1)
{
  v2 = sub_1D8F9FD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E164(uint64_t a1)
{
  v2 = sub_1D8F9FD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E1A0(uint64_t a1)
{
  v2 = sub_1D8F9FC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E1DC(uint64_t a1)
{
  v2 = sub_1D8F9FC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E218()
{
  v1 = *v0;
  v2 = 0x6E6F73616573;
  v3 = 0x6269726373627573;
  if (v1 != 6)
  {
    v3 = 0x657461647075;
  }

  v4 = 0x6B72616D6B6F6F62;
  if (v1 != 4)
  {
    v4 = 0x646579616C70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646579616C706E75;
  if (v1 != 2)
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v2 = 0x6F736970456C6C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8F9E320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FA051C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F9E348(uint64_t a1)
{
  v2 = sub_1D8F9FAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E384(uint64_t a1)
{
  v2 = sub_1D8F9FAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E3C0(uint64_t a1)
{
  v2 = sub_1D8F9FC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E3FC(uint64_t a1)
{
  v2 = sub_1D8F9FC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E438(uint64_t a1)
{
  v2 = sub_1D8F9FBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E474(uint64_t a1)
{
  v2 = sub_1D8F9FBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E4BC(uint64_t a1)
{
  v2 = sub_1D8F9FD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E4F8(uint64_t a1)
{
  v2 = sub_1D8F9FD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E534(uint64_t a1)
{
  v2 = sub_1D8F9FB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E570(uint64_t a1)
{
  v2 = sub_1D8F9FB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E5AC(uint64_t a1)
{
  v2 = sub_1D8F9FCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E5E8(uint64_t a1)
{
  v2 = sub_1D8F9FCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8F9E624(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8F9E6A4(uint64_t a1)
{
  v2 = sub_1D8F9FB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E6E0(uint64_t a1)
{
  v2 = sub_1D8F9FB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeUserFilter.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v58 = a3;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8110, &qword_1D919E6C8);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8118, &qword_1D919E6D0);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8120, &qword_1D919E6D8);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8128, &qword_1D919E6E0);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8130, &qword_1D919E6E8);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v39 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8138, &qword_1D919E6F0);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8140, &qword_1D919E6F8);
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8148, &qword_1D919E700);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8150, &qword_1D919E708);
  v23 = *(v22 - 8);
  v60 = v22;
  v61 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F9FAE8();
  sub_1D9179F1C();
  if (!v58)
  {
    LOBYTE(v62) = 0;
    sub_1D8F9FD88();
    v32 = v60;
    sub_1D917993C();
    sub_1D9179A0C();
    (*(v19 + 8))(v21, v18);
    return (*(v61 + 8))(v25, v32);
  }

  if (v58 == 1)
  {
    v26 = *(v59 + 16);
    v27 = *(v59 + 24);
    LOBYTE(v62) = 7;
    sub_1D8F95C9C(v26, v27);
    sub_1D8F9FB3C();
    v28 = v55;
    v29 = v60;
    sub_1D917993C();
    v62 = v26;
    v63 = v27;
    sub_1D8F993C0();
    v30 = v57;
    sub_1D91799FC();
    (*(v56 + 8))(v28, v30);
    (*(v61 + 8))(v25, v29);
    return sub_1D8F95794(v26, v27);
  }

  if (v59 > 2)
  {
    if (v59 == 3)
    {
      LOBYTE(v62) = 4;
      sub_1D8F9FC38();
      v35 = v46;
      v34 = v60;
      sub_1D917993C();
      v37 = v47;
      v36 = v48;
    }

    else if (v59 == 4)
    {
      LOBYTE(v62) = 5;
      sub_1D8F9FBE4();
      v35 = v49;
      v34 = v60;
      sub_1D917993C();
      v37 = v50;
      v36 = v51;
    }

    else
    {
      LOBYTE(v62) = 6;
      sub_1D8F9FB90();
      v35 = v52;
      v34 = v60;
      sub_1D917993C();
      v37 = v53;
      v36 = v54;
    }

    goto LABEL_16;
  }

  if (!v59)
  {
    LOBYTE(v62) = 1;
    sub_1D8F9FD34();
    v38 = v60;
    sub_1D917993C();
    (*(v39 + 8))(v17, v15);
    return (*(v61 + 8))(v25, v38);
  }

  if (v59 != 1)
  {
    LOBYTE(v62) = 3;
    sub_1D8F9FC8C();
    v35 = v43;
    v34 = v60;
    sub_1D917993C();
    v37 = v44;
    v36 = v45;
LABEL_16:
    (*(v37 + 8))(v35, v36);
    return (*(v61 + 8))(v25, v34);
  }

  LOBYTE(v62) = 2;
  sub_1D8F9FCE0();
  v33 = v40;
  v34 = v60;
  sub_1D917993C();
  (*(v41 + 8))(v33, v42);
  return (*(v61 + 8))(v25, v34);
}

uint64_t EpisodeUserFilter.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 24);
      MEMORY[0x1DA72B390](7);
      sub_1D8F95C9C(v4, v5);
      EpisodeUserFilter.hash(into:)(a1, v4, v5);

      return sub_1D8F95794(v4, v5);
    }

    else
    {
      if (a2 > 2)
      {
        if (a2 == 3)
        {
          v8 = 4;
        }

        else if (a2 == 4)
        {
          v8 = 5;
        }

        else
        {
          v8 = 6;
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 1;
      }

      return MEMORY[0x1DA72B390](v8);
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t EpisodeUserFilter.hashValue.getter(uint64_t a1, char a2)
{
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v5, a1, a2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F118()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v4, v1, v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F174(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v5, v2, v3);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F1C0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FA07B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t EpisodeUserFilter.canonical.getter(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2 == 1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    sub_1D8F95C9C(v3, v4);
    v2 = EpisodeUserFilter.canonical.getter(v3, v4);
    sub_1D8F95794(v3, v4);
  }

  else
  {
    sub_1D8F95C9C(a1, a2);
  }

  return v2;
}

Swift::String __swiftcall EpisodeUserFilter.shelfTitle(hidesPlayedEpisodes:)(Swift::Bool hidesPlayedEpisodes)
{
  v3 = v2;
  v4 = v1;
  v6 = EpisodeUserFilter.canonical.getter(v1, v2);
  if (v7 != 2 || v6 != 0)
  {
    sub_1D8F95794(v6, v7);
LABEL_7:

    v9 = EpisodeUserFilter.title.getter(v4, v3);
    goto LABEL_13;
  }

  if (hidesPlayedEpisodes)
  {
    goto LABEL_7;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917693C();
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t EpisodeUserFilter.emptyMessage.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v3 = v2;
  if (v4)
  {
    if (v2 > 2)
    {
      if (v2 == 4)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v2)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }

      if (v2 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_17:
    swift_once();
    return sub_1D917693C();
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7360];
  *(v5 + 16) = xmmword_1D9189080;
  v7 = MEMORY[0x1E69E73D8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  v8 = sub_1D91781DC();

  return v8;
}

uint64_t EpisodeUserFilter.symbolName.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3 != 2)
  {
    goto LABEL_10;
  }

  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return 0x6B72616D6B6F6F62;
      case 4:
        return 0xD000000000000010;
      case 5:
        return 0;
    }

LABEL_10:
    sub_1D8F95794(v2, v3);
    return 0;
  }

  if (!v2)
  {
    return 0xD000000000000012;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      return 0x6F642E776F727261;
    }

    goto LABEL_10;
  }

  return 0x656C63726963;
}

uint64_t static EpisodeUserFilter.defaultFilter(seasonToShow:hidesPlayedEpisodes:)(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    return a3 & 1;
  }

  return result;
}

char *static EpisodeUserFilter.allAvailableFilters(seasonNumbers:hasBookmarkedEpisodes:hasSubscriberEpisodes:)(char *a1, char a2, char a3)
{
  v20 = a1;
  v21 = MEMORY[0x1E69E7CC0];

  sub_1D8D48E60(&v20);
  v5 = v20;
  v6 = *(v20 + 2);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 <= *(v5 + 2))
    {
      v8 = *&v5[8 * v6 + 24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D8ECD008(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1D8ECD008((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v8;
      v11[40] = 0;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:

    v21 = v7;
  }

  else
  {
  }

  sub_1D8E2FF44(&unk_1F5460F28);
  v12 = v21;
  if (a2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECD008(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1D8ECD008((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    *(v15 + 4) = 3;
    v15[40] = 2;
  }

  if (a3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECD008(0, *(v12 + 2) + 1, 1, v12);
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      v12 = sub_1D8ECD008((v16 > 1), v17 + 1, 1, v12);
    }

    *(v12 + 2) = v17 + 1;
    v18 = &v12[16 * v17];
    *(v18 + 4) = 5;
    v18[40] = 2;
  }

  return v12;
}

BOOL sub_1D8F9F9D0(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v4 = v3;
  if (v3)
  {
    sub_1D8F95794(v2, v3);
  }

  return v4 == 0;
}

uint64_t EpisodeUserFilter.flipUpdateState.getter(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1D8F95C9C(v2, v3);
    v4 = EpisodeUserFilter.canonical.getter(v2, v3);
    sub_1D8F95794(v2, v3);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    sub_1D8F95C9C(a1, a2);
  }

  return v4;
}

unint64_t sub_1D8F9FAE8()
{
  result = qword_1ECAB8158;
  if (!qword_1ECAB8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8158);
  }

  return result;
}

unint64_t sub_1D8F9FB3C()
{
  result = qword_1ECAB8160;
  if (!qword_1ECAB8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8160);
  }

  return result;
}

unint64_t sub_1D8F9FB90()
{
  result = qword_1ECAB8168;
  if (!qword_1ECAB8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8168);
  }

  return result;
}

unint64_t sub_1D8F9FBE4()
{
  result = qword_1ECAB8170;
  if (!qword_1ECAB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8170);
  }

  return result;
}

unint64_t sub_1D8F9FC38()
{
  result = qword_1ECAB8178;
  if (!qword_1ECAB8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8178);
  }

  return result;
}

unint64_t sub_1D8F9FC8C()
{
  result = qword_1ECAB8180;
  if (!qword_1ECAB8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8180);
  }

  return result;
}

unint64_t sub_1D8F9FCE0()
{
  result = qword_1ECAB8188;
  if (!qword_1ECAB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8188);
  }

  return result;
}

unint64_t sub_1D8F9FD34()
{
  result = qword_1ECAB8190;
  if (!qword_1ECAB8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8190);
  }

  return result;
}

unint64_t sub_1D8F9FD88()
{
  result = qword_1ECAB8198;
  if (!qword_1ECAB8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8198);
  }

  return result;
}

void sub_1D8F9FDDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D8F5DE20(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D8FA0328((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_1D8ECC734((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_1D8FA0328((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1D8FA0328(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8FA051C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F736970456C6C61 && a2 == 0xEB00000000736564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646579616C706E75 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646579616C70 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000007265 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8FA07B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8250, &qword_1D919F050);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8258, &qword_1D919F058);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8260, &qword_1D919F060);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8268, &qword_1D919F068);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8270, &qword_1D919F070);
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v64 = &v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8278, &qword_1D919F078);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v63 = &v46 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8280, &qword_1D919F080);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8288, &qword_1D919F088);
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8290, &unk_1D919F090);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  v22 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8F9FAE8();
  v23 = v69;
  sub_1D9179EEC();
  if (!v23)
  {
    v46 = v17;
    v47 = v14;
    v25 = v66;
    v24 = v67;
    v26 = v68;
    v69 = v19;
    v27 = sub_1D917991C();
    v28 = (2 * *(v27 + 16)) | 1;
    v71 = v27;
    v72 = v27 + 32;
    v73 = 0;
    v74 = v28;
    v29 = sub_1D8E87EBC();
    if (v29 == 8 || v73 != v74 >> 1)
    {
      v32 = v21;
      v33 = v18;
      v18 = sub_1D917951C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
      *v35 = &type metadata for EpisodeUserFilter;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v18 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      (*(v69 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else if (v29 > 3u)
    {
      if (v29 > 5u)
      {
        v40 = v69;
        if (v29 == 6)
        {
          v75 = 6;
          sub_1D8F9FB90();
          sub_1D917982C();
          (*(v59 + 8))(v26, v60);
          (*(v40 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v18 = 5;
        }

        else
        {
          v75 = 7;
          sub_1D8F9FB3C();
          v43 = v65;
          sub_1D917982C();
          v44 = v18;
          v18 = swift_allocObject();
          sub_1D8F9C734();
          v45 = v62;
          sub_1D91798FC();
          (*(v61 + 8))(v43, v45);
          (*(v40 + 8))(v21, v44);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v37 = v69;
        if (v29 == 4)
        {
          v75 = 4;
          sub_1D8F9FC38();
          sub_1D917982C();
          (*(v56 + 8))(v25, v55);
          (*(v37 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v18 = 3;
        }

        else
        {
          v75 = 5;
          sub_1D8F9FBE4();
          sub_1D917982C();
          (*(v57 + 8))(v24, v58);
          (*(v37 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v18 = 4;
        }
      }
    }

    else if (v29 > 1u)
    {
      v38 = v69;
      if (v29 == 2)
      {
        v75 = 2;
        sub_1D8F9FCE0();
        v39 = v63;
        sub_1D917982C();
        (*(v52 + 8))(v39, v49);
        (*(v38 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v18 = 1;
      }

      else
      {
        v75 = 3;
        sub_1D8F9FC8C();
        v42 = v64;
        sub_1D917982C();
        (*(v54 + 8))(v42, v53);
        (*(v38 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v18 = 2;
      }
    }

    else if (v29)
    {
      v75 = 1;
      sub_1D8F9FD34();
      v41 = v47;
      sub_1D917982C();
      (*(v50 + 8))(v41, v51);
      (*(v69 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v75 = 0;
      sub_1D8F9FD88();
      v30 = v46;
      sub_1D917982C();
      v31 = v18;
      v18 = sub_1D917990C();
      (*(v48 + 8))(v30, v15);
      (*(v69 + 8))(v21, v31);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  return v18;
}

unint64_t sub_1D8FA13C4()
{
  result = qword_1ECAB81A0;
  if (!qword_1ECAB81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81A0);
  }

  return result;
}

unint64_t sub_1D8FA14BC()
{
  result = qword_1ECAB81A8;
  if (!qword_1ECAB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81A8);
  }

  return result;
}

unint64_t sub_1D8FA1514()
{
  result = qword_1ECAB81B0;
  if (!qword_1ECAB81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81B0);
  }

  return result;
}

unint64_t sub_1D8FA156C()
{
  result = qword_1ECAB81B8;
  if (!qword_1ECAB81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81B8);
  }

  return result;
}

unint64_t sub_1D8FA15C4()
{
  result = qword_1ECAB81C0;
  if (!qword_1ECAB81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81C0);
  }

  return result;
}

unint64_t sub_1D8FA161C()
{
  result = qword_1ECAB81C8;
  if (!qword_1ECAB81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81C8);
  }

  return result;
}

unint64_t sub_1D8FA1674()
{
  result = qword_1ECAB81D0;
  if (!qword_1ECAB81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81D0);
  }

  return result;
}

unint64_t sub_1D8FA16CC()
{
  result = qword_1ECAB81D8;
  if (!qword_1ECAB81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81D8);
  }

  return result;
}

unint64_t sub_1D8FA1724()
{
  result = qword_1ECAB81E0;
  if (!qword_1ECAB81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81E0);
  }

  return result;
}

unint64_t sub_1D8FA177C()
{
  result = qword_1ECAB81E8;
  if (!qword_1ECAB81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81E8);
  }

  return result;
}

unint64_t sub_1D8FA17D4()
{
  result = qword_1ECAB81F0;
  if (!qword_1ECAB81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81F0);
  }

  return result;
}

unint64_t sub_1D8FA182C()
{
  result = qword_1ECAB81F8;
  if (!qword_1ECAB81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81F8);
  }

  return result;
}

unint64_t sub_1D8FA1884()
{
  result = qword_1ECAB8200;
  if (!qword_1ECAB8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8200);
  }

  return result;
}

unint64_t sub_1D8FA18DC()
{
  result = qword_1ECAB8208;
  if (!qword_1ECAB8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8208);
  }

  return result;
}

unint64_t sub_1D8FA1934()
{
  result = qword_1ECAB8210;
  if (!qword_1ECAB8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8210);
  }

  return result;
}

unint64_t sub_1D8FA198C()
{
  result = qword_1ECAB8218;
  if (!qword_1ECAB8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8218);
  }

  return result;
}

unint64_t sub_1D8FA19E4()
{
  result = qword_1ECAB8220;
  if (!qword_1ECAB8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8220);
  }

  return result;
}

unint64_t sub_1D8FA1A3C()
{
  result = qword_1ECAB8228;
  if (!qword_1ECAB8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8228);
  }

  return result;
}

unint64_t sub_1D8FA1A94()
{
  result = qword_1ECAB8230;
  if (!qword_1ECAB8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8230);
  }

  return result;
}

unint64_t sub_1D8FA1AEC()
{
  result = qword_1ECAB8238;
  if (!qword_1ECAB8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8238);
  }

  return result;
}

unint64_t sub_1D8FA1B44()
{
  result = qword_1ECAB8240;
  if (!qword_1ECAB8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8240);
  }

  return result;
}

unint64_t sub_1D8FA1B9C()
{
  result = qword_1ECAB8248;
  if (!qword_1ECAB8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8248);
  }

  return result;
}

Swift::Int64 sub_1D8FA1BFC(void *a1)
{
  v2 = MTPodcastHidesPlayedEpisodesResolved([a1 hidesPlayedEpisodes]);
  v3 = MTPodcast.episodeUserFilter.getter();
  if (v4 == -1)
  {
    v7 = [a1 smartPlayEpisode];
    v10 = MTPodcast.seasonToShow(episodeToPlay:)(v7);
    value = v10.value;
    is_nil = v10.is_nil;

    if (is_nil)
    {
      return v2;
    }

    else
    {
      return value;
    }
  }

  else
  {
    v5 = v3;

    return v5;
  }
}

uint64_t ModelError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FA1D24()
{
  result = qword_1ECAB8298;
  if (!qword_1ECAB8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8298);
  }

  return result;
}

PodcastsFoundation::ShowType_optional __swiftcall ShowType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ShowType_serial;
  }

  else
  {
    v2.value = PodcastsFoundation_ShowType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ShowType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C6169726573;
  }

  else
  {
    return 0x6369646F73697065;
  }
}

uint64_t sub_1D8FA1E10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6169726573;
  }

  else
  {
    v3 = 0x6369646F73697065;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6169726573;
  }

  else
  {
    v5 = 0x6369646F73697065;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D8FA1EB4()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FA1F34(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FA1FA0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8FA201C(char *a2@<X8>)
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

void sub_1D8FA207C(uint64_t *a1@<X8>)
{
  v2 = 0x6369646F73697065;
  if (*v1)
  {
    v2 = 0x6C6169726573;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShowType.mtPodcastShowType.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1D8FA217C()
{
  result = qword_1ECAB82A0;
  if (!qword_1ECAB82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82A0);
  }

  return result;
}

unint64_t sub_1D8FA21E0()
{
  result = qword_1EDCD1298[0];
  if (!qword_1EDCD1298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD1298);
  }

  return result;
}

uint64_t ArtworkAspectRule.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FA22C4()
{
  result = qword_1ECAB82A8;
  if (!qword_1ECAB82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82A8);
  }

  return result;
}

unint64_t ArtworkContent.inMemorySize.getter()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1D9176BCC();
    v11 = String.inMemorySize.getter(v9, v10);

    (*(v3 + 8))(v5, v2);
    return v11;
  }

  result = *v8;
  v13 = v8[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = v8[1];
      sub_1D8D7567C(result, v13);
      return BYTE6(v15);
    }

    goto LABEL_10;
  }

  if (v14 != 2)
  {
    goto LABEL_14;
  }

  v17 = *(result + 16);
  v16 = *(result + 24);
  sub_1D8D7567C(result, v13);
  result = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_10:
    v18 = HIDWORD(result);
    v19 = result;
    result = sub_1D8D7567C(result, v13);
    if (__OFSUB__(v18, v19))
    {
      __break(1u);
      return result;
    }

    result = v18 - v19;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_14:
  sub_1D8D7567C(result, v13);
  return 0;
}

CGImageRef ArtworkContent.cgImage.getter()
{
  v0 = sub_1D8FA253C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v0, 0, 0);

  return ImageAtIndex;
}

CGImageSourceRef sub_1D8FA253C()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_1D9176B1C();
    v10 = CGImageSourceCreateWithURL(v9, 0);

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v10 = CGImageSourceCreateWithData(v13, 0);

    sub_1D8D7567C(v11, v12);
  }

  return v10;
}

uint64_t sub_1D8FA26DC()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1635017060;
  }
}

void sub_1D8FA2708(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8FA27E4(uint64_t a1)
{
  v2 = sub_1D8FA2DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2820(uint64_t a1)
{
  v2 = sub_1D8FA2DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA285C(uint64_t a1)
{
  v2 = sub_1D8FA2E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2898(uint64_t a1)
{
  v2 = sub_1D8FA2E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA28D4(uint64_t a1)
{
  v2 = sub_1D8FA2E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2910(uint64_t a1)
{
  v2 = sub_1D8FA2E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82B0, &qword_1D919F350);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - v3;
  v4 = sub_1D9176C2C();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82B8, &qword_1D919F358);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82C0, &qword_1D919F360);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA2DCC();
  sub_1D9179F1C();
  sub_1D8E55148(v35, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v31;
    v17 = v29;
    v18 = v11;
    v19 = v32;
    (*(v31 + 32))(v29, v18, v32);
    LOBYTE(v36) = 1;
    sub_1D8FA2E20();
    v20 = v30;
    sub_1D917993C();
    sub_1D8EF24D0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB8]);
    v21 = v34;
    sub_1D91799FC();
    (*(v33 + 8))(v20, v21);
    (*(v16 + 8))(v17, v19);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v24 = *v11;
    v23 = v11[1];
    LOBYTE(v36) = 0;
    sub_1D8FA2E74();
    sub_1D917993C();
    v36 = v24;
    v37 = v23;
    sub_1D8FA2EC8();
    v25 = v28;
    sub_1D91799FC();
    (*(v27 + 8))(v8, v25);
    (*(v13 + 8))(v15, v12);
    return sub_1D8D7567C(v24, v23);
  }
}

unint64_t sub_1D8FA2DCC()
{
  result = qword_1ECAB82C8;
  if (!qword_1ECAB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82C8);
  }

  return result;
}

unint64_t sub_1D8FA2E20()
{
  result = qword_1ECAB82D0;
  if (!qword_1ECAB82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82D0);
  }

  return result;
}

unint64_t sub_1D8FA2E74()
{
  result = qword_1ECAB82D8;
  if (!qword_1ECAB82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82D8);
  }

  return result;
}

unint64_t sub_1D8FA2EC8()
{
  result = qword_1ECAB82E0;
  if (!qword_1ECAB82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82E0);
  }

  return result;
}

uint64_t ArtworkContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82E8, &qword_1D919F368);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82F0, &qword_1D919F370);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82F8, &unk_1D919F378);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D8FA2DCC();
  v21 = v51;
  sub_1D9179EEC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  v41 = v16;
  v42 = v19;
  v51 = v13;
  v23 = v49;
  v22 = v50;
  v24 = v48;
  v25 = sub_1D917991C();
  v26 = (2 * *(v25 + 16)) | 1;
  v53 = v25;
  v54 = v25 + 32;
  v55 = 0;
  v56 = v26;
  v27 = sub_1D8E89BE0();
  v28 = v10;
  if (v27 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1D917951C();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
    *v32 = v11;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  if (v27)
  {
    LOBYTE(v52) = 1;
    sub_1D8FA2E20();
    v29 = v22;
    sub_1D917982C();
    sub_1D9176C2C();
    sub_1D8EF24D0(&qword_1ECAB2C98, MEMORY[0x1E6968FD0]);
    v35 = v51;
    v36 = v46;
    sub_1D91798FC();
    (*(v47 + 8))(v29, v36);
    (*(v24 + 8))(v28, v8);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v38 = v35;
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_1D8FA2E74();
    sub_1D917982C();
    sub_1D8FA35A8();
    v34 = v45;
    sub_1D91798FC();
    (*(v44 + 8))(v23, v34);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v37 = v41;
    *v41 = v52;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
  }

  v39 = v42;
  sub_1D8FA3544(v38, v42);
  sub_1D8FA3544(v39, v43);
  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t sub_1D8FA3544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8FA35A8()
{
  result = qword_1ECAB8300;
  if (!qword_1ECAB8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8300);
  }

  return result;
}

unint64_t sub_1D8FA3664()
{
  result = qword_1ECAB8308;
  if (!qword_1ECAB8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8308);
  }

  return result;
}

unint64_t sub_1D8FA36BC()
{
  result = qword_1ECAB8310;
  if (!qword_1ECAB8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8310);
  }

  return result;
}

unint64_t sub_1D8FA3714()
{
  result = qword_1ECAB8318;
  if (!qword_1ECAB8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8318);
  }

  return result;
}

unint64_t sub_1D8FA376C()
{
  result = qword_1ECAB8320;
  if (!qword_1ECAB8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8320);
  }

  return result;
}

unint64_t sub_1D8FA37C4()
{
  result = qword_1ECAB8328;
  if (!qword_1ECAB8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8328);
  }

  return result;
}

unint64_t sub_1D8FA381C()
{
  result = qword_1ECAB8330;
  if (!qword_1ECAB8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8330);
  }

  return result;
}

unint64_t sub_1D8FA3874()
{
  result = qword_1ECAB8338;
  if (!qword_1ECAB8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8338);
  }

  return result;
}

unint64_t sub_1D8FA38CC()
{
  result = qword_1ECAB8340;
  if (!qword_1ECAB8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8340);
  }

  return result;
}

unint64_t sub_1D8FA3924()
{
  result = qword_1ECAB8348;
  if (!qword_1ECAB8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8348);
  }

  return result;
}

_BYTE *static ArtworkCrop.from(_:)@<X0>(_BYTE *result@<X0>, __int16 *a2@<X8>)
{
  switch(*result)
  {
    case 1:
      if (qword_1ECAB2AF8 != -1)
      {
        v13 = a2;
        result = swift_once();
        a2 = v13;
      }

      v2 = &word_1ECAB2B02;
      break;
    case 2:
      if (qword_1ECAB3610 != -1)
      {
        v8 = a2;
        result = swift_once();
        a2 = v8;
      }

      v2 = &word_1ECAFBB60;
      break;
    case 3:
      if (qword_1ECAB3618 != -1)
      {
        v10 = a2;
        result = swift_once();
        a2 = v10;
      }

      v2 = &word_1ECAFBB62;
      break;
    case 4:
      if (qword_1ECAB3620 != -1)
      {
        v5 = a2;
        result = swift_once();
        a2 = v5;
      }

      v2 = &word_1ECAFBB64;
      break;
    case 5:
      if (qword_1ECAB3628 != -1)
      {
        v14 = a2;
        result = swift_once();
        a2 = v14;
      }

      v2 = &word_1ECAFBB66;
      break;
    case 6:
      if (qword_1ECAB2B10 != -1)
      {
        v16 = a2;
        result = swift_once();
        a2 = v16;
      }

      v2 = &word_1ECAFBB40;
      break;
    case 7:
      if (qword_1ECAB3638 != -1)
      {
        v11 = a2;
        result = swift_once();
        a2 = v11;
      }

      v2 = &word_1ECAFBB68;
      break;
    case 8:
      if (qword_1ECAB3640 != -1)
      {
        v18 = a2;
        result = swift_once();
        a2 = v18;
      }

      v2 = &word_1ECAFBB6A;
      break;
    case 9:
      if (qword_1ECAB3648 != -1)
      {
        v7 = a2;
        result = swift_once();
        a2 = v7;
      }

      v2 = &word_1ECAFBB6C;
      break;
    case 0xA:
      if (qword_1ECAB3650 != -1)
      {
        v17 = a2;
        result = swift_once();
        a2 = v17;
      }

      v2 = &word_1ECAFBB6E;
      break;
    case 0xB:
      if (qword_1ECAB3658 != -1)
      {
        v4 = a2;
        result = swift_once();
        a2 = v4;
      }

      v2 = &word_1ECAFBB70;
      break;
    case 0xC:
      if (qword_1ECAB3660 != -1)
      {
        v6 = a2;
        result = swift_once();
        a2 = v6;
      }

      v2 = &word_1ECAFBB72;
      break;
    case 0xD:
      if (qword_1ECAB3668 != -1)
      {
        v15 = a2;
        result = swift_once();
        a2 = v15;
      }

      v2 = &word_1ECAB8354;
      break;
    case 0xE:
      if (qword_1ECAB2B30 != -1)
      {
        v3 = a2;
        result = swift_once();
        a2 = v3;
      }

      v2 = &word_1ECAB2B3E;
      break;
    case 0xF:
      if (qword_1ECAB3678 != -1)
      {
        v9 = a2;
        result = swift_once();
        a2 = v9;
      }

      v2 = &word_1ECAB8358;
      break;
    default:
      if (qword_1EDCD78A0 != -1)
      {
        v12 = a2;
        result = swift_once();
        a2 = v12;
      }

      v2 = &word_1EDCD78A8;
      break;
  }

  *a2 = *v2;
  return result;
}

uint64_t sub_1D8FA3FA8()
{
  if (*v0)
  {
    return 0x4D746E65746E6F63;
  }

  else
  {
    return 0x65646F43706F7263;
  }
}

void sub_1D8FA3FEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEB0000000065646FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8FA40CC(uint64_t a1)
{
  v2 = sub_1D8FA46C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4108(uint64_t a1)
{
  v2 = sub_1D8FA46C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkCrop.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8360, &qword_1D919F760);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-4] - v7;
  sub_1D8CFD9D8(a1, v13);
  sub_1D8FA461C();
  sub_1D8FA4670();
  sub_1D917858C();
  if (v2)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D8FA46C4();
    sub_1D9179EEC();
    v14 = 0;
    sub_1D91798FC();
    v10 = v13[0];
    v14 = 1;
    sub_1D8FA4718();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
  }

  else
  {
    static ArtworkCrop.from(_:)(&v14, v13);
    v10 = v13[0];
    v11 = HIBYTE(v13[0]);
  }

  *a2 = v10;
  a2[1] = v11;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ArtworkCrop.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8368, &qword_1D919F768);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA46C4();
  sub_1D9179F1C();
  v13 = v8;
  v12 = 0;
  sub_1D8FA476C();
  sub_1D91799FC();
  if (!v2)
  {
    v11 = 1;
    sub_1D91799EC();
  }

  return (*(v5 + 8))(v7, v4);
}

BOOL _s18PodcastsFoundation11ArtworkCropV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = CropCode.rawValue.getter();
  v6 = v5;
  if (v4 == CropCode.rawValue.getter() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_1D9179ACC();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_1D8FA461C()
{
  result = qword_1ECAB1108;
  if (!qword_1ECAB1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1108);
  }

  return result;
}

unint64_t sub_1D8FA4670()
{
  result = qword_1ECAB1110;
  if (!qword_1ECAB1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1110);
  }

  return result;
}

unint64_t sub_1D8FA46C4()
{
  result = qword_1ECAB2B18;
  if (!qword_1ECAB2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B18);
  }

  return result;
}

unint64_t sub_1D8FA4718()
{
  result = qword_1ECAB2AB8;
  if (!qword_1ECAB2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AB8);
  }

  return result;
}

unint64_t sub_1D8FA476C()
{
  result = qword_1ECAB1118;
  if (!qword_1ECAB1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkCrop(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 65292 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65292 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65292;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65292;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65292;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkCrop(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65292 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65292 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 16) + 1;
    *result = a2 - 244;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FA4918()
{
  result = qword_1ECAB8370;
  if (!qword_1ECAB8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8370);
  }

  return result;
}

unint64_t sub_1D8FA4970()
{
  result = qword_1ECAB2B20;
  if (!qword_1ECAB2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B20);
  }

  return result;
}

unint64_t sub_1D8FA49C8()
{
  result = qword_1ECAB2B28;
  if (!qword_1ECAB2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B28);
  }

  return result;
}

uint64_t ArtworkFormat.fileExtension.getter(unsigned __int8 a1)
{
  v1 = 6778480;
  v2 = 1734701162;
  if (a1 != 2)
  {
    v2 = 1667851624;
  }

  if (a1)
  {
    v1 = 6778986;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id static ArtworkFormat.heicEncodingSupported()()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = [(__CFArray *)v0 containsObject:*MEMORY[0x1E69874A0]];

  return v1;
}

uint64_t sub_1D8FA4AD4()
{
  v1 = 6778480;
  v2 = 1734701162;
  if (*v0 != 2)
  {
    v2 = 1667851624;
  }

  if (*v0)
  {
    v1 = 6778986;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FA4B2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FA545C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FA4B54(uint64_t a1)
{
  v2 = sub_1D8FA51E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4B90(uint64_t a1)
{
  v2 = sub_1D8FA51E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4BCC(uint64_t a1)
{
  v2 = sub_1D8FA523C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4C08(uint64_t a1)
{
  v2 = sub_1D8FA523C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4C44(uint64_t a1)
{
  v2 = sub_1D8FA5290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4C80(uint64_t a1)
{
  v2 = sub_1D8FA5290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4CBC(uint64_t a1)
{
  v2 = sub_1D8FA52E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4CF8(uint64_t a1)
{
  v2 = sub_1D8FA52E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4D34(uint64_t a1)
{
  v2 = sub_1D8FA5338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4D70(uint64_t a1)
{
  v2 = sub_1D8FA5338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkFormat.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8378, &qword_1D919F940);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8380, &qword_1D919F948);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8388, &qword_1D919F950);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8390, &qword_1D919F958);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8398, &qword_1D919F960);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA51E8();
  sub_1D9179F1C();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1D8FA5290();
      v9 = v23;
      sub_1D917993C();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1D8FA523C();
      v9 = v26;
      sub_1D917993C();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1D8FA52E4();
    sub_1D917993C();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1D8FA5338();
  sub_1D917993C();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1D8FA51E8()
{
  result = qword_1ECAB2940[0];
  if (!qword_1ECAB2940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB2940);
  }

  return result;
}

unint64_t sub_1D8FA523C()
{
  result = qword_1ECAB2908;
  if (!qword_1ECAB2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2908);
  }

  return result;
}

unint64_t sub_1D8FA5290()
{
  result = qword_1ECAB83A0;
  if (!qword_1ECAB83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83A0);
  }

  return result;
}

unint64_t sub_1D8FA52E4()
{
  result = qword_1ECAB83A8;
  if (!qword_1ECAB83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83A8);
  }

  return result;
}

unint64_t sub_1D8FA5338()
{
  result = qword_1ECAB83B0;
  if (!qword_1ECAB83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83B0);
  }

  return result;
}

uint64_t ArtworkFormat.hashValue.getter(unsigned __int8 a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1);
  return sub_1D9179E1C();
}

void *sub_1D8FA5414@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8FA55BC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8FA545C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6778480 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6778986 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734701162 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1667851624 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1D8FA55BC(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83C8, &qword_1D919FE20);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83D0, &qword_1D919FE28);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83D8, &qword_1D919FE30);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83E0, &qword_1D919FE38);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83E8, &unk_1D919FE40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8FA51E8();
  v15 = v43;
  sub_1D9179EEC();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1D917991C();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1D8E89BD8();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1D8FA52E4();
        v29 = v33;
        sub_1D917982C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1D8FA5338();
        v23 = v33;
        sub_1D917982C();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1D8FA5290();
      v28 = v33;
      sub_1D917982C();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1D8FA523C();
      v30 = v33;
      sub_1D917982C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1D917951C();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
  *v11 = &type metadata for ArtworkFormat;
  sub_1D917983C();
  sub_1D91794FC();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v11;
}

unint64_t sub_1D8FA5C00()
{
  result = qword_1ECAB83B8;
  if (!qword_1ECAB83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83B8);
  }

  return result;
}

unint64_t sub_1D8FA5CA8()
{
  result = qword_1ECAB83C0;
  if (!qword_1ECAB83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83C0);
  }

  return result;
}

unint64_t sub_1D8FA5D00()
{
  result = qword_1ECAB2910;
  if (!qword_1ECAB2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2910);
  }

  return result;
}

unint64_t sub_1D8FA5D58()
{
  result = qword_1ECAB2918;
  if (!qword_1ECAB2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2918);
  }

  return result;
}

unint64_t sub_1D8FA5DB0()
{
  result = qword_1ECAB2920;
  if (!qword_1ECAB2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2920);
  }

  return result;
}

unint64_t sub_1D8FA5E08()
{
  result = qword_1ECAB2928;
  if (!qword_1ECAB2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2928);
  }

  return result;
}

unint64_t sub_1D8FA5E60()
{
  result = qword_1ECAB28E8;
  if (!qword_1ECAB28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28E8);
  }

  return result;
}

unint64_t sub_1D8FA5EB8()
{
  result = qword_1ECAB28F0;
  if (!qword_1ECAB28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28F0);
  }

  return result;
}

unint64_t sub_1D8FA5F10()
{
  result = qword_1ECAB28F8;
  if (!qword_1ECAB28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28F8);
  }

  return result;
}

unint64_t sub_1D8FA5F68()
{
  result = qword_1ECAB2900;
  if (!qword_1ECAB2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2900);
  }

  return result;
}

unint64_t sub_1D8FA5FC0()
{
  result = qword_1ECAB2930;
  if (!qword_1ECAB2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2930);
  }

  return result;
}

unint64_t sub_1D8FA6018()
{
  result = qword_1ECAB2938;
  if (!qword_1ECAB2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2938);
  }

  return result;
}

uint64_t static ArtworkModel.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCD78A0 != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = word_1EDCD78A8;
  v2 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v3 = byte_1EDCD7898;
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001D91D0CE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0x40A7700000000000;
  *(a1 + 48) = 0x40A7700000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1279;
  *(a1 + 130) = v1;
  *(a1 + 131) = v2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = v3;
  *(a1 + 153) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

uint64_t ArtworkModel.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArtworkModel.libraryEntity.getter()
{
  v1 = *(v0 + 16);
  sub_1D8D614C4(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

void *ArtworkModel.backgroundColor.getter()
{
  v1 = *(v0 + 56);
  sub_1D8FA7CC8(v1, *(v0 + 64));
  return v1;
}

uint64_t ArtworkModel.accessibilityTitle.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t ArtworkModel.imageStoreIdentifier.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ArtworkModel.systemGlyphName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  if ((sub_1D917839C() & 1) == 0)
  {
    return 0;
  }

  sub_1D9176BFC();
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D8D08A50(v2, &unk_1ECAB5910, &qword_1D9188C90);
    return 0;
  }

  v6 = sub_1D9176BAC();
  (*(v4 + 8))(v2, v3);
  return v6;
}

void ArtworkModel.init(glyphName:accessibilityTitle:isCustomSymbol:isMulticolorSymbol:)(uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  MEMORY[0x1DA7298F0]();

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v11 = word_1EDCD78A8;
  v12 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v13 = byte_1EDCD7898;
  *a6 = 0x2F2F3A6870796C67;
  *(a6 + 8) = 0xE800000000000000;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = -1;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 40) = 0;
  *(a6 + 64) = -1;
  *(a6 + 72) = 0;
  *(a6 + 80) = -1;
  *(a6 + 88) = 0;
  *(a6 + 96) = -1;
  *(a6 + 104) = 0;
  *(a6 + 112) = -1;
  *(a6 + 120) = 0;
  *(a6 + 128) = 1279;
  *(a6 + 130) = v11;
  *(a6 + 131) = v12;
  *(a6 + 136) = a2;
  *(a6 + 144) = a3;
  *(a6 + 152) = v13;
  *(a6 + 153) = a4 & 1;
  *(a6 + 154) = a5 & 1;
  *(a6 + 160) = 0;
  *(a6 + 168) = 0;
}

double ArtworkModel.with(size:format:)@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v5 + 5);
  v12 = *(v5 + 6);
  v13 = v5[7];
  v14 = *(v5 + 11);
  v30[0] = *(v5 + 9);
  v30[1] = v14;
  v31[0] = *(v5 + 13);
  *(v31 + 9) = *(v5 + 113);
  v15 = *(v5 + 129);
  v16 = *(v5 + 131);
  v17 = v5[17];
  v18 = v5[18];
  v19 = *(v5 + 153);
  v20 = *(v5 + 154);
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    v11 = a1;
  }

  if (a4 == 4)
  {
    v21 = *(v5 + 152);
  }

  else
  {
    v21 = a4;
  }

  v22 = *(v5 + 32);
  v23 = *(v5 + 64);
  *&v29[7] = *(v5 + 9);
  *&v29[23] = *(v5 + 11);
  *&v29[39] = *(v5 + 13);
  *&v29[48] = *(v5 + 113);
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v22;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *(a5 + 64) = v23;
  v24 = *v29;
  v25 = *&v29[16];
  v26 = *&v29[32];
  *(a5 + 113) = *&v29[48];
  *(a5 + 97) = v26;
  *(a5 + 81) = v25;
  *(a5 + 65) = v24;
  *(a5 + 129) = v15;
  *(a5 + 131) = v16;
  *(a5 + 136) = v17;
  *(a5 + 144) = v18;
  *(a5 + 152) = v21;
  *(a5 + 153) = v19;
  *(a5 + 154) = v20;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;

  sub_1D8D614C4(v9, v10, v22);
  sub_1D8FA7CC8(v13, v23);
  sub_1D8D614F0(v30, &v28);

  return result;
}

double ArtworkModel.with(crop:)@<D0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[7];
  v9 = *(v2 + 11);
  v24[0] = *(v2 + 9);
  v24[1] = v9;
  v25[0] = *(v2 + 13);
  *(v25 + 9) = *(v2 + 113);
  v10 = *(v2 + 129);
  v11 = v2[17];
  v12 = v2[18];
  v13 = *(v2 + 152);
  v14 = *(v2 + 153);
  v15 = *(v2 + 154);
  v16 = *(v2 + 32);
  v17 = *(v2 + 64);
  *&v23[7] = *(v2 + 9);
  *&v23[23] = *(v2 + 11);
  *&v23[39] = *(v2 + 13);
  *&v23[48] = *(v2 + 113);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v16;
  *(a2 + 40) = *(v2 + 5);
  *(a2 + 56) = v8;
  *(a2 + 64) = v17;
  v18 = *v23;
  v19 = *&v23[16];
  v20 = *&v23[32];
  *(a2 + 113) = *&v23[48];
  *(a2 + 97) = v20;
  *(a2 + 81) = v19;
  *(a2 + 65) = v18;
  *(a2 + 129) = v10;
  *(a2 + 130) = v3;
  *(a2 + 136) = v11;
  *(a2 + 144) = v12;
  *(a2 + 152) = v13;
  *(a2 + 153) = v14;
  *(a2 + 154) = v15;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;

  sub_1D8D614C4(v6, v7, v16);
  sub_1D8FA7CC8(v8, v17);
  sub_1D8D614F0(v24, &v22);

  return result;
}

double ArtworkModel.with(format:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[7];
  v8 = *(v2 + 11);
  v23[0] = *(v2 + 9);
  v23[1] = v8;
  v24[0] = *(v2 + 13);
  *(v24 + 9) = *(v2 + 113);
  v9 = *(v2 + 129);
  v10 = *(v2 + 131);
  v11 = v2[17];
  v12 = v2[18];
  v13 = *(v2 + 153);
  v14 = *(v2 + 154);
  v15 = *(v2 + 32);
  v16 = *(v2 + 64);
  *&v22[7] = *(v2 + 9);
  *&v22[23] = *(v2 + 11);
  *&v22[39] = *(v2 + 13);
  *&v22[48] = *(v2 + 113);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v15;
  *(a2 + 40) = *(v2 + 5);
  *(a2 + 56) = v7;
  *(a2 + 64) = v16;
  v17 = *v22;
  v18 = *&v22[16];
  v19 = *&v22[32];
  *(a2 + 113) = *&v22[48];
  *(a2 + 97) = v19;
  *(a2 + 81) = v18;
  *(a2 + 65) = v17;
  *(a2 + 129) = v9;
  *(a2 + 131) = v10;
  *(a2 + 136) = v11;
  *(a2 + 144) = v12;
  *(a2 + 152) = a1;
  *(a2 + 153) = v13;
  *(a2 + 154) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;

  sub_1D8D614C4(v5, v6, v15);
  sub_1D8FA7CC8(v7, v16);
  sub_1D8D614F0(v23, &v21);

  return result;
}

uint64_t ArtworkModel.with(libraryEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[7];
  v11 = *(v4 + 11);
  v26[0] = *(v4 + 9);
  v26[1] = v11;
  v27[0] = *(v4 + 13);
  *(v27 + 9) = *(v4 + 113);
  v12 = *(v4 + 129);
  v13 = *(v4 + 131);
  v14 = v4[17];
  v15 = v4[18];
  v16 = *(v4 + 152);
  v17 = *(v4 + 153);
  v18 = *(v4 + 154);
  v19 = *(v4 + 64);
  *&v25[7] = *(v4 + 9);
  *&v25[23] = *(v4 + 11);
  *&v25[39] = *(v4 + 13);
  *&v25[48] = *(v4 + 113);
  *a4 = v9;
  *(a4 + 8) = v8;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = *(v4 + 5);
  *(a4 + 56) = v10;
  *(a4 + 64) = v19;
  v20 = *v25;
  v21 = *&v25[16];
  v22 = *&v25[32];
  *(a4 + 113) = *&v25[48];
  *(a4 + 97) = v22;
  *(a4 + 81) = v21;
  *(a4 + 65) = v20;
  *(a4 + 129) = v12;
  *(a4 + 131) = v13;
  *(a4 + 136) = v14;
  *(a4 + 144) = v15;
  *(a4 + 152) = v16;
  *(a4 + 153) = v17;
  *(a4 + 154) = v18;
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;

  sub_1D8FA7CC8(v10, v19);
  sub_1D8D614F0(v26, &v24);

  return sub_1D8D614C4(a1, a2, a3);
}

uint64_t ArtworkModel.hashValue.getter()
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6B00(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x74616D726F66;
    v7 = 0x6D6F747375437369;
    if (a1 != 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C797473;
    v9 = 1886351971;
    if (a1 != 7)
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574616C706D6574;
    v2 = 0x457972617262696CLL;
    v3 = 0x756F72676B636162;
    if (a1 != 4)
    {
      v3 = 0x6F6C6F4374786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6874646977;
    if (a1 != 1)
    {
      v4 = 0x746867696568;
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
}

uint64_t sub_1D8FA6C94()
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6CD8(uint64_t a1)
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6D1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FA8508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FA6D50(uint64_t a1)
{
  v2 = sub_1D8FA7CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA6D8C(uint64_t a1)
{
  v2 = sub_1D8FA7CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83F0, &qword_1D919FE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA7CDC();
  sub_1D9179EEC();
  if (!v2)
  {
    LOBYTE(v50) = 0;
    v9 = sub_1D91798BC();
    v11 = v10;
    v60 = v9;
    LOBYTE(v50) = 1;
    sub_1D8FA7D30();
    sub_1D91798FC();
    v12 = v59;
    LOBYTE(v50) = 2;
    sub_1D91798FC();
    v13 = v58;
    LOBYTE(v50) = 3;
    sub_1D8FA7D84();
    sub_1D917989C();
    v15 = v56;
    v42 = v55;
    v41 = v57;
    LOBYTE(v50) = 4;
    sub_1D8FA7DD8();
    sub_1D917989C();
    v40 = v15;
    v39 = v53;
    LODWORD(v15) = v54;
    v49 = 5;
    sub_1D8FA7E40();
    sub_1D917989C();
    v38 = v15;
    v46 = v50;
    v47 = v51;
    *v48 = v52[0];
    *&v48[9] = *(v52 + 9);
    LOBYTE(v44) = 6;
    sub_1D8FA7EA8();
    sub_1D917989C();
    v37 = v45;
    v43 = 7;
    sub_1D8FA7EFC();
    sub_1D917989C();
    if ((v44 & 0xFF00) == 0xD00)
    {
      if (qword_1EDCD78A0 != -1)
      {
        swift_once();
      }

      v36 = word_1EDCD78A8;
      v16 = HIBYTE(word_1EDCD78A8);
    }

    else
    {
      v36 = v44;
      v16 = HIBYTE(v44);
    }

    v35 = v16;
    LOBYTE(v44) = 8;
    v34 = sub_1D917984C();
    v18 = v17;
    v43 = 9;
    sub_1D8FA7F50();
    sub_1D917989C();
    v19 = v44;
    if (v44 == 4)
    {
      v19 = 2;
    }

    v33 = v19;
    LOBYTE(v44) = 10;
    v32 = sub_1D917985C();
    LOBYTE(v44) = 11;
    v20 = sub_1D917985C();
    (*(v6 + 8))(v8, v5);
    v21 = BYTE8(v46);
    if (BYTE8(v46) == 254)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v21 = -1;
      v26 = -1;
      v27 = -1;
      v28 = -1;
    }

    else
    {
      v22 = v46;
      v23 = v47;
      v26 = BYTE8(v47);
      v24 = *v48;
      v27 = v48[8];
      v25 = *&v48[16];
      v28 = v48[24];
    }

    v29 = v32 & 1;
    *a2 = v60;
    *(a2 + 8) = v11;
    v30 = v40;
    *(a2 + 16) = v42;
    *(a2 + 24) = v30;
    *(a2 + 32) = v41;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v39;
    *(a2 + 64) = v38;
    *(a2 + 72) = v22;
    *(a2 + 80) = v21;
    *(a2 + 88) = v23;
    *(a2 + 96) = v26;
    *(a2 + 104) = v24;
    *(a2 + 112) = v27;
    *(a2 + 120) = v25;
    *(a2 + 128) = v28;
    *(a2 + 129) = v37;
    *(a2 + 130) = v36;
    *(a2 + 131) = v35;
    *(a2 + 136) = v34;
    *(a2 + 144) = v18;
    *(a2 + 152) = v33;
    *(a2 + 153) = v29;
    *(a2 + 154) = v20 & 1;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ArtworkModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8400, &qword_1D919FE60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(v1 + 24);
  v29 = *(v1 + 16);
  v28 = v7;
  v27 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v26 = *(v1 + 56);
  v25 = *(v1 + 64);
  v10 = *(v1 + 88);
  v41 = *(v1 + 72);
  v42 = v10;
  *v43 = *(v1 + 104);
  *&v43[9] = *(v1 + 113);
  v24 = *(v1 + 129);
  v22 = *(v1 + 130);
  v23 = *(v1 + 131);
  v11 = *(v1 + 144);
  v20 = *(v1 + 136);
  v21 = v11;
  v19 = *(v1 + 152);
  v18[4] = *(v1 + 153);
  v18[3] = *(v1 + 154);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA7CDC();
  sub_1D9179F1C();
  LOBYTE(v35) = 0;
  v12 = v44;
  sub_1D91799BC();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v26;
  *&v35 = v9;
  LOBYTE(v32[0]) = 1;
  sub_1D8FA7FA4();
  sub_1D91799FC();
  *&v35 = v8;
  LOBYTE(v32[0]) = 2;
  sub_1D91799FC();
  *&v35 = v15;
  *(&v35 + 1) = v14;
  LOBYTE(v36) = v13;
  LOBYTE(v32[0]) = 3;
  sub_1D8FA7FF8();
  sub_1D917999C();
  v39 = v16;
  v40 = v25;
  v38 = 4;
  sub_1D8FA804C();
  sub_1D917999C();
  v35 = v41;
  v36 = v42;
  *v37 = *v43;
  *&v37[9] = *&v43[9];
  v34 = 5;
  sub_1D8D614F0(&v41, v32);
  sub_1D8FA80A0();
  sub_1D917999C();
  v32[0] = v35;
  v32[1] = v36;
  *v33 = *v37;
  *&v33[9] = *&v37[9];
  sub_1D8D08A50(v32, &qword_1ECAB83F8, &qword_1D919FE58);
  v30[0] = v24;
  v31 = 6;
  sub_1D8FA80F4();
  sub_1D917999C();
  v30[0] = v22;
  v30[1] = v23;
  v31 = 7;
  sub_1D8FA8148();
  sub_1D91799FC();
  v30[0] = 8;
  sub_1D917994C();
  v30[0] = v19;
  v31 = 9;
  sub_1D8FA819C();
  sub_1D91799FC();
  v30[0] = 10;
  sub_1D91799CC();
  v30[0] = 11;
  sub_1D91799CC();
  return (*(v4 + 8))(0, v3);
}

uint64_t ArtworkModel.ModelError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

id sub_1D8FA7CC8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8D6154C(result, a2);
  }

  return result;
}

unint64_t sub_1D8FA7CDC()
{
  result = qword_1ECAB2A50;
  if (!qword_1ECAB2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A50);
  }

  return result;
}

unint64_t sub_1D8FA7D30()
{
  result = qword_1ECAB2C48;
  if (!qword_1ECAB2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C48);
  }

  return result;
}

unint64_t sub_1D8FA7D84()
{
  result = qword_1ECAB26E0;
  if (!qword_1ECAB26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26E0);
  }

  return result;
}

unint64_t sub_1D8FA7DD8()
{
  result = qword_1ECAB1158;
  if (!qword_1ECAB1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1158);
  }

  return result;
}

uint64_t sub_1D8FA7E2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8DADC60(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1D8FA7E40()
{
  result = qword_1ECAB20F0;
  if (!qword_1ECAB20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20F0);
  }

  return result;
}

void sub_1D8FA7E94(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D8DADC78(a1, a2);
  }
}

unint64_t sub_1D8FA7EA8()
{
  result = qword_1ECAB2A28;
  if (!qword_1ECAB2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A28);
  }

  return result;
}

unint64_t sub_1D8FA7EFC()
{
  result = qword_1ECAB2AE8;
  if (!qword_1ECAB2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AE8);
  }

  return result;
}

unint64_t sub_1D8FA7F50()
{
  result = qword_1ECAB28D8;
  if (!qword_1ECAB28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28D8);
  }

  return result;
}

unint64_t sub_1D8FA7FA4()
{
  result = qword_1ECAB2C50;
  if (!qword_1ECAB2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C50);
  }

  return result;
}

unint64_t sub_1D8FA7FF8()
{
  result = qword_1ECAB26E8;
  if (!qword_1ECAB26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26E8);
  }

  return result;
}

unint64_t sub_1D8FA804C()
{
  result = qword_1ECAB1160;
  if (!qword_1ECAB1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1160);
  }

  return result;
}

unint64_t sub_1D8FA80A0()
{
  result = qword_1ECAB20F8;
  if (!qword_1ECAB20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20F8);
  }

  return result;
}

unint64_t sub_1D8FA80F4()
{
  result = qword_1ECAB2A38;
  if (!qword_1ECAB2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A38);
  }

  return result;
}

unint64_t sub_1D8FA8148()
{
  result = qword_1ECAB2AF0;
  if (!qword_1ECAB2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AF0);
  }

  return result;
}

unint64_t sub_1D8FA819C()
{
  result = qword_1ECAB28E0;
  if (!qword_1ECAB28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28E0);
  }

  return result;
}

unint64_t sub_1D8FA81F4()
{
  result = qword_1ECAB8408;
  if (!qword_1ECAB8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8408);
  }

  return result;
}

unint64_t sub_1D8FA824C()
{
  result = qword_1ECAB8410;
  if (!qword_1ECAB8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkModel.CK(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkModel.CK(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FA8404()
{
  result = qword_1ECAB8418;
  if (!qword_1ECAB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8418);
  }

  return result;
}

unint64_t sub_1D8FA845C()
{
  result = qword_1ECAB2A58;
  if (!qword_1ECAB2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A58);
  }

  return result;
}

unint64_t sub_1D8FA84B4()
{
  result = qword_1ECAB2A60;
  if (!qword_1ECAB2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A60);
  }

  return result;
}

uint64_t sub_1D8FA8508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x457972617262696CLL && a2 == 0xED0000797469746ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000007372 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1886351971 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0D20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xEE006C6F626D7953 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0D40 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void ArtworkModel.init(serverArtwork:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 56);
  if (!v3 || (*(a1 + 24) & 1) != 0 || (*(a1 + 40) & 1) != 0)
  {

LABEL_6:
    sub_1D8D39E08(&v33);
    v4 = v40;
    v5 = v42;
    v6 = v43;
    *(a2 + 128) = v41;
    *(a2 + 144) = v5;
    *(a2 + 160) = v6;
    v7 = v38;
    *(a2 + 64) = v37;
    *(a2 + 80) = v7;
    *(a2 + 96) = v39;
    *(a2 + 112) = v4;
    v8 = v34;
    *a2 = v33;
    *(a2 + 16) = v8;
    v9 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v9;
    return;
  }

  v30 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = *(a1 + 16);
  v10 = *(a1 + 72);
  if (v10)
  {
    *&v33 = *(a1 + 64);
    *(&v33 + 1) = v10;

    sub_1D8FA8B80(&v33, &v31);
    v29 = v31;
    v11 = v32;
  }

  else
  {

    v29 = 0;
    v11 = -1;
  }

  v28 = v11;

  sub_1D8FACF9C(v12, &v33);
  v13 = BYTE8(v33);
  v22 = v34;
  v23 = v33;
  v14 = BYTE8(v34);
  v15 = v35;
  v16 = BYTE8(v35);
  v17 = v36;
  v18 = BYTE8(v36);

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v24 = HIBYTE(word_1EDCD78A8);
  v25 = word_1EDCD78A8;
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v19 = byte_1EDCD7898;

  if (BYTE8(v33) == 254)
  {
    v20 = 0;
    v21 = 0;
    v15 = 0;
    v17 = 0;
    v13 = -1;
    v14 = -1;
    v16 = -1;
    v18 = -1;
  }

  else
  {
    v21 = v22;
    v20 = v23;
  }

  *a2 = v30;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v29;
  *(a2 + 64) = v28;
  *(a2 + 72) = v20;
  *(a2 + 80) = v13;
  *(a2 + 88) = v21;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 129) = 4;
  *(a2 + 130) = v25;
  *(a2 + 131) = v24;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v19;
  *(a2 + 153) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  nullsub_1();
}

uint64_t sub_1D8FA8B80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1D8D3707C(v5, v4);
  if (v2)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD5E28);

    v9 = v2;
    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D8CFA924(v5, v4, &v18);
      *(v12 + 12) = 2080;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v15 = sub_1D917826C();
      v17 = sub_1D8CFA924(v15, v16, &v18);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Encountered an error decoding color descriptor (%s): %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    else
    {
    }

    result = 0;
    v7 = -1;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

uint64_t ArtworkRequest.resizedForModelAspectRatio()@<X0>(uint64_t a1@<X8>)
{
  v6.size.width = *(v1 + 176);
  v6.size.height = *(v1 + 184);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v5 = AVMakeRectWithAspectRatioInsideRect(*(v1 + 40), v6);

  return ArtworkRequest.resized(to:displayScale:)(0.0, 1, a1, v5.size.width, v5.size.height);
}

uint64_t ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:subsampleFactor:priority:trace:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *a3;
  v22 = *a7;
  *(a9 + 224) = 0u;
  v23 = a9 + 224;
  *(a9 + 201) = 16;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, a12);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a10);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a11);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v19);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v20);
  v48.width = 0.0;
  v48.height = 0.0;
  v47.width = a10;
  v47.height = a11;
  if (CGSizeEqualToSize(v47, v48))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD5E28);
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v21;
      v28 = v22;
      v29 = a8;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v30, 2u);
      v31 = v30;
      a8 = v29;
      v22 = v28;
      v21 = v27;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }
  }

  if (v19 == 0.0 || v20 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD5E28);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v21;
      v36 = v22;
      v37 = a2;
      v38 = a8;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v39, 2u);
      v40 = v39;
      a8 = v38;
      a2 = v37;
      v22 = v36;
      v21 = v35;
      MEMORY[0x1DA72CB90](v40, -1, -1);
    }
  }

  v41 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v41;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = v19;
  *(a9 + 48) = v20;
  *(a9 + 120) = *(a1 + 120);
  *(a9 + 136) = *(a1 + 136);
  *(a9 + 152) = *(a1 + 152);
  *(a9 + 168) = *(a1 + 168);
  *(a9 + 56) = *(a1 + 56);
  *(a9 + 72) = *(a1 + 72);
  *(a9 + 88) = *(a1 + 88);
  *(a9 + 104) = *(a1 + 104);
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = a2 & 1;
  *(a9 + 201) = v21;
  *(a9 + 202) = a4 & 1;
  *(a9 + 203) = v22;
  *(a9 + 208) = a5;
  *(a9 + 216) = a6;

  return sub_1D8D412B0(a8, v23);
}

uint64_t ArtworkRequest.with(subsampleFactor:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1D8D41388(v2, a2);
  *(a2 + 216) = a1;
  return result;
}

uint64_t ArtworkRequest.with(destination:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1D8D41388(v2, a2);
  *(a2 + 202) = a1 & 1;
  return result;
}

float64x2_t ArtworkRequest.subsampled(by:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1D8D41388(v2, a2);
  *(a2 + 216) = a1;
  v5 = (&unk_1D91A0DF8 + 8 * a1);
  v6 = vld1q_dup_f64(v5);
  result = vdivq_f64(v2[11], v6);
  *(a2 + 176) = result;
  return result;
}

uint64_t ArtworkRequest.bucketed(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5, *(v2 + 176), *(v2 + 184));

  return ArtworkRequest.resized(to:displayScale:)(0.0, 1, a2, v6, v7);
}

uint64_t ArtworkRequest.with(libraryEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 7);
  v7 = *(v4 + 9);
  v83 = *(v4 + 8);
  v84 = v7;
  v8 = *(v4 + 9);
  v85 = *(v4 + 10);
  v9 = *(v4 + 3);
  v10 = *(v4 + 5);
  v79 = *(v4 + 4);
  v80 = v10;
  v11 = *(v4 + 5);
  v12 = *(v4 + 7);
  v81 = *(v4 + 6);
  v82 = v12;
  v13 = *(v4 + 1);
  v76[0] = *v4;
  v76[1] = v13;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  v77 = *(v4 + 2);
  v78 = v14;
  v61 = v83;
  v62 = v8;
  v63 = *(v4 + 10);
  v57 = v79;
  v58 = v11;
  v59 = v81;
  v60 = v6;
  v53 = v16;
  v54 = v15;
  v55 = v77;
  v56 = v9;
  ArtworkModel.with(libraryEntity:)(a1, a2, a3, v64);
  v86[8] = v61;
  v86[9] = v62;
  v86[10] = v63;
  v86[4] = v57;
  v86[5] = v58;
  v86[6] = v59;
  v86[7] = v60;
  v86[0] = v53;
  v86[1] = v54;
  v86[2] = v55;
  v86[3] = v56;
  sub_1D8D36E5C(v76, &v50);
  sub_1D8DB15B0(v86);
  v50 = v64[0];
  v51 = v64[1];
  v52 = v65;
  v17 = v66;
  v18 = v67;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  *&v60 = v75;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v19 = v4[22];
  v20 = v4[23];
  v21 = v4[24];
  v47 = *(v4 + 201);
  v48 = *(v4 + 200);
  v22 = *(v4 + 202);
  v23 = *(v4 + 26);
  v24 = *(v4 + 216);
  v25 = *(v4 + 203);
  sub_1D8D728EC((v4 + 28), v49);
  *(a4 + 224) = 0u;
  *(a4 + 201) = 16;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0;

  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v21);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, v19);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, v20);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v17);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v18);
  v88.width = 0.0;
  v88.height = 0.0;
  v87.width = v19;
  v87.height = v20;
  if (CGSizeEqualToSize(v87, v88))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD5E28);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v25;
      v30 = v24;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v31, 2u);
      v32 = v31;
      v24 = v30;
      v25 = v29;
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }
  }

  if (v17 == 0.0 || v18 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1EDCD5E28);
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v25;
      v37 = v23;
      v38 = v22;
      v39 = v24;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v40, 2u);
      v41 = v40;
      v24 = v39;
      v22 = v38;
      v23 = v37;
      v25 = v36;
      MEMORY[0x1DA72CB90](v41, -1, -1);
    }
  }

  v42 = v51;
  *a4 = v50;
  *(a4 + 16) = v42;
  *(a4 + 32) = v52;
  *(a4 + 40) = v17;
  *(a4 + 48) = v18;
  v43 = v58;
  *(a4 + 120) = v57;
  *(a4 + 136) = v43;
  *(a4 + 152) = v59;
  *(a4 + 168) = v60;
  v44 = v54;
  *(a4 + 56) = v53;
  *(a4 + 72) = v44;
  v45 = v56;
  *(a4 + 88) = v55;
  *(a4 + 104) = v45;
  *(a4 + 176) = v19;
  *(a4 + 184) = v20;
  *(a4 + 192) = v21;
  *(a4 + 200) = v48;
  *(a4 + 201) = v47;
  *(a4 + 202) = v22;
  *(a4 + 203) = v25;
  *(a4 + 208) = v23;
  *(a4 + 216) = v24;
  return sub_1D8D412B0(v49, a4 + 224);
}

unint64_t sub_1D8FA995C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C65646F6DLL;
    v6 = 0x5379616C70736964;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6953746567726174;
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
    v1 = 0x73746365666665;
    v2 = 0x6C706D6173627573;
    if (a1 != 7)
    {
      v2 = 0x797469726F697270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x74616E6974736564;
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

uint64_t sub_1D8FA9AAC()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAE7C(v3, v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA9AFC(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  sub_1D8ECAE7C(v4, v2);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FA9B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FAC1B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D8FA9B70@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D8FA995C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D8FA9BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FAC1B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FA9BE0(uint64_t a1)
{
  v2 = sub_1D8FABB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA9C1C(uint64_t a1)
{
  v2 = sub_1D8FABB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8420, &qword_1D91A0438);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FABB38();
  sub_1D9179F1C();
  v8 = v2[8];
  v9 = v2[6];
  v54 = v2[7];
  v55 = v8;
  v10 = v2[8];
  v11 = v2[10];
  v56 = v2[9];
  v57 = v11;
  v12 = v2[4];
  v13 = v2[2];
  v50 = v2[3];
  v51 = v12;
  v14 = v2[4];
  v15 = v2[6];
  v52 = v2[5];
  v53 = v15;
  v16 = *v2;
  v17 = v2[2];
  v48 = v2[1];
  v49 = v17;
  v18 = *v2;
  v44 = v10;
  v45 = v56;
  v46 = v2[10];
  v47 = v18;
  v40 = v14;
  v41 = v52;
  v42 = v9;
  v43 = v54;
  v36 = v16;
  v37 = v48;
  v38 = v13;
  v39 = v50;
  v35 = 0;
  sub_1D8D36E5C(&v47, &v24);
  sub_1D8FABB8C();
  v19 = v58;
  sub_1D91799FC();
  if (v19)
  {
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    sub_1D8DB15B0(&v24);
  }

  else
  {
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    sub_1D8DB15B0(&v24);
    v23 = v2[11];
    v22 = 1;
    type metadata accessor for CGSize(0);
    sub_1D8D5C0D4(&unk_1ECAAFCC0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1D91799FC();
    *&v23 = *(v2 + 24);
    v22 = 2;
    sub_1D8FA7FA4();
    sub_1D91799FC();
    LOBYTE(v23) = 3;
    sub_1D91799CC();
    LOBYTE(v23) = *(v2 + 201);
    v22 = 4;
    sub_1D8FA476C();
    sub_1D917999C();
    LOBYTE(v23) = *(v2 + 202);
    v22 = 5;
    sub_1D8FABBE0();
    sub_1D91799FC();
    *&v23 = *(v2 + 26);
    v22 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8428, &qword_1D91A0440);
    sub_1D8FABD84(&qword_1ECAAFF80, sub_1D8FABC34, MEMORY[0x1E69E6300]);
    sub_1D91799FC();
    LOBYTE(v23) = *(v2 + 216);
    v22 = 7;
    sub_1D8FABC88();
    sub_1D917999C();
    LOBYTE(v23) = *(v2 + 203);
    v22 = 8;
    sub_1D8ECEF68();
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkRequest.hashValue.getter()
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)(v8, v0, v1, v2, v3, v4, v5, v6);
  return sub_1D9179E1C();
}

uint64_t ArtworkRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8430, &unk_1D91A0448);
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v12 - v6;
  v30 = 16;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v8 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D8FABB38();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return sub_1D8D7621C(v35);
  }

  else
  {
    v9 = v5;
    v15 = 0;
    sub_1D8FABCDC();
    v10 = v12;
    sub_1D91798FC();
    v27[8] = v24;
    v27[9] = v25;
    v27[10] = v26;
    v27[4] = v20;
    v27[5] = v21;
    v27[6] = v22;
    v27[7] = v23;
    v27[0] = v16;
    v27[1] = v17;
    v27[2] = v18;
    v27[3] = v19;
    type metadata accessor for CGSize(0);
    v13 = 1;
    sub_1D8D5C0D4(&qword_1ECAAFCB8, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1D91798FC();
    v27[11] = v14;
    v13 = 2;
    sub_1D8FA7D30();
    sub_1D91798FC();
    v28 = v14;
    LOBYTE(v14) = 3;
    v29 = sub_1D91798CC() & 1;
    v13 = 4;
    sub_1D8FA461C();
    sub_1D917989C();
    v30 = v14;
    v13 = 5;
    sub_1D8FABD30();
    sub_1D91798FC();
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8428, &qword_1D91A0440);
    v13 = 6;
    sub_1D8FABD84(&qword_1ECAAFF78, sub_1D8FABDFC, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    v33 = v14;
    v13 = 7;
    sub_1D8FABE50();
    sub_1D917989C();
    v34 = v14;
    v13 = 8;
    sub_1D8ECF064();
    sub_1D91798FC();
    (*(v9 + 8))(v7, v10);
    v32 = v14;
    sub_1D8D41388(v27, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return sub_1D8D58578(v27);
  }
}

uint64_t sub_1D8FAA6A0()
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)(v8, v0, v1, v2, v3, v4, v5, v6);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAA708@<X0>(uint64_t *a1@<X8>)
{
  result = ArtworkRequest.key.getter();
  *a1 = result;
  return result;
}

uint64_t ArtworkRequest.CodingError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t static ArtworkRequest.comparablePrefix(from:)(uint64_t a1, unint64_t a2)
{
  v10 = 45;
  v11 = 0xE100000000000000;
  v9[2] = &v10;

  v5 = sub_1D8FAB778(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8D9E220, v9, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6 >= 2)
  {
    v6 = 2;
  }

  v10 = v5;
  v11 = v5 + 32;
  v12 = 0;
  v13 = (2 * v6) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8438, &qword_1D91A0458);
  sub_1D8CF48EC(&qword_1ECAAFBC0, &qword_1ECAB8438, &qword_1D91A0458, MEMORY[0x1E69E6968]);
  sub_1D8E7F724();
  v7 = sub_1D917851C();

  return v7;
}

uint64_t ArtworkRequest.encode(_:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E55148(a1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v11 = [v9 contentsAtPath_];

  if (v11)
  {
    v12 = sub_1D9176C8C();

    (*(v3 + 8))(v5, v2);
    return v12;
  }

  else
  {
    sub_1D8FABEA4();
    swift_allocError();
    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t ArtworkRequest.decode(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ArtworkContent(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D8D752C4(a1, a2);
}

uint64_t ArtworkRequest.inMemorySize.getter()
{
  result = sub_1D8E62904(*v0, v0[1]);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(result + v4);
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        return result;
      }

      v4 += 8;
      --v2;
    }

    while (v2);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  return 0;
}

double ArtworkRequest.remoteUrl.getter()
{
  v1 = v0;
  v2 = v0[1];
  v30 = *v0;
  v31 = v2;
  v28 = 8217467;
  v29 = 0xE300000000000000;
  v26 = CropCode.rawValue.getter();
  v27 = v3;
  v4 = sub_1D8D447DC();

  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D917922C(&v28, &v26, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v4, v4, v4);
  v8 = v7;

  v30 = v6;
  v31 = v8;
  v28 = 8222587;
  v29 = 0xE300000000000000;
  v26 = sub_1D8D756D0(v9, v10);
  v26 = sub_1D9179A4C();
  v27 = v11;
  v12 = sub_1D917922C(&v28, &v26, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);
  v14 = v13;

  v30 = v12;
  v31 = v14;
  v28 = 8218747;
  v29 = 0xE300000000000000;
  v26 = sub_1D8D75758(v15, v16);
  v26 = sub_1D9179A4C();
  v27 = v17;
  v18 = sub_1D917922C(&v28, &v26, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);
  v20 = v19;

  v30 = v18;
  v31 = v20;
  v28 = 8218235;
  v29 = 0xE300000000000000;
  v26 = 0;
  v27 = 0xE000000000000000;
  v21 = 1734701162;
  if (*(v1 + 152) != 2)
  {
    v21 = 1667851624;
  }

  v22 = 6778986;
  if (!*(v1 + 152))
  {
    v22 = 6778480;
  }

  if (*(v1 + 152) <= 1u)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (*(v1 + 152) <= 1u)
  {
    v24 = 0xE300000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v23, v24);

  sub_1D917922C(&v28, &v26, 0, 0, 0, 1, v5, v5, v5, v4, v4, v4);

  sub_1D9176BFC();

  return result;
}

PodcastsFoundation::ArtworkRequest::Destination_optional __swiftcall ArtworkRequest.Destination.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ArtworkRequest_Destination_unspecified;
  }

  else
  {
    v2.value = PodcastsFoundation_ArtworkRequest_Destination_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ArtworkRequest.Destination.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return 0x79616C70736964;
  }
}

uint64_t sub_1D8FAAF88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6669636570736E75;
  }

  else
  {
    v3 = 0x79616C70736964;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v5 = 0x6669636570736E75;
  }

  else
  {
    v5 = 0x79616C70736964;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646569;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1D8FAB038()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FAB0C4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FAB13C(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8FAB1C4(char *a2@<X8>)
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

void sub_1D8FAB224(uint64_t *a1@<X8>)
{
  v2 = 0x79616C70736964;
  if (*v1)
  {
    v2 = 0x6669636570736E75;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000646569;
  }

  *a1 = v2;
  a1[1] = v3;
}

PodcastsFoundation::ArtworkRequest::SubsampleFactor_optional __swiftcall ArtworkRequest.SubsampleFactor.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 2) >= 7)
  {
    return 3;
  }

  else
  {
    return (0x2030303010300uLL >> (8 * (rawValue - 2)));
  }
}

uint64_t sub_1D8FAB36C()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91A0E10[v1]);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB3F4(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91A0E10[v2]);
  return sub_1D9179E1C();
}

void *sub_1D8FAB440@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v2 = *result - 2;
  if (v2 >= 7)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030303010300uLL >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

BOOL ArtworkRequest.Effect.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  return v2 != 0;
}

uint64_t sub_1D8FAB59C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAB608(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D8FAB658(BOOL *a2@<X8>)
{
  v3 = sub_1D917980C();

  *a2 = v3 != 0;
}

unint64_t sub_1D8FAB778@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D91783EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D8ECD024(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D8ECD024((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D91783CC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D91782FC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D91782FC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D91783EC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D8ECD024(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D91783EC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D8ECD024(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D8ECD024((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D91782FC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8FABB38()
{
  result = qword_1ECAB26A8;
  if (!qword_1ECAB26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26A8);
  }

  return result;
}

unint64_t sub_1D8FABB8C()
{
  result = qword_1ECAB2A48;
  if (!qword_1ECAB2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A48);
  }

  return result;
}

unint64_t sub_1D8FABBE0()
{
  result = qword_1ECAB2690;
  if (!qword_1ECAB2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2690);
  }

  return result;
}

unint64_t sub_1D8FABC34()
{
  result = qword_1ECAB2660;
  if (!qword_1ECAB2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2660);
  }

  return result;
}

unint64_t sub_1D8FABC88()
{
  result = qword_1ECAB2678;
  if (!qword_1ECAB2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2678);
  }

  return result;
}

unint64_t sub_1D8FABCDC()
{
  result = qword_1ECAB2A40;
  if (!qword_1ECAB2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A40);
  }

  return result;
}

unint64_t sub_1D8FABD30()
{
  result = qword_1ECAB2680;
  if (!qword_1ECAB2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2680);
  }

  return result;
}

uint64_t sub_1D8FABD84(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8428, &qword_1D91A0440);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8FABDFC()
{
  result = qword_1ECAB2658;
  if (!qword_1ECAB2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2658);
  }

  return result;
}

unint64_t sub_1D8FABE50()
{
  result = qword_1ECAB2670;
  if (!qword_1ECAB2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2670);
  }

  return result;
}

unint64_t sub_1D8FABEA4()
{
  result = qword_1ECAB8440;
  if (!qword_1ECAB8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8440);
  }

  return result;
}

unint64_t sub_1D8FABEFC()
{
  result = qword_1ECAB8448;
  if (!qword_1ECAB8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8448);
  }

  return result;
}

unint64_t sub_1D8FABF54()
{
  result = qword_1ECAB8450;
  if (!qword_1ECAB8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8450);
  }

  return result;
}

unint64_t sub_1D8FABFAC()
{
  result = qword_1ECAB8458;
  if (!qword_1ECAB8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8458);
  }

  return result;
}

unint64_t sub_1D8FAC004()
{
  result = qword_1ECAB8460;
  if (!qword_1ECAB8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8460);
  }

  return result;
}

unint64_t sub_1D8FAC0B4()
{
  result = qword_1ECAB8468;
  if (!qword_1ECAB8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8468);
  }

  return result;
}

unint64_t sub_1D8FAC10C()
{
  result = qword_1ECAB2698;
  if (!qword_1ECAB2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2698);
  }

  return result;
}

unint64_t sub_1D8FAC164()
{
  result = qword_1ECAB26A0;
  if (!qword_1ECAB26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26A0);
  }

  return result;
}

unint64_t sub_1D8FAC1B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FAC204()
{
  result = qword_1ECAB8470;
  if (!qword_1ECAB8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8470);
  }

  return result;
}

unint64_t sub_1D8FAC258()
{
  result = qword_1ECAB8478;
  if (!qword_1ECAB8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8478);
  }

  return result;
}

unint64_t sub_1D8FAC2AC()
{
  result = qword_1ECAB2688;
  if (!qword_1ECAB2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2688);
  }

  return result;
}

double ArtworkStyle.iconCornerRadius(for:)(unsigned __int8 a1, double a2, double a3)
{
  if (a1 > 1u)
  {
    result = 20.0;
    v8 = a3 * 0.5;
    if (a1 == 2)
    {
      return v8;
    }
  }

  else if (a1)
  {
    if (a2 >= a3)
    {
      a2 = a3;
    }

    return a2 * 0.5;
  }

  else
  {
    v3 = 3.0;
    if (a2 < 10.0 || a2 > 39.0)
    {
      v3 = 4.0;
      if (a2 < 40.0 || a2 > 99.0)
      {
        v6 = a2 > 279.0 || a2 < 99.0;
        v3 = 6.0;
        if (v6)
        {
          return 8.0;
        }
      }
    }

    return v3;
  }

  return result;
}

double static ArtworkStyle.iconHeight(for:width:)(char a1, double result)
{
  if (a1 == 2)
  {
    return result * 3.0 * 0.25;
  }

  return result;
}

double static ArtworkStyle.iconWidth(for:height:)(char a1, double result)
{
  if (a1 == 2)
  {
    return result * 4.0 / 3.0;
  }

  return result;
}

unint64_t ArtworkStyle.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x526465646E756F72;
  v2 = 1819044208;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0x646E756F72;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FAC474(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000746365;
  v3 = 0x526465646E756F72;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 1819044208;
  v7 = 0x80000001D91C7EF0;
  if (v4 != 2)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D91C7EF0;
  }

  v8 = 0xE500000000000000;
  v9 = 0x646E756F72;
  if (!*a1)
  {
    v9 = 0x526465646E756F72;
    v8 = 0xEB00000000746365;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  v12 = 1819044208;
  if (*a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xD000000000000012;
  }

  if (*a2)
  {
    v3 = 0x646E756F72;
    v2 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v7;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D8FAC59C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FAC660(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FAC710(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8FAC7D0@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::ArtworkStyle_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation12ArtworkStyleO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D8FAC800(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746365;
  v3 = 0x526465646E756F72;
  v4 = 0xE400000000000000;
  v5 = 1819044208;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D91C7EF0;
  }

  if (*v1)
  {
    v3 = 0x646E756F72;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t _s18PodcastsFoundation12ArtworkStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8FAC980()
{
  result = qword_1ECAB8480;
  if (!qword_1ECAB8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8480);
  }

  return result;
}

unint64_t sub_1D8FAC9E4()
{
  result = qword_1ECAB2A30;
  if (!qword_1ECAB2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A30);
  }

  return result;
}

uint64_t ArtworkTextColors.init(primary:secondary:tertiary:quaternary:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

double ArtworkTextColors.init(serverArtwork:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D8FACF9C(a1, v5);

  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 9);
  *(a2 + 41) = *(v6 + 9);
  return result;
}

id ArtworkTextColors.primary.getter()
{
  v1 = *v0;
  sub_1D8FA7CC8(*v0, *(v0 + 8));
  return v1;
}

void *ArtworkTextColors.secondary.getter()
{
  v1 = *(v0 + 16);
  sub_1D8FA7CC8(v1, *(v0 + 24));
  return v1;
}

void *ArtworkTextColors.tertiary.getter()
{
  v1 = *(v0 + 32);
  sub_1D8FA7CC8(v1, *(v0 + 40));
  return v1;
}

void *ArtworkTextColors.quaternary.getter()
{
  v1 = *(v0 + 48);
  sub_1D8FA7CC8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_1D8FACB90()
{
  v1 = 0x7972616D697270;
  v2 = 0x7972616974726574;
  if (*v0 != 2)
  {
    v2 = 0x616E726574617571;
  }

  if (*v0)
  {
    v1 = 0x7261646E6F636573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FACC14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8FAD178(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8FACC3C(uint64_t a1)
{
  v2 = sub_1D8FAD124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FACC78(uint64_t a1)
{
  v2 = sub_1D8FAD124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkTextColors.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8488, &qword_1D91A0F50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FAD124();
  sub_1D9179F1C();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1D8FA804C();
  sub_1D917999C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[2];
  v13 = *(v3 + 24);
  v11 = 1;
  sub_1D917999C();
  v12 = v3[4];
  v13 = *(v3 + 40);
  v11 = 2;
  sub_1D917999C();
  v12 = v3[6];
  v13 = *(v3 + 56);
  v11 = 3;
  sub_1D917999C();
  return (*(v6 + 8))(v8, v5);
}

double ArtworkTextColors.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D8FAD2EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

double sub_1D8FACF38@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D8FAD2EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D8FACF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  if (!v4)
  {
    v6 = -1;
    v7 = a1[13];
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_7:
    v10 = -1;
    v11 = a1[15];
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = a1[10];

  v4 = sub_1D8D3707C(v5, v4);
  v6 = v8;
  v7 = a1[13];
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_6:
  v9 = a1[12];

  v7 = sub_1D8D3707C(v9, v7);
  v10 = v12;
  v11 = a1[15];
  if (v11)
  {
LABEL_10:
    v13 = a1[14];

    v11 = sub_1D8D3707C(v13, v11);
    v14 = v16;
    v15 = a1[17];
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = 0;
    v19 = -1;
    goto LABEL_16;
  }

LABEL_11:
  v14 = -1;
  v15 = a1[17];
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_14:
  v17 = a1[16];

  result = sub_1D8D3707C(v17, v15);
LABEL_16:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = result;
  *(a2 + 56) = v19;
  return result;
}

unint64_t sub_1D8FAD124()
{
  result = qword_1ECAB2110;
  if (!qword_1ECAB2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2110);
  }

  return result;
}

uint64_t sub_1D8FAD178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616E726574617571 && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8FAD2EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8498, &qword_1D91A12D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FAD124();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  sub_1D8FA7DD8();
  sub_1D917989C();
  v23 = v27;
  v37 = v28;
  LOBYTE(v24) = 1;
  sub_1D917989C();
  v21 = v27;
  v22 = v28;
  LOBYTE(v24) = 2;
  sub_1D917989C();
  v19 = v27;
  v20 = v28;
  v38 = 3;
  sub_1D917989C();
  (*(v6 + 8))(v8, v5);
  v18 = v35;
  HIDWORD(v17) = v36;
  v9 = v23;
  *&v24 = v23;
  v10 = v37;
  BYTE8(v24) = v37;
  v11 = v21;
  *&v25 = v21;
  v12 = v22;
  BYTE8(v25) = v22;
  v13 = v19;
  *v26 = v19;
  v14 = v20;
  v26[8] = v20;
  *&v26[16] = v35;
  v26[24] = v36;
  sub_1D8D614F0(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v18;
  v34 = BYTE4(v17);
  result = sub_1D8FAD8B8(&v27);
  v16 = v25;
  *a2 = v24;
  a2[1] = v16;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8FAD6F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FAD73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1D8FAD7B4()
{
  result = qword_1ECAB8490;
  if (!qword_1ECAB8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8490);
  }

  return result;
}

unint64_t sub_1D8FAD80C()
{
  result = qword_1ECAB2100;
  if (!qword_1ECAB2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2100);
  }

  return result;
}

unint64_t sub_1D8FAD864()
{
  result = qword_1ECAB2108;
  if (!qword_1ECAB2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2108);
  }

  return result;
}

id ArtworkURLScheme.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkURLScheme.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkURLScheme();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ArtworkURLScheme.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkURLScheme();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Color.description.getter(CGColor *a1, char a2)
{
  if (!a2)
  {
    return HexColor.description.getter(a1);
  }

  if (a2 == 1)
  {
    sub_1D917946C();

    v3 = CGColorGetColorSpace(a1);
    if (v3)
    {
      v4 = v3;
      CGColorSpaceCopyName(v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84A0, &qword_1D91A1340);
    v9 = sub_1D917826C();
    MEMORY[0x1DA7298F0](v9);

    MEMORY[0x1DA7298F0](0x3A6168706C61202CLL, 0xE900000000000020);
    CGColorGetAlpha(a1);
    v10 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v10);

    MEMORY[0x1DA7298F0](0x6E6F706D6F63202CLL, 0xEE00203A73746E65);
    sub_1D9178C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84A8, &qword_1D91A1348);
    v11 = sub_1D917826C();
    MEMORY[0x1DA7298F0](v11);

    return 0x28726F6C6F434743;
  }

  else
  {
    v6 = 0x756F72676B636162;
    v7 = 0xD000000000000012;
    v8 = 0x7261656C63;
    if (a1 != 3)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 <= 1)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t Color.debugDescription.getter(CGColor *a1, char a2)
{
  if (!a2)
  {
    sub_1D917946C();

    v7[0] = 0x65682E726F6C6F43;
    v7[1] = 0xEF28726F6C6F4378;
    v3 = HexColor.debugDescription.getter();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_1D917946C();

    strcpy(v7, "Color.cgColor(");
    HIBYTE(v7[1]) = -18;
    v3 = Color.description.getter(a1, 1);
LABEL_5:
    MEMORY[0x1DA7298F0](v3);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return v7[0];
  }

  v5 = 0x6C632E726F6C6F43;
  if (a1 != 3)
  {
    v5 = 0xD000000000000016;
  }

  if (a1 == 2)
  {
    v5 = 0xD000000000000018;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0xD000000000000019;
  }

  if (a1 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t Color.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = sub_1D9179ADC();
  v4 = sub_1D8D3707C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t Color.encode(to:)(void *a1, void *a2, char a3)
{
  v6 = sub_1D917953C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  if (a3)
  {
    if (a3 != 1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      sub_1D9179B5C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    v10 = a2;
    sub_1D8FAFC7C(v10);
    if ((v11 & 0x100000000) != 0)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_1D9179B4C();
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1D917946C();
      MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91D0E90);
      v24 = v10;
      type metadata accessor for CGColor(0);
      v13 = v12;
      sub_1D917964C();
      MEMORY[0x1DA7298F0](0x20786568206F7420, 0xED0000726F6C6F63);
      sub_1D91794FC();
      v14 = sub_1D917954C();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
      *(v16 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B8, &qword_1D91A1358);
      *v16 = v13;
      (*(v7 + 16))(&v16[v17], v9, v6);
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v14);
      swift_willThrow();
      (*(v7 + 8))(v9, v6);
      return __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    LODWORD(v20) = v11;
  }

  else
  {
    LODWORD(v20) = a2;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  sub_1D8FAE578();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

BOOL _s18PodcastsFoundation5ColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        type metadata accessor for CGColor(0);
        sub_1D8FAE5DC();
        return sub_1D917711C() & 1;
      }

      return 0;
    }

    if (a1 <= 1)
    {
      if (a1)
      {
        return a4 == 2 && a3 == 1;
      }

      else
      {
        return a4 == 2 && !a3;
      }
    }

    else if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      if (a1 == 3)
      {
        return a4 == 2 && a3 == 3;
      }

      return a4 == 2 && a3 == 4;
    }
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return sub_1D8FDF1EC(a1, a3);
  }
}

unint64_t sub_1D8FAE578()
{
  result = qword_1ECAB10F8;
  if (!qword_1ECAB10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10F8);
  }

  return result;
}

unint64_t sub_1D8FAE5DC()
{
  result = qword_1ECAB84C0;
  if (!qword_1ECAB84C0)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84C0);
  }

  return result;
}

unint64_t sub_1D8FAE640@<X0>(Swift::Int *a1@<X0>, PodcastsFoundation::ContentMode_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation11ContentModeO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t _s18PodcastsFoundation11ContentModeO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

unint64_t sub_1D8FAE730()
{
  result = qword_1ECAB84C8;
  if (!qword_1ECAB84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FAE8D4()
{
  result = qword_1ECAB2AC0;
  if (!qword_1ECAB2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AC0);
  }

  return result;
}

PodcastsFoundation::CropCode_optional __swiftcall CropCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8FAE998()
{
  v0 = CropCode.rawValue.getter();
  v2 = v1;
  if (v0 == CropCode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9179ACC();
  }

  return v5 & 1;
}

unint64_t sub_1D8FAEA38()
{
  result = qword_1ECAB84D0;
  if (!qword_1ECAB84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB84D0);
  }

  return result;
}

uint64_t sub_1D8FAEA8C()
{
  sub_1D9179DBC();
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8FAEAF4(uint64_t a1)
{
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8FAEB58(uint64_t a1)
{
  sub_1D9179DBC();
  CropCode.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FAEBC8@<X0>(uint64_t *a1@<X8>)
{
  result = CropCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8FAECB8(unsigned int a1)
{
  sub_1D9179DBC();
  sub_1D9179DEC();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FAED00(unsigned __int8 a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t HexColor.description.getter(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  v3 = bswap32(a1);
  v4 = MEMORY[0x1E69E76D0];
  *(v2 + 56) = MEMORY[0x1E69E7668];
  *(v2 + 64) = v4;
  if (HIBYTE(a1) == 255)
  {
    v3 >>= 8;
  }

  *(v2 + 32) = v3;

  return sub_1D917823C();
}

uint64_t HexColor.debugDescription.getter()
{
  sub_1D917946C();

  strcpy(v5, "HexColor(red: ");
  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](0x3A6E65657267202CLL, 0xE900000000000020);
  v1 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v1);

  MEMORY[0x1DA7298F0](0x203A65756C62202CLL, 0xE800000000000000);
  v2 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](0x3A6168706C61202CLL, 0xE900000000000020);
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v5[0];
}

uint64_t sub_1D8FAF19C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s18PodcastsFoundation8HexColorV8rawValueACs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t HexColor.ParseError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](34, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8FAF268()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](34, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1D8FAF2F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1D917830C();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

unsigned __int8 *HexColor.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = sub_1D9179ADC();
  v4 = sub_1D8D3E514(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_1D8FAF464@<X0>(void *a1@<X0>, unsigned int *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_1D9179ADC();
  v7 = sub_1D8D3E514(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v7;
  return result;
}

uint64_t HexColor.encode(to:)(void *a1, unsigned int a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  HexColor.description.getter(a2);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1D8FAF5F0(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  HexColor.description.getter(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1D8FAF6AC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s18PodcastsFoundation8HexColorV8rawValueACs6UInt32V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

CGColorSpaceRef sub_1D8FAF6D8()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1ECAB84D8 = result;
  return result;
}

void sub_1D8FAF6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_1D91783DC();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D8FF6818(v4, v5);
    v41 = v40;

    v5 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D917957C();
      v8 = v72;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v7)
          {
            v26 = 0;
            v27 = v7 + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v21 = __CFADD__(v30, v31);
              v26 = v30 + v31;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v27;
              --v22;
            }

            while (v22);
LABEL_47:
            v16 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v7)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *v7;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v21 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v21)
            {
              goto LABEL_128;
            }

            ++v7;
            --v8;
          }

          while (v8);
          v16 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v17 + v18;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v16 = 0;
LABEL_129:

        LOBYTE(v73) = v16;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v5) & 0xF;
  v73 = v6;
  v74 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v73;
        v16 = 1;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_129;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v63 * a3;
          if ((v70 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v71 = v68 + v69;
          v21 = __CFADD__(v70, v71);
          v63 = v70 + v71;
          if (v21)
          {
            goto LABEL_128;
          }

          v67 = (v67 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v73 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v21 = v51 >= v52;
          v44 = v51 - v52;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v73 + 1;
      v16 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v54 * a3;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v21 = __CFADD__(v61, v62);
        v54 = v61 + v62;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v58;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}