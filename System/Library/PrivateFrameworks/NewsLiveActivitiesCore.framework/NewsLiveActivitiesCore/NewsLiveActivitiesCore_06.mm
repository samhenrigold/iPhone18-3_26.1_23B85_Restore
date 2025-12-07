uint64_t sub_219FBD2F0(uint64_t a1)
{
  v2 = sub_219FC10AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FBD32C()
{
  v1 = 0x656C746974;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x797469746E65;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_219FBD3A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219FC2504(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219FBD3D0(uint64_t a1)
{
  v2 = sub_219FC1100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBD40C(uint64_t a1)
{
  v2 = sub_219FC1100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219FBD448()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_219FBD488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219FBD564(uint64_t a1)
{
  v2 = sub_219FC1154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FBD5A0(uint64_t a1)
{
  v2 = sub_219FC1154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionUpdatePayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACE0, &qword_21A0EF850);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v29 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACE8, &qword_21A0EF858);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDACF0, &qword_21A0EF860);
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v27 - v12;
  v14 = *v1;
  v32 = v1[1];
  v33 = v14;
  v15 = v1[2];
  v27[4] = v1[3];
  v27[5] = v15;
  v16 = v1[4];
  v27[2] = v1[5];
  v27[3] = v16;
  v17 = v1[6];
  v27[0] = v1[7];
  v27[1] = v17;
  v18 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC10AC();
  sub_21A0E6EAC();
  if ((v18 & 1) == 0)
  {
    v38 = 0;
    sub_219FC1154();
    sub_21A0E6B2C();
    v37 = 0;
    v25 = v34;
    sub_21A0E6B7C();
    if (!v25)
    {
      v36 = 1;
      sub_21A0E6B7C();
      (*(v28 + 8))(v9, v6);
      return (*(v35 + 8))(v13, v10);
    }

    v22 = *(v28 + 8);
    v23 = v9;
    v24 = v6;
    goto LABEL_8;
  }

  v43 = 1;
  sub_219FC1100();
  v19 = v29;
  sub_21A0E6B2C();
  v42 = 0;
  v20 = v31;
  v21 = v34;
  sub_21A0E6B7C();
  if (v21)
  {
    v22 = *(v30 + 8);
    v23 = v19;
    v24 = v20;
LABEL_8:
    v22(v23, v24);
    return (*(v35 + 8))(v13, v10);
  }

  v41 = 1;
  sub_21A0E6B7C();
  v40 = 2;
  sub_21A0E6B7C();
  v39 = 3;
  sub_21A0E6B7C();
  (*(v30 + 8))(v19, v20);
  return (*(v35 + 8))(v13, v10);
}

uint64_t NationalElectionUpdatePayload.hash(into:)(uint64_t a1)
{
  if (*(v1 + 64))
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();

  return sub_21A0E626C();
}

uint64_t NationalElectionUpdatePayload.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_21A0E6DAC();
  if (v1)
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t NationalElectionUpdatePayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAD10, &qword_21A0EF868);
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAD18, &qword_21A0EF870);
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAD20, &qword_21A0EF878);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v55 - v15;
  v17 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_219FC10AC();
  v18 = v64;
  sub_21A0E6E7C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v19 = v63;
  v64 = v13;
  v20 = sub_21A0E6AFC();
  v21 = (2 * *(v20 + 16)) | 1;
  v66 = v20;
  v67 = v20 + 32;
  v68 = 0;
  v69 = v21;
  v22 = sub_219F82598();
  v23 = v16;
  if (v22 == 2 || v68 != v69 >> 1)
  {
    v26 = sub_21A0E68BC();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00, &qword_21A0EF880);
    *v28 = &type metadata for NationalElectionUpdatePayload;
    sub_21A0E6A2C();
    sub_21A0E68AC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v64 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  if (v22)
  {
    v70 = 1;
    sub_219FC1100();
    v24 = v7;
    sub_21A0E6A1C();
    v25 = v64;
    v33 = v19;
    v60 = v23;
    v70 = 0;
    v34 = v61;
    v35 = sub_21A0E6A9C();
    v58 = v38;
    v59 = v35;
    v70 = 1;
    v56 = sub_21A0E6A9C();
    v57 = v40;
    v70 = 2;
    v41 = v24;
    v42 = sub_21A0E6A9C();
    v45 = v44;
    v46 = v42;
    v70 = 3;
    v47 = sub_21A0E6A9C();
    v48 = *(v62 + 8);
    v62 = v47;
    v55 = v49;
    v48(v41, v34);
    v50 = v46;
    (*(v25 + 8))(v60, v12);
    swift_unknownObjectRelease();
    v51 = v55;
    v52 = v62;
    v53 = 1;
    v54 = v58;
  }

  else
  {
    v70 = 0;
    sub_219FC1154();
    v30 = v11;
    sub_21A0E6A1C();
    v31 = v12;
    v32 = v64;
    v33 = v19;
    v45 = v31;
    v36 = v23;
    v70 = 0;
    v37 = sub_21A0E6A9C();
    v54 = v39;
    v59 = v37;
    v70 = 1;
    v50 = v32 + 8;
    v56 = sub_21A0E6A9C();
    v57 = v43;
    (*(v60 + 1))(v30, v8);
    (*(v32 + 8))(v36, v45);
    swift_unknownObjectRelease();
    v53 = 0;
  }

  *v33 = v59;
  *(v33 + 8) = v54;
  *(v33 + 16) = v56;
  *(v33 + 24) = v57;
  *(v33 + 32) = v50;
  *(v33 + 40) = v45;
  *(v33 + 48) = v52;
  *(v33 + 56) = v51;
  *(v33 + 64) = v53;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_219FBE2C8()
{
  v1 = *(v0 + 64);
  sub_21A0E6DAC();
  if (v1)
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219FBE3B0(uint64_t a1)
{
  if (*(v1 + 64))
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();

  return sub_21A0E626C();
}

uint64_t sub_219FBE48C(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_21A0E6DAC();
  if (v2)
  {
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
  }

  else
  {
    MEMORY[0x21CED2490](0);
  }

  sub_21A0E626C();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

char *sub_219FBE5A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBE9F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE5C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBEB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE5E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBEBF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBED0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBEE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBEF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDA618, &unk_21A0F0A90, type metadata accessor for NewsLiveActivityAttributes);
  *v3 = result;
  return result;
}

char *sub_219FBE6A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF12C(a1, a2, a3, *v3, &qword_27CCDAE98, &qword_21A0F0A30, &type metadata for SecondaryEntity);
  *v3 = result;
  return result;
}

char *sub_219FBE6E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF12C(a1, a2, a3, *v3, &qword_27CCDAE68, &qword_21A0F09E8, &type metadata for PrimaryElectionData.Candidate);
  *v3 = result;
  return result;
}

void *sub_219FBE738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDAE38, &unk_21A0F09A8, _s10DiagnosticVMa);
  *v3 = result;
  return result;
}

void *sub_219FBE77C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE79C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF37C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE7BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDAE48, &qword_21A0F09C0, type metadata accessor for NewsLiveActivity);
  *v3 = result;
  return result;
}

void *sub_219FBE800(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDAEF0, &qword_21A0F0A88, type metadata accessor for NewsLiveActivityContent);
  *v3 = result;
  return result;
}

void *sub_219FBE844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDAE40, &qword_21A0F09B8, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
  *v3 = result;
  return result;
}

char *sub_219FBE888(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE8A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE8C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDA610, &unk_21A0EDFF0, type metadata accessor for RemoteAssetKey);
  *v3 = result;
  return result;
}

void *sub_219FBE90C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF6DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE92C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDA5F8, &qword_21A0FCE10, type metadata accessor for ActivityAsset);
  *v3 = result;
  return result;
}

char *sub_219FBE970(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_219FBE990(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBF930(a1, a2, a3, *v3, &qword_27CCDAE50, &unk_21A0F09C8, type metadata accessor for ActivityDiagnostic);
  *v3 = result;
  return result;
}

void *sub_219FBE9D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219FBFB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_219FBE9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA678, &unk_21A0EE9A0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_219FBEB00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEB0, &qword_21A0F0A48);
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

char *sub_219FBEBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA638, &unk_21A0EE020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_219FBED0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEC8, &qword_21A0F0A58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_219FBEE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEC0, &qword_21A0F91E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_219FBEF2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEB8, &qword_21A0F0A50);
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

char *sub_219FBF020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEA0, &qword_21A0F0A38);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_219FBF12C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_219FBF248(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA660, &unk_21A0F0A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9648, &qword_21A0EE050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_219FBF37C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA600, &qword_21A0EDFE0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_219FBF488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE88, &unk_21A0F0A10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_219FBF594(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE58, &qword_21A0F09D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE60, &qword_21A0F09E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_219FBF6DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE78, &qword_21A0F0A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE80, &qword_21A0F0A08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_219FBF824(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAE70, &unk_21A0F09F0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_219FBF930(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_219FBFB0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE0, &qword_21A0F0A78);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE8, &qword_21A0F0A80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE8, &qword_21A0F0A80) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_219FBFCFC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CED2D50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CED2D50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore13PrimaryEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

LABEL_9:
    if (v3 == 4)
    {
      if (v5 != 4)
      {
        return 0;
      }
    }

    else if (v5 == 4 || (sub_21A0AA7FC(v3, v5) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v7 = sub_21A0E6C5C();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore15SecondaryEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == v6)
      {
        v12 = v8;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v5 == 4)
    {
      if (v9 != 4)
      {
        return 0;
      }
    }

    else if (v9 == 4 || (sub_21A0AA7FC(v5, v9) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v10 = sub_21A0E6C5C();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore29NationalElectionUpdatePayloadO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v6;
  v7 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v7;
  v8 = a1[3];
  v23[2] = v16;
  v23[3] = v8;
  v23[0] = v14;
  v23[1] = v2;
  v26 = v5;
  v27 = v20;
  v28 = *(a2 + 48);
  v18 = *(a1 + 64);
  v22 = *(a2 + 64);
  v24 = *(a1 + 64);
  v29 = *(a2 + 64);
  v25 = v19[0];
  v9 = v7;
  if (v18)
  {
    if (v22)
    {
      *&v12 = *(&v17 + 1);
      *(&v12 + 1) = v17;
      if (v14 == v19[0] || (sub_21A0E6C5C()) && (v15 == v9 || (sub_21A0E6C5C()) && (v16 == v20 || (sub_21A0E6C5C()))
      {
        if (v12 != __PAIR128__(v21, *(&v21 + 1)))
        {
          goto LABEL_18;
        }

LABEL_17:
        sub_219FC2664(v19, v13);
        sub_219FC2664(&v14, v13);
        v10 = 1;
        goto LABEL_13;
      }
    }
  }

  else if (v22 & 1) == 0 && (v14 == v19[0] || (sub_21A0E6C5C()))
  {
    if (v15 != v9)
    {
LABEL_18:
      v10 = sub_21A0E6C5C();
      sub_219FC2664(v19, v13);
      sub_219FC2664(&v14, v13);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  sub_219FC2664(v19, v13);
  sub_219FC2664(&v14, v13);
  v10 = 0;
LABEL_13:
  sub_219F6409C(v23, &qword_27CCDAE90, &unk_21A0F0A20);
  return v10 & 1;
}

BOOL sub_219FC0164(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = sub_21A0E495C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8, &unk_21A0E9CB0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v32 - v19;
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v33 = v12;
  v21 = v9;
  v22 = *(a4(0) + 20);
  v23 = *(v17 + 48);
  sub_219F45500(a1 + v22, v20, &qword_27CCD97F0, &qword_21A0E97E0);
  v24 = a2 + v22;
  v25 = v21;
  sub_219F45500(v24, &v20[v23], &qword_27CCD97F0, &qword_21A0E97E0);
  v26 = *(v21 + 48);
  if (v26(v20, 1, v8) == 1)
  {
    if (v26(&v20[v23], 1, v8) == 1)
    {
      sub_219F6409C(v20, &qword_27CCD97F0, &qword_21A0E97E0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_219F45500(v20, v16, &qword_27CCD97F0, &qword_21A0E97E0);
  if (v26(&v20[v23], 1, v8) == 1)
  {
    (*(v21 + 8))(v16, v8);
LABEL_7:
    sub_219F6409C(v20, &qword_27CCD98F8, &unk_21A0E9CB0);
    return 0;
  }

  v28 = *(v21 + 32);
  v29 = v33;
  v28(v33, &v20[v23], v8);
  sub_219FB77F0(&qword_27CCD9900, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v30 = sub_21A0E61CC();
  v31 = *(v25 + 8);
  v31(v29, v8);
  v31(v16, v8);
  sub_219F6409C(v20, &qword_27CCD97F0, &qword_21A0E97E0);
  return (v30 & 1) != 0;
}

BOOL _s22NewsLiveActivitiesCore20NationalElectionDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8, &unk_21A0E9CB0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  if ((sub_219F795A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for PrimaryEntities(0);
  v18 = a1;
  v19 = a2;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  v32 = v18;
  sub_219F45500(v18 + v20, v16, &qword_27CCD97F0, &qword_21A0E97E0);
  v22 = v19 + v20;
  v23 = v19;
  sub_219F45500(v22, &v16[v21], &qword_27CCD97F0, &qword_21A0E97E0);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v21], 1, v4) == 1)
    {
      sub_219F6409C(v16, &qword_27CCD97F0, &qword_21A0E97E0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_219F45500(v16, v12, &qword_27CCD97F0, &qword_21A0E97E0);
  if (v24(&v16[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_219F6409C(v16, &qword_27CCD98F8, &unk_21A0E9CB0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v21], v4);
  sub_219FB77F0(&qword_27CCD9900, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v25 = sub_21A0E61CC();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  v23 = v19;
  sub_219F6409C(v16, &qword_27CCD97F0, &qword_21A0E97E0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v27 = type metadata accessor for NationalElectionData(0);
  v28 = v32;
  if (!sub_219FC0164((v32 + *(v27 + 20)), (v23 + *(v27 + 20)), sub_219F7737C, type metadata accessor for SecondaryEntities))
  {
    return 0;
  }

  return sub_219FC0164((v28 + *(v27 + 24)), (v23 + *(v27 + 24)), sub_219F7737C, type metadata accessor for SecondaryEntities);
}

BOOL _s22NewsLiveActivitiesCore28NationalElectionContentStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (!_s22NewsLiveActivitiesCore20NationalElectionDataV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for NationalElectionContentState(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 1);
  v7 = *(v5 + 3);
  v55 = *(v5 + 2);
  v56 = v7;
  v57 = v5[64];
  v8 = *(v5 + 1);
  v54[0] = *v5;
  v54[1] = v8;
  v9 = a2 + *(v4 + 20);
  v10 = *(v9 + 1);
  v11 = *(v9 + 3);
  v59 = *(v9 + 2);
  v60 = v11;
  v12 = *(v9 + 1);
  v58[0] = *v9;
  v58[1] = v12;
  v50 = v54[0];
  v51 = v6;
  v13 = *(v5 + 3);
  v52 = v55;
  v53 = v13;
  v61 = v9[64];
  v14 = v57;
  *&v49[7] = v58[0];
  *&v49[23] = v10;
  v15 = *(v9 + 3);
  *&v49[39] = v59;
  *&v49[55] = v15;
  v16 = v61;
  if (v57 == 255)
  {
    if (v61 != 255)
    {
      sub_219F45500(v54, &v39, &qword_27CCDABA0, &qword_21A0EF7C0);
      sub_219F45500(v58, &v39, &qword_27CCDABA0, &qword_21A0EF7C0);
      goto LABEL_10;
    }

    v19 = *(v5 + 1);
    v39 = *v5;
    v40 = v19;
    v20 = *(v5 + 3);
    v41 = *(v5 + 2);
    v42 = v20;
    v43 = -1;
    sub_219F45500(v54, &v34, &qword_27CCDABA0, &qword_21A0EF7C0);
    sub_219F45500(v58, &v34, &qword_27CCDABA0, &qword_21A0EF7C0);
    sub_219F6409C(&v39, &qword_27CCDABA0, &qword_21A0EF7C0);
    return 1;
  }

  v17 = *(v5 + 1);
  v39 = *v5;
  v40 = v17;
  v18 = *(v5 + 3);
  v41 = *(v5 + 2);
  v42 = v18;
  v43 = v57;
  v38 = v57;
  v36 = v41;
  v37 = v18;
  v34 = v39;
  v35 = v17;
  if (v61 == 255)
  {
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v29 = v39;
    v30 = v40;
    sub_219F45500(v54, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
    sub_219F45500(v58, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
    sub_219F45500(&v39, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
    sub_219FC269C(&v29);
LABEL_10:
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v43 = v14;
    v45 = *&v49[16];
    v46 = *&v49[32];
    *v47 = *&v49[48];
    *&v47[15] = *&v49[63];
    v44 = *v49;
    v48 = v16;
    sub_219F6409C(&v39, &qword_27CCDAEA8, &qword_21A0F0A40);
    return 0;
  }

  v21 = *(v9 + 1);
  v29 = *v9;
  v30 = v21;
  v22 = *(v9 + 3);
  v31 = *(v9 + 2);
  v32 = v22;
  v33 = v61;
  sub_219F45500(v54, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
  sub_219F45500(v58, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
  sub_219F45500(&v39, v27, &qword_27CCDABA0, &qword_21A0EF7C0);
  updated = _s22NewsLiveActivitiesCore29NationalElectionUpdatePayloadO2eeoiySbAC_ACtFZ_0(&v34, &v29);
  v25[2] = v31;
  v25[3] = v32;
  v26 = v33;
  v25[0] = v29;
  v25[1] = v30;
  sub_219FC269C(v25);
  v27[2] = v36;
  v27[3] = v37;
  v28 = v38;
  v27[0] = v34;
  v27[1] = v35;
  sub_219FC269C(v27);
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v14;
  sub_219F6409C(&v29, &qword_27CCDABA0, &qword_21A0EF7C0);
  return (updated & 1) != 0;
}

uint64_t sub_219FC0BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FC0C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219FC0CC8()
{
  result = qword_27CCDAC00;
  if (!qword_27CCDAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC00);
  }

  return result;
}

unint64_t sub_219FC0D1C()
{
  result = qword_27CCDAC38;
  if (!qword_27CCDAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC38);
  }

  return result;
}

unint64_t sub_219FC0D70()
{
  result = qword_27CCDAC50;
  if (!qword_27CCDAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC50);
  }

  return result;
}

uint64_t sub_219FC0DC4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAC40, &qword_21A0EF808);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219FC0E3C()
{
  result = qword_27CCDAC68;
  if (!qword_27CCDAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC68);
  }

  return result;
}

unint64_t sub_219FC0E90()
{
  result = qword_27CCDAC78;
  if (!qword_27CCDAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC78);
  }

  return result;
}

unint64_t sub_219FC0EE4()
{
  result = qword_27CCDAC90;
  if (!qword_27CCDAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAC90);
  }

  return result;
}

uint64_t sub_219FC0F38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAC98, &qword_21A0EF830);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219FC0FB0()
{
  result = qword_27CCDACA8;
  if (!qword_27CCDACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDACA8);
  }

  return result;
}

unint64_t sub_219FC1004()
{
  result = qword_27CCDACC0;
  if (!qword_27CCDACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDACC0);
  }

  return result;
}

unint64_t sub_219FC1058()
{
  result = qword_27CCDACD0;
  if (!qword_27CCDACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDACD0);
  }

  return result;
}

unint64_t sub_219FC10AC()
{
  result = qword_27CCDACF8;
  if (!qword_27CCDACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDACF8);
  }

  return result;
}

unint64_t sub_219FC1100()
{
  result = qword_27CCDAD00;
  if (!qword_27CCDAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD00);
  }

  return result;
}

unint64_t sub_219FC1154()
{
  result = qword_27CCDAD08;
  if (!qword_27CCDAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD08);
  }

  return result;
}

unint64_t sub_219FC1284()
{
  result = qword_27CCDAD40;
  if (!qword_27CCDAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD40);
  }

  return result;
}

unint64_t sub_219FC1324()
{
  result = qword_27CCDAD50;
  if (!qword_27CCDAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD50);
  }

  return result;
}

unint64_t sub_219FC137C()
{
  result = qword_27CCDAD58;
  if (!qword_27CCDAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD58);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_219FC145C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_219FC14A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_18Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_19Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_219FC16A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_219FC16E8(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_219FC176C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219FC17B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for ActivityFontLeading(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityFontLeading(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_219FC19FC()
{
  result = qword_27CCDAD60;
  if (!qword_27CCDAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD60);
  }

  return result;
}

unint64_t sub_219FC1A54()
{
  result = qword_27CCDAD68;
  if (!qword_27CCDAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD68);
  }

  return result;
}

unint64_t sub_219FC1AAC()
{
  result = qword_27CCDAD70;
  if (!qword_27CCDAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD70);
  }

  return result;
}

unint64_t sub_219FC1B04()
{
  result = qword_27CCDAD78;
  if (!qword_27CCDAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD78);
  }

  return result;
}

unint64_t sub_219FC1B5C()
{
  result = qword_27CCDAD80;
  if (!qword_27CCDAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD80);
  }

  return result;
}

unint64_t sub_219FC1BB4()
{
  result = qword_27CCDAD88;
  if (!qword_27CCDAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD88);
  }

  return result;
}

unint64_t sub_219FC1C0C()
{
  result = qword_27CCDAD90;
  if (!qword_27CCDAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD90);
  }

  return result;
}

unint64_t sub_219FC1C64()
{
  result = qword_27CCDAD98;
  if (!qword_27CCDAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAD98);
  }

  return result;
}

unint64_t sub_219FC1CBC()
{
  result = qword_27CCDADA0;
  if (!qword_27CCDADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADA0);
  }

  return result;
}

unint64_t sub_219FC1D14()
{
  result = qword_27CCDADA8;
  if (!qword_27CCDADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADA8);
  }

  return result;
}

unint64_t sub_219FC1D6C()
{
  result = qword_27CCDADB0;
  if (!qword_27CCDADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADB0);
  }

  return result;
}

unint64_t sub_219FC1DC4()
{
  result = qword_27CCDADB8;
  if (!qword_27CCDADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADB8);
  }

  return result;
}

unint64_t sub_219FC1E1C()
{
  result = qword_27CCDADC0;
  if (!qword_27CCDADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADC0);
  }

  return result;
}

unint64_t sub_219FC1E74()
{
  result = qword_27CCDADC8;
  if (!qword_27CCDADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADC8);
  }

  return result;
}

unint64_t sub_219FC1ECC()
{
  result = qword_27CCDADD0;
  if (!qword_27CCDADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADD0);
  }

  return result;
}

unint64_t sub_219FC1F24()
{
  result = qword_27CCDADD8;
  if (!qword_27CCDADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADD8);
  }

  return result;
}

unint64_t sub_219FC1F7C()
{
  result = qword_27CCDADE0;
  if (!qword_27CCDADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADE0);
  }

  return result;
}

unint64_t sub_219FC1FD4()
{
  result = qword_27CCDADE8;
  if (!qword_27CCDADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADE8);
  }

  return result;
}

unint64_t sub_219FC202C()
{
  result = qword_27CCDADF0;
  if (!qword_27CCDADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADF0);
  }

  return result;
}

unint64_t sub_219FC2084()
{
  result = qword_27CCDADF8;
  if (!qword_27CCDADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDADF8);
  }

  return result;
}

unint64_t sub_219FC20DC()
{
  result = qword_27CCDAE00;
  if (!qword_27CCDAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE00);
  }

  return result;
}

unint64_t sub_219FC2134()
{
  result = qword_27CCDAE08;
  if (!qword_27CCDAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE08);
  }

  return result;
}

unint64_t sub_219FC218C()
{
  result = qword_27CCDAE10;
  if (!qword_27CCDAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE10);
  }

  return result;
}

unint64_t sub_219FC21E4()
{
  result = qword_27CCDAE18;
  if (!qword_27CCDAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE18);
  }

  return result;
}

unint64_t sub_219FC223C()
{
  result = qword_27CCDAE20;
  if (!qword_27CCDAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE20);
  }

  return result;
}

unint64_t sub_219FC2294()
{
  result = qword_27CCDAE28;
  if (!qword_27CCDAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE28);
  }

  return result;
}

unint64_t sub_219FC22EC()
{
  result = qword_27CCDAE30;
  if (!qword_27CCDAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAE30);
  }

  return result;
}

uint64_t sub_219FC2340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x457972616D697270 && a2 == 0xEF7365697469746ELL;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021A109F60 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021A109F80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

unint64_t sub_219FC246C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A0E6A0C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219FC24B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A0E6A0C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219FC2504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_219FC26CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActivityDirectoryKey.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750, &unk_21A0F0AA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  v14[2] = v10;
  v14[3] = v11;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758, &qword_21A0EE180);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

unint64_t sub_219FC293C()
{
  result = qword_27CCDA760;
  if (!qword_27CCDA760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA758, &qword_21A0EE180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA760);
  }

  return result;
}

uint64_t sub_219FC29A0(uint64_t a1)
{
  v2 = sub_21A0E6E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750, &unk_21A0F0AA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v15[2] = v11;
  v15[3] = v12;
  v15[1] = MEMORY[0x277D84F90];
  v13 = sub_21A0E6E1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758, &qword_21A0EE180);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t ActivityDirectoryKey.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ActivityDirectoryKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A0E6C5C();
  }
}

uint64_t ActivityDirectoryKey.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

unint64_t sub_219FC2C20()
{
  result = qword_280C87AF0;
  if (!qword_280C87AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C87AF0);
  }

  return result;
}

uint64_t NationalElectionRaceTheme.entities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NationalElectionRaceTheme.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NationalElectionRaceTheme.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_219FC2D94(__int128 *a1, uint64_t a2)
{
  v156 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158, &unk_21A0F1000);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v140 = &v135 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F98, &unk_21A0EE110);
  MEMORY[0x28223BE20](v143, v7);
  v142 = &v135 - v8;
  v9 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v150 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v152, v12);
  v147 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A0E481C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v141 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v149 = &v135 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v162 = &v135 - v23;
  v24 = type metadata accessor for URLAssetConfiguration(0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v151 = &v135 - v30;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F88, &qword_21A0F1010);
  MEMORY[0x28223BE20](v157, v31);
  v161 = &v135 - v32;
  v173 = type metadata accessor for ActivityAsset(0);
  v33 = *(v173 - 8);
  v35 = MEMORY[0x28223BE20](v173, v34);
  v37 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v135 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v160 = &v135 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v135 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFD8, &qword_21A0F1018);
  v50 = MEMORY[0x28223BE20](v48 - 8, v49);
  v171 = &v135 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v176 = &v135 - v53;
  v54 = type metadata accessor for ElectionEntityTheme(0);
  result = MEMORY[0x28223BE20](v54, v55);
  v175 = &v135 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = *(a1 + 4);
  v59 = a1[1];
  v183 = *a1;
  v184 = v59;
  v60 = *v2;
  v167 = *(*v2 + 16);
  if (!v167)
  {
    return 1;
  }

  v154 = v37;
  v61 = 0;
  v148 = 0;
  v62 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v169 = *(result + 28);
  v168 = v60 + v62;
  v145 = (v15 + 32);
  v138 = (v15 + 16);
  v144 = (v15 + 8);
  v137 = (v15 + 48);
  v166 = (v33 + 56);
  v165 = (v33 + 48);
  v63 = v147;
  v155 = v14;
  v146 = v28;
  v64 = v161;
  v65 = v173;
  v66 = v171;
  v170 = v41;
  v153 = v47;
  v164 = v57;
  v163 = v60;
  while (v61 < *(v60 + 16))
  {
    v67 = *(v57 + 72);
    v174 = v61;
    v68 = v175;
    sub_219FC6D70(v168 + v67 * v61, v175, type metadata accessor for ElectionEntityTheme);
    sub_219F45500(v68 + v169, v47, &qword_27CCD98D8, &unk_21A0EA100);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
    if ((*(*(v69 - 8) + 48))(v47, 1, v69) == 1)
    {
      sub_219F6409C(v47, &qword_27CCD98D8, &unk_21A0EA100);
      v70 = 1;
    }

    else
    {
      sub_219FC6D70(v47, v41, type metadata accessor for ActivityAsset);
      v71 = v157;
      *(v64 + *(v157 + 32)) = MEMORY[0x277D84F90];
      *(v64 + 32) = v185;
      v72 = v184;
      *v64 = v183;
      *(v64 + 16) = v72;
      v73 = v64 + *(v71 + 28);
      sub_219FC6D70(v41, v73, type metadata accessor for ActivityAsset);
      sub_219F63900(&v183, &v181);
      if (qword_27CCD9198 != -1)
      {
        swift_once();
      }

      v74 = qword_27CCDBDB0;

      sub_219FC6DD8(v41, type metadata accessor for ActivityAsset);
      *(v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F90, &qword_21A0F1020) + 28)) = v74;
      sub_219F8B4D8(v64);
      v75 = v160;
      sub_219FC6D70(v73, v160, type metadata accessor for ActivityAsset);
      sub_219F6409C(v64, &qword_27CCD9F88, &qword_21A0F1010);
      v76 = v154;
      sub_219FC6D70(v75, v154, type metadata accessor for ActivityAsset);
      v65 = v173;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v151;
        sub_219FC6E38(v76, v151, type metadata accessor for URLAssetConfiguration);
        sub_219FC6D70(v77, v63, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v78 = v150;
          sub_219FC6E38(v63, v150, type metadata accessor for URLAssetConfiguration.Recipe);
          v79 = *v138;
          v80 = v141;
          (*v138)(v141, v78, v14);
          v81 = v143;
          v82 = v142;
          *&v142[*(v143 + 32)] = MEMORY[0x277D84F90];
          *(v82 + 32) = v185;
          v83 = v184;
          *v82 = v183;
          *(v82 + 16) = v83;
          v84 = v82 + *(v81 + 28);
          v79(v84, v80, v14);
          v85 = qword_27CCDBDB0;
          sub_219F63900(&v183, &v181);
          v86 = *v144;

          v86(v80, v14);
          *(v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FA0, &qword_21A0EB680) + 28)) = v85;
          sub_219F8B0E8(v82);
          v79(v149, v84, v14);
          sub_219F6409C(v82, &qword_27CCD9F98, &unk_21A0EE110);
          v181 = sub_21A0E472C();
          v182 = v87;
          v158 = sub_219F3F130();
          v88 = sub_21A0E676C();
          v90 = v89;

          v41 = v170;
          v136 = v86;
          if (v90)
          {
            v91 = v148;
            v92 = v88;
          }

          else
          {
            v92 = sub_21A0E472C();
            v90 = v95;
            v91 = v148;
          }

          v172 = v92;
          v96 = sub_219FA5878(v92, v90);
          v97 = sub_21A07B384(MEMORY[0x277D84F90]);
          v98 = v90;
          v100 = MEMORY[0x28223BE20](v97, v99);
          v133 = v78;
          v134 = &v183;
          v101 = sub_219FA5FA4(v100, sub_219FAC098, v132, v96);
          v148 = v91;

          v102 = v101 + 64;
          v103 = 1 << *(v101 + 32);
          if (v103 < 64)
          {
            v104 = ~(-1 << v103);
          }

          else
          {
            v104 = -1;
          }

          v105 = v104 & *(v101 + 64);
          v106 = (v103 + 63) >> 6;

          v159 = v101;

          v107 = 0;
          v139 = v98;
          v108 = v98;
          v109 = v162;
          if (v105)
          {
            while (1)
            {
              v110 = v107;
LABEL_26:
              v111 = __clz(__rbit64(v105));
              v105 &= v105 - 1;
              v112 = (v110 << 10) | (16 * v111);
              v113 = (*(v159 + 48) + v112);
              v115 = *v113;
              v114 = v113[1];
              v116 = (*(v159 + 56) + v112);
              v117 = *v116;
              v118 = v116[1];
              v181 = 4203301;
              v182 = 0xE300000000000000;

              MEMORY[0x21CED1980](v115, v114);
              MEMORY[0x21CED1980](64, 0xE100000000000000);
              v119 = v181;
              v120 = v182;
              v181 = v172;
              v182 = v108;
              v179 = v119;
              v180 = v120;
              v177 = v117;
              v178 = v118;
              v133 = v158;
              v134 = v158;
              v132[1] = v158;
              v132[0] = MEMORY[0x277D837D0];
              v172 = sub_21A0E675C();
              v122 = v121;

              v108 = v122;
              v14 = v155;
              v109 = v162;
              v41 = v170;
              if (!v105)
              {
                goto LABEL_22;
              }
            }
          }

          while (1)
          {
LABEL_22:
            v110 = v107 + 1;
            if (__OFADD__(v107, 1))
            {
              __break(1u);
              goto LABEL_44;
            }

            if (v110 >= v106)
            {
              break;
            }

            v105 = *(v102 + 8 * v110);
            ++v107;
            if (v105)
            {
              v107 = v110;
              goto LABEL_26;
            }
          }

          v123 = v140;
          sub_21A0E47CC();

          v124 = *v137;
          if ((*v137)(v123, 1, v14) == 1)
          {
            v93 = *v145;
            (*v145)(v109, v149, v14);
            v125 = v124(v123, 1, v14);
            v126 = v150;
            v63 = v147;
            v127 = v160;
            if (v125 != 1)
            {
              sub_219F6409C(v123, &unk_27CCDA158, &unk_21A0F1000);
            }

            v128 = v151;
            v129 = v126;
          }

          else
          {
            v136(v149, v14);
            v93 = *v145;
            (*v145)(v109, v123, v14);
            v129 = v150;
            v63 = v147;
            v128 = v151;
            v127 = v160;
          }

          sub_219FC6DD8(v129, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_219FC6DD8(v128, type metadata accessor for URLAssetConfiguration);
          sub_219FC6DD8(v127, type metadata accessor for ActivityAsset);
          v94 = v162;
        }

        else
        {
          sub_219FC6DD8(v77, type metadata accessor for URLAssetConfiguration);
          sub_219FC6DD8(v160, type metadata accessor for ActivityAsset);
          v93 = *v145;
          v94 = v162;
          (*v145)(v162, v63, v14);
          v41 = v170;
        }

        v93(v176, v94, v14);
        swift_storeEnumTagMultiPayload();
        v65 = v173;
        swift_storeEnumTagMultiPayload();
        v28 = v146;
        v64 = v161;
      }

      else
      {
        sub_219FC6DD8(v76, type metadata accessor for ActivityAsset);
        sub_219FC6E38(v75, v176, type metadata accessor for ActivityAsset);
        v41 = v170;
      }

      v47 = v153;
      v66 = v171;
      sub_219F6409C(v153, &qword_27CCD98D0, &unk_21A0E9C90);
      v70 = 0;
    }

    v130 = v176;
    (*v166)(v176, v70, 1, v65);
    sub_219F45500(v130, v66, &qword_27CCDAFD8, &qword_21A0F1018);
    if ((*v165)(v66, 1, v65) == 1)
    {
      sub_219F6409C(v176, &qword_27CCDAFD8, &qword_21A0F1018);
      sub_219FC6DD8(v175, type metadata accessor for ElectionEntityTheme);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_219FC6E38(v66, v28, type metadata accessor for URLAssetConfiguration);
      v131 = sub_21A0015D0(v28);
      sub_219FC6DD8(v28, type metadata accessor for URLAssetConfiguration);
      sub_219F6409C(v176, &qword_27CCDAFD8, &qword_21A0F1018);
      sub_219FC6DD8(v175, type metadata accessor for ElectionEntityTheme);
      if (!v131)
      {
        return 0;
      }

      v64 = v161;
      v65 = v173;
      v66 = v171;
    }

    else
    {
      sub_219F6409C(v176, &qword_27CCDAFD8, &qword_21A0F1018);
      sub_219FC6DD8(v175, type metadata accessor for ElectionEntityTheme);
      result = sub_219FC6DD8(v66, type metadata accessor for ActivityAsset);
    }

    v61 = v174 + 1;
    v57 = v164;
    v60 = v163;
    if (v174 + 1 == v167)
    {
      return 1;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

BOOL static NationalElectionRaceTheme.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (sub_219F75C08(*a1, *a2) && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21A0E6C5C() & 1) != 0))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219FC3FC0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x756F436C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365697469746E65;
  }
}

uint64_t sub_219FC4018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219FC6A58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219FC4040(uint64_t a1)
{
  v2 = sub_219FC62B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FC407C(uint64_t a1)
{
  v2 = sub_219FC62B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NationalElectionRaceTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEF8, &qword_21A0F0BB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v13[1] = v1[2];
  v13[2] = v9;
  v13[0] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC62B0();

  sub_21A0E6EAC();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAF08, &qword_21A0F0BB8);
  sub_219FC6350(&qword_27CCDAF10, &qword_27CCDAF18, &protocol conformance descriptor for ElectionEntityTheme, MEMORY[0x277D83948]);
  sub_21A0E6BBC();

  if (!v2)
  {
    v15 = 1;
    sub_21A0E6B7C();
    v14 = 2;
    sub_21A0E6BAC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t NationalElectionRaceTheme.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_219F6B0E4(a1, v2);
  sub_21A0E626C();
  return MEMORY[0x21CED2490](v3);
}

uint64_t NationalElectionRaceTheme.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_21A0E6DAC();
  sub_219F6B0E4(v4, v1);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v2);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionRaceTheme.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAF20, &qword_21A0F0BC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC62B0();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAF08, &qword_21A0F0BB8);
  v22 = 0;
  sub_219FC6350(&qword_27CCDAF28, &qword_27CCDAF30, &protocol conformance descriptor for ElectionEntityTheme, MEMORY[0x277D83978]);
  sub_21A0E6ADC();
  v19 = a2;
  v10 = v23;
  v21 = 1;
  v11 = sub_21A0E6A9C();
  v18 = v12;
  v20 = 2;
  v13 = sub_21A0E6ACC();
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  v14 = v19;
  *v19 = v10;
  v14[1] = v11;
  v14[2] = v15;
  v14[3] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219FC465C()
{
  v1 = *v0;
  v2 = v0[3];
  sub_21A0E6DAC();
  sub_219F6B0E4(v4, v1);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v2);
  return sub_21A0E6DFC();
}

uint64_t sub_219FC46D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_219F6B0E4(a1, v2);
  sub_21A0E626C();
  return MEMORY[0x21CED2490](v3);
}

uint64_t sub_219FC4724(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_21A0E6DAC();
  sub_219F6B0E4(v5, v2);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v3);
  return sub_21A0E6DFC();
}

BOOL sub_219FC47C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (sub_219F75C08(*a1, *a2) && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_21A0E6C5C() & 1) != 0))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ElectionEntityTheme.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ElectionEntityTheme.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ElectionEntityTheme.shortName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ElectionEntityTheme.shortName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ElectionEntityTheme.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ElectionEntityTheme.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ElectionEntityTheme.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ElectionEntityTheme(0) + 28);

  return sub_219FC63EC(a1, v3);
}

uint64_t ElectionEntityTheme.party.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ElectionEntityTheme(0) + 32);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_219FB63A4(v12, v11);
}

__n128 ElectionEntityTheme.party.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ElectionEntityTheme(0) + 32);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_219FB63DC(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

__n128 ElectionEntityTheme.init(id:shortName:name:thumbnail:party:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for ElectionEntityTheme(0);
  v18 = *(v17 + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  sub_219FC63EC(a7, &a9[v18]);
  v20 = &a9[*(v17 + 32)];
  v21 = *(a8 + 48);
  *(v20 + 2) = *(a8 + 32);
  *(v20 + 3) = v21;
  *(v20 + 4) = *(a8 + 64);
  *(v20 + 10) = *(a8 + 80);
  result = *a8;
  v23 = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 1) = v23;
  return result;
}

uint64_t sub_219FC4D04()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  v4 = 0x69616E626D756874;
  if (v1 != 3)
  {
    v4 = 0x7974726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E74726F6873;
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

uint64_t sub_219FC4D94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219FC6B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219FC4DBC(uint64_t a1)
{
  v2 = sub_219FC645C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219FC4DF8(uint64_t a1)
{
  v2 = sub_219FC645C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectionEntityTheme.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAF38, &unk_21A0F0BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC645C();
  sub_21A0E6EAC();
  LOBYTE(v25[0]) = 0;
  sub_21A0E6B7C();
  if (!v2)
  {
    LOBYTE(v25[0]) = 1;
    sub_21A0E6B3C();
    LOBYTE(v25[0]) = 2;
    sub_21A0E6B7C();
    v10 = type metadata accessor for ElectionEntityTheme(0);
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
    sub_219FC6504(&qword_27CCDAF48, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6B6C();
    v11 = v3 + *(v10 + 32);
    v12 = *(v11 + 48);
    v13 = *(v11 + 16);
    v26 = *(v11 + 32);
    v27 = v12;
    v14 = *(v11 + 48);
    v28 = *(v11 + 64);
    v15 = *(v11 + 16);
    v25[0] = *v11;
    v25[1] = v15;
    v21 = v26;
    v22 = v14;
    v23 = *(v11 + 64);
    v29 = *(v11 + 80);
    v24 = *(v11 + 80);
    v19 = v25[0];
    v20 = v13;
    v30 = 4;
    sub_219FB63A4(v25, v17);
    sub_219FC64B0();
    sub_21A0E6BBC();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    sub_219FB63DC(v17);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ElectionEntityTheme.hash(into:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v29 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - v13;
  sub_21A0E626C();
  if (*(v1 + 24))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  sub_21A0E626C();
  v15 = type metadata accessor for ElectionEntityTheme(0);
  sub_219F45500(v1 + *(v15 + 28), v14, &qword_27CCD98D8, &unk_21A0EA100);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v27 = v15;
    v16 = v29;
    sub_219F73094(v14, v29);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *(v16 + *(v3 + 28)));
    v17 = *(v16 + *(v3 + 32));
    MEMORY[0x21CED2490](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v20 = *(v28 + 72);
      do
      {
        sub_219F45500(v19, v6, &qword_27CCD98C8, &unk_21A0EA440);
        v21 = sub_219F73104();
        sub_219FC5A20(a1, v3, v21);
        sub_219F6409C(v6, &qword_27CCD98C8, &unk_21A0EA440);
        v19 += v20;
        --v18;
      }

      while (v18);
    }

    sub_219F6409C(v29, &qword_27CCD98D0, &unk_21A0E9C90);
    v15 = v27;
  }

  v22 = (v1 + *(v15 + 32));
  v23 = v22[3];
  v32 = v22[2];
  v33[0] = v23;
  *(v33 + 13) = *(v22 + 61);
  v24 = v22[1];
  v30 = *v22;
  v31 = v24;
  ActivityFill.hash(into:)(a1);
  return sub_21A0E626C();
}

uint64_t ElectionEntityTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ElectionEntityTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ElectionEntityTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAF68, &qword_21A0F0BD8);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ElectionEntityTheme(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 28);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v18 = *(*(v17 - 8) + 56);
  v36 = v16;
  v19 = v15;
  v18(v15 + v16, 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219FC645C();
  v34 = v10;
  v20 = v35;
  sub_21A0E6E7C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F6409C(v15 + v36, &qword_27CCD98D8, &unk_21A0EA100);
  }

  else
  {
    v21 = v32;
    v22 = v33;
    LOBYTE(v37) = 0;
    *v19 = sub_21A0E6A9C();
    v19[1] = v23;
    v35 = v23;
    LOBYTE(v37) = 1;
    v19[2] = sub_21A0E6A5C();
    v19[3] = v24;
    v30 = v24;
    LOBYTE(v37) = 2;
    v19[4] = sub_21A0E6A9C();
    v19[5] = v25;
    LOBYTE(v37) = 3;
    sub_219FC6504(&qword_27CCDAF70, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6A8C();
    sub_219FC63EC(v6, v19 + v36);
    v43 = 4;
    sub_219FC65D8();
    sub_21A0E6ADC();
    (*(v21 + 8))(v34, v22);
    v26 = v19 + *(v11 + 32);
    v27 = v40;
    *(v26 + 2) = v39;
    *(v26 + 3) = v27;
    *(v26 + 4) = v41;
    *(v26 + 10) = v42;
    v28 = v38;
    *v26 = v37;
    *(v26 + 1) = v28;
    sub_219FC6D70(v19, v31, type metadata accessor for ElectionEntityTheme);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219FC6DD8(v19, type metadata accessor for ElectionEntityTheme);
  }
}

uint64_t sub_219FC596C()
{
  sub_21A0E6DAC();
  ElectionEntityTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219FC59B0(uint64_t a1)
{
  sub_21A0E6DAC();
  ElectionEntityTheme.hash(into:)(v2);
  return sub_21A0E6DFC();
}

uint64_t sub_219FC5A20(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 - 8;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActivityAsset.hash(into:)(v9);
  sub_219F91544(a1, *(v3 + *(v7 + 36)));
  v12 = *(v3 + *(v7 + 40));
  result = MEMORY[0x21CED2490](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    do
    {
      sub_219F45500(v15, v11, &qword_27CCD98C8, &unk_21A0EA440);
      sub_219FC5A20(a1, a2, a3);
      result = sub_219F6409C(v11, &qword_27CCD98C8, &unk_21A0EA440);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_219FC5B70(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 - 8;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FC6D28(&qword_27CCD99F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21A0E615C();
  sub_219F91544(a1, *(v3 + *(v7 + 36)));
  v11 = *(v3 + *(v7 + 40));
  result = MEMORY[0x21CED2490](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_219F45500(v14, v10, &qword_27CCD99C0, &unk_21A0EDFD0);
      sub_219FC5B70(a1, a2, a3);
      result = sub_219F6409C(v10, &qword_27CCD99C0, &unk_21A0EDFD0);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return result;
}

BOOL _s22NewsLiveActivitiesCore19ElectionEntityThemeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFD0, &qword_21A108D40);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - v15;
  if (*a1 != *a2 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v47 = v12;
  v45 = v8;
  v46 = type metadata accessor for ElectionEntityTheme(0);
  v19 = *(v46 + 28);
  v20 = *(v13 + 48);
  sub_219F45500(a1 + v19, v16, &qword_27CCD98D8, &unk_21A0EA100);
  sub_219F45500(a2 + v19, &v16[v20], &qword_27CCD98D8, &unk_21A0EA100);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v34 = v47;
  sub_219F45500(v16, v47, &qword_27CCD98D8, &unk_21A0EA100);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_219F6409C(v34, &qword_27CCD98D0, &unk_21A0E9C90);
LABEL_20:
    v35 = &qword_27CCDAFD0;
    v36 = &qword_21A108D40;
LABEL_26:
    sub_219F6409C(v16, v35, v36);
    return 0;
  }

  v37 = &v16[v20];
  v38 = v45;
  sub_219F73094(v37, v45);
  if ((static ActivityAsset.== infix(_:_:)(v34, v38) & 1) == 0 || (v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440), v40 = *(v39 + 28), v41 = *(v34 + v40), v42 = *(v38 + v40), , , v43 = sub_219FAAA00(v41, v42), , , (v43 & 1) == 0) || (sub_219F75DC0(*(v34 + *(v39 + 32)), *(v38 + *(v39 + 32))) & 1) == 0)
  {
    sub_219F6409C(v38, &qword_27CCD98D0, &unk_21A0E9C90);
    sub_219F6409C(v34, &qword_27CCD98D0, &unk_21A0E9C90);
    v35 = &qword_27CCD98D8;
    v36 = &unk_21A0EA100;
    goto LABEL_26;
  }

  sub_219F6409C(v38, &qword_27CCD98D0, &unk_21A0E9C90);
  sub_219F6409C(v34, &qword_27CCD98D0, &unk_21A0E9C90);
LABEL_15:
  sub_219F6409C(v16, &qword_27CCD98D8, &unk_21A0EA100);
  v22 = a1 + *(v46 + 32);
  v23 = *(v22 + 1);
  v24 = *(v22 + 3);
  v58 = *(v22 + 2);
  v59 = v24;
  v60[0] = *(v22 + 4);
  *&v60[1] = *(v22 + 10);
  v25 = *(v22 + 1);
  v57[0] = *v22;
  v57[1] = v25;
  v26 = a2 + *(v46 + 32);
  v27 = *(v26 + 1);
  v61[0] = *v26;
  v61[1] = v27;
  v28 = *(v26 + 4);
  v63 = *(v26 + 3);
  v64[0] = v28;
  v30 = *v26;
  v29 = *(v26 + 1);
  v62 = *(v26 + 2);
  v31 = *(v22 + 3);
  v55 = v58;
  v56[0] = v31;
  v53 = v57[0];
  v54 = v23;
  v50 = v29;
  v51 = v62;
  v52[0] = *(v26 + 3);
  *&v64[1] = *(v26 + 10);
  *(v56 + 13) = *(v22 + 61);
  *(v52 + 13) = *(v26 + 61);
  v49 = v30;
  sub_219FB63A4(v57, v48);
  sub_219FB63A4(v61, v48);
  sub_219F72F28(v57, v48);
  sub_219F72F28(v61, v48);
  v32 = static ActivityFill.== infix(_:_:)(&v53, &v49);
  v65[1] = v50;
  v65[2] = v51;
  v66[0] = v52[0];
  *(v66 + 13) = *(v52 + 13);
  v65[0] = v49;
  sub_219F72F84(v65);
  v67[2] = v55;
  v68[0] = v56[0];
  *(v68 + 13) = *(v56 + 13);
  v67[0] = v53;
  v67[1] = v54;
  sub_219F72F84(v67);
  if (!v32)
  {
    sub_219FB63DC(v61);
    sub_219FB63DC(v57);
    return 0;
  }

  if (*(v60 + 8) == *(v64 + 8))
  {
    sub_219FB63DC(v61);
    sub_219FB63DC(v57);
    return 1;
  }

  v44 = sub_21A0E6C5C();
  sub_219FB63DC(v61);
  sub_219FB63DC(v57);
  return (v44 & 1) != 0;
}

unint64_t sub_219FC62B0()
{
  result = qword_27CCDAF00;
  if (!qword_27CCDAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAF00);
  }

  return result;
}

uint64_t type metadata accessor for ElectionEntityTheme(uint64_t a1)
{
  result = qword_27CCDAF90;
  if (!qword_27CCDAF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219FC6350(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDAF08, &qword_21A0F0BB8);
    sub_219FC6D28(a2, type metadata accessor for ElectionEntityTheme, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219FC63EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_219FC645C()
{
  result = qword_27CCDAF40;
  if (!qword_27CCDAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAF40);
  }

  return result;
}

unint64_t sub_219FC64B0()
{
  result = qword_27CCDAF60;
  if (!qword_27CCDAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAF60);
  }

  return result;
}

uint64_t sub_219FC6504(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD98D0, &unk_21A0E9C90);
    sub_219FC6D28(&qword_27CCDAF50, type metadata accessor for ActivityAsset, &protocol conformance descriptor for ActivityAsset);
    sub_219FC6D28(&qword_27CCDAF58, type metadata accessor for ActivityAsset, &protocol conformance descriptor for ActivityAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219FC65D8()
{
  result = qword_27CCDAF78;
  if (!qword_27CCDAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAF78);
  }

  return result;
}

unint64_t sub_219FC6630()
{
  result = qword_27CCDAF80;
  if (!qword_27CCDAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAF80);
  }

  return result;
}

uint64_t sub_219FC66CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_219FC6714(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_219FC678C(uint64_t a1)
{
  sub_219F40360();
  if (v1 <= 0x3F)
  {
    sub_219F3EAEC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_219FC684C()
{
  result = qword_27CCDAFA0;
  if (!qword_27CCDAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFA0);
  }

  return result;
}

unint64_t sub_219FC68A4()
{
  result = qword_27CCDAFA8;
  if (!qword_27CCDAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFA8);
  }

  return result;
}

unint64_t sub_219FC68FC()
{
  result = qword_27CCDAFB0;
  if (!qword_27CCDAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFB0);
  }

  return result;
}

unint64_t sub_219FC6954()
{
  result = qword_27CCDAFB8;
  if (!qword_27CCDAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFB8);
  }

  return result;
}

unint64_t sub_219FC69AC()
{
  result = qword_27CCDAFC0;
  if (!qword_27CCDAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFC0);
  }

  return result;
}

unint64_t sub_219FC6A04()
{
  result = qword_27CCDAFC8;
  if (!qword_27CCDAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDAFC8);
  }

  return result;
}

uint64_t sub_219FC6A58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_219FC6B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974726170 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_219FC6D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219FC6D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FC6DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219FC6E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219FC6EA0(uint64_t a1)
{
  v3 = type metadata accessor for NewsLiveActivity(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v28 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v25 = v1;
  v33 = MEMORY[0x277D84F90];
  sub_219FBE79C(0, v6, 0);
  v7 = v33;
  v32 = a1 + 56;
  result = sub_21A0E67CC();
  v9 = result;
  v10 = 0;
  v26 = a1 + 64;
  v27 = v6;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v32 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v30 = *(a1 + 36);
    v13 = v28;
    sub_219FE9098(*(a1 + 48) + *(v29 + 72) * v9, v28, type metadata accessor for NewsLiveActivity);
    v14 = v13[1];
    v31 = *v13;

    result = sub_219FE9018(v13, type metadata accessor for NewsLiveActivity);
    v33 = v7;
    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_219FBE79C((v15 > 1), v16 + 1, 1);
      v7 = v33;
    }

    *(v7 + 16) = v16 + 1;
    v17 = v7 + 16 * v16;
    *(v17 + 32) = v31;
    *(v17 + 40) = v14;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v18 = *(v32 + 8 * v12);
    if ((v18 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v26 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_219FEA040(v9, v30, 0);
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_219FEA040(v9, v30, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NewsLiveActivityManagerType.activities.getter(uint64_t a1, uint64_t a2)
{
  if (*((*(a2 + 32))(a1) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFE0, &qword_21A0F1040);
    v2 = sub_21A0E69CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v5 = v2;

  sub_219F4C568(v3, sub_219FC783C, 0, 1, &v5);

  return v5;
}

unint64_t LiveActivitySubscriptionError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_21A0E495C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LiveActivitySubscriptionError(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219FE9098(v1, v10, type metadata accessor for LiveActivitySubscriptionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_219FE9018(v10, type metadata accessor for LiveActivitySubscriptionError);
        return 0xD000000000000065;
      }

      else
      {
        return 0xD00000000000003ELL;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_21A0E686C();
      MEMORY[0x21CED1980](0xD000000000000035, 0x800000021A10A110);
      sub_219F3CA68(&qword_27CCDAFE8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v13 = sub_21A0E6BFC();
      MEMORY[0x21CED1980](v13);

      MEMORY[0x21CED1980](11817, 0xE200000000000000);
      v14 = v15[0];
      (*(v3 + 8))(v6, v2);
      return v14;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000042;
    }

    else
    {
      return 0xD000000000000087;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD000000000000042;
  }

  else
  {
    return 0xD00000000000003FLL;
  }
}

uint64_t NewsLiveActivityManagerType.subscriptions.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  v3 = sub_219FC6EA0(v2);

  v4 = sub_219F4D7A4(v3);

  return v4;
}

uint64_t sub_219FC75EC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAsset(0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  v15 = *(a1 + 16);
  v16 = sub_219F3CA68(qword_280C88B70, 255, type metadata accessor for ActivityAsset, &protocol conformance descriptor for ActivityAsset);
  result = MEMORY[0x21CED1CD0](v15, v2, v16);
  v18 = 0;
  v26 = result;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  for (i = (v19 + 63) >> 6; v21; result = sub_219FE9018(v11, type metadata accessor for ActivityAsset))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_219FE9098(*(a1 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v14, type metadata accessor for ActivityAsset);
    sub_219FE9100(v14, v7, type metadata accessor for ActivityAsset);
    sub_21A033088(v11, v7);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v26;
    }

    v21 = *(a1 + 64 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219FC783C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB098, &qword_21A0F1630) + 48);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  sub_219FE9098(a1, a2 + v4, type metadata accessor for NewsLiveActivity);
}

uint64_t sub_219FC78BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_219FC7950;

  return sub_219FC7B84();
}

uint64_t sub_219FC7950()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_219FC7A90;

  return sub_219FC808C();
}

uint64_t sub_219FC7A90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219FC7BA4()
{
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[3] = __swift_project_value_buffer(v1, qword_280C88498);
  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_219F39000, v2, v3, "Restoring LiveActivityManager's activities from store", v4, 2u);
    MEMORY[0x21CED2D30](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_219FC7D8C;

  return v10(v6, v7);
}

uint64_t sub_219FC7D8C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_219FC7E8C, 0, 0);
}

uint64_t sub_219FC7E8C()
{
  v16 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v2 + 56);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_219FEA2BC((v3 + 16), v15);
  os_unfair_lock_unlock((v3 + 24));

  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136446210;
    type metadata accessor for NewsLiveActivity(0);
    sub_219F4DBDC();
    v9 = sub_21A0E60FC();
    v11 = v10;

    v12 = sub_219F50144(v9, v11, v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_219F39000, v5, v6, "Restored LiveActivityManager's activities from store. Activities=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_219FC808C()
{
  v1[28] = v0;
  v2 = type metadata accessor for ScheduledLiveActivity(0);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048, &qword_21A0F1550);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0C0, &qword_21A0F1668);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for NewsLiveActivities.ActivitySubscribedChange(0);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB040, &unk_21A0F3020);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0D0, &qword_21A0F16C0);
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for NewsLiveActivity(0);
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FC83C4, 0, 0);
}

void sub_219FC83C4()
{
  v250 = v0;
  v249[1] = *MEMORY[0x277D85DE8];
  if (qword_280C87968 != -1)
  {
    goto LABEL_136;
  }

  while (1)
  {
    v1 = sub_21A0E516C();
    *(v0 + 440) = __swift_project_value_buffer(v1, qword_280C8C090);
    v2 = sub_21A0E514C();
    v3 = sub_21A0E66BC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_219F39000, v2, v3, "Beginning reconciliation checks", v4, 2u);
      MEMORY[0x21CED2D30](v4, -1, -1);
    }

    v5 = *(v0 + 224);

    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    *(v0 + 448) = (*(v7 + 32))(v6, v7);
    v8 = v5[5];
    v9 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
    v10 = (*(v9 + 24))(v8, v9);
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = sub_21A061CBC(*(v10 + 16), 0);
      v14 = sub_21A0632D8(&v247, v13 + 4, v12, v11);
      sub_219F5EC40(v247);
      if (v14 == v12)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v13 = MEMORY[0x277D84F90];
LABEL_8:
    *(v0 + 456) = v13;
    v15 = *(*(v0 + 224) + 56);
    *(v0 + 464) = v15;
    v16 = *(v15 + 56);
    os_unfair_lock_lock(v16 + 6);

    v18 = sub_219F4B7A8(v17);
    *(v0 + 472) = v18;
    os_unfair_lock_unlock(v16 + 6);
    v19 = *(v18 + 32);
    LODWORD(v16) = v19 & 0x3F;
    v20 = ((1 << v19) + 63) >> 6;
    v21 = 8 * v20;

    if (v16 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v225 = swift_slowAlloc();
        v226 = sub_21A077D44(v225, v20, v18, sub_219FE4010, 0);

        MEMORY[0x21CED2D30](v225, -1, -1);
        v45 = v226;
        goto LABEL_25;
      }
    }

    v240 = v20;
    v241 = v13;
    v239 = &v231;
    v24 = *(v0 + 392);
    v244 = *(v0 + 384);
    v245 = v24;
    v25 = *(v0 + 240);
    MEMORY[0x28223BE20](v22, v23);
    v242 = &v231 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v242, v21);
    v243 = 0;
    v26 = 0;
    v246 = v18;
    v29 = *(v18 + 56);
    v28 = v18 + 56;
    v27 = v29;
    v30 = 1 << *(v28 - 24);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v27;
    v33 = (v30 + 63) >> 6;
    v34 = (v25 + 48);
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_19:
      v38 = v35 | (v26 << 6);
      v39 = *(v0 + 432);
      v40 = *(v0 + 376);
      v41 = *(v0 + 232);
      sub_219FE9098(v246[6] + v245[9].isa * v38, v39, type metadata accessor for NewsLiveActivity);
      sub_219FE9098(v39 + *(v244 + 20), v40, type metadata accessor for NewsLiveActivitySubscriptionState);
      v42 = (*v34)(v40, 3, v41);
      v43 = *(v0 + 432);
      if (v42)
      {
        sub_219FE9018(*(v0 + 432), type metadata accessor for NewsLiveActivity);
        *&v242[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
        v44 = __OFADD__(v243++, 1);
        if (v44)
        {
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        sub_219FE9018(*(v0 + 376), type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v43, type metadata accessor for NewsLiveActivity);
      }
    }

    v36 = v26;
    while (1)
    {
      v26 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v26 >= v33)
      {
        break;
      }

      v37 = *(v28 + 8 * v26);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v32 = (v37 - 1) & v37;
        goto LABEL_19;
      }
    }

LABEL_24:
    v45 = sub_219F4B9F8(v242, v240, v243, v246);
    v13 = v241;
LABEL_25:
    v46 = sub_219FC6EA0(v45);
    *(v0 + 480) = v46;

    *(v0 + 208) = v13;
    *(v0 + 216) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0D8, &qword_21A0F16C8);
    sub_219FEA194();
    sub_219F41390();
    sub_21A0E617C();
    v47 = MEMORY[0x277D84FA0];
    *(v0 + 64) = MEMORY[0x277D84FA0];
    *(v0 + 72) = v47;
    v48 = sub_21A0E69EC();
    *(v0 + 488) = v48;
    v49 = *(v48 + 16);
    *(v0 + 496) = v49;
    if (v49)
    {
      break;
    }

LABEL_30:
    *(v0 + 544) = 0;

    v55 = sub_21A0E69DC();
    *(v0 + 552) = v55;
    v56 = *(v55 + 16);
    *(v0 + 560) = v56;
    if (v56)
    {
      v57 = 0;
      v58 = (v55 + 65);
      while (1)
      {
        *(v0 + 568) = v57;
        v59 = *(v58 - 33);
        v60 = *(v58 - 25);
        *(v0 + 576) = v60;
        v61 = *(v58 - 17);
        *(v0 + 584) = v61;
        if ((*v58 & 1) == 0)
        {
          break;
        }

        ++v57;
        v58 += 40;
        if (v56 == v57)
        {
          goto LABEL_34;
        }
      }

      sub_219FEA1F8(v59, v60, v61);

      v158 = sub_21A0E514C();
      v159 = sub_21A0E669C();
      sub_219FEA200(v59, v60, v61);
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v247 = v161;
        *v160 = 136446210;

        v162 = sub_219F50144(v60, v61, &v247);
        LODWORD(v246) = v159;
        v163 = v162;
        sub_219FEA200(v59, v60, v61);
        *(v160 + 4) = v163;
        _os_log_impl(&dword_219F39000, v158, v246, "Adding a live activity that was followed(?) while News was not running. This should never happen. activityID=%{public}s", v160, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v161);
        MEMORY[0x21CED2D30](v161, -1, -1);
        MEMORY[0x21CED2D30](v160, -1, -1);
      }

      if (*(*(v0 + 448) + 16) && (v164 = sub_219F477B4(v60, v61), (v165 & 1) != 0))
      {
        v166 = v164;
        v167 = *(v0 + 328);
        v168 = *(*(v0 + 448) + 56);
        v169 = type metadata accessor for NewsLiveActivityContent(0);
        v170 = *(v169 - 8);
        sub_219FE9098(v168 + *(v170 + 72) * v166, v167, type metadata accessor for NewsLiveActivityContent);
        (*(v170 + 56))(v167, 0, 1, v169);
      }

      else
      {
        v181 = *(v0 + 328);
        v169 = type metadata accessor for NewsLiveActivityContent(0);
        (*(*(v169 - 8) + 56))(v181, 1, 1, v169);
      }

      v183 = *(v0 + 320);
      v182 = *(v0 + 328);
      *(v0 + 144) = v60;
      *(v0 + 152) = v61;
      sub_219F45500(v182, v183, &qword_27CCDB040, &unk_21A0F3020);
      type metadata accessor for NewsLiveActivityContent(0);
      v184 = (*(*(v169 - 8) + 48))(v183, 1, v169);
      v185 = *(v0 + 320);
      if (v184 == 1)
      {
        sub_219F6409C(*(v0 + 320), &qword_27CCDB040, &unk_21A0F3020);
        v186 = 1;
      }

      else
      {
        sub_219FE9098(*(v0 + 320), *(v0 + 280), type metadata accessor for NewsLiveActivityContentState);
        sub_219FE9018(v185, type metadata accessor for NewsLiveActivityContent);
        v186 = 0;
      }

      v192 = *(v0 + 280);
      v193 = type metadata accessor for NewsLiveActivityContentState(0);
      (*(*(v193 - 8) + 56))(v192, v186, 1, v193);
      v194 = swift_task_alloc();
      *(v0 + 592) = v194;
      *v194 = v0;
      v194[1] = sub_219FCBB78;
      v195 = *(v0 + 296);
      v196 = *(v0 + 280);
      v197 = (v0 + 144);
LABEL_118:

      sub_219FD16A0(v195, v197, v196);
      return;
    }

LABEL_34:
    v62 = *(v0 + 472);

    v64 = *(v62 + 32);
    v65 = v64 & 0x3F;
    v66 = (1 << v64) + 63;
    v67 = v66 >> 6;
    v68 = 8 * (v66 >> 6);
    if (v65 > 0xD)
    {
      v227 = 8 * (v66 >> 6);

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v122 = *(v0 + 544);
        v228 = *(v0 + 472);
        v229 = swift_slowAlloc();
        v230 = sub_21A077D44(v229, v67, v228, sub_219FE411C, 0);

        MEMORY[0x21CED2D30](v229, -1, -1);
        if (v122)
        {
          return;
        }

        v121 = v230;
LABEL_80:
        v123 = 0;
        v246 = (v0 + 80);
        *(v0 + 600) = v121;
        v124 = *(v121 + 32);
        *(v0 + 664) = v124;
        v125 = 1 << v124;
        v126 = *(v121 + 56);
        if (v125 < 64)
        {
          v127 = ~(-1 << v125);
        }

        else
        {
          v127 = -1;
        }

        v128 = v127 & v126;
        if ((v127 & v126) == 0)
        {
LABEL_85:
          while (1)
          {
            v130 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_134;
            }

            v129 = *(v0 + 600);
            if (v130 >= (((1 << *(v0 + 664)) + 63) >> 6))
            {

              v136 = sub_21A0E514C();
              v137 = sub_21A0E66BC();
              if (os_log_type_enabled(v136, v137))
              {
                v138 = swift_slowAlloc();
                v246 = swift_slowAlloc();
                v249[0] = v246;
                *v138 = 136446210;
                swift_beginAccess();
                v247 = 0;
                v248 = 0xE000000000000000;

                sub_21A0E686C();

                v247 = 0x3D64657472617453;
                v248 = 0xE800000000000000;
                sub_219F4DBDC();
                v139 = sub_21A0E65EC();
                MEMORY[0x21CED1980](v139);

                MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
                v140 = sub_21A0E65EC();
                MEMORY[0x21CED1980](v140);

                v141 = sub_219F50144(v247, v248, v249);

                *(v138 + 4) = v141;
                _os_log_impl(&dword_219F39000, v136, v137, "Finished reconciliation checks. %{public}s", v138, 0xCu);
                v142 = v246;
                __swift_destroy_boxed_opaque_existential_1(v246);
                MEMORY[0x21CED2D30](v142, -1, -1);
                MEMORY[0x21CED2D30](v138, -1, -1);
              }

              v143 = sub_219FE3D10();
              *(v0 + 640) = v143;
              if (v143)
              {
                v145 = v143;
                *(v0 + 648) = v144;
                swift_beginAccess();
                v146 = *(v0 + 72);
                *(v0 + 128) = *(v0 + 64);
                *(v0 + 136) = v146;

                v246 = (v145 + *v145);
                v147 = swift_task_alloc();
                *(v0 + 656) = v147;
                *v147 = v0;
                v147[1] = sub_219FCDE7C;
                v148 = v246;

                v148(v0 + 128);
              }

              else
              {
                v171 = *(v0 + 352);
                v172 = *(v0 + 336);
                v173 = *(v0 + 344);
                v174 = *(v0 + 320);
                v175 = *(v0 + 328);
                v236 = *(v0 + 360);
                v237 = v175;
                v238 = v174;
                v176 = *(v0 + 304);
                v239 = *(v0 + 312);
                v240 = v176;
                v177 = *(v0 + 288);
                v241 = *(v0 + 296);
                v242 = v177;
                v178 = *(v0 + 272);
                v243 = *(v0 + 280);
                v244 = v178;
                v179 = *(v0 + 248);
                v245 = *(v0 + 264);
                v246 = v179;
                (*(v173 + 8))(v171, v172);

                v180 = *(v0 + 8);

                v180();
              }

              return;
            }

            v128 = *(v129 + 8 * v130 + 56);
            ++v123;
            if (v128)
            {
              v123 = v130;
              goto LABEL_89;
            }
          }
        }

        while (1)
        {
          v129 = *(v0 + 600);
LABEL_89:
          *(v0 + 616) = v123;
          *(v0 + 608) = v128;
          v131 = *(v0 + 456);
          v133 = *(v0 + 408);
          v132 = *(v0 + 416);
          sub_219FE9098(*(v129 + 48) + *(*(v0 + 392) + 72) * (__clz(__rbit64(v128)) | (v123 << 6)), v132, type metadata accessor for NewsLiveActivity);
          sub_219FE9100(v132, v133, type metadata accessor for NewsLiveActivity);
          v134 = v133[1];
          *(v0 + 80) = *v133;
          *(v0 + 88) = v134;
          v135 = swift_task_alloc();
          *(v135 + 16) = v246;
          LOBYTE(v131) = sub_219FAA954(sub_219FACD94, v135, v131);
          *(v0 + 624) = v122;

          if (v131)
          {
            break;
          }

          v128 &= v128 - 1;
          sub_219FE9018(*(v0 + 408), type metadata accessor for NewsLiveActivity);
          if (!v128)
          {
            goto LABEL_85;
          }
        }

        sub_219FE9098(*(v0 + 408), *(v0 + 400), type metadata accessor for NewsLiveActivity);
        v198 = sub_21A0E514C();
        v199 = sub_21A0E66BC();
        v200 = os_log_type_enabled(v198, v199);
        v201 = *(v0 + 400);
        if (v200)
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v247 = v203;
          *v202 = 136446210;
          v204 = *v201;
          v205 = v201[1];

          sub_219FE9018(v201, type metadata accessor for NewsLiveActivity);
          v206 = sub_219F50144(v204, v205, &v247);

          *(v202 + 4) = v206;
          _os_log_impl(&dword_219F39000, v198, v199, "Activity we initiated in previous session is now running. ID=%{public}s", v202, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v203);
          MEMORY[0x21CED2D30](v203, -1, -1);
          MEMORY[0x21CED2D30](v202, -1, -1);
        }

        else
        {

          sub_219FE9018(v201, type metadata accessor for NewsLiveActivity);
        }

        if (*(*(v0 + 448) + 16) && (v207 = sub_219F477B4(**(v0 + 408), *(*(v0 + 408) + 8)), (v208 & 1) != 0))
        {
          v209 = v207;
          v210 = *(v0 + 312);
          v211 = *(*(v0 + 448) + 56);
          v212 = type metadata accessor for NewsLiveActivityContent(0);
          v213 = *(v212 - 8);
          sub_219FE9098(v211 + *(v213 + 72) * v209, v210, type metadata accessor for NewsLiveActivityContent);
          (*(v213 + 56))(v210, 0, 1, v212);
        }

        else
        {
          v214 = *(v0 + 312);
          v212 = type metadata accessor for NewsLiveActivityContent(0);
          (*(*(v212 - 8) + 56))(v214, 1, 1, v212);
        }

        v215 = *(v0 + 408);
        v217 = *(v0 + 304);
        v216 = *(v0 + 312);
        v218 = v215[1];
        *(v0 + 96) = *v215;
        *(v0 + 104) = v218;
        sub_219F45500(v216, v217, &qword_27CCDB040, &unk_21A0F3020);
        type metadata accessor for NewsLiveActivityContent(0);
        v219 = (*(*(v212 - 8) + 48))(v217, 1, v212);
        v220 = *(v0 + 304);
        if (v219 == 1)
        {

          sub_219F6409C(v220, &qword_27CCDB040, &unk_21A0F3020);
          v221 = 1;
        }

        else
        {
          sub_219FE9098(*(v0 + 304), *(v0 + 272), type metadata accessor for NewsLiveActivityContentState);

          sub_219FE9018(v220, type metadata accessor for NewsLiveActivityContent);
          v221 = 0;
        }

        v222 = *(v0 + 272);
        v223 = type metadata accessor for NewsLiveActivityContentState(0);
        (*(*(v223 - 8) + 56))(v222, v221, 1, v223);
        v224 = swift_task_alloc();
        *(v0 + 632) = v224;
        *v224 = v0;
        v224[1] = sub_219FCD298;
        v195 = *(v0 + 288);
        v196 = *(v0 + 272);
        v197 = (v0 + 96);
        goto LABEL_118;
      }

      v68 = v227;
    }

    v234 = &v231;
    v235 = v67;
    v69 = *(v0 + 472);
    v70 = *(v0 + 392);
    v243 = *(v0 + 384);
    v244 = v70;
    v232 = *(v0 + 360);
    v71 = *(v0 + 248);
    v242 = *(v0 + 256);
    v231 = v71;
    v72 = *(v0 + 240);
    v233 = *(v0 + 232);
    MEMORY[0x28223BE20](v63, v68);
    v236 = &v231 - ((v73 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v236, v73);
    v237 = 0;
    v74 = 0;
    v76 = (v69 + 56);
    v75 = *(v69 + 56);
    v245 = v69;
    v77 = 1 << *(v69 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & v75;
    v80 = (v77 + 63) >> 6;
    v240 = (v72 + 56);
    v241 = v80;
    v81 = (v72 + 48);
    v239 = v76;
    while (v79)
    {
      v82 = v81;
      v83 = __clz(__rbit64(v79));
      v246 = ((v79 - 1) & v79);
LABEL_45:
      v86 = v83 | (v74 << 6);
      v87 = *(v0 + 424);
      v88 = *(v0 + 368);
      v89 = *(v0 + 264);
      v90 = *(v0 + 232);
      isa = v245[6].isa;
      v92 = *(v244 + 72);
      v238 = v86;
      sub_219FE9098(isa + v92 * v86, v87, type metadata accessor for NewsLiveActivity);
      v93 = *(v243 + 20);
      (*v240)(v88, 1, 3, v90);
      v94 = *(v242 + 12);
      sub_219FE9098(v87 + v93, v89, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9098(v88, v89 + v94, type metadata accessor for NewsLiveActivitySubscriptionState);
      v81 = v82;
      v95 = *v82;
      v96 = (*v82)(v89, 3, v90);
      if (v96 > 1)
      {
        v99 = *(v0 + 232);
        if (v96 == 2)
        {
          sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
          v100 = v95(v89 + v94, 3, v99) == 2;
        }

        else
        {
          sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
          v100 = v95(v89 + v94, 3, v99) == 3;
        }

LABEL_53:
        v80 = v241;
        v76 = v239;
        v79 = v246;
        if (!v100)
        {
          goto LABEL_54;
        }

        goto LABEL_73;
      }

      if (v96)
      {
        v101 = *(v0 + 232);
        sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
        v100 = v95(v89 + v94, 3, v101) == 1;
        goto LABEL_53;
      }

      v97 = *(v0 + 232);
      sub_219FE9098(*(v0 + 264), *(v0 + 360), type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v95(v89 + v94, 3, v97))
      {
        v98 = *(v0 + 360);
        sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v98, type metadata accessor for ScheduledLiveActivity);
        v80 = v241;
        v76 = v239;
        v79 = v246;
LABEL_54:
        sub_219F6409C(*(v0 + 264), &qword_27CCDB048, &qword_21A0F1550);
        goto LABEL_55;
      }

      v102 = *(v0 + 360);
      v103 = *(v0 + 248);
      sub_219FE9100(v89 + v94, v103, type metadata accessor for ScheduledLiveActivity);
      if (*v102 == *v103 && *(v232 + 8) == *(v231 + 8) || (sub_21A0E6C5C() & 1) != 0)
      {
        v104 = v233;
        v105 = sub_21A0E492C();
        v106 = *(v0 + 360);
        v107 = *(v0 + 248);
        if ((v105 & 1) == 0)
        {
          goto LABEL_77;
        }

        v108 = v104[6];
        v110 = *(v106 + v108);
        v109 = *(v106 + v108 + 8);
        v111 = (v107 + v108);
        if (v110 != *v111 || v109 != v111[1])
        {
          v112 = sub_21A0E6C5C();
          v106 = *(v0 + 360);
          v107 = *(v0 + 248);
          if ((v112 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v113 = v233;
        v114 = sub_21A0E492C();
        v106 = *(v0 + 360);
        v107 = *(v0 + 248);
        if ((v114 & 1) == 0 || *(v106 + v113[8]) != *(v107 + v113[8]) || *(v106 + v113[9]) != *(v107 + v113[9]) || *(v106 + v113[10]) != *(v107 + v113[10]) || *(v106 + v113[11]) != *(v107 + v113[11]) || *(v106 + v113[12]) != *(v107 + v113[12]) || *(v106 + v113[13]) != *(v107 + v113[13]) || *(v106 + v113[14]) != *(v107 + v113[14]))
        {
          goto LABEL_77;
        }

        v115 = *(v0 + 368);
        v116 = v113[15];
        v117 = *(v106 + v116);
        v118 = *(v107 + v116);
        sub_219FE9018(v107, type metadata accessor for ScheduledLiveActivity);
        sub_219FE9018(v115, type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v106, type metadata accessor for ScheduledLiveActivity);
        v100 = v117 == v118;
        v80 = v241;
        v76 = v239;
        v79 = v246;
        if (!v100)
        {
          goto LABEL_78;
        }

LABEL_73:
        v119 = *(v0 + 424);
        sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v119, type metadata accessor for NewsLiveActivity);
        *&v236[(v238 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v238;
        v44 = __OFADD__(v237++, 1);
        if (v44)
        {
          __break(1u);
        }
      }

      else
      {
        v106 = *(v0 + 360);
        v107 = *(v0 + 248);
LABEL_77:
        v120 = *(v0 + 368);
        sub_219FE9018(v107, type metadata accessor for ScheduledLiveActivity);
        sub_219FE9018(v120, type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v106, type metadata accessor for ScheduledLiveActivity);
        v80 = v241;
        v76 = v239;
        v79 = v246;
LABEL_78:
        sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
LABEL_55:
        sub_219FE9018(*(v0 + 424), type metadata accessor for NewsLiveActivity);
      }
    }

    v84 = v74;
    while (1)
    {
      v74 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v74 >= v80)
      {
        v121 = sub_219F4B9F8(v236, v235, v237, *(v0 + 472));
        v122 = *(v0 + 544);
        goto LABEL_80;
      }

      v85 = v76[v74];
      ++v84;
      if (v85)
      {
        v82 = v81;
        v83 = __clz(__rbit64(v85));
        v246 = ((v85 - 1) & v85);
        goto LABEL_45;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    swift_once();
  }

  v50 = 0;
  v51 = (v48 + 65);
  while (1)
  {
    *(v0 + 504) = v50;
    if (v50 >= *(v48 + 16))
    {
      goto LABEL_135;
    }

    v52 = *(v51 - 33);
    v53 = *(v51 - 25);
    *(v0 + 512) = v53;
    v54 = *(v51 - 17);
    *(v0 + 520) = v54;
    if (*v51 == 1)
    {
      break;
    }

    ++v50;
    v51 += 40;
    if (v49 == v50)
    {
      goto LABEL_30;
    }
  }

  sub_219FEA1F8(v52, v53, v54);

  v149 = sub_21A0E514C();
  v150 = sub_21A0E66BC();
  sub_219FEA200(v52, v53, v54);
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    LODWORD(v246) = v150;
    v153 = v152;
    v247 = v152;
    *v151 = 136446210;

    v154 = sub_219F50144(v53, v54, &v247);
    v245 = v149;
    v155 = v154;
    sub_219FEA200(v52, v53, v54);
    *(v151 + 4) = v155;
    v149 = v245;
    _os_log_impl(&dword_219F39000, v245, v246, "Removing a live activity that was dismissed while News was not running. activityID=%{public}s", v151, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v153);
    MEMORY[0x21CED2D30](v153, -1, -1);
    MEMORY[0x21CED2D30](v151, -1, -1);
  }

  v156 = *(*(v0 + 464) + 56);
  v157 = swift_task_alloc();
  *(v157 + 16) = v53;
  *(v157 + 24) = v54;
  os_unfair_lock_lock(v156 + 6);
  sub_219FEAAC0(&v156[4]);
  *(v0 + 528) = 0;
  v187 = *(v0 + 464);
  os_unfair_lock_unlock(v156 + 6);

  v188 = v187[5];
  v189 = v187[6];
  __swift_project_boxed_opaque_existential_1(v187 + 2, v188);
  *(v0 + 176) = v53;
  *(v0 + 184) = v54;
  v245 = (*(v189 + 24) + **(v189 + 24));
  v246 = (v189 + 24);
  v190 = swift_task_alloc();
  *(v0 + 536) = v190;
  *v190 = v0;
  v190[1] = sub_219FCA15C;
  v191 = v245;

  (v191)(v0 + 176, v188, v189);
}

uint64_t sub_219FCA15C()
{

  return MEMORY[0x2822009F8](sub_219FCA284, 0, 0);
}

void sub_219FCA284()
{
  v202 = v0;
  v201 = *MEMORY[0x277D85DE8];
  v196 = (v0 + 80);
  v1 = v0 + 72;
  sub_21A033DA4((v0 + 192), *(v0 + 512), *(v0 + 520));

  v3 = *(v0 + 528);
  v4 = *(v0 + 496);
  v5 = *(v0 + 504);
  v6 = v5 + 1;
  v7 = 40 * v5 + 105;
  while (v4 != v6)
  {
    *(v0 + 504) = v6;
    v8 = *(v0 + 488);
    if (v6 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_110;
    }

    v9 = (v8 + v7);
    v10 = *(v9 - 33);
    v11 = *(v9 - 25);
    *(v0 + 512) = v11;
    v12 = *(v9 - 17);
    *(v0 + 520) = v12;
    ++v6;
    v7 += 40;
    if (*v9 == 1)
    {
      sub_219FEA1F8(v10, v11, v12);

      v13 = sub_21A0E514C();
      v14 = sub_21A0E66BC();
      sub_219FEA200(v10, v11, v12);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        LODWORD(v197) = v14;
        v16 = swift_slowAlloc();
        v199 = v16;
        *v15 = 136446210;

        v196 = v13;
        v17 = v3;
        v18 = sub_219F50144(v11, v12, &v199);
        sub_219FEA200(v10, v11, v12);
        *(v15 + 4) = v18;
        v3 = v17;
        v13 = v196;
        _os_log_impl(&dword_219F39000, v196, v197, "Removing a live activity that was dismissed while News was not running. activityID=%{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x21CED2D30](v16, -1, -1);
        MEMORY[0x21CED2D30](v15, -1, -1);
      }

      v19 = *(*(v0 + 464) + 56);
      v20 = swift_task_alloc();
      *(v20 + 16) = v11;
      *(v20 + 24) = v12;
      os_unfair_lock_lock(v19 + 6);
      sub_219FEAAC0(&v19[4]);
      *(v0 + 528) = v3;
      if (v3)
      {

        os_unfair_lock_unlock(v19 + 6);
      }

      else
      {
        v112 = *(v0 + 464);
        os_unfair_lock_unlock(v19 + 6);

        v113 = v112[5];
        v114 = v112[6];
        __swift_project_boxed_opaque_existential_1(v112 + 2, v113);
        *(v0 + 176) = v11;
        *(v0 + 184) = v12;
        v196 = (*(v114 + 24) + **(v114 + 24));
        v197 = (v114 + 24);
        v115 = swift_task_alloc();
        *(v0 + 536) = v115;
        *v115 = v0;
        v115[1] = sub_219FCA15C;

        (v196)(v0 + 176, v113, v114);
      }

      return;
    }
  }

  *(v0 + 544) = v3;

  v21 = sub_21A0E69DC();
  *(v0 + 552) = v21;
  v22 = *(v21 + 16);
  *(v0 + 560) = v22;
  if (v22)
  {
    v23 = 0;
    v24 = (v21 + 65);
    do
    {
      *(v0 + 568) = v23;
      v25 = *(v24 - 33);
      v26 = *(v24 - 25);
      *(v0 + 576) = v26;
      v27 = *(v24 - 17);
      *(v0 + 584) = v27;
      if ((*v24 & 1) == 0)
      {
        sub_219FEA1F8(v25, v26, v27);

        v116 = sub_21A0E514C();
        v117 = sub_21A0E669C();
        sub_219FEA200(v25, v26, v27);
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v199 = v119;
          *v118 = 136446210;

          LODWORD(v197) = v117;
          v120 = sub_219F50144(v26, v27, &v199);
          sub_219FEA200(v25, v26, v27);
          *(v118 + 4) = v120;
          _os_log_impl(&dword_219F39000, v116, v197, "Adding a live activity that was followed(?) while News was not running. This should never happen. activityID=%{public}s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v119);
          MEMORY[0x21CED2D30](v119, -1, -1);
          MEMORY[0x21CED2D30](v118, -1, -1);
        }

        if (*(*(v0 + 448) + 16) && (v121 = sub_219F477B4(v26, v27), (v122 & 1) != 0))
        {
          v123 = v121;
          v124 = *(v0 + 328);
          v125 = *(*(v0 + 448) + 56);
          v126 = type metadata accessor for NewsLiveActivityContent(0);
          v127 = *(v126 - 8);
          sub_219FE9098(v125 + *(v127 + 72) * v123, v124, type metadata accessor for NewsLiveActivityContent);
          (*(v127 + 56))(v124, 0, 1, v126);
        }

        else
        {
          v138 = *(v0 + 328);
          v126 = type metadata accessor for NewsLiveActivityContent(0);
          (*(*(v126 - 8) + 56))(v138, 1, 1, v126);
        }

        v140 = *(v0 + 320);
        v139 = *(v0 + 328);
        *(v0 + 144) = v26;
        *(v0 + 152) = v27;
        sub_219F45500(v139, v140, &qword_27CCDB040, &unk_21A0F3020);
        type metadata accessor for NewsLiveActivityContent(0);
        v141 = (*(*(v126 - 8) + 48))(v140, 1, v126);
        v142 = *(v0 + 320);
        if (v141 == 1)
        {
          sub_219F6409C(*(v0 + 320), &qword_27CCDB040, &unk_21A0F3020);
          v143 = 1;
        }

        else
        {
          sub_219FE9098(*(v0 + 320), *(v0 + 280), type metadata accessor for NewsLiveActivityContentState);
          sub_219FE9018(v142, type metadata accessor for NewsLiveActivityContent);
          v143 = 0;
        }

        v144 = *(v0 + 280);
        v145 = type metadata accessor for NewsLiveActivityContentState(0);
        (*(*(v145 - 8) + 56))(v144, v143, 1, v145);
        v146 = swift_task_alloc();
        *(v0 + 592) = v146;
        *v146 = v0;
        v146[1] = sub_219FCBB78;
        v147 = *(v0 + 296);
        v148 = *(v0 + 280);
        v149 = (v0 + 144);
        goto LABEL_95;
      }

      ++v23;
      v24 += 40;
    }

    while (v22 != v23);
  }

  v28 = *(v0 + 472);

  v30 = *(v28 + 32);
  v1 = ((1 << v30) + 63) >> 6;
  v2 = 8 * v1;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_112;
  }

LABEL_16:
  v184 = &v180;
  v185 = v1;
  v31 = *(v0 + 472);
  v32 = *(v0 + 392);
  v193 = *(v0 + 384);
  v194 = v32;
  v33 = *(v0 + 360);
  v34 = *(v0 + 248);
  v192 = *(v0 + 256);
  v181 = v34;
  v182 = v33;
  v35 = *(v0 + 240);
  v183 = *(v0 + 232);
  MEMORY[0x28223BE20](v29, v2);
  v186 = &v180 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v186, v36);
  v187 = 0;
  v1 = 0;
  v38 = v31 + 56;
  v37 = *(v31 + 56);
  v195 = v31;
  v39 = 1 << *(v31 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v190 = (v35 + 56);
  v191 = v42;
  v43 = (v35 + 48);
  v189 = v38;
  while (v41)
  {
    v44 = v43;
    v45 = __clz(__rbit64(v41));
    v197 = ((v41 - 1) & v41);
LABEL_26:
    v48 = v45 | (v1 << 6);
    v49 = *(v0 + 424);
    v50 = *(v0 + 368);
    v51 = *(v0 + 264);
    v52 = *(v0 + 232);
    v53 = *(v195 + 48);
    v54 = *(v194 + 72);
    v188 = v48;
    sub_219FE9098(v53 + v54 * v48, v49, type metadata accessor for NewsLiveActivity);
    v55 = *(v193 + 20);
    (*v190)(v50, 1, 3, v52);
    v56 = *(v192 + 48);
    sub_219FE9098(v49 + v55, v51, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219FE9098(v50, v51 + v56, type metadata accessor for NewsLiveActivitySubscriptionState);
    v43 = v44;
    v57 = *v44;
    v58 = (*v44)(v51, 3, v52);
    if (v58 > 1)
    {
      v61 = *(v0 + 232);
      if (v58 == 2)
      {
        sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
        v62 = v57(v51 + v56, 3, v61) == 2;
      }

      else
      {
        sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
        v62 = v57(v51 + v56, 3, v61) == 3;
      }

LABEL_34:
      v42 = v191;
      v38 = v189;
      v41 = v197;
      if (!v62)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    }

    if (v58)
    {
      v63 = *(v0 + 232);
      sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
      v62 = v57(v51 + v56, 3, v63) == 1;
      goto LABEL_34;
    }

    v59 = *(v0 + 232);
    sub_219FE9098(*(v0 + 264), *(v0 + 360), type metadata accessor for NewsLiveActivitySubscriptionState);
    if (v57(v51 + v56, 3, v59))
    {
      v60 = *(v0 + 360);
      sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v60, type metadata accessor for ScheduledLiveActivity);
      v42 = v191;
      v38 = v189;
      v41 = v197;
LABEL_35:
      sub_219F6409C(*(v0 + 264), &qword_27CCDB048, &qword_21A0F1550);
      goto LABEL_36;
    }

    v64 = *(v0 + 360);
    v65 = *(v0 + 248);
    sub_219FE9100(v51 + v56, v65, type metadata accessor for ScheduledLiveActivity);
    if (*v64 == *v65 && *(v182 + 8) == *(v181 + 8) || (sub_21A0E6C5C() & 1) != 0)
    {
      v66 = v183;
      v67 = sub_21A0E492C();
      v68 = *(v0 + 360);
      v69 = *(v0 + 248);
      if ((v67 & 1) == 0)
      {
        goto LABEL_58;
      }

      v70 = v66[6];
      v72 = *(v68 + v70);
      v71 = *(v68 + v70 + 8);
      v73 = (v69 + v70);
      if (v72 != *v73 || v71 != v73[1])
      {
        v74 = sub_21A0E6C5C();
        v68 = *(v0 + 360);
        v69 = *(v0 + 248);
        if ((v74 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      v75 = v183;
      v76 = sub_21A0E492C();
      v68 = *(v0 + 360);
      v69 = *(v0 + 248);
      if ((v76 & 1) == 0 || *(v68 + v75[8]) != *(v69 + v75[8]) || *(v68 + v75[9]) != *(v69 + v75[9]) || *(v68 + v75[10]) != *(v69 + v75[10]) || *(v68 + v75[11]) != *(v69 + v75[11]) || *(v68 + v75[12]) != *(v69 + v75[12]) || *(v68 + v75[13]) != *(v69 + v75[13]) || *(v68 + v75[14]) != *(v69 + v75[14]))
      {
        goto LABEL_58;
      }

      v77 = *(v0 + 368);
      v78 = v75[15];
      v79 = *(v68 + v78);
      v80 = *(v69 + v78);
      sub_219FE9018(v69, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v77, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v68, type metadata accessor for ScheduledLiveActivity);
      v62 = v79 == v80;
      v42 = v191;
      v38 = v189;
      v41 = v197;
      if (!v62)
      {
        goto LABEL_59;
      }

LABEL_54:
      v81 = *(v0 + 424);
      sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v81, type metadata accessor for NewsLiveActivity);
      *&v186[(v188 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v188;
      if (__OFADD__(v187++, 1))
      {
        __break(1u);
      }
    }

    else
    {
      v68 = *(v0 + 360);
      v69 = *(v0 + 248);
LABEL_58:
      v83 = *(v0 + 368);
      sub_219FE9018(v69, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v83, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v68, type metadata accessor for ScheduledLiveActivity);
      v42 = v191;
      v38 = v189;
      v41 = v197;
LABEL_59:
      sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
LABEL_36:
      sub_219FE9018(*(v0 + 424), type metadata accessor for NewsLiveActivity);
    }
  }

  v46 = v1;
  while (1)
  {
    v1 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v1 >= v42)
    {
      v84 = sub_219F4B9F8(v186, v185, v187, *(v0 + 472));
      v85 = *(v0 + 544);
      goto LABEL_61;
    }

    v47 = *(v38 + 8 * v1);
    ++v46;
    if (v47)
    {
      v44 = v43;
      v45 = __clz(__rbit64(v47));
      v197 = ((v47 - 1) & v47);
      goto LABEL_26;
    }
  }

LABEL_110:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_112:
    v177 = v2;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v2 = v177;
      goto LABEL_16;
    }

    v85 = *(v0 + 544);
    v178 = *(v0 + 472);
    v179 = swift_slowAlloc();
    v1 = sub_21A077D44(v179, v1, v178, sub_219FE411C, 0);

    MEMORY[0x21CED2D30](v179, -1, -1);
    if (v85)
    {
      return;
    }

    v84 = v1;
LABEL_61:
    v86 = 0;
    *(v0 + 600) = v84;
    v87 = *(v84 + 32);
    *(v0 + 664) = v87;
    v88 = 1 << v87;
    v89 = *(v84 + 56);
    v90 = v88 < 64 ? ~(-1 << v88) : -1;
    v91 = v90 & v89;
    if ((v90 & v89) != 0)
    {
      break;
    }

LABEL_66:
    while (1)
    {
      v93 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      v92 = *(v0 + 600);
      if (v93 >= (((1 << *(v0 + 664)) + 63) >> 6))
      {

        v99 = sub_21A0E514C();
        v100 = sub_21A0E66BC();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          v198 = v197;
          *v101 = 136446210;
          swift_beginAccess();
          v199 = 0;
          v200 = 0xE000000000000000;

          sub_21A0E686C();

          v199 = 0x3D64657472617453;
          v200 = 0xE800000000000000;
          sub_219F4DBDC();
          v102 = sub_21A0E65EC();
          MEMORY[0x21CED1980](v102);

          MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
          v103 = sub_21A0E65EC();
          MEMORY[0x21CED1980](v103);

          v104 = sub_219F50144(v199, v200, &v198);

          *(v101 + 4) = v104;
          _os_log_impl(&dword_219F39000, v99, v100, "Finished reconciliation checks. %{public}s", v101, 0xCu);
          v105 = v197;
          __swift_destroy_boxed_opaque_existential_1(v197);
          MEMORY[0x21CED2D30](v105, -1, -1);
          MEMORY[0x21CED2D30](v101, -1, -1);
        }

        v106 = sub_219FE3D10();
        *(v0 + 640) = v106;
        if (v106)
        {
          v108 = v106;
          *(v0 + 648) = v107;
          swift_beginAccess();
          v109 = *(v0 + 72);
          *(v0 + 128) = *(v0 + 64);
          *(v0 + 136) = v109;

          v197 = (v108 + *v108);
          v110 = swift_task_alloc();
          *(v0 + 656) = v110;
          *v110 = v0;
          v110[1] = sub_219FCDE7C;
          v111 = v197;

          v111(v0 + 128);
        }

        else
        {
          v128 = *(v0 + 352);
          v129 = *(v0 + 336);
          v130 = *(v0 + 344);
          v131 = *(v0 + 320);
          v132 = *(v0 + 328);
          v187 = *(v0 + 360);
          v188 = v132;
          v189 = v131;
          v133 = *(v0 + 304);
          v190 = *(v0 + 312);
          v191 = v133;
          v134 = *(v0 + 288);
          v192 = *(v0 + 296);
          v193 = v134;
          v135 = *(v0 + 272);
          v194 = *(v0 + 280);
          v195 = v135;
          v136 = *(v0 + 248);
          v196 = *(v0 + 264);
          v197 = v136;
          (*(v130 + 8))(v128, v129);

          v137 = *(v0 + 8);

          v137();
        }

        return;
      }

      v91 = *(v92 + 8 * v93 + 56);
      ++v86;
      if (v91)
      {
        v86 = v93;
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
    v92 = *(v0 + 600);
LABEL_70:
    *(v0 + 616) = v86;
    *(v0 + 608) = v91;
    v94 = *(v0 + 456);
    v96 = *(v0 + 408);
    v95 = *(v0 + 416);
    sub_219FE9098(*(v92 + 48) + *(*(v0 + 392) + 72) * (__clz(__rbit64(v91)) | (v86 << 6)), v95, type metadata accessor for NewsLiveActivity);
    sub_219FE9100(v95, v96, type metadata accessor for NewsLiveActivity);
    v97 = v96[1];
    *(v0 + 80) = *v96;
    *(v0 + 88) = v97;
    v1 = swift_task_alloc();
    *(v1 + 16) = v196;
    LOBYTE(v94) = sub_219FAA954(sub_219FACD94, v1, v94);
    *(v0 + 624) = v85;

    v98 = *(v0 + 408);
    if (v94)
    {
      break;
    }

    v91 &= v91 - 1;
    sub_219FE9018(v98, type metadata accessor for NewsLiveActivity);
    if (!v91)
    {
      goto LABEL_66;
    }
  }

  sub_219FE9098(v98, *(v0 + 400), type metadata accessor for NewsLiveActivity);
  v150 = sub_21A0E514C();
  v151 = sub_21A0E66BC();
  v152 = os_log_type_enabled(v150, v151);
  v153 = *(v0 + 400);
  if (v152)
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v199 = v155;
    *v154 = 136446210;
    v156 = *v153;
    v157 = v153[1];

    sub_219FE9018(v153, type metadata accessor for NewsLiveActivity);
    v158 = sub_219F50144(v156, v157, &v199);

    *(v154 + 4) = v158;
    _os_log_impl(&dword_219F39000, v150, v151, "Activity we initiated in previous session is now running. ID=%{public}s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v155);
    MEMORY[0x21CED2D30](v155, -1, -1);
    MEMORY[0x21CED2D30](v154, -1, -1);
  }

  else
  {

    sub_219FE9018(v153, type metadata accessor for NewsLiveActivity);
  }

  if (*(*(v0 + 448) + 16) && (v159 = sub_219F477B4(**(v0 + 408), *(*(v0 + 408) + 8)), (v160 & 1) != 0))
  {
    v161 = v159;
    v162 = *(v0 + 312);
    v163 = *(*(v0 + 448) + 56);
    v164 = type metadata accessor for NewsLiveActivityContent(0);
    v165 = *(v164 - 8);
    sub_219FE9098(v163 + *(v165 + 72) * v161, v162, type metadata accessor for NewsLiveActivityContent);
    (*(v165 + 56))(v162, 0, 1, v164);
  }

  else
  {
    v166 = *(v0 + 312);
    v164 = type metadata accessor for NewsLiveActivityContent(0);
    (*(*(v164 - 8) + 56))(v166, 1, 1, v164);
  }

  v167 = *(v0 + 408);
  v169 = *(v0 + 304);
  v168 = *(v0 + 312);
  v170 = v167[1];
  *(v0 + 96) = *v167;
  *(v0 + 104) = v170;
  sub_219F45500(v168, v169, &qword_27CCDB040, &unk_21A0F3020);
  type metadata accessor for NewsLiveActivityContent(0);
  v171 = (*(*(v164 - 8) + 48))(v169, 1, v164);
  v172 = *(v0 + 304);
  if (v171 == 1)
  {

    sub_219F6409C(v172, &qword_27CCDB040, &unk_21A0F3020);
    v173 = 1;
  }

  else
  {
    sub_219FE9098(*(v0 + 304), *(v0 + 272), type metadata accessor for NewsLiveActivityContentState);

    sub_219FE9018(v172, type metadata accessor for NewsLiveActivityContent);
    v173 = 0;
  }

  v174 = *(v0 + 272);
  v175 = type metadata accessor for NewsLiveActivityContentState(0);
  (*(*(v175 - 8) + 56))(v174, v173, 1, v175);
  v176 = swift_task_alloc();
  *(v0 + 632) = v176;
  *v176 = v0;
  v176[1] = sub_219FCD298;
  v147 = *(v0 + 288);
  v148 = *(v0 + 272);
  v149 = (v0 + 96);
LABEL_95:

  sub_219FD16A0(v147, v149, v148);
}

uint64_t sub_219FCBB78()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 280);

  sub_219F6409C(v2, &qword_27CCDB0C0, &qword_21A0F1668);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);

  return MEMORY[0x2822009F8](sub_219FCBD04, 0, 0);
}

uint64_t sub_219FCBD04()
{
  v184 = v0;
  v183 = *MEMORY[0x277D85DE8];
  v178 = v0 + 80;
  v1 = *(v0 + 328);
  sub_21A033DA4((v0 + 160), *(v0 + 576), *(v0 + 584));

  sub_219F6409C(v1, &qword_27CCDB040, &unk_21A0F3020);
  v2 = *(v0 + 560);
  v3 = *(v0 + 568);
  v4 = v3 + 1;
  v5 = 40 * v3 + 56;
  while (v2 != v4)
  {
    *(v0 + 568) = v4;
    v6 = *(v0 + 552);
    v8 = *(v6 + v5 + 16);
    v7 = *(v6 + v5 + 24);
    *(v0 + 576) = v7;
    v9 = *(v6 + v5 + 32);
    *(v0 + 584) = v9;
    v10 = *(v6 + v5 + 49);
    ++v4;
    v5 += 40;
    if ((v10 & 1) == 0)
    {
      sub_219FEA1F8(v8, v7, v9);

      v11 = sub_21A0E514C();
      v12 = sub_21A0E669C();
      sub_219FEA200(v8, v7, v9);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v181 = v14;
        *v13 = 136446210;

        LODWORD(v179) = v12;
        v15 = sub_219F50144(v7, v9, &v181);
        sub_219FEA200(v8, v7, v9);
        *(v13 + 4) = v15;
        _os_log_impl(&dword_219F39000, v11, v179, "Adding a live activity that was followed(?) while News was not running. This should never happen. activityID=%{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x21CED2D30](v14, -1, -1);
        MEMORY[0x21CED2D30](v13, -1, -1);
      }

      if (*(*(v0 + 448) + 16) && (v16 = sub_219F477B4(v7, v9), (v17 & 1) != 0))
      {
        v18 = v16;
        v19 = *(v0 + 328);
        v20 = *(*(v0 + 448) + 56);
        v21 = type metadata accessor for NewsLiveActivityContent(0);
        v22 = *(v21 - 8);
        sub_219FE9098(v20 + *(v22 + 72) * v18, v19, type metadata accessor for NewsLiveActivityContent);
        (*(v22 + 56))(v19, 0, 1, v21);
      }

      else
      {
        v110 = *(v0 + 328);
        v21 = type metadata accessor for NewsLiveActivityContent(0);
        (*(*(v21 - 8) + 56))(v110, 1, 1, v21);
      }

      v112 = *(v0 + 320);
      v111 = *(v0 + 328);
      *(v0 + 144) = v7;
      *(v0 + 152) = v9;
      sub_219F45500(v111, v112, &qword_27CCDB040, &unk_21A0F3020);
      type metadata accessor for NewsLiveActivityContent(0);
      v113 = (*(*(v21 - 8) + 48))(v112, 1, v21);
      v114 = *(v0 + 320);
      if (v113 == 1)
      {
        sub_219F6409C(*(v0 + 320), &qword_27CCDB040, &unk_21A0F3020);
        v115 = 1;
      }

      else
      {
        sub_219FE9098(*(v0 + 320), *(v0 + 280), type metadata accessor for NewsLiveActivityContentState);
        sub_219FE9018(v114, type metadata accessor for NewsLiveActivityContent);
        v115 = 0;
      }

      v116 = *(v0 + 280);
      v117 = type metadata accessor for NewsLiveActivityContentState(0);
      (*(*(v117 - 8) + 56))(v116, v115, 1, v117);
      v118 = swift_task_alloc();
      *(v0 + 592) = v118;
      *v118 = v0;
      v118[1] = sub_219FCBB78;
      v119 = *(v0 + 296);
      v120 = *(v0 + 280);
      v121 = (v0 + 144);
      goto LABEL_78;
    }
  }

  v23 = *(v0 + 472);

  v25 = *(v23 + 32);
  v26 = ((1 << v25) + 63) >> 6;
  v27 = 8 * v26;
  if ((v25 & 0x3Fu) <= 0xD)
  {
    goto LABEL_10;
  }

LABEL_97:
  v159 = v27;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v27 = v159;
LABEL_10:
    v166 = &v162;
    v167 = v26;
    v28 = *(v0 + 472);
    v29 = *(v0 + 392);
    v175 = *(v0 + 384);
    v176 = v29;
    v30 = *(v0 + 360);
    v31 = *(v0 + 248);
    v174 = *(v0 + 256);
    v163 = v31;
    v164 = v30;
    v32 = *(v0 + 240);
    v165 = *(v0 + 232);
    MEMORY[0x28223BE20](v24, v27);
    v168 = &v162 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v168, v33);
    v169 = 0;
    v26 = 0;
    v35 = v28 + 56;
    v34 = *(v28 + 56);
    v177 = v28;
    v36 = 1 << *(v28 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v34;
    v39 = (v36 + 63) >> 6;
    v172 = (v32 + 56);
    v173 = v39;
    v40 = (v32 + 48);
    v171 = v35;
    while (1)
    {
      while (1)
      {
        if (!v38)
        {
          v43 = v26;
          while (1)
          {
            v26 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v26 >= v39)
            {
              v81 = sub_219F4B9F8(v168, v167, v169, *(v0 + 472));
              v82 = *(v0 + 544);
              goto LABEL_55;
            }

            v44 = *(v35 + 8 * v26);
            ++v43;
            if (v44)
            {
              v41 = v40;
              v42 = __clz(__rbit64(v44));
              v179 = ((v44 - 1) & v44);
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v41 = v40;
        v42 = __clz(__rbit64(v38));
        v179 = ((v38 - 1) & v38);
LABEL_20:
        v45 = v42 | (v26 << 6);
        v46 = *(v0 + 424);
        v47 = *(v0 + 368);
        v48 = *(v0 + 264);
        v49 = *(v0 + 232);
        v50 = *(v177 + 48);
        v51 = *(v176 + 72);
        v170 = v45;
        sub_219FE9098(v50 + v51 * v45, v46, type metadata accessor for NewsLiveActivity);
        v52 = *(v175 + 20);
        (*v172)(v47, 1, 3, v49);
        v53 = *(v174 + 48);
        sub_219FE9098(v46 + v52, v48, type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9098(v47, v48 + v53, type metadata accessor for NewsLiveActivitySubscriptionState);
        v40 = v41;
        v54 = *v41;
        v55 = (*v41)(v48, 3, v49);
        if (v55 > 1)
        {
          v58 = *(v0 + 232);
          if (v55 == 2)
          {
            sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
            v59 = v54(v48 + v53, 3, v58) == 2;
          }

          else
          {
            sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
            v59 = v54(v48 + v53, 3, v58) == 3;
          }

LABEL_28:
          v39 = v173;
          v35 = v171;
          v38 = v179;
          if (!v59)
          {
            goto LABEL_29;
          }

          goto LABEL_48;
        }

        if (v55)
        {
          v60 = *(v0 + 232);
          sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
          v59 = v54(v48 + v53, 3, v60) == 1;
          goto LABEL_28;
        }

        v56 = *(v0 + 232);
        sub_219FE9098(*(v0 + 264), *(v0 + 360), type metadata accessor for NewsLiveActivitySubscriptionState);
        if (v54(v48 + v53, 3, v56))
        {
          v57 = *(v0 + 360);
          sub_219FE9018(*(v0 + 368), type metadata accessor for NewsLiveActivitySubscriptionState);
          sub_219FE9018(v57, type metadata accessor for ScheduledLiveActivity);
          v39 = v173;
          v35 = v171;
          v38 = v179;
LABEL_29:
          sub_219F6409C(*(v0 + 264), &qword_27CCDB048, &qword_21A0F1550);
          goto LABEL_30;
        }

        v61 = *(v0 + 360);
        v62 = *(v0 + 248);
        sub_219FE9100(v48 + v53, v62, type metadata accessor for ScheduledLiveActivity);
        if (*v61 == *v62 && *(v164 + 8) == *(v163 + 8))
        {
          break;
        }

        if (sub_21A0E6C5C())
        {
          break;
        }

        v65 = *(v0 + 360);
        v66 = *(v0 + 248);
LABEL_52:
        v80 = *(v0 + 368);
        sub_219FE9018(v66, type metadata accessor for ScheduledLiveActivity);
        sub_219FE9018(v80, type metadata accessor for NewsLiveActivitySubscriptionState);
        sub_219FE9018(v65, type metadata accessor for ScheduledLiveActivity);
        v39 = v173;
        v35 = v171;
        v38 = v179;
LABEL_53:
        sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
LABEL_30:
        sub_219FE9018(*(v0 + 424), type metadata accessor for NewsLiveActivity);
      }

      v63 = v165;
      v64 = sub_21A0E492C();
      v65 = *(v0 + 360);
      v66 = *(v0 + 248);
      if ((v64 & 1) == 0)
      {
        goto LABEL_52;
      }

      v67 = v63[6];
      v69 = *(v65 + v67);
      v68 = *(v65 + v67 + 8);
      v70 = (v66 + v67);
      if (v69 != *v70 || v68 != v70[1])
      {
        v71 = sub_21A0E6C5C();
        v65 = *(v0 + 360);
        v66 = *(v0 + 248);
        if ((v71 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v72 = v165;
      v73 = sub_21A0E492C();
      v65 = *(v0 + 360);
      v66 = *(v0 + 248);
      if ((v73 & 1) == 0 || *(v65 + v72[8]) != *(v66 + v72[8]) || *(v65 + v72[9]) != *(v66 + v72[9]) || *(v65 + v72[10]) != *(v66 + v72[10]) || *(v65 + v72[11]) != *(v66 + v72[11]) || *(v65 + v72[12]) != *(v66 + v72[12]) || *(v65 + v72[13]) != *(v66 + v72[13]) || *(v65 + v72[14]) != *(v66 + v72[14]))
      {
        goto LABEL_52;
      }

      v74 = *(v0 + 368);
      v75 = v72[15];
      v76 = *(v65 + v75);
      v77 = *(v66 + v75);
      sub_219FE9018(v66, type metadata accessor for ScheduledLiveActivity);
      sub_219FE9018(v74, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v65, type metadata accessor for ScheduledLiveActivity);
      v59 = v76 == v77;
      v39 = v173;
      v35 = v171;
      v38 = v179;
      if (!v59)
      {
        goto LABEL_53;
      }

LABEL_48:
      v78 = *(v0 + 424);
      sub_219FE9018(*(v0 + 264), type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219FE9018(v78, type metadata accessor for NewsLiveActivity);
      *&v168[(v170 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v170;
      if (__OFADD__(v169++, 1))
      {
        __break(1u);
      }
    }
  }

  v82 = *(v0 + 544);
  v160 = *(v0 + 472);
  v161 = swift_slowAlloc();
  v26 = sub_21A077D44(v161, v26, v160, sub_219FE411C, 0);

  result = MEMORY[0x21CED2D30](v161, -1, -1);
  if (!v82)
  {
    v81 = v26;
LABEL_55:
    v83 = 0;
    *(v0 + 600) = v81;
    v84 = *(v81 + 32);
    *(v0 + 664) = v84;
    v85 = 1 << v84;
    v86 = *(v81 + 56);
    if (v85 < 64)
    {
      v87 = ~(-1 << v85);
    }

    else
    {
      v87 = -1;
    }

    v88 = v87 & v86;
    if ((v87 & v86) == 0)
    {
LABEL_60:
      while (1)
      {
        v90 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          goto LABEL_96;
        }

        v89 = *(v0 + 600);
        if (v90 >= (((1 << *(v0 + 664)) + 63) >> 6))
        {

          v96 = sub_21A0E514C();
          v97 = sub_21A0E66BC();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v180 = v179;
            *v98 = 136446210;
            swift_beginAccess();
            v181 = 0;
            v182 = 0xE000000000000000;

            sub_21A0E686C();

            v181 = 0x3D64657472617453;
            v182 = 0xE800000000000000;
            sub_219F4DBDC();
            v99 = sub_21A0E65EC();
            MEMORY[0x21CED1980](v99);

            MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
            v100 = sub_21A0E65EC();
            MEMORY[0x21CED1980](v100);

            v101 = sub_219F50144(v181, v182, &v180);

            *(v98 + 4) = v101;
            _os_log_impl(&dword_219F39000, v96, v97, "Finished reconciliation checks. %{public}s", v98, 0xCu);
            v102 = v179;
            __swift_destroy_boxed_opaque_existential_1(v179);
            MEMORY[0x21CED2D30](v102, -1, -1);
            MEMORY[0x21CED2D30](v98, -1, -1);
          }

          v103 = sub_219FE3D10();
          *(v0 + 640) = v103;
          if (v103)
          {
            v105 = v103;
            *(v0 + 648) = v104;
            swift_beginAccess();
            v106 = *(v0 + 72);
            *(v0 + 128) = *(v0 + 64);
            *(v0 + 136) = v106;

            v179 = (v105 + *v105);
            v107 = swift_task_alloc();
            *(v0 + 656) = v107;
            *v107 = v0;
            v107[1] = sub_219FCDE7C;
            v108 = v179;

            return v108(v0 + 128);
          }

          else
          {
            v122 = *(v0 + 352);
            v123 = *(v0 + 336);
            v124 = *(v0 + 344);
            v125 = *(v0 + 320);
            v126 = *(v0 + 328);
            v169 = *(v0 + 360);
            v170 = v126;
            v171 = v125;
            v127 = *(v0 + 304);
            v172 = *(v0 + 312);
            v173 = v127;
            v128 = *(v0 + 288);
            v174 = *(v0 + 296);
            v175 = v128;
            v129 = *(v0 + 272);
            v176 = *(v0 + 280);
            v177 = v129;
            v130 = *(v0 + 248);
            v178 = *(v0 + 264);
            v179 = v130;
            (*(v124 + 8))(v122, v123);

            v131 = *(v0 + 8);

            return v131();
          }
        }

        v88 = *(v89 + 8 * v90 + 56);
        ++v83;
        if (v88)
        {
          v83 = v90;
          goto LABEL_64;
        }
      }
    }

    while (1)
    {
      v89 = *(v0 + 600);
LABEL_64:
      *(v0 + 616) = v83;
      *(v0 + 608) = v88;
      v91 = *(v0 + 456);
      v93 = *(v0 + 408);
      v92 = *(v0 + 416);
      sub_219FE9098(*(v89 + 48) + *(*(v0 + 392) + 72) * (__clz(__rbit64(v88)) | (v83 << 6)), v92, type metadata accessor for NewsLiveActivity);
      sub_219FE9100(v92, v93, type metadata accessor for NewsLiveActivity);
      v94 = v93[1];
      *(v0 + 80) = *v93;
      *(v0 + 88) = v94;
      v26 = swift_task_alloc();
      *(v26 + 16) = v178;
      LOBYTE(v91) = sub_219FAA954(sub_219FACD94, v26, v91);
      *(v0 + 624) = v82;

      v95 = *(v0 + 408);
      if (v91)
      {
        break;
      }

      v88 &= v88 - 1;
      sub_219FE9018(v95, type metadata accessor for NewsLiveActivity);
      if (!v88)
      {
        goto LABEL_60;
      }
    }

    sub_219FE9098(v95, *(v0 + 400), type metadata accessor for NewsLiveActivity);
    v132 = sub_21A0E514C();
    v133 = sub_21A0E66BC();
    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v0 + 400);
    if (v134)
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v181 = v137;
      *v136 = 136446210;
      v138 = *v135;
      v139 = v135[1];

      sub_219FE9018(v135, type metadata accessor for NewsLiveActivity);
      v140 = sub_219F50144(v138, v139, &v181);

      *(v136 + 4) = v140;
      _os_log_impl(&dword_219F39000, v132, v133, "Activity we initiated in previous session is now running. ID=%{public}s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x21CED2D30](v137, -1, -1);
      MEMORY[0x21CED2D30](v136, -1, -1);
    }

    else
    {

      sub_219FE9018(v135, type metadata accessor for NewsLiveActivity);
    }

    if (*(*(v0 + 448) + 16) && (v141 = sub_219F477B4(**(v0 + 408), *(*(v0 + 408) + 8)), (v142 & 1) != 0))
    {
      v143 = v141;
      v144 = *(v0 + 312);
      v145 = *(*(v0 + 448) + 56);
      v146 = type metadata accessor for NewsLiveActivityContent(0);
      v147 = *(v146 - 8);
      sub_219FE9098(v145 + *(v147 + 72) * v143, v144, type metadata accessor for NewsLiveActivityContent);
      (*(v147 + 56))(v144, 0, 1, v146);
    }

    else
    {
      v148 = *(v0 + 312);
      v146 = type metadata accessor for NewsLiveActivityContent(0);
      (*(*(v146 - 8) + 56))(v148, 1, 1, v146);
    }

    v149 = *(v0 + 408);
    v151 = *(v0 + 304);
    v150 = *(v0 + 312);
    v152 = v149[1];
    *(v0 + 96) = *v149;
    *(v0 + 104) = v152;
    sub_219F45500(v150, v151, &qword_27CCDB040, &unk_21A0F3020);
    type metadata accessor for NewsLiveActivityContent(0);
    v153 = (*(*(v146 - 8) + 48))(v151, 1, v146);
    v154 = *(v0 + 304);
    if (v153 == 1)
    {

      sub_219F6409C(v154, &qword_27CCDB040, &unk_21A0F3020);
      v155 = 1;
    }

    else
    {
      sub_219FE9098(*(v0 + 304), *(v0 + 272), type metadata accessor for NewsLiveActivityContentState);

      sub_219FE9018(v154, type metadata accessor for NewsLiveActivityContent);
      v155 = 0;
    }

    v156 = *(v0 + 272);
    v157 = type metadata accessor for NewsLiveActivityContentState(0);
    (*(*(v157 - 8) + 56))(v156, v155, 1, v157);
    v158 = swift_task_alloc();
    *(v0 + 632) = v158;
    *v158 = v0;
    v158[1] = sub_219FCD298;
    v119 = *(v0 + 288);
    v120 = *(v0 + 272);
    v121 = (v0 + 96);
LABEL_78:

    return sub_219FD16A0(v119, v121, v120);
  }

  return result;
}

uint64_t sub_219FCD298()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 272);

  sub_219F6409C(v2, &qword_27CCDB0C0, &qword_21A0F1668);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);

  return MEMORY[0x2822009F8](sub_219FCD448, 0, 0);
}

uint64_t sub_219FCD448()
{
  v62 = v0;
  v61[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 312);
  v3 = *v1;
  v4 = v1[1];

  sub_21A033DA4((v0 + 112), v3, v4);

  sub_219F6409C(v2, &qword_27CCDB040, &unk_21A0F3020);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivity);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = (*(v0 + 608) - 1) & *(v0 + 608);
  if (v7)
  {
    while (1)
    {
      v8 = *(v0 + 600);
LABEL_7:
      *(v0 + 616) = v6;
      *(v0 + 608) = v7;
      v10 = *(v0 + 456);
      v12 = *(v0 + 408);
      v11 = *(v0 + 416);
      sub_219FE9098(*(v8 + 48) + *(*(v0 + 392) + 72) * (__clz(__rbit64(v7)) | (v6 << 6)), v11, type metadata accessor for NewsLiveActivity);
      sub_219FE9100(v11, v12, type metadata accessor for NewsLiveActivity);
      v13 = v12[1];
      *(v0 + 80) = *v12;
      *(v0 + 88) = v13;
      v14 = swift_task_alloc();
      *(v14 + 16) = v0 + 80;
      LOBYTE(v10) = sub_219FAA954(sub_219FACD94, v14, v10);
      *(v0 + 624) = v5;

      v15 = *(v0 + 408);
      if (v10)
      {
        break;
      }

      v7 &= v7 - 1;
      sub_219FE9018(v15, type metadata accessor for NewsLiveActivity);
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    sub_219FE9098(v15, *(v0 + 400), type metadata accessor for NewsLiveActivity);
    v29 = sub_21A0E514C();
    v30 = sub_21A0E66BC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 400);
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136446210;
      v35 = *v32;
      v36 = v32[1];

      sub_219FE9018(v32, type metadata accessor for NewsLiveActivity);
      v37 = sub_219F50144(v35, v36, v61);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_219F39000, v29, v30, "Activity we initiated in previous session is now running. ID=%{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x21CED2D30](v34, -1, -1);
      MEMORY[0x21CED2D30](v33, -1, -1);
    }

    else
    {

      sub_219FE9018(v32, type metadata accessor for NewsLiveActivity);
    }

    if (*(*(v0 + 448) + 16) && (v38 = sub_219F477B4(**(v0 + 408), *(*(v0 + 408) + 8)), (v39 & 1) != 0))
    {
      v40 = v38;
      v41 = *(v0 + 312);
      v42 = *(*(v0 + 448) + 56);
      v43 = type metadata accessor for NewsLiveActivityContent(0);
      v44 = *(v43 - 8);
      sub_219FE9098(v42 + *(v44 + 72) * v40, v41, type metadata accessor for NewsLiveActivityContent);
      (*(v44 + 56))(v41, 0, 1, v43);
    }

    else
    {
      v45 = *(v0 + 312);
      v43 = type metadata accessor for NewsLiveActivityContent(0);
      (*(*(v43 - 8) + 56))(v45, 1, 1, v43);
    }

    v46 = *(v0 + 408);
    v48 = *(v0 + 304);
    v47 = *(v0 + 312);
    v49 = v46[1];
    *(v0 + 96) = *v46;
    *(v0 + 104) = v49;
    sub_219F45500(v47, v48, &qword_27CCDB040, &unk_21A0F3020);
    type metadata accessor for NewsLiveActivityContent(0);
    v50 = (*(*(v43 - 8) + 48))(v48, 1, v43);
    v51 = *(v0 + 304);
    if (v50 == 1)
    {

      sub_219F6409C(v51, &qword_27CCDB040, &unk_21A0F3020);
      v52 = 1;
    }

    else
    {
      sub_219FE9098(*(v0 + 304), *(v0 + 272), type metadata accessor for NewsLiveActivityContentState);

      sub_219FE9018(v51, type metadata accessor for NewsLiveActivityContent);
      v52 = 0;
    }

    v53 = *(v0 + 272);
    v54 = type metadata accessor for NewsLiveActivityContentState(0);
    (*(*(v54 - 8) + 56))(v53, v52, 1, v54);
    v55 = swift_task_alloc();
    *(v0 + 632) = v55;
    *v55 = v0;
    v55[1] = sub_219FCD298;
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);

    return sub_219FD16A0(v56, (v0 + 96), v57);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      v8 = *(v0 + 600);
      if (v9 >= (((1 << *(v0 + 664)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v8 + 8 * v9 + 56);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    v16 = sub_21A0E514C();
    v17 = sub_21A0E66BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v18 = 136446210;
      swift_beginAccess();

      sub_21A0E686C();

      v61[0] = 0x3D64657472617453;
      v61[1] = 0xE800000000000000;
      sub_219F4DBDC();
      v19 = sub_21A0E65EC();
      MEMORY[0x21CED1980](v19);

      MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
      v20 = sub_21A0E65EC();
      MEMORY[0x21CED1980](v20);

      v21 = sub_219F50144(0x3D64657472617453, 0xE800000000000000, &v60);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_219F39000, v16, v17, "Finished reconciliation checks. %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x21CED2D30](v58, -1, -1);
      MEMORY[0x21CED2D30](v18, -1, -1);
    }

    v22 = sub_219FE3D10();
    *(v0 + 640) = v22;
    if (v22)
    {
      v24 = v22;
      *(v0 + 648) = v23;
      swift_beginAccess();
      v25 = *(v0 + 72);
      *(v0 + 128) = *(v0 + 64);
      *(v0 + 136) = v25;

      v59 = (v24 + *v24);
      v26 = swift_task_alloc();
      *(v0 + 656) = v26;
      *v26 = v0;
      v26[1] = sub_219FCDE7C;

      return v59(v0 + 128);
    }

    else
    {
      (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

      v28 = *(v0 + 8);

      return v28();
    }
  }
}

uint64_t sub_219FCDE7C()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 640);

  sub_219F3E9B4(v2, v1);

  return MEMORY[0x2822009F8](sub_219FCE020, 0, 0);
}

uint64_t sub_219FCE020()
{
  (*(v0[43] + 8))(v0[44], v0[42]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219FCE1C8(_OWORD *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = *a1;

  return MEMORY[0x2822009F8](sub_219FCE268, 0, 0);
}

uint64_t sub_219FCE268()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    *v4 = Strong;
    *(v4 + 8) = v2;
    *(v4 + 16) = v3;
    *(v4 + 24) = 6;
    swift_storeEnumTagMultiPayload();

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_219FCE3BC;
    v6 = v0[7];

    return sub_219FCE550(v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_219FCE3BC()
{
  v1 = *(*v0 + 56);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FCE4E8, 0, 0);
}

uint64_t sub_219FCE4E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FCE550(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(type metadata accessor for NewsLiveActivityManager.Event(0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FCE62C, 0, 0);
}

uint64_t sub_219FCE62C()
{
  v26 = v0;
  v1 = *(v0[4] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[10] = v2;

  os_unfair_lock_unlock((v1 + 24));
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_21A0E516C();
  v0[11] = __swift_project_value_buffer(v5, qword_280C88498);
  sub_219FE9098(v4, v3, type metadata accessor for NewsLiveActivityManager.Event);

  v6 = sub_21A0E514C();
  v7 = sub_21A0E66BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 134218242;
    if (v2 >> 62)
    {
      v10 = sub_21A0E699C();
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[9];
    *(v8 + 4) = v10;

    *(v8 + 12) = 2082;
    v12 = sub_219FE2CA8();
    v14 = v13;
    sub_219FE9018(v11, type metadata accessor for NewsLiveActivityManager.Event);
    v15 = sub_219F50144(v12, v14, &v25);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_219F39000, v6, v7, "About to notify %ld observers of event: %{public}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {
    v16 = v0[9];

    sub_219FE9018(v16, type metadata accessor for NewsLiveActivityManager.Event);
  }

  v17 = v0[8];
  v18 = v0[5];
  sub_219FE9098(v0[3], v17, type metadata accessor for NewsLiveActivityManager.Event);
  v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v0[12] = v20;
  sub_219FE9100(v17, v20 + v19, type metadata accessor for NewsLiveActivityManager.Event);
  v0[2] = v2;
  v21 = swift_task_alloc();
  v0[13] = v21;
  v21[2] = v0 + 2;
  v21[3] = &unk_21A0F1460;
  v21[4] = v20;
  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_219FCE9B4;
  v23 = MEMORY[0x277D84F78] + 8;
  v28 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v22, v23);
}

uint64_t sub_219FCE9B4()
{

  return MEMORY[0x2822009F8](sub_219FCEACC, 0, 0);
}

uint64_t sub_219FCEACC()
{
  v19 = v0;
  v1 = v0[7];
  v2 = v0[3];

  sub_219FE9098(v2, v1, type metadata accessor for NewsLiveActivityManager.Event);

  v3 = sub_21A0E514C();
  v4 = sub_21A0E668C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 134218242;
    if (v6 >> 62)
    {
      v9 = sub_21A0E699C();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[7];

    *(v7 + 4) = v9;

    *(v7 + 12) = 2082;
    v11 = sub_219FE2CA8();
    v13 = v12;
    sub_219FE9018(v10, type metadata accessor for NewsLiveActivityManager.Event);
    v14 = sub_219F50144(v11, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_219F39000, v3, v4, "Finished notifying %ld observers of event: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {
    v15 = v0[7];
    swift_bridgeObjectRelease_n();

    sub_219FE9018(v15, type metadata accessor for NewsLiveActivityManager.Event);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_219FCED08()
{

  return MEMORY[0x2822009F8](sub_219FCEE04, 0, 0);
}

uint64_t sub_219FCEE04()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_219FE9100(v1, v0[9], type metadata accessor for LiveActivityUpdate);
    Strong = swift_weakLoadStrong();
    v0[18] = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      v0[19] = v5;
      *v5 = v0;
      v5[1] = sub_219FCF014;
      v6 = v0[9];

      return sub_219FCF1F0(v6);
    }

    else
    {
      sub_219FE9018(v0[9], type metadata accessor for LiveActivityUpdate);
      v7 = swift_task_alloc();
      v0[17] = v7;
      *v7 = v0;
      v7[1] = sub_219FCED08;
      v8 = v0[14];
      v9 = v0[10];

      return MEMORY[0x2822003E8](v9, 0, 0, v8);
    }
  }
}

uint64_t sub_219FCF014()
{

  return MEMORY[0x2822009F8](sub_219FCF12C, 0, 0);
}

uint64_t sub_219FCF12C()
{
  sub_219FE9018(v0[9], type metadata accessor for LiveActivityUpdate);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_219FCED08;
  v2 = v0[14];
  v3 = v0[10];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_219FCF1F0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB038, &unk_21A0F1510);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0B8, &qword_21A0F1660);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for NewsLiveActivities.ActivityContentUpdatedChange(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for NewsLiveActivity(0);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for NewsLiveActivityManager.Event(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0C0, &qword_21A0F1668);
  v2[24] = swift_task_alloc();
  v2[25] = type metadata accessor for NewsLiveActivities.ActivitySubscribedChange(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for NewsLiveActivityContentState(0);
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for LiveActivityUpdate(0);
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FCF50C, 0, 0);
}

uint64_t sub_219FCF50C()
{
  v46 = v0;
  sub_219FE9098(v0[8], v0[34], type metadata accessor for LiveActivityUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[34];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = *v2;
      v0[45] = *v2;
      v4 = v2[1];
      v0[46] = v4;
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v5 = sub_21A0E516C();
      __swift_project_value_buffer(v5, qword_280C88498);

      v6 = sub_21A0E514C();
      v7 = sub_21A0E66BC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v45 = v9;
        *v8 = 136446210;

        v10 = sub_219F50144(v3, v4, &v45);

        *(v8 + 4) = v10;
        _os_log_impl(&dword_219F39000, v6, v7, "Manager notified activity dismissed. ID=%{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x21CED2D30](v9, -1, -1);
        MEMORY[0x21CED2D30](v8, -1, -1);
      }

      v11 = swift_task_alloc();
      v0[47] = v11;
      *v11 = v0;
      v11[1] = sub_219FD0D10;

      return MEMORY[0x28218EB48]();
    }

    else
    {
      sub_219FE9100(v0[34], v0[31], type metadata accessor for NewsLiveActivityContentState);
      if (qword_280C88490 != -1)
      {
        swift_once();
      }

      v29 = v0[30];
      v30 = v0[31];
      v31 = sub_21A0E516C();
      __swift_project_value_buffer(v31, qword_280C88498);
      sub_219FE9098(v30, v29, type metadata accessor for NewsLiveActivityContentState);
      v32 = sub_21A0E514C();
      v33 = sub_21A0E66BC();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[30];
      if (v34)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45 = v37;
        *v36 = 136446210;
        v38 = *v35;
        v39 = v35[1];

        sub_219FE9018(v35, type metadata accessor for NewsLiveActivityContentState);
        v40 = sub_219F50144(v38, v39, &v45);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_219F39000, v32, v33, "Manager notified activity content updated. ID=%{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x21CED2D30](v37, -1, -1);
        MEMORY[0x21CED2D30](v36, -1, -1);
      }

      else
      {

        sub_219FE9018(v35, type metadata accessor for NewsLiveActivityContentState);
      }

      v41 = swift_task_alloc();
      v0[43] = v41;
      *v41 = v0;
      v41[1] = sub_219FD070C;
      v42 = v0[31];
      v43 = v0[14];

      return sub_219FD34B8(v43, v42);
    }
  }

  else
  {
    v12 = v0[32];
    v13 = *v2;
    v0[35] = *v2;
    v14 = v2[1];
    v0[36] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB0C8, &qword_21A0F1678);
    sub_219FE9100(v2 + *(v15 + 48), v12, type metadata accessor for NewsLiveActivityContentState);
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v16 = sub_21A0E516C();
    v0[37] = __swift_project_value_buffer(v16, qword_280C88498);

    v17 = sub_21A0E514C();
    v18 = sub_21A0E66BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;

      v21 = sub_219F50144(v13, v14, &v45);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_219F39000, v17, v18, "Manager notified activity started. ID=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CED2D30](v20, -1, -1);
      MEMORY[0x21CED2D30](v19, -1, -1);
    }

    v22 = v0[32];
    v23 = v0[28];
    v24 = v0[29];
    v25 = v0[24];
    v0[4] = v13;
    v0[5] = v14;
    sub_219FE9098(v22, v25, type metadata accessor for NewsLiveActivityContentState);
    (*(v24 + 56))(v25, 0, 1, v23);
    v26 = swift_task_alloc();
    v0[38] = v26;
    *v26 = v0;
    v26[1] = sub_219FCFBA4;
    v27 = v0[27];
    v28 = v0[24];

    return sub_219FD16A0(v27, v0 + 4, v28);
  }
}

uint64_t sub_219FCFBA4()
{
  v1 = *(*v0 + 192);

  sub_219F6409C(v1, &qword_27CCDB0C0, &qword_21A0F1668);

  return MEMORY[0x2822009F8](sub_219FCFCCC, 0, 0);
}

uint64_t sub_219FCFCCC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = *(v0 + 72);
  *(v0 + 312) = *(v7 + 144);
  v8 = *(v4 + 20);
  *(v0 + 416) = v8;
  v9 = *(v3 + v8 + *(v6 + 28));
  if (v9 == 7)
  {
    LOBYTE(v9) = 0;
  }

  *v5 = v7;
  *(v5 + 8) = v1;
  *(v5 + 16) = v2;
  *(v5 + 24) = v9;
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_219FCFDD0;
  v11 = *(v0 + 184);

  return sub_219FCE550(v11);
}

uint64_t sub_219FCFDD0()
{
  v1 = *(*v0 + 184);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FCFEFC, 0, 0);
}

uint64_t sub_219FCFEFC()
{
  v25 = v0;
  if (sub_219FD1F60())
  {
    sub_219FE9098(*(v0 + 216), *(v0 + 208), type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);
    v1 = sub_21A0E514C();
    v2 = sub_21A0E66BC();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 208);
    if (v3)
    {
      v5 = *(v0 + 200);
      v6 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136446210;
      sub_219FE9098(v4 + *(v5 + 20), v6, type metadata accessor for NewsLiveActivity);
      sub_219FE9018(v4, type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);
      v9 = *v6;
      v10 = v6[1];

      sub_219FE9018(v6, type metadata accessor for NewsLiveActivity);
      v11 = sub_219F50144(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_219F39000, v1, v2, "Activity we just subscribed to received unsubscription request during subscription; automatically un-subscribing. ID=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CED2D30](v8, -1, -1);
      MEMORY[0x21CED2D30](v7, -1, -1);
    }

    else
    {

      sub_219FE9018(v4, type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);
    }

    v15 = *(v0 + 280);
    v16 = *(v0 + 288);
    v17 = *(v0 + 176);
    v18 = *(v0 + 72);
    v19 = *(v0 + 216) + *(v0 + 416);
    v20 = *(*(v0 + 144) + 32);
    *(v0 + 420) = v20;
    v21 = *(v19 + v20);
    if (v21 == 7)
    {
      LOBYTE(v21) = 0;
    }

    *v17 = v18;
    *(v17 + 8) = v15;
    *(v17 + 16) = v16;
    *(v17 + 24) = v21;
    swift_storeEnumTagMultiPayload();

    v22 = swift_task_alloc();
    *(v0 + 328) = v22;
    *v22 = v0;
    v22[1] = sub_219FD02C0;
    v23 = *(v0 + 176);

    return sub_219FCE550(v23);
  }

  else
  {

    v12 = *(v0 + 256);
    sub_219FE9018(*(v0 + 216), type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);
    sub_219FE9018(v12, type metadata accessor for NewsLiveActivityContentState);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_219FD02C0()
{
  v1 = *(*v0 + 420);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v5 = *(*v0 + 216);
  v6 = *(*v0 + 176);
  v7 = *v0;

  sub_219FE9018(v6, type metadata accessor for NewsLiveActivityManager.Event);
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  v8 = *(v5 + v2 + v1);
  if (v8 == 7)
  {
    LOBYTE(v8) = 0;
  }

  *(v7 + 424) = v8;
  v9 = swift_task_alloc();
  *(v7 + 336) = v9;
  *v9 = v7;
  v9[1] = sub_219FD0498;

  return sub_219FD24B8((v7 + 48), (v7 + 424));
}

uint64_t sub_219FD0498()
{

  return MEMORY[0x2822009F8](sub_219FD05B0, 0, 0);
}

uint64_t sub_219FD05B0()
{
  v1 = v0[32];
  sub_219FE9018(v0[27], type metadata accessor for NewsLiveActivities.ActivitySubscribedChange);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityContentState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FD070C()
{

  return MEMORY[0x2822009F8](sub_219FD0808, 0, 0);
}

uint64_t sub_219FD0808()
{
  v1 = v0[14];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    sub_219FE9018(v0[31], type metadata accessor for NewsLiveActivityContentState);
    sub_219F6409C(v1, &qword_27CCDB0B8, &qword_21A0F1660);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[9];
    sub_219FE9100(v1, v5, type metadata accessor for NewsLiveActivities.ActivityContentUpdatedChange);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB018, &qword_21A0F1458) + 48);
    *v4 = v6;
    sub_219FE9098(v5, v4 + v7, type metadata accessor for NewsLiveActivity);
    swift_storeEnumTagMultiPayload();

    v8 = swift_task_alloc();
    v0[44] = v8;
    *v8 = v0;
    v8[1] = sub_219FD0A88;
    v9 = v0[21];

    return sub_219FCE550(v9);
  }
}

uint64_t sub_219FD0A88()
{
  v1 = *(*v0 + 168);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD0BB4, 0, 0);
}

uint64_t sub_219FD0BB4()
{
  v1 = v0[31];
  sub_219FE9018(v0[17], type metadata accessor for NewsLiveActivities.ActivityContentUpdatedChange);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityContentState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FD0D10()
{

  if (v0)
  {

    v1 = sub_219FEAA9C;
  }

  else
  {
    v1 = sub_219FD0E28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_219FD0E28()
{
  v1 = v0[46];
  v0[2] = v0[45];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = sub_219FD0ED8;
  v3 = v0[10];

  return sub_219FD3AA0(v3, v0 + 2);
}

uint64_t sub_219FD0ED8()
{

  return MEMORY[0x2822009F8](sub_219FD0FD4, 0, 0);
}

uint64_t sub_219FD0FD4()
{
  v1 = *(v0 + 80);
  v2 = (*(*(v0 + 96) + 48))(v1, 1, *(v0 + 88));
  v3 = *(v0 + 368);
  if (v2 == 1)
  {

    sub_219F6409C(v1, &qword_27CCDB038, &unk_21A0F1510);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    sub_219FE9100(v1, v9, type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
    v11 = *(v9 + *(v8 + 32));
    *(v0 + 425) = v11;
    if (v11 == 7)
    {
      LOBYTE(v11) = 6;
    }

    *(v0 + 392) = *(v10 + 144);
    *v7 = v10;
    *(v7 + 8) = v6;
    *(v7 + 16) = v3;
    *(v7 + 24) = v11;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    v12 = swift_task_alloc();
    *(v0 + 400) = v12;
    *v12 = v0;
    v12[1] = sub_219FD1244;
    v13 = *(v0 + 168);

    return sub_219FCE550(v13);
  }
}

uint64_t sub_219FD1244()
{
  v1 = *(*v0 + 168);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD1370, 0, 0);
}

uint64_t sub_219FD1370()
{
  v1 = *(v0 + 425);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 168);
  if (v1 == 7)
  {
    LOBYTE(v1) = 6;
  }

  *v4 = *(v0 + 72);
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_219FD1438;
  v6 = *(v0 + 168);

  return sub_219FCE550(v6);
}

uint64_t sub_219FD1438()
{
  v1 = *(*v0 + 168);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD1564, 0, 0);
}

uint64_t sub_219FD1564()
{
  sub_219FE9018(*(v0 + 104), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD16A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB020, &qword_21A0F14B8);
  v4[6] = swift_task_alloc();
  v4[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB028, &unk_21A0F14C0);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for NewsLiveActivity(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0, &qword_21A0EA5A8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v4[15] = v7;
  v4[16] = v8;
  v4[17] = v9;

  return MEMORY[0x2822009F8](sub_219FD1844, 0, 0);
}

uint64_t sub_219FD1844()
{
  v35 = *(v0 + 128);
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v2 + 56);
  v5 = swift_task_alloc();
  *(v5 + 16) = v35;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  os_unfair_lock_lock((v4 + 24));
  sub_219FEA08C((v4 + 16), v1);
  os_unfair_lock_unlock((v4 + 24));
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 48);
  *&v35 = *(v0 + 40);

  v14 = *(v12 + 48);
  sub_219F4D494(v11, v6, &qword_27CCD99E0, &qword_21A0EA5A8);
  sub_219FE9100(v11 + v14, v8, type metadata accessor for NewsLiveActivity);
  sub_219FE9098(v8, v7, type metadata accessor for NewsLiveActivity);
  (*(v10 + 56))(v7, 0, 1, v9);
  v15 = *(v35 + 48);
  sub_219F45500(v7, v13, &qword_27CCD99E0, &qword_21A0EA5A8);
  sub_219F45500(v6, v13 + v15, &qword_27CCD99E0, &qword_21A0EA5A8);
  v16 = *(v10 + 48);
  if (v16(v13, 1, v9) == 1)
  {
    v17 = *(v0 + 72);
    sub_219F6409C(*(v0 + 112), &qword_27CCD99E0, &qword_21A0EA5A8);
    if (v16(v13 + v15, 1, v17) == 1)
    {
      sub_219F6409C(*(v0 + 48), &qword_27CCD99E0, &qword_21A0EA5A8);
LABEL_11:
      v31 = *(v0 + 96);
      v32 = *(v0 + 16);
      sub_219F4D494(*(v0 + 120), v32, &qword_27CCD99E0, &qword_21A0EA5A8);
      v33 = type metadata accessor for NewsLiveActivities.ActivitySubscribedChange(0);
      sub_219FE9100(v31, v32 + *(v33 + 20), type metadata accessor for NewsLiveActivity);

      v34 = *(v0 + 8);

      return v34();
    }

    goto LABEL_6;
  }

  v18 = *(v0 + 72);
  sub_219F45500(*(v0 + 48), *(v0 + 104), &qword_27CCD99E0, &qword_21A0EA5A8);
  v19 = v16(v13 + v15, 1, v18);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  if (v19 == 1)
  {
    sub_219F6409C(*(v0 + 112), &qword_27CCD99E0, &qword_21A0EA5A8);
    sub_219FE9018(v20, type metadata accessor for NewsLiveActivity);
LABEL_6:
    sub_219F6409C(*(v0 + 48), &qword_27CCDB020, &qword_21A0F14B8);
    goto LABEL_7;
  }

  v28 = *(v0 + 88);
  v29 = *(v0 + 48);
  sub_219FE9100(v13 + v15, v28, type metadata accessor for NewsLiveActivity);
  v30 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v20, v28);
  sub_219FE9018(v28, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v21, &qword_27CCD99E0, &qword_21A0EA5A8);
  sub_219FE9018(v20, type metadata accessor for NewsLiveActivity);
  sub_219F6409C(v29, &qword_27CCD99E0, &qword_21A0EA5A8);
  if (v30)
  {
    goto LABEL_11;
  }

LABEL_7:
  v22 = *(v0 + 32);
  v23 = v22[5];
  v24 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
  v36 = (*(v24 + 16) + **(v24 + 16));
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_219FD1D5C;
  v26 = *(v0 + 96);

  return v36(v26, v23, v24);
}

uint64_t sub_219FD1D5C()
{

  return MEMORY[0x2822009F8](sub_219FD1E58, 0, 0);
}

uint64_t sub_219FD1E58()
{
  v1 = v0[12];
  v2 = v0[2];
  sub_219F4D494(v0[15], v2, &qword_27CCD99E0, &qword_21A0EA5A8);
  v3 = type metadata accessor for NewsLiveActivities.ActivitySubscribedChange(0);
  sub_219FE9100(v1, v2 + *(v3 + 20), type metadata accessor for NewsLiveActivity);

  v4 = v0[1];

  return v4();
}

BOOL sub_219FD1F60()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB050, &qword_21A0F1560);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0, &qword_21A0EA5A8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB058, &qword_21A0F1568);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v37 - v23;
  sub_219F45500(v1, v13, &qword_27CCD99E0, &qword_21A0EA5A8);
  v25 = type metadata accessor for NewsLiveActivity(0);
  if ((*(*(v25 - 8) + 48))(v13, 1, v25) == 1)
  {
    sub_219F6409C(v13, &qword_27CCD99E0, &qword_21A0EA5A8);
    v26 = 1;
  }

  else
  {
    sub_219FE9098(&v13[*(v25 + 20)], v24, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_219FE9018(v13, type metadata accessor for NewsLiveActivity);
    v26 = 0;
  }

  v27 = *(v3 + 56);
  v27(v24, v26, 1, v2);
  v28 = type metadata accessor for ScheduledLiveActivity(0);
  (*(*(v28 - 8) + 56))(v21, 3, 3, v28);
  v27(v21, 0, 1, v2);
  v29 = *(v6 + 48);
  sub_219F45500(v24, v9, &qword_27CCDB058, &qword_21A0F1568);
  sub_219F45500(v21, &v9[v29], &qword_27CCDB058, &qword_21A0F1568);
  v30 = *(v3 + 48);
  if (v30(v9, 1, v2) != 1)
  {
    v32 = v38;
    sub_219F45500(v9, v38, &qword_27CCDB058, &qword_21A0F1568);
    if (v30(&v9[v29], 1, v2) != 1)
    {
      v33 = &v9[v29];
      v34 = v32;
      v35 = v37;
      sub_219FE9100(v33, v37, type metadata accessor for NewsLiveActivitySubscriptionState);
      v31 = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(v34, v35);
      sub_219FE9018(v35, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219F6409C(v21, &qword_27CCDB058, &qword_21A0F1568);
      sub_219F6409C(v24, &qword_27CCDB058, &qword_21A0F1568);
      sub_219FE9018(v34, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_219F6409C(v9, &qword_27CCDB058, &qword_21A0F1568);
      return v31;
    }

    sub_219F6409C(v21, &qword_27CCDB058, &qword_21A0F1568);
    sub_219F6409C(v24, &qword_27CCDB058, &qword_21A0F1568);
    sub_219FE9018(v32, type metadata accessor for NewsLiveActivitySubscriptionState);
    goto LABEL_9;
  }

  sub_219F6409C(v21, &qword_27CCDB058, &qword_21A0F1568);
  sub_219F6409C(v24, &qword_27CCDB058, &qword_21A0F1568);
  if (v30(&v9[v29], 1, v2) != 1)
  {
LABEL_9:
    sub_219F6409C(v9, &qword_27CCDB050, &qword_21A0F1560);
    return 0;
  }

  sub_219F6409C(v9, &qword_27CCDB058, &qword_21A0F1568);
  return 1;
}

uint64_t sub_219FD24B8(uint64_t *a1, _BYTE *a2)
{
  *(v3 + 32) = v2;
  v6 = type metadata accessor for ScheduledLiveActivity(0);
  *(v3 + 40) = v6;
  *(v3 + 48) = *(v6 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for NewsLiveActivitySubscriptionState(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB030, &qword_21A0F14E8);
  *(v3 + 96) = swift_task_alloc();
  v7 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange(0);
  *(v3 + 104) = v7;
  *(v3 + 112) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v3 + 120) = v8;
  *(v3 + 128) = v9;
  *(v3 + 136) = v10;
  *(v3 + 187) = *a2;
  v11 = swift_task_alloc();
  *(v3 + 144) = v11;
  *v11 = v3;
  v11[1] = sub_219FD26B8;

  return MEMORY[0x28218EB48]();
}

uint64_t sub_219FD26B8()
{

  if (v0)
  {

    v1 = sub_219FEAAAC;
  }

  else
  {
    v1 = sub_219FD27D0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_219FD27D0()
{
  v1 = *(v0 + 187);
  v2 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v2;
  *(v0 + 184) = v1;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_219FD2898;
  v4 = *(v0 + 96);

  return sub_219FD8B14(v4, (v0 + 16), (v0 + 184));
}

uint64_t sub_219FD2898()
{

  return MEMORY[0x2822009F8](sub_219FD2994, 0, 0);
}

uint64_t sub_219FD2994()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_219F6409C(v2, &qword_27CCDB030, &qword_21A0F14E8);
LABEL_14:

    v25 = *(v0 + 8);

    return v25();
  }

  v3 = *(v0 + 120);
  sub_219FE9100(v2, v3, type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange);
  v4 = (v3 + *(v1 + 20));
  if ((_s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v3, v4) & 1) == 0)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 88);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(type metadata accessor for NewsLiveActivity(0) + 20);
    (*(v8 + 56))(v6, 2, 3, v7);
    LOBYTE(v7) = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(v5 + v9, v6);
    sub_219FE9018(v6, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (v7)
    {
      *(v0 + 186) = *(v0 + 187);
      v10 = swift_task_alloc();
      *(v0 + 160) = v10;
      *v10 = v0;
      v10[1] = sub_219FD2E20;

      return sub_219FD939C(v4, (v0 + 186));
    }
  }

  v12 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(*(v0 + 120), v4);
  v13 = *(v0 + 120);
  if (v12)
  {
    v14 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange;
    v15 = *(v0 + 120);
LABEL_13:
    sub_219FE9018(v15, v14);
    goto LABEL_14;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = type metadata accessor for NewsLiveActivity(0);
  v20 = *(v19 + 20);
  sub_219FE9098(v13 + v20, v16, type metadata accessor for NewsLiveActivitySubscriptionState);
  v21 = *(v18 + 48);
  if (v21(v16, 3, v17) || (v22 = *(v0 + 88), v23 = *(v0 + 48), v34 = *(v0 + 40), sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivitySubscriptionState), v24 = *(v19 + 20), (*(v23 + 56))(v22, 2, 3, v34), LOBYTE(v24) = _s22NewsLiveActivitiesCore0aB25ActivitySubscriptionStateO2eeoiySbAC_ACtFZ_0(v4 + v24, v22), sub_219FE9018(v22, type metadata accessor for NewsLiveActivitySubscriptionState), (v24 & 1) != 0))
  {
    v15 = *(v0 + 120);
    v14 = type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange;
    goto LABEL_13;
  }

  v26 = *(v0 + 72);
  v27 = *(v0 + 40);
  sub_219FE9098(v13 + v20, v26, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (v21(v26, 3, v27))
  {
    v28 = *(v0 + 72);
    sub_219FE9018(*(v0 + 120), type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange);
    v14 = type metadata accessor for NewsLiveActivitySubscriptionState;
    v15 = v28;
    goto LABEL_13;
  }

  v29 = *(v0 + 187);
  v30 = *(v0 + 64);
  v31 = *(v0 + 56);
  sub_219FE9100(*(v0 + 72), v31, type metadata accessor for ScheduledLiveActivity);
  sub_219FE9100(v31, v30, type metadata accessor for ScheduledLiveActivity);
  *(v0 + 185) = v29;
  v32 = swift_task_alloc();
  *(v0 + 168) = v32;
  *v32 = v0;
  v32[1] = sub_219FD2FE4;
  v33 = *(v0 + 64);

  return sub_219FDA62C(v4, v33, (v0 + 185));
}

uint64_t sub_219FD2E20()
{

  return MEMORY[0x2822009F8](sub_219FD2F1C, 0, 0);
}

uint64_t sub_219FD2F1C()
{
  sub_219FE9018(*(v0 + 120), type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD2FE4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_219FD31E0;
  }

  else
  {
    v2 = sub_219FD30F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD30F8()
{
  v1 = v0[15];
  sub_219FE9018(v0[8], type metadata accessor for ScheduledLiveActivity);
  sub_219FE9018(v1, type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange);

  v2 = v0[1];

  return v2();
}

uint64_t sub_219FD31E0()
{
  v23 = v0;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_21A0E516C();
  __swift_project_value_buffer(v2, qword_280C88498);

  v3 = v1;
  v4 = sub_21A0E514C();
  v5 = sub_21A0E669C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[16];
    v9 = v0[17];
    v21 = v0[15];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_219F50144(v8, v9, &v22);
    *(v11 + 12) = 2114;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_219F39000, v4, v5, "Unable to cancel scheduled activity id=%{public}s, error: %{public}@", v11, 0x16u);
    sub_219F6409C(v12, &qword_27CCD9E28, &qword_21A0F1500);
    MEMORY[0x21CED2D30](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CED2D30](v13, -1, -1);
    MEMORY[0x21CED2D30](v11, -1, -1);

    sub_219FE9018(v10, type metadata accessor for ScheduledLiveActivity);
    v16 = v21;
  }

  else
  {
    v17 = v0[15];
    v18 = v0[8];

    sub_219FE9018(v18, type metadata accessor for ScheduledLiveActivity);
    v16 = v17;
  }

  sub_219FE9018(v16, type metadata accessor for NewsLiveActivities.ActivityAwaitingUnsubscriptionChange);

  v19 = v0[1];

  return v19();
}

uint64_t sub_219FD34B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NewsLiveActivity(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0, &qword_21A0EA5A8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219FD35C0, 0, 0);
}

uint64_t sub_219FD35C0()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v0[4] + 56);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v2;
  os_unfair_lock_lock((v5 + 24));
  sub_219FEA0AC((v5 + 16), v1);
  os_unfair_lock_unlock((v5 + 24));
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];
  v10 = v0[6];

  sub_219F45500(v7, v8, &qword_27CCD99E0, &qword_21A0EA5A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v11 = v0[8];
    sub_219F6409C(v0[9], &qword_27CCD99E0, &qword_21A0EA5A8);
    sub_219F6409C(v11, &qword_27CCD99E0, &qword_21A0EA5A8);
    v12 = v0[2];
    v13 = type metadata accessor for NewsLiveActivities.ActivityContentUpdatedChange(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[4];
    sub_219FE9100(v0[8], v0[7], type metadata accessor for NewsLiveActivity);
    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
    v21 = (*(v18 + 16) + **(v18 + 16));
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_219FD38A0;
    v20 = v0[7];

    return v21(v20, v17, v18);
  }
}

uint64_t sub_219FD38A0()
{

  return MEMORY[0x2822009F8](sub_219FD399C, 0, 0);
}

uint64_t sub_219FD399C()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_219F6409C(v0[9], &qword_27CCD99E0, &qword_21A0EA5A8);
  sub_219FE9100(v1, v2, type metadata accessor for NewsLiveActivity);
  v3 = v0[2];
  v4 = type metadata accessor for NewsLiveActivities.ActivityContentUpdatedChange(0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_219FD3AA0(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0, &qword_21A0EA5A8);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB038, &unk_21A0F1510);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange(0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[10] = v6;
  v3[11] = v7;
  v3[12] = v8;

  return MEMORY[0x2822009F8](sub_219FD3BDC, 0, 0);
}

uint64_t sub_219FD3BDC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v4 + 56);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_219FE9464((v5 + 16), v3);
  os_unfair_lock_unlock((v5 + 24));
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[4];

  sub_219F45500(v10, v9, &qword_27CCDB038, &unk_21A0F1510);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v11 = v0[7];
    v12 = &qword_27CCDB038;
    v13 = &unk_21A0F1510;
LABEL_8:
    sub_219F6409C(v11, v12, v13);

    v26 = v0[1];

    return v26();
  }

  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[6];
  sub_219FE9100(v0[7], v14, type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
  sub_219F45500(v14 + *(v15 + 20), v16, &qword_27CCD99E0, &qword_21A0EA5A8);
  v17 = type metadata accessor for NewsLiveActivity(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) != 1)
  {
    v25 = v0[6];
    sub_219FE9018(v0[10], type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);
    v12 = &qword_27CCD99E0;
    v13 = &qword_21A0EA5A8;
    v11 = v25;
    goto LABEL_8;
  }

  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[5];
  sub_219F6409C(v0[6], &qword_27CCD99E0, &qword_21A0EA5A8);
  v21 = v20[5];
  v22 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v21);
  v0[2] = v19;
  v0[3] = v18;
  v27 = (*(v22 + 24) + **(v22 + 24));
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = sub_219FD3F24;

  return v27(v0 + 2, v21, v22);
}

uint64_t sub_219FD3F24()
{

  return MEMORY[0x2822009F8](sub_219FD4020, 0, 0);
}

uint64_t sub_219FD4020()
{
  sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityUnsubscribedChange);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD40B0(uint64_t *a1, _BYTE *a2)
{
  *(v3 + 32) = v2;
  *(v3 + 40) = type metadata accessor for NewsLiveActivityManager.Event(0);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = type metadata accessor for LiveActivitySubscriptionError(0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange(0);
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  *(v3 + 80) = v6;
  *(v3 + 88) = v7;
  *(v3 + 96) = v8;
  *(v3 + 180) = *a2;

  return MEMORY[0x2822009F8](sub_219FD41C4, 0, 0);
}

uint64_t sub_219FD41C4()
{
  v42 = v0;
  v1 = *(v0 + 32);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  LOBYTE(v3) = (*(v3 + 8))(v2, v3);
  sub_21A0E50AC();
  if ((v3 & 1) != 0 && *(v0 + 176))
  {
    v4 = v1[5];
    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
    LOBYTE(v4) = (*(v5 + 16))(v4, v5);
    sub_21A0E50AC();
    if ((v4 & 1) != 0 && *(v0 + 177))
    {
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_219FD47A0;

      return MEMORY[0x28218EB48]();
    }

    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v24 = sub_21A0E516C();
    __swift_project_value_buffer(v24, qword_280C88498);

    v25 = sub_21A0E514C();
    v26 = sub_21A0E669C();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_219F50144(v28, v27, &v41);
      _os_log_impl(&dword_219F39000, v25, v26, "Attempt to begin a Live Activity aborted as the user has disabled them. ID=%{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CED2D30](v30, -1, -1);
      MEMORY[0x21CED2D30](v29, -1, -1);
    }

    v31 = *(v0 + 180);
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    v36 = *(v0 + 32);
    swift_storeEnumTagMultiPayload();
    *(v0 + 144) = sub_219F3CA68(&qword_27CCD9E38, 255, type metadata accessor for LiveActivitySubscriptionError, &protocol conformance descriptor for LiveActivitySubscriptionError);
    v37 = swift_allocError();
    sub_219FE9098(v34, v38, type metadata accessor for LiveActivitySubscriptionError);
    *v35 = v36;
    *(v35 + 8) = v33;
    *(v35 + 16) = v32;
    *(v35 + 24) = v31;
    *(v35 + 32) = v37;
    swift_storeEnumTagMultiPayload();

    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v23 = sub_219FD4CC0;
  }

  else
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v7 = sub_21A0E516C();
    __swift_project_value_buffer(v7, qword_280C88498);

    v8 = sub_21A0E514C();
    v9 = sub_21A0E669C();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_219F50144(v11, v10, &v41);
      _os_log_impl(&dword_219F39000, v8, v9, "Attempt to begin a Live Activity aborted as the feature isn't permitted on this device. ID=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CED2D30](v13, -1, -1);
      MEMORY[0x21CED2D30](v12, -1, -1);
    }

    v14 = *(v0 + 180);
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 64);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);
    swift_storeEnumTagMultiPayload();
    *(v0 + 160) = sub_219F3CA68(&qword_27CCD9E38, 255, type metadata accessor for LiveActivitySubscriptionError, &protocol conformance descriptor for LiveActivitySubscriptionError);
    v20 = swift_allocError();
    sub_219FE9098(v17, v21, type metadata accessor for LiveActivitySubscriptionError);
    *v18 = v19;
    *(v18 + 8) = v16;
    *(v18 + 16) = v15;
    *(v18 + 24) = v14;
    *(v18 + 32) = v20;
    swift_storeEnumTagMultiPayload();

    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *v22 = v0;
    v23 = sub_219FD4EC8;
  }

  v22[1] = v23;
  v39 = *(v0 + 48);

  return sub_219FCE550(v39);
}

uint64_t sub_219FD47A0()
{

  if (v0)
  {

    v1 = sub_219FD50D0;
  }

  else
  {
    v1 = sub_219FEAAB0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_219FD48B8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_219FD5198;
  }

  else
  {
    v2 = sub_219FD49CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD49CC()
{
  if (sub_219FD5B94())
  {
    v1 = *(v0 + 80);
    v2 = *(*(v0 + 72) + 20);
    *(v0 + 179) = *(v0 + 180);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_219FD4B08;

    return sub_219FD6400(v1 + v2, (v0 + 179));
  }

  else
  {
    sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_219FD4B08()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_219FD521C;
  }

  else
  {
    v2 = sub_219FD4C1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219FD4C1C()
{
  sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD4CC0()
{
  v1 = *(*v0 + 48);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD4DEC, 0, 0);
}

uint64_t sub_219FD4DEC()
{
  v1 = *(v0 + 64);
  swift_allocError();
  sub_219FE9098(v1, v2, type metadata accessor for LiveActivitySubscriptionError);
  swift_willThrow();
  sub_219FE9018(v1, type metadata accessor for LiveActivitySubscriptionError);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219FD4EC8()
{
  v1 = *(*v0 + 48);

  sub_219FE9018(v1, type metadata accessor for NewsLiveActivityManager.Event);

  return MEMORY[0x2822009F8](sub_219FD4FF4, 0, 0);
}

uint64_t sub_219FD4FF4()
{
  v1 = *(v0 + 64);
  swift_allocError();
  sub_219FE9098(v1, v2, type metadata accessor for LiveActivitySubscriptionError);
  swift_willThrow();
  sub_219FE9018(v1, type metadata accessor for LiveActivitySubscriptionError);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219FD50D0()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v2;
  *(v0 + 178) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_219FD48B8;
  v4 = *(v0 + 80);

  return sub_219FD52BC(v4, (v0 + 16), (v0 + 178));
}

uint64_t sub_219FD5198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219FD521C()
{
  sub_219FE9018(*(v0 + 80), type metadata accessor for NewsLiveActivities.ActivityAwaitingSubscriptionChange);

  v1 = *(v0 + 8);

  return v1();
}