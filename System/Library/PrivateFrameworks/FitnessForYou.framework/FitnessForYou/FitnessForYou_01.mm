uint64_t NetworkConditions.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C30E350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t sub_20C30E474(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DFE8, &qword_20C370C40);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v31 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DFF0, &qword_20C370C48);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DFF8, &qword_20C370C50);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E000, &qword_20C370C58);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20C30E130(v13, v14, v15);
  v16 = v39;
  sub_20C36D364();
  if (!v16)
  {
    v32 = v5;
    v17 = v38;
    v39 = v9;
    v18 = v11;
    v19 = sub_20C36D194();
    v20 = (2 * *(v19 + 16)) | 1;
    v41 = v19;
    v42 = v19 + 32;
    v43 = 0;
    v44 = v20;
    v21 = sub_20C32A510();
    if (v21 != 3 && v43 == v44 >> 1)
    {
      v9 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          v45 = 1;
          sub_20C30E1D8(v21, v22, v23);
          sub_20C36D0F4();
          v24 = v39;
          (*(v35 + 8))(v4, v37);
          (*(v24 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v9;
        }

        v45 = 2;
        sub_20C30E184(v21, v22, v23);
        v29 = v11;
        sub_20C36D0F4();
        v30 = v39;
        (*(v33 + 8))(v17, v36);
      }

      else
      {
        v45 = 0;
        sub_20C30E22C(v21, v22, v23);
        v29 = v11;
        sub_20C36D0F4();
        (*(v34 + 8))(v7, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v8);
      goto LABEL_13;
    }

    v25 = sub_20C36D064();
    swift_allocError();
    v27 = v26;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v27 = &type metadata for NetworkConditions;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v18, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v9;
}

unint64_t sub_20C30E9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DF98;
  if (!qword_27C79DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DF98);
  }

  return result;
}

unint64_t sub_20C30EA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFA0;
  if (!qword_27C79DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFA0);
  }

  return result;
}

unint64_t sub_20C30EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFA8;
  if (!qword_27C79DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFA8);
  }

  return result;
}

unint64_t sub_20C30EB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFB0;
  if (!qword_27C79DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFB0);
  }

  return result;
}

unint64_t sub_20C30EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFB8;
  if (!qword_27C79DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFB8);
  }

  return result;
}

unint64_t sub_20C30EBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFC0;
  if (!qword_27C79DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFC0);
  }

  return result;
}

unint64_t sub_20C30EC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFC8;
  if (!qword_27C79DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFC8);
  }

  return result;
}

unint64_t sub_20C30ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFD0;
  if (!qword_27C79DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFD0);
  }

  return result;
}

unint64_t sub_20C30ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFD8;
  if (!qword_27C79DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFD8);
  }

  return result;
}

unint64_t sub_20C30ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79DFE0;
  if (!qword_27C79DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79DFE0);
  }

  return result;
}

FitnessForYou::SubtitleTextType_optional __swiftcall SubtitleTextType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_20C36D0E4();

  if (v1 == 1)
  {
    v2.value = FitnessForYou_SubtitleTextType_text;
  }

  else
  {
    v2.value = FitnessForYou_SubtitleTextType_unknownDefault;
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

uint64_t SubtitleTextType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x657069636572;
  }
}

uint64_t sub_20C30EE2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x657069636572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x657069636572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C36D264();
  }

  return v8 & 1;
}

uint64_t sub_20C30EEC8@<X0>(char *a2@<X8>)
{
  v3 = sub_20C36D0E4();

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

void sub_20C30EF28(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x657069636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_20C30F010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E008;
  if (!qword_27C79E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E008);
  }

  return result;
}

uint64_t sub_20C30F064()
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C30F0DC(uint64_t a1)
{
  sub_20C36CDC4();
}

uint64_t sub_20C30F140(uint64_t a1)
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

unint64_t sub_20C30F1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8F28;
  if (!qword_2810E8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F28);
  }

  return result;
}

uint64_t sub_20C30F228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F824(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30F264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F824(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C30F2A0()
{
  if (*v0)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x756F6D796E6F6E61;
  }
}

uint64_t sub_20C30F2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

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

uint64_t sub_20C30F3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F77C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F77C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C30F448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F7D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C30F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C30F7D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t RemoteBrowsingIdentity.encode(to:)(void *a1, int a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E010, &qword_20C370D80);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E018, &qword_20C370D88);
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E020, &qword_20C370D90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C30F77C(v13, v14, v15);
  v16 = sub_20C36D374();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_20C30F7D0(v16, v17, v18);
    sub_20C36D1B4();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_20C30F824(v16, v17, v18);
    sub_20C36D1B4();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

unint64_t sub_20C30F77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E028;
  if (!qword_27C79E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E028);
  }

  return result;
}

unint64_t sub_20C30F7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E030;
  if (!qword_27C79E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E030);
  }

  return result;
}

unint64_t sub_20C30F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E038;
  if (!qword_27C79E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E038);
  }

  return result;
}

uint64_t sub_20C30F894@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C30F950(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t RemoteBrowsingIdentity.hashValue.getter(char a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1 & 1);
  return sub_20C36D354();
}

uint64_t sub_20C30F950(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E080, &qword_20C371110);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E088, &qword_20C371118);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E090, &unk_20C371120);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C30F77C(v11, v12, v13);
  v14 = v31;
  sub_20C36D364();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v15 = v29;
  v16 = sub_20C36D194();
  v17 = (2 * *(v16 + 16)) | 1;
  v32 = v16;
  v33 = v16 + 32;
  v34 = 0;
  v35 = v17;
  v18 = sub_20C32A508();
  if (v18 == 2 || v34 != v35 >> 1)
  {
    v22 = sub_20C36D064();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v24 = &type metadata for RemoteBrowsingIdentity;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v30 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v18;
  if (v18)
  {
    v37 = 1;
    sub_20C30F7D0(v18, v19, v20);
    sub_20C36D0F4();
    v21 = v30;
    (*(v28 + 8))(v4, v15);
  }

  else
  {
    v37 = 0;
    sub_20C30F824(v18, v19, v20);
    sub_20C36D0F4();
    v21 = v30;
    (*(v27 + 8))(v7, v5);
  }

  (*(v21 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v36 & 1;
}

unint64_t sub_20C30FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E040;
  if (!qword_27C79E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E040);
  }

  return result;
}

unint64_t sub_20C30FEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E048;
  if (!qword_27C79E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E048);
  }

  return result;
}

unint64_t sub_20C30FF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E050;
  if (!qword_27C79E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E050);
  }

  return result;
}

unint64_t sub_20C30FF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E058;
  if (!qword_27C79E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E058);
  }

  return result;
}

unint64_t sub_20C30FFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E060;
  if (!qword_27C79E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E060);
  }

  return result;
}

unint64_t sub_20C310008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E068;
  if (!qword_27C79E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E068);
  }

  return result;
}

unint64_t sub_20C310060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E070;
  if (!qword_27C79E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E070);
  }

  return result;
}

unint64_t sub_20C3100B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E078;
  if (!qword_27C79E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E078);
  }

  return result;
}

uint64_t ForYouPerformanceMetric.pageAppearTime.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ForYouPerformanceMetric.pageRequestTime.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ForYouPerformanceMetric.resourceRequestStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ForYouPerformanceMetric.secondaryDataRequestStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ForYouPerformanceMetric.secondaryDataResponseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void __swiftcall ForYouPerformanceMetric.init(pageAppearTime:pageRequestTime:resourceRequestStartTime:secondaryDataRequestStartTime:secondaryDataResponseEndTime:)(FitnessForYou::ForYouPerformanceMetric *__return_ptr retstr, Swift::Double_optional pageAppearTime, Swift::Double_optional pageRequestTime, Swift::Double_optional resourceRequestStartTime, Swift::Double_optional secondaryDataRequestStartTime, Swift::Double_optional secondaryDataResponseEndTime)
{
  retstr->pageAppearTime.value = *&pageAppearTime.is_nil;
  retstr->pageAppearTime.is_nil = pageRequestTime.is_nil;
  *(&retstr->pageRequestTime.value + 7) = *&resourceRequestStartTime.is_nil;
  BYTE6(retstr->resourceRequestStartTime.value) = secondaryDataRequestStartTime.is_nil;
  *(&retstr->secondaryDataRequestStartTime.value + 5) = *&secondaryDataResponseEndTime.is_nil;
  BYTE4(retstr->secondaryDataResponseEndTime.value) = v6 & 1;
  *(&retstr[1].pageAppearTime.value + 3) = v7;
  BYTE2(retstr[1].pageRequestTime.value) = v8 & 1;
  *(&retstr[1].resourceRequestStartTime.value + 1) = v9;
  LOBYTE(retstr[1].secondaryDataRequestStartTime.value) = v10 & 1;
}

unint64_t sub_20C3102AC()
{
  v1 = *v0;
  v2 = 0x6570704165676170;
  v3 = 0xD000000000000018;
  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7571655265676170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C310368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C310DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C310390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C31065C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3103CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C31065C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ForYouPerformanceMetric.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E098, &qword_20C371130);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  v14 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12[3] = *(v1 + 72);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C31065C(v7, v8, v9);
  sub_20C36D374();
  v25 = 0;
  v10 = v20;
  sub_20C36D1D4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v24 = 1;
  sub_20C36D1D4();
  v23 = 2;
  sub_20C36D1D4();
  v22 = 3;
  sub_20C36D1D4();
  v21 = 4;
  sub_20C36D1D4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C31065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0A0;
  if (!qword_27C79E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0A0);
  }

  return result;
}

uint64_t ForYouPerformanceMetric.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E0A8, &qword_20C371138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C31065C(v9, v10, v11);
  sub_20C36D364();
  if (!v2)
  {
    v41 = 0;
    v12 = sub_20C36D124();
    v36 = v13 & 1;
    v40 = 1;
    v14 = sub_20C36D124();
    v35 = v15 & 1;
    v39 = 2;
    v16 = sub_20C36D124();
    v34 = v17 & 1;
    v38 = 3;
    v31 = sub_20C36D124();
    v33 = v19 & 1;
    v37 = 4;
    v20 = sub_20C36D124();
    v21 = *(v6 + 8);
    v30 = v20;
    v22 = v8;
    v24 = v23;
    v21(v22, v5);
    v32 = v24 & 1;
    v25 = v36;
    v26 = v35;
    v27 = v34;
    v28 = v33;
    *a2 = v12;
    *(a2 + 8) = v25;
    *(a2 + 16) = v14;
    *(a2 + 24) = v26;
    *(a2 + 32) = v16;
    *(a2 + 40) = v27;
    v29 = v30;
    *(a2 + 48) = v31;
    *(a2 + 56) = v28;
    *(a2 + 64) = v29;
    *(a2 + 72) = v24 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForYouPerformanceMetric.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = v0[8];
  v8 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    sub_20C36D334();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_23:
    sub_20C36D334();
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_24:
    sub_20C36D334();
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v14 = *v0;
  sub_20C36D334();
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x20F2F7E80](v15);
  if (v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  sub_20C36D334();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x20F2F7E80](v9);
  if (v4)
  {
    goto LABEL_24;
  }

LABEL_7:
  sub_20C36D334();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x20F2F7E80](v10);
  if (!v6)
  {
LABEL_11:
    sub_20C36D334();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x20F2F7E80](v11);
    if (!v8)
    {
      goto LABEL_15;
    }

    return sub_20C36D334();
  }

LABEL_25:
  sub_20C36D334();
  if (v8)
  {
    return sub_20C36D334();
  }

LABEL_15:
  sub_20C36D334();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x20F2F7E80](v12);
}

uint64_t ForYouPerformanceMetric.hashValue.getter()
{
  sub_20C36D314();
  ForYouPerformanceMetric.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C310AAC()
{
  sub_20C36D314();
  ForYouPerformanceMetric.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C310AF0(uint64_t a1)
{
  sub_20C36D314();
  ForYouPerformanceMetric.hash(into:)();
  return sub_20C36D354();
}

BOOL _s13FitnessForYou0bC17PerformanceMetricV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v3 = *(a2 + 24);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v4 = *(a2 + 40);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v5 = *(a2 + 56);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 64) == *(a2 + 64))
    {
      v7 = *(a2 + 72);
    }

    else
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

unint64_t sub_20C310C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0B0;
  if (!qword_27C79E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0B0);
  }

  return result;
}

uint64_t sub_20C310C5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C310C7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

unint64_t sub_20C310CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0B8;
  if (!qword_27C79E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0B8);
  }

  return result;
}

unint64_t sub_20C310D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0C0;
  if (!qword_27C79E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0C0);
  }

  return result;
}

unint64_t sub_20C310D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0C8;
  if (!qword_27C79E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0C8);
  }

  return result;
}

uint64_t sub_20C310DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704165676170 && a2 == 0xEE00656D69547261;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7571655265676170 && a2 == 0xEF656D6954747365 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377D20 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000020C377D40 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000020C377D60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

FitnessForYou::PlaceholderMarkerType_optional __swiftcall PlaceholderMarkerType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_20C36D0E4();

  if (v1 == 1)
  {
    v2.value = FitnessForYou_PlaceholderMarkerType_buildYourFirstCustomPlan;
  }

  else
  {
    v2.value = FitnessForYou_PlaceholderMarkerType_unknownDefault;
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

uint64_t PlaceholderMarkerType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x737543646C697562;
  }
}

uint64_t sub_20C311038(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0x737543646C697562;
  }

  if (v2)
  {
    v4 = 0xEF6E616C506D6F74;
  }

  else
  {
    v4 = 0x800000020C377990;
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0x737543646C697562;
  }

  if (*a2)
  {
    v6 = 0x800000020C377990;
  }

  else
  {
    v6 = 0xEF6E616C506D6F74;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C36D264();
  }

  return v8 & 1;
}

uint64_t sub_20C3110F0@<X0>(char *a2@<X8>)
{
  v3 = sub_20C36D0E4();

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

void sub_20C311150(unint64_t *a1@<X8>)
{
  v2 = 0x800000020C377990;
  v3 = 0x737543646C697562;
  if (*v1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xEF6E616C506D6F74;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_20C311254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E0D0;
  if (!qword_27C79E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E0D0);
  }

  return result;
}

uint64_t sub_20C3112A8()
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

uint64_t sub_20C31133C(uint64_t a1)
{
  sub_20C36CDC4();
}

uint64_t sub_20C3113BC(uint64_t a1)
{
  sub_20C36D314();
  sub_20C36CDC4();

  return sub_20C36D354();
}

unint64_t sub_20C31145C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D38;
  if (!qword_2810E8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D38);
  }

  return result;
}

uint64_t static SizeClass.default.setter(char a1)
{
  result = swift_beginAccess();
  byte_27C79E0D8 = a1;
  return result;
}

uint64_t sub_20C3115C0()
{
  v1 = *v0;
  v2 = 0x616D536172747865;
  v3 = 0x6D756964656DLL;
  v4 = 0x656772616CLL;
  if (v1 != 4)
  {
    v4 = 0x72614C6172747865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D73;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_20C311674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C3123AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C3116A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312030(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3116E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312030(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312084(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C31175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312084(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312228(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3117D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312228(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3120D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C31184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3120D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C31212C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3118C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C31212C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312180(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C31193C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C312180(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C311978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3121D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3119B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C3121D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_20C3119F0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27C79E0D8;
  return result;
}

uint64_t SizeClass.encode(to:)(void *a1, int a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E0E0, &qword_20C371480);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E0E8, &qword_20C371488);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E0F0, &qword_20C371490);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E0F8, &qword_20C371498);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E100, &qword_20C3714A0);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E108, &qword_20C3714A8);
  v35 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E110, &qword_20C3714B0);
  v18 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = &v34 - v19;
  v21 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C312030(v21, v22, v23);
  v24 = sub_20C36D374();
  v27 = (v18 + 8);
  if (v50 > 2u)
  {
    if (v50 == 3)
    {
      v54 = 3;
      sub_20C31212C(v24, v25, v26);
      v30 = v40;
      v31 = v49;
      sub_20C36D1B4();
      v33 = v41;
      v32 = v42;
    }

    else if (v50 == 4)
    {
      v55 = 4;
      sub_20C3120D8(v24, v25, v26);
      v30 = v43;
      v31 = v49;
      sub_20C36D1B4();
      v33 = v44;
      v32 = v45;
    }

    else
    {
      v56 = 5;
      sub_20C312084(v24, v25, v26);
      v30 = v46;
      v31 = v49;
      sub_20C36D1B4();
      v33 = v47;
      v32 = v48;
    }

    (*(v33 + 8))(v30, v32);
  }

  else if (v50)
  {
    if (v50 == 1)
    {
      v52 = 1;
      sub_20C3121D4(v24, v25, v26);
      v28 = v49;
      sub_20C36D1B4();
      (*(v36 + 8))(v14, v37);
      return (*v27)(v20, v28);
    }

    v53 = 2;
    sub_20C312180(v24, v25, v26);
    v31 = v49;
    sub_20C36D1B4();
    (*(v38 + 8))(v11, v39);
  }

  else
  {
    v51 = 0;
    sub_20C312228(v24, v25, v26);
    v31 = v49;
    sub_20C36D1B4();
    (*(v35 + 8))(v17, v15);
  }

  return (*v27)(v20, v31);
}

unint64_t sub_20C312030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E118;
  if (!qword_27C79E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E118);
  }

  return result;
}

unint64_t sub_20C312084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E120;
  if (!qword_27C79E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E120);
  }

  return result;
}

unint64_t sub_20C3120D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E128;
  if (!qword_27C79E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E128);
  }

  return result;
}

unint64_t sub_20C31212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E130;
  if (!qword_27C79E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E130);
  }

  return result;
}

unint64_t sub_20C312180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E138;
  if (!qword_27C79E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E138);
  }

  return result;
}

unint64_t sub_20C3121D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E140;
  if (!qword_27C79E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E140);
  }

  return result;
}

unint64_t sub_20C312228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E148;
  if (!qword_27C79E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E148);
  }

  return result;
}

uint64_t sub_20C312294@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C3125AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SizeClass.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C3123AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v5 = sub_20C36D264();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20C3125AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E1E8, &qword_20C371BA0);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E1F0, &qword_20C371BA8);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v60 = &v44 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E1F8, &qword_20C371BB0);
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v59 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E200, &qword_20C371BB8);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E208, &qword_20C371BC0);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E210, &qword_20C371BC8);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E218, &qword_20C371BD0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v20 = a1[3];
  v62 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C312030(v21, v22, v23);
  v24 = v61;
  sub_20C36D364();
  if (!v24)
  {
    v25 = v15;
    v44 = v13;
    v45 = v12;
    v26 = v58;
    v27 = v59;
    v28 = v60;
    v61 = v17;
    v29 = sub_20C36D194();
    v30 = (2 * *(v29 + 16)) | 1;
    v63 = v29;
    v64 = v29 + 32;
    v65 = 0;
    v66 = v30;
    v31 = sub_20C3295F8();
    v34 = v19;
    if (v31 != 6 && v65 == v66 >> 1)
    {
      v17 = v31;
      if (v31 > 2u)
      {
        if (v31 != 3)
        {
          v42 = v61;
          if (v31 == 4)
          {
            v67 = 4;
            sub_20C3120D8(v31, v32, v33);
            sub_20C36D0F4();
            (*(v54 + 8))(v28, v53);
          }

          else
          {
            v67 = 5;
            sub_20C312084(v31, v32, v33);
            v43 = v57;
            sub_20C36D0F4();
            (*(v55 + 8))(v43, v56);
          }

          (*(v42 + 8))(v34, v16);
          goto LABEL_21;
        }

        v67 = 3;
        sub_20C31212C(v31, v32, v33);
        sub_20C36D0F4();
        v35 = v61;
        (*(v52 + 8))(v27, v49);
      }

      else if (v31)
      {
        if (v31 == 1)
        {
          v67 = 1;
          sub_20C3121D4(v31, v32, v33);
          v26 = v45;
          sub_20C36D0F4();
          v35 = v61;
          v37 = v47;
          v36 = v48;
        }

        else
        {
          v67 = 2;
          sub_20C312180(v31, v32, v33);
          sub_20C36D0F4();
          v35 = v61;
          v37 = v50;
          v36 = v51;
        }

        (*(v37 + 8))(v26, v36);
      }

      else
      {
        v67 = 0;
        sub_20C312228(v31, v32, v33);
        sub_20C36D0F4();
        (*(v46 + 8))(v25, v44);
        v35 = v61;
      }

      (*(v35 + 8))(v19, v16);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v62);
      return v17;
    }

    v38 = sub_20C36D064();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0);
    *v40 = &type metadata for SizeClass;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v61 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
  return v17;
}

unint64_t sub_20C312D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E150;
  if (!qword_27C79E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E150);
  }

  return result;
}

unint64_t sub_20C312DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E158;
  if (!qword_27C79E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E158);
  }

  return result;
}

unint64_t sub_20C312E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E160;
  if (!qword_27C79E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E160);
  }

  return result;
}

unint64_t sub_20C312E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E168;
  if (!qword_27C79E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E168);
  }

  return result;
}

uint64_t sub_20C312F00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20C312F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3130B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E170;
  if (!qword_27C79E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E170);
  }

  return result;
}

unint64_t sub_20C31310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E178;
  if (!qword_27C79E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E178);
  }

  return result;
}

unint64_t sub_20C313164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E180;
  if (!qword_27C79E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E180);
  }

  return result;
}

unint64_t sub_20C3131BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E188;
  if (!qword_27C79E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E188);
  }

  return result;
}

unint64_t sub_20C313214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E190;
  if (!qword_27C79E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E190);
  }

  return result;
}

unint64_t sub_20C31326C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E198;
  if (!qword_27C79E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E198);
  }

  return result;
}

unint64_t sub_20C3132C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1A0;
  if (!qword_27C79E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1A0);
  }

  return result;
}

unint64_t sub_20C31331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1A8;
  if (!qword_27C79E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1A8);
  }

  return result;
}

unint64_t sub_20C313374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1B0;
  if (!qword_27C79E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1B0);
  }

  return result;
}

unint64_t sub_20C3133CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1B8;
  if (!qword_27C79E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1B8);
  }

  return result;
}

unint64_t sub_20C313424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1C0;
  if (!qword_27C79E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1C0);
  }

  return result;
}

unint64_t sub_20C31347C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1C8;
  if (!qword_27C79E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1C8);
  }

  return result;
}

unint64_t sub_20C3134D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1D0;
  if (!qword_27C79E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1D0);
  }

  return result;
}

unint64_t sub_20C31352C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1D8;
  if (!qword_27C79E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1D8);
  }

  return result;
}

unint64_t sub_20C313584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E1E0;
  if (!qword_27C79E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E1E0);
  }

  return result;
}

void ContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a5;
}

uint64_t sub_20C313614()
{
  v1 = 0x6D6F74746F62;
  v2 = 7368564;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

uint64_t sub_20C313684@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C313F94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C3136AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C313D74(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C3136E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C313D74(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E220, &qword_20C371BD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C313D74(v12, v13, v14);
  v15 = sub_20C36D374();
  v20 = v9;
  HIBYTE(v19) = 0;
  sub_20C2FD3E8(v15, v16, v17);
  sub_20C36D234();
  if (!v2)
  {
    v20 = v8;
    HIBYTE(v19) = 1;
    sub_20C36D234();
    v20 = v11;
    HIBYTE(v19) = 2;
    sub_20C36D234();
    v20 = v10;
    HIBYTE(v19) = 3;
    sub_20C36D234();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ContentMargins.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E230, &qword_20C371BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C313D74(v9, v10, v11);
  v12 = sub_20C36D364();
  if (!v2)
  {
    HIBYTE(v20) = 0;
    sub_20C2FD6C4(v12, v13, v14);
    sub_20C36D184();
    v15 = v21;
    HIBYTE(v20) = 1;
    sub_20C36D184();
    v16 = v21;
    HIBYTE(v20) = 2;
    sub_20C36D184();
    v18 = v21;
    HIBYTE(v20) = 3;
    sub_20C36D184();
    (*(v6 + 8))(v8, v5);
    v19 = v21;
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v18;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2F7E80](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x20F2F7E80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F2F7E80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x20F2F7E80](*&v7);
}

uint64_t ContentMargins.hashValue.getter()
{
  sub_20C36D314();
  ContentMargins.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C313C9C()
{
  sub_20C36D314();
  ContentMargins.hash(into:)();
  return sub_20C36D354();
}

uint64_t sub_20C313CEC(uint64_t a1)
{
  sub_20C36D314();
  ContentMargins.hash(into:)();
  return sub_20C36D354();
}

unint64_t sub_20C313D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E228;
  if (!qword_27C79E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E228);
  }

  return result;
}

unint64_t sub_20C313DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E238;
  if (!qword_27C79E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E238);
  }

  return result;
}

uint64_t sub_20C313E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C313E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_20C313E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E240;
  if (!qword_27C79E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E240);
  }

  return result;
}

unint64_t sub_20C313EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E248;
  if (!qword_27C79E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E248);
  }

  return result;
}

unint64_t sub_20C313F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E250;
  if (!qword_27C79E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E250);
  }

  return result;
}

uint64_t sub_20C313F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

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

uint64_t ForYouSummaryState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C36C144();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ForYouSummaryState.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_20C36C124();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ForYouSummaryState.identifier.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_20C36C124();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

__n128 ForYouSummaryState.layout.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 64);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t ForYouSummaryState.loadState.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 68);
  v3 = *v2;
  sub_20C314340(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_20C314340(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t ForYouSummaryState.loadState.setter(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 68);
  result = sub_20C31439C(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_20C31439C(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t ForYouSummaryState.wlanStandards.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 96));

  return v2;
}

uint64_t ForYouSummaryState.init(activeStorefrontLocale:identifier:isInternalBuild:layout:loadState:maxRetryCount:networkConditions:sizeClass:wlanStandards:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = *(a4 + 4);
  v25 = *(a4 + 5);
  v37[0] = a13;
  v37[1] = a14;
  v37[2] = a15;
  v37[3] = a16;
  v26 = type metadata accessor for ForYouSummaryState(0, v37);
  *(a9 + v26[14]) = 0;
  *(a9 + v26[20]) = 0;
  *(a9 + v26[21]) = 1;
  *(a9 + v26[22]) = 0;
  v27 = sub_20C36C144();
  v34 = a4[1];
  v35 = *a4;
  (*(*(v27 - 8) + 32))(a9, a1, v27);
  v28 = v26[13];
  v29 = sub_20C36C124();
  (*(*(v29 - 8) + 32))(a9 + v28, a2, v29);
  *(a9 + v26[15]) = a3;
  v30 = a9 + v26[16];
  *v30 = v35;
  *(v30 + 16) = v34;
  *(v30 + 32) = v24;
  *(v30 + 40) = v25;
  v31 = a9 + v26[17];
  *v31 = a5;
  *(v31 + 8) = a6;
  *(a9 + v26[18]) = a7;
  *(a9 + v26[19]) = a8;
  result = (*(*(a14 - 8) + 32))(a9 + v26[23], a10, a14);
  v33 = (a9 + v26[24]);
  *v33 = a11;
  v33[1] = a12;
  return result;
}

uint64_t sub_20C314738(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000020C377D80 == a2;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377DA0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797274655278616DLL && a2 == 0xED0000746E756F43 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377DC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676150776F6873 && a2 == 0xEF6C6F72746E6F43 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74617453776F6873 && a2 == 0xEE00776569566369 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6174536E616C77 && a2 == 0xED00007364726164)
  {

    return 12;
  }

  else
  {
    v6 = sub_20C36D264();

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

unint64_t sub_20C314B88(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6E7265746E497369;
      break;
    case 4:
      result = 0x74756F79616CLL;
      break;
    case 5:
      result = 0x7461745364616F6CLL;
      break;
    case 6:
      result = 0x797274655278616DLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x756F437972746572;
      break;
    case 9:
      result = 0x65676150776F6873;
      break;
    case 10:
      result = 0x74617453776F6873;
      break;
    case 11:
      result = 0x73616C43657A6973;
      break;
    case 12:
      result = 0x6E6174536E616C77;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_20C314D78(uint64_t a1)
{
  sub_20C36D314();
  sub_20C2FFF18(v3, *v1);
  return sub_20C36D354();
}

uint64_t sub_20C314DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C314738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C314E08@<X0>(_BYTE *a2@<X8>)
{
  result = sub_20C3169FC();
  *a2 = result;
  return result;
}

uint64_t sub_20C314E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C314E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ForYouSummaryState.encode(to:)(void *a1, int *a2)
{
  v31 = a2;
  v3 = v2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 5);
  v29 = *(a2 + 4);
  v30 = v5;
  *&v33 = v5;
  *(&v33 + 1) = v6;
  v28[0] = v7;
  v28[1] = v6;
  *&v34 = v29;
  *(&v34 + 1) = v7;
  type metadata accessor for ForYouSummaryState.CodingKeys(255, &v33);
  swift_getWitnessTable();
  v8 = sub_20C36D244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C36D374();
  LOBYTE(v33) = 0;
  sub_20C36C144();
  sub_20C315E10(&qword_27C79DD70, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  v12 = v32;
  sub_20C36D234();
  if (v12)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v14 = v29;
  v15 = v30;
  v32 = v9;
  v16 = v31;
  LOBYTE(v33) = 1;
  sub_20C36C124();
  sub_20C315E10(&qword_27C79E258, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_20C36D234();
  LOBYTE(v33) = 2;
  sub_20C36D204();
  LOBYTE(v33) = 3;
  v17 = sub_20C36D204();
  v18 = v16[16];
  v19 = v18[1];
  v33 = *v18;
  v34 = v19;
  v35 = v18[2];
  v36 = 4;
  sub_20C315430(v17, v20, v21);
  sub_20C36D234();
  v22 = (v3 + v16[17]);
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  *&v33 = v23;
  BYTE8(v33) = v22;
  v36 = 5;
  type metadata accessor for ForYouSummaryLoadState(0, v15, v14, v24);
  swift_getWitnessTable();
  sub_20C36D234();
  LOBYTE(v33) = 6;
  v25 = sub_20C36D224();
  LOBYTE(v33) = *v16[19];
  v36 = 7;
  sub_20C30A438(v25, v26, v27);
  sub_20C36D234();
  LOBYTE(v33) = 8;
  sub_20C36D224();
  LOBYTE(v33) = 9;
  sub_20C36D204();
  v30 = 0;
  LOBYTE(v33) = 10;
  sub_20C36D204();
  LOBYTE(v33) = 11;
  sub_20C36D234();
  LOBYTE(v33) = 12;
  sub_20C36D1F4();
  return (*(v32 + 8))(v11, v8);
}

unint64_t sub_20C315430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E260;
  if (!qword_27C79E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E260);
  }

  return result;
}

uint64_t ForYouSummaryState.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v57 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20C36C124();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20C36C144();
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69 = a2;
  *(&v69 + 1) = a3;
  *&v70 = a4;
  *(&v70 + 1) = a5;
  type metadata accessor for ForYouSummaryState.CodingKeys(255, &v69);
  swift_getWitnessTable();
  v67 = sub_20C36D1A4();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v49 - v14;
  v62 = a2;
  v63 = a4;
  *&v69 = a2;
  *(&v69 + 1) = a3;
  *&v70 = a4;
  *(&v70 + 1) = a5;
  v54 = a5;
  v16 = type metadata accessor for ForYouSummaryState(0, &v69);
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  v66 = v15;
  v19 = v68;
  sub_20C36D364();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v60;
  v22 = v62;
  v21 = v63;
  v68 = v18;
  v51 = v16;
  v50 = a3;
  LOBYTE(v69) = 0;
  sub_20C315E10(&qword_27C79DD80, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v23 = v61;
  v24 = v65;
  sub_20C36D184();
  v25 = v68;
  (*(v59 + 32))(v68, v23, v24);
  LOBYTE(v69) = 1;
  sub_20C315E10(&qword_27C79E268, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v26 = v58;
  sub_20C36D184();
  v27 = v20;
  v28 = v51;
  (*(v56 + 32))(&v25[v51[13]], v27, v26);
  LOBYTE(v69) = 2;
  v61 = 0;
  v29 = sub_20C36D154();
  v60 = a1;
  v25[v28[14]] = v29 & 1;
  LOBYTE(v69) = 3;
  v30 = sub_20C36D154();
  v25[v28[15]] = v30 & 1;
  v72 = 4;
  sub_20C315E58(v30, v31, v32);
  sub_20C36D184();
  v33 = &v25[v28[16]];
  v34 = v70;
  *v33 = v69;
  *(v33 + 1) = v34;
  *(v33 + 2) = v71;
  type metadata accessor for ForYouSummaryLoadState(0, v22, v21, v35);
  v72 = 5;
  swift_getWitnessTable();
  sub_20C36D184();
  v36 = BYTE8(v69);
  v37 = &v25[v28[17]];
  *v37 = v69;
  v37[8] = v36;
  LOBYTE(v69) = 6;
  v38 = sub_20C36D174();
  *&v25[v28[18]] = v38;
  v72 = 7;
  sub_20C30D9B8(v38, v39, v40);
  sub_20C36D184();
  v68[v51[19]] = v69;
  LOBYTE(v69) = 8;
  *&v68[v51[20]] = sub_20C36D174();
  LOBYTE(v69) = 9;
  v68[v51[21]] = sub_20C36D154() & 1;
  LOBYTE(v69) = 10;
  v68[v51[22]] = sub_20C36D154() & 1;
  LOBYTE(v69) = 11;
  sub_20C36D184();
  (*(v57 + 32))(&v68[v51[23]], v55, v50);
  LOBYTE(v69) = 12;
  v41 = sub_20C36D144();
  v43 = v42;
  (*(v64 + 8))(v66, v67);
  v44 = v51;
  v45 = v68;
  v46 = &v68[v51[24]];
  *v46 = v41;
  v46[1] = v43;
  v47 = v52;
  (*(v52 + 16))(v53, v45, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v47 + 8))(v45, v44);
}

uint64_t sub_20C315E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C315E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E270[0];
  if (!qword_27C79E270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C79E270);
  }

  return result;
}

uint64_t static ForYouSummaryState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (MEMORY[0x20F2F6C70]() & 1) != 0 && (*&v24.f64[0] = a3, *&v24.f64[1] = a4, *&v25 = a5, *(&v25 + 1) = a6, v12 = type metadata accessor for ForYouSummaryState(0, &v24), (sub_20C36C114()) && *(a1 + v12[14]) == *(a2 + v12[14]) && *(a1 + v12[15]) == *(a2 + v12[15]) && (v13 = v12[16], v14 = *(a1 + v13 + 16), v24 = *(a1 + v13), v25 = v14, v26 = *(a1 + v13 + 32), v15 = (a2 + v13), v16 = v15[1], v23[0] = *v15, v23[1] = v16, v23[2] = v15[2], _s13FitnessForYou0bC13SummaryLayoutV2eeoiySbAC_ACtFZ_0(&v24, v23)) && static ForYouSummaryLoadState.== infix(_:_:)(*(a1 + v12[17]), *(a1 + v12[17] + 8), *(a2 + v12[17]), *(a2 + v12[17] + 8), a3, a5) && *(a1 + v12[18]) == *(a2 + v12[18]) && *(a1 + v12[19]) == *(a2 + v12[19]) && *(a1 + v12[20]) == *(a2 + v12[20]) && *(a1 + v12[21]) == *(a2 + v12[21]) && *(a1 + v12[22]) == *(a2 + v12[22]) && (sub_20C36CD44())
  {
    v17 = v12[24];
    v18 = *(a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    if (v18 == *v20 && v19 == v20[1])
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_20C36D264();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_20C3160DC(uint64_t *a1)
{
  result = sub_20C36C144();
  if (v3 <= 0x3F)
  {
    result = sub_20C36C124();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for ForYouSummaryLoadState(319, a1[2], a1[4], v4);
      if (v6 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20C3161D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_20C36C144();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_20C36C124();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (v12 <= v14)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  v20 = *(*(v9 - 8) + 64) + 9;
  v21 = *(v13 + 64) + 7;
  if (v18 >= a2)
  {
    goto LABEL_33;
  }

  v22 = ((v21 + ((v16 + ((((v20 + (v19 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v18 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_33;
    }

LABEL_30:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v18 + (v30 | v29) + 1;
  }

  if (v26 == 2)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v8 == v18)
  {
    v31 = *(v7 + 48);
    v32 = a1;
    v33 = v8;
    v34 = v6;
LABEL_37:

    return v31(v32, v33, v34);
  }

  v35 = (a1 + v19) & ~v15;
  if (v11 == v18)
  {
    v31 = *(v10 + 48);
    v34 = v9;
    v32 = v35;
    v33 = *(v10 + 84);
    goto LABEL_37;
  }

  v36 = (v16 + ((((v20 + v35) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 42) & ~v16;
  if (v14 == v18)
  {
    v37 = *(v13 + 48);

    return v37(v36);
  }

  else
  {
    v38 = *(((v21 + v36) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v38 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void sub_20C3164F8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_20C36C144();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_20C36C124();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 24) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64);
  v20 = *(v15 + 80);
  v21 = *(v15 + 64);
  if (v14 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v17 + v18;
  v25 = ((v21 + 7 + ((v20 + ((((v19 + 9 + ((v17 + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v23 >= a3)
  {
    v28 = 0;
    v29 = a2 - v23;
    if (a2 <= v23)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    if (v25)
    {
      v31 = ~v23 + a2;
      bzero(a1, v25);
      *a1 = v31;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v28)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (((v21 + 7 + ((v20 + ((((v19 + 9 + ((v17 + v18) & ~v18)) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 10) & ~v20)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = a3 - v23 + 1;
  }

  else
  {
    v26 = 2;
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

  v29 = a2 - v23;
  if (a2 > v23)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v25) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v28)
  {
    goto LABEL_38;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == v23)
  {
    v32 = *(v9 + 56);
    v33 = a1;
    v34 = a2;
    v35 = v10;
    v36 = v8;
LABEL_45:

    v32(v33, v34, v35, v36);
    return;
  }

  v37 = (a1 + v24) & ~v18;
  if (v13 == v23)
  {
    v32 = *(v12 + 56);
    v36 = v11;
    v33 = v37;
    v34 = a2;
    v35 = v13;
    goto LABEL_45;
  }

  v38 = (v20 + ((((v19 + 9 + v37) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 42) & ~v20;
  if (v16 == v23)
  {
    v39 = *(v15 + 56);

    v39(v38, a2);
  }

  else
  {
    v40 = ((v21 + 7 + v38) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v40 = a2 & 0x7FFFFFFF;
      v40[1] = 0;
    }

    else
    {
      v40[1] = (a2 - 1);
    }
  }
}

uint64_t sub_20C316868(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_20C3168F8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AwardCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall AwardCanvasPlaceholder.init(identifier:referenceType:score:)(FitnessForYou::AwardCanvasPlaceholder *__return_ptr retstr, Swift::String identifier, FitnessForYou::PlaceholderReferenceType referenceType, Swift::Double_optional score)
{
  retstr->identifier = identifier;
  retstr->referenceType = referenceType;
  *(&retstr->score.value + 7) = *&score.is_nil;
  LOBYTE(retstr[1].identifier._countAndFlagsBits) = v4 & 1;
}

uint64_t sub_20C316A60()
{
  v1 = 0x636E657265666572;
  if (*v0 != 1)
  {
    v1 = 0x65726F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_20C316AC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C317490(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C316AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C316D40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_20C316B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C316D40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AwardCanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E378, &qword_20C372030);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v18 = *(v1 + 16);
  v16 = *(v1 + 24);
  v15[3] = *(v1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C316D40(v7, v8, v9);
  sub_20C36D374();
  v22 = 0;
  v10 = v17;
  v11 = sub_20C36D1F4();
  if (!v10)
  {
    v21 = v18;
    v20 = 1;
    sub_20C2FB9F4(v11, v12, v13);
    sub_20C36D234();
    v19 = 2;
    sub_20C36D1D4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C316D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D28;
  if (!qword_2810E8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D28);
  }

  return result;
}

uint64_t AwardCanvasPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E380, &qword_20C372038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C316D40(v9, v10, v11);
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v12 = sub_20C36D144();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_20C2FC05C(v12, v13, v16);
  sub_20C36D184();
  v23 = v26;
  v24 = 2;
  v18 = sub_20C36D124();
  v19 = v8;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AwardCanvasPlaceholder.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  sub_20C36CDC4();
  sub_20C2FC630(a1, v5);
  if (v4 == 1)
  {
    return sub_20C36D334();
  }

  sub_20C36D334();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x20F2F7E80](v7);
}

uint64_t AwardCanvasPlaceholder.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C2FC630(v6, v3);
  if (v2 == 1)
  {
    sub_20C36D334();
  }

  else
  {
    sub_20C36D334();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x20F2F7E80](v4);
  }

  return sub_20C36D354();
}

uint64_t sub_20C317118()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_20C36D314();
  AwardCanvasPlaceholder.hash(into:)(v6);
  return sub_20C36D354();
}

uint64_t sub_20C317180(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_20C36D314();
  AwardCanvasPlaceholder.hash(into:)(v7);
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou22AwardCanvasPlaceholderV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v8 && (sub_20C36D264() & 1) == 0 || (sub_20C331E0C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_20C317288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E388;
  if (!qword_27C79E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E388);
  }

  return result;
}

uint64_t sub_20C3172DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_20C317324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C31738C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E390;
  if (!qword_27C79E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E390);
  }

  return result;
}

unint64_t sub_20C3173E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D18;
  if (!qword_2810E8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D18);
  }

  return result;
}

unint64_t sub_20C31743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2810E8D20;
  if (!qword_2810E8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D20);
  }

  return result;
}

uint64_t sub_20C317490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

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

id sub_20C3175E8()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2810ED6B0 = result;
  return result;
}

uint64_t sub_20C317640(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_20C36D264();
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 2 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 2 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 2 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 2 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 2 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 2 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 2 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 2 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 2 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 2 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 2 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 2 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 2 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 2 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 2 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 2 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 2 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 18:
      if (a6 != 2 || a4 != 18 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 19:
      if (a6 != 2 || a4 != 19 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 2 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t sub_20C317940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x20F2F7E60](3, a2, a3);
    v6 = a2;
    return MEMORY[0x20F2F7E60](v6);
  }

  if (a4 != 1)
  {
    switch(a2)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 5;
        break;
      case 4:
        v6 = 6;
        break;
      case 5:
        v6 = 7;
        break;
      case 6:
        v6 = 8;
        break;
      case 7:
        v6 = 9;
        break;
      case 8:
        v6 = 10;
        break;
      case 9:
        v6 = 11;
        break;
      case 10:
        v6 = 12;
        break;
      case 11:
        v6 = 13;
        break;
      case 12:
        v6 = 14;
        break;
      case 13:
        v6 = 15;
        break;
      case 14:
        v6 = 16;
        break;
      case 15:
        v6 = 17;
        break;
      case 16:
        v6 = 18;
        break;
      case 17:
        v6 = 19;
        break;
      case 18:
        v6 = 20;
        break;
      case 19:
        v6 = 21;
        break;
      default:
        v6 = 0;
        break;
    }

    return MEMORY[0x20F2F7E60](v6);
  }

  MEMORY[0x20F2F7E60](4);

  return sub_20C36CDC4();
}

uint64_t sub_20C317A88(uint64_t a1, uint64_t a2, char a3)
{
  sub_20C36D314();
  sub_20C317940(v7, a1, a2, a3);
  return sub_20C36D354();
}

uint64_t sub_20C317B48(uint64_t a1)
{
  sub_20C36D314();
  sub_20C317940(v3, *v1, *(v1 + 8), *(v1 + 16));
  return sub_20C36D354();
}

uint64_t ForYouSummaryFeature.init(environment:fetchItemForPlaceholders:)@<X0>(_OWORD *a1@<X0>, uint64_t a6@<X8>)
{
  v7 = a1[13];
  *(a6 + 192) = a1[12];
  *(a6 + 208) = v7;
  *(a6 + 224) = a1[14];
  v8 = a1[9];
  *(a6 + 128) = a1[8];
  *(a6 + 144) = v8;
  v9 = a1[11];
  *(a6 + 160) = a1[10];
  *(a6 + 176) = v9;
  v10 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v10;
  v11 = a1[7];
  *(a6 + 96) = a1[6];
  *(a6 + 112) = v11;
  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  v13 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v13;
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext(255);
  sub_20C36C354();
  sub_20C36C364();
  sub_20C36C3A4();
  sub_20C36C374();
  sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  sub_20C36C214();
  swift_getWitnessTable();
  sub_20C36C234();
  sub_20C36C304();

  sub_20C36C2F4();
  v14 = sub_20C36C224();

  *(a6 + 240) = v14;
  return result;
}

uint64_t sub_20C317F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C317FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = a4;
  v9 = a5[2];
  v10 = a5[4];
  type metadata accessor for ForYouSummaryAction(255, v9, v10, a4);
  v11 = sub_20C36CC94();
  v12 = *(v11 - 8);
  v69 = v11;
  v70 = v12;
  MEMORY[0x28223BE20](v11);
  v72 = v66 - v13;
  v14 = v5[13];
  v94 = v5[12];
  v95 = v14;
  v96 = v5[14];
  v97 = *(v5 + 30);
  v15 = v5[9];
  v90 = v5[8];
  v91 = v15;
  v16 = v5[11];
  v92 = v5[10];
  v93 = v16;
  v17 = v5[5];
  v86 = v5[4];
  v87 = v17;
  v18 = v5[7];
  v88 = v5[6];
  v89 = v18;
  v19 = v5[1];
  v82 = *v5;
  v83 = v19;
  v20 = v5[3];
  v84 = v5[2];
  v85 = v20;
  v21 = a5[3];
  v77 = v9;
  *&v22 = v9;
  v68 = v21;
  *(&v22 + 1) = v21;
  *&v20 = v10;
  v67 = a5[5];
  *(&v20 + 1) = v67;
  v75 = v20;
  v76 = v22;
  v79 = v20;
  v78 = v22;
  v23 = type metadata accessor for ForYouSummaryState(0, &v78);
  v24 = *(a2 + *(v23 + 76));
  v74 = v23;
  v25 = (a2 + *(v23 + 64));
  v26 = v25[1];
  v98 = *v25;
  v99 = v26;
  v100 = v25[2];
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v27 = sub_20C36C3D4();
  v73 = __swift_project_value_buffer(v27, qword_2810ED6B8);
  v28 = sub_20C36C3B4();
  v29 = sub_20C36CFD4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v66[1] = a3;
    v31 = v30;
    v32 = swift_slowAlloc();
    v66[0] = a2;
    v33 = v32;
    *&v78 = v32;
    *v31 = 136315138;
    v34 = v24;
    LOBYTE(v80) = v24;
    v35 = sub_20C36CD94();
    v37 = sub_20C359E04(v35, v36, &v78);
    v38 = v34;

    *(v31 + 4) = v37;
    _os_log_impl(&dword_20C2F6000, v28, v29, "For You Summary State — NetworkConditions: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v39 = v33;
    a2 = v66[0];
    MEMORY[0x20F2F83A0](v39, -1, -1);
    MEMORY[0x20F2F83A0](v31, -1, -1);
  }

  else
  {

    v38 = v24;
  }

  v40 = v77;
  if (v38 == 1)
  {
    v41 = sub_20C36C3B4();
    v42 = sub_20C36CFD4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20C2F6000, v41, v42, "Current Network Conditions are unsupported for fetching section descriptors.", v43, 2u);
      MEMORY[0x20F2F83A0](v43, -1, -1);
    }
  }

  else
  {
    v44 = a2 + *(v74 + 68);
    v45 = *v44;
    v46 = *(v44 + 8);
    if (!static ForYouSummaryLoadState.== infix(_:_:)(*v44, v46, 1, 2, v77, v10))
    {
      if (sub_20C32FF34(v45, v46))
      {
        sub_20C327A70(1, 2, a2, v40, v68, v10, v67);
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v48 = v47[16];
      v49 = v47[20];
      v50 = v72;
      v51 = &v72[v47[24]];
      v80 = xmmword_20C372290;
      v81 = 2;
      v79 = v75;
      v78 = v76;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v78);
      swift_getWitnessTable();
      sub_20C36D0D4();
      sub_20C36CF04();
      v52 = *MEMORY[0x277D04400];
      v53 = sub_20C36CCD4();
      (*(*(v53 - 8) + 104))(&v50[v48], v52, v53);
      v54 = *MEMORY[0x277D043E0];
      v55 = sub_20C36CCC4();
      (*(*(v55 - 8) + 104))(&v50[v49], v54, v55);
      v56 = swift_allocObject();
      v57 = v75;
      *(v56 + 16) = v76;
      *(v56 + 32) = v57;
      v58 = v95;
      *(v56 + 240) = v94;
      *(v56 + 256) = v58;
      *(v56 + 272) = v96;
      *(v56 + 288) = v97;
      v59 = v91;
      *(v56 + 176) = v90;
      *(v56 + 192) = v59;
      v60 = v93;
      *(v56 + 208) = v92;
      *(v56 + 224) = v60;
      v61 = v87;
      *(v56 + 112) = v86;
      *(v56 + 128) = v61;
      v62 = v89;
      *(v56 + 144) = v88;
      *(v56 + 160) = v62;
      v63 = v83;
      *(v56 + 48) = v82;
      *(v56 + 64) = v63;
      v64 = v85;
      *(v56 + 80) = v84;
      *(v56 + 96) = v64;
      *(v56 + 296) = v71;
      v65 = v99;
      *(v56 + 304) = v98;
      *(v56 + 320) = v65;
      *(v56 + 336) = v100;
      *v51 = &unk_20C372708;
      *(v51 + 1) = v56;
      (*(v70 + 104))(v50, *MEMORY[0x277D043B0], v69);
      (*(*(a5 - 1) + 16))(&v78, &v82, a5);
      sub_20C36CE94();
      sub_20C36CE84();
    }
  }
}

uint64_t sub_20C3185AC(uint64_t a1, char **a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[210] = a8;
  v8[209] = a7;
  v8[208] = a6;
  v8[207] = a5;
  v8[206] = a4;
  v8[205] = a2;
  v8[204] = a1;
  v9 = type metadata accessor for ForYouSummaryAction(0, a5, a7, a4);
  v8[211] = v9;
  v8[212] = *(v9 - 8);
  v8[213] = swift_task_alloc();
  v30 = sub_20C36C394();
  v8[214] = v30;
  v29 = sub_20C36C344();
  v8[215] = v29;
  v28 = type metadata accessor for ForYouItemContext(255);
  v8[216] = v28;
  v27 = sub_20C36C354();
  v8[217] = v27;
  v26 = sub_20C36C364();
  v8[218] = v26;
  v25 = sub_20C36C3A4();
  v8[219] = v25;
  v10 = sub_20C36C374();
  v8[220] = v10;
  v11 = sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  v8[221] = v11;
  v12 = sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  v8[222] = v12;
  v13 = sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v8[223] = v13;
  v14 = sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v8[224] = v14;
  v15 = sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v8[225] = v15;
  v16 = sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  v8[226] = v16;
  v17 = sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  v8[227] = v17;
  v18 = sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  v8[228] = v18;
  v19 = sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  v8[2] = v30;
  v8[229] = v19;
  v8[3] = a5;
  v8[4] = v29;
  v8[5] = v28;
  v8[6] = v27;
  v8[7] = v26;
  v8[8] = v25;
  v8[9] = v10;
  v8[10] = v11;
  v8[11] = a7;
  v8[12] = v12;
  v8[13] = v13;
  v8[14] = v14;
  v8[15] = v15;
  v8[16] = v16;
  v8[17] = v17;
  v8[18] = v18;
  v8[19] = v19;
  v20 = sub_20C36C2D4();
  v8[230] = v20;
  v21 = sub_20C36CFF4();
  v8[231] = v21;
  v8[232] = *(v21 - 8);
  v8[233] = swift_task_alloc();
  v8[234] = *(v20 - 8);
  v8[235] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4C0, &qword_20C372710);
  v8[236] = swift_task_alloc();
  v22 = sub_20C36C244();
  v8[237] = v22;
  v8[238] = *(v22 - 8);
  v8[239] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4C8, &qword_20C372718);
  v8[240] = swift_task_alloc();
  sub_20C36C2B4();
  v8[241] = swift_task_alloc();
  v34 = &(*a2)[**a2];
  v23 = swift_task_alloc();
  v8[242] = v23;
  *v23 = v8;
  v23[1] = sub_20C318BB4;

  return (v34)(v8 + 184, a3);
}

uint64_t sub_20C318BB4()
{
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v2 = sub_20C31B2E4;
  }

  else
  {
    v2 = sub_20C318CC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20C318CC8()
{
  *(v0 + 1952) = *(v0 + 1472);
  v1 = *(v0 + 1480);
  *(v0 + 1960) = v1;
  *(v0 + 1968) = *(v0 + 1496);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v3 = 0;
  v4 = (v0 + 640);
  v5 = v1 + 32;
  v6 = MEMORY[0x277D84F90];
  v72 = (v0 + 1584);
LABEL_3:
  v7 = v6;
  v8 = v5 + 104 * v3;
  v9 = v3;
  while (2)
  {
    if (v9 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v8 + 48);
    v11 = *(v8 + 64);
    v12 = *(v8 + 80);
    *(v0 + 736) = *(v8 + 96);
    *(v0 + 720) = v12;
    v13 = *(v8 + 16);
    v14 = *(v8 + 32);
    *v4 = *v8;
    *(v0 + 656) = v13;
    *(v0 + 688) = v10;
    *(v0 + 704) = v11;
    *(v0 + 672) = v14;
    v15 = v9 + 1;
    switch(*(v0 + 720))
    {
      case 2:
        sub_20C329258(v0 + 640, v0 + 848);

        goto LABEL_10;
      default:
        v16 = sub_20C36D264();
        sub_20C329258(v0 + 640, v0 + 744);

        if ((v16 & 1) == 0)
        {
          sub_20C3292B4(v0 + 640);
          v8 += 104;
          ++v9;
          if (v2 == v15)
          {
            v6 = v7;
            goto LABEL_17;
          }

          continue;
        }

LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v7;
        *v72 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20C327928(0, *(v7 + 16) + 1, 1);
          v6 = *v72;
        }

        v19 = *(v6 + 16);
        v18 = *(v6 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_20C327928((v18 > 1), v19 + 1, 1);
          v6 = *v72;
        }

        v3 = v9 + 1;
        *(v6 + 16) = v19 + 1;
        v20 = v6 + 104 * v19;
        v21 = *v4;
        v22 = *(v0 + 672);
        *(v20 + 48) = *(v0 + 656);
        *(v20 + 64) = v22;
        *(v20 + 32) = v21;
        v23 = *(v0 + 688);
        v24 = *(v0 + 704);
        v25 = *(v0 + 720);
        *(v20 + 128) = *(v0 + 736);
        *(v20 + 96) = v24;
        *(v20 + 112) = v25;
        *(v20 + 80) = v23;
        v5 = v1 + 32;
        if (v2 - 1 != v9)
        {
          goto LABEL_3;
        }

LABEL_17:
        v26 = (v0 + 1368);
        if (*(v6 + 16))
        {
          v74 = *(v0 + 1832);
          v27 = *(v0 + 1808);
          v28 = *(v0 + 1736);
          v29 = *(v0 + 1712);
          v30 = *(v0 + 1648);
          v68 = *(v0 + 1720);
          v70 = *(v0 + 1760);
          v71 = *(v0 + 1792);
          v73 = *(v0 + 1776);
          v77 = *(v0 + 1656);
          v79 = *(v0 + 1672);
          v32 = *(v6 + 48);
          v31 = *(v6 + 64);
          *(v0 + 952) = *(v6 + 32);
          *(v0 + 968) = v32;
          *(v0 + 984) = v31;
          v34 = *(v6 + 96);
          v33 = *(v6 + 112);
          v35 = *(v6 + 80);
          *(v0 + 1048) = *(v6 + 128);
          *(v0 + 1016) = v34;
          *(v0 + 1032) = v33;
          *(v0 + 1000) = v35;
          sub_20C329258(v0 + 952, v0 + 1056);

          v86 = *(v0 + 1016);
          v87 = *(v0 + 1032);
          v88 = *(v0 + 1048);
          v82 = *(v0 + 952);
          v83 = *(v0 + 968);
          v84 = *(v0 + 984);
          v85 = *(v0 + 1000);
          *(v0 + 1600) = *(v0 + 1024);
          v36 = swift_task_alloc();
          *(v36 + 16) = v77;
          *(v36 + 32) = v79;
          *(v36 + 48) = v30;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D8, &qword_20C372728);
          *(v0 + 416) = v29;
          *(v0 + 424) = v77;
          *(v0 + 432) = v68;
          *(v0 + 448) = v28;
          *(v0 + 456) = v70;
          *(v0 + 472) = v79;
          *(v0 + 480) = v73;
          *(v0 + 496) = v71;
          *(v0 + 512) = v27;
          *(v0 + 520) = v74;
          sub_20C36C1E4();
          sub_20C32932C();
          sub_20C36CE04();

          *(v0 + 1432) = v86;
          *(v0 + 1448) = v87;
          *(v0 + 1464) = v88;
          *v26 = v82;
          *(v0 + 1384) = v83;
          *(v0 + 1400) = v84;
          *(v0 + 1416) = v85;
        }

        else
        {
          v37 = *(v0 + 1832);
          v38 = *(v0 + 1808);
          v39 = *(v0 + 1736);
          v40 = *(v0 + 1712);
          v41 = *(v0 + 1672);
          v42 = *(v0 + 1656);
          v75 = *(v0 + 1720);
          v76 = *(v0 + 1760);
          v78 = *(v0 + 1792);
          v80 = *(v0 + 1776);

          *(v0 + 304) = v40;
          *(v0 + 312) = v42;
          *(v0 + 320) = v75;
          *(v0 + 336) = v39;
          *(v0 + 344) = v76;
          *(v0 + 360) = v41;
          *(v0 + 368) = v80;
          *(v0 + 384) = v78;
          *(v0 + 400) = v38;
          *(v0 + 408) = v37;
          sub_20C36C1E4();
          sub_20C36CE54();
          *v26 = 0u;
          *(v0 + 1384) = 0u;
          *(v0 + 1400) = 0u;
          *(v0 + 1416) = 0u;
          *(v0 + 1432) = 0u;
          *(v0 + 1448) = 0u;
          *(v0 + 1464) = 0;
        }

        v43 = *(v0 + 1920);
        v44 = *(v0 + 1912);
        v45 = *(v0 + 1904);
        v67 = *(v0 + 1896);
        v69 = *(v0 + 1888);
        v46 = *(v0 + 1832);
        v62 = *(v0 + 1824);
        v47 = *(v0 + 1816);
        v63 = *(v0 + 1808);
        v48 = *(v0 + 1800);
        v64 = *(v0 + 1792);
        v49 = *(v0 + 1784);
        v65 = *(v0 + 1776);
        v50 = *(v0 + 1768);
        v66 = *(v0 + 1760);
        v51 = *(v0 + 1752);
        v52 = *(v0 + 1744);
        v53 = *(v0 + 1736);
        v54 = *(v0 + 1728);
        v55 = *(v0 + 1720);
        v56 = *(v0 + 1672);
        v57 = *(v0 + 1656);
        v58 = *(*(v0 + 1640) + 240);
        *(v0 + 160) = *(v0 + 1712);
        *(v0 + 1976) = v58;
        *(v0 + 168) = v57;
        *(v0 + 176) = v55;
        *(v0 + 184) = v54;
        *(v0 + 192) = v53;
        *(v0 + 200) = v52;
        *(v0 + 208) = v51;
        *(v0 + 216) = v66;
        *(v0 + 224) = v50;
        *(v0 + 232) = v56;
        *(v0 + 240) = v65;
        *(v0 + 248) = v49;
        *(v0 + 256) = v64;
        *(v0 + 264) = v48;
        *(v0 + 272) = v63;
        *(v0 + 280) = v47;
        *(v0 + 288) = v62;
        *(v0 + 296) = v46;
        sub_20C36C214();
        sub_20C36D254();
        swift_allocObject();
        v59 = sub_20C36CE44();
        *(v0 + 1984) = v59;
        sub_20C36C2A4();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4E8, &qword_20C372730);
        (*(*(v60 - 8) + 56))(v43, 1, 1, v60);
        (*(v45 + 104))(v44, *MEMORY[0x277D09650], v67);
        (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
        sub_20C36C1F4();
        sub_20C36CE94();
        v81 = (*MEMORY[0x277D09640] + MEMORY[0x277D09640]);
        v61 = swift_task_alloc();
        *(v0 + 1992) = v61;
        *v61 = v0;
        v61[1] = sub_20C31964C;

        v81(v59);
        return;
    }
  }
}

uint64_t sub_20C31964C()
{

  return MEMORY[0x2822009F8](sub_20C319764, 0, 0);
}

uint64_t sub_20C319764()
{
  v1 = swift_task_alloc();
  *(v0 + 2000) = v1;
  v2 = *(v0 + 1672);
  *(v1 + 16) = *(v0 + 1656);
  *(v1 + 32) = v2;
  v6 = (*MEMORY[0x277D09648] + MEMORY[0x277D09648]);
  v3 = swift_task_alloc();
  *(v0 + 2008) = v3;
  v4 = sub_20C36CE94();
  *(v0 + 2016) = v4;
  *v3 = v0;
  v3[1] = sub_20C319864;

  return v6(v0 + 1608, sub_20C329390, v1, v4);
}

void sub_20C319864()
{
  *(*v1 + 2024) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_20C3199C4, 0, 0);
  }
}

uint64_t sub_20C3199C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = v3;
  v4 = *(v3 + 1872);
  v5 = *(v3 + 1864);
  v6 = *(v3 + 1840);
  v7 = *(v3 + 1608);
  *(v3 + 2032) = v7;
  *(v3 + 1616) = v7;
  swift_getWitnessTable();
  sub_20C36CF94();
  if ((*(v4 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v3 + 1864);
    v9 = *(v3 + 1856);
    v10 = *(v3 + 1848);
    sub_20C3293C4(v3 + 1368);
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v43 = *(v3 + 1832);
    v11 = *(v3 + 1808);
    v12 = *(v3 + 1736);
    v13 = *(v3 + 1712);
    v14 = *(v3 + 1672);
    v15 = *(v3 + 1656);
    v39 = *(v3 + 1720);
    v40 = *(v3 + 1760);
    v41 = *(v3 + 1792);
    v42 = *(v3 + 1776);
    (*(*(v3 + 1872) + 32))(*(v3 + 1880), *(v3 + 1864), *(v3 + 1840));
    *(v3 + 1624) = sub_20C36C2C4();
    *(v3 + 528) = v13;
    *(v3 + 536) = v15;
    *(v3 + 544) = v39;
    *(v3 + 560) = v12;
    *(v3 + 568) = v40;
    *(v3 + 584) = v14;
    *(v3 + 592) = v42;
    *(v3 + 608) = v41;
    *(v3 + 624) = v11;
    *(v3 + 632) = v43;
    sub_20C36C284();
    sub_20C36CE94();
    swift_getWitnessTable();
    v16 = sub_20C36CFA4();

    if ((v16 & 1) == 0)
    {
      swift_storeEnumTagMultiPayload();
      v32 = swift_task_alloc();
      *(v3 + 2040) = v32;
      v33 = sub_20C36CCB4();
      *(v3 + 2048) = v33;
      *v32 = v3;
      v34 = sub_20C319FB4;
      goto LABEL_16;
    }

    (*(*(v3 + 1872) + 8))(*(v3 + 1880), *(v3 + 1840));
    sub_20C3293C4(v3 + 1368);
  }

  sub_20C32942C(v17, v18, v19);
  v20 = swift_allocError();
  *v21 = 2;
  swift_willThrow();
  *(v3 + 2080) = v20;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v22 = sub_20C36C3D4();
  __swift_project_value_buffer(v22, qword_2810ED6B8);
  v23 = v20;
  v24 = sub_20C36C3B4();
  v25 = sub_20C36CFD4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_20C36D2C4();
    v30 = sub_20C359E04(v28, v29, &v44);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_20C2F6000, v24, v25, "Failed to fetched descriptors with error: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x20F2F83A0](v27, -1, -1);
    MEMORY[0x20F2F83A0](v26, -1, -1);
  }

  *(v3 + 1592) = v20;
  v31 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v35 = *(v3 + 1704);

    swift_getErrorValue();
    *v35 = sub_20C36D2C4();
    v35[1] = v36;
    swift_storeEnumTagMultiPayload();
    v32 = swift_task_alloc();
    *(v3 + 2168) = v32;
    v33 = sub_20C36CCB4();
    *v32 = v3;
    v34 = sub_20C31B0C8;
    goto LABEL_16;
  }

  if (*(v3 + 2176))
  {
    if (*(v3 + 2176) == 1)
    {
      **(v3 + 1704) = 2;
      swift_storeEnumTagMultiPayload();
      v32 = swift_task_alloc();
      *(v3 + 2088) = v32;
      v33 = sub_20C36CCB4();
      *(v3 + 2096) = v33;
      *v32 = v3;
      v34 = sub_20C31A90C;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  **(v3 + 1704) = 3;
  swift_storeEnumTagMultiPayload();
  v32 = swift_task_alloc();
  *(v3 + 2128) = v32;
  v33 = sub_20C36CCB4();
  *(v3 + 2136) = v33;
  *v32 = v3;
  v34 = sub_20C31AD50;
LABEL_16:
  v32[1] = v34;
  v37 = *(v3 + 1704);

  return MEMORY[0x282159B08](v37, v33);
}

uint64_t sub_20C319FB4()
{
  v1 = *v0;
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1696);
  v4 = *(*v0 + 1688);

  v5 = *(v3 + 8);
  *(v1 + 2056) = v5;
  *(v1 + 2064) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_20C31A11C, 0, 0);
}

uint64_t sub_20C31A11C()
{
  v33 = v0;
  v1 = *(v0 + 2024);
  sub_20C36CF34();
  if (v1)
  {
    (*(*(v0 + 1872) + 8))(*(v0 + 1880), *(v0 + 1840));
    sub_20C3293C4(v0 + 1368);

    *(v0 + 2080) = v1;
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v2 = sub_20C36C3D4();
    __swift_project_value_buffer(v2, qword_2810ED6B8);
    v3 = v1;
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32[0] = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_20C36D2C4();
      v10 = sub_20C359E04(v8, v9, v32);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F2F83A0](v7, -1, -1);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    *(v0 + 1592) = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
    if (!swift_dynamicCast())
    {
      goto LABEL_10;
    }

    if (!*(v0 + 2176))
    {
      **(v0 + 1704) = 3;
      swift_storeEnumTagMultiPayload();
      v12 = swift_task_alloc();
      *(v0 + 2128) = v12;
      v13 = sub_20C36CCB4();
      *(v0 + 2136) = v13;
      *v12 = v0;
      v14 = sub_20C31AD50;
      goto LABEL_11;
    }

    if (*(v0 + 2176) == 1)
    {
      **(v0 + 1704) = 2;
      swift_storeEnumTagMultiPayload();
      v12 = swift_task_alloc();
      *(v0 + 2088) = v12;
      v13 = sub_20C36CCB4();
      *(v0 + 2096) = v13;
      *v12 = v0;
      v14 = sub_20C31A90C;
    }

    else
    {
LABEL_10:
      v15 = *(v0 + 1704);

      swift_getErrorValue();
      *v15 = sub_20C36D2C4();
      v15[1] = v16;
      swift_storeEnumTagMultiPayload();
      v12 = swift_task_alloc();
      *(v0 + 2168) = v12;
      v13 = sub_20C36CCB4();
      *v12 = v0;
      v14 = sub_20C31B0C8;
    }

LABEL_11:
    v12[1] = v14;
    v17 = *(v0 + 1704);
    goto LABEL_18;
  }

  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v18 = sub_20C36C3D4();
  __swift_project_value_buffer(v18, qword_2810ED6B8);
  sub_20C329480(v0 + 1368, v0 + 1160);
  v19 = sub_20C36C3B4();
  v20 = sub_20C36CFD4();
  sub_20C3293C4(v0 + 1368);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136315138;
    v23 = *(v0 + 1448);
    *(v0 + 1328) = *(v0 + 1432);
    *(v0 + 1344) = v23;
    *(v0 + 1360) = *(v0 + 1464);
    v24 = *(v0 + 1384);
    *(v0 + 1264) = *(v0 + 1368);
    *(v0 + 1280) = v24;
    v25 = *(v0 + 1416);
    *(v0 + 1296) = *(v0 + 1400);
    *(v0 + 1312) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4F0, &qword_20C372738);
    v26 = sub_20C36CFE4();
    v28 = v27;
    sub_20C3293C4(v0 + 1368);
    v29 = sub_20C359E04(v26, v28, v32);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_20C2F6000, v19, v20, "Fetched descriptor: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x20F2F83A0](v22, -1, -1);
    MEMORY[0x20F2F83A0](v21, -1, -1);
  }

  else
  {

    sub_20C3293C4(v0 + 1368);
  }

  **(v0 + 1704) = *(v0 + 2032);
  swift_storeEnumTagMultiPayload();
  v30 = swift_task_alloc();
  *(v0 + 2072) = v30;
  *v30 = v0;
  v30[1] = sub_20C31A6D4;
  v13 = *(v0 + 2048);
  v17 = *(v0 + 1704);
LABEL_18:

  return MEMORY[0x282159B08](v17, v13);
}

uint64_t sub_20C31A6D4()
{
  v1 = *(*v0 + 2056);
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1688);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_20C31A834, 0, 0);
}

uint64_t sub_20C31A834()
{
  (*(v0[234] + 8))(v0[235], v0[230]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C31A90C()
{
  v1 = *v0;
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1696);
  v4 = *(*v0 + 1688);

  v5 = *(v3 + 8);
  *(v1 + 2104) = v5;
  *(v1 + 2112) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_20C31AA74, 0, 0);
}

uint64_t sub_20C31AA74()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[265] = v1;
  *v1 = v0;
  v1[1] = sub_20C31AB24;
  v2 = v0[262];
  v3 = v0[213];

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C31AB24()
{
  v1 = *(*v0 + 2104);
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1688);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_20C31AC84, 0, 0);
}

uint64_t sub_20C31AC84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C31AD50()
{
  v1 = *v0;
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1696);
  v4 = *(*v0 + 1688);

  v5 = *(v3 + 8);
  *(v1 + 2144) = v5;
  *(v1 + 2152) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_20C31AEB8, 0, 0);
}

uint64_t sub_20C31AEB8()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[270] = v1;
  *v1 = v0;
  v1[1] = sub_20C31AF68;
  v2 = v0[267];
  v3 = v0[213];

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C31AF68()
{
  v1 = *(*v0 + 2144);
  v2 = *(*v0 + 1704);
  v3 = *(*v0 + 1688);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_20C3295B4, 0, 0);
}

uint64_t sub_20C31B0C8()
{
  v1 = *(*v0 + 1704);
  v2 = *(*v0 + 1696);
  v3 = *(*v0 + 1688);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C31B220, 0, 0);
}

uint64_t sub_20C31B220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C31B2E4()
{
  v20 = v0;
  v1 = *(v0 + 1944);
  *(v0 + 2080) = v1;
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_20C36C3D4();
  __swift_project_value_buffer(v2, qword_2810ED6B8);
  v3 = v1;
  v4 = sub_20C36C3B4();
  v5 = sub_20C36CFD4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20C36D2C4();
    v10 = sub_20C359E04(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20C2F6000, v4, v5, "Failed to fetched descriptors with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x20F2F83A0](v7, -1, -1);
    MEMORY[0x20F2F83A0](v6, -1, -1);
  }

  *(v0 + 1592) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D0, &qword_20C372720);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v15 = *(v0 + 1704);

    swift_getErrorValue();
    *v15 = sub_20C36D2C4();
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    v12 = swift_task_alloc();
    *(v0 + 2168) = v12;
    v13 = sub_20C36CCB4();
    *v12 = v0;
    v14 = sub_20C31B0C8;
    goto LABEL_10;
  }

  if (*(v0 + 2176))
  {
    if (*(v0 + 2176) == 1)
    {
      **(v0 + 1704) = 2;
      swift_storeEnumTagMultiPayload();
      v12 = swift_task_alloc();
      *(v0 + 2088) = v12;
      v13 = sub_20C36CCB4();
      *(v0 + 2096) = v13;
      *v12 = v0;
      v14 = sub_20C31A90C;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  **(v0 + 1704) = 3;
  swift_storeEnumTagMultiPayload();
  v12 = swift_task_alloc();
  *(v0 + 2128) = v12;
  v13 = sub_20C36CCB4();
  *(v0 + 2136) = v13;
  *v12 = v0;
  v14 = sub_20C31AD50;
LABEL_10:
  v12[1] = v14;
  v17 = *(v0 + 1704);

  return MEMORY[0x282159B08](v17, v13);
}

uint64_t sub_20C31B674@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a4;
  v25 = a3;
  v7 = sub_20C36C334();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20C36C1D4();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for ForYouItemContext(0);
  MEMORY[0x28223BE20](v9);
  if (*(a1 + 49) == 8)
  {
    sub_20C32952C(a1, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CanvasPlaceholder);
    swift_storeEnumTagMultiPayload();
    sub_20C36C314();
    sub_20C36C384();
    swift_storeEnumTagMultiPayload();
    v24 = sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    v11 = sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    v12 = sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    sub_20C36C294();
    v23 = sub_20C36C394();
    v22 = sub_20C36C344();
    v13 = sub_20C36C354();
    v14 = sub_20C36C374();
    v15 = sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
    v16 = sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
    v17 = sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
    v18 = sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
    v27 = v23;
    v28 = v25;
    v29 = v22;
    v30 = v9;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v26;
    v35 = v16;
    v36 = v24;
    v37 = v11;
    v38 = v12;
    v39 = v17;
    v40 = v18;
    v19 = sub_20C36C1E4();
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(a5, 0, 1, v19);
  }

  else
  {
    v24 = sub_20C36C394();
    v23 = sub_20C36C344();
    v22 = sub_20C36C354();
    v27 = v24;
    v28 = v25;
    v29 = v23;
    v30 = v9;
    v31 = v22;
    v32 = sub_20C36C374();
    v33 = sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
    v34 = v26;
    v35 = sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
    v36 = sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    v37 = sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    v38 = sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
    v39 = sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
    v40 = sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
    v21 = sub_20C36C1E4();
    return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
  }
}

void ForYouSummaryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v403 = a4;
  v408 = a3;
  v400 = a2;
  WitnessTable = a1;
  v7 = sub_20C36C394();
  v411 = *(a5 + 2);
  *&v407 = sub_20C36C344();
  *(&v407 + 1) = type metadata accessor for ForYouItemContext(255);
  v406 = sub_20C36C354();
  v402 = sub_20C36C364();
  v401 = sub_20C36C3A4();
  v405 = sub_20C36C374();
  v404 = sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  v8 = *(a5 + 4);
  v409 = a5;
  v410 = v8;
  v9 = sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  v10 = sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v11 = sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v12 = sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v387 = v9;
  v388 = v7;
  *&v430 = v7;
  *(&v430 + 1) = v411;
  v13 = *(&v407 + 1);
  v431 = v407;
  *&v432 = v406;
  *(&v432 + 1) = v402;
  *&v433 = v401;
  *(&v433 + 1) = v405;
  *&v434 = v404;
  *(&v434 + 1) = v410;
  *&v435 = v9;
  v385 = v11;
  v386 = v10;
  *(&v435 + 1) = v10;
  *&v436 = v11;
  v383 = sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  v384 = v12;
  *(&v436 + 1) = v12;
  *&v437 = v383;
  *(&v437 + 1) = sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  *&v438 = sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  v382 = sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  *(&v438 + 1) = v382;
  v390 = sub_20C36C2D4();
  v14 = sub_20C36CFF4();
  v380 = *(v14 - 8);
  v381 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v379 - v15;
  v17 = type metadata accessor for CanvasPlaceholder(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v379 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = *(v13 - 8);
  v21 = *(v391 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v394 = (&v379 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v379 - v24);
  MEMORY[0x28223BE20](v23);
  v398 = &v379 - v26;
  v396 = sub_20C36C164();
  v392 = *(v396 - 8);
  v27 = *(v392 + 64);
  v28 = MEMORY[0x28223BE20](v396);
  v389 = &v379 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v395 = &v379 - v29;
  v31 = type metadata accessor for ForYouSummaryAction(255, v411, v410, v30);
  v32 = sub_20C36CC94();
  v401 = *(v32 - 8);
  v402 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v393 = &v379 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v399 = &v379 - v36;
  v37 = *(v31 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = (&v379 - v38);
  v40 = v5[13];
  v442 = v5[12];
  v443 = v40;
  v444 = v5[14];
  v445 = *(v5 + 30);
  v41 = v5[9];
  v438 = v5[8];
  v439 = v41;
  v42 = v5[11];
  v440 = v5[10];
  v441 = v42;
  v43 = v5[5];
  v434 = v5[4];
  v435 = v43;
  v44 = v5[7];
  v436 = v5[6];
  v437 = v44;
  v45 = v5[1];
  v430 = *v5;
  v431 = v45;
  v46 = v5[3];
  v432 = v5[2];
  v433 = v46;
  (*(v37 + 16))(&v379 - v38, v403, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v313 = *v39;
      v426 = v442;
      v427 = v443;
      v428 = v444;
      v429 = v445;
      v422 = v438;
      v423 = v439;
      v424 = v440;
      v425 = v441;
      v418 = v434;
      v419 = v435;
      v420 = v436;
      v421 = v437;
      v414 = v430;
      v415 = v431;
      v416 = v432;
      v417 = v433;
      v314 = WitnessTable;
      v315 = v400;
      v316 = v408;
      goto LABEL_36;
    case 2u:
      (*(v37 + 8))(v39, v31);
      v264 = v410;
      v265 = *(v409 + 3);
      v266 = *(v409 + 5);
      v267 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v265;
      *&v415 = v410;
      *(&v415 + 1) = v266;
      v268 = type metadata accessor for ForYouSummaryState(0, &v414);
      v269 = sub_20C32FF78(*&v400[*(v268 + 68)], v400[*(v268 + 68) + 8]);
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v271 = v270[16];
      v409 = v270[20];
      v52 = v399;
      v272 = &v399[v270[24]];
      if (v269)
      {
        v412 = xmmword_20C372390;
        v413 = 2;
        *&v414 = v267;
        *(&v414 + 1) = v265;
        *&v415 = v264;
        *(&v415 + 1) = v266;
        type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
        swift_getWitnessTable();
        sub_20C36D0D4();
        sub_20C36CF04();
        v273 = *MEMORY[0x277D04400];
        v274 = sub_20C36CCD4();
        (*(*(v274 - 8) + 104))(&v52[v271], v273, v274);
        v275 = *MEMORY[0x277D043E0];
        v276 = sub_20C36CCC4();
        (*(*(v276 - 8) + 104))(&v409[v52], v275, v276);
        v277 = swift_allocObject();
        v277[2] = v267;
        v277[3] = v265;
        v277[4] = v264;
        v277[5] = v266;
        v278 = &unk_20C3724D0;
      }

      else
      {
        v412 = xmmword_20C372380;
        v413 = 2;
        *&v414 = v267;
        *(&v414 + 1) = v265;
        *&v415 = v264;
        *(&v415 + 1) = v266;
        type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
        swift_getWitnessTable();
        sub_20C36D0D4();
        sub_20C36CF04();
        v346 = *MEMORY[0x277D04400];
        v347 = sub_20C36CCD4();
        (*(*(v347 - 8) + 104))(&v52[v271], v346, v347);
        v348 = *MEMORY[0x277D043E0];
        v349 = sub_20C36CCC4();
        (*(*(v349 - 8) + 104))(&v409[v52], v348, v349);
        v277 = swift_allocObject();
        v277[2] = v267;
        v277[3] = v265;
        v277[4] = v264;
        v277[5] = v266;
        v278 = &unk_20C3724C0;
      }

      *v272 = v278;
      *(v272 + 1) = v277;
      v63 = MEMORY[0x277D043B0];
      goto LABEL_27;
    case 3u:
      v279 = *v39;
      v280 = v395;
      MEMORY[0x20F2F6C90](*v39, 0);
      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v282 = v281[16];
      v283 = v281[20];
      *&v407 = v281[12];
      *(&v407 + 1) = v283;
      v284 = v399;
      v285 = &v399[v281[24]];
      v412 = v279;
      v413 = 0;
      v287 = v409;
      v286 = v410;
      v405 = *(v409 + 3);
      v406 = v285;
      v404 = *(v409 + 5);
      v288 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v405;
      *&v415 = v410;
      *(&v415 + 1) = v404;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      sub_20C36D0D4();
      v289 = *MEMORY[0x277D04400];
      v290 = sub_20C36CCD4();
      (*(*(v290 - 8) + 104))(&v284[v282], v289, v290);
      v291 = v392;
      v292 = v389;
      (*(v392 + 16))(v389, v280, v396);
      v293 = (*(v291 + 80) + 296) & ~*(v291 + 80);
      v294 = swift_allocObject();
      v295 = v404;
      v296 = v405;
      *(v294 + 16) = v288;
      *(v294 + 24) = v296;
      *(v294 + 32) = v286;
      *(v294 + 40) = v295;
      v297 = v443;
      *(v294 + 240) = v442;
      *(v294 + 256) = v297;
      *(v294 + 272) = v444;
      *(v294 + 288) = v445;
      v298 = v439;
      *(v294 + 176) = v438;
      *(v294 + 192) = v298;
      v299 = v441;
      *(v294 + 208) = v440;
      *(v294 + 224) = v299;
      v300 = v435;
      *(v294 + 112) = v434;
      *(v294 + 128) = v300;
      v301 = v437;
      *(v294 + 144) = v436;
      *(v294 + 160) = v301;
      v302 = v431;
      *(v294 + 48) = v430;
      *(v294 + 64) = v302;
      v303 = v433;
      *(v294 + 80) = v432;
      *(v294 + 96) = v303;
      v304 = v396;
      (*(v291 + 32))(v294 + v293, v292, v396);
      v305 = v406;
      *v406 = &unk_20C3724B0;
      v305[1] = v294;
      (*(*(v287 - 1) + 16))(&v414, &v430, v287);
      sub_20C36CF04();
      v306 = *MEMORY[0x277D043E8];
      v307 = sub_20C36CCC4();
      (*(*(v307 - 8) + 104))(&v284[*(&v407 + 1)], v306, v307);
      (*(v401 + 104))(v284, *MEMORY[0x277D043B0], v402);
      sub_20C36CE94();
      sub_20C36CE84();
      (*(v291 + 8))(v395, v304);
      return;
    case 4u:
      *&v414 = *v39;
      v64 = v390;
      sub_20C36CE94();
      swift_getWitnessTable();
      sub_20C36CF94();

      v65 = *(v64 - 8);
      if ((*(v65 + 48))(v16, 1, v64) == 1)
      {
        (*(v380 + 8))(v16, v381);
        v67 = v410;
        v66 = v411;
        *&v414 = v388;
        *(&v414 + 1) = v411;
        v415 = v407;
        *&v416 = v406;
        *(&v416 + 1) = v405;
        *&v417 = v404;
        *(&v417 + 1) = v410;
        *&v418 = v387;
        *(&v418 + 1) = v386;
        *&v419 = v385;
        *(&v419 + 1) = v384;
        *&v420 = v383;
        *(&v420 + 1) = v382;
        sub_20C36C284();
        v68 = sub_20C36CE54();
        v69 = v409;
      }

      else
      {
        v68 = sub_20C36C2C4();
        (*(v65 + 8))(v16, v64);
        v69 = v409;
        v67 = v410;
        v66 = v411;
      }

      v342 = v400;
      v343 = v69[3];
      v344 = v69[5];
      *&v414 = v66;
      *(&v414 + 1) = v343;
      *&v415 = v67;
      *(&v415 + 1) = v344;
      v345 = &v342[*(type metadata accessor for ForYouSummaryState(0, &v414) + 68)];
      sub_20C31439C(*v345, v345[8]);
      *v345 = v68;
      v345[8] = 1;
      return;
    case 5u:
      if (*v39 == 1)
      {
        v48 = *(v409 + 3);
        v49 = *(v409 + 5);
        v47 = 1;
LABEL_17:
        sub_20C327A70(v47, 0, v400, v411, v48, v410, v49);
      }

      else
      {
        v426 = v442;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v422 = v438;
        v423 = v439;
        v424 = v440;
        v425 = v441;
        v418 = v434;
        v419 = v435;
        v420 = v436;
        v421 = v437;
        v414 = v430;
        v415 = v431;
        v416 = v432;
        v417 = v433;
        v314 = WitnessTable;
        v315 = v400;
        v316 = v408;
        v313 = 1;
LABEL_36:
        sub_20C317FB0(v314, v315, v316, v313, v409);
      }

      break;
    case 6u:
      v317 = v398;
      sub_20C328768(v39, v398, type metadata accessor for ForYouItemContext);
      sub_20C32952C(v317, v25, type metadata accessor for ForYouItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20C328768(v25, v20, type metadata accessor for CanvasPlaceholder);
        v319 = *(v20 + 2);
        v318 = *(v20 + 3);

        sub_20C3288D4(v20, type metadata accessor for CanvasPlaceholder);
      }

      else
      {
        v319 = *v25;
        v318 = v25[1];
      }

      v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v355 = v354[16];
      v356 = v354[20];
      v357 = v393;
      *(&v407 + 1) = &v393[v354[24]];
      *&v412 = v319;
      *(&v412 + 1) = v318;
      v413 = 1;
      v358 = v409;
      v359 = v410;
      *&v407 = *(v409 + 3);
      v360 = *(v409 + 5);
      v405 = v356;
      v406 = v360;
      v361 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v407;
      *&v415 = v410;
      *(&v415 + 1) = v360;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      sub_20C36D0D4();

      sub_20C36CF04();
      v362 = *MEMORY[0x277D043F0];
      v363 = sub_20C36CCD4();
      (*(*(v363 - 8) + 104))(&v357[v355], v362, v363);
      v364 = *MEMORY[0x277D043E8];
      v365 = sub_20C36CCC4();
      (*(*(v365 - 8) + 104))(&v357[v405], v364, v365);
      v366 = v394;
      sub_20C32952C(v398, v394, type metadata accessor for ForYouItemContext);
      v367 = (*(v391 + 80) + 296) & ~*(v391 + 80);
      v368 = swift_allocObject();
      v369 = v406;
      v370 = v407;
      *(v368 + 16) = v361;
      *(v368 + 24) = v370;
      *(v368 + 32) = v359;
      *(v368 + 40) = v369;
      v371 = v443;
      *(v368 + 240) = v442;
      *(v368 + 256) = v371;
      *(v368 + 272) = v444;
      *(v368 + 288) = v445;
      v372 = v439;
      *(v368 + 176) = v438;
      *(v368 + 192) = v372;
      v373 = v441;
      *(v368 + 208) = v440;
      *(v368 + 224) = v373;
      v374 = v435;
      *(v368 + 112) = v434;
      *(v368 + 128) = v374;
      v375 = v437;
      *(v368 + 144) = v436;
      *(v368 + 160) = v375;
      v376 = v431;
      *(v368 + 48) = v430;
      *(v368 + 64) = v376;
      v377 = v433;
      *(v368 + 80) = v432;
      *(v368 + 96) = v377;
      sub_20C328768(v366, v368 + v367, type metadata accessor for ForYouItemContext);
      v378 = *(&v407 + 1);
      **(&v407 + 1) = &unk_20C3724A0;
      *(v378 + 8) = v368;
      (*(v401 + 104))(v357, *MEMORY[0x277D043B0], v402);
      (*(*(v358 - 1) + 16))(&v414, &v430, v358);
      sub_20C36CE94();
      sub_20C36CE84();
      sub_20C3288D4(v398, type metadata accessor for ForYouItemContext);
      return;
    case 7u:
      v308 = v409;
      v309 = *(v409 + 3);
      v310 = *(v409 + 5);
      *&v414 = v411;
      *(&v414 + 1) = v309;
      *&v415 = v410;
      *(&v415 + 1) = v310;
      v311 = type metadata accessor for ForYouSummaryState(0, &v414);
      v312 = v400;
      if (sub_20C32FF48(*&v400[*(v311 + 68)], v400[*(v311 + 68) + 8]))
      {
        v426 = v442;
        v427 = v443;
        v428 = v444;
        v429 = v445;
        v422 = v438;
        v423 = v439;
        v424 = v440;
        v425 = v441;
        v418 = v434;
        v419 = v435;
        v420 = v436;
        v421 = v437;
        v414 = v430;
        v415 = v431;
        v416 = v432;
        v417 = v433;
        sub_20C317FB0(WitnessTable, v312, v408, 1, v308);
      }

      else
      {
        if (qword_2810E8CA8 != -1)
        {
          swift_once();
        }

        v350 = sub_20C36C3D4();
        __swift_project_value_buffer(v350, qword_2810ED6B8);
        v351 = sub_20C36C3B4();
        v352 = sub_20C36CFD4();
        if (os_log_type_enabled(v351, v352))
        {
          v353 = swift_slowAlloc();
          *v353 = 0;
          _os_log_impl(&dword_20C2F6000, v351, v352, "App Did Become Active - Current Load State is unsupported for fetching section descriptors.", v353, 2u);
          MEMORY[0x20F2F83A0](v353, -1, -1);
        }
      }

      return;
    case 8u:
      v412 = xmmword_20C372350;
      v413 = 2;
      v339 = *(v409 + 3);
      v340 = *(v409 + 5);
      *&v414 = v411;
      *(&v414 + 1) = v339;
      *&v415 = v410;
      *(&v415 + 1) = v340;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      v341 = v399;
      sub_20C36D0D4();
      (*(v401 + 104))(v341, *MEMORY[0x277D043C0], v402);
      sub_20C36CE94();
      goto LABEL_29;
    case 9u:
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v243 = v242[16];
      v244 = v399;
      v245 = &v399[v242[24]];
      *&v407 = v242[20];
      *(&v407 + 1) = v245;
      v412 = xmmword_20C372370;
      v413 = 2;
      v247 = v409;
      v246 = v410;
      v248 = *(v409 + 3);
      v249 = *(v409 + 5);
      v250 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v248;
      *&v415 = v410;
      *(&v415 + 1) = v249;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      sub_20C36D0D4();
      sub_20C36CF04();
      v251 = *MEMORY[0x277D043F0];
      v252 = sub_20C36CCD4();
      (*(*(v252 - 8) + 104))(&v244[v243], v251, v252);
      v253 = *MEMORY[0x277D043E8];
      v254 = sub_20C36CCC4();
      (*(*(v254 - 8) + 104))(&v244[v407], v253, v254);
      v255 = swift_allocObject();
      *(v255 + 16) = v250;
      *(v255 + 24) = v248;
      *(v255 + 32) = v246;
      *(v255 + 40) = v249;
      v256 = v443;
      *(v255 + 240) = v442;
      *(v255 + 256) = v256;
      *(v255 + 272) = v444;
      *(v255 + 288) = v445;
      v257 = v439;
      *(v255 + 176) = v438;
      *(v255 + 192) = v257;
      v258 = v441;
      *(v255 + 208) = v440;
      *(v255 + 224) = v258;
      v259 = v435;
      *(v255 + 112) = v434;
      *(v255 + 128) = v259;
      v260 = v437;
      *(v255 + 144) = v436;
      *(v255 + 160) = v260;
      v261 = v431;
      *(v255 + 48) = v430;
      *(v255 + 64) = v261;
      v262 = v433;
      *(v255 + 80) = v432;
      *(v255 + 96) = v262;
      v263 = &unk_20C372488;
      goto LABEL_21;
    case 0xAu:
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v321 = v320[16];
      v244 = v399;
      v322 = &v399[v320[24]];
      *&v407 = v320[20];
      *(&v407 + 1) = v322;
      v412 = xmmword_20C372360;
      v413 = 2;
      v247 = v409;
      v323 = v410;
      v324 = *(v409 + 3);
      v325 = *(v409 + 5);
      v326 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v324;
      *&v415 = v410;
      *(&v415 + 1) = v325;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      sub_20C36D0D4();
      sub_20C36CF04();
      v327 = *MEMORY[0x277D043F0];
      v328 = sub_20C36CCD4();
      (*(*(v328 - 8) + 104))(&v244[v321], v327, v328);
      v329 = *MEMORY[0x277D043E8];
      v330 = sub_20C36CCC4();
      (*(*(v330 - 8) + 104))(&v244[v407], v329, v330);
      v255 = swift_allocObject();
      *(v255 + 16) = v326;
      *(v255 + 24) = v324;
      *(v255 + 32) = v323;
      *(v255 + 40) = v325;
      v331 = v443;
      *(v255 + 240) = v442;
      *(v255 + 256) = v331;
      *(v255 + 272) = v444;
      *(v255 + 288) = v445;
      v332 = v439;
      *(v255 + 176) = v438;
      *(v255 + 192) = v332;
      v333 = v441;
      *(v255 + 208) = v440;
      *(v255 + 224) = v333;
      v334 = v435;
      *(v255 + 112) = v434;
      *(v255 + 128) = v334;
      v335 = v437;
      *(v255 + 144) = v436;
      *(v255 + 160) = v335;
      v336 = v431;
      *(v255 + 48) = v430;
      *(v255 + 64) = v336;
      v337 = v433;
      *(v255 + 80) = v432;
      *(v255 + 96) = v337;
      v263 = &unk_20C372478;
LABEL_21:
      v338 = *(&v407 + 1);
      **(&v407 + 1) = v263;
      *(v338 + 8) = v255;
      (*(v401 + 104))(v244, *MEMORY[0x277D043B0], v402);
      (*(*(v247 - 1) + 16))(&v414, &v430, v247);
      goto LABEL_28;
    case 0xBu:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3B0, &qword_20C372458);
      v51 = v50[24];
      *(&v407 + 1) = v50[28];
      v52 = v399;
      v53 = &v399[v50[32]];
      v412 = xmmword_20C372350;
      v413 = 2;
      v54 = v410;
      v55 = *(v409 + 3);
      v56 = *(v409 + 5);
      v57 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v55;
      *&v415 = v410;
      *(&v415 + 1) = v56;
      type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      swift_getWitnessTable();
      sub_20C36D0D4();
      *(v52 + 5) = 0x4000000000000000;
      v52[48] = 0;
      sub_20C36CF04();
      v58 = *MEMORY[0x277D04400];
      v59 = sub_20C36CCD4();
      (*(*(v59 - 8) + 104))(&v52[v51], v58, v59);
      v60 = *MEMORY[0x277D043E0];
      v61 = sub_20C36CCC4();
      (*(*(v61 - 8) + 104))(&v52[*(&v407 + 1)], v60, v61);
      v62 = swift_allocObject();
      v62[2] = v57;
      v62[3] = v55;
      v62[4] = v54;
      v62[5] = v56;
      *v53 = &unk_20C372468;
      *(v53 + 1) = v62;
      v63 = MEMORY[0x277D043B8];
LABEL_27:
      (*(v401 + 104))(v52, *v63, v402);
LABEL_28:
      sub_20C36CE94();
      goto LABEL_29;
    case 0xCu:
      v70 = v409;
      v71 = v410;
      v72 = *(v409 + 3);
      v73 = *(v409 + 5);
      v74 = v411;
      *&v414 = v411;
      *(&v414 + 1) = v72;
      *&v415 = v410;
      *(&v415 + 1) = v73;
      v75 = type metadata accessor for ForYouSummaryState(0, &v414);
      v76 = v400;
      if (!sub_20C32FF48(*&v400[*(v75 + 68)], v400[*(v75 + 68) + 8]))
      {
        return;
      }

      v426 = v442;
      v427 = v443;
      v428 = v444;
      v429 = v445;
      v422 = v438;
      v423 = v439;
      v424 = v440;
      v425 = v441;
      v418 = v434;
      v419 = v435;
      v420 = v436;
      v421 = v437;
      v414 = v430;
      v415 = v431;
      v416 = v432;
      v417 = v433;
      sub_20C317FB0(WitnessTable, v76, v408, 1, v70);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E3A8, &qword_20C3723A0);
      v78 = v77[16];
      v79 = v77[20];
      v80 = v77[24];
      v81 = v72;
      *(&v407 + 1) = v72;
      v82 = v399;
      *&v407 = &v399[v80];
      v412 = xmmword_20C3722A0;
      v413 = 2;
      *&v414 = v74;
      *(&v414 + 1) = v81;
      *&v415 = v71;
      *(&v415 + 1) = v73;
      v396 = v73;
      v403 = type metadata accessor for ForYouSummaryFeature.TaskIdentifier(0, &v414);
      WitnessTable = swift_getWitnessTable();
      sub_20C36D0D4();
      sub_20C36CF04();
      LODWORD(v393) = *MEMORY[0x277D04400];
      v83 = v393;
      v395 = sub_20C36CCD4();
      v84 = *(v395 - 1);
      v394 = *(v84 + 104);
      v391 = v84 + 104;
      (v394)(&v82[v78], v83, v395);
      LODWORD(v390) = *MEMORY[0x277D043E0];
      v85 = v390;
      v398 = sub_20C36CCC4();
      v86 = *(v398 - 8);
      v400 = *(v86 + 104);
      v389 = (v86 + 104);
      (v400)(&v82[v79], v85, v398);
      v87 = swift_allocObject();
      v88 = *(&v407 + 1);
      *(v87 + 16) = v74;
      *(v87 + 24) = v88;
      *(v87 + 32) = v71;
      *(v87 + 40) = v73;
      v89 = v443;
      *(v87 + 240) = v442;
      *(v87 + 256) = v89;
      *(v87 + 272) = v444;
      *(v87 + 288) = v445;
      v90 = v439;
      *(v87 + 176) = v438;
      *(v87 + 192) = v90;
      v91 = v441;
      *(v87 + 208) = v440;
      *(v87 + 224) = v91;
      v92 = v435;
      *(v87 + 112) = v434;
      *(v87 + 128) = v92;
      v93 = v437;
      *(v87 + 144) = v436;
      *(v87 + 160) = v93;
      v94 = v431;
      *(v87 + 48) = v430;
      *(v87 + 64) = v94;
      v95 = v433;
      *(v87 + 80) = v432;
      *(v87 + 96) = v95;
      v96 = v407;
      *v407 = &unk_20C3723B0;
      *(v96 + 8) = v87;
      LODWORD(v392) = *MEMORY[0x277D043B0];
      v97 = *(v401 + 104);
      v401 += 104;
      v404 = v97;
      v97(v82);
      v98 = *(v409 - 1);
      v406 = *(v98 + 16);
      *&v407 = v98 + 16;
      (v406)(&v414, &v430);
      v405 = sub_20C36CE94();
      sub_20C36CE84();
      v99 = v77[16];
      v100 = v77[20];
      v388 = &v82[v77[24]];
      v412 = xmmword_20C3722B0;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v99], v393, v395);
      v101 = v400;
      (v400)(&v82[v100], v390, v398);
      v102 = swift_allocObject();
      v103 = *(&v407 + 1);
      *(v102 + 16) = v411;
      *(v102 + 24) = v103;
      v104 = v396;
      *(v102 + 32) = v410;
      *(v102 + 40) = v104;
      v105 = v443;
      *(v102 + 240) = v442;
      *(v102 + 256) = v105;
      *(v102 + 272) = v444;
      *(v102 + 288) = v445;
      v106 = v439;
      *(v102 + 176) = v438;
      *(v102 + 192) = v106;
      v107 = v441;
      *(v102 + 208) = v440;
      *(v102 + 224) = v107;
      v108 = v435;
      *(v102 + 112) = v434;
      *(v102 + 128) = v108;
      v109 = v437;
      *(v102 + 144) = v436;
      *(v102 + 160) = v109;
      v110 = v431;
      *(v102 + 48) = v430;
      *(v102 + 64) = v110;
      v111 = v433;
      *(v102 + 80) = v432;
      *(v102 + 96) = v111;
      v112 = v388;
      *v388 = &unk_20C3723C0;
      *(v112 + 1) = v102;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v113 = v77[16];
      v114 = v77[20];
      v115 = &v82[v77[24]];
      v412 = xmmword_20C3722C0;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v113], v393, v395);
      (v101)(&v82[v114], v390, v398);
      v116 = swift_allocObject();
      v117 = v410;
      v118 = *(&v407 + 1);
      *(v116 + 16) = v411;
      *(v116 + 24) = v118;
      v119 = v396;
      *(v116 + 32) = v117;
      *(v116 + 40) = v119;
      v120 = v443;
      *(v116 + 240) = v442;
      *(v116 + 256) = v120;
      *(v116 + 272) = v444;
      *(v116 + 288) = v445;
      v121 = v439;
      *(v116 + 176) = v438;
      *(v116 + 192) = v121;
      v122 = v441;
      *(v116 + 208) = v440;
      *(v116 + 224) = v122;
      v123 = v435;
      *(v116 + 112) = v434;
      *(v116 + 128) = v123;
      v124 = v437;
      *(v116 + 144) = v436;
      *(v116 + 160) = v124;
      v125 = v431;
      *(v116 + 48) = v430;
      *(v116 + 64) = v125;
      v126 = v433;
      *(v116 + 80) = v432;
      *(v116 + 96) = v126;
      *v115 = &unk_20C3723D0;
      *(v115 + 1) = v116;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v127 = v77[16];
      v128 = v77[20];
      v129 = &v82[v77[24]];
      v412 = xmmword_20C3722D0;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      v130 = v393;
      (v394)(&v82[v127], v393, v395);
      (v400)(&v82[v128], v390, v398);
      v131 = swift_allocObject();
      v132 = v410;
      *(v131 + 16) = v411;
      *(v131 + 24) = v118;
      *(v131 + 32) = v132;
      *(v131 + 40) = v119;
      v133 = v443;
      *(v131 + 240) = v442;
      *(v131 + 256) = v133;
      *(v131 + 272) = v444;
      *(v131 + 288) = v445;
      v134 = v439;
      *(v131 + 176) = v438;
      *(v131 + 192) = v134;
      v135 = v441;
      *(v131 + 208) = v440;
      *(v131 + 224) = v135;
      v136 = v435;
      *(v131 + 112) = v434;
      *(v131 + 128) = v136;
      v137 = v437;
      *(v131 + 144) = v436;
      *(v131 + 160) = v137;
      v138 = v431;
      *(v131 + 48) = v430;
      *(v131 + 64) = v138;
      v139 = v433;
      *(v131 + 80) = v432;
      *(v131 + 96) = v139;
      *v129 = &unk_20C3723E0;
      *(v129 + 1) = v131;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v140 = v77[16];
      v141 = v77[20];
      v142 = &v82[v77[24]];
      v412 = xmmword_20C3722E0;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v140], v130, v395);
      v143 = v390;
      (v400)(&v82[v141], v390, v398);
      v144 = swift_allocObject();
      v145 = v410;
      v146 = *(&v407 + 1);
      *(v144 + 16) = v411;
      *(v144 + 24) = v146;
      v147 = v396;
      *(v144 + 32) = v145;
      *(v144 + 40) = v147;
      v148 = v443;
      *(v144 + 240) = v442;
      *(v144 + 256) = v148;
      *(v144 + 272) = v444;
      *(v144 + 288) = v445;
      v149 = v439;
      *(v144 + 176) = v438;
      *(v144 + 192) = v149;
      v150 = v441;
      *(v144 + 208) = v440;
      *(v144 + 224) = v150;
      v151 = v435;
      *(v144 + 112) = v434;
      *(v144 + 128) = v151;
      v152 = v437;
      *(v144 + 144) = v436;
      *(v144 + 160) = v152;
      v153 = v431;
      *(v144 + 48) = v430;
      *(v144 + 64) = v153;
      v154 = v433;
      *(v144 + 80) = v432;
      *(v144 + 96) = v154;
      *v142 = &unk_20C3723F0;
      *(v142 + 1) = v144;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v155 = v77[16];
      v156 = v77[20];
      v157 = &v82[v77[24]];
      v412 = xmmword_20C3722F0;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v155], v393, v395);
      (v400)(&v82[v156], v143, v398);
      v158 = swift_allocObject();
      v159 = *(&v407 + 1);
      *(v158 + 16) = v411;
      *(v158 + 24) = v159;
      v160 = v396;
      *(v158 + 32) = v145;
      *(v158 + 40) = v160;
      v161 = v443;
      *(v158 + 240) = v442;
      *(v158 + 256) = v161;
      *(v158 + 272) = v444;
      *(v158 + 288) = v445;
      v162 = v439;
      *(v158 + 176) = v438;
      *(v158 + 192) = v162;
      v163 = v441;
      *(v158 + 208) = v440;
      *(v158 + 224) = v163;
      v164 = v435;
      *(v158 + 112) = v434;
      *(v158 + 128) = v164;
      v165 = v437;
      *(v158 + 144) = v436;
      *(v158 + 160) = v165;
      v166 = v431;
      *(v158 + 48) = v430;
      *(v158 + 64) = v166;
      v167 = v433;
      *(v158 + 80) = v432;
      *(v158 + 96) = v167;
      *v157 = &unk_20C372400;
      *(v157 + 1) = v158;
      v168 = v392;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v169 = v77[16];
      v170 = v77[20];
      v171 = &v82[v77[24]];
      v412 = xmmword_20C372300;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      v172 = v394;
      v173 = v395;
      (v394)(&v82[v169], v393, v395);
      (v400)(&v82[v170], v390, v398);
      v174 = swift_allocObject();
      v175 = *(&v407 + 1);
      *(v174 + 16) = v411;
      *(v174 + 24) = v175;
      v176 = v396;
      *(v174 + 32) = v410;
      *(v174 + 40) = v176;
      v177 = v443;
      *(v174 + 240) = v442;
      *(v174 + 256) = v177;
      *(v174 + 272) = v444;
      *(v174 + 288) = v445;
      v178 = v439;
      *(v174 + 176) = v438;
      *(v174 + 192) = v178;
      v179 = v441;
      *(v174 + 208) = v440;
      *(v174 + 224) = v179;
      v180 = v435;
      *(v174 + 112) = v434;
      *(v174 + 128) = v180;
      v181 = v437;
      *(v174 + 144) = v436;
      *(v174 + 160) = v181;
      v182 = v431;
      *(v174 + 48) = v430;
      *(v174 + 64) = v182;
      v183 = v433;
      *(v174 + 80) = v432;
      *(v174 + 96) = v183;
      *v171 = &unk_20C372410;
      *(v171 + 1) = v174;
      v404(v82, v168, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v184 = v77[16];
      v185 = v77[20];
      v186 = &v82[v77[24]];
      v412 = xmmword_20C372310;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      v172(&v82[v184], v393, v173);
      v187 = v398;
      (v400)(&v82[v185], v390, v398);
      v188 = swift_allocObject();
      v189 = v411;
      v190 = *(&v407 + 1);
      *(v188 + 16) = v411;
      *(v188 + 24) = v190;
      v191 = v396;
      *(v188 + 32) = v410;
      *(v188 + 40) = v191;
      v192 = v443;
      *(v188 + 240) = v442;
      *(v188 + 256) = v192;
      *(v188 + 272) = v444;
      *(v188 + 288) = v445;
      v193 = v439;
      *(v188 + 176) = v438;
      *(v188 + 192) = v193;
      v194 = v441;
      *(v188 + 208) = v440;
      *(v188 + 224) = v194;
      v195 = v435;
      *(v188 + 112) = v434;
      *(v188 + 128) = v195;
      v196 = v437;
      *(v188 + 144) = v436;
      *(v188 + 160) = v196;
      v197 = v431;
      *(v188 + 48) = v430;
      *(v188 + 64) = v197;
      v198 = v433;
      *(v188 + 80) = v432;
      *(v188 + 96) = v198;
      *v186 = &unk_20C372420;
      *(v186 + 1) = v188;
      v404(v82, v392, v402);
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v199 = v77[16];
      v200 = v77[20];
      v201 = &v82[v77[24]];
      v412 = xmmword_20C372320;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v199], v393, v395);
      (v400)(&v82[v200], v390, v187);
      v202 = swift_allocObject();
      v203 = *(&v407 + 1);
      *(v202 + 16) = v189;
      *(v202 + 24) = v203;
      v204 = v396;
      *(v202 + 32) = v410;
      *(v202 + 40) = v204;
      v205 = v443;
      *(v202 + 240) = v442;
      *(v202 + 256) = v205;
      *(v202 + 272) = v444;
      *(v202 + 288) = v445;
      v206 = v439;
      *(v202 + 176) = v438;
      *(v202 + 192) = v206;
      v207 = v441;
      *(v202 + 208) = v440;
      *(v202 + 224) = v207;
      v208 = v435;
      *(v202 + 112) = v434;
      *(v202 + 128) = v208;
      v209 = v437;
      *(v202 + 144) = v436;
      *(v202 + 160) = v209;
      v210 = v431;
      *(v202 + 48) = v430;
      *(v202 + 64) = v210;
      v211 = v433;
      *(v202 + 80) = v432;
      *(v202 + 96) = v211;
      *v201 = &unk_20C372430;
      *(v201 + 1) = v202;
      v212 = v404;
      v404(v82, v392, v402);
      v213 = v409;
      (v406)(&v414, &v430, v409);
      sub_20C36CE84();
      v214 = v77[16];
      v215 = v77[20];
      v216 = &v82[v77[24]];
      v412 = xmmword_20C372330;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v214], v393, v395);
      (v400)(&v82[v215], v390, v398);
      v217 = swift_allocObject();
      v218 = *(&v407 + 1);
      *(v217 + 16) = v411;
      *(v217 + 24) = v218;
      v219 = v396;
      *(v217 + 32) = v410;
      *(v217 + 40) = v219;
      v220 = v443;
      *(v217 + 240) = v442;
      *(v217 + 256) = v220;
      *(v217 + 272) = v444;
      *(v217 + 288) = v445;
      v221 = v439;
      *(v217 + 176) = v438;
      *(v217 + 192) = v221;
      v222 = v441;
      *(v217 + 208) = v440;
      *(v217 + 224) = v222;
      v223 = v435;
      *(v217 + 112) = v434;
      *(v217 + 128) = v223;
      v224 = v437;
      *(v217 + 144) = v436;
      *(v217 + 160) = v224;
      v225 = v431;
      *(v217 + 48) = v430;
      *(v217 + 64) = v225;
      v226 = v433;
      *(v217 + 80) = v432;
      *(v217 + 96) = v226;
      *v216 = &unk_20C372440;
      *(v216 + 1) = v217;
      v212(v82, v392, v402);
      v227 = v213;
      v228 = v406;
      (v406)(&v414, &v430, v227);
      sub_20C36CE84();
      v229 = v77[16];
      v230 = v77[20];
      v231 = &v82[v77[24]];
      v412 = xmmword_20C372340;
      v413 = 2;
      sub_20C36D0D4();
      sub_20C36CF04();
      (v394)(&v82[v229], v393, v395);
      (v400)(&v82[v230], v390, v398);
      v232 = swift_allocObject();
      v233 = *(&v407 + 1);
      *(v232 + 16) = v411;
      *(v232 + 24) = v233;
      v234 = v396;
      *(v232 + 32) = v410;
      *(v232 + 40) = v234;
      v235 = v443;
      *(v232 + 240) = v442;
      *(v232 + 256) = v235;
      *(v232 + 272) = v444;
      *(v232 + 288) = v445;
      v236 = v439;
      *(v232 + 176) = v438;
      *(v232 + 192) = v236;
      v237 = v441;
      *(v232 + 208) = v440;
      *(v232 + 224) = v237;
      v238 = v435;
      *(v232 + 112) = v434;
      *(v232 + 128) = v238;
      v239 = v437;
      *(v232 + 144) = v436;
      *(v232 + 160) = v239;
      v240 = v431;
      *(v232 + 48) = v430;
      *(v232 + 64) = v240;
      v241 = v433;
      *(v232 + 80) = v432;
      *(v232 + 96) = v241;
      *v231 = &unk_20C372450;
      *(v231 + 1) = v232;
      v404(v82, v392, v402);
      v228(&v414, &v430, v409);
LABEL_29:
      sub_20C36CE84();
      break;
    default:
      v47 = *v39;
      v48 = *(v409 + 3);
      v49 = *(v409 + 5);
      goto LABEL_17;
  }
}

uint64_t sub_20C31E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v5 = type metadata accessor for ForYouSummaryAction(0, a2, a4, a4);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_20C36CEF4();
  v4[6] = sub_20C36CEE4();
  v7 = sub_20C36CEC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_20C31E790, v7, v6);
}

uint64_t sub_20C31E790()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_20C36CCB4();
  *v1 = v0;
  v1[1] = sub_20C31E850;
  v3 = *(v0 + 40);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C31E850()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20C31E9D4, v6, v5);
}

uint64_t sub_20C31E9D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C31EA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v5 = type metadata accessor for ForYouSummaryAction(0, a2, a4, a4);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_20C36CEF4();
  v4[6] = sub_20C36CEE4();
  v7 = sub_20C36CEC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_20C31EB38, v7, v6);
}

uint64_t sub_20C31EB38()
{
  **(v0 + 40) = 0;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_20C36CCB4();
  *v1 = v0;
  v1[1] = sub_20C31E850;
  v3 = *(v0 + 40);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C31EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[40] = a6;
  v7[41] = a7;
  v7[38] = a4;
  v7[39] = a5;
  v7[37] = a1;
  v8 = type metadata accessor for ForYouSummaryAction(0, a4, a6, a4);
  v7[42] = v8;
  v7[43] = *(v8 - 8);
  v7[44] = swift_task_alloc();
  v28 = sub_20C36C394();
  v7[45] = v28;
  v27 = sub_20C36C344();
  v7[46] = v27;
  v26 = type metadata accessor for ForYouItemContext(255);
  v7[47] = v26;
  v25 = sub_20C36C354();
  v7[48] = v25;
  v24 = sub_20C36C364();
  v23 = sub_20C36C3A4();
  v9 = sub_20C36C374();
  v7[49] = v9;
  v10 = sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  v7[50] = v10;
  v11 = sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  v7[51] = v11;
  v12 = sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v7[52] = v12;
  v13 = sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v7[53] = v13;
  v14 = sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  v7[54] = v14;
  v15 = sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  v7[55] = v15;
  v16 = sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  v17 = sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  v18 = sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  v7[2] = v28;
  v7[56] = v18;
  v7[3] = a4;
  v7[4] = v27;
  v7[5] = v26;
  v7[6] = v25;
  v7[7] = v24;
  v7[8] = v23;
  v7[9] = v9;
  v7[10] = v10;
  v7[11] = a6;
  v7[12] = v11;
  v7[13] = v12;
  v7[14] = v13;
  v7[15] = v14;
  v7[16] = v15;
  v7[17] = v16;
  v7[18] = v17;
  v7[19] = v18;
  v19 = sub_20C36C2D4();
  v7[57] = v19;
  v20 = sub_20C36CFF4();
  v7[58] = v20;
  v7[59] = *(v20 - 8);
  v7[60] = swift_task_alloc();
  v7[61] = *(v19 - 8);
  v7[62] = swift_task_alloc();
  v7[63] = sub_20C36CEF4();
  v7[64] = sub_20C36CEE4();
  v7[65] = *(a2 + 240);
  v32 = (*MEMORY[0x277D09638] + MEMORY[0x277D09638]);
  v21 = swift_task_alloc();
  v7[66] = v21;
  *v21 = v7;
  v21[1] = sub_20C31F0B4;

  return v32(a3);
}

uint64_t sub_20C31F0B4()
{
  v2 = *v1;
  v2[67] = v0;

  v4 = sub_20C36CEC4();
  v2[68] = v4;
  v2[69] = v3;
  if (v0)
  {
    v5 = sub_20C31F95C;
  }

  else
  {
    v5 = sub_20C31F218;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C31F218()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  v2 = *(v0 + 320);
  *(v1 + 16) = *(v0 + 304);
  *(v1 + 32) = v2;
  v6 = (*MEMORY[0x277D09648] + MEMORY[0x277D09648]);
  v3 = swift_task_alloc();
  *(v0 + 568) = v3;
  v4 = sub_20C36CE94();
  *(v0 + 576) = v4;
  *v3 = v0;
  v3[1] = sub_20C31F314;

  return v6(v0 + 272, sub_20C328EEC, v1, v4);
}

void sub_20C31F314()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 552);
    v4 = *(v2 + 544);

    MEMORY[0x2822009F8](sub_20C31F450, v4, v3);
  }
}

uint64_t sub_20C31F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 480);
  v5 = *(v3 + 488);
  v6 = *(v3 + 456);
  v7 = *(v3 + 272);
  *(v3 + 280) = v7;
  swift_getWitnessTable();
  sub_20C36CF94();
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v9 = *(v3 + 472);
    v8 = *(v3 + 480);
    v10 = *(v3 + 464);

    (*(v9 + 8))(v8, v10);
LABEL_5:

    v17 = *(v3 + 8);

    return v17();
  }

  v11 = *(v3 + 400);
  v12 = *(v3 + 360);
  v13 = *(v3 + 320);
  v14 = *(v3 + 304);
  v22 = *(v3 + 384);
  v23 = *(v3 + 368);
  v25 = *(v3 + 424);
  v26 = *(v3 + 408);
  v24 = *(v3 + 440);
  (*(*(v3 + 488) + 32))(*(v3 + 496), *(v3 + 480), *(v3 + 456));
  v15 = sub_20C36C2C4();
  *(v3 + 160) = v12;
  *(v3 + 288) = v15;
  *(v3 + 168) = v14;
  *(v3 + 176) = v23;
  *(v3 + 192) = v22;
  *(v3 + 208) = v11;
  *(v3 + 216) = v13;
  *(v3 + 224) = v26;
  *(v3 + 240) = v25;
  *(v3 + 256) = v24;
  sub_20C36C284();
  sub_20C36CE94();
  swift_getWitnessTable();
  v16 = sub_20C36CFA4();

  if (v16)
  {
    (*(*(v3 + 488) + 8))(*(v3 + 496), *(v3 + 456));

    goto LABEL_5;
  }

  **(v3 + 352) = v7;
  swift_storeEnumTagMultiPayload();
  v19 = swift_task_alloc();
  *(v3 + 584) = v19;
  v20 = sub_20C36CCB4();
  *v19 = v3;
  v19[1] = sub_20C31F72C;
  v21 = *(v3 + 352);

  return MEMORY[0x282159B08](v21, v20);
}

uint64_t sub_20C31F72C()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 552);
  v6 = *(v1 + 544);

  return MEMORY[0x2822009F8](sub_20C31F8B0, v6, v5);
}

uint64_t sub_20C31F8B0()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[57];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20C31F95C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C31F9EC@<X0>(uint64_t *a9@<X8>)
{
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext(255);
  sub_20C36C354();
  sub_20C36C364();
  sub_20C36C3A4();
  sub_20C36C374();
  sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  sub_20C36C214();
  sub_20C36CE94();
  sub_20C36C2D4();
  swift_getWitnessTable();
  result = sub_20C36CE04();
  *a9 = result;
  return result;
}

uint64_t sub_20C31FD6C@<X0>(uint64_t a5@<X8>)
{
  sub_20C36C394();
  sub_20C36C344();
  type metadata accessor for ForYouItemContext(255);
  sub_20C36C354();
  sub_20C36C364();
  sub_20C36C3A4();
  sub_20C36C374();
  sub_20C317F68(&qword_27C79D900, MEMORY[0x277D09808], MEMORY[0x277D09800]);
  sub_20C317F68(&qword_27C79D908, MEMORY[0x277D09738], MEMORY[0x277D09730]);
  sub_20C317F68(&qword_27C79D910, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D918, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D920, type metadata accessor for ForYouItemContext, &protocol conformance descriptor for ForYouItemContext);
  sub_20C317F68(&qword_27C79D928, MEMORY[0x277D09748], MEMORY[0x277D09740]);
  sub_20C317F68(&qword_27C79E398, MEMORY[0x277D09798], MEMORY[0x277D09790]);
  sub_20C317F68(&qword_27C79E3A0, MEMORY[0x277D09818], MEMORY[0x277D09810]);
  sub_20C317F68(&qword_27C79D930, MEMORY[0x277D097A8], MEMORY[0x277D097A0]);
  sub_20C36C214();
  sub_20C36C204();
  v5 = sub_20C36C2D4();
  return (*(*(v5 - 8) + 56))(a5, 0, 1, v5);
}

uint64_t sub_20C3200D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_20C36CEF4();
  v3[3] = sub_20C36CEE4();
  v8 = (*(a2 + 208) + **(a2 + 208));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20C3201EC;

  return v8(a3);
}

uint64_t sub_20C3201EC()
{
  *(*v1 + 40) = v0;

  v3 = sub_20C36CEC4();
  if (v0)
  {
    v4 = sub_20C3203AC;
  }

  else
  {
    v4 = sub_20C320348;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20C320348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C3203AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C320410(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_20C36CEF4();
  v2[3] = sub_20C36CEE4();
  v6 = (*(a2 + 192) + **(a2 + 192));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C320518;

  return v6();
}

uint64_t sub_20C320518()
{

  v1 = sub_20C36CEC4();

  return MEMORY[0x2822009F8](sub_20C3295C0, v1, v0);
}

uint64_t sub_20C320654(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_20C36CEF4();
  v2[3] = sub_20C36CEE4();
  v6 = (*(a2 + 224) + **(a2 + 224));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20C320518;

  return v6();
}

uint64_t sub_20C32075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v5 = type metadata accessor for ForYouSummaryAction(0, a2, a4, a4);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_20C36CEF4();
  v4[6] = sub_20C36CEE4();
  v7 = sub_20C36CEC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_20C320854, v7, v6);
}

uint64_t sub_20C320854()
{
  **(v0 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_20C36CCB4();
  *v1 = v0;
  v1[1] = sub_20C32091C;
  v3 = *(v0 + 40);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_20C32091C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20C329598, v6, v5);
}

uint64_t sub_20C320AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 16) + **(a2 + 16));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C320C18;

  return v10(v5 + 7);
}

uint64_t sub_20C320C18()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C320D78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C320D78()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C320F50;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C320F50()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C321064, v4, v5);
  }

  return result;
}

uint64_t sub_20C321064()
{
  v15 = v0;
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = sub_20C36CD94();
      v10 = sub_20C359E04(v8, v9, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20C2F6000, v4, v5, "AchievementEnvironmentCache updated - refreshing. Updated cache %s ", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x20F2F83A0](v7, -1, -1);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    **(v0 + 120) = 0;
    swift_storeEnumTagMultiPayload();
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    v12 = sub_20C36CCB4();
    *v11 = v0;
    v11[1] = sub_20C3212B8;
    v13 = *(v0 + 120);

    return MEMORY[0x282159B08](v13, v12);
  }
}

uint64_t sub_20C3212B8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C32143C, v6, v5);
}

uint64_t sub_20C32143C(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C320F50;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C321518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 32) + **(a2 + 32));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C321690;

  return v10(v5 + 7);
}

uint64_t sub_20C321690()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C3217F0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3217F0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C3219C8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C3219C8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C321ADC, v4, v5);
  }

  return result;
}

uint64_t sub_20C321ADC()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Active Workout Plan Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 4;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C321CC4;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C321CC4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C321E48, v6, v5);
}

uint64_t sub_20C321E48(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C3219C8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C321F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 48) + **(a2 + 48));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C32209C;

  return v10(v5 + 7);
}

uint64_t sub_20C32209C()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C3221FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3221FC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C3223D4;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C3223D4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C3224E8, v4, v5);
  }

  return result;
}

uint64_t sub_20C3224E8()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Allowed Content Ratings Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C3226D0;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C3226D0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C322854, v6, v5);
}

uint64_t sub_20C322854(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C3223D4;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C322930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C322AA8;

  return v10(v5 + 7);
}

uint64_t sub_20C322AA8()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C322C08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C322C08()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C322DE0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C322DE0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C322EF4, v4, v5);
  }

  return result;
}

uint64_t sub_20C322EF4()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    v4 = sub_20C36CCB4();
    *v3 = v0;
    v3[1] = sub_20C323010;
    v5 = *(v0 + 120);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_20C323010()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C323194, v6, v5);
}

uint64_t sub_20C323194(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C322DE0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C323270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 80) + **(a2 + 80));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C3233E8;

  return v10(v5 + 7);
}

uint64_t sub_20C3233E8()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C323C7C;
  }

  else
  {
    v5 = sub_20C323548;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C323548()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C323720;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C323720()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C323834, v4, v5);
  }

  return result;
}

uint64_t sub_20C323834()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Catalog Deleted — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 3;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C323A1C;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C323A1C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C323BA0, v6, v5);
}

uint64_t sub_20C323BA0(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C323720;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C323C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C323CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 96) + **(a2 + 96));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C323E64;

  return v10(v5 + 7);
}

uint64_t sub_20C323E64()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C323FC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C323FC4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C32419C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C32419C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C3242B0, v4, v5);
  }

  return result;
}

uint64_t sub_20C3242B0()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Content Availability Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C324498;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C324498()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C32461C, v6, v5);
}

uint64_t sub_20C32461C(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C32419C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C3246F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 112) + **(a2 + 112));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C324870;

  return v10(v5 + 7);
}

uint64_t sub_20C324870()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C3249D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3249D0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C324BA8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C324BA8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C324CBC, v4, v5);
  }

  return result;
}

uint64_t sub_20C324CBC()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v4 = sub_20C36C3D4();
    __swift_project_value_buffer(v4, qword_2810ED6B8);
    v5 = sub_20C36C3B4();
    v6 = sub_20C36CFD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20C2F6000, v5, v6, "Network Conditions Updated — refreshing", v7, 2u);
      MEMORY[0x20F2F83A0](v7, -1, -1);
    }

    v8 = *(v0 + 120);

    *v8 = v1;
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    v10 = sub_20C36CCB4();
    *v9 = v0;
    v9[1] = sub_20C324EA0;
    v11 = *(v0 + 120);

    return MEMORY[0x282159B08](v11, v10);
  }
}

uint64_t sub_20C324EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C325024, v6, v5);
}

uint64_t sub_20C325024(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C324BA8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C325100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 128) + **(a2 + 128));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C325278;

  return v10(v5 + 7);
}

uint64_t sub_20C325278()
{
  v1 = *v0;

  v3 = sub_20C36CEC4();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return MEMORY[0x2822009F8](sub_20C3253BC, v3, v2);
}

uint64_t sub_20C3253BC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_20C325594;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_20C325594()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_20C3256A8, v4, v5);
  }

  return result;
}

uint64_t sub_20C3256A8()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Onboarding Survey Results Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 0;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C32588C;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C32588C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20C325A10, v6, v5);
}

uint64_t sub_20C325A10(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_20C325594;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_20C325AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 144) + **(a2 + 144));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C325C64;

  return v10(v5 + 7);
}

uint64_t sub_20C325C64()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C325DC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C325DC4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C325F9C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C325F9C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C3260B0, v4, v5);
  }

  return result;
}

uint64_t sub_20C3260B0()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Personalization Privacy Preference Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C326298;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C326298()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C32641C, v6, v5);
}

uint64_t sub_20C32641C(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C325F9C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C3264F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 160) + **(a2 + 160));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C326670;

  return v10(v5 + 7);
}

uint64_t sub_20C326670()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C3267D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3267D0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C3269A8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C3269A8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C326ABC, v4, v5);
  }

  return result;
}

uint64_t sub_20C326ABC()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Significant Time Change — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C326CA4;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C326CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C326E28, v6, v5);
}

uint64_t sub_20C326E28(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C3269A8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

uint64_t sub_20C326F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a1;
  v7 = type metadata accessor for ForYouSummaryAction(0, a3, a5, a4);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_20C36CEF4();
  v5[17] = sub_20C36CEE4();
  v10 = (*(a2 + 176) + **(a2 + 176));
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_20C32707C;

  return v10(v5 + 7);
}

uint64_t sub_20C32707C()
{
  v2 = *v1;
  v2[19] = v0;

  v4 = sub_20C36CEC4();
  v2[20] = v4;
  v2[21] = v3;
  if (v0)
  {
    v5 = sub_20C3295BC;
  }

  else
  {
    v5 = sub_20C3271DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20C3271DC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C36CEE4();
  v0[22] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_20C3273B4;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v5, v7);
}

uint64_t sub_20C3273B4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x2822009F8](sub_20C3274C8, v4, v5);
  }

  return result;
}

uint64_t sub_20C3274C8()
{
  if (*(v0 + 200) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v3 = sub_20C36C3D4();
    __swift_project_value_buffer(v3, qword_2810ED6B8);
    v4 = sub_20C36C3B4();
    v5 = sub_20C36CFD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20C2F6000, v4, v5, "Wheelchair Status Updated — refreshing", v6, 2u);
      MEMORY[0x20F2F83A0](v6, -1, -1);
    }

    v7 = *(v0 + 120);

    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    v9 = sub_20C36CCB4();
    *v8 = v0;
    v8[1] = sub_20C3276B0;
    v10 = *(v0 + 120);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C3276B0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C327834, v6, v5);
}

uint64_t sub_20C327834(uint64_t a1)
{
  v2 = sub_20C36CEE4();
  v1[22] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_20C3273B4;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 25, v2, v4);
}

char *sub_20C327928(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20C327948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C327948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E500, &unk_20C372740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20C327A70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v11 = a3 + *(type metadata accessor for ForYouSummaryState(0, &v30) + 68);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v14 = sub_20C36C3D4();
  __swift_project_value_buffer(v14, qword_2810ED6B8);
  sub_20C314340(v12, v13);
  sub_20C314340(a1, a2);
  v15 = sub_20C36C3B4();
  v16 = sub_20C36CFD4();
  sub_20C31439C(a1, a2);
  if (os_log_type_enabled(v15, v16))
  {
    v27 = v16;
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v17 = 136315394;
    v30 = v12;
    LOBYTE(v31) = v13;
    type metadata accessor for ForYouSummaryLoadState(0, a4, a6, v18);
    v19 = sub_20C36CD94();
    v21 = v12;
    v22 = sub_20C359E04(v19, v20, &v29);

    *(v17 + 4) = v22;
    v12 = v21;
    *(v17 + 12) = 2080;
    v30 = a1;
    LOBYTE(v31) = a2;
    sub_20C314340(a1, a2);
    v23 = sub_20C36CD94();
    v25 = sub_20C359E04(v23, v24, &v29);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_20C2F6000, v15, v27, "Transitioning from %s to %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F83A0](v28, -1, -1);
    MEMORY[0x20F2F83A0](v17, -1, -1);
  }

  else
  {

    sub_20C31439C(v12, v13);
  }

  sub_20C314340(a1, a2);
  result = sub_20C31439C(v12, v13);
  *v11 = a1;
  *(v11 + 8) = a2;
  return result;
}

uint64_t sub_20C327CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C320AA0(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C327DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C321518(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C327E6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C321F24(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C327F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C322930(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C327FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C323270(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C3280AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C323CEC(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C32816C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C3246F8(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C32822C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C325100(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C3282EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C325AEC(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C3283AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C3264F8(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C32846C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C326F04(a1, (v1 + 6), v4, v5, v6);
}

uint64_t sub_20C32852C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C32075C(a1, v4, v5, v6);
}

uint64_t sub_20C3285E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C320654(a1, v1 + 48);
}

uint64_t sub_20C3286A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C3295B8;

  return sub_20C320410(a1, v1 + 48);
}

uint64_t sub_20C328768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3287D0(uint64_t a1)
{
  v4 = *(type metadata accessor for ForYouItemContext(0) - 8);
  v5 = (*(v4 + 80) + 296) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C3295B8;

  return sub_20C3200D8(a1, v1 + 48, v1 + v5);
}

uint64_t sub_20C3288D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C328934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(sub_20C36C164() - 8);
  v9 = (*(v8 + 80) + 296) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C3295B8;

  return sub_20C31EBFC(a1, (v1 + 6), v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_20C328A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C31E698(a1, v4, v5, v6);
}

uint64_t sub_20C328AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C3295B8;

  return sub_20C31EA40(a1, v4, v5, v6);
}

unint64_t sub_20C328BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C79E3B8[0];
  if (!qword_27C79E3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C79E3B8);
  }

  return result;
}

uint64_t sub_20C328C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_20C328CE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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