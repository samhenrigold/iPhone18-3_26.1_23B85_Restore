unint64_t sub_1D768D87C()
{
  result = qword_1EC9BD1C0;
  if (!qword_1EC9BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1C0);
  }

  return result;
}

uint64_t ArticleAdData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D768DE88(0, &qword_1EC9BD1C8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768D87C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42[0]) = 0;
  v10 = sub_1D7704930();
  v12 = v11;
  v57 = v10;
  LOBYTE(v42[0]) = 1;
  v13 = sub_1D7704940();
  LOBYTE(v42[0]) = 2;
  LODWORD(v36) = sub_1D7704940();
  LOBYTE(v42[0]) = 3;
  v32 = sub_1D7704930();
  v35 = v14;
  sub_1D76697B0();
  v16 = v15;
  LOBYTE(v37) = 4;
  v17 = sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v34 = v16;
  v33 = v17;
  sub_1D7704970();
  v31 = v42[0];
  LOBYTE(v37) = 5;
  v30[1] = 0;
  sub_1D7704970();
  v30[0] = v42[0];
  LOBYTE(v37) = 6;
  sub_1D7704970();
  v34 = v42[0];
  v54 = 7;
  v18 = sub_1D7704910();
  LODWORD(v33) = v13 & 1;
  LOBYTE(v16) = v36 & 1;
  v19 = *(v7 + 8);
  v36 = v18;
  v21 = v20;
  v19(v9, v6);
  v22 = v57;
  *&v37 = v57;
  *(&v37 + 1) = v12;
  LOBYTE(v38) = v33;
  BYTE1(v38) = v16;
  *(&v38 + 2) = v55;
  WORD3(v38) = v56;
  v23 = v35;
  *(&v38 + 1) = v32;
  *&v39 = v35;
  v24 = v31;
  *(&v39 + 1) = v31;
  *&v40 = v30[0];
  *(&v40 + 1) = v34;
  *&v41 = v36;
  *(&v41 + 1) = v21;
  v25 = v37;
  v26 = v38;
  v27 = v41;
  a2[3] = v40;
  a2[4] = v27;
  v28 = v39;
  a2[1] = v26;
  a2[2] = v28;
  *a2 = v25;
  sub_1D768DF4C(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v22;
  v42[1] = v12;
  v43 = v33;
  v44 = v16;
  v45 = v55;
  v46 = v56;
  v47 = v32;
  v48 = v23;
  v49 = v24;
  v50 = v30[0];
  v51 = v34;
  v52 = v36;
  v53 = v21;
  return sub_1D768DF84(v42);
}

void sub_1D768DE88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768D87C();
    v7 = a3(a1, &type metadata for ArticleAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D768DEEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArticleAdData.init(headline:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v29 = v6;
  v30 = v5;

  v28 = [a1 isDraft];
  v27 = [a1 isSponsored];
  v7 = [a1 primaryAudience];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7704260();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x4C4152454E4547;
  }

  v12 = [a1 iAdSectionIDs];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D7704400();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = [a1 iAdKeywords];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704400();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = [a1 iAdCategories];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D7704400();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = [a1 language];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D7704260();
    v25 = v24;

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v23 = 0;
    v25 = 0;
  }

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 17) = v27;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17;
  *(a2 + 56) = v20;
  *(a2 + 64) = v23;
  *(a2 + 72) = v25;
  return result;
}

unint64_t sub_1D768E1F4(uint64_t a1)
{
  *(a1 + 8) = sub_1D768E224();
  result = sub_1D768E278();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D768E224()
{
  result = qword_1EE0B0308;
  if (!qword_1EE0B0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0308);
  }

  return result;
}

unint64_t sub_1D768E278()
{
  result = qword_1EE0B0310;
  if (!qword_1EE0B0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0310);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D768E2E8(uint64_t a1, int a2)
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

uint64_t sub_1D768E330(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ArticleAdData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleAdData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D768E4E8()
{
  result = qword_1EC9BD1D8;
  if (!qword_1EC9BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1D8);
  }

  return result;
}

unint64_t sub_1D768E540()
{
  result = qword_1EC9BD1E0;
  if (!qword_1EC9BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1E0);
  }

  return result;
}

unint64_t sub_1D768E598()
{
  result = qword_1EC9BD1E8;
  if (!qword_1EC9BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1E8);
  }

  return result;
}

uint64_t sub_1D768E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F736E6F70537369 && a2 == 0xEB00000000646572 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEF65636E65696475 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69746365536461 && a2 == 0xEA0000000000736ELL || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D7704A30();

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

void __swiftcall FeedAdData.copy(targetingKeywords:)(NewsAds::FeedAdData *__return_ptr retstr, Swift::OpaquePointer targetingKeywords)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v11 = *(v2 + 72);
  retstr->identifier._countAndFlagsBits = *v2;
  retstr->identifier._object = v4;
  retstr->contentProviderID = v5;
  retstr->isWhitelisted = v6;
  retstr->primaryAudience._countAndFlagsBits = v7;
  retstr->primaryAudience._object = v8;
  retstr->adKeywords._rawValue = v9;
  retstr->adCategories._rawValue = v10;
  retstr->language.value._countAndFlagsBits = v12;
  retstr->language.value._object = v11;
  retstr->targetingKeywords.value = targetingKeywords;
}

uint64_t FeedAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedAdData.primaryAudience.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedAdData.language.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall FeedAdData.init(identifier:contentProviderID:isWhitelisted:primaryAudience:adKeywords:adCategories:language:targetingKeywords:)(NewsAds::FeedAdData *__return_ptr retstr, Swift::String identifier, Swift::Int contentProviderID, Swift::Bool isWhitelisted, Swift::String primaryAudience, Swift::OpaquePointer adKeywords, Swift::OpaquePointer adCategories, Swift::String_optional language, Swift::OpaquePointer_optional targetingKeywords)
{
  retstr->identifier = identifier;
  retstr->contentProviderID = contentProviderID;
  retstr->isWhitelisted = isWhitelisted;
  retstr->primaryAudience = primaryAudience;
  retstr->adKeywords = adKeywords;
  retstr->adCategories = adCategories;
  retstr->language = language;
  retstr->targetingKeywords.value._rawValue = targetingKeywords.value._rawValue;
}

uint64_t sub_1D768EA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D7704A30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1D768EAA8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65676175676E616CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F7779654B6461;
  if (v1 != 4)
  {
    v4 = 0x6F67657461436461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C65746968577369;
  if (v1 != 2)
  {
    v5 = 0x417972616D697270;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1D768EBD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D768FFA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D768EBF8(uint64_t a1)
{
  v2 = sub_1D768FD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D768EC34(uint64_t a1)
{
  v2 = sub_1D768FD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedAdData.encode(to:)(void *a1)
{
  sub_1D768FDC0(0, &qword_1EC9BD1F0, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v24 = *(v1 + 16);
  v23 = *(v1 + 24);
  v7 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v7;
  v8 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = v8;
  v9 = *(v1 + 72);
  v18[0] = *(v1 + 64);
  v18[1] = v9;
  v10 = *(v1 + 80);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1D768FD6C();
  sub_1D7704B10();
  LOBYTE(v27) = 0;
  v15 = v25;
  sub_1D77049C0();
  if (v15)
  {
    return (*(v4 + 8))(v6, v14);
  }

  v16 = v20;
  LOBYTE(v27) = 1;
  sub_1D77049F0();
  LOBYTE(v27) = 2;
  v25 = v6;
  sub_1D77049D0();
  LOBYTE(v27) = 3;
  sub_1D77049C0();
  v27 = v16;
  v26 = 4;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D7704A00();
  v27 = v19;
  v26 = 5;
  sub_1D7704A00();
  LOBYTE(v27) = 6;
  sub_1D77049A0();
  v27 = v10;
  v26 = 7;
  sub_1D77049B0();
  return (*(v4 + 8))(v25, v14);
}

uint64_t FeedAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D768FDC0(0, &qword_1EC9BD200, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768FD6C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v10 = sub_1D7704930();
  v12 = v11;
  LOBYTE(v43[0]) = 1;
  v56 = sub_1D7704960();
  LOBYTE(v43[0]) = 2;
  v36 = sub_1D7704940();
  LOBYTE(v43[0]) = 3;
  v32 = sub_1D7704930();
  v35 = v13;
  sub_1D76697B0();
  v15 = v14;
  LOBYTE(v37) = 4;
  v16 = sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v34 = v15;
  v33 = v16;
  sub_1D7704970();
  v31 = v43[0];
  LOBYTE(v37) = 5;
  v30 = 0;
  sub_1D7704970();
  v28 = v43[0];
  LOBYTE(v43[0]) = 6;
  v27 = sub_1D7704910();
  v29 = v17;
  v53 = 7;
  sub_1D7704920();
  v36 &= 1u;
  LOBYTE(v15) = v36;
  (*(v7 + 8))(v9, v6);
  v18 = v54;
  *&v37 = v10;
  *(&v37 + 1) = v12;
  *&v38 = v56;
  BYTE8(v38) = v15;
  HIDWORD(v38) = *&v55[3];
  *(&v38 + 9) = *v55;
  v19 = v35;
  *&v39 = v32;
  *(&v39 + 1) = v35;
  v20 = v31;
  *&v40 = v31;
  *(&v40 + 1) = v28;
  v21 = v29;
  *&v41 = v27;
  *(&v41 + 1) = v29;
  v42 = v54;
  v23 = v39;
  v22 = v40;
  v24 = v41;
  *(a2 + 80) = v54;
  *(a2 + 48) = v22;
  *(a2 + 64) = v24;
  v25 = v37;
  *(a2 + 16) = v38;
  *(a2 + 32) = v23;
  *a2 = v25;
  sub_1D768FE24(&v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v10;
  v43[1] = v12;
  v43[2] = v56;
  v44 = v36;
  *v45 = *v55;
  *&v45[3] = *&v55[3];
  v46 = v32;
  v47 = v19;
  v48 = v20;
  v49 = v28;
  v50 = v27;
  v51 = v21;
  v52 = v18;
  return sub_1D768FE5C(v43);
}

__n128 FeedAdData.init(feedDescriptor:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 backingChannel];
  if (v4)
  {
    FeedAdData.init(channel:section:)(v4, [a1 backingTag], v13);
  }

  else
  {
    FeedAdData.init(tag:)([a1 backingTag], v13);
  }

  v5 = v13[1];
  v6 = v13[2];
  v7 = v14;
  v8 = v15;
  result = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  *a2 = v13[0];
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = result;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  return result;
}

uint64_t FeedAdData.init(channel:section:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 identifier];
  v7 = sub_1D7704260();
  v39 = v8;
  v40 = v7;

  v38 = [a1 contentProvider];
  v37 = [a1 isWhitelisted];
  v9 = [a2 primaryAudience];
  if (v9)
  {
    v10 = v9;
    v33 = sub_1D7704260();
    v35 = v11;
  }

  else
  {
    v33 = 0x4C4152454E4547;
    v35 = 0xE700000000000000;
  }

  v12 = [a1 iAdKeywords];
  if (v12)
  {
    v13 = v12;
    sub_1D7704400();
  }

  v14 = [a2 iAdKeywords];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7704400();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7669540(v16);
  sub_1D76697B0();
  sub_1D766C8DC();
  v17 = sub_1D7704330();

  v18 = [a1 iAdCategories];
  if (v18)
  {
    v19 = v18;
    sub_1D7704400();
  }

  v20 = [a2 iAdCategories];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1D7704400();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7669540(v22);
  v23 = sub_1D7704330();

  v24 = [a2 language];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D7704260();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [a1 adTargetingKeywords];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D7704400();

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v31 = 0;
  }

  *a3 = v40;
  *(a3 + 8) = v39;
  *(a3 + 16) = v38;
  *(a3 + 24) = v37;
  *(a3 + 32) = v34;
  *(a3 + 40) = v36;
  *(a3 + 48) = v17;
  *(a3 + 56) = v23;
  *(a3 + 64) = v26;
  *(a3 + 72) = v28;
  *(a3 + 80) = v31;
  return result;
}

uint64_t FeedAdData.init(tag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v27 = v6;
  v29 = v5;

  v7 = [a1 primaryAudience];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7704260();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x4C4152454E4547;
  }

  v12 = [a1 iAdKeywords];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D7704400();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = [a1 iAdCategories];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704400();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = [a1 language];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D7704260();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 adTargetingKeywords];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D7704400();

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v25 = 0;
  }

  *a2 = v30;
  *(a2 + 8) = v28;
  *(a2 + 16) = 1;
  *(a2 + 24) = 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14;
  *(a2 + 56) = v17;
  *(a2 + 64) = v20;
  *(a2 + 72) = v22;
  *(a2 + 80) = v25;
  return result;
}

uint64_t _s7NewsAds10FeedAdDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a2[2];
  v12 = *(a2 + 24);
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 0;
    if (v2 != v11)
    {
      return result;
    }

    v26 = a2[7];
    v27 = v6;
    v20 = a2[8];
    v21 = v8;
    v23 = a2[9];
    v24 = v9;
    v22 = a2[10];
    v25 = v10;
LABEL_7:
    if ((v3 ^ v12))
    {
      return result;
    }

    if ((v4 != v13 || v5 != v14) && (sub_1D7704A30() & 1) == 0 || (sub_1D768EA18(v7, v15) & 1) == 0 || (sub_1D768EA18(v27, v26) & 1) == 0)
    {
      return 0;
    }

    if (v24)
    {
      v18 = v25;
      if (!v23)
      {
        return 0;
      }

      if (v21 != v20 || v24 != v23)
      {
        v19 = sub_1D7704A30();
        v18 = v25;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v18 = v25;
      if (v23)
      {
        return 0;
      }
    }

    if (v18)
    {
      if (v22 && (sub_1D768EA18(v18, v22) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v22)
    {
      return 1;
    }

    return 0;
  }

  v26 = a2[7];
  v27 = a1[7];
  v20 = a2[8];
  v21 = a1[8];
  v23 = a2[9];
  v24 = a1[9];
  v22 = a2[10];
  v25 = a1[10];
  v17 = sub_1D7704A30();
  result = 0;
  if ((v17 & 1) != 0 && v2 == v11)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D768FD6C()
{
  result = qword_1EC9BD1F8;
  if (!qword_1EC9BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1F8);
  }

  return result;
}

void sub_1D768FDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768FD6C();
    v7 = a3(a1, &type metadata for FeedAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D768FEA0()
{
  result = qword_1EC9BD208;
  if (!qword_1EC9BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD208);
  }

  return result;
}

unint64_t sub_1D768FEF8()
{
  result = qword_1EC9BD210;
  if (!qword_1EC9BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD210);
  }

  return result;
}

unint64_t sub_1D768FF50()
{
  result = qword_1EC9BD218;
  if (!qword_1EC9BD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD218);
  }

  return result;
}

uint64_t sub_1D768FFA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65746968577369 && a2 == 0xED00006465747369 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEF65636E65696475 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D77154A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D7704A30();

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

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static Commands.DebugAds.presentDebugger.getter()
{
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }
}

uint64_t static ContextMenuItem.debugAd(_:)(__int128 *a1)
{
  v16 = sub_1D7703F50();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[7];
  v24 = a1[6];
  v25 = v5;
  v26 = a1[8];
  v6 = a1[3];
  v20 = a1[2];
  v21 = v6;
  v7 = a1[5];
  v22 = a1[4];
  v23 = v7;
  v8 = a1[1];
  v18 = *a1;
  v19 = v8;
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  sub_1D766D644(&v18, v17);
  v11 = [v10 bundleForClass_];
  sub_1D7702E60();

  v12 = sub_1D7704230();
  v13 = [objc_opt_self() systemImageNamed_];

  (*(v2 + 104))(v4, *MEMORY[0x1E69D7B48], v16);
  v17[6] = v24;
  v17[7] = v25;
  v17[8] = v26;
  v17[2] = v20;
  v17[3] = v21;
  v17[4] = v22;
  v17[5] = v23;
  v17[0] = v18;
  v17[1] = v19;
  swift_allocObject();
  return sub_1D7703F00();
}

void BannerAdLayout.init(size:topPadding:bottomPadding:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t FeedBannerAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D769072C@<X0>(uint64_t a1@<X1>, uint64_t *a6@<X8>)
{
  result = sub_1D769076C(a1);
  *a6 = result;
  return result;
}

uint64_t sub_1D769076C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for FeedBannerAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AdRequestManager.__allocating_init(contextBuilder:adManager:requestStore:journal:host:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v14 = *a5;
  v12 = *(a5 + 2);
  v11 = *(a5 + 3);
  sub_1D7667CB8(a1, v10 + 16);
  sub_1D7667CB8(a2, v10 + 56);
  *(v10 + 96) = a3;
  *(v10 + 104) = a4;
  *(v10 + 112) = v14;
  *(v10 + 128) = v12;
  *(v10 + 136) = v11;
  return v10;
}

uint64_t AdRequestManager.existingRequest(for:)@<X0>(char *a1@<X8>)
{
  v3 = (*(*(*v1 + 120) + 8))(*(*v1 + 96));
  v6 = 1;
  AdRequestStore.request(for:behavior:)(v3, v4, &v6, a1);
}

void *AdRequestManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t AdRequestManager.__deallocating_deinit()
{
  AdRequestManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7690A2C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80) & 0xF8;
  v4 = *(*(a3 + 24) - 8);
  v5 = ((((*(v4 + 64) + ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + ((v3 + 23) & ~v3 & 0x1F8) + 8) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1D7690BBC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v6 = *(*(a4 + 24) - 8);
  v7 = ((((*(v6 + 64) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + ((v5 + 23) & ~v5 & 0x1F8) + 8) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 | 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 255;
  v13 = (a2 - 255) >> 8;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

double FeedPrerollAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t FeedPrerollAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D768DF4C(v8, &v7);
}

uint64_t FeedPrerollAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7690E7C(v7, &v6);
}

double FeedPrerollAdContext.videoData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 160);
  *a1 = result;
  return result;
}

uint64_t FeedPrerollAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v9 = *(v1 + 208);
  v10 = v2;
  v11 = *(v1 + 240);
  v3 = v11;
  v4 = *(v1 + 192);
  v8[0] = *(v1 + 176);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7690F3C(v8, v7);
}

uint64_t FeedPrerollAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = *(v1 + 328);
  v2 = *(v1 + 248);
  v3 = *(v1 + 280);
  v10 = *(v1 + 264);
  v4 = v10;
  v11 = v3;
  v6 = *(v1 + 312);
  v12 = *(v1 + 296);
  v5 = v12;
  v13 = v6;
  v9 = v2;
  *(a1 + 80) = v14;
  *(a1 + 32) = v3;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v2;
  *(a1 + 16) = v4;
  return sub_1D768FE24(&v9, v8);
}

double FeedPrerollAdContext.issueData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  *a1 = *(v1 + 336);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double FeedPrerollAdContext.sectionData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 368);
  *a1 = *(v1 + 360);
  a1[1] = v2;

  return result;
}

uint64_t FeedPrerollAdContext.init(provider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v37;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v37;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for ArticleAdData, v11, &type metadata for ArticleAdData, v12);
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v90 = v74;
  v91 = v75;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.data<A>(for:)(&type metadata for ChannelAdData, v13, &type metadata for ChannelAdData, v14);
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  AdContextDataProviding.data<A>(for:)(&type metadata for VideoAdData, v15, &type metadata for VideoAdData, v16);
  v17 = v37;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v18, &type metadata for PlacementAdData, v19);
  v35 = v37;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedAdData, v20, &type metadata for FeedAdData, v21);
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = v69;
  v79 = v64;
  v80 = v65;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedGroupAdData, v22, &type metadata for FeedGroupAdData, v23);
  *&v85[23] = v60;
  *&v85[39] = v61;
  *&v85[55] = v62;
  *&v85[71] = v63;
  *&v85[7] = v59;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v24, &type metadata for IssueAdData, v25);
  v26 = v37;
  v34 = v38;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v27, &type metadata for SectionAdData, v28);
  v33 = v37;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v29, &type metadata for ReferralAdData, v30);
  __src[3] = v76;
  __src[4] = v77;
  __src[1] = v74;
  __src[2] = v75;
  __src[5] = v78;
  __src[6] = v70;
  __src[7] = v71;
  __src[8] = v72;
  __src[9] = v73;
  *(&__src[11] + 9) = *&v85[16];
  *(&__src[12] + 9) = *&v85[32];
  *(&__src[13] + 9) = *&v85[48];
  *(&__src[14] + 8) = *&v85[63];
  *(&__src[10] + 9) = *v85;
  *(&__src[18] + 8) = v67;
  *(&__src[19] + 8) = v68;
  *(&__src[16] + 8) = v65;
  *(&__src[17] + 8) = v66;
  v32 = v58;
  LOBYTE(__src[0]) = v37;
  *(&__src[0] + 1) = v37;
  *&__src[10] = v37;
  BYTE8(__src[10]) = v37;
  *(&__src[15] + 8) = v64;
  *(&__src[20] + 1) = v69;
  __src[21] = v37;
  LOWORD(__src[22]) = v38;
  *(&__src[22] + 8) = v37;
  BYTE8(__src[23]) = v58;
  memcpy(a2, __src, 0x179uLL);
  sub_1D7691844(__src, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v37) = v7;
  *(&v37 + 1) = v10;
  v40 = v92;
  v41 = v93;
  v38 = v90;
  v39 = v91;
  v42 = v94;
  v43 = v86;
  v44 = v87;
  v45 = v88;
  v46 = v89;
  v47 = v17;
  v48 = v35;
  v50 = *&v85[16];
  v51 = *&v85[32];
  *v52 = *&v85[48];
  *&v52[15] = *&v85[63];
  v49 = *v85;
  *&v52[79] = v82;
  *&v52[95] = v83;
  *&v52[47] = v80;
  *&v52[63] = v81;
  *&v52[31] = v79;
  v53 = v84;
  v54 = v26;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  return sub_1D769187C(&v37);
}

uint64_t sub_1D76918AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x61746144707061;
    v7 = 0x44656C6369747261;
    v8 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v8 = 0x7461446F65646976;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6174614472657375;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7461446575737369;
    v2 = 0x446E6F6974636573;
    if (a1 != 9)
    {
      v2 = 0x6C61727265666572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E656D6563616C70;
    v4 = 0x74614470756F7267;
    if (a1 != 6)
    {
      v4 = 0x6174614464656566;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7691A48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7693D58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7691A7C(uint64_t a1)
{
  v2 = sub_1D76921B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7691AB8(uint64_t a1)
{
  v2 = sub_1D76921B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedPrerollAdContext.encode(to:)(void *a1)
{
  sub_1D7692CE0(0, &qword_1EC9BD228, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v37 = *v1;
  v36 = *(v1 + 1);
  v7 = *(v1 + 4);
  v75 = *(v1 + 3);
  v76 = v7;
  v8 = *(v1 + 2);
  v73 = *(v1 + 1);
  v74 = v8;
  v9 = *(v1 + 6);
  v77 = *(v1 + 5);
  v78 = v9;
  v11 = *(v1 + 8);
  v10 = *(v1 + 9);
  v79 = *(v1 + 7);
  v80 = v11;
  v12 = *(v1 + 13);
  v13 = *(v1 + 14);
  v14 = *(v1 + 11);
  v83 = *(v1 + 12);
  v84 = v12;
  v15 = *(v1 + 20);
  v35 = v1[168];
  v85 = v13;
  v86 = *(v1 + 30);
  v81 = v10;
  v82 = v14;
  v16 = *(v1 + 42);
  v92 = *(v1 + 41);
  v17 = *(v1 + 312);
  v90 = *(v1 + 296);
  v91 = v17;
  v18 = *(v1 + 280);
  v88 = *(v1 + 264);
  v89 = v18;
  v87 = *(v1 + 248);
  v34 = *(v1 + 43);
  v33 = *(v1 + 176);
  v19 = *(v1 + 46);
  v30 = *(v1 + 45);
  v31 = v19;
  v32 = v16;
  v20 = v1[376];
  v21 = a1[3];
  v22 = a1;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1D76921B8();
  sub_1D7704B10();
  LOBYTE(v46) = v37;
  v25 = v6;
  LOBYTE(v43[0]) = 0;
  sub_1D7669D40();
  v26 = v38;
  sub_1D7704A00();
  if (v26)
  {
    return (*(v4 + 8))(v6, v24);
  }

  v28 = v35;
  LODWORD(v38) = v20;
  *&v46 = v36;
  LOBYTE(v43[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  v70 = v75;
  v71 = v76;
  v72 = v77;
  v68 = v73;
  v69 = v74;
  v67 = 2;
  sub_1D768DF4C(&v73, &v46);
  sub_1D768E278();
  sub_1D7704A00();
  v66[2] = v70;
  v66[3] = v71;
  v66[4] = v72;
  v66[0] = v68;
  v66[1] = v69;
  sub_1D768DF84(v66);
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v61 = 3;
  sub_1D7690E7C(&v78, &v46);
  sub_1D769220C();
  sub_1D7704A00();
  v60[0] = v62;
  v60[1] = v63;
  v60[2] = v64;
  v60[3] = v65;
  sub_1D76917F0(v60);
  *&v46 = v15;
  LOBYTE(v43[0]) = 4;
  sub_1D7685DF0();
  sub_1D7704A00();
  LOBYTE(v46) = v28;
  LOBYTE(v43[0]) = 5;
  sub_1D76794CC();
  sub_1D7704A00();
  v57 = v84;
  v58 = v85;
  v59 = v86;
  v55 = v82;
  v56 = v83;
  v54 = 6;
  sub_1D7690F3C(&v82, &v46);
  sub_1D7692260();
  sub_1D7704A00();
  v52[2] = v57;
  v52[3] = v58;
  v53 = v59;
  v52[0] = v55;
  v52[1] = v56;
  sub_1D769179C(v52);
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  v45 = 7;
  sub_1D768FE24(&v87, v43);
  sub_1D766CFCC();
  sub_1D7704A00();
  v43[2] = v48;
  v43[3] = v49;
  v43[4] = v50;
  v44 = v51;
  v43[0] = v46;
  v43[1] = v47;
  sub_1D768FE5C(v43);
  v40 = v32;
  v41 = v34;
  v42 = v33;
  v39 = 8;
  sub_1D76922B4();

  sub_1D77049B0();

  v40 = v30;
  v41 = v31;
  v39 = 9;
  sub_1D7692308();

  sub_1D77049B0();

  LOBYTE(v40) = v38;
  v39 = 10;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v4 + 8))(v25, v24);
}

unint64_t sub_1D76921B8()
{
  result = qword_1EC9BD230;
  if (!qword_1EC9BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD230);
  }

  return result;
}

unint64_t sub_1D769220C()
{
  result = qword_1EE0B02F8;
  if (!qword_1EE0B02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02F8);
  }

  return result;
}

unint64_t sub_1D7692260()
{
  result = qword_1EE0B0098[0];
  if (!qword_1EE0B0098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B0098);
  }

  return result;
}

unint64_t sub_1D76922B4()
{
  result = qword_1EC9BD238;
  if (!qword_1EC9BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD238);
  }

  return result;
}

unint64_t sub_1D7692308()
{
  result = qword_1EC9BD240;
  if (!qword_1EC9BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD240);
  }

  return result;
}

uint64_t FeedPrerollAdContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7692CE0(0, &qword_1EC9BD248, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D76921B8();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v11 = v7;
  v31 = a2;
  LOBYTE(v33[0]) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v12 = v34;
  LOBYTE(v33[0]) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v29 = v12;
  v30 = v34;
  v80 = 2;
  sub_1D768E224();
  sub_1D7704970();
  v101 = v83;
  v102 = v84;
  v103 = v85;
  v99 = v81;
  v100 = v82;
  v75 = 3;
  sub_1D7692D44();
  sub_1D7704970();
  v95 = v76;
  v96 = v77;
  v97 = v78;
  v98 = v79;
  LOBYTE(v33[0]) = 4;
  sub_1D7685D9C();
  sub_1D7704970();
  v13 = v34;
  LOBYTE(v33[0]) = 5;
  sub_1D7679440();
  sub_1D7704970();
  v14 = v34;
  v69 = 6;
  sub_1D7692D98();
  sub_1D7704970();
  *(&v94[1] + 7) = v71;
  *(&v94[2] + 7) = v72;
  *(&v94[3] + 7) = v73;
  *(&v94[4] + 7) = v74;
  *(v94 + 7) = v70;
  v62 = 7;
  sub_1D766CDD0();
  sub_1D7704970();
  v90 = v65;
  v91 = v66;
  v92 = v67;
  v93 = v68;
  v88 = v63;
  v89 = v64;
  LOBYTE(v33[0]) = 8;
  sub_1D7692DEC();
  sub_1D7704920();
  v15 = v6;
  v16 = v34;
  v17 = v35;
  v26 = v36;
  LOBYTE(v33[0]) = 9;
  sub_1D7692E40();
  v27 = v9;
  v28 = v15;
  sub_1D7704920();
  v18 = v34;
  v25 = v35;
  v60 = 10;
  sub_1D768AAE4();
  sub_1D7704920();
  (*(v11 + 8))(v27, v28);
  LODWORD(v28) = v61;
  LOBYTE(v12) = v29;
  LOBYTE(v33[0]) = v29;
  *(v33 + 1) = v104[0];
  DWORD1(v33[0]) = *(v104 + 3);
  v19 = v30;
  *(&v33[0] + 1) = v30;
  v33[3] = v101;
  v33[4] = v102;
  v33[1] = v99;
  v33[2] = v100;
  v33[8] = v97;
  v33[9] = v98;
  v33[6] = v95;
  v33[7] = v96;
  v33[5] = v103;
  *&v33[10] = v13;
  v24 = v14;
  BYTE8(v33[10]) = v14;
  *(&v33[11] + 9) = v94[1];
  *(&v33[12] + 9) = v94[2];
  *(&v33[13] + 9) = v94[3];
  *(&v33[14] + 8) = *(&v94[3] + 15);
  *(&v33[10] + 9) = v94[0];
  *(&v33[18] + 8) = v91;
  *(&v33[19] + 8) = v92;
  *(&v33[16] + 8) = v89;
  *(&v33[17] + 8) = v90;
  *(&v33[15] + 8) = v88;
  *(&v33[20] + 1) = v93;
  *&v33[21] = v16;
  *(&v33[21] + 1) = v17;
  LOWORD(v15) = v26;
  LOWORD(v33[22]) = v26;
  *(&v33[22] + 2) = v86;
  WORD3(v33[22]) = v87;
  v20 = v18;
  *(&v33[22] + 1) = v18;
  v21 = v25;
  *&v33[23] = v25;
  BYTE8(v33[23]) = v61;
  memcpy(v31, v33, 0x179uLL);
  sub_1D7691844(v33, &v34);
  __swift_destroy_boxed_opaque_existential_1(v32);
  LOBYTE(v34) = v12;
  *(&v34 + 1) = v104[0];
  HIDWORD(v34) = *(v104 + 3);
  v35 = v19;
  v38 = v101;
  v39 = v102;
  v36 = v99;
  v37 = v100;
  v43 = v97;
  v44 = v98;
  v41 = v95;
  v42 = v96;
  v40 = v103;
  v45 = v13;
  v46 = v24;
  v48 = v94[1];
  v49 = v94[2];
  *v50 = v94[3];
  *&v50[15] = *(&v94[3] + 15);
  v47 = v94[0];
  *&v50[79] = v91;
  *&v50[95] = v92;
  *&v50[47] = v89;
  *&v50[63] = v90;
  *&v50[31] = v88;
  v51 = v93;
  v52 = v16;
  v53 = v17;
  v54 = v15;
  v55 = v86;
  v56 = v87;
  v57 = v20;
  v58 = v21;
  v59 = v28;
  return sub_1D769187C(&v34);
}

void sub_1D7692CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76921B8();
    v7 = a3(a1, &type metadata for FeedPrerollAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7692D44()
{
  result = qword_1EE0B02F0;
  if (!qword_1EE0B02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02F0);
  }

  return result;
}

unint64_t sub_1D7692D98()
{
  result = qword_1EE0B0090;
  if (!qword_1EE0B0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0090);
  }

  return result;
}

unint64_t sub_1D7692DEC()
{
  result = qword_1EC9BD250;
  if (!qword_1EC9BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD250);
  }

  return result;
}

unint64_t sub_1D7692E40()
{
  result = qword_1EC9BD258;
  if (!qword_1EC9BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD258);
  }

  return result;
}

id FeedPrerollAdContext.newsSupplementalContext.getter()
{
  v1 = sub_1D77038A0();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v34 = v32 - v4;
  v39 = *v0;
  v5 = *(v0 + 4);
  v70 = *(v0 + 3);
  v71 = v5;
  v6 = *(v0 + 6);
  v72 = *(v0 + 5);
  v7 = *(v0 + 2);
  v68 = *(v0 + 1);
  v69 = v7;
  v8 = *(v0 + 9);
  v9 = *(v0 + 7);
  v75 = *(v0 + 8);
  v76 = v8;
  v73 = v6;
  v74 = v9;
  v10 = *(v0 + 20);
  v11 = *(v0 + 23);
  v12 = *(v0 + 24);
  v13 = *(v0 + 25);
  v15 = *(v0 + 26);
  v14 = *(v0 + 27);
  v44 = *(v0 + 22);
  v45 = v14;
  v16 = *(v0 + 29);
  v49 = *(v0 + 30);
  v17 = *(v0 + 42);
  v82 = *(v0 + 41);
  v18 = *(v0 + 312);
  v80 = *(v0 + 296);
  v81 = v18;
  v19 = *(v0 + 280);
  v78 = *(v0 + 264);
  v79 = v19;
  v77 = *(v0 + 248);
  v38 = *(v0 + 43);
  v33 = *(v0 + 176);
  v20 = *(v0 + 46);
  v32[1] = *(v0 + 45);
  v32[2] = v17;
  v42 = v20;
  v46 = v0[376];
  v21 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v68, &v50);
  sub_1D7690E7C(&v73, &v50);

  v48 = v11;

  v43 = v12;

  v41 = v13;

  v40 = v15;

  v47 = v16;

  v22 = [v21 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v52 = v70;
  v53 = v71;
  v54 = v72;
  v50 = v68;
  v51 = v69;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  sub_1D76B9740(&v50, &v62, v75);
  v66[0] = v62;
  v66[1] = v63;
  v66[2] = v64;
  v66[3] = v65;
  sub_1D76939B0(v66, &qword_1EE0B02E8, &type metadata for ChannelAdData);
  v67[2] = v52;
  v67[3] = v53;
  v67[4] = v54;
  v67[0] = v50;
  v67[1] = v51;
  sub_1D76939B0(v67, &qword_1EE0B0300, &type metadata for ArticleAdData);
  if (v38)
  {

    sub_1D7703AD0();
    v23 = v37;
    v24 = *(v36 + 104);
    v25 = *MEMORY[0x1E69C5F50];
    v26 = *MEMORY[0x1E69C5F58];
    v27 = v33;
    if (v33)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    v24(v34, v28, v37);
    sub_1D7703B80();
    if ((v27 & 0x100) != 0)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    v24(v35, v29, v23);
    sub_1D7703BE0();
  }

  v58 = v79;
  v59 = v80;
  v60 = v81;
  v61 = v82;
  v56 = v77;
  v57 = v78;
  if (v42)
  {
    if ((BYTE8(v78) & 1) != 0 || v78 > 0)
    {
    }

    sub_1D768FE24(&v77, &v50);
    sub_1D768FE24(&v77, &v50);
    sub_1D7703C10();
    sub_1D768FE5C(&v77);
  }

  else
  {
    sub_1D768FE24(&v77, &v50);
  }

  sub_1D768078C(&v56);
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v50 = v56;
  v51 = v57;
  sub_1D76939B0(&v50, &qword_1EE0B0468, &type metadata for FeedAdData);

  sub_1D7703A50();

  sub_1D7703A80();

  sub_1D7703A90();

  sub_1D77039C0();
  v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v30 initWithInteger_];
  sub_1D7703AC0();

  if (v46 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1D7703B10();
  return v22;
}

uint64_t FeedPrerollAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = v0[2];
  if (!v0[11] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v4, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t FeedPrerollAdContext.additionalPromotableContentDepictions.getter()
{
  v26 = sub_1D7702FD0();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7702FA0();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 240);
  v6 = *(v5 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = *(v0 + 8);
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v9 = sub_1D7703780();
    v20 = (v3 + 8);
    v21 = v9;
    v19 = (v1 + 8);
    v10 = v5 + 88;
    v22 = v8;
    do
    {
      v12 = *(v10 - 48);
      v13 = *(v10 - 32);
      v14 = *(v10 - 16);

      v30 = v12;

      v29 = v13;

      v15 = v23;
      sub_1D7702F90();
      v16 = sub_1D7702F70();
      v27 = v17;
      v28 = v16;
      (*v20)(v15, v24);
      if (v14 || *(v8 + 16))
      {
      }

      else
      {
      }

      v10 += 64;
      v11 = v25;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v19)(v11, v26);

      sub_1D7703770();

      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      --v6;
      v8 = v22;
    }

    while (v6);
    return v31;
  }

  return result;
}

uint64_t sub_1D76939B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7666F64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7693A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
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

uint64_t sub_1D7693A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 376) = 0;
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
      *(result + 377) = 1;
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

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedPrerollAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedPrerollAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7693C54()
{
  result = qword_1EC9BD260;
  if (!qword_1EC9BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD260);
  }

  return result;
}

unint64_t sub_1D7693CAC()
{
  result = qword_1EC9BD268;
  if (!qword_1EC9BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD268);
  }

  return result;
}

unint64_t sub_1D7693D04()
{
  result = qword_1EC9BD270;
  if (!qword_1EC9BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD270);
  }

  return result;
}

uint64_t sub_1D7693D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446F65646976 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t BannerAdImpressionInfo.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BannerAdImpressionInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionInfo(0) + 32);
  v4 = sub_1D7702F50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BannerAdImpressionInfo(uint64_t a1)
{
  result = qword_1EE0AE8A8;
  if (!qword_1EE0AE8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BannerAdImpressionInfo.traits.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionInfo(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

void sub_1D7694288(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1D7702F50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Journal.__allocating_init()()
{
  v0 = swift_allocObject();
  Journal.init()();
  return v0;
}

uint64_t Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v18 = a1;
  v9 = *(*v5 + 88);
  v10 = *(*v5 + 96);
  v11 = *(*v5 + 104);
  v21[0] = *(*v5 + 80);
  v8 = v21[0];
  v21[1] = v9;
  v21[2] = v10;
  v21[3] = v11;
  v12 = type metadata accessor for JournalEntry(0, v21);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  sub_1D76F491C(a2, a3, v19, v20, v18, v8, v9, v10, &v17 - v14, v11);
  sub_1D766FFCC(v15, a2, a3);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D76945D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a5;
  v27 = a7;
  v24 = a1;
  v25 = a4;
  v23 = a3;
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  *&v28 = *(*v7 + 80);
  v10 = v28;
  *(&v28 + 1) = v11;
  *&v29 = v12;
  *(&v29 + 1) = v13;
  v14 = type metadata accessor for JournalEntry(0, &v28);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  LOBYTE(v16) = *(a6 + 32);
  v18 = a6[1];
  v28 = *a6;
  v29 = v18;
  v30 = v16;
  v21 = v13;
  v19 = v23;
  v27(a2, v23, v25, v26, v24, &v28, v10, v11, v12, v21);
  sub_1D766FFCC(v17, a2, v19);
  return (*(v15 + 8))(v17, v14);
}

Swift::Void __swiftcall Journal.removeEntries(for:)(Swift::String a1)
{

  sub_1D77035F0();
}

uint64_t Journal.lastEntry(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = sub_1D7670B60(a1, a2);
  v4 = *(v3 + 96);
  v6[0] = *(v3 + 80);
  v6[1] = v4;
  type metadata accessor for JournalEntry(255, v6);
  sub_1D77044B0();
  swift_getWitnessTable();
  sub_1D7704200();
}

Swift::Bool __swiftcall Journal.containsEntry(for:)(Swift::String a1)
{
  v2 = *v1;
  v6 = sub_1D7670B60(a1._countAndFlagsBits, a1._object);
  v3 = *(v2 + 96);
  v5[0] = *(v2 + 80);
  v5[1] = v3;
  type metadata accessor for JournalEntry(255, v5);
  sub_1D77044B0();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_1D7704510();

  return (v2 & 1) == 0;
}

uint64_t Journal.deinit()
{

  return v0;
}

uint64_t Journal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76949D8()
{

  return swift_deallocClassInstance();
}

uint64_t InterstitialAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7694AC8@<X0>(uint64_t a1@<X1>, uint64_t *a6@<X8>)
{
  result = sub_1D7694B08(a1);
  *a6 = result;
  return result;
}

uint64_t sub_1D7694B08(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for InterstitialAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t BannerAdViewRenderer.render(for:with:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  memcpy(__dst, (a2 + 72), sizeof(__dst));
  ObjectType = swift_getObjectType();
  *&__src[0] = a3;
  v15 = (*(a4 + 8))(ObjectType, a4);
  if (v15)
  {
    v17 = v16;
    if (v13)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v15;
    v42 = swift_getObjectType();
    [v19 setAlpha_];
    v20 = v19;
    if (v13)
    {
      sub_1D7704650();
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
    }

    [v20 setFrame_];

    sub_1D77033C0();
    if ((sub_1D77033B0() & 1) == 0)
    {
      goto LABEL_12;
    }

    if (qword_1EE0B0C58 != -1)
    {
      swift_once();
    }

    sub_1D769561C(&qword_1EE0AF920, v25, type metadata accessor for BannerAdViewRenderer, &protocol conformance descriptor for BannerAdViewRenderer);
    sub_1D7703070();
    if (LOBYTE(__src[0]) == 1)
    {
      *&__src[0] = v20;
      v41 = ObjectType;
      v26 = *(v17 + 32);
      v27 = v26(v42, v17);
      v28 = sub_1D7703FF0();

      v43[0] = v20;
      v29 = v26(v42, v17);
      ObjectType = v41;
      v30 = v29;
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      *(v32 + 24) = a4;
      swift_unknownObjectWeakInit();
      sub_1D7667C54(a1, __src);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      sub_1D7667CB8(__src, v33 + 32);
      v34 = sub_1D7703FE0();
    }

    else
    {
LABEL_12:
    }
  }

  memcpy(__src, __dst, 0x1A1uLL);
  result = sub_1D76950D0(__src);
  if (result != 1)
  {
    v36 = v5[10];
    v37 = v5[11];
    __swift_project_boxed_opaque_existential_1(v5 + 7, v36);
    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(v39 + 8))(v53, v38, v39);
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v63 = v54;
    v64 = v55;
    sub_1D766D644(&v63, v43);
    sub_1D766E6D8(v53);
    v50 = v69;
    v51 = v70;
    v52 = v71;
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    v44 = v63;
    v45 = v64;
    memcpy(v43, __src, 0x1A1uLL);
    v40 = (*(a4 + 16))(ObjectType, a4);
    (*(v37 + 8))(&v44, v43, v40, v36, v37);

    v72[6] = v50;
    v72[7] = v51;
    v72[8] = v52;
    v72[2] = v46;
    v72[3] = v47;
    v72[5] = v49;
    v72[4] = v48;
    v72[0] = v44;
    v72[1] = v45;
    return sub_1D76950E4(v72);
  }

  return result;
}

uint64_t sub_1D76950D0(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D7695138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D7703F90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      (*(v5 + 104))(v7, *MEMORY[0x1E69D7FC0], v4);
      v12 = type metadata accessor for Tracker();
      v13 = swift_allocObject();
      v28[3] = v12;
      v28[4] = sub_1D769561C(&qword_1EC9BD278, 255, type metadata accessor for Tracker, &unk_1D770A600);
      v28[0] = v13;
      v56 = 0u;
      v57 = 0u;
      v58 = 1;
      sub_1D7703F80();
      swift_allocObject();
      v17 = v11;
      sub_1D7703F70();
      v16[2] = *(v9 + 104);
      v16[1] = swift_getObjectType();
      if (qword_1EE0B07F0 != -1)
      {
        swift_once();
      }

      v14 = a3[3];
      v15 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v14);
      (*(v15 + 8))(v28, v14, v15);
      v44 = v35;
      v45 = v36;
      v46 = v37;
      v40 = v31;
      v41 = v32;
      v42 = v33;
      v43 = v34;
      v38 = v29;
      v39 = v30;
      sub_1D766D644(&v38, &v19);
      sub_1D766E6D8(v28);
      v53 = v44;
      v54 = v45;
      v55 = v46;
      v49 = v40;
      v50 = v41;
      v51 = v42;
      v52 = v43;
      v47 = v38;
      v48 = v39;
      nullsub_1();
      v25 = v53;
      v26 = v54;
      v27 = v55;
      v21 = v49;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v19 = v47;
      v20 = v48;

      sub_1D7703F30();
      v18[6] = v25;
      v18[7] = v26;
      v18[8] = v27;
      v18[2] = v21;
      v18[3] = v22;
      v18[4] = v23;
      v18[5] = v24;
      v18[0] = v19;
      v18[1] = v20;
      sub_1D7695664(v18);
    }

    else
    {
    }
  }
}

void *BannerAdViewRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BannerAdViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D769561C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7695664(uint64_t a1)
{
  sub_1D76956C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76956C0()
{
  if (!qword_1EE0B03A8)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B03A8);
    }
  }
}

uint64_t AdPreview.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D76957A8(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = a3;
  v38 = type metadata accessor for NativeAdInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v38);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v30 - v8);
  sub_1D7696460(0);
  v11 = (a1 + *(v10 + 56));
  v12 = v11[1];
  v36 = *v11;
  v37 = a1;

  sub_1D7703140();

  v34 = v42;
  v35 = v41;

  sub_1D7703140();

  v32 = v42;
  v33 = v41;

  sub_1D7703140();

  v30 = v42;
  v31 = v41;
  type metadata accessor for DebugLifecycleMetricsHelper();
  v13 = swift_allocObject();
  v14 = type metadata accessor for DebugAdsMetricsView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView] = 0;
  *&v15[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_interactionPresentationDelegate] = 0;
  *&v15[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_readyDelegate] = 0;
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v41 == 1)
  {
    v16 = [objc_opt_self() greenColor];
  }

  else
  {
    v16 = 0;
  }

  v40.receiver = v15;
  v40.super_class = v14;
  v17 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 120.0, 53.0);
  [v17 setBackgroundColor_];

  v18 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  v19 = (v9 + v18[12]);
  v19[3] = &type metadata for DebugNativeAdContentInfo;
  v19[4] = &off_1F5252C68;
  v20 = swift_allocObject();
  *v19 = v20;
  v21 = v30;
  *(v20 + 16) = v31;
  *(v20 + 24) = v21;
  *(v20 + 32) = v13;
  *(v20 + 40) = 0;
  *(v20 + 42) = 0;
  *(v20 + 48) = xmmword_1D770A6A0;
  *(v20 + 64) = v17;
  *(v20 + 72) = &off_1F52505F8;
  v22 = a2[7];
  v23 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v22);
  v24 = (*(v23 + 8))(v22, v23);
  sub_1D769657C(v37, v9 + v18[11], sub_1D7696460);
  v25 = v35;
  *v9 = v36;
  v9[1] = v12;
  v9[2] = 0;
  v9[3] = 0;
  v26 = v34;
  v9[4] = v25;
  v9[5] = v26;
  v9[6] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[9] = 0xE000000000000000;
  v27 = v32;
  v9[10] = v33;
  v9[11] = v27;
  *(v9 + v18[13]) = v24;
  v9[12] = v39;
  swift_storeEnumTagMultiPayload();
  sub_1D769657C(v9, v7, type metadata accessor for NativeAdInfo);
  sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  v28 = sub_1D77036E0();
  sub_1D7696720(v9);
  return v28;
}

uint64_t sub_1D7695BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D7703140();

  if (v10 <= 0.0)
  {
    sub_1D769657C(a1, v6, type metadata accessor for NativeAdInfo);
    sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    *(&v9 - 2) = a2;
    *(&v9 - 1) = a1;
    sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036F0();
  }
}

uint64_t sub_1D7695DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a1;
  v34 = a2;
  v35 = sub_1D77040D0();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7704110();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NativeAdInfo(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7704130();
  v30 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  sub_1D7669BD8();
  v31 = sub_1D77045F0();
  sub_1D7704120();

  sub_1D7703140();

  sub_1D7704150();
  v21 = *(v15 + 8);
  v21(v18, v14);
  sub_1D769657C(v32, v13, type metadata accessor for NativeAdInfo);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 16) = v33;
  *(v23 + 24) = v24;
  sub_1D76965EC(v13, v23 + v22, type metadata accessor for NativeAdInfo);
  aBlock[4] = sub_1D7696654;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);

  sub_1D77040F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7689834();
  sub_1D76966BC(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76898F0();
  v26 = v35;
  sub_1D77046E0();
  v27 = v31;
  MEMORY[0x1DA6FF3A0](v20, v10, v7, v25);
  _Block_release(v25);

  (*(v38 + 8))(v7, v26);
  (*(v36 + 8))(v10, v37);
  return (v21)(v20, v30);
}

uint64_t sub_1D7696214()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7696280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7696460(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_1D7669BD8();
  v11 = sub_1D77045F0();
  sub_1D769657C(a1, v9, sub_1D7696460);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1D76965EC(v9, v14 + v12, sub_1D7696460);
  *(v14 + v13) = v10;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  type metadata accessor for NativeAdInfo(0);

  sub_1D7703710();

  v15 = sub_1D7703620();
  v16 = sub_1D77036B0();

  return v16;
}

void sub_1D7696460(uint64_t a1)
{
  if (!qword_1EE0B0DA8[0])
  {
    v4[0] = &type metadata for NativeAdContext;
    v4[1] = type metadata accessor for NativeAdPlacement(255);
    v4[2] = sub_1D7666D14();
    v4[3] = &protocol witness table for NativeAdPlacement;
    v2 = type metadata accessor for AdRequest(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EE0B0DA8);
    }
  }
}

uint64_t sub_1D76964E0()
{
  sub_1D7696460(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D76957A8(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D769657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76965EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D76966BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7696720(uint64_t a1)
{
  v2 = type metadata accessor for NativeAdInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SEL *sub_1D7696794(SEL *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    [sub_1D77037D0() *v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AdPendingLoadToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76968E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7696930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7696984(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t AdRequestPolicyValidator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AdRequestPolicyValidator.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AdRequestPolicyValidator.validatePlacement(_:environments:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[5];
  v70 = a2[4];
  v71 = v8;
  v72 = a2[6];
  v73 = *(a2 + 14);
  v9 = a2[1];
  v66 = *a2;
  v67 = v9;
  v10 = a2[3];
  v68 = a2[2];
  v69 = v10;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D7668854();
  *(v12 + 64) = v14;
  v51 = v4;
  *&v52[0] = 0;
  *(v12 + 32) = v4;
  *(v12 + 40) = v5;
  *(&v52[0] + 1) = 0xE000000000000000;
  v55 = v6;
  v56 = v7;
  type metadata accessor for CGPoint(0);
  swift_bridgeObjectRetain_n();
  sub_1D7704850();
  v15 = v52[0];
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  v48 = v14;
  *(v12 + 72) = v15;
  v16 = sub_1D77045A0();
  v49 = v11;
  sub_1D7703ED0("Validating request for placement=%{public}@, position=%{public}@", 64, 2, &dword_1D7662000, v11, v16, v12);

  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;

    v20 = v18 - 1;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v4;
    while (1)
    {
      sub_1D7667C54(v19, v63);
      v24 = v64;
      v23 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v54[0] = v22;
      v54[1] = v5;
      v54[2] = v6;
      v54[3] = v7;
      v52[4] = v70;
      v52[5] = v71;
      v52[6] = v72;
      v53 = v73;
      v52[0] = v66;
      v52[1] = v67;
      v52[2] = v68;
      v52[3] = v69;
      (*(v23 + 8))(&v55, v54, v52, v24, v23);
      v25 = v55;
      v26 = v56;
      v60 = v57;
      v61 = v58;
      v62 = v59;
      __swift_destroy_boxed_opaque_existential_1(v63);
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D768C5D8(0, *(v21 + 2) + 1, 1, v21);
        }

        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          v21 = sub_1D768C5D8((v27 > 1), v28 + 1, 1, v21);
        }

        *(v21 + 2) = v28 + 1;
        v29 = &v21[64 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        v30 = v60;
        v31 = v62;
        *(v29 + 4) = v61;
        *(v29 + 5) = v31;
        *(v29 + 3) = v30;
        v22 = v51;
      }

      if (!v20)
      {
        break;
      }

      --v20;
      v19 += 40;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v32 = *(v21 + 2);

  if (v32)
  {
    v33 = *(v21 + 2);
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      *&v52[0] = MEMORY[0x1E69E7CC0];
      sub_1D76970EC(0, v33, 0);
      v34 = *&v52[0];
      v35 = (v21 + 80);
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        *&v52[0] = v34;
        v38 = *(v34 + 16);
        v39 = *(v34 + 24);

        if (v38 >= v39 >> 1)
        {
          sub_1D76970EC((v39 > 1), v38 + 1, 1);
          v34 = *&v52[0];
        }

        *(v34 + 16) = v38 + 1;
        v40 = v34 + 16 * v38;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v35 += 8;
        --v33;
      }

      while (v33);
    }

    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D7708FD0;
    v42 = MEMORY[0x1E69E6158];
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = v48;
    *(v41 + 32) = v51;
    *(v41 + 40) = v5;
    sub_1D7678458(0, &qword_1EE0AED80, v42, MEMORY[0x1E69E62F8]);
    *(v41 + 96) = v43;
    *(v41 + 104) = sub_1D769710C();
    *(v41 + 72) = v34;
    v44 = sub_1D77045A0();
    sub_1D7703ED0("Validation failed for request, placement=%{public}@, policies=%{public}@", 72, 2, &dword_1D7662000, v49, v44, v41);

    *a3 = v21;
    *(a3 + 8) = 0;
    *(a3 + 16) = 257;
  }

  else
  {

    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7708FE0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = v48;
    *(v46 + 32) = v51;
    *(v46 + 40) = v5;
    v47 = sub_1D77045A0();
    sub_1D7703ED0("Validation passed for request, placement=%{public}@", 51, 2, &dword_1D7662000, v49, v47, v46);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t AdRequestPolicyValidator.addPolicy(_:)(uint64_t a1)
{
  sub_1D7667C54(a1, v7);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7673574(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1D7673574((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  sub_1D7667CB8(v7, &v2[5 * v5 + 4]);
  *(v1 + 16) = v2;
  return swift_endAccess();
}

uint64_t AdRequestPolicyValidator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7697014(uint64_t a1)
{
  v2 = *v1;
  sub_1D7667C54(a1, v8);
  swift_beginAccess();
  v3 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7673574(0, v3[2] + 1, 1, v3);
    *(v2 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D7673574((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_1D7667CB8(v8, &v3[5 * v6 + 4]);
  *(v2 + 16) = v3;
  return swift_endAccess();
}

char *sub_1D76970EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D76972D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1D769710C()
{
  result = qword_1EE0AED68;
  if (!qword_1EE0AED68)
  {
    sub_1D7678458(255, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED68);
  }

  return result;
}

char *sub_1D7697200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D76973F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7697220(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D769763C(a1, a2, a3, *v3, &qword_1EE0AEC18, &type metadata for AdPolicyFailureType);
  *v3 = result;
  return result;
}

char *sub_1D7697250(char *a1, int64_t a2, char a3)
{
  result = sub_1D767C1DC(a1, a2, a3, *v3, &qword_1EC9BD280, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry);
  *v3 = result;
  return result;
}

char *sub_1D7697280(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D7697518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D76972A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D769763C(a1, a2, a3, *v3, &qword_1EC9BD288, &type metadata for DebugJournalViewController.Section);
  *v3 = result;
  return result;
}

char *sub_1D76972D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7678458(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D76973F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7678458(0, &qword_1EE0AEC28, &type metadata for AdPolicyFailure, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7697518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7678458(0, &qword_1EC9BD190, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D769763C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D7678458(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *DebugJournalSummaryViewLayoutAttributesFactory.makeLayoutAttributes(for:origin:with:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v33 = *(a2 + 1);
  rect = *a2;
  v31 = *(a2 + 2);
  v13 = a2[6];
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  sub_1D76983DC();

  sub_1D7703070();

  if (v47)
  {
    if (v10 >> 62 == 2 && (v10 & 0xBFFFFFFFFFFFFFF7) == 0x8000000000000020 && !(v12 | v9 | v11))
    {
      sub_1D769843C(__src);
    }

    else
    {
      v17 = 25.0;
      if (*&v31 > 25.0)
      {
        v18 = *&v31;
      }

      else
      {
        v18 = 25.0;
      }

      if (v13 > 25.0)
      {
        v17 = v13;
      }

      *__src = v10;
      *&__src[8] = v9;
      v19 = *&rect - v18 - v17;
      *&__src[16] = v12;
      *&__src[24] = v11;
      v20 = JournalEntryStatus.shortDescription.getter();
      v22 = sub_1D76BEBC8(v20, v21);

      sub_1D7704620();
      width = v48.size.width;
      height = v48.size.height;
      v25 = CGRectGetHeight(v48);
      if (v25 > 51.0)
      {
        v25 = 51.0;
      }

      v30 = (v25 + -44.0) * 0.5 + 7.0;
      v32 = v18 + v19 + -22.0;
      v49.origin.y = 7.0;
      v49.origin.x = v18;
      v49.size.width = width;
      v49.size.height = height;
      v26 = CGRectGetMaxY(v49) + 7.0;
      v50.origin.x = a4;
      v50.origin.y = a5;
      *&v50.size.width = rect;
      v50.size.height = v26;
      v29 = CGRectGetHeight(v50) + -7.0;
      *&v51.size.width = rect;
      v51.origin.x = a4;
      v51.origin.y = a5;
      v51.size.height = v26;
      v27 = CGRectGetHeight(v51);

      *__src = a4;
      *&__src[8] = a5;
      *&__src[16] = rect;
      *&__src[24] = v26;
      *&__src[40] = xmmword_1D770A7E0;
      *&__src[32] = v18 * 0.5;
      *&__src[56] = v29;
      *&__src[64] = v18;
      *&__src[72] = 0x401C000000000000;
      *&__src[80] = width;
      *&__src[88] = height;
      *&__src[96] = v32;
      *&__src[104] = v30;
      *&__src[112] = vdupq_n_s64(0x4046000000000000uLL);
      *&__src[128] = 0;
      *&__src[136] = 0;
      *&__src[144] = rect;
      *&__src[152] = 1.0 / *&v33;
      *&__src[160] = 0;
      *&__src[168] = v27 - 1.0 / *&v33;
      *&__src[176] = rect;
      *&__src[184] = 1.0 / *&v33;
      sub_1D7698430(__src);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v14;
    v37[2] = *(a1 + 32);
    v38 = v10;
    v39 = v9;
    v40 = v12;
    v41 = v11;
    v15 = *(a1 + 96);
    v42 = *(a1 + 80);
    v43 = v15;
    v16 = *(a1 + 128);
    v44 = *(a1 + 112);
    v45 = v16;
    v35[0] = rect;
    v35[1] = v33;
    v35[2] = v31;
    v36 = v13;
    sub_1D7697A94(v37, v35, __src, a4, a5);
    sub_1D7698480(__src);
  }

  return memcpy(a3, __src, 0x1A1uLL);
}

double sub_1D7697A94@<D0>(void *a1@<X0>, CGFloat *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v118 = a2[2];
  v10 = a2[4];
  v11 = a2[6];
  if (v10 <= 25.0)
  {
    v10 = 25.0;
  }

  v148 = v10;
  if (v11 <= 25.0)
  {
    v11 = 25.0;
  }

  v116 = v11;
  v122 = *a2;
  v12 = *a2 - v10 - v11;

  v13 = sub_1D76BEBC8(0x6563616C50206441, 0xEC000000746E656DLL);
  sub_1D7704620();
  v139 = v14;
  v133 = v15;
  v147 = v16;
  rect = v17;
  v18 = sub_1D76BEE10(v6, v7);
  sub_1D7704620();
  v125 = v20;
  v127 = v19;
  v145 = v22;
  v146 = v21;
  v23 = sub_1D76BEBC8(0x746E65746E6F43, 0xE700000000000000);
  sub_1D7704620();
  v135 = v25;
  v137 = v24;
  v27 = v26;
  v29 = v28;
  if (v8)
  {
    v30 = v9;
  }

  else
  {
    v30 = 11565;
  }

  if (v8)
  {
    v31 = v8;
  }

  else
  {
    v31 = 0xE200000000000000;
  }

  v32 = sub_1D76BEE10(v30, v31);

  sub_1D7704620();
  v129 = v34;
  v131 = v33;
  v142 = v35;
  v143 = v36;
  v37 = sub_1D76BEBC8(0x737574617453, 0xE600000000000000);
  sub_1D7704620();
  v112 = v39;
  v114 = v38;
  v41 = v40;
  v43 = v42;
  v44 = JournalEntryStatus.shortDescription.getter();
  v46 = sub_1D76BEE10(v44, v45);

  sub_1D7704620();
  v110 = v47;
  v49 = v48;
  v51 = v50;
  v151 = v52;
  v53 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 0);
  sub_1D7704620();
  v106 = v54;
  v108 = v55;
  v149 = v57;
  v150 = v56;
  v58 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 0);
  sub_1D7704620();
  v104 = v59;
  v101 = v60;
  v123 = v62;
  v124 = v61;
  v152.origin.x = v139;
  v152.origin.y = v133;
  v152.size.width = v147;
  v152.size.height = rect;
  Width = CGRectGetWidth(v152);
  v153.origin.y = v135;
  v153.origin.x = v137;
  v138 = v29;
  v140 = v27;
  v153.size.width = v27;
  v153.size.height = v29;
  v64 = CGRectGetWidth(v153);
  v154.origin.y = v112;
  v154.origin.x = v114;
  v134 = v43;
  v136 = v41;
  v154.size.width = v41;
  v154.size.height = v43;
  v65 = CGRectGetWidth(v154);
  if (Width > v64)
  {
    v66 = Width;
  }

  else
  {
    v66 = v64;
  }

  if (v66 > v65)
  {
    v67 = v66;
  }

  else
  {
    v67 = v65;
  }

  v155.origin.y = v125;
  v155.origin.x = v127;
  v155.size.height = v145;
  v155.size.width = v146;
  v68 = CGRectGetWidth(v155);
  v156.origin.y = v129;
  v156.origin.x = v131;
  v156.size.width = v142;
  v156.size.height = v143;
  v69 = CGRectGetWidth(v156);
  v157.origin.x = v110;
  v157.origin.y = v49;
  v141 = v51;
  v157.size.width = v51;
  v157.size.height = v151;
  v70 = CGRectGetWidth(v157);
  if (v68 > v69)
  {
    v71 = v68;
  }

  else
  {
    v71 = v69;
  }

  if (v71 > v70)
  {
    v70 = v71;
  }

  v72 = v116 + v148 + v67 + 10.0 + v70;
  if (v12 >= v72)
  {
    v169.origin.y = v125;
    v169.origin.x = v127;
    v169.size.height = v145;
    v169.size.width = v146;
    v117 = v72 - CGRectGetWidth(v169);
    v170.origin.y = 20.0;
    v170.origin.x = v148;
    v170.size.width = v147;
    v170.size.height = rect;
    MinY = CGRectGetMinY(v170);
    v171.origin.y = 20.0;
    v171.origin.x = v148;
    v171.size.width = v147;
    v171.size.height = rect;
    v79 = CGRectGetMaxY(v171) + 5.0;
    v172.origin.y = v129;
    v172.origin.x = v131;
    v172.size.width = v142;
    v172.size.height = v143;
    v115 = v72 - CGRectGetWidth(v172);
    v173.origin.x = v148;
    v173.origin.y = v79;
    v173.size.width = v140;
    v173.size.height = v29;
    v130 = CGRectGetMinY(v173);
    y = v79;
    v174.origin.x = v148;
    v174.origin.y = v79;
    v174.size.width = v140;
    v174.size.height = v29;
    v80 = CGRectGetMaxY(v174) + 5.0;
    v175.origin.x = v110;
    v175.origin.y = v49;
    v175.size.width = v51;
    v175.size.height = v151;
    v81 = v72 - CGRectGetWidth(v175);
    v176.origin.x = v148;
    v126 = v80;
    v176.origin.y = v80;
    v176.size.height = v134;
    v176.size.width = v136;
    v82 = CGRectGetMinY(v176);
    v177.origin.y = v108;
    v177.origin.x = v106;
    v177.size.height = v149;
    v177.size.width = v150;
    v83 = v72 + CGRectGetWidth(v177);
    v100 = v81;
    v178.origin.x = v81;
    v78 = v82;
    v178.origin.y = v82;
    v178.size.width = v51;
    v178.size.height = v151;
    MaxY = CGRectGetMaxY(v178);
    v85 = MaxY;
    if (v83 >= v12)
    {
      v73 = MaxY + 10.0;
      v184.origin.x = v148;
      v184.origin.y = v73;
      v184.size.width = v150;
      v184.size.height = v149;
      v87 = CGRectGetMaxX(v184) + 10.0;
      v185.origin.x = v148;
      v185.origin.y = v73;
      v185.size.width = v150;
      v185.size.height = v149;
      v88 = CGRectGetMinY(v185);
      v186.origin.x = v148;
      v186.origin.y = v73;
      v186.size.width = v150;
      v186.size.height = v149;
      v187.size.height = CGRectGetHeight(v186);
      v111 = v88;
      v113 = v87;
      v187.origin.x = v87;
      v187.origin.y = v88;
      v187.size.width = 1.0 / v118;
      height = v187.size.height;
      v109 = CGRectGetMaxX(v187) + 10.0;
      v188.origin.x = v148;
      v188.origin.y = v73;
      v188.size.width = v150;
      v188.size.height = v149;
      v103 = 1.0 / v118;
      v105 = CGRectGetMinY(v188);
      v76 = v148;
    }

    else
    {
      v86 = v148 + v12;
      v179.origin.x = v106;
      v179.origin.y = v108;
      v179.size.width = v150;
      v179.size.height = v149;
      v76 = v148 + v12 - CGRectGetWidth(v179);
      v180.origin.y = 20.0;
      v180.origin.x = v76;
      v180.size.width = v150;
      v180.size.height = v149;
      v111 = (v85 + 20.0) * 0.5;
      v113 = v148 + v12 - CGRectGetWidth(v180) * 0.7;
      v181.origin.y = 20.0;
      v181.origin.x = v76;
      v181.size.width = v150;
      v181.size.height = v149;
      v73 = 20.0;
      v103 = CGRectGetWidth(v181) * 0.7;
      v182.origin.x = v104;
      v182.origin.y = v101;
      v182.size.width = v124;
      v182.size.height = v123;
      v109 = v86 - CGRectGetWidth(v182);
      v183.origin.x = v104;
      v183.origin.y = v101;
      v183.size.width = v124;
      v183.size.height = v123;
      v105 = v85 - CGRectGetHeight(v183);
      height = 1.0 / v118;
    }

    v119 = 1.0 / v118;
    v77 = v100;
  }

  else
  {
    v158.origin.y = 20.0;
    v158.size.width = v147;
    v158.origin.x = v148;
    v158.size.height = rect;
    v159.origin.y = CGRectGetMaxY(v158) + 5.0;
    v159.origin.x = v148;
    MinY = v159.origin.y;
    v159.size.height = v145;
    v159.size.width = v146;
    v160.origin.y = CGRectGetMaxY(v159) + 5.0;
    v160.origin.x = v148;
    y = v160.origin.y;
    v160.size.height = v29;
    v160.size.width = v140;
    v161.origin.y = CGRectGetMaxY(v160) + 5.0;
    v161.origin.x = v148;
    v130 = v161.origin.y;
    v161.size.width = v142;
    v161.size.height = v143;
    v162.origin.y = CGRectGetMaxY(v161) + 5.0;
    v162.origin.x = v148;
    v126 = v162.origin.y;
    v162.size.height = v43;
    v162.size.width = v136;
    v163.origin.y = CGRectGetMaxY(v162) + 5.0;
    v102 = v163.origin.y;
    v163.origin.x = v148;
    v163.size.width = v51;
    v163.size.height = v151;
    v73 = CGRectGetMaxY(v163) + 10.0;
    v164.origin.x = v148;
    v164.origin.y = v73;
    v164.size.width = v150;
    v164.size.height = v149;
    v74 = CGRectGetMaxX(v164) + 10.0;
    v165.origin.x = v148;
    v165.origin.y = v73;
    v165.size.width = v150;
    v165.size.height = v149;
    v75 = CGRectGetMinY(v165);
    v166.origin.x = v148;
    v166.origin.y = v73;
    v166.size.width = v150;
    v166.size.height = v149;
    v167.size.height = CGRectGetHeight(v166);
    v111 = v75;
    v113 = v74;
    v167.origin.x = v74;
    v167.origin.y = v75;
    v167.size.width = 1.0 / v118;
    height = v167.size.height;
    v109 = CGRectGetMaxX(v167) + 10.0;
    v168.origin.x = v148;
    v168.origin.y = v73;
    v168.size.width = v150;
    v168.size.height = v149;
    v103 = 1.0 / v118;
    v105 = CGRectGetMinY(v168);
    v76 = v148;
    v77 = v148;
    v117 = v148;
    v119 = 1.0 / v118;
    v115 = v148;
    v78 = v102;
  }

  v89 = v141;
  v90 = v77;
  v91 = v78;
  v92 = v78;
  v93 = v151;
  v94 = CGRectGetMaxY(*&v77);
  v189.origin.x = v76;
  v189.origin.y = v73;
  v189.size.height = v149;
  v189.size.width = v150;
  v95 = CGRectGetMaxY(v189);
  if (v94 > v95)
  {
    v95 = v94;
  }

  v96 = v95 + 20.0;
  v190.origin.x = a4;
  v190.origin.y = a5;
  v190.size.width = v122;
  v190.size.height = v96;
  v99 = CGRectGetHeight(v190) + -30.0;
  v191.origin.x = a4;
  v191.origin.y = a5;
  v191.size.width = v122;
  v191.size.height = v96;
  v97 = CGRectGetHeight(v191);

  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 48) = v147;
  *(a3 + 56) = rect;
  *(a3 + 64) = v117;
  *(a3 + 72) = MinY;
  *(a3 + 80) = v146;
  *(a3 + 88) = v145;
  *(a3 + 112) = v140;
  *(a3 + 120) = v138;
  result = v97 - v119;
  *(a3 + 16) = v122;
  *(a3 + 24) = v96;
  *(a3 + 32) = v148;
  *(a3 + 40) = 0x4034000000000000;
  *(a3 + 96) = v148;
  *(a3 + 104) = y;
  *(a3 + 128) = v115;
  *(a3 + 136) = v130;
  *(a3 + 144) = v142;
  *(a3 + 152) = v143;
  *(a3 + 160) = v148;
  *(a3 + 168) = v126;
  *(a3 + 176) = v136;
  *(a3 + 184) = v134;
  *(a3 + 192) = v90;
  *(a3 + 200) = v91;
  *(a3 + 208) = v141;
  *(a3 + 216) = v151;
  *(a3 + 224) = v148 * 0.5;
  *(a3 + 232) = xmmword_1D770A7F0;
  *(a3 + 248) = v99;
  *(a3 + 256) = v76;
  *(a3 + 264) = v73;
  *(a3 + 272) = v150;
  *(a3 + 280) = v149;
  *(a3 + 288) = v113;
  *(a3 + 296) = v111;
  *(a3 + 304) = v103;
  *(a3 + 312) = height;
  *(a3 + 320) = v109;
  *(a3 + 328) = v105;
  *(a3 + 336) = v124;
  *(a3 + 344) = v123;
  *(a3 + 352) = 0;
  *(a3 + 360) = 0;
  *(a3 + 368) = v122;
  *(a3 + 376) = v119;
  *(a3 + 384) = 0;
  *(a3 + 392) = v97 - v119;
  *(a3 + 400) = v122;
  *(a3 + 408) = v119;
  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1D76983DC()
{
  result = qword_1EC9BD290;
  if (!qword_1EC9BD290)
  {
    type metadata accessor for DebugJournalSummaryViewLayoutAttributesFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD290);
  }

  return result;
}

double sub_1D769843C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 416) = 2;
  return result;
}

id sub_1D76984B4(char a1)
{
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v5 != 1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = &selRef_greenColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_redColor;
  }

  return [v2 *v3];
}

void *sub_1D76986D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView);
  v2 = v1;
  return v1;
}

uint64_t sub_1D76987E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(v4 + v6) = a1;
  return swift_unknownObjectRelease();
}

uint64_t AdPolicyPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsAds::AdPolicyPlacement __swiftcall AdPolicyPlacement.init(placementIdentifier:position:)(Swift::String placementIdentifier, CGPoint position)
{
  *v2 = placementIdentifier;
  *(v2 + 16) = position.x;
  *(v2 + 24) = position.y;
  result.position.y = position.y;
  result.position.x = position.x;
  result.placementIdentifier = placementIdentifier;
  return result;
}

uint64_t sub_1D7698904(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1D76989E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D77042A0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40.receiver = v0;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView];
  [v3 setTextContainerInset_];
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  [v3 setEditable_];
  v6 = [v0 view];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = &v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable];
  v9 = *&v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable + 24];
  v10 = *(v8 + 5);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = sub_1D76E86D4(v9, v10);
  if (v12 >> 60 == 15)
  {
    return;
  }

  v13 = v11;
  v14 = v12;
  sub_1D7704290();
  sub_1D7704270();
  if (!v15)
  {
    sub_1D76992F8(v13, v14);
    return;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v17 = sub_1D7699360(0x3A2022292A2E2822, 0xE800000000000000, 0);
  if (!v17)
  {
    sub_1D76992F8(v13, v14);

    return;
  }

  v38 = v17;
  sub_1D769943C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FD0;
  v19 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DB978];
  v22 = v19;
  v23 = [v20 monospacedSystemFontOfSize:15.0 weight:v21];
  v24 = sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  *(inited + 40) = v23;
  v25 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v24;
  *(inited + 72) = v25;
  v26 = v25;
  v27 = [v4 labelColor];
  *(inited + 104) = sub_1D766844C(0, &qword_1EC9BD2D0, 0x1E69DC888);
  *(inited + 80) = v27;
  sub_1D76ADBA0(inited);
  swift_setDeallocating();
  sub_1D7699494(0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v29 = sub_1D7704230();
  type metadata accessor for Key(0);
  sub_1D76995E8();
  v30 = sub_1D7704190();

  v31 = [v28 initWithString:v29 attributes:v30];

  v32 = sub_1D7704230();
  v33 = sub_1D77042E0();

  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1D7699640;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1D7699648;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D76990C4;
  aBlock[3] = &block_descriptor_3;
  v36 = _Block_copy(aBlock);
  v37 = v31;

  [v38 enumerateMatchesInString:v32 options:2 range:0 usingBlock:{v33, v36}];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  [v3 setAttributedText_];

  sub_1D76992F8(v13, v14);
}

void sub_1D7698F54(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = [a1 range];
    v7 = v6;
    sub_1D769943C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7708FE0;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v10 = objc_opt_self();
    v11 = *MEMORY[0x1E69DB980];
    v12 = v9;
    v13 = [v10 monospacedSystemFontOfSize:15.0 weight:v11];
    *(inited + 64) = sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
    *(inited + 40) = v13;
    sub_1D76ADBA0(inited);
    swift_setDeallocating();
    sub_1D7699670(inited + 32);
    type metadata accessor for Key(0);
    sub_1D76995E8();
    v14 = sub_1D7704190();

    [a4 addAttributes:v14 range:{v5, v7}];
  }
}

void sub_1D76990C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_1D76992F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D769930C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D769930C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_1D7699360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D7704230();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D7702E70();

    swift_willThrow();
  }

  return v6;
}

void sub_1D769943C(uint64_t a1)
{
  if (!qword_1EC9BD2C0)
  {
    sub_1D7699494(255);
    v1 = sub_1D7704A20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9BD2C0);
    }
  }
}

void sub_1D7699494(uint64_t a1)
{
  if (!qword_1EC9BD2C8)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BD2C8);
    }
  }
}

id sub_1D7699500(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_2, a1, a3);
  v9 = objc_allocWithZone(a2);
  v10 = OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  sub_1D767D4C4(v14, &v9[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable]);
  v13.receiver = v9;
  v13.super_class = a2;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

unint64_t sub_1D76995E8()
{
  result = qword_1EC9BCCE8;
  if (!qword_1EC9BCCE8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BCCE8);
  }

  return result;
}

uint64_t sub_1D7699670(uint64_t a1)
{
  sub_1D7699494(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D76996CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746361706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x6E6564646968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76997C4()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

double sub_1D7699864(uint64_t a1)
{
  sub_1D77042D0();

  return result;
}

uint64_t sub_1D76998F0(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

unint64_t sub_1D769998C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D769C774(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D76999BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D7699AC8(char a1)
{
  result = 0x656D617266;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 7:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x7246737574617473;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7699C44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D769C7C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7699C78(uint64_t a1)
{
  v2 = sub_1D769A254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7699CB4(uint64_t a1)
{
  v2 = sub_1D769A254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Regular.encode(to:)(void *a1)
{
  sub_1D769BABC(0, &qword_1EC9BD2D8, sub_1D769A254, &type metadata for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = v1[2];
  v45 = v1[3];
  v46 = v9;
  v10 = v1[4];
  v43 = v1[5];
  v44 = v10;
  v11 = v1[6];
  v41 = v1[7];
  v42 = v11;
  v12 = v1[8];
  v39 = v1[9];
  v40 = v12;
  v13 = v1[10];
  v37 = v1[11];
  v38 = v13;
  v14 = v1[12];
  v35 = v1[13];
  v36 = v14;
  v15 = v1[14];
  v33 = v1[15];
  v34 = v15;
  v16 = v1[16];
  v31 = v1[17];
  v32 = v16;
  v17 = v1[18];
  v29 = v1[19];
  v30 = v17;
  v18 = v1[20];
  v27 = v1[21];
  v28 = v18;
  v19 = v1[22];
  v25 = v1[23];
  v26 = v19;
  v20 = v1[24];
  v23 = v1[25];
  v24 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769A254();
  sub_1D7704B10();
  v21 = *v1;
  v48 = v1[1];
  v47 = v21;
  v49 = 0;
  type metadata accessor for CGRect(0);
  sub_1D769A8D0(&qword_1EC9BD2E8, MEMORY[0x1E695EF68]);
  sub_1D7704A00();
  if (!v2)
  {
    v48 = v45;
    v47 = v46;
    v49 = 1;
    sub_1D7704A00();
    v48 = v43;
    v47 = v44;
    v49 = 2;
    sub_1D7704A00();
    v48 = v41;
    v47 = v42;
    v49 = 3;
    sub_1D7704A00();
    v48 = v39;
    v47 = v40;
    v49 = 4;
    sub_1D7704A00();
    v48 = v37;
    v47 = v38;
    v49 = 5;
    sub_1D7704A00();
    v48 = v35;
    v47 = v36;
    v49 = 6;
    sub_1D7704A00();
    v48 = v33;
    v47 = v34;
    v49 = 7;
    sub_1D7704A00();
    v48 = v31;
    v47 = v32;
    v49 = 8;
    sub_1D7704A00();
    v48 = v29;
    v47 = v30;
    v49 = 9;
    sub_1D7704A00();
    v48 = v27;
    v47 = v28;
    v49 = 10;
    sub_1D7704A00();
    v48 = v25;
    v47 = v26;
    v49 = 11;
    sub_1D7704A00();
    v48 = v23;
    v47 = v24;
    v49 = 12;
    sub_1D7704A00();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D769A254()
{
  result = qword_1EC9BD2E0;
  if (!qword_1EC9BD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD2E0);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Regular.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D769BABC(0, &qword_1EC9BD2F0, sub_1D769A254, &type metadata for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769A254();
  sub_1D7704B00();
  if (!v2)
  {
    v47 = v6;
    type metadata accessor for CGRect(0);
    v51 = 0;
    sub_1D769A8D0(&qword_1EC9BD2F8, MEMORY[0x1E695EF80]);
    sub_1D7704970();
    v45 = v50;
    v46 = v49;
    v51 = 1;
    sub_1D7704970();
    v43 = v50;
    v44 = v49;
    v51 = 2;
    sub_1D7704970();
    v41 = v50;
    v42 = v49;
    v51 = 3;
    sub_1D7704970();
    v39 = v50;
    v40 = v49;
    v51 = 4;
    sub_1D7704970();
    v37 = v50;
    v38 = v49;
    v51 = 5;
    sub_1D7704970();
    v35 = v50;
    v36 = v49;
    v51 = 6;
    sub_1D7704970();
    v33 = v50;
    v34 = v49;
    v51 = 7;
    sub_1D7704970();
    v31 = v50;
    v32 = v49;
    v51 = 8;
    sub_1D7704970();
    v29 = v50;
    v30 = v49;
    v51 = 9;
    sub_1D7704970();
    v27 = v50;
    v28 = v49;
    v51 = 10;
    sub_1D7704970();
    v25 = v50;
    v26 = v49;
    v51 = 11;
    sub_1D7704970();
    v23 = v50;
    v24 = v49;
    v51 = 12;
    sub_1D7704970();
    (*(v47 + 8))(v8, v48);
    v10 = v45;
    *a2 = v46;
    a2[1] = v10;
    v11 = v43;
    a2[2] = v44;
    a2[3] = v11;
    v12 = v41;
    a2[4] = v42;
    a2[5] = v12;
    v13 = v39;
    a2[6] = v40;
    a2[7] = v13;
    v14 = v37;
    a2[8] = v38;
    a2[9] = v14;
    v15 = v35;
    a2[10] = v36;
    a2[11] = v15;
    v16 = v33;
    a2[12] = v34;
    a2[13] = v16;
    v17 = v31;
    a2[14] = v32;
    a2[15] = v17;
    v18 = v29;
    a2[16] = v30;
    a2[17] = v18;
    v19 = v27;
    a2[18] = v28;
    a2[19] = v19;
    v20 = v25;
    a2[20] = v26;
    a2[21] = v20;
    v21 = v23;
    a2[22] = v24;
    a2[23] = v21;
    v22 = v50;
    a2[24] = v49;
    a2[25] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D769A8D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D769A944()
{
  v1 = *v0;
  v2 = 0x656D617266;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 != 1)
  {
    v5 = 0x7246737574617473;
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

uint64_t sub_1D769AA10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D769CBC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D769AA38(uint64_t a1)
{
  v2 = sub_1D769ADAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D769AA74(uint64_t a1)
{
  v2 = sub_1D769ADAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Compact.encode(to:)(void *a1)
{
  sub_1D769BABC(0, &qword_1EC9BD300, sub_1D769ADAC, &type metadata for DebugJournalSummaryViewLayoutAttributes.Compact.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = v1[2];
  v24 = v1[3];
  v25 = v9;
  v10 = v1[4];
  v22 = v1[5];
  v23 = v10;
  v11 = v1[6];
  v20 = v1[7];
  v21 = v11;
  v12 = v1[8];
  v18 = v1[9];
  v19 = v12;
  v13 = v1[10];
  v16 = v1[11];
  v17 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769ADAC();
  sub_1D7704B10();
  v14 = *v1;
  v27 = v1[1];
  v26 = v14;
  v28 = 0;
  type metadata accessor for CGRect(0);
  sub_1D769A8D0(&qword_1EC9BD2E8, MEMORY[0x1E695EF68]);
  sub_1D7704A00();
  if (!v2)
  {
    v27 = v24;
    v26 = v25;
    v28 = 1;
    sub_1D7704A00();
    v27 = v22;
    v26 = v23;
    v28 = 2;
    sub_1D7704A00();
    v27 = v20;
    v26 = v21;
    v28 = 3;
    sub_1D7704A00();
    v27 = v18;
    v26 = v19;
    v28 = 4;
    sub_1D7704A00();
    v27 = v16;
    v26 = v17;
    v28 = 5;
    sub_1D7704A00();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D769ADAC()
{
  result = qword_1EC9BD308;
  if (!qword_1EC9BD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD308);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Compact.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D769BABC(0, &qword_1EC9BD310, sub_1D769ADAC, &type metadata for DebugJournalSummaryViewLayoutAttributes.Compact.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769ADAC();
  sub_1D7704B00();
  if (!v2)
  {
    v9 = v6;
    type metadata accessor for CGRect(0);
    v31 = 0;
    sub_1D769A8D0(&qword_1EC9BD2F8, MEMORY[0x1E695EF80]);
    v10 = v28;
    sub_1D7704970();
    v26 = v30;
    v27 = v29;
    v31 = 1;
    sub_1D7704970();
    v24 = v30;
    v25 = v29;
    v31 = 2;
    sub_1D7704970();
    v22 = v30;
    v23 = v29;
    v31 = 3;
    sub_1D7704970();
    v20 = v30;
    v21 = v29;
    v31 = 4;
    sub_1D7704970();
    v18 = v30;
    v19 = v29;
    v31 = 5;
    sub_1D7704970();
    (*(v9 + 8))(v8, v10);
    v12 = v26;
    *a2 = v27;
    a2[1] = v12;
    v13 = v24;
    a2[2] = v25;
    a2[3] = v13;
    v14 = v22;
    a2[4] = v23;
    a2[5] = v14;
    v15 = v20;
    a2[6] = v21;
    a2[7] = v15;
    v16 = v18;
    a2[8] = v19;
    a2[9] = v16;
    v17 = v30;
    a2[10] = v29;
    a2[11] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double DebugJournalSummaryViewLayoutAttributes.frame.getter()
{
  memcpy(__dst, v0, 0x1A1uLL);
  v1 = sub_1D769B214(__dst);
  if (!v1 || (result = 0.0, v1 == 1))
  {
    nullsub_1();
    return *v3;
  }

  return result;
}

uint64_t sub_1D769B214(uint64_t a1)
{
  if (*(a1 + 416) <= 1u)
  {
    return *(a1 + 416);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D769B22C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

void sub_1D769B250(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D7704A30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();

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

uint64_t sub_1D769B338(uint64_t a1)
{
  v2 = sub_1D769B664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D769B374(uint64_t a1)
{
  v2 = sub_1D769B664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D769BABC(0, &qword_1EC9BD318, sub_1D769B664, &type metadata for DebugJournalSummaryViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769B664();
  sub_1D7704B10();
  memcpy(v27, v3, 0x1A1uLL);
  v9 = sub_1D769B214(v27);
  if (v9)
  {
    if (v9 != 1)
    {
      LOBYTE(v26[0]) = 2;
      v28 = 0;
      sub_1D769B6B8();
      goto LABEL_8;
    }

    nullsub_1();
    v11 = v10;
    LOBYTE(v26[0]) = 1;
    v28 = 0;
    sub_1D769B6B8();
    sub_1D7704A00();
    if (!v2)
    {
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[3];
      v26[2] = v11[2];
      v26[3] = v14;
      v26[0] = v12;
      v26[1] = v13;
      v15 = v11[4];
      v16 = v11[5];
      v17 = v11[7];
      v26[6] = v11[6];
      v26[7] = v17;
      v26[4] = v15;
      v26[5] = v16;
      v18 = v11[8];
      v19 = v11[9];
      v20 = v11[11];
      v26[10] = v11[10];
      v26[11] = v20;
      v26[8] = v18;
      v26[9] = v19;
      v28 = 1;
      sub_1D769B70C();
LABEL_8:
      sub_1D7704A00();
    }
  }

  else
  {
    nullsub_1();
    v22 = v21;
    LOBYTE(v26[0]) = 0;
    v28 = 0;
    sub_1D769B6B8();
    sub_1D7704A00();
    if (!v2)
    {
      memcpy(v26, v22, sizeof(v26));
      v28 = 1;
      sub_1D769B760();
      goto LABEL_8;
    }
  }

  return (*(v25 + 8))(v8, v6);
}

unint64_t sub_1D769B664()
{
  result = qword_1EC9BD320;
  if (!qword_1EC9BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD320);
  }

  return result;
}

unint64_t sub_1D769B6B8()
{
  result = qword_1EC9BD328;
  if (!qword_1EC9BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD328);
  }

  return result;
}

unint64_t sub_1D769B70C()
{
  result = qword_1EC9BD330;
  if (!qword_1EC9BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD330);
  }

  return result;
}

unint64_t sub_1D769B760()
{
  result = qword_1EC9BD338;
  if (!qword_1EC9BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD338);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D769BABC(0, &qword_1EC9BD340, sub_1D769B664, &type metadata for DebugJournalSummaryViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769B664();
  sub_1D7704B00();
  if (!v2)
  {
    v8 = a1;
    v10 = v14;
    v9 = v15;
    v19[446] = 0;
    sub_1D769BB24();
    sub_1D7704970();
    v11 = v10;
    if (v20)
    {
      v12 = v9;
      a1 = v8;
      if (v20 != 1)
      {
        (*(v11 + 8))(v7, v5);
        sub_1D769843C(v19);
LABEL_8:
        memcpy(v12, v19, 0x1A1uLL);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      sub_1D7667C54(v8, v18);
      DebugJournalSummaryViewLayoutAttributes.Compact.init(from:)(v18, v16);
      (*(v11 + 8))(v7, v5);
      *&v17[128] = v16[8];
      *&v17[144] = v16[9];
      *&v17[160] = v16[10];
      *&v17[176] = v16[11];
      *&v17[64] = v16[4];
      *&v17[80] = v16[5];
      *&v17[96] = v16[6];
      *&v17[112] = v16[7];
      *v17 = v16[0];
      *&v17[16] = v16[1];
      *&v17[32] = v16[2];
      *&v17[48] = v16[3];
      sub_1D7698430(v17);
    }

    else
    {
      a1 = v8;
      sub_1D7667C54(v8, v18);
      DebugJournalSummaryViewLayoutAttributes.Regular.init(from:)(v18, v16);
      v12 = v9;
      (*(v11 + 8))(v7, v5);
      memcpy(v17, v16, 0x1A0uLL);
      sub_1D7698480(v17);
    }

    memcpy(v19, v17, 0x1A1uLL);
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D769BABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D769BB24()
{
  result = qword_1EC9BD348;
  if (!qword_1EC9BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD348);
  }

  return result;
}

unint64_t sub_1D769BB7C()
{
  result = qword_1EC9BD350;
  if (!qword_1EC9BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD350);
  }

  return result;
}

double sub_1D769BBD0()
{
  memcpy(__dst, v0, 0x1A1uLL);
  v1 = sub_1D769B214(__dst);
  if (!v1 || (result = 0.0, v1 == 1))
  {
    nullsub_1();
    return *v3;
  }

  return result;
}

unint64_t sub_1D769BC48()
{
  result = qword_1EC9BD358;
  if (!qword_1EC9BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD358);
  }

  return result;
}

unint64_t sub_1D769BCA0()
{
  result = qword_1EC9BD360;
  if (!qword_1EC9BD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD360);
  }

  return result;
}

unint64_t sub_1D769BCF8()
{
  result = qword_1EC9BD368;
  if (!qword_1EC9BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD368);
  }

  return result;
}

uint64_t sub_1D769BD7C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1D769CE1C();
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x1EEE45C50](a1, v10, v11, v12, v13, v14);
}

uint64_t initializeBufferWithCopyOfBuffer for DebugJournalSummaryViewLayoutAttributes(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 417))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 416);
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

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 417) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 417) = 0;
    }

    if (a2)
    {
      *(result + 416) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D769BF2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 360) = 0u;
    *(result + 376) = 0u;
    *(result + 392) = 0u;
    LOBYTE(a2) = 2;
    *(result + 408) = 0;
  }

  *(result + 416) = a2;
  return result;
}

uint64_t sub_1D769BFBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 416))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D769BFDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 416) = v3;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1D769C0B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D769C0D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 192) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.AttributesType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.AttributesType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D769C408()
{
  result = qword_1EC9BD370;
  if (!qword_1EC9BD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD370);
  }

  return result;
}

unint64_t sub_1D769C460()
{
  result = qword_1EC9BD378;
  if (!qword_1EC9BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD378);
  }

  return result;
}

unint64_t sub_1D769C4B8()
{
  result = qword_1EC9BD380;
  if (!qword_1EC9BD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD380);
  }

  return result;
}

unint64_t sub_1D769C510()
{
  result = qword_1EC9BD388;
  if (!qword_1EC9BD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD388);
  }

  return result;
}

unint64_t sub_1D769C568()
{
  result = qword_1EC9BD390;
  if (!qword_1EC9BD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD390);
  }

  return result;
}

unint64_t sub_1D769C5C0()
{
  result = qword_1EC9BD398;
  if (!qword_1EC9BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD398);
  }

  return result;
}

unint64_t sub_1D769C618()
{
  result = qword_1EC9BD3A0;
  if (!qword_1EC9BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3A0);
  }

  return result;
}

unint64_t sub_1D769C670()
{
  result = qword_1EC9BD3A8;
  if (!qword_1EC9BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3A8);
  }

  return result;
}

unint64_t sub_1D769C6C8()
{
  result = qword_1EC9BD3B0;
  if (!qword_1EC9BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3B0);
  }

  return result;
}

unint64_t sub_1D769C720()
{
  result = qword_1EC9BD3B8;
  if (!qword_1EC9BD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3B8);
  }

  return result;
}

unint64_t sub_1D769C774(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D77048E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D769C7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D7715CA0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715CC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D7715CE0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D00 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7715D20 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7246737574617473 && a2 == 0xEB00000000656D61 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715D40 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D60 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715D80 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715DA0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715DC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715DE0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D769CBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715D40 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7246737574617473 && a2 == 0xEB00000000656D61 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D60 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715DC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715DE0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7704A30();

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

unint64_t sub_1D769CDC8()
{
  result = qword_1EC9BD3C0;
  if (!qword_1EC9BD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3C0);
  }

  return result;
}

unint64_t sub_1D769CE1C()
{
  result = qword_1EC9BD3C8;
  if (!qword_1EC9BD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3C8);
  }

  return result;
}

uint64_t sub_1D769CE84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void AdRequestStore.Behavior.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D77048E0();

  *a3 = v4 != 0;
}

uint64_t sub_1D769CF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D769CFBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D769D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D769D098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t AdRequestStore.__allocating_init()()
{
  v0 = swift_allocObject();
  AdRequestStore.init()();
  return v0;
}

uint64_t AdRequestStore.deinit()
{

  return v0;
}

uint64_t AdRequestStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D769D1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77041E0();

  return sub_1D769D224(a1, v6, a2, a3);
}

unint64_t sub_1D769D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1D7704220();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void *sub_1D769D3F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for DebugInterstitialAdProvider();
    swift_allocObject();
    v1 = sub_1D76C5968();
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t InterstitialAdProvider.fetchInterstitialAd(for:contentFetched:)(void (*a1)(char *, _UNKNOWN **, uint64_t), uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (qword_1EE0AEB28 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    sub_1D769D3F4();
    v10 = sub_1D76C5BE0(a1, a2);

    return v10;
  }

  else
  {
    v12 = v4[5];
    v13 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
    v14 = (*(v13 + 8))(v12, v13);
    sub_1D7667C54((v5 + 2), v19);
    v15 = swift_allocObject();
    sub_1D767FBE4(v19, v15 + 16);
    *(v15 + 56) = a1;
    *(v15 + 64) = a2;
    aBlock[4] = sub_1D769D8B8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D769D7C4;
    aBlock[3] = &block_descriptor_4;
    v16 = _Block_copy(aBlock);

    v17 = [v14 promotedContentInterstitialWithSize:v16 ready:{a3, a4}];
    _Block_release(v16);

    type metadata accessor for AdPendingLoadToken();
    result = swift_allocObject();
    *(result + 16) = v17;
  }

  return result;
}

void sub_1D769D650(void *a1, void *a2, void (*a3)(id, _UNKNOWN **, uint64_t))
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 promotedContentInterstitialViewWithInfo_];

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for InterstitialAdMetricsView());
    v10 = v8;
    v15 = sub_1D76E8F7C(v10);

    a3(v15, &protocol witness table for InterstitialAdMetricsView, 0);
    v11 = v15;
  }

  else
  {
    [a1 unfilledReason];
    v12 = sub_1D7703880();
    sub_1D769D8F0();
    v13 = swift_allocError();
    *v14 = v12;
    *(v14 + 8) = 0;
    a3(v13, 0, 1);
    v11 = v13;
  }
}

void sub_1D769D7C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t InterstitialAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t InterstitialAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1D769D8F0()
{
  result = qword_1EE0AF000;
  if (!qword_1EE0AF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF000);
  }

  return result;
}

void sub_1D769D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7709050;
  v14 = (a1 + *(v8 + 60));
  v15 = *v14;
  v16 = *v14 >> 62;
  v45 = v9;
  v46 = v3;
  v43 = v12;
  v44 = v11;
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0x6564726163736944;
LABEL_6:
      v18 = 0xE900000000000064;
      goto LABEL_24;
    }

    v19 = v14[2] | v14[3] | v14[1];
    if (v15 != 0x8000000000000000 || v19 != 0)
    {
      if (v15 == 0x8000000000000008 && v19 == 0)
      {
        v17 = 0x656C756465686353;
      }

      else if (v15 == 0x8000000000000010 && v19 == 0)
      {
        v17 = 0x656D726177657250;
      }

      else if (v15 != 0x8000000000000018 || v19)
      {
        if (v15 != 0x8000000000000020 || v19)
        {
          if (v19)
          {
            v41 = 0;
          }

          else
          {
            v41 = v15 == 0x8000000000000028;
          }

          if (v41)
          {
            v17 = 0x65746E6573657250;
          }

          else
          {
            v17 = 0x657370616C6C6F43;
          }
        }

        else
        {
          v17 = 0x656C6C69666C7546;
        }
      }

      else
      {
        v17 = 0x6574736575716552;
      }

      goto LABEL_6;
    }

    v18 = 0xE700000000000000;
    v17 = 0x64657461657243;
  }

  else
  {
    v18 = 0xE600000000000000;
    v17 = 0x64656C696146;
  }

LABEL_24:
  v23 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v24 = v13;
  v25 = sub_1D7668854();
  v24[4] = v17;
  v24[5] = v18;
  v24[12] = v23;
  v24[13] = v25;
  v24[8] = v25;
  v24[9] = a2;
  v24[10] = a3;
  v26 = v14[3];
  v48 = v15;
  v49 = *(v14 + 1);
  v50 = v26;

  v27 = JournalEntryStatus.shortDescription.getter();
  v24[17] = v23;
  v24[18] = v25;
  v24[14] = v27;
  v24[15] = v28;
  v29 = sub_1D77045A0();
  sub_1D7703ED0("Adding journal entry=%{public}@, placement=%{public}@, description=%@", 69, 2, &dword_1D7662000, v43, v29, v24);

  v30 = v46;
  v48 = a2;
  *&v49 = a3;

  sub_1D77035E0();

  if (v47)
  {
    v31 = v47;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v44;
  sub_1D769F978(a1, v44, qword_1EE0B0320, type metadata accessor for JournalEntry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1D768C730(0, v31[2] + 1, 1, v31);
  }

  v33 = v45;
  v35 = v31[2];
  v34 = v31[3];
  if (v35 >= v34 >> 1)
  {
    v31 = sub_1D768C730((v34 > 1), v35 + 1, 1, v31);
  }

  v31[2] = v35 + 1;
  sub_1D76A00C8(v32, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v35);
  v47 = v31;
  v48 = a2;
  *&v49 = a3;

  sub_1D77035F0();

  swift_beginAccess();
  v36 = *(v30 + 16);
  if (v36 >> 62)
  {
    v37 = sub_1D7704880();
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      return;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
  }

  else
  {

    v38 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1DA6FF530](v38, v36);
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      ++v38;
      v40 = *(v39 + 16);

      v40(a1, a2, a3);
    }

    while (v37 != v38);
  }
}

uint64_t NativeAdInfo.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v7, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = *(v7 + 3);
    v13[2] = *(v7 + 2);
    v13[3] = v9;
    v13[4] = *(v7 + 4);
    v14 = *(v7 + 10);
    v10 = *(v7 + 1);
    v13[0] = *v7;
    v13[1] = v10;
    v11 = v10;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v13);
    }

    else
    {

      sub_1D769DFFC(v13);
    }
  }

  else
  {
    sub_1D769E05C(v7, v4);
    v11 = *(v4 + 10);

    sub_1D769F86C(v4, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v11;
}

uint64_t sub_1D769E05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NativeAdInfo.placementIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v7, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = *(v7 + 3);
    v13[2] = *(v7 + 2);
    v13[3] = v9;
    v13[4] = *(v7 + 4);
    v14 = *(v7 + 10);
    v10 = *(v7 + 1);
    v13[0] = *v7;
    v13[1] = v10;
    v11 = *&v13[0];
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v13);
    }

    else
    {

      sub_1D769DFFC(v13);
    }
  }

  else
  {
    sub_1D769E05C(v7, v4);
    v11 = *v4;

    sub_1D769F86C(v4, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v11;
}

uint64_t NativeAdInfo.journal.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v7, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = *(v7 + 3);
    v14 = *(v7 + 2);
    v15 = v9;
    v16 = *(v7 + 4);
    v17 = *(v7 + 10);
    v10 = *(v7 + 1);
    v13[0] = *v7;
    v13[1] = v10;
    v11 = v14;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v13);
    }

    else
    {

      sub_1D769DFFC(v13);
    }
  }

  else
  {
    sub_1D769E05C(v7, v4);
    v11 = *(v4 + 12);

    sub_1D769F86C(v4, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v11;
}

uint64_t NativeAdInfo.attachContent(view:at:)(uint64_t a1, double a2, double a3)
{
  v32 = a1;
  v31 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FD0;
  v13 = NativeAdInfo.placementIdentifier.getter();
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D7668854();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *v33 = a2;
  *(v33 + 1) = a3;
  type metadata accessor for CGPoint(0);
  v18 = sub_1D77042B0();
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  v20 = sub_1D77045A0();
  sub_1D7703ED0("Attaching content view for native ad, placement=%{public}@, position=%{public}@", 79, 2, &dword_1D7662000, v11, v20, v12);

  sub_1D769F910(v3, v10, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v22 = *(v10 + 4);
    v34[1] = *(v10 + 3);
    v35 = v22;
    v23 = *(v10 + 2);
    v33[1] = *(v10 + 1);
    v34[0] = v23;
    v36 = *(v10 + 10);
    v33[0] = *v10;
    v24 = v35;
    if (EnumCaseMultiPayload == 1)
    {
      __swift_project_boxed_opaque_existential_1(v34 + 1, v35);
      v25 = (*(*(&v24 + 1) + 24))(v36, v32, v24, *(&v24 + 1));
      sub_1D769E02C(v33);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v34 + 1, v35);
      v25 = (*(*(&v24 + 1) + 24))(v36, v32, v24, *(&v24 + 1));
      sub_1D769DFFC(v33);
    }
  }

  else
  {
    sub_1D769E05C(v10, v7);
    v26 = v31;
    v27 = &v7[*(v31 + 48)];
    v28 = *(v27 + 3);
    v29 = *(v27 + 4);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v25 = (*(v29 + 24))(*&v7[*(v26 + 52)], v32, v28, v29);
    sub_1D769F86C(v7, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v25;
}

void NativeAdInfo.discard(policyFailures:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v88);
  v95 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v93);
  v6 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F814(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D7703940();
  v10 = MEMORY[0x1EEE9AC00](v99);
  v103 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v90 = v85 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = v85 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v89 = v85 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v92 = v85 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v94 = v85 - v21;
  v22 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v26 = (v23 + 63) >> 6;
  v27 = (v20 + 56);
  v97 = v20;
  v104 = (v20 + 32);
  v28 = a1;

  v29 = 0;
  v98 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v29;
    if (!v25)
    {
      break;
    }

LABEL_8:
    v31 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v32 = *(*(v28 + 48) + (v31 | (v29 << 6)));
    if ((v32 - 2) >= 3)
    {
      v86 = v6;
      if (v32)
      {
        sub_1D7703920();
      }

      else
      {
        sub_1D7703910();
      }

      v101 = v9;
      v33 = v99;
      (*v27)(v9, 0, 1, v99);
      v34 = *v104;
      (*v104)(v102, v101, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v98 = sub_1D768C6FC(0, *(v98 + 2) + 1, 1, v98);
      }

      v37 = *(v98 + 2);
      v36 = *(v98 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v100 = v37 + 1;
        v40 = sub_1D768C6FC((v36 > 1), v37 + 1, 1, v98);
        v38 = v100;
        v98 = v40;
      }

      v39 = v98;
      *(v98 + 2) = v38;
      v34(&v39[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v37], v102, v99);
      a2 = v87;
      v6 = v86;
    }

    else
    {
      (*v27)(v9, 1, 1, v99);
      sub_1D769F86C(v9, sub_1D769F814);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v29);
    ++v30;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  v41 = v92;
  sub_1D7703930();
  v42 = *(v98 + 2);
  v91 = v42;
  if (v42)
  {
    v86 = v6;
    v87 = a2;
    v101 = *(v97 + 16);
    v102 = (v97 + 16);
    v43 = &v98[(*(v97 + 80) + 32) & ~*(v97 + 80)];
    v100 = *(v97 + 72);
    v44 = (v97 + 8);
    v85[1] = v104 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v45 = v42;
    v46 = v90;
    v47 = v89;
    v48 = v99;
    do
    {
      v49 = v101;
      (v101)(v47, v43, v48);
      sub_1D769F8CC(&unk_1EE0B0838, MEMORY[0x1E69C6078]);
      sub_1D7704380();
      sub_1D769F8CC(&qword_1EE0B0828, MEMORY[0x1E69C6088]);
      sub_1D7704B40();
      (v49)(v103, v47, v48);
      sub_1D769F8CC(&qword_1EE0B0830, MEMORY[0x1E69C6080]);
      sub_1D77046D0();
      v50 = *v44;
      (*v44)(v47, v48);
      v50(v41, v48);
      v51 = *v104;
      (*v104)(v41, v46, v48);
      v43 += v100;
      --v45;
    }

    while (v45);

    a2 = v87;
    v6 = v86;
  }

  else
  {

    v51 = *v104;
  }

  v52 = v94;
  v53 = v99;
  v51(v94, v41, v99);
  sub_1D769F910(v96, v6, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = v95;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v56 = *(v6 + 3);
      v110[0] = *(v6 + 2);
      v110[1] = v56;
      v111 = *(v6 + 4);
      v112 = *(v6 + 10);
      v57 = *(v6 + 1);
      v108 = *v6;
      v109 = v57;
      if (v91)
      {
        v58 = v111;
        __swift_project_boxed_opaque_existential_1(v110 + 1, v111);
        (*(*(*(&v58 + 1) + 8) + 16))(v58);
        sub_1D7703960();
        if (swift_dynamicCastClass())
        {
          sub_1D7703950();
        }

        swift_unknownObjectRelease();
      }

      v59 = NativeAdInfo.placementIdentifier.getter();
      v61 = v60;
      sub_1D7667C54(v110 + 8, v105);
      v62 = v112;
      v63 = NativeAdInfo.journal.getter();
      *a2 = v59;
      *(a2 + 8) = v61;
      v64 = v106;
      v65 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v66 = (*(*(v65 + 8) + 8))(v64);
      v68 = v67;
      (*(v97 + 8))(v52, v53);
      *(a2 + 16) = v66;
      *(a2 + 24) = v68;
      sub_1D7667C54(v105, a2 + 40);
      *(a2 + 80) = v62;
      *(a2 + 32) = v63;
      __swift_destroy_boxed_opaque_existential_1(v105);
      sub_1D769E02C(&v108);
    }

    else
    {
      (*(v97 + 8))(v52, v53);
      v83 = *(v6 + 3);
      *(a2 + 32) = *(v6 + 2);
      *(a2 + 48) = v83;
      *(a2 + 64) = *(v6 + 4);
      *(a2 + 80) = *(v6 + 10);
      v84 = *(v6 + 1);
      *a2 = *v6;
      *(a2 + 16) = v84;
    }
  }

  else
  {
    sub_1D769E05C(v6, v95);
    if (v91)
    {
      v69 = (v55 + *(v88 + 48));
      v70 = v69[3];
      v71 = v69[4];
      __swift_project_boxed_opaque_existential_1(v69, v70);
      (*(*(v71 + 8) + 16))(v70);
      sub_1D7703960();
      if (swift_dynamicCastClass())
      {
        sub_1D7703950();
      }

      swift_unknownObjectRelease();
    }

    v72 = NativeAdInfo.placementIdentifier.getter();
    v74 = v73;
    v75 = v88;
    sub_1D7667C54(v55 + *(v88 + 48), &v108);
    v76 = *(v55 + *(v75 + 52));
    v77 = NativeAdInfo.journal.getter();
    *a2 = v72;
    *(a2 + 8) = v74;
    v78 = *(&v109 + 1);
    v79 = *&v110[0];
    __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
    v80 = (*(*(v79 + 8) + 8))(v78);
    v82 = v81;
    (*(v97 + 8))(v52, v53);
    *(a2 + 16) = v80;
    *(a2 + 24) = v82;
    sub_1D7667C54(&v108, a2 + 40);
    *(a2 + 80) = v76;
    *(a2 + 32) = v77;
    __swift_destroy_boxed_opaque_existential_1(&v108);
    sub_1D769F86C(v55, type metadata accessor for NativeAdInfo.Fulfilled);
  }
}

uint64_t NativeAdInfo.Fulfilled.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.advertiserName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.articleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.articleTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.campaignData.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.identifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.info.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D769F910(v1, a1, type metadata accessor for NativeAdInfo.Fulfilled);
  type metadata accessor for NativeAdInfo(0);

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall NativeAdInfo.Fulfilled.failedToLoadContent()()
{
  v1 = (v0 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  [(*(*(v3 + 8) + 16))(v2) contentLoadFailure];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NativeAdInfo.Fulfilled.markPresented()()
{
  v26 = sub_1D7702FA0();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - v6);
  v25 = v0[12];
  v8 = v0 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 44);
  v9 = v0[1];
  v10 = v0[10];
  v11 = v0[11];
  v23 = *v0;
  v24 = v10;
  v12 = *(v8 + 536);
  v13 = v5[21];
  sub_1D769F978(v8, v7 + v13, qword_1EE0B0DA8, type metadata accessor for AdRequest);
  sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
  (*(*(v14 - 8) + 56))(v7 + v13, 0, 1, v14);

  sub_1D7702F90();
  v15 = sub_1D7702F70();
  v17 = v16;
  (*(v1 + 8))(v3, v26);
  *v7 = v15;
  v7[1] = v17;
  sub_1D7702F40();
  v18 = (v7 + v5[16]);
  v19 = v23;
  *v18 = v23;
  v18[1] = v9;
  v20 = (v7 + v5[17]);
  *v20 = 0x8000000000000028;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  v21 = (v7 + v5[18]);
  *v21 = v24;
  v21[1] = v11;
  *(v7 + v5[19]) = v12;
  v22 = v7 + v5[20];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  sub_1D769D944(v7, v19, v9);
  sub_1D769F9E4(v7);
}

uint64_t NativeAdInfo.Unfilled.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdInfo.Unfilled.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NativeAdInfo.Unfilled.unfilledReason.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  return (*(*(v2 + 8) + 48))(v1);
}

uint64_t sub_1D769F728@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a3@<X8>)
{
  a1(v3, a3);
  type metadata accessor for NativeAdInfo(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s7NewsAds12NativeAdInfoO8UnfilledV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

void sub_1D769F814(uint64_t a1)
{
  if (!qword_1EE0B0820)
  {
    sub_1D7703940();
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0B0820);
    }
  }
}

uint64_t sub_1D769F86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D769F8CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7703940();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D769F910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D769F978(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  sub_1D7666C8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D769F9E4(uint64_t a1)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7NewsAds12NativeAdInfoO9FulfilledV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[10] == a2[10] && a1[11] == a2[11];
  if (!v5 && (sub_1D7704A30() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = a2[7];
  if (v6)
  {
    if (v7 && (a1[6] == a2[6] && v6 == v7 || (sub_1D7704A30() & 1) != 0))
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_19:
  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_1D7704A30();
}

uint64_t _s7NewsAds12NativeAdInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v32 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v32 - v11);
  sub_1D76A0064(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 56)];
  sub_1D769F910(a1, v16, type metadata accessor for NativeAdInfo);
  sub_1D769F910(a2, v17, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D769F910(v16, v10, type metadata accessor for NativeAdInfo);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *(v17 + 48);
        v34 = *(v17 + 32);
        v35 = v19;
        v36 = *(v17 + 64);
        v37 = *(v17 + 80);
        v20 = *(v17 + 16);
        v32 = *v17;
        v33 = v20;
        v21 = *v10 == v32 && v10[1] == *(&v32 + 1);
        if (v21 || (sub_1D7704A30() & 1) != 0)
        {
          if (v10[2] == v33 && v10[3] == *(&v33 + 1))
          {
            sub_1D769E02C(&v32);
            sub_1D769E02C(v10);
          }

          else
          {
            v23 = sub_1D7704A30();
            sub_1D769E02C(&v32);
            sub_1D769E02C(v10);
            if ((v23 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_35;
        }

        sub_1D769E02C(&v32);
        sub_1D769E02C(v10);
        goto LABEL_38;
      }

      sub_1D769E02C(v10);
    }

    else
    {
      sub_1D769F910(v16, v7, type metadata accessor for NativeAdInfo);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v24 = *(v17 + 48);
        v34 = *(v17 + 32);
        v35 = v24;
        v36 = *(v17 + 64);
        v37 = *(v17 + 80);
        v25 = *(v17 + 16);
        v32 = *v17;
        v33 = v25;
        v26 = *v7 == v32 && v7[1] == *(&v32 + 1);
        if (v26 || (sub_1D7704A30() & 1) != 0)
        {
          if (v7[2] == v33 && v7[3] == *(&v33 + 1))
          {
            sub_1D769DFFC(&v32);
            sub_1D769DFFC(v7);
          }

          else
          {
            v28 = sub_1D7704A30();
            sub_1D769DFFC(&v32);
            sub_1D769DFFC(v7);
            if ((v28 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_35:
          v29 = 1;
          goto LABEL_39;
        }

        sub_1D769DFFC(&v32);
        sub_1D769DFFC(v7);
LABEL_38:
        v29 = 0;
        goto LABEL_39;
      }

      sub_1D769DFFC(v7);
    }
  }

  else
  {
    sub_1D769F910(v16, v12, type metadata accessor for NativeAdInfo);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = _s7NewsAds12NativeAdInfoO9FulfilledV2eeoiySbAE_AEtFZ_0(v12, v17);
      sub_1D769F86C(v17, type metadata accessor for NativeAdInfo.Fulfilled);
      sub_1D769F86C(v12, type metadata accessor for NativeAdInfo.Fulfilled);
LABEL_39:
      v30 = type metadata accessor for NativeAdInfo;
      goto LABEL_40;
    }

    sub_1D769F86C(v12, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  v29 = 0;
  v30 = sub_1D76A0064;
LABEL_40:
  sub_1D769F86C(v16, v30);
  return v29 & 1;
}

void sub_1D76A0064(uint64_t a1)
{
  if (!qword_1EE0B0318)
  {
    type metadata accessor for NativeAdInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0B0318);
    }
  }
}

uint64_t sub_1D76A00C8(uint64_t a1, uint64_t a2)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall String.formatted()()
{
  v2 = v1;
  v3 = v0;

  v4 = v3;
  v5 = v2;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void sub_1D76A01E8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[7];
  v40 = a3[6];
  v41 = v7;
  v42 = a3[8];
  v8 = a3[3];
  v36 = a3[2];
  v37 = v8;
  v9 = a3[5];
  v38 = a3[4];
  v39 = v9;
  v10 = a3[1];
  v34 = *a3;
  v35 = v10;
  v11 = type metadata accessor for DebugJournalViewController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  v14 = objc_allocWithZone(MEMORY[0x1E69DD020]);
  sub_1D766D644(&v34, v33);
  *&v12[v13] = [v14 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v15 = *(&v34 + 1);
  v16 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v16 = v34;
  *(v16 + 1) = v15;
  v17 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v18 = v34;
  v19 = v35;
  v20 = v36;
  v21 = v38;
  *(v18 + 3) = v37;
  *(v18 + 4) = v21;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  v22 = v39;
  v23 = v40;
  v24 = v42;
  *(v18 + 7) = v41;
  *(v18 + 8) = v24;
  *(v18 + 5) = v22;
  *(v18 + 6) = v23;
  *&v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = &unk_1F524E6C8;
  v32.receiver = v12;
  v32.super_class = v11;

  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  v27 = [v26 initWithRootViewController_];

  if (a4)
  {
    v28 = sub_1D7703F60();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 window];

      if (v30)
      {
        v31 = [v30 rootViewController];

        if (v31)
        {
          [v31 presentViewController:v27 animated:1 completion:0];
        }
      }
    }
  }
}

void sub_1D76A0424(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D76A04B0(uint64_t a1)
{
  v2 = sub_1D76A06A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A04EC(uint64_t a1)
{
  v2 = sub_1D76A06A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ANFDocumentAdData.encode(to:)(void *a1)
{
  sub_1D76A099C(0, &qword_1EC9BD3D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A06A0();

  sub_1D7704B10();
  v10[1] = v8;
  sub_1D76A06F4(0);
  sub_1D76A075C();
  sub_1D7704A00();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D76A06A0()
{
  result = qword_1EC9BD3D8;
  if (!qword_1EC9BD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3D8);
  }

  return result;
}

void sub_1D76A06F4(uint64_t a1)
{
  if (!qword_1EC9BD3E0)
  {
    sub_1D76697B0();
    v1 = sub_1D77041B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9BD3E0);
    }
  }
}

unint64_t sub_1D76A075C()
{
  result = qword_1EC9BD3E8;
  if (!qword_1EC9BD3E8)
  {
    sub_1D76A06F4(255);
    sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3E8);
  }

  return result;
}

uint64_t ANFDocumentAdData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76A099C(0, &qword_1EC9BD3F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A06A0();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76A06F4(0);
    sub_1D76A0A00();
    sub_1D7704970();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76A099C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76A06A0();
    v7 = a3(a1, &type metadata for ANFDocumentAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76A0A00()
{
  result = qword_1EC9BD3F8;
  if (!qword_1EC9BD3F8)
  {
    sub_1D76A06F4(255);
    sub_1D768DEEC(&qword_1EC9BD1D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3F8);
  }

  return result;
}

unint64_t sub_1D76A0AA0(uint64_t a1)
{
  *(a1 + 8) = sub_1D76A0AD0();
  result = sub_1D76A0B24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76A0AD0()
{
  result = qword_1EE0AFCE8;
  if (!qword_1EE0AFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCE8);
  }

  return result;
}

unint64_t sub_1D76A0B24()
{
  result = qword_1EE0AFCF0;
  if (!qword_1EE0AFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCF0);
  }

  return result;
}

uint64_t sub_1D76A0BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D76A0BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76A0C50()
{
  result = qword_1EC9BD400;
  if (!qword_1EC9BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD400);
  }

  return result;
}

unint64_t sub_1D76A0CA8()
{
  result = qword_1EC9BD408;
  if (!qword_1EC9BD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD408);
  }

  return result;
}

unint64_t sub_1D76A0D00()
{
  result = qword_1EC9BD410;
  if (!qword_1EC9BD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD410);
  }

  return result;
}

uint64_t sub_1D76A0D54@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BannerAdLayoutStore();
  v3 = swift_allocObject();
  sub_1D76A1280(0, &qword_1EE0B0880, &type metadata for BannerAdLayout);
  swift_allocObject();
  result = sub_1D77035C0();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for BannerAdLayoutStore;
  *a1 = v3;
  return result;
}

void *sub_1D76A0DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B12C0, &protocol descriptor for InterstitialAdViewStylerType, 1);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for InterstitialAdViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5251290;
    v17[0] = v8;
    v10 = type metadata accessor for InterstitialAdViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5251290;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F5250B48;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D76A1024@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B12C0, &protocol descriptor for InterstitialAdViewStylerType, 1);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for InterstitialAdViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5251290;
    v17[0] = v8;
    v10 = type metadata accessor for InterstitialAdViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5251290;
    v11[2] = v16;
    sub_1D76A1280(0, &qword_1EC9BD418, &type metadata for InterstitialAdViewLayoutAttributes);
    swift_allocObject();
    v11[7] = sub_1D77035C0();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52560D8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D76A1280(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D77035D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t AdContentInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t AdPolicyErrors.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      sub_1D7704740();

      v17 = 0xD000000000000012;
      v2 = *(v1 + 16);
      if (v2)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1D76970EC(0, v2, 0);
        v3 = (v1 + 80);
        do
        {
          v5 = *(v3 - 1);
          v4 = *v3;
          v7 = *(v16 + 16);
          v6 = *(v16 + 24);

          if (v7 >= v6 >> 1)
          {
            sub_1D76970EC((v6 > 1), v7 + 1, 1);
          }

          *(v16 + 16) = v7 + 1;
          v8 = v16 + 16 * v7;
          *(v8 + 32) = v5;
          *(v8 + 40) = v4;
          v3 += 8;
          --v2;
        }

        while (v2);
      }

      sub_1D76697B0();
      sub_1D7669758();
      v9 = sub_1D7704210();
      v11 = v10;

      MEMORY[0x1DA6FF0D0](v9, v11);

      v12 = 41;
      v13 = 0xE100000000000000;
    }

    else
    {
      v14 = v0[1];
      v17 = 0;
      sub_1D7704740();
      MEMORY[0x1DA6FF0D0](0xD000000000000015, 0x80000001D7716030);
      MEMORY[0x1DA6FF0D0](v1, v14);
      v12 = 0xD000000000000028;
      v13 = 0x80000001D7716050;
    }

    MEMORY[0x1DA6FF0D0](v12, v13);
  }

  else
  {
    v17 = 0;
    sub_1D7704740();
    MEMORY[0x1DA6FF0D0](0xD000000000000020, 0x80000001D77160A0);
    sub_1D7679D98();
    sub_1D7704850();
  }

  return v17;
}

uint64_t sub_1D76A171C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D76A1764(uint64_t result, unsigned int a2, unsigned int a3)
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

void BannerAdViewLayoutOptions.init(boundingSize:screenScale:layoutMargins:padding:safeAreaInsets:topPadding:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 80) = a11;
  *(a1 + 96) = a12;
}

uint64_t BannerAdViewLayoutOptions.Embedded.init(topPadding:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D76A182C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76A184C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdViewLayoutOptions.Embedded(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BannerAdViewLayoutOptions.Embedded(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D76A1900@<X0>(double *a1@<X8>)
{
  v3 = sub_1D77032B0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v42 = *v1;
  v13 = *(v1 + 8);
  sub_1D77032C0();
  v40 = v15;
  v41 = v14;
  sub_1D77032D0();
  v16 = sub_1D77032A0();
  v17 = *(v4 + 8);
  v17(v12, v3);
  [v16 displayScale];
  v39 = v18;

  sub_1D77032D0();
  sub_1D7703280();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v17(v10, v3);
  sub_1D77032D0();
  sub_1D7703290();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = (v17)(v7, v3);
  v36 = 0;
  if (!v13)
  {
    v36 = v42;
  }

  v37 = v39;
  v38 = v40;
  *a1 = v41;
  *(a1 + 1) = v38;
  *(a1 + 2) = v37;
  *(a1 + 3) = v20;
  *(a1 + 4) = v22;
  *(a1 + 5) = v24;
  *(a1 + 6) = v26;
  a1[7] = 40.0;
  *(a1 + 8) = v28;
  *(a1 + 9) = v30;
  *(a1 + 10) = v32;
  *(a1 + 11) = v34;
  *(a1 + 12) = v36;
  return result;
}

uint64_t BannerAdUpdate.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BannerAdUpdate.discard(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a1;
  v69 = a3;
  v6 = *(a2 + 48);
  v67 = *(a2 + 24);
  v68 = v6;
  v85 = v67;
  v86[0] = v6;
  v7 = type metadata accessor for AdRequest(255, &v85);
  v8 = sub_1D77046B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v57[-v16];
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v57[-v19];
  (*(v9 + 16))(v17, v4 + *(a2 + 72), v8);
  v21 = (*(v18 + 48))(v17, 1, v7);
  v61 = v4;
  v66 = v8;
  v63 = a2;
  if (v21 == 1)
  {
    v22 = *(v9 + 8);
    v65 = v9 + 8;
    v58 = v22;
    v22(v17, v8);
    v70 = *(v4 + *(a2 + 76));
    v23 = v59;
    (*(v18 + 56))(v59, 1, 1, v7);
    v24 = *(a2 + 40);
    v25 = *(v24 + 8);
    v62 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x869E000000000000;
    v26 = *(a2 + 16);
    v25(&v85, v26, v24);
    *&v57[8] = v85;

    sub_1D766E6D8(&v85);
    v64 = v25;
    v25(v83, v26, v24);
    sub_1D766CEFC(v84, v71);
    if (v72)
    {
      if (v72 == 1)
      {
        sub_1D766E6D8(v83);
        sub_1D76749B8(v71);
        v27 = v60;
        v28 = v61;
        v29 = *&v57[8];
      }

      else
      {
        v27 = v60;
        v28 = v61;
        v47 = *&v57[8];
        sub_1D766E6D8(v83);
        v29 = v47;
      }

      v40 = 0;
      v39 = 0;
    }

    else
    {
      sub_1D7667CB8(v71, &v74);
      v35 = *(&v75 + 1);
      v36 = v76;
      __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v37 = (*(v36 + 8))(v35, v36);
      v39 = v38;
      sub_1D766E6D8(v83);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v40 = v37;
      v27 = v60;
      v28 = v61;
      v29 = *&v57[8];
    }

    Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v27, v23, v29, *&v57[16], v40, v39);

    v58(v23, v66);
  }

  else
  {
    v65 = v9;
    (*(v18 + 32))(v20, v17, v7);
    v70 = *(v4 + *(a2 + 76));
    v30 = *(v18 + 16);
    *&v57[16] = v20;
    v30(v14, v20, v7);
    v31 = *(v18 + 56);
    v58 = v14;
    v31(v14, 0, 1, v7);
    v24 = *(a2 + 40);
    v32 = *(v24 + 8);
    v62 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x869E000000000000;
    v33 = *(a2 + 16);
    v32(&v85, v33, v24);
    *v57 = v85;

    sub_1D766E6D8(&v85);
    v59 = v33;
    v64 = v32;
    v32(v83, v33, v24);
    sub_1D766CEFC(v84, v71);
    if (v72)
    {
      if (v72 == 1)
      {
        sub_1D766E6D8(v83);
        sub_1D76749B8(v71);
        v27 = v60;
        v28 = v61;
        v34 = *v57;
      }

      else
      {
        v27 = v60;
        v28 = v61;
        v48 = *v57;
        sub_1D766E6D8(v83);
        v34 = v48;
      }

      v46 = 0;
      v45 = 0;
    }

    else
    {
      sub_1D7667CB8(v71, &v74);
      v41 = *(&v75 + 1);
      v42 = v76;
      __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v43 = (*(v42 + 8))(v41, v42);
      v45 = v44;
      sub_1D766E6D8(v83);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v46 = v43;
      v27 = v60;
      v28 = v61;
      v34 = *v57;
    }

    v49 = v58;
    Journal.addDiscardedEntry(error:request:placementIdentifier:contentIdentifier:)(v27, v58, v34, *&v57[8], v46, v45);

    (*(v65 + 8))(v49, v66);
    (*(v18 + 8))(*&v57[16], v7);
    v26 = v59;
  }

  v50 = sub_1D76A2390(v27);
  sub_1D76A2560(v27, v28, v50 & 1, v26, v67, *(&v67 + 1), v24, v68, v73, *(&v68 + 1));
  v51 = v64;
  v64(v83, v26, v24);
  v52 = v83[0];
  v53 = v26;
  v54 = v83[1];

  sub_1D766E6D8(v83);
  sub_1D766CEFC(v73, v86);
  v51(v71, v53, v24);
  v55 = v71[0];

  sub_1D766E6D8(v71);
  Journal.createDebugJournal(for:)(v55, *(&v55 + 1), &v74);

  *(&v86[10] + 8) = v79;
  *(&v86[11] + 8) = v80;
  *(&v86[12] + 8) = v81;
  *(&v86[13] + 8) = v82;
  *(&v86[6] + 8) = v75;
  *(&v86[7] + 8) = v76;
  *(&v86[8] + 8) = v77;
  *(&v86[9] + 8) = v78;
  *&v85 = v52;
  *(&v85 + 1) = v54;
  *(&v86[5] + 8) = v74;
  (*(v24 + 16))(&v85, v53, v24);
  sub_1D766E6D8(&v85);
  return sub_1D766E72C(v73);
}