uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.localizedName.getter()
{
  v1 = sub_21CD83834();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *v0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (v3 == 3)
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  if (!*v0)
  {
    sub_21CD83A94();
    if (qword_27CE18BA8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_14:
  v4 = qword_27CE3EA38;
  sub_21CD83824();
  return sub_21CD83B34();
}

uint64_t sub_21CD48648()
{
  v1 = *v0;
  v2 = 0x656C616D6566;
  v3 = 0x696C707041746F6ELL;
  v4 = 0x6963657053746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701601645;
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

uint64_t sub_21CD486EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5B588(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD48714(uint64_t a1)
{
  v2 = sub_21CD5634C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48750(uint64_t a1)
{
  v2 = sub_21CD5634C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4878C(uint64_t a1)
{
  v2 = sub_21CD564F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD487C8(uint64_t a1)
{
  v2 = sub_21CD564F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD48804(uint64_t a1)
{
  v2 = sub_21CD5649C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48840(uint64_t a1)
{
  v2 = sub_21CD5649C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4887C(uint64_t a1)
{
  v2 = sub_21CD56448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD488B8(uint64_t a1)
{
  v2 = sub_21CD56448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD488F4(uint64_t a1)
{
  v2 = sub_21CD563F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48930(uint64_t a1)
{
  v2 = sub_21CD563F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4896C(uint64_t a1)
{
  v2 = sub_21CD563A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD489A8(uint64_t a1)
{
  v2 = sub_21CD563A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3B0, &qword_21CD950D0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3B8, &qword_21CD950D8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3C0, &qword_21CD950E0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3C8, &qword_21CD950E8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3D0, &qword_21CD950F0);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3D8, &qword_21CD950F8);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_0(v18, v17);
  sub_21CD5634C();
  sub_21CD842B4();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_21CD5649C();
      v31 = v45;
      sub_21CD840E4();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_21CD564F0();
      v31 = v45;
      sub_21CD840E4();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_21CD56448();
      v22 = v33;
      v23 = v45;
      sub_21CD840E4();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_21CD563F4();
      v22 = v36;
      v23 = v45;
      sub_21CD840E4();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_21CD563A0();
      v22 = v39;
      v23 = v45;
      sub_21CD840E4();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B410, &qword_21CD95100);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B418, &qword_21CD95108);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B420, &qword_21CD95110);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B428, &qword_21CD95118);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B430, &qword_21CD95120);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B438, &qword_21CD95128);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_21CD5634C();
  v19 = v61;
  sub_21CD842A4();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_21CD840D4();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_21CCCBB30();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_21CD83FA4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v34 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_21CD5649C();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_21CD84034();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_21CD564F0();
      v37 = v46;
      sub_21CD84034();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_21CD56448();
    v38 = v24;
    v39 = v46;
    sub_21CD84034();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_21CD563A0();
    v41 = v56;
    v42 = v46;
    sub_21CD84034();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v67 = 3;
  sub_21CD563F4();
  v31 = v46;
  sub_21CD84034();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_21CD49798()
{
  if (*v0)
  {
    return 0x6C706D6F636E6F6ELL;
  }

  else
  {
    return 0x6E61696C706D6F63;
  }
}

uint64_t sub_21CD497E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E61696C706D6F63 && a2 == 0xE900000000000074;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C706D6F636E6F6ELL && a2 == 0xEC000000746E6169)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD498C8(uint64_t a1)
{
  v2 = sub_21CD56544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD49904(uint64_t a1)
{
  v2 = sub_21CD56544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD49940(uint64_t a1)
{
  v2 = sub_21CD565EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4997C(uint64_t a1)
{
  v2 = sub_21CD565EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD499B8(uint64_t a1)
{
  v2 = sub_21CD56598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD499F4(uint64_t a1)
{
  v2 = sub_21CD56598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B440, &qword_21CD95130);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B448, &qword_21CD95138);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B450, &qword_21CD95140);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56544();
  sub_21CD842B4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_21CD56598();
    v14 = v18;
    sub_21CD840E4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_21CD565EC();
    sub_21CD840E4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B470, &qword_21CD95148);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B478, &qword_21CD95150);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B480, &qword_21CD95158);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56544();
  v12 = v31;
  sub_21CD842A4();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_21CD840D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_21CCD18DC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_21CD83FA4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v22 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_21CD56598();
        sub_21CD84034();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_21CD565EC();
        sub_21CD84034();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.sign.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.init(code:sign:value:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::DrivingPrivilege::Code *__return_ptr retstr, Swift::String code, Swift::String_optional sign, Swift::String_optional value)
{
  retstr->code = code;
  retstr->sign = sign;
  retstr->value = value;
}

uint64_t sub_21CD4A2E4()
{
  v1 = 1852270963;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_21CD4A32C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5B740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4A354(uint64_t a1)
{
  v2 = sub_21CD56640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4A390(uint64_t a1)
{
  v2 = sub_21CD56640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B488, &qword_21CD95160);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56640();
  sub_21CD842B4();
  v14 = 0;
  v9 = v11[5];
  sub_21CD84134();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_21CD840F4();
  v12 = 2;
  sub_21CD840F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_21CD83B74();
  if (!v2)
  {
    sub_21CD84284();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v3)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  if (!v1)
  {
    sub_21CD84284();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B498, &qword_21CD95168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56640();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_21CD84094();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_21CD84054();
  v21 = v12;
  v23 = 2;
  v13 = sub_21CD84054();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4A9C0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_21CD83B74();
  if (!v2)
  {
    sub_21CD84284();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v3)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t sub_21CD4AA7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_21CD84264();
  sub_21CD83B74();
  if (!v1)
  {
    sub_21CD84284();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.vehicleCategoryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.codes.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.init(vehicleCategoryCode:issueDate:expirationDate:codes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CD2F6A0(a3, a6 + v10[5], &qword_27CE19318, &qword_21CD95170);
  result = sub_21CD2F6A0(a4, a6 + v10[6], &qword_27CE19318, &qword_21CD95170);
  *(a6 + v10[7]) = a5;
  return result;
}

unint64_t sub_21CD4AD10()
{
  v1 = 0x7461446575737369;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0x7365646F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_21CD4AD9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5B854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4ADC4(uint64_t a1)
{
  v2 = sub_21CD566B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4AE00(uint64_t a1)
{
  v2 = sub_21CD566B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4A0, &qword_21CD95178);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD566B4();
  sub_21CD842B4();
  v15 = 0;
  sub_21CD84134();
  if (!v2)
  {
    v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
    v14 = 1;
    sub_21CD83504();
    sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
    sub_21CD84124();
    v13 = 2;
    sub_21CD84124();
    v11[1] = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD56708();
    sub_21CD84164();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_21CD83B74();
  v14 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CCD1750(v2 + v14[5], v13, &qword_27CE19318, &qword_21CD95170);
  v15 = *(v5 + 48);
  if (v15(v13, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  sub_21CCD1750(v2 + v14[6], v11, &qword_27CE19318, &qword_21CD95170);
  if (v15(v11, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21CCD08A8(a1, *(v2 + v14[7]));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  sub_21CD84264();
  sub_21CD83B74();
  v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CCD1750(v1 + v12[5], v11, &qword_27CE19318, &qword_21CD95170);
  v13 = *(v3 + 48);
  if (v13(v11, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  sub_21CCD1750(v1 + v12[6], v9, &qword_27CE19318, &qword_21CD95170);
  if (v13(v9, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  sub_21CCD08A8(v16, *(v1 + v12[7]));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4D0, &qword_21CD95188);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD566B4();
  v26 = v11;
  v15 = v27;
  sub_21CD842A4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = v6;
  v16 = v24;
  v32 = 0;
  *v14 = sub_21CD84094();
  v14[1] = v17;
  v22[3] = v17;
  v18 = sub_21CD83504();
  v31 = 1;
  v22[1] = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
  v22[2] = v18;
  sub_21CD84084();
  v19 = v12;
  sub_21CD2F6A0(v8, v14 + *(v12 + 20), &qword_27CE19318, &qword_21CD95170);
  v30 = 2;
  v20 = v27;
  sub_21CD84084();
  sub_21CD2F6A0(v20, v14 + *(v19 + 24), &qword_27CE19318, &qword_21CD95170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4B8, &qword_21CD95180);
  v29 = 3;
  sub_21CD567E0();
  sub_21CD840C4();
  (*(v16 + 8))(v26, v25);
  *(v14 + *(v19 + 28)) = v28;
  sub_21CD568B8(v14, v23, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD55AF8(v14, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
}

uint64_t sub_21CD4BB94(uint64_t a1, int *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-1] - v12;
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CCD1750(v2 + a2[5], v13, &qword_27CE19318, &qword_21CD95170);
  v14 = *(v5 + 48);
  if (v14(v13, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  sub_21CCD1750(v2 + a2[6], v11, &qword_27CE19318, &qword_21CD95170);
  if (v14(v11, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  sub_21CCD08A8(v17, *(v2 + a2[7]));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.init(code:description:issueDate:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CD2F6A0(a5, a7 + *(v10 + 24), &qword_27CE19318, &qword_21CD95170);
  return sub_21CD2F6A0(a6, a7 + *(v10 + 28), &qword_27CE19318, &qword_21CD95170);
}

uint64_t sub_21CD4BFF4()
{
  v1 = 1701080931;
  v2 = 0x7461446575737369;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

uint64_t sub_21CD4C080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5B9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4C0A8(uint64_t a1)
{
  v2 = sub_21CD56940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4C0E4(uint64_t a1)
{
  v2 = sub_21CD56940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4F0, &qword_21CD95190);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56940();
  sub_21CD842B4();
  v12 = 0;
  sub_21CD84134();
  if (!v1)
  {
    v11 = 1;
    sub_21CD84134();
    type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
    v10 = 2;
    sub_21CD83504();
    sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
    sub_21CD84124();
    v9 = 3;
    sub_21CD84124();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CD83504();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_21CD83B74();
  sub_21CD83B74();
  v13 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CCD1750(v2 + *(v13 + 24), v12, &qword_27CE19318, &qword_21CD95170);
  v14 = *(v4 + 48);
  if (v14(v12, 1, v3) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v4 + 8))(v6, v3);
  }

  sub_21CCD1750(v2 + *(v13 + 28), v10, &qword_27CE19318, &qword_21CD95170);
  if (v14(v10, 1, v3) == 1)
  {
    return sub_21CD84284();
  }

  (*(v4 + 32))(v6, v10, v3);
  sub_21CD84284();
  sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_21CD83A64();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.hashValue.getter()
{
  v1 = sub_21CD83504();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83B74();
  v11 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CCD1750(v0 + *(v11 + 24), v10, &qword_27CE19318, &qword_21CD95170);
  v12 = *(v2 + 48);
  if (v12(v10, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v4, v10, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v2 + 8))(v4, v1);
  }

  sub_21CCD1750(v0 + *(v11 + 28), v8, &qword_27CE19318, &qword_21CD95170);
  if (v12(v8, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v2 + 8))(v4, v1);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B500, &qword_21CD95198);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56940();
  v28 = v11;
  v15 = v29;
  sub_21CD842A4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v6;
  v16 = v12;
  v33 = 0;
  v17 = v26;
  v18 = v27;
  v19 = v14;
  *v14 = sub_21CD84094();
  v14[1] = v20;
  v24[2] = v20;
  v32 = 1;
  v14[2] = sub_21CD84094();
  v14[3] = v21;
  sub_21CD83504();
  v31 = 2;
  v24[0] = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
  v24[1] = 0;
  sub_21CD84084();
  sub_21CD2F6A0(v8, v14 + *(v16 + 24), &qword_27CE19318, &qword_21CD95170);
  v30 = 3;
  v22 = v29;
  sub_21CD84084();
  (*(v17 + 8))(v28, v18);
  sub_21CD2F6A0(v22, v19 + *(v16 + 28), &qword_27CE19318, &qword_21CD95170);
  sub_21CD568B8(v19, v25, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD55AF8(v19, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
}

uint64_t sub_21CD4CE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_21CD84264();
  sub_21CD83B74();
  sub_21CD83B74();
  sub_21CCD1750(v2 + *(a2 + 24), v13, &qword_27CE19318, &qword_21CD95170);
  v14 = *(v5 + 48);
  if (v14(v13, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  sub_21CCD1750(v2 + *(a2 + 28), v11, &qword_27CE19318, &qword_21CD95170);
  if (v14(v11, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v5 + 8))(v7, v4);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD4D16C(uint64_t a1)
{
  v2 = sub_21CD56994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4D1A8(uint64_t a1)
{
  v2 = sub_21CD56994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::AAMVADrivingPrivilege::VehicleEndorsement __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.init(code:description:)(Swift::String_optional code, Swift::String description)
{
  *v2 = code;
  v2[1].value = description;
  result.description = description;
  result.code = code;
  return result;
}

uint64_t sub_21CD4D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD4D404(uint64_t a1)
{
  v2 = sub_21CD569E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4D440(uint64_t a1)
{
  v2 = sub_21CD569E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4D4C0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *(v5 + 16);
  v13[1] = *(v5 + 24);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v14();
  sub_21CD842B4();
  v18 = 0;
  v11 = v15;
  sub_21CD840F4();
  if (!v11)
  {
    v17 = 1;
    sub_21CD84134();
  }

  return (*(v16 + 8))(v9, v7);
}

uint64_t sub_21CD4D660(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD83B74();
}

uint64_t sub_21CD4D6EC()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  sub_21CD84284();
  if (v1)
  {
    sub_21CD83B74();
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t sub_21CD4D7BC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v24 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_21CD842A4();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v23;
  v13 = v24;
  v26 = 0;
  v14 = sub_21CD84054();
  v16 = v15;
  v22 = v14;
  v25 = 1;
  v17 = sub_21CD84094();
  v19 = v18;
  (*(v12 + 8))(v11, v9);
  *v13 = v22;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v19;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4D9F0()
{
  v1 = *(v0 + 8);
  sub_21CD84264();
  sub_21CD84284();
  if (v1)
  {
    sub_21CD83B74();
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.vehicleRestrictions.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.vehicleEndorsements.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.init(vehicleClass:vehicleRestrictions:vehicleEndorsements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  if ((*(*(v11 - 8) + 48))(a1, 1, v11) == 1 && !*(a2 + 16))
  {
    sub_21CCB1928(a1, &qword_27CE19320, &qword_21CD893F0);

    v13 = *(v15 + 56);

    return v13(a4, 1, 1, v8);
  }

  else
  {
    sub_21CD2F6A0(a1, v10, &qword_27CE19320, &qword_21CD893F0);
    *&v10[*(v8 + 20)] = a2;
    *&v10[*(v8 + 24)] = a3;
    sub_21CD56A5C(v10, a4, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    return (*(v15 + 56))(a4, 0, 1, v8);
  }
}

uint64_t sub_21CD4DCFC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x43656C6369686576;
  }
}

uint64_t sub_21CD4DD68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5BB48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4DD90(uint64_t a1)
{
  v2 = sub_21CD56AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4DDCC(uint64_t a1)
{
  v2 = sub_21CD56AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B538, &qword_21CD951C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56AC4();
  sub_21CD842B4();
  LOBYTE(v12) = 0;
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CD55A5C(&qword_27CE1B548, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84124();
  if (!v2)
  {
    v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56B18();
    sub_21CD84164();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56BF0();
    sub_21CD84164();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.hash(into:)(uint64_t a1)
{
  sub_21CD52394(a1);
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  sub_21CCD18E8();

  return sub_21CCD18E8();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD52394(v1);
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  sub_21CCD18E8();
  sub_21CCD18E8();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B580, &qword_21CD951E0);
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - v8;
  v10 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v17 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v13);
  sub_21CD56AC4();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  LOBYTE(v19) = 0;
  sub_21CD55A5C(&qword_27CE1B588, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84084();
  sub_21CD2F6A0(v6, v12, &qword_27CE19320, &qword_21CD893F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B550, &qword_21CD951D0);
  v18 = 1;
  sub_21CD56CC8();
  sub_21CD840C4();
  *&v12[*(v10 + 20)] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B568, &qword_21CD951D8);
  v18 = 2;
  sub_21CD56DA0();
  sub_21CD840C4();
  (*(v7 + 8))(v9, v16);
  *&v12[*(v10 + 24)] = v19;
  sub_21CD568B8(v12, v15, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return sub_21CD55AF8(v12, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
}

uint64_t sub_21CD4E52C()
{
  sub_21CD84264();
  sub_21CD52394(v1);
  sub_21CCD18E8();
  sub_21CCD18E8();
  return sub_21CD84294();
}

uint64_t sub_21CD4E590(uint64_t a1)
{
  sub_21CD52394(a1);
  sub_21CCD18E8();

  return sub_21CCD18E8();
}

uint64_t sub_21CD4E5EC()
{
  sub_21CD84264();
  sub_21CD52394(v1);
  sub_21CCD18E8();
  sub_21CCD18E8();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(name:jurisdiction:isoCountryCode:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::IssuingAuthority_optional *__return_ptr retstr, Swift::String_optional name, Swift::String_optional jurisdiction, Swift::String_optional isoCountryCode)
{
  object = 1;
  if (isoCountryCode.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (isoCountryCode.value._object)
  {
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
  }

  else
  {
    v6 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v7 = jurisdiction.value._object;
  }

  else
  {
    v7 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v8 = isoCountryCode.value._countAndFlagsBits;
  }

  else
  {
    v8 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v9 = isoCountryCode.value._object;
  }

  else
  {
    v9 = 0;
  }

  if (jurisdiction.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
    v7 = jurisdiction.value._object;
    v8 = isoCountryCode.value._countAndFlagsBits;
    v9 = isoCountryCode.value._object;
  }

  if (name.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
    v7 = jurisdiction.value._object;
    v8 = isoCountryCode.value._countAndFlagsBits;
  }

  retstr->value.name.value._countAndFlagsBits = countAndFlagsBits;
  retstr->value.name.value._object = object;
  retstr->value.jurisdiction.value._countAndFlagsBits = v6;
  retstr->value.jurisdiction.value._object = v7;
  if (name.value._object)
  {
    v10 = isoCountryCode.value._object;
  }

  else
  {
    v10 = v9;
  }

  retstr->value.isoCountryCode.value._countAndFlagsBits = v8;
  retstr->value.isoCountryCode.value._object = v10;
}

uint64_t sub_21CD4E6F8()
{
  v1 = 0x636964736972756ALL;
  if (*v0 != 1)
  {
    v1 = 0x746E756F436F7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CD4E760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5BC74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4E788(uint64_t a1)
{
  v2 = sub_21CD56E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4E7C4(uint64_t a1)
{
  v2 = sub_21CD56E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5B0, &qword_21CD951E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56E78();
  sub_21CD842B4();
  v14 = 0;
  v9 = v11[5];
  sub_21CD840F4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_21CD840F4();
  v12 = 2;
  sub_21CD840F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_21CD84284();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v3)
  {
    return sub_21CD84284();
  }

LABEL_4:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_21CD84264();
  if (v1)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_21CD84284();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5C0, &qword_21CD951F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56E78();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_21CD84054();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_21CD84054();
  v21 = v12;
  v23 = 2;
  v13 = sub_21CD84054();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4EE3C()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_21CD84264();
  if (v1)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_21CD84284();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.nameComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 20);
  v4 = sub_21CD835C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 28);
  v2 = *v1;
  sub_21CC96064(*v1, *(v1 + 8));
  return v2;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.ageAtLeastElements.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.address.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 44));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21CCD1750(v10, &v9, &qword_27CE1B5C8, &qword_21CD951F8);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.eyeColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hairColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

void MobileDocumentReaderResponse.MobileIdentityDocumentElements.issuingAuthority.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_21CD56ECC(v4, v5, v6, v7, v8, v9);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.drivingPrivileges.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.aamvaDrivingPrivileges.getter()
{
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentDHSComplianceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 88));

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t a13, char *a14, char *a15, char a16, char a17, __int128 *a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *a3;
  v46 = *a14;
  v47 = *a15;
  v48 = *(a18 + 5);
  v49 = *(a18 + 4);
  v50 = *a21;
  sub_21CD56A5C(a1, a9, type metadata accessor for MobileDocumentType);
  v30 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v31 = v30[5];
  v32 = sub_21CD835C4();
  v45 = *a18;
  v43 = a18[1];
  (*(*(v32 - 8) + 32))(a9 + v31, a2, v32);
  *(a9 + v30[6]) = v29;
  v33 = (a9 + v30[7]);
  *v33 = a4;
  v33[1] = a5;
  v34 = a9 + v30[8];
  *v34 = a6;
  *(v34 + 8) = a7 & 1;
  *(a9 + v30[9]) = a8;
  sub_21CD2F6A0(a10, a9 + v30[10], &qword_27CE19318, &qword_21CD95170);
  v35 = (a9 + v30[11]);
  v36 = a11[3];
  v35[2] = a11[2];
  v35[3] = v36;
  v35[4] = a11[4];
  v37 = a11[1];
  *v35 = *a11;
  v35[1] = v37;
  sub_21CD2F6A0(a12, a9 + v30[12], &qword_27CE1B5D0, &qword_21CD95200);
  sub_21CD2F6A0(a13, a9 + v30[13], &qword_27CE1B5D8, &qword_21CD95208);
  *(a9 + v30[14]) = v46;
  *(a9 + v30[15]) = v47;
  *(a9 + v30[16]) = a16;
  *(a9 + v30[17]) = a17;
  v38 = a9 + v30[18];
  *v38 = v45;
  *(v38 + 16) = v43;
  *(v38 + 32) = v49;
  *(v38 + 40) = v48;
  *(a9 + v30[19]) = a19;
  *(a9 + v30[20]) = a20;
  *(a9 + v30[21]) = v50;
  v39 = (a9 + v30[22]);
  *v39 = a22;
  v39[1] = a23;
  sub_21CD2F6A0(a24, a9 + v30[23], &qword_27CE19318, &qword_21CD95170);
  return sub_21CD2F6A0(a25, a9 + v30[24], &qword_27CE19318, &qword_21CD95170);
}

unint64_t sub_21CD4F720(char a1)
{
  result = 0x746E656D75636F64;
  switch(a1)
  {
    case 1:
      result = 0x706D6F43656D616ELL;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 6645601;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6942664F65746164;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x746867696568;
      break;
    case 9:
      result = 0x746867696577;
      break;
    case 10:
      result = 0x726F6C6F43657965;
      break;
    case 11:
      result = 0x6F6C6F4372696168;
      break;
    case 12:
      result = 0x446E6167724F7369;
      break;
    case 13:
      result = 0x6172657465567369;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
    case 20:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CD4F97C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD5BD98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD4F9B0(uint64_t a1)
{
  v2 = sub_21CD56F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4F9EC(uint64_t a1)
{
  v2 = sub_21CD56F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5E0, &qword_21CD95210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56F20();
  sub_21CD842B4();
  LOBYTE(v42) = 0;
  type metadata accessor for MobileDocumentType(0);
  sub_21CD55A5C(&qword_27CE1B040, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
  sub_21CD84164();
  if (!v2)
  {
    v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
    LOBYTE(v42) = 1;
    sub_21CD835C4();
    sub_21CD55A5C(&qword_27CE1B5F0, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_21CD84164();
    LOBYTE(v42) = *(v3 + v9[6]);
    LOBYTE(v37) = 2;
    sub_21CD56F74();
    sub_21CD84124();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    *&v42 = *v10;
    *(&v42 + 1) = v11;
    LOBYTE(v37) = 3;
    sub_21CC96064(v42, v11);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v42, *(&v42 + 1));
    LOBYTE(v42) = 4;
    sub_21CD84114();
    *&v42 = *(v3 + v9[9]);
    LOBYTE(v37) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B600, &qword_21CD95218);
    sub_21CD572B0(&qword_27CE1B608, MEMORY[0x277D83B90], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
    sub_21CD84164();
    v48 = v9[10];
    v47[0] = 6;
    v12 = sub_21CD83504();
    v13 = sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990], MEMORY[0x277CC8998]);
    v48 = v12;
    sub_21CD84124();
    v27 = v13;
    v14 = (v3 + v9[11]);
    v15 = v14[2];
    v16 = *v14;
    v43 = v14[1];
    v44 = v15;
    v17 = v14[2];
    v18 = v14[4];
    v45 = v14[3];
    v46 = v18;
    v19 = *v14;
    v39 = v17;
    v40 = v45;
    v41 = v14[4];
    v42 = v19;
    v37 = v16;
    v38 = v43;
    v36 = 7;
    sub_21CCD1750(&v42, v35, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CD56FC8();
    sub_21CD84124();
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[0] = v37;
    v35[1] = v38;
    sub_21CCB1928(v35, &qword_27CE1B5C8, &qword_21CD951F8);
    LOBYTE(v28) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
    sub_21CCA6B04(&qword_27CE1B620, &qword_27CE1B618, &unk_21CD95220, MEMORY[0x277CC87D8]);
    sub_21CD84124();
    LOBYTE(v28) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
    sub_21CCA6B04(&qword_27CE1B630, &qword_27CE1B628, &qword_21CD98510, MEMORY[0x277CC87D8]);
    sub_21CD84124();
    LOBYTE(v28) = *(v3 + v9[14]);
    v34 = 10;
    sub_21CD5701C();
    sub_21CD84124();
    LOBYTE(v28) = *(v3 + v9[15]);
    v34 = 11;
    sub_21CD57070();
    sub_21CD84124();
    LOBYTE(v28) = 12;
    sub_21CD84104();
    LOBYTE(v28) = 13;
    sub_21CD84104();
    v20 = (v3 + v9[18]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    v28 = *v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v33 = v25;
    v34 = 14;
    sub_21CD56ECC(v28, v21, v22, v23, v24, v25);
    sub_21CD570C4();
    sub_21CD84124();
    sub_21CD57118(v28, v29, v30, v31, v32, v33);
    v28 = *(v3 + v9[19]);
    v34 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B650, &qword_21CD95230);
    sub_21CD57470(&qword_27CE1B658, &qword_27CE1B660, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege, MEMORY[0x277D83948]);
    sub_21CD84164();
    v28 = *(v3 + v9[20]);
    v34 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B668, &qword_21CD95238);
    sub_21CD5716C(&qword_27CE1B670, &qword_27CE1B678, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83948]);
    sub_21CD84164();
    LOBYTE(v28) = *(v3 + v9[21]);
    v34 = 17;
    sub_21CD57208();
    sub_21CD84124();
    LOBYTE(v28) = 18;
    sub_21CD840F4();
    LOBYTE(v28) = 19;
    sub_21CD84124();
    LOBYTE(v28) = 20;
    sub_21CD84124();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v68 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v67 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
  v8 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v67 - v11;
  v77 = sub_21CD83504();
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  v20 = sub_21CD837F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD568B8(v2, v26, type metadata accessor for MobileDocumentType.Identifier);
  v27 = (*(v21 + 48))(v26, 2, v20);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = 2;
    }

    MEMORY[0x21CF17CC0](v28);
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    MEMORY[0x21CF17CC0](1);
    sub_21CD55A5C(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v21 + 8))(v23, v20);
  }

  v29 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  sub_21CD835C4();
  sub_21CD55A5C(&qword_27CE1B688, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  sub_21CD83A64();
  v30 = *(v2 + v29[6]);
  sub_21CD84284();
  if (v30 != 5)
  {
    MEMORY[0x21CF17CC0](v30);
  }

  if (*(v2 + v29[7] + 8) >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD84284();
    sub_21CD83704();
  }

  v31 = v77;
  v32 = v2 + v29[8];
  if (*(v32 + 8) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v33 = *v32;
    sub_21CD84284();
    MEMORY[0x21CF17CC0](v33);
  }

  v34 = v80;
  sub_21CCD5148(a1, *(v2 + v29[9]));
  sub_21CCD1750(v2 + v29[10], v19, &qword_27CE19318, &qword_21CD95170);
  v78 = *(v34 + 48);
  v79 = v34 + 48;
  v35 = v78(v19, 1, v31);
  v70 = v8;
  if (v35 == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v36 = v19;
    v37 = v4;
    v38 = v76;
    (*(v34 + 32))(v76, v36, v31);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    v39 = v38;
    v4 = v37;
    (*(v34 + 8))(v39, v31);
  }

  v40 = v2 + v29[11];
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = *(v40 + 32);
  v92 = *(v40 + 16);
  v93 = v43;
  v44 = *(v40 + 64);
  v94 = *(v40 + 48);
  v95 = v44;
  if (v42 == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v45 = *(v40 + 32);
    v82 = *(v40 + 16);
    v83 = v45;
    v46 = *(v40 + 64);
    v84 = *(v40 + 48);
    v85 = v46;
    *&v81 = v41;
    *(&v81 + 1) = v42;
    sub_21CD84284();
    v86[0] = v41;
    v86[1] = v42;
    v87 = v92;
    v88 = v93;
    v89 = v94;
    v90 = v95;
    sub_21CD55BAC(v86, v91);
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)(a1);
    v91[2] = v83;
    v91[3] = v84;
    v91[4] = v85;
    v91[0] = v81;
    v91[1] = v82;
    sub_21CD55BE4(v91);
  }

  v47 = v69;
  sub_21CCD1750(v2 + v29[12], v69, &qword_27CE1B5D0, &qword_21CD95200);
  v49 = v70;
  v48 = v71;
  if ((*(v70 + 48))(v47, 1, v71) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v50 = v67;
    (*(v49 + 32))(v67, v47, v48);
    sub_21CD84284();
    sub_21CCA6B04(&qword_27CE1B690, &qword_27CE1B618, &unk_21CD95220, MEMORY[0x277CC87E0]);
    sub_21CD83A64();
    (*(v49 + 8))(v50, v48);
  }

  v51 = v72;
  sub_21CCD1750(v2 + v29[13], v72, &qword_27CE1B5D8, &qword_21CD95208);
  if ((*(v75 + 48))(v51, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v52 = v75;
    v53 = v68;
    (*(v75 + 32))(v68, v51, v4);
    sub_21CD84284();
    sub_21CCA6B04(&qword_27CE1B698, &qword_27CE1B628, &qword_21CD98510, MEMORY[0x277CC87E0]);
    sub_21CD83A64();
    (*(v52 + 8))(v53, v4);
  }

  v54 = *(v2 + v29[14]);
  sub_21CD84284();
  if (v54 != 10)
  {
    MEMORY[0x21CF17CC0](v54);
  }

  v55 = *(v2 + v29[15]);
  sub_21CD84284();
  if (v55 != 10)
  {
    MEMORY[0x21CF17CC0](v55);
  }

  if (*(v2 + v29[16]) != 2)
  {
    sub_21CD84284();
  }

  sub_21CD84284();
  if (*(v2 + v29[17]) != 2)
  {
    sub_21CD84284();
  }

  sub_21CD84284();
  v56 = (v2 + v29[18]);
  v57 = v56[1];
  if (v57 == 1)
  {
    sub_21CD84284();
    goto LABEL_45;
  }

  v58 = v56[3];
  v59 = v56[5];
  v75 = v56[4];
  sub_21CD84284();
  if (v57)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v58)
    {
      goto LABEL_39;
    }

LABEL_42:
    sub_21CD84284();
    if (v59)
    {
      goto LABEL_40;
    }

LABEL_43:
    sub_21CD84284();
    goto LABEL_44;
  }

  sub_21CD84284();
  if (!v58)
  {
    goto LABEL_42;
  }

LABEL_39:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v59)
  {
    goto LABEL_43;
  }

LABEL_40:
  sub_21CD84284();
  sub_21CD83B74();
LABEL_44:
  v31 = v77;
LABEL_45:
  sub_21CCD11AC(a1, *(v2 + v29[19]));
  sub_21CCD0A90(a1, *(v2 + v29[20]));
  v60 = *(v2 + v29[21]);
  sub_21CD84284();
  if (v60 != 2)
  {
    MEMORY[0x21CF17CC0](v60 & 1);
  }

  if (*(v2 + v29[22] + 8))
  {
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  v61 = v80;
  v62 = v73;
  sub_21CCD1750(v2 + v29[23], v73, &qword_27CE19318, &qword_21CD95170);
  if (v78(v62, 1, v31) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v63 = v76;
    (*(v61 + 32))(v76, v62, v31);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v61 + 8))(v63, v31);
  }

  v64 = v74;
  sub_21CCD1750(v2 + v29[24], v74, &qword_27CE19318, &qword_21CD95170);
  if (v78(v64, 1, v31) == 1)
  {
    return sub_21CD84284();
  }

  v66 = v76;
  (*(v61 + 32))(v76, v64, v31);
  sub_21CD84284();
  sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_21CD83A64();
  return (*(v61 + 8))(v66, v31);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

void MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v51 = &v41 - v12;
  v48 = sub_21CD835C4();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MobileDocumentType(0);
  MEMORY[0x28223BE20](v15);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B6A0, &qword_21CD95240);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = &v41 - v17;
  v19 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56F20();
  v52 = v18;
  v22 = v54;
  sub_21CD842A4();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v54 = v19;
    LOBYTE(v58) = 0;
    sub_21CD55A5C(&qword_27CE1B070, type metadata accessor for MobileDocumentType, &protocol conformance descriptor for MobileDocumentType);
    v23 = v49;
    sub_21CD840C4();
    sub_21CD56A5C(v23, v21, type metadata accessor for MobileDocumentType);
    LOBYTE(v58) = 1;
    sub_21CD55A5C(&qword_27CE1B6A8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
    v24 = v14;
    v25 = v48;
    sub_21CD840C4();
    v26 = v24;
    v27 = v54;
    (*(v47 + 32))(&v21[v54[5]], v26, v25);
    LOBYTE(v55) = 2;
    sub_21CD5725C();
    sub_21CD84084();
    v21[v27[6]] = v58;
    LOBYTE(v55) = 3;
    sub_21CCFFE7C();
    sub_21CD84084();
    *&v21[v27[7]] = v58;
    LOBYTE(v58) = 4;
    v28 = sub_21CD84074();
    v29 = &v21[v27[8]];
    *v29 = v28;
    v29[8] = v30 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B600, &qword_21CD95218);
    LOBYTE(v55) = 5;
    sub_21CD572B0(&qword_27CE1B6B8, MEMORY[0x277D83BB8], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    sub_21CD840C4();
    *&v21[v27[9]] = v58;
    v31 = sub_21CD83504();
    LOBYTE(v58) = 6;
    v49 = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990], MEMORY[0x277CC89B0]);
    sub_21CD84084();
    v41 = v31;
    sub_21CD2F6A0(v51, &v21[v27[10]], &qword_27CE19318, &qword_21CD95170);
    v64 = 7;
    sub_21CD57320();
    sub_21CD84084();
    v32 = &v21[v54[11]];
    v33 = v61;
    *(v32 + 2) = v60;
    *(v32 + 3) = v33;
    *(v32 + 4) = v62;
    v34 = v59;
    *v32 = v58;
    *(v32 + 1) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
    LOBYTE(v55) = 8;
    sub_21CCA6B04(&qword_27CE1B6C8, &qword_27CE1B618, &unk_21CD95220, MEMORY[0x277CC87F8]);
    v35 = v46;
    sub_21CD84084();
    sub_21CD2F6A0(v35, &v21[v54[12]], &qword_27CE1B5D0, &qword_21CD95200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
    LOBYTE(v55) = 9;
    sub_21CCA6B04(&qword_27CE1B6D0, &qword_27CE1B628, &qword_21CD98510, MEMORY[0x277CC87F8]);
    sub_21CD84084();
    sub_21CD2F6A0(v45, &v21[v54[13]], &qword_27CE1B5D8, &qword_21CD95208);
    v63 = 10;
    sub_21CD57374();
    sub_21CD84084();
    v21[v54[14]] = v55;
    v63 = 11;
    sub_21CD573C8();
    sub_21CD84084();
    v21[v54[15]] = v55;
    LOBYTE(v55) = 12;
    v21[v54[16]] = sub_21CD84064();
    LOBYTE(v55) = 13;
    v21[v54[17]] = sub_21CD84064();
    v63 = 14;
    sub_21CD5741C();
    sub_21CD84084();
    v36 = &v21[v54[18]];
    v37 = v56;
    *v36 = v55;
    *(v36 + 1) = v37;
    *(v36 + 2) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B650, &qword_21CD95230);
    v63 = 15;
    sub_21CD57470(&qword_27CE1B6F0, &qword_27CE1B6F8, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege, MEMORY[0x277D83978]);
    sub_21CD840C4();
    *&v21[v54[19]] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B668, &qword_21CD95238);
    v63 = 16;
    sub_21CD5716C(&qword_27CE1B700, &qword_27CE1B708, &protocol conformance descriptor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83978]);
    sub_21CD840C4();
    *&v21[v54[20]] = v55;
    v63 = 17;
    sub_21CD5750C();
    sub_21CD84084();
    v21[v54[21]] = v55;
    LOBYTE(v55) = 18;
    v38 = sub_21CD84054();
    v39 = &v21[v54[22]];
    *v39 = v38;
    v39[1] = v40;
    LOBYTE(v55) = 19;
    sub_21CD84084();
    sub_21CD2F6A0(v42, &v21[v54[23]], &qword_27CE19318, &qword_21CD95170);
    LOBYTE(v55) = 20;
    sub_21CD84084();
    (*(v50 + 8))(v52, v53);
    sub_21CD2F6A0(v43, &v21[v54[24]], &qword_27CE19318, &qword_21CD95170);
    sub_21CD568B8(v21, v44, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_21CD55AF8(v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }
}

uint64_t sub_21CD52310()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD52354()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD52394(uint64_t a1)
{
  v2 = sub_21CD83504();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  sub_21CCD1750(v1, &v22 - v14, &qword_27CE19320, &qword_21CD893F0);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    return sub_21CD84284();
  }

  sub_21CD56A5C(v15, v12, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84284();
  sub_21CD83B74();
  sub_21CD83B74();
  sub_21CCD1750(&v12[*(v9 + 24)], v8, &qword_27CE19318, &qword_21CD95170);
  v17 = v23;
  v18 = *(v23 + 48);
  if (v18(v8, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v19 = v25;
    (*(v17 + 32))(v25, v8, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v17 + 8))(v19, v2);
  }

  v20 = v24;
  sub_21CCD1750(&v12[*(v9 + 28)], v24, &qword_27CE19318, &qword_21CD95170);
  if (v18(v20, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v21 = v25;
    (*(v17 + 32))(v25, v20, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_21CD83A64();
    (*(v17 + 8))(v21, v2);
  }

  return sub_21CD55AF8(v12, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16DrivingPrivilegeV4CodeV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16IssuingAuthorityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21CD52A0C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_21CD841A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_21CD841A4();
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV7AddressV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_21CD841A4();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_21CD841A4();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_21CD841A4();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_21CD841A4();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19330, &qword_21CD893F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CCD1750(a1, &v20 - v13, &qword_27CE19320, &qword_21CD893F0);
  sub_21CCD1750(a2, &v14[v15], &qword_27CE19320, &qword_21CD893F0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_21CCB1928(v14, &qword_27CE19320, &qword_21CD893F0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_21CCD1750(v14, v10, &qword_27CE19320, &qword_21CD893F0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_21CD55AF8(v10, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
LABEL_6:
    sub_21CCB1928(v14, &qword_27CE19330, &qword_21CD893F8);
LABEL_10:
    v18 = 0;
    return v18 & 1;
  }

  sub_21CD56A5C(&v14[v15], v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  v17 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAI_AItFZ_0(v10, v7);
  sub_21CD55AF8(v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD55AF8(v10, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CCB1928(v14, &qword_27CE19320, &qword_21CD893F0);
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_8:
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  if ((sub_21CCD18E4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = sub_21CCD18E4();
  return v18 & 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v36[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v36[-v18];
  if (*a1 != *a2 && (sub_21CD841A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v38 = v11;
  v40 = v17;
  v41 = v7;
  v39 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v20 = *(v39 + 24);
  v21 = *(v14 + 48);
  v42 = v5;
  sub_21CCD1750(a1 + v20, v19, &qword_27CE19318, &qword_21CD95170);
  v22 = v42;
  sub_21CCD1750(a2 + v20, &v19[v21], &qword_27CE19318, &qword_21CD95170);
  v23 = *(v22 + 48);
  if (v23(v19, 1, v4) == 1)
  {
    if (v23(&v19[v21], 1, v4) == 1)
    {
      sub_21CCB1928(v19, &qword_27CE19318, &qword_21CD95170);
      goto LABEL_13;
    }

LABEL_11:
    v24 = v19;
LABEL_19:
    sub_21CCB1928(v24, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  sub_21CCD1750(v19, v13, &qword_27CE19318, &qword_21CD95170);
  if (v23(&v19[v21], 1, v4) == 1)
  {
    (*(v22 + 8))(v13, v4);
    goto LABEL_11;
  }

  (*(v22 + 32))(v41, &v19[v21], v4);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v37 = sub_21CD83A84();
  v25 = *(v22 + 8);
  v25(v41, v4);
  v25(v13, v4);
  sub_21CCB1928(v19, &qword_27CE19318, &qword_21CD95170);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v26 = *(v39 + 28);
  v27 = *(v14 + 48);
  v28 = a1 + v26;
  v29 = v40;
  sub_21CCD1750(v28, v40, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(a2 + v26, v29 + v27, &qword_27CE19318, &qword_21CD95170);
  if (v23(v29, 1, v4) != 1)
  {
    v30 = v38;
    sub_21CCD1750(v29, v38, &qword_27CE19318, &qword_21CD95170);
    if (v23((v29 + v27), 1, v4) == 1)
    {
      (*(v42 + 8))(v30, v4);
      goto LABEL_18;
    }

    v33 = v41;
    v32 = v42;
    (*(v42 + 32))(v41, v29 + v27, v4);
    sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
    v34 = sub_21CD83A84();
    v35 = *(v32 + 8);
    v35(v33, v4);
    v35(v30, v4);
    sub_21CCB1928(v29, &qword_27CE19318, &qword_21CD95170);
    return (v34 & 1) != 0;
  }

  if (v23((v29 + v27), 1, v4) != 1)
  {
LABEL_18:
    v24 = v29;
    goto LABEL_19;
  }

  sub_21CCB1928(v29, &qword_27CE19318, &qword_21CD95170);
  return 1;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16DrivingPrivilegeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v40[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v40[-v18];
  v20 = *a1;
  v21 = a1[1];
  v47 = a1;
  if ((v20 != *a2 || v21 != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v42 = v11;
  v43 = v7;
  v44 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  v22 = *(v44 + 20);
  v23 = *(v14 + 48);
  v46 = v5;
  sub_21CCD1750(v47 + v22, v19, &qword_27CE19318, &qword_21CD95170);
  v45 = a2;
  v24 = v46;
  sub_21CCD1750(a2 + v22, &v19[v23], &qword_27CE19318, &qword_21CD95170);
  v25 = *(v24 + 48);
  if (v25(v19, 1, v4) != 1)
  {
    sub_21CCD1750(v19, v13, &qword_27CE19318, &qword_21CD95170);
    if (v25(&v19[v23], 1, v4) != 1)
    {
      v27 = v43;
      (*(v24 + 32))(v43, &v19[v23], v4);
      sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v41 = sub_21CD83A84();
      v28 = *(v24 + 8);
      v28(v27, v4);
      v28(v13, v4);
      sub_21CCB1928(v19, &qword_27CE19318, &qword_21CD95170);
      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    (*(v24 + 8))(v13, v4);
LABEL_9:
    v26 = v19;
LABEL_17:
    sub_21CCB1928(v26, &qword_27CE19338, &qword_21CD89400);
    goto LABEL_18;
  }

  if (v25(&v19[v23], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_21CCB1928(v19, &qword_27CE19318, &qword_21CD95170);
LABEL_11:
  v29 = v44;
  v30 = *(v44 + 24);
  v31 = *(v14 + 48);
  sub_21CCD1750(v47 + v30, v17, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v45 + v30, &v17[v31], &qword_27CE19318, &qword_21CD95170);
  if (v25(v17, 1, v4) == 1)
  {
    if (v25(&v17[v31], 1, v4) == 1)
    {
      sub_21CCB1928(v17, &qword_27CE19318, &qword_21CD95170);
LABEL_21:
      v33 = sub_21CCCD8E4(*(v47 + *(v29 + 28)), *(v45 + *(v29 + 28)));
      return v33 & 1;
    }

    goto LABEL_16;
  }

  v32 = v42;
  sub_21CCD1750(v17, v42, &qword_27CE19318, &qword_21CD95170);
  if (v25(&v17[v31], 1, v4) == 1)
  {
    (*(v46 + 8))(v32, v4);
LABEL_16:
    v26 = v17;
    goto LABEL_17;
  }

  v35 = v46;
  v36 = &v17[v31];
  v37 = v43;
  (*(v46 + 32))(v43, v36, v4);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v38 = sub_21CD83A84();
  v39 = *(v35 + 8);
  v39(v37, v4);
  v39(v32, v4);
  sub_21CCB1928(v17, &qword_27CE19318, &qword_21CD95170);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_18:
  v33 = 0;
  return v33 & 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
  v195 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v188 = &v180 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  MEMORY[0x28223BE20](v5 - 8);
  v189 = &v180 - v6;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BB78, &qword_21CD98110);
  MEMORY[0x28223BE20](v191);
  v192 = &v180 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
  v9 = *(v8 - 8);
  v198 = v8;
  v199 = v9;
  MEMORY[0x28223BE20](v8);
  v190 = &v180 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  MEMORY[0x28223BE20](v11 - 8);
  v194 = &v180 - v12;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BB80, &qword_21CD98118);
  MEMORY[0x28223BE20](v196);
  v197 = &v180 - v13;
  v14 = sub_21CD83504();
  v15 = *(v14 - 8);
  v204 = v14;
  v205 = v15;
  MEMORY[0x28223BE20](v14);
  v200 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v184 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v185 = &v180 - v21;
  MEMORY[0x28223BE20](v20);
  v201 = &v180 - v22;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v23 = MEMORY[0x28223BE20](v203);
  v186 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v187 = &v180 - v26;
  MEMORY[0x28223BE20](v25);
  v202 = &v180 - v27;
  v28 = sub_21CD837F4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v180 - v37;
  v39 = *(v36 + 56);
  v207 = a1;
  sub_21CD568B8(a1, &v180 - v37, type metadata accessor for MobileDocumentType.Identifier);
  v206 = a2;
  sub_21CD568B8(a2, &v38[v39], type metadata accessor for MobileDocumentType.Identifier);
  v40 = *(v29 + 48);
  v41 = v40(v38, 2, v28);
  if (v41)
  {
    if (v41 == 1)
    {
      if (v40(&v38[v39], 2, v28) == 1)
      {
        goto LABEL_11;
      }
    }

    else if (v40(&v38[v39], 2, v28) == 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v42 = &qword_27CE18E78;
    v43 = &qword_21CD88450;
LABEL_9:
    sub_21CCB1928(v38, v42, v43);
    return 0;
  }

  sub_21CD568B8(v38, v34, type metadata accessor for MobileDocumentType.Identifier);
  if (v40(&v38[v39], 2, v28))
  {
    (*(v29 + 8))(v34, v28);
    goto LABEL_8;
  }

  (*(v29 + 32))(v31, &v38[v39], v28);
  v44 = MEMORY[0x21CF17230](v34, v31);
  v45 = *(v29 + 8);
  v45(v31, v28);
  v45(v34, v28);
  if ((v44 & 1) == 0)
  {
    sub_21CD55AF8(v38, type metadata accessor for MobileDocumentType.Identifier);
    return 0;
  }

LABEL_11:
  sub_21CD55AF8(v38, type metadata accessor for MobileDocumentType.Identifier);
  v46 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v48 = v206;
  v47 = v207;
  if ((sub_21CD835B4() & 1) == 0)
  {
    return 0;
  }

  v49 = v46[6];
  v50 = *(v47 + v49);
  v51 = *(v48 + v49);
  if (v50 == 5)
  {
    if (v51 != 5)
    {
      return 0;
    }
  }

  else if (v50 != v51)
  {
    return 0;
  }

  v52 = v46[7];
  v54 = *(v47 + v52);
  v53 = *(v47 + v52 + 8);
  v55 = (v48 + v52);
  v57 = *v55;
  v56 = v55[1];
  if (v53 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      sub_21CC96064(v54, v53);
      sub_21CC96064(v57, v56);
      sub_21CC95F8C(v54, v53);
      goto LABEL_24;
    }

LABEL_21:
    sub_21CC96064(v54, v53);
    sub_21CC96064(v57, v56);
    sub_21CC95F8C(v54, v53);
    sub_21CC95F8C(v57, v56);
    return 0;
  }

  if (v56 >> 60 == 15)
  {
    goto LABEL_21;
  }

  sub_21CC96064(v54, v53);
  sub_21CC96064(v57, v56);
  v59 = sub_21CD23300(v54, v53, v57, v56);
  sub_21CC95F8C(v57, v56);
  sub_21CC95F8C(v54, v53);
  if (!v59)
  {
    return 0;
  }

LABEL_24:
  v60 = v46[8];
  v61 = (v47 + v60);
  v62 = *(v47 + v60 + 8);
  v63 = (v48 + v60);
  v64 = *(v48 + v60 + 8);
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if ((sub_21CCFBAF4(*(v47 + v46[9]), *(v48 + v46[9])) & 1) == 0)
  {
    return 0;
  }

  v65 = v46[10];
  v38 = v202;
  v66 = *(v203 + 48);
  sub_21CCD1750(v47 + v65, v202, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v48 + v65, &v38[v66], &qword_27CE19318, &qword_21CD95170);
  v67 = v204;
  v69 = v205 + 48;
  v68 = *(v205 + 48);
  if (v68(v38, 1, v204) == 1)
  {
    if (v68(&v38[v66], 1, v67) == 1)
    {
      v181 = v69;
      v182 = v68;
      sub_21CCB1928(v38, &qword_27CE19318, &qword_21CD95170);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v70 = v201;
  sub_21CCD1750(v38, v201, &qword_27CE19318, &qword_21CD95170);
  if (v68(&v38[v66], 1, v67) == 1)
  {
    (*(v205 + 8))(v70, v67);
LABEL_36:
    v42 = &qword_27CE19338;
    v43 = &qword_21CD89400;
    goto LABEL_9;
  }

  v181 = v69;
  v182 = v68;
  v71 = v205;
  v72 = *(v205 + 32);
  v73 = v70;
  v183 = v46;
  v74 = v200;
  v72(v200, &v38[v66], v67);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v75 = v67;
  v76 = sub_21CD83A84();
  v77 = *(v71 + 8);
  v78 = v74;
  v46 = v183;
  v77(v78, v75);
  v77(v73, v75);
  sub_21CCB1928(v38, &qword_27CE19318, &qword_21CD95170);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v79 = (v47 + v46[11]);
  v80 = v79[1];
  v81 = v79[3];
  v239 = v79[2];
  v240 = v81;
  v82 = v79[3];
  v241 = v79[4];
  v83 = v79[1];
  v238[0] = *v79;
  v238[1] = v83;
  v183 = v46;
  v84 = (v48 + v46[11]);
  v85 = v84[3];
  v245 = v84[4];
  v86 = v84[3];
  v87 = v84[1];
  v243 = v84[2];
  v244 = v86;
  v88 = v84[1];
  v242[0] = *v84;
  v242[1] = v88;
  v234 = v80;
  v235 = v239;
  v89 = v79[4];
  v236 = v82;
  v237 = v89;
  v90 = v84[4];
  v232 = v85;
  v233 = v90;
  v91 = v238[0];
  v92 = v242[0];
  v230 = v87;
  v231 = v243;
  if (*(&v238[0] + 1) == 1)
  {
    if (*(&v242[0] + 1) == 1)
    {
      *&v220 = *&v238[0];
      *(&v220 + 1) = 1;
      v93 = v79[2];
      v221 = v79[1];
      v222 = v93;
      v94 = v79[4];
      v223 = v79[3];
      v224 = v94;
      sub_21CCD1750(v238, &v215, &qword_27CE1B5C8, &qword_21CD951F8);
      sub_21CCD1750(v242, &v215, &qword_27CE1B5C8, &qword_21CD951F8);
      sub_21CCB1928(&v220, &qword_27CE1B5C8, &qword_21CD951F8);
      goto LABEL_46;
    }

    sub_21CCD1750(v238, &v220, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(v242, &v220, &qword_27CE1B5C8, &qword_21CD951F8);
LABEL_44:
    v220 = v91;
    v221 = v234;
    v222 = v235;
    v223 = v236;
    v224 = v237;
    v225 = v92;
    v226 = v230;
    v227 = v231;
    v228 = v232;
    v229 = v233;
    sub_21CCB1928(&v220, &qword_27CE1BB88, &unk_21CD98120);
    return 0;
  }

  v220 = v238[0];
  v95 = v79[2];
  v221 = v79[1];
  v222 = v95;
  v96 = v79[4];
  v223 = v79[3];
  v224 = v96;
  v217 = v95;
  v218 = v223;
  v219 = v96;
  v215 = v238[0];
  v216 = v221;
  if (*(&v242[0] + 1) == 1)
  {
    v212 = v222;
    v213 = v223;
    v214 = v224;
    v210 = v220;
    v211 = v221;
    sub_21CCD1750(v238, v209, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(v242, v209, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(&v220, v209, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CD55BE4(&v210);
    goto LABEL_44;
  }

  v97 = v84[2];
  v211 = v84[1];
  v212 = v97;
  v98 = v84[4];
  v213 = v84[3];
  v214 = v98;
  v210 = v242[0];
  v99 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV7AddressV2eeoiySbAG_AGtFZ_0(&v215, &v210);
  v208[2] = v212;
  v208[3] = v213;
  v208[4] = v214;
  v208[0] = v210;
  v208[1] = v211;
  sub_21CCD1750(v238, v209, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CCD1750(v242, v209, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CCD1750(&v220, v209, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CD55BE4(v208);
  v209[2] = v217;
  v209[3] = v218;
  v209[4] = v219;
  v209[0] = v215;
  v209[1] = v216;
  sub_21CD55BE4(v209);
  v210 = v91;
  v211 = v234;
  v212 = v235;
  v213 = v236;
  v214 = v237;
  sub_21CCB1928(&v210, &qword_27CE1B5C8, &qword_21CD951F8);
  if ((v99 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v100 = v183;
  v101 = v183[12];
  v102 = v197;
  v103 = *(v196 + 48);
  v104 = v207;
  sub_21CCD1750(v207 + v101, v197, &qword_27CE1B5D0, &qword_21CD95200);
  sub_21CCD1750(v48 + v101, v102 + v103, &qword_27CE1B5D0, &qword_21CD95200);
  v105 = v198;
  v106 = *(v199 + 48);
  if (v106(v102, 1, v198) == 1)
  {
    if (v106(v102 + v103, 1, v105) == 1)
    {
      sub_21CCB1928(v102, &qword_27CE1B5D0, &qword_21CD95200);
      goto LABEL_53;
    }

LABEL_51:
    sub_21CCB1928(v102, &qword_27CE1BB80, &qword_21CD98118);
    return 0;
  }

  v107 = v194;
  sub_21CCD1750(v102, v194, &qword_27CE1B5D0, &qword_21CD95200);
  if (v106(v102 + v103, 1, v105) == 1)
  {
    (*(v199 + 8))(v107, v105);
    goto LABEL_51;
  }

  v108 = v199;
  v109 = v102 + v103;
  v110 = v190;
  (*(v199 + 32))(v190, v109, v105);
  sub_21CCA6B04(&qword_27CE1BB98, &qword_27CE1B618, &unk_21CD95220, MEMORY[0x277CC87F0]);
  v111 = sub_21CD83A84();
  v112 = *(v108 + 8);
  v112(v110, v105);
  v112(v107, v105);
  sub_21CCB1928(v102, &qword_27CE1B5D0, &qword_21CD95200);
  v104 = v207;
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v113 = v100[13];
  v38 = v192;
  v114 = *(v191 + 48);
  sub_21CCD1750(v104 + v113, v192, &qword_27CE1B5D8, &qword_21CD95208);
  sub_21CCD1750(v48 + v113, &v38[v114], &qword_27CE1B5D8, &qword_21CD95208);
  v115 = *(v195 + 48);
  v116 = v193;
  if (v115(v38, 1, v193) == 1)
  {
    if (v115(&v38[v114], 1, v116) == 1)
    {
      sub_21CCB1928(v38, &qword_27CE1B5D8, &qword_21CD95208);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v117 = v189;
  sub_21CCD1750(v38, v189, &qword_27CE1B5D8, &qword_21CD95208);
  if (v115(&v38[v114], 1, v116) == 1)
  {
    (*(v195 + 8))(v117, v116);
LABEL_58:
    v42 = &qword_27CE1BB78;
    v43 = &qword_21CD98110;
    goto LABEL_9;
  }

  v118 = v195;
  v119 = &v38[v114];
  v120 = v188;
  (*(v195 + 32))(v188, v119, v116);
  sub_21CCA6B04(&qword_27CE1BB90, &qword_27CE1B628, &qword_21CD98510, MEMORY[0x277CC87F0]);
  LODWORD(v202) = sub_21CD83A84();
  v121 = *(v118 + 8);
  v121(v120, v116);
  v121(v117, v116);
  sub_21CCB1928(v38, &qword_27CE1B5D8, &qword_21CD95208);
  if ((v202 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v122 = v100[14];
  v123 = *(v104 + v122);
  v124 = *(v48 + v122);
  if (v123 == 10)
  {
    if (v124 != 10)
    {
      return 0;
    }
  }

  else if (v123 != v124)
  {
    return 0;
  }

  v125 = v100[15];
  v126 = *(v104 + v125);
  v127 = *(v48 + v125);
  if (v126 == 10)
  {
    if (v127 != 10)
    {
      return 0;
    }
  }

  else if (v126 != v127)
  {
    return 0;
  }

  v128 = v183[16];
  v129 = *(v207 + v128);
  v130 = *(v206 + v128);
  if (v129 == 2)
  {
    if (v130 != 2)
    {
      return 0;
    }
  }

  else if (v130 == 2 || ((v130 ^ v129) & 1) != 0)
  {
    return 0;
  }

  v131 = v183[17];
  v132 = *(v207 + v131);
  v133 = *(v206 + v131);
  if (v132 == 2)
  {
    if (v133 != 2)
    {
      return 0;
    }
  }

  else if (v133 == 2 || ((v133 ^ v132) & 1) != 0)
  {
    return 0;
  }

  v134 = v183[18];
  v135 = *(v207 + v134);
  v136 = *(v207 + v134 + 8);
  v137 = *(v207 + v134 + 16);
  v138 = *(v207 + v134 + 24);
  v140 = *(v207 + v134 + 32);
  v139 = *(v207 + v134 + 40);
  v141 = (v206 + v134);
  v142 = *v141;
  v143 = v141[1];
  v145 = v141[2];
  v144 = v141[3];
  v147 = v141[4];
  v146 = v141[5];
  v201 = v144;
  v202 = v147;
  v199 = v146;
  if (v136 == 1)
  {
    sub_21CD56ECC(v135, 1, v137, v138, v140, v139);
    if (v143 == 1)
    {
      sub_21CD56ECC(v142, 1, v145, v201, v202, v199);
      sub_21CD57118(v135, 1, v137, v138, v140, v139);
      goto LABEL_86;
    }

    sub_21CD56ECC(v142, v143, v145, v201, v202, v199);
LABEL_84:
    sub_21CD57118(v135, v136, v137, v138, v140, v139);
    sub_21CD57118(v142, v143, v145, v201, v202, v199);
    return 0;
  }

  *&v220 = v135;
  *(&v220 + 1) = v136;
  *&v221 = v137;
  *(&v221 + 1) = v138;
  *&v222 = v140;
  *(&v222 + 1) = v139;
  if (v143 == 1)
  {
    v193 = v140;
    sub_21CD56ECC(v135, v136, v137, v138, v140, v139);
    sub_21CD56ECC(v142, 1, v145, v201, v202, v199);
    sub_21CD56ECC(v135, v136, v137, v138, v193, v139);

    goto LABEL_84;
  }

  *&v215 = v142;
  *(&v215 + 1) = v143;
  v194 = v145;
  *&v216 = v145;
  *(&v216 + 1) = v201;
  v148 = v199;
  *&v217 = v202;
  *(&v217 + 1) = v199;
  LODWORD(v198) = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16IssuingAuthorityV2eeoiySbAG_AGtFZ_0(&v220, &v215);
  v195 = *(&v215 + 1);
  v196 = *(&v216 + 1);
  v197 = *(&v217 + 1);
  sub_21CD56ECC(v135, v136, v137, v138, v140, v139);
  sub_21CD56ECC(v142, v143, v194, v201, v202, v148);
  sub_21CD56ECC(v135, v136, v137, v138, v140, v139);

  sub_21CD57118(v135, v136, v137, v138, v140, v139);
  if ((v198 & 1) == 0)
  {
    return 0;
  }

LABEL_86:
  if ((sub_21CCCDA20(*(v207 + v183[19]), *(v206 + v183[19])) & 1) == 0 || (sub_21CCCE260(*(v207 + v183[20]), *(v206 + v183[20])) & 1) == 0)
  {
    return 0;
  }

  v149 = v183[21];
  v150 = *(v207 + v149);
  v151 = *(v206 + v149);
  if (v150 == 2)
  {
    if (v151 != 2)
    {
      return 0;
    }
  }

  else if (v151 == 2 || ((v151 ^ v150) & 1) != 0)
  {
    return 0;
  }

  v152 = v183[22];
  v153 = (v207 + v152);
  v154 = *(v207 + v152 + 8);
  v155 = (v206 + v152);
  v156 = v155[1];
  if (v154)
  {
    if (!v156 || (*v153 != *v155 || v154 != v156) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v156)
  {
    return 0;
  }

  v157 = v183[23];
  v158 = *(v203 + 48);
  v159 = v187;
  sub_21CCD1750(v207 + v157, v187, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v206 + v157, v159 + v158, &qword_27CE19318, &qword_21CD95170);
  if (v182(v159, 1, v204) == 1)
  {
    if (v182(v187 + v158, 1, v204) == 1)
    {
      sub_21CCB1928(v187, &qword_27CE19318, &qword_21CD95170);
      goto LABEL_107;
    }

LABEL_105:
    sub_21CCB1928(v187, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  v160 = v187;
  sub_21CCD1750(v187, v185, &qword_27CE19318, &qword_21CD95170);
  if (v182(v160 + v158, 1, v204) == 1)
  {
    (*(v205 + 8))(v185, v204);
    goto LABEL_105;
  }

  v162 = v204;
  v161 = v205;
  v163 = v187;
  v164 = v200;
  (*(v205 + 32))(v200, v187 + v158, v204);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v165 = v185;
  v166 = sub_21CD83A84();
  v167 = *(v161 + 8);
  v167(v164, v162);
  v167(v165, v162);
  sub_21CCB1928(v163, &qword_27CE19318, &qword_21CD95170);
  if ((v166 & 1) == 0)
  {
    return 0;
  }

LABEL_107:
  v168 = v183[24];
  v169 = *(v203 + 48);
  v170 = v186;
  sub_21CCD1750(v207 + v168, v186, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v206 + v168, v170 + v169, &qword_27CE19318, &qword_21CD95170);
  if (v182(v170, 1, v204) != 1)
  {
    v171 = v186;
    sub_21CCD1750(v186, v184, &qword_27CE19318, &qword_21CD95170);
    if (v182(v171 + v169, 1, v204) == 1)
    {
      (*(v205 + 8))(v184, v204);
      goto LABEL_112;
    }

    v172 = v204;
    v173 = v205;
    v174 = v186;
    v175 = v186 + v169;
    v176 = v200;
    (*(v205 + 32))(v200, v175, v204);
    sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
    v177 = v184;
    v178 = sub_21CD83A84();
    v179 = *(v173 + 8);
    v179(v176, v172);
    v179(v177, v172);
    sub_21CCB1928(v174, &qword_27CE19318, &qword_21CD95170);
    return (v178 & 1) != 0;
  }

  if (v182(v186 + v169, 1, v204) != 1)
  {
LABEL_112:
    sub_21CCB1928(v186, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  sub_21CCB1928(v186, &qword_27CE19318, &qword_21CD95170);
  return 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBA0, &unk_21CD98130);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v15 = *a1;
  v14 = a1[1];
  v17 = *a2;
  v16 = a2[1];
  if (v14 >> 60 == 15)
  {
    if (v16 >> 60 != 15)
    {
      goto LABEL_10;
    }

    v33 = v6;
    v34 = v11;
    sub_21CC96064(v15, v14);
    sub_21CC96064(v17, v16);
    sub_21CC95F8C(v15, v14);
  }

  else
  {
    if (v16 >> 60 == 15)
    {
      goto LABEL_10;
    }

    v33 = v6;
    v34 = v11;
    sub_21CC96064(v15, v14);
    sub_21CC96064(v17, v16);
    v18 = sub_21CD23300(v15, v14, v17, v16);
    sub_21CC95F8C(v17, v16);
    sub_21CC95F8C(v15, v14);
    if (!v18)
    {
      return 0;
    }
  }

  v15 = a1[2];
  v14 = a1[3];
  v17 = a2[2];
  v16 = a2[3];
  if (v14 >> 60 == 15)
  {
    if (v16 >> 60 == 15)
    {
      sub_21CC96064(a1[2], a1[3]);
      sub_21CC96064(v17, v16);
      sub_21CC95F8C(v15, v14);
      goto LABEL_13;
    }

LABEL_10:
    sub_21CC96064(v15, v14);
    sub_21CC96064(v17, v16);
    sub_21CC95F8C(v15, v14);
    sub_21CC95F8C(v17, v16);
    return 0;
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_21CC96064(a1[2], a1[3]);
  sub_21CC96064(v17, v16);
  v20 = sub_21CD23300(v15, v14, v17, v16);
  sub_21CC95F8C(v17, v16);
  sub_21CC95F8C(v15, v14);
  if (!v20)
  {
    return 0;
  }

LABEL_13:
  v21 = type metadata accessor for MobileDocumentReaderResponse(0);
  v22 = *(v21 + 24);
  v23 = *(v34 + 48);
  sub_21CCD1750(a1 + v22, v13, &qword_27CE1B148, &qword_21CD94F40);
  sub_21CCD1750(a2 + v22, &v13[v23], &qword_27CE1B148, &qword_21CD94F40);
  v24 = *(v35 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v23], 1, v4) == 1)
    {
      sub_21CCB1928(v13, &qword_27CE1B148, &qword_21CD94F40);
      goto LABEL_20;
    }

LABEL_18:
    sub_21CCB1928(v13, &qword_27CE1BBA0, &unk_21CD98130);
    return 0;
  }

  sub_21CCD1750(v13, v9, &qword_27CE1B148, &qword_21CD94F40);
  if (v24(&v13[v23], 1, v4) == 1)
  {
    sub_21CD55AF8(v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    goto LABEL_18;
  }

  v25 = v33;
  sub_21CD56A5C(&v13[v23], v33, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  v26 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV2eeoiySbAE_AEtFZ_0(v9, v25);
  sub_21CD55AF8(v25, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  sub_21CD55AF8(v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  sub_21CCB1928(v13, &qword_27CE1B148, &qword_21CD94F40);
  if (!v26)
  {
    return 0;
  }

LABEL_20:
  v27 = *(v21 + 28);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31)
    {
      return *v28 == *v30 && v29 == v31 || (sub_21CD841A4() & 1) != 0;
    }

LABEL_27:

    return 0;
  }

  if (v31)
  {
    goto LABEL_27;
  }

  return 1;
}

unint64_t sub_21CD55994()
{
  result = qword_27CE1B158;
  if (!qword_27CE1B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B158);
  }

  return result;
}

unint64_t sub_21CD55A08()
{
  result = qword_27CE1B168;
  if (!qword_27CE1B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B168);
  }

  return result;
}

uint64_t sub_21CD55A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CD55AA4()
{
  result = qword_27CE1B180;
  if (!qword_27CE1B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B180);
  }

  return result;
}

uint64_t sub_21CD55AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CD55B58()
{
  result = qword_27CE1B190;
  if (!qword_27CE1B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B190);
  }

  return result;
}

unint64_t sub_21CD55C14()
{
  result = qword_27CE1B1F8;
  if (!qword_27CE1B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B1F8);
  }

  return result;
}

unint64_t sub_21CD55C68()
{
  result = qword_27CE1B200;
  if (!qword_27CE1B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B200);
  }

  return result;
}

unint64_t sub_21CD55CBC()
{
  result = qword_27CE1B208;
  if (!qword_27CE1B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B208);
  }

  return result;
}

unint64_t sub_21CD55D10()
{
  result = qword_27CE1B210;
  if (!qword_27CE1B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B210);
  }

  return result;
}

unint64_t sub_21CD55D64()
{
  result = qword_27CE1B218;
  if (!qword_27CE1B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B218);
  }

  return result;
}

unint64_t sub_21CD55DB8()
{
  result = qword_27CE1B220;
  if (!qword_27CE1B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B220);
  }

  return result;
}

unint64_t sub_21CD55E0C()
{
  result = qword_27CE1B228;
  if (!qword_27CE1B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B228);
  }

  return result;
}

unint64_t sub_21CD55E60()
{
  result = qword_27CE1B230;
  if (!qword_27CE1B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B230);
  }

  return result;
}

unint64_t sub_21CD55EB4()
{
  result = qword_27CE1B238;
  if (!qword_27CE1B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B238);
  }

  return result;
}

unint64_t sub_21CD55F08()
{
  result = qword_27CE1B240;
  if (!qword_27CE1B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B240);
  }

  return result;
}

unint64_t sub_21CD55F5C()
{
  result = qword_27CE1B248;
  if (!qword_27CE1B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B248);
  }

  return result;
}

unint64_t sub_21CD55FB0()
{
  result = qword_27CE1B300;
  if (!qword_27CE1B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B300);
  }

  return result;
}

unint64_t sub_21CD56004()
{
  result = qword_27CE1B308;
  if (!qword_27CE1B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B308);
  }

  return result;
}

unint64_t sub_21CD56058()
{
  result = qword_27CE1B310;
  if (!qword_27CE1B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B310);
  }

  return result;
}

unint64_t sub_21CD560AC()
{
  result = qword_27CE1B318;
  if (!qword_27CE1B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B318);
  }

  return result;
}

unint64_t sub_21CD56100()
{
  result = qword_27CE1B320;
  if (!qword_27CE1B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B320);
  }

  return result;
}

unint64_t sub_21CD56154()
{
  result = qword_27CE1B328;
  if (!qword_27CE1B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B328);
  }

  return result;
}

unint64_t sub_21CD561A8()
{
  result = qword_27CE1B330;
  if (!qword_27CE1B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B330);
  }

  return result;
}

unint64_t sub_21CD561FC()
{
  result = qword_27CE1B338;
  if (!qword_27CE1B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B338);
  }

  return result;
}

unint64_t sub_21CD56250()
{
  result = qword_27CE1B340;
  if (!qword_27CE1B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B340);
  }

  return result;
}

unint64_t sub_21CD562A4()
{
  result = qword_27CE1B348;
  if (!qword_27CE1B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B348);
  }

  return result;
}

unint64_t sub_21CD562F8()
{
  result = qword_27CE1B350;
  if (!qword_27CE1B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B350);
  }

  return result;
}

unint64_t sub_21CD5634C()
{
  result = qword_27CE1B3E0;
  if (!qword_27CE1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3E0);
  }

  return result;
}

unint64_t sub_21CD563A0()
{
  result = qword_27CE1B3E8;
  if (!qword_27CE1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3E8);
  }

  return result;
}

unint64_t sub_21CD563F4()
{
  result = qword_27CE1B3F0;
  if (!qword_27CE1B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3F0);
  }

  return result;
}

unint64_t sub_21CD56448()
{
  result = qword_27CE1B3F8;
  if (!qword_27CE1B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3F8);
  }

  return result;
}

unint64_t sub_21CD5649C()
{
  result = qword_27CE1B400;
  if (!qword_27CE1B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B400);
  }

  return result;
}

unint64_t sub_21CD564F0()
{
  result = qword_27CE1B408;
  if (!qword_27CE1B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B408);
  }

  return result;
}

unint64_t sub_21CD56544()
{
  result = qword_27CE1B458;
  if (!qword_27CE1B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B458);
  }

  return result;
}

unint64_t sub_21CD56598()
{
  result = qword_27CE1B460;
  if (!qword_27CE1B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B460);
  }

  return result;
}

unint64_t sub_21CD565EC()
{
  result = qword_27CE1B468;
  if (!qword_27CE1B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B468);
  }

  return result;
}

unint64_t sub_21CD56640()
{
  result = qword_27CE1B490;
  if (!qword_27CE1B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B490);
  }

  return result;
}

unint64_t sub_21CD566B4()
{
  result = qword_27CE1B4A8;
  if (!qword_27CE1B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4A8);
  }

  return result;
}

unint64_t sub_21CD56708()
{
  result = qword_27CE1B4C0;
  if (!qword_27CE1B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD5678C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4C0);
  }

  return result;
}

unint64_t sub_21CD5678C()
{
  result = qword_27CE1B4C8;
  if (!qword_27CE1B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4C8);
  }

  return result;
}

unint64_t sub_21CD567E0()
{
  result = qword_27CE1B4E0;
  if (!qword_27CE1B4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD56864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4E0);
  }

  return result;
}

unint64_t sub_21CD56864()
{
  result = qword_27CE1B4E8;
  if (!qword_27CE1B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4E8);
  }

  return result;
}

uint64_t sub_21CD568B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CD56940()
{
  result = qword_27CE1B4F8;
  if (!qword_27CE1B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4F8);
  }

  return result;
}

unint64_t sub_21CD56994()
{
  result = qword_27CE1B510;
  if (!qword_27CE1B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B510);
  }

  return result;
}

unint64_t sub_21CD569E8()
{
  result = qword_27CE1B528;
  if (!qword_27CE1B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B528);
  }

  return result;
}

uint64_t sub_21CD56A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CD56AC4()
{
  result = qword_27CE1B540;
  if (!qword_27CE1B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B540);
  }

  return result;
}

unint64_t sub_21CD56B18()
{
  result = qword_27CE1B558;
  if (!qword_27CE1B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B558);
  }

  return result;
}

unint64_t sub_21CD56B9C()
{
  result = qword_27CE1B560;
  if (!qword_27CE1B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B560);
  }

  return result;
}

unint64_t sub_21CD56BF0()
{
  result = qword_27CE1B570;
  if (!qword_27CE1B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B570);
  }

  return result;
}

unint64_t sub_21CD56C74()
{
  result = qword_27CE1B578;
  if (!qword_27CE1B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B578);
  }

  return result;
}

unint64_t sub_21CD56CC8()
{
  result = qword_27CE1B590;
  if (!qword_27CE1B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B590);
  }

  return result;
}

unint64_t sub_21CD56D4C()
{
  result = qword_27CE1B598;
  if (!qword_27CE1B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B598);
  }

  return result;
}

unint64_t sub_21CD56DA0()
{
  result = qword_27CE1B5A0;
  if (!qword_27CE1B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5A0);
  }

  return result;
}

unint64_t sub_21CD56E24()
{
  result = qword_27CE1B5A8;
  if (!qword_27CE1B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5A8);
  }

  return result;
}

unint64_t sub_21CD56E78()
{
  result = qword_27CE1B5B8;
  if (!qword_27CE1B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5B8);
  }

  return result;
}

void sub_21CD56ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_21CD56F20()
{
  result = qword_27CE1B5E8;
  if (!qword_27CE1B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5E8);
  }

  return result;
}

unint64_t sub_21CD56F74()
{
  result = qword_27CE1B5F8;
  if (!qword_27CE1B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5F8);
  }

  return result;
}

unint64_t sub_21CD56FC8()
{
  result = qword_27CE1B610;
  if (!qword_27CE1B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B610);
  }

  return result;
}

unint64_t sub_21CD5701C()
{
  result = qword_27CE1B638;
  if (!qword_27CE1B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B638);
  }

  return result;
}

unint64_t sub_21CD57070()
{
  result = qword_27CE1B640;
  if (!qword_27CE1B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B640);
  }

  return result;
}

unint64_t sub_21CD570C4()
{
  result = qword_27CE1B648;
  if (!qword_27CE1B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B648);
  }

  return result;
}

void sub_21CD57118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_21CD5716C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B668, &qword_21CD95238);
    sub_21CD55A5C(a2, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD57208()
{
  result = qword_27CE1B680;
  if (!qword_27CE1B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B680);
  }

  return result;
}

unint64_t sub_21CD5725C()
{
  result = qword_27CE1B6B0;
  if (!qword_27CE1B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6B0);
  }

  return result;
}

uint64_t sub_21CD572B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B600, &qword_21CD95218);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD57320()
{
  result = qword_27CE1B6C0;
  if (!qword_27CE1B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6C0);
  }

  return result;
}

unint64_t sub_21CD57374()
{
  result = qword_27CE1B6D8;
  if (!qword_27CE1B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6D8);
  }

  return result;
}

unint64_t sub_21CD573C8()
{
  result = qword_27CE1B6E0;
  if (!qword_27CE1B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6E0);
  }

  return result;
}

unint64_t sub_21CD5741C()
{
  result = qword_27CE1B6E8;
  if (!qword_27CE1B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6E8);
  }

  return result;
}

uint64_t sub_21CD57470(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B650, &qword_21CD95230);
    sub_21CD55A5C(a2, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD5750C()
{
  result = qword_27CE1B710;
  if (!qword_27CE1B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B710);
  }

  return result;
}

unint64_t sub_21CD575AC()
{
  result = qword_27CE1B720;
  if (!qword_27CE1B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B720);
  }

  return result;
}

unint64_t sub_21CD57604()
{
  result = qword_27CE1B728;
  if (!qword_27CE1B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B728);
  }

  return result;
}

unint64_t sub_21CD5765C()
{
  result = qword_27CE1B730;
  if (!qword_27CE1B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B730);
  }

  return result;
}

unint64_t sub_21CD576B4()
{
  result = qword_27CE1B738;
  if (!qword_27CE1B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B738);
  }

  return result;
}

unint64_t sub_21CD5770C()
{
  result = qword_27CE1B740;
  if (!qword_27CE1B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B740);
  }

  return result;
}

unint64_t sub_21CD57764()
{
  result = qword_27CE1B748;
  if (!qword_27CE1B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B748);
  }

  return result;
}

unint64_t sub_21CD5784C()
{
  result = qword_27CE1B760;
  if (!qword_27CE1B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B760);
  }

  return result;
}

unint64_t sub_21CD578A4()
{
  result = qword_27CE1B768;
  if (!qword_27CE1B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B768);
  }

  return result;
}

unint64_t sub_21CD57944()
{
  result = qword_27CE1B778;
  if (!qword_27CE1B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B778);
  }

  return result;
}

void sub_21CD57A08(uint64_t a1)
{
  sub_21CD58410(319, &qword_27CE1A6C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CD57FE8(319, &qword_27CE1B798, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B7A0, &type metadata for MobileDocumentIssuer, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CD57B44(uint64_t a1)
{
  type metadata accessor for MobileDocumentType(319);
  if (v1 <= 0x3F)
  {
    sub_21CD835C4();
    if (v2 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B7B8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21CD58410(319, &qword_27CE1A6C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21CD58410(319, &qword_27CE1B7C0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21CD57F88();
            if (v6 <= 0x3F)
            {
              sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_21CD58410(319, &qword_27CE1B7D8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_21CD5804C(319, &qword_27CE1B7E0, &qword_27CE1B618, &unk_21CD95220);
                  if (v9 <= 0x3F)
                  {
                    sub_21CD5804C(319, &qword_27CE1B7E8, &qword_27CE1B628, &qword_21CD98510);
                    if (v10 <= 0x3F)
                    {
                      sub_21CD58410(319, &qword_27CE1B7F0, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_21CD58410(319, &qword_27CE1B7F8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor, MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
                        {
                          sub_21CD58410(319, &qword_27CE1B800, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            sub_21CD58410(319, &qword_27CE1B808, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority, MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_21CD57FE8(319, &qword_27CE1B810, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege, MEMORY[0x277D83940]);
                              if (v15 <= 0x3F)
                              {
                                sub_21CD57FE8(319, &qword_27CE1B818, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83940]);
                                if (v16 <= 0x3F)
                                {
                                  sub_21CD58410(319, &qword_27CE1B820, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus, MEMORY[0x277D83D88]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_21CD58410(319, &qword_280F77E38, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                                    if (v18 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_21CD57F88()
{
  if (!qword_27CE1B7C8)
  {
    v0 = sub_21CD83A44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1B7C8);
    }
  }
}

void sub_21CD57FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21CD5804C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CD83EA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21CD580A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_21CD580FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21CD581DC(uint64_t a1)
{
  sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CD58410(319, &qword_27CE1B838, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD582FC(uint64_t a1)
{
  sub_21CD57FE8(319, &qword_27CE1B850, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CD58410(319, &qword_27CE1B858, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleRestriction, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B860, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CD58410(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CD58488(uint64_t a1)
{
  sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CD58554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_21CD585B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderResponse.MobileIdentityDocumentElements.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderResponse.MobileIdentityDocumentElements.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CD58920(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21CD589B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CD58B34()
{
  result = qword_27CE1B878;
  if (!qword_27CE1B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B878);
  }

  return result;
}

unint64_t sub_21CD58B8C()
{
  result = qword_27CE1B880;
  if (!qword_27CE1B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B880);
  }

  return result;
}

unint64_t sub_21CD58BE4()
{
  result = qword_27CE1B888;
  if (!qword_27CE1B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B888);
  }

  return result;
}

unint64_t sub_21CD58C3C()
{
  result = qword_27CE1B890;
  if (!qword_27CE1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B890);
  }

  return result;
}

unint64_t sub_21CD58C94()
{
  result = qword_27CE1B898;
  if (!qword_27CE1B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B898);
  }

  return result;
}

unint64_t sub_21CD58CEC()
{
  result = qword_27CE1B8A0;
  if (!qword_27CE1B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8A0);
  }

  return result;
}

unint64_t sub_21CD58D44()
{
  result = qword_27CE1B8A8;
  if (!qword_27CE1B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8A8);
  }

  return result;
}

unint64_t sub_21CD58D9C()
{
  result = qword_27CE1B8B0;
  if (!qword_27CE1B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8B0);
  }

  return result;
}

unint64_t sub_21CD58DF4()
{
  result = qword_27CE1B8B8;
  if (!qword_27CE1B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8B8);
  }

  return result;
}

unint64_t sub_21CD58E4C()
{
  result = qword_27CE1B8C0;
  if (!qword_27CE1B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8C0);
  }

  return result;
}

unint64_t sub_21CD58EA4()
{
  result = qword_27CE1B8C8;
  if (!qword_27CE1B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8C8);
  }

  return result;
}

unint64_t sub_21CD58EFC()
{
  result = qword_27CE1B8D0;
  if (!qword_27CE1B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8D0);
  }

  return result;
}

unint64_t sub_21CD58F54()
{
  result = qword_27CE1B8D8;
  if (!qword_27CE1B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8D8);
  }

  return result;
}

unint64_t sub_21CD58FAC()
{
  result = qword_27CE1B8E0;
  if (!qword_27CE1B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8E0);
  }

  return result;
}

unint64_t sub_21CD59004()
{
  result = qword_27CE1B8E8;
  if (!qword_27CE1B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8E8);
  }

  return result;
}

unint64_t sub_21CD5905C()
{
  result = qword_27CE1B8F0;
  if (!qword_27CE1B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8F0);
  }

  return result;
}

unint64_t sub_21CD590B4()
{
  result = qword_27CE1B8F8;
  if (!qword_27CE1B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8F8);
  }

  return result;
}

unint64_t sub_21CD5910C()
{
  result = qword_27CE1B900;
  if (!qword_27CE1B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B900);
  }

  return result;
}

unint64_t sub_21CD59164()
{
  result = qword_27CE1B908;
  if (!qword_27CE1B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B908);
  }

  return result;
}

unint64_t sub_21CD591BC()
{
  result = qword_27CE1B910;
  if (!qword_27CE1B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B910);
  }

  return result;
}

unint64_t sub_21CD59214()
{
  result = qword_27CE1B918;
  if (!qword_27CE1B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B918);
  }

  return result;
}

unint64_t sub_21CD5926C()
{
  result = qword_27CE1B920;
  if (!qword_27CE1B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B920);
  }

  return result;
}

unint64_t sub_21CD592C4()
{
  result = qword_27CE1B928;
  if (!qword_27CE1B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B928);
  }

  return result;
}

unint64_t sub_21CD5931C()
{
  result = qword_27CE1B930;
  if (!qword_27CE1B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B930);
  }

  return result;
}

unint64_t sub_21CD59374()
{
  result = qword_27CE1B938;
  if (!qword_27CE1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B938);
  }

  return result;
}

unint64_t sub_21CD593CC()
{
  result = qword_27CE1B940;
  if (!qword_27CE1B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B940);
  }

  return result;
}

unint64_t sub_21CD59424()
{
  result = qword_27CE1B948;
  if (!qword_27CE1B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B948);
  }

  return result;
}

unint64_t sub_21CD5947C()
{
  result = qword_27CE1B950;
  if (!qword_27CE1B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B950);
  }

  return result;
}

unint64_t sub_21CD594D4()
{
  result = qword_27CE1B958;
  if (!qword_27CE1B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B958);
  }

  return result;
}

unint64_t sub_21CD5952C()
{
  result = qword_27CE1B960;
  if (!qword_27CE1B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B960);
  }

  return result;
}

unint64_t sub_21CD59584()
{
  result = qword_27CE1B968;
  if (!qword_27CE1B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B968);
  }

  return result;
}

unint64_t sub_21CD595DC()
{
  result = qword_27CE1B970;
  if (!qword_27CE1B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B970);
  }

  return result;
}

unint64_t sub_21CD59634()
{
  result = qword_27CE1B978;
  if (!qword_27CE1B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B978);
  }

  return result;
}

unint64_t sub_21CD5968C()
{
  result = qword_27CE1B980;
  if (!qword_27CE1B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B980);
  }

  return result;
}

unint64_t sub_21CD596E4()
{
  result = qword_27CE1B988;
  if (!qword_27CE1B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B988);
  }

  return result;
}

unint64_t sub_21CD5973C()
{
  result = qword_27CE1B990;
  if (!qword_27CE1B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B990);
  }

  return result;
}

unint64_t sub_21CD59794()
{
  result = qword_27CE1B998;
  if (!qword_27CE1B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B998);
  }

  return result;
}

unint64_t sub_21CD597EC()
{
  result = qword_27CE1B9A0;
  if (!qword_27CE1B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9A0);
  }

  return result;
}

unint64_t sub_21CD59844()
{
  result = qword_27CE1B9A8;
  if (!qword_27CE1B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9A8);
  }

  return result;
}

unint64_t sub_21CD5989C()
{
  result = qword_27CE1B9B0;
  if (!qword_27CE1B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9B0);
  }

  return result;
}

unint64_t sub_21CD598F4()
{
  result = qword_27CE1B9B8;
  if (!qword_27CE1B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9B8);
  }

  return result;
}

unint64_t sub_21CD5994C()
{
  result = qword_27CE1B9C0;
  if (!qword_27CE1B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9C0);
  }

  return result;
}

unint64_t sub_21CD599A4()
{
  result = qword_27CE1B9C8;
  if (!qword_27CE1B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9C8);
  }

  return result;
}

unint64_t sub_21CD599FC()
{
  result = qword_27CE1B9D0;
  if (!qword_27CE1B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9D0);
  }

  return result;
}

unint64_t sub_21CD59A54()
{
  result = qword_27CE1B9D8;
  if (!qword_27CE1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9D8);
  }

  return result;
}

unint64_t sub_21CD59AAC()
{
  result = qword_27CE1B9E0;
  if (!qword_27CE1B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9E0);
  }

  return result;
}

unint64_t sub_21CD59B04()
{
  result = qword_27CE1B9E8;
  if (!qword_27CE1B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9E8);
  }

  return result;
}

unint64_t sub_21CD59B5C()
{
  result = qword_27CE1B9F0;
  if (!qword_27CE1B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9F0);
  }

  return result;
}

unint64_t sub_21CD59BB4()
{
  result = qword_27CE1B9F8;
  if (!qword_27CE1B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B9F8);
  }

  return result;
}

unint64_t sub_21CD59C0C()
{
  result = qword_27CE1BA00;
  if (!qword_27CE1BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA00);
  }

  return result;
}

unint64_t sub_21CD59C64()
{
  result = qword_27CE1BA08;
  if (!qword_27CE1BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA08);
  }

  return result;
}

unint64_t sub_21CD59CBC()
{
  result = qword_27CE1BA10;
  if (!qword_27CE1BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA10);
  }

  return result;
}

unint64_t sub_21CD59D14()
{
  result = qword_27CE1BA18;
  if (!qword_27CE1BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA18);
  }

  return result;
}

unint64_t sub_21CD59D6C()
{
  result = qword_27CE1BA20;
  if (!qword_27CE1BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA20);
  }

  return result;
}

unint64_t sub_21CD59DC4()
{
  result = qword_27CE1BA28;
  if (!qword_27CE1BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA28);
  }

  return result;
}

unint64_t sub_21CD59E1C()
{
  result = qword_27CE1BA30;
  if (!qword_27CE1BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA30);
  }

  return result;
}

unint64_t sub_21CD59E74()
{
  result = qword_27CE1BA38;
  if (!qword_27CE1BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA38);
  }

  return result;
}

unint64_t sub_21CD59ECC()
{
  result = qword_27CE1BA40;
  if (!qword_27CE1BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA40);
  }

  return result;
}

unint64_t sub_21CD59F24()
{
  result = qword_27CE1BA48;
  if (!qword_27CE1BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA48);
  }

  return result;
}

unint64_t sub_21CD59F7C()
{
  result = qword_27CE1BA50;
  if (!qword_27CE1BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA50);
  }

  return result;
}

unint64_t sub_21CD59FD4()
{
  result = qword_27CE1BA58;
  if (!qword_27CE1BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA58);
  }

  return result;
}

unint64_t sub_21CD5A02C()
{
  result = qword_27CE1BA60;
  if (!qword_27CE1BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA60);
  }

  return result;
}

unint64_t sub_21CD5A084()
{
  result = qword_27CE1BA68;
  if (!qword_27CE1BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA68);
  }

  return result;
}

unint64_t sub_21CD5A0DC()
{
  result = qword_27CE1BA70;
  if (!qword_27CE1BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA70);
  }

  return result;
}

unint64_t sub_21CD5A134()
{
  result = qword_27CE1BA78;
  if (!qword_27CE1BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA78);
  }

  return result;
}

unint64_t sub_21CD5A18C()
{
  result = qword_27CE1BA80;
  if (!qword_27CE1BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA80);
  }

  return result;
}

unint64_t sub_21CD5A1E4()
{
  result = qword_27CE1BA88;
  if (!qword_27CE1BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA88);
  }

  return result;
}

unint64_t sub_21CD5A23C()
{
  result = qword_27CE1BA90;
  if (!qword_27CE1BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA90);
  }

  return result;
}

unint64_t sub_21CD5A294()
{
  result = qword_27CE1BA98;
  if (!qword_27CE1BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BA98);
  }

  return result;
}

unint64_t sub_21CD5A2EC()
{
  result = qword_27CE1BAA0;
  if (!qword_27CE1BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAA0);
  }

  return result;
}

unint64_t sub_21CD5A344()
{
  result = qword_27CE1BAA8;
  if (!qword_27CE1BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAA8);
  }

  return result;
}

unint64_t sub_21CD5A39C()
{
  result = qword_27CE1BAB0;
  if (!qword_27CE1BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAB0);
  }

  return result;
}

unint64_t sub_21CD5A3F4()
{
  result = qword_27CE1BAB8;
  if (!qword_27CE1BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAB8);
  }

  return result;
}

unint64_t sub_21CD5A44C()
{
  result = qword_27CE1BAC0;
  if (!qword_27CE1BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAC0);
  }

  return result;
}

unint64_t sub_21CD5A4A4()
{
  result = qword_27CE1BAC8;
  if (!qword_27CE1BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAC8);
  }

  return result;
}

unint64_t sub_21CD5A4FC()
{
  result = qword_27CE1BAD0;
  if (!qword_27CE1BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAD0);
  }

  return result;
}

unint64_t sub_21CD5A554()
{
  result = qword_27CE1BAD8;
  if (!qword_27CE1BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAD8);
  }

  return result;
}

unint64_t sub_21CD5A5AC()
{
  result = qword_27CE1BAE0;
  if (!qword_27CE1BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAE0);
  }

  return result;
}

unint64_t sub_21CD5A604()
{
  result = qword_27CE1BAE8;
  if (!qword_27CE1BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAE8);
  }

  return result;
}

unint64_t sub_21CD5A65C()
{
  result = qword_27CE1BAF0;
  if (!qword_27CE1BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAF0);
  }

  return result;
}

unint64_t sub_21CD5A6B4()
{
  result = qword_27CE1BAF8;
  if (!qword_27CE1BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BAF8);
  }

  return result;
}

unint64_t sub_21CD5A70C()
{
  result = qword_27CE1BB00;
  if (!qword_27CE1BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB00);
  }

  return result;
}

unint64_t sub_21CD5A764()
{
  result = qword_27CE1BB08;
  if (!qword_27CE1BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB08);
  }

  return result;
}

unint64_t sub_21CD5A7BC()
{
  result = qword_27CE1BB10;
  if (!qword_27CE1BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB10);
  }

  return result;
}

unint64_t sub_21CD5A814()
{
  result = qword_27CE1BB18;
  if (!qword_27CE1BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB18);
  }

  return result;
}

unint64_t sub_21CD5A86C()
{
  result = qword_27CE1BB20;
  if (!qword_27CE1BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB20);
  }

  return result;
}

unint64_t sub_21CD5A8C4()
{
  result = qword_27CE1BB28;
  if (!qword_27CE1BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB28);
  }

  return result;
}

unint64_t sub_21CD5A91C()
{
  result = qword_27CE1BB30;
  if (!qword_27CE1BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB30);
  }

  return result;
}

unint64_t sub_21CD5A974()
{
  result = qword_27CE1BB38;
  if (!qword_27CE1BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB38);
  }

  return result;
}

unint64_t sub_21CD5A9CC()
{
  result = qword_27CE1BB40;
  if (!qword_27CE1BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB40);
  }

  return result;
}

unint64_t sub_21CD5AA24()
{
  result = qword_27CE1BB48;
  if (!qword_27CE1BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB48);
  }

  return result;
}

unint64_t sub_21CD5AA7C()
{
  result = qword_27CE1BB50;
  if (!qword_27CE1BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB50);
  }

  return result;
}

unint64_t sub_21CD5AAD4()
{
  result = qword_27CE1BB58;
  if (!qword_27CE1BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB58);
  }

  return result;
}

unint64_t sub_21CD5AB2C()
{
  result = qword_27CE1BB60;
  if (!qword_27CE1BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB60);
  }

  return result;
}

unint64_t sub_21CD5AB84()
{
  result = qword_27CE1BB68;
  if (!qword_27CE1BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB68);
  }

  return result;
}

unint64_t sub_21CD5ABDC()
{
  result = qword_27CE1BB70;
  if (!qword_27CE1BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BB70);
  }

  return result;
}

uint64_t sub_21CD5AC30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CDA11A0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021CDA11C0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5ADA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972)
  {

    return 4;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5AF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63616C62 && a2 == 0xE500000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F7262 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D6F7268636964 && a2 == 0xEB00000000636974 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036691559 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C657A6168 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6F72616DLL && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1802398064 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_21CD5B274(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684824418 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E6F6C62 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F7262 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036691559 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E7275627561 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79646E6173 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_21CD5B588(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616D6566 && a2 == 0xE600000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701601645 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C707041746F6ELL && a2 == 0xED0000656C626163 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6963657053746F6ELL && a2 == 0xEC00000064656966 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5B740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5B854(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000021CDA11E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_21CD841A4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21CD5B9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5BB48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43656C6369686576 && a2 == 0xEC0000007373616CLL;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021CDA1200 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021CDA1220 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5BC74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636964736972756ALL && a2 == 0xEC0000006E6F6974 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD5BD98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000065707954;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xEC00000061746144 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021CDA1240 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_21CD841A4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_21CD841A4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446E6167724F7369 && a2 == 0xEC000000726F6E6FLL || (sub_21CD841A4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6172657465567369 && a2 == 0xE90000000000006ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CD9DA60 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9D9E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CDA1260 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CD9DA40 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CD9DA00 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CD9DA20 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

void sub_21CD5C4C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
    sub_21CD83CF4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
    sub_21CD83D04();
  }
}

uint64_t sub_21CD5C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CCD1750(a3, v25 - v10, &unk_27CE19190, &qword_21CD8E260);
  v12 = sub_21CD83D74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CCB1928(v11, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CD83CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CD83B54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21CD5C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CCD1750(a3, v25 - v10, &unk_27CE19190, &qword_21CD8E260);
  v12 = sub_21CD83D74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CCB1928(v11, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CD83CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CD83B54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC00, &qword_21CD98530);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC00, &qword_21CD98530);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void _s7CoreIDV27MobileDocumentReaderSessionC16checkIsSupportedyyAC5ErrorVYKFZ(uint64_t a1)
{
  v3 = MobileGestalt_get_current_device();
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  if (deviceClassNumber != 1)
  {
    v9 = "aamvaDrivingPrivileges";
    v10 = xmmword_21CD98140;
    v14 = xmmword_21CD98140;
    v11 = xmmword_21CD98150;
LABEL_9:
    v13 = v11;
    v12 = v9 | 0x8000000000000000;
    v15 = v10;
    v16 = v11;
    v17 = (v9 | 0x8000000000000000);
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    *a1 = v14;
    *(a1 + 16) = v13;
    *(a1 + 32) = v12;
    return;
  }

  *(&v16 + 1) = &type metadata for BundleRecordFetcher;
  v17 = &protocol witness table for BundleRecordFetcher;
  memset(&auditToken, 0, 32);
  auditToken.is_nil = 1;
  v6 = MobileDocumentReaderEntitlementChecker.checkPublicEntitlements(auditToken:)(&auditToken);
  sub_21CD5D8BC(&v15);
  if (!v6)
  {
    v9 = "ce is not supported.";
    v10 = xmmword_21CD8F6A0;
    v14 = xmmword_21CD8F6A0;
    v11 = xmmword_21CD98160;
    goto LABEL_9;
  }

  sub_21CD5CD94(&auditToken, &v15);
  if (v1)
  {
    v7 = v17;
    v8 = v16;
    *a1 = v15;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    sub_21CD5CE80(&v15);
  }
}

void _s7CoreIDV27MobileDocumentReaderSessionC24checkDeviceTypeSupportedyyAC5ErrorVYKFZ(uint64_t a1)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber != 1)
    {
      *a1 = xmmword_21CD98140;
      *(a1 + 16) = xmmword_21CD98150;
      *(a1 + 32) = 0x800000021CDA1280;
      sub_21CD5D868();
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CD5CD94(audit_token_t_optional *a1, uint64_t a2)
{
  *(&v6 + 1) = &type metadata for BundleRecordFetcher;
  v7 = &protocol witness table for BundleRecordFetcher;
  MobileDocumentReaderEntitlementChecker.checkBundleTypeSupported(auditToken:)(a1);
  result = sub_21CD5D8BC(&v5);
  v4 = v8;
  if (v8)
  {
    *a2 = xmmword_21CD98140;
    if (v4 == 1)
    {
      *(a2 + 16) = xmmword_21CD98170;
      *(a2 + 32) = 0x800000021CDA1520;
      v5 = xmmword_21CD98140;
      v6 = xmmword_21CD98170;
      v7 = 0x800000021CDA1520;
      sub_21CD5D868();
    }

    else
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      v5 = xmmword_21CD98140;
      sub_21CD5D868();
      v7 = 0;
      v6 = 0uLL;
    }

    return swift_willThrowTypedImpl();
  }

  return result;
}

void sub_21CD5CE80(uint64_t a1)
{
  v2 = sub_21CD83834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_21CD83B04();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE1A9B0, &unk_21CD91E60);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 16) = v8;
    *&v11[0] = inited;
    sub_21CD83824();
    v10 = MobileDocumentReaderSupportChecker.isLocaleSupported(_:)();
    (*(v3 + 8))(v5, v2);

    if ((v10 & 1) == 0)
    {
      *a1 = xmmword_21CD98140;
      *(a1 + 16) = xmmword_21CD98180;
      *(a1 + 32) = 0x800000021CDA14F0;
      v11[0] = xmmword_21CD98140;
      v11[1] = xmmword_21CD98180;
      v12 = 0x800000021CDA14F0;
      sub_21CD5D868();
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MobileDocumentReaderSession.__allocating_init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MobileDocumentReaderSession.init(auditToken:)(a1, a2, a3, a4);
  return v8;
}

uint64_t MobileDocumentReaderSession.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 136) = a4;
  v57 = &type metadata for BundleRecordFetcher;
  v58 = &protocol witness table for BundleRecordFetcher;
  v60.value.super.isa = 0;
  if (MobileDocumentReaderEntitlementChecker.checkInternalEntitlement(connection:)(v60))
  {
    *auditToken.value.val = a1;
    *&auditToken.value.val[2] = a2;
    *&auditToken.value.val[4] = a3;
    *&auditToken.value.val[6] = a4;
    auditToken.is_nil = 0;
    v10 = MobileDocumentReaderEntitlementChecker.checkPublicEntitlements(auditToken:)(&auditToken);
  }

  else
  {
    v10 = 0;
  }

  *(v4 + 152) = v10;
  v11 = objc_opt_self();
  v12 = [v11 interfaceWithProtocol_];
  v13 = [v11 interfaceWithProtocol_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v15 = sub_21CD83B04();
  v16 = [v14 initWithMachServiceName:v15 options:{4096, 0, 0, 0, 0}];

  sub_21CCD1750(&aBlock, v54, &qword_27CE19160, &unk_21CD88740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8B8, qword_21CD91590);
  v17 = swift_allocObject();
  [v16 setRemoteObjectInterface_];
  [v16 setInvalidationHandler_];
  [v16 setInterruptionHandler_];
  [v16 setExportedInterface_];
  sub_21CCD1750(v54, v52, &qword_27CE19160, &unk_21CD88740);
  v18 = v53;
  if (v53)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v52, v53);
    v20 = *(v18 - 8);
    MEMORY[0x28223BE20](v19);
    v22 = &aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = sub_21CD84194();
    (*(v20 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v23 = 0;
  }

  [v16 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v16;
  v17[2] = v24;
  v17[3] = sub_21CD5D7EC;
  v17[4] = 0;
  v25 = v16;
  [v25 activate];

  sub_21CCB1928(v54, &qword_27CE19160, &unk_21CD88740);
  sub_21CCB1928(&aBlock, &qword_27CE19160, &unk_21CD88740);
  *(v5 + 144) = v17;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = type metadata accessor for MobileDocumentReaderDelegateProxy();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_21CD5DC18;
  *(v28 + 24) = v26;
  v49 = v27;
  aBlock = v28;
  v29 = v17[2];

  os_unfair_lock_lock((v29 + 24));
  v30 = *(v29 + 16);
  sub_21CCD1750(&aBlock, v54, &qword_27CE19160, &unk_21CD88740);
  v31 = v55;
  if (v55)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v33 = *(v31 - 8);
    MEMORY[0x28223BE20](v32);
    v35 = &aBlock - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v35);
    v36 = sub_21CD84194();
    (*(v33 + 8))(v35, v31);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v36 = 0;
  }

  [v30 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v29 + 24));
  sub_21CCB1928(&aBlock, &qword_27CE19160, &unk_21CD88740);
  v37 = *(v5 + 144);
  v38 = swift_allocObject();
  swift_weakInit();

  v39 = *(v37 + 16);

  os_unfair_lock_lock((v39 + 24));
  v40 = *(v39 + 16);
  v50 = sub_21CD5DE04;
  v51 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21CCB3270;
  v49 = &block_descriptor_8;
  v41 = _Block_copy(&aBlock);

  [v40 setInterruptionHandler_];
  _Block_release(v41);
  os_unfair_lock_unlock((v39 + 24));

  v42 = *(*(v5 + 144) + 16);
  os_unfair_lock_lock((v42 + 24));
  v43 = *(v42 + 16);
  v50 = sub_21CD5DE8C;
  v51 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_21CCB3270;
  v49 = &block_descriptor_4;
  v44 = _Block_copy(&aBlock);

  [v43 setInvalidationHandler_];
  _Block_release(v44);
  os_unfair_lock_unlock((v42 + 24));
  sub_21CD5D8BC(v56);
  return v5;
}

uint64_t sub_21CD5D7EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21CD5D868();
  v6 = swift_allocError();
  v8 = v7;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 16) = a1;
  v9 = a1;

  *(v8 + 24) = 0;
  *(v8 + 32) = 0;

  return v6;
}

unint64_t sub_21CD5D868()
{
  result = qword_27CE1BBA8;
  if (!qword_27CE1BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BBA8);
  }

  return result;
}

uint64_t sub_21CD5D910(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MobileDocumentReaderSession.State(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_21CD83D74();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_21CD686F0(a1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MobileDocumentReaderSession.State);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    sub_21CD689E8(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
    sub_21CD5C850(0, 0, v8, &unk_21CD98518, v13);
  }

  return result;
}

uint64_t sub_21CD5DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21CD5DB14, a4, 0);
}

uint64_t sub_21CD5DB14()
{
  v1 = v0[3];
  v2 = *(v1 + 168);
  v0[5] = v2;
  v3 = *(v1 + 176);
  v0[6] = v3;
  sub_21CC91FBC(v2, v3);

  return MEMORY[0x2822009F8](sub_21CD5DB8C, 0, 0);
}

uint64_t sub_21CD5DB8C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    v1(*(v0 + 32));
    sub_21CC94F4C(v1, v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD5DC20(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v4 = sub_21CD839F4();
  __swift_project_value_buffer(v4, qword_280F78E40);
  v5 = sub_21CD839D4();
  v6 = sub_21CD83E14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21CC90000, v5, v6, "MobileDocumentReaderSession connection interrupted", v7, 2u);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_21CD83D74();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_21CD5C550(0, 0, v3, &unk_21CD984F8, v11);
  }

  return result;
}

uint64_t sub_21CD5DE2C()
{
  sub_21CD665EC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_21CD5DE8C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v0 = sub_21CD839F4();
  __swift_project_value_buffer(v0, qword_280F78E40);
  oslog = sub_21CD839D4();
  v1 = sub_21CD83E14();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CC90000, oslog, v1, "MobileDocumentReaderSession connection invalidated", v2, 2u);
    MEMORY[0x21CF18580](v2, -1, -1);
  }
}

uint64_t sub_21CD5DF74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21CD5E020;

  return sub_21CD61A28(&unk_21CD981A8, 0, 0, 0);
}

uint64_t sub_21CD5E020(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_21CD5E130(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB0, &qword_21CD889E0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD5E1FC, 0, 0);
}

uint64_t sub_21CD5E1FC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD5E3B0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5E5A4;
  v1[13] = &block_descriptor_212;
  [v9 readerInstanceIdentifierWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD5E3B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_21CD5E530;
  }

  else
  {
    v2 = sub_21CD5E4C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD5E4C0()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CD5E530(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_21CD5E5A4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB0, &qword_21CD889E0);
    sub_21CD83CF4();
  }

  else
  {
    sub_21CD83B24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB0, &qword_21CD889E0);
    sub_21CD83D04();
  }
}

uint64_t sub_21CD5E650(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 72) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_21CD5E680, v2, 0);
}

uint64_t sub_21CD5E680()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_21CD5E774;
  v6 = *(v0 + 16);

  return sub_21CD628C0(v6, &unk_21CD981C8, v4, 0, 0);
}

uint64_t sub_21CD5E774()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_21CD5E8B0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_21CD5E8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD5E914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 184) = a3;
  *(v5 + 192) = a4;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBF8, &qword_21CD984B0);
  *(v5 + 200) = v6;
  *(v5 + 208) = *(v6 - 8);
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD5E9E8, 0, 0);
}

uint64_t sub_21CD5E9E8()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 160;
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 240);
  v7 = *(v0 + 200);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v16 = *(v1 + 176);
  v10 = type metadata accessor for XPCMobileDocumentReaderConfiguration();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
  *v12 = v8;
  *(v12 + 1) = v9;
  v12[16] = v6;
  *(v1 + 144) = v11;
  *(v1 + 152) = v10;

  v13 = objc_msgSendSuper2((v1 + 144), sel_init);
  *(v1 + 224) = v13;
  *(v1 + 16) = v1;
  *(v1 + 56) = v3;
  *(v1 + 24) = sub_21CD5EC08;
  swift_continuation_init();
  *(v1 + 136) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 112));
  type metadata accessor for XPCMobileDocumentReaderConfigurationResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v7);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_21CD5EE38;
  *(v1 + 104) = &block_descriptor_185;
  [v16 prepareWith:v13 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD5EC08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_21CD5EDBC;
  }

  else
  {
    v2 = sub_21CD5ED18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD5ED18()
{
  v1 = v0[28];
  v2 = v0[20];
  sub_21CD686F0(v2 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentReaderConfigurationResponse_value, v0[21], type metadata accessor for MobileDocumentReaderConfigurationResponse);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CD5EDBC(uint64_t a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD5EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CD5EE70, v3, 0);
}

uint64_t sub_21CD5EE70()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_21CD5EF60;
  v5 = v0[2];

  return sub_21CD63744(v5, &unk_21CD981E8, v3, 0, 0);
}

uint64_t sub_21CD5EF60()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_21CD68C40, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_21CD5F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBE8, &qword_21CD98478);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD5F16C, 0, 0);
}

uint64_t sub_21CD5F16C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[23];
  v10 = v1[20];
  v7 = sub_21CD83B04();
  v1[26] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_21CD5F348;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBF0, &qword_21CD98480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5F564;
  v1[13] = &block_descriptor_160;
  [v10 merchantFor:v7 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD5F348()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_21CD09A60;
  }

  else
  {
    v2 = sub_21CD5F458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD5F458()
{
  v1 = v0[18];
  v2 = v0[26];
  if (v1)
  {
    v4 = *&v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
    v3 = *&v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8];
    v5 = *&v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16];
    v11 = *&v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 24];
    v6 = *&v1[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40];

    sub_21CC96064(v5, v11);

    v7 = v11;
  }

  else
  {

    v4 = 0;
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
  }

  v8 = v0[19];
  *v8 = v4;
  *(v8 + 8) = v3;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 40) = v6;

  v9 = v0[1];

  return v9();
}

void sub_21CD5F564(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBE8, &qword_21CD98478);
    sub_21CD83CF4();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBE8, &qword_21CD98478);
    sub_21CD83D04();
  }
}

uint64_t sub_21CD5F60C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_21CD5F63C, v1, 0);
}

uint64_t sub_21CD5F63C()
{
  v1 = v0[12];
  v2 = swift_allocObject();
  v0[14] = v2;
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  sub_21CD66A20((v0 + 2), (v0 + 7));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_21CD5F728;

  return sub_21CD64468(v5, &unk_21CD98208, v2, 0, 0);
}

uint64_t sub_21CD5F728()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_21CD5F84C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_21CD0AF48;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD5F84C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD5F8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD5F97C, 0, 0);
}

uint64_t sub_21CD5F97C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v1[26];
  v16 = v1[25];
  v8 = type metadata accessor for XPCMobileDocumentReaderRequest();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  v11 = *v7;
  v12 = *(v7 + 16);
  v10[32] = *(v7 + 32);
  *v10 = v11;
  *(v10 + 1) = v12;
  sub_21CD66A20(v7, (v1 + 18));
  v1[23] = v9;
  v1[24] = v8;
  v13 = objc_msgSendSuper2((v1 + 23), sel_init);
  v1[30] = v13;
  v1[2] = v1;
  v1[3] = sub_21CD5FB94;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_135;
  [v16 canRequestDocument:v13 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD5FB94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_21CD5FD10;
  }

  else
  {
    v2 = sub_21CD5FCA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD5FCA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD5FD10(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD5FD8C(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB0, &qword_21CD98218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v16 = *(a1 + 32);
  v12 = v2;
  v13 = v15;
  v14 = *a2;
  type metadata accessor for MobileDocumentReaderSession.State(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v5);
  return sub_21CD83DD4();
}

uint64_t sub_21CD5FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23[-v14 - 8];
  v16 = sub_21CD83D74();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 96) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a2;
  v19 = *(a3 + 16);
  *(v18 + 40) = *a3;
  *(v18 + 56) = v19;
  *(v18 + 72) = *(a3 + 32);
  v20 = v22;
  *(v18 + 80) = a4;
  *(v18 + 88) = v20;
  (*(v10 + 32))(v18 + v17, v12, v9);

  sub_21CD66A20(a3, v23);
  sub_21CC96064(a4, v20);
  sub_21CD5C550(0, 0, v15, &unk_21CD98418, v18);
}

uint64_t sub_21CD60108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a5;
  v8[6] = a8;
  v8[3] = a7;
  v8[4] = a4;
  v8[2] = a6;
  return MEMORY[0x2822009F8](sub_21CD60130, a4, 0);
}

uint64_t sub_21CD60130()
{
  sub_21CD60198(*(v0 + 40), (v0 + 16), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD60198(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = a1[1];
  v47 = *a1;
  v48 = v15;
  v49 = *(a1 + 32);
  if (v3[23])
  {
    sub_21CD5D868();
    v16 = swift_allocError();
    v18 = v17;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *v17 = xmmword_21CD98190;
    *(v17 + 16) = 0;

    *(v18 + 24) = 0;
    *(v18 + 32) = 0;

    v46[0] = v16;
    return sub_21CD83DC4();
  }

  else
  {
    v20 = a2[1];
    v39 = *a2;
    v40 = v20;
    v21 = *(v11 + 16);
    v43 = v9;
    v44 = v11 + 16;
    v45 = v21;
    v21(v14, a3, v10);
    v22 = *(v11 + 80);
    v41 = ((v22 + 16) & ~v22) + v12;
    v42 = (v22 + 16) & ~v22;
    v23 = swift_allocObject();
    v37 = *(v11 + 32);
    v38 = a3;
    v37(v23 + ((v22 + 16) & ~v22), v14, v10);
    v24 = v3[21];
    v25 = v3[22];
    v3[21] = sub_21CD671A8;
    v3[22] = v23;
    sub_21CC94F4C(v24, v25);
    v26 = sub_21CD83D74();
    (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
    v45(v14, a3, v10);
    v28 = sub_21CD674A8(&qword_27CE1BBC0, v27, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = v28;
    *(v29 + 32) = v3;
    v30 = v48;
    *(v29 + 40) = v47;
    *(v29 + 56) = v30;
    *(v29 + 72) = v49;
    v31 = v39;
    v32 = v40;
    *(v29 + 80) = v39;
    *(v29 + 88) = v32;
    v33 = v37;
    v37(v29 + ((v22 + 96) & ~v22), v14, v10);
    swift_retain_n();
    sub_21CD66A20(&v47, v46);
    sub_21CC96064(v31, v32);
    v34 = sub_21CD5C550(0, 0, v43, &unk_21CD98348, v29);
    v3[23] = v34;

    v45(v14, v38, v10);
    v35 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v33(v36 + v42, v14, v10);
    *(v36 + v35) = v34;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

    return sub_21CD83DA4();
  }
}

uint64_t sub_21CD605C0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderSession.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBD8, &qword_21CD98380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_21CD686F0(a1, v4, type metadata accessor for MobileDocumentReaderSession.State);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  sub_21CD83DB4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21CD60718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  type metadata accessor for MobileDocumentReaderSession.State(0);
  v8[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBD8, &qword_21CD98380);
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderResponse(0);
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD60878, a4, 0);
}

uint64_t sub_21CD60878()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = swift_allocObject();
  v0[21] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v6;
  *(v4 + 48) = v5;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  sub_21CD66A20(v3, (v0 + 2));
  sub_21CC96064(v1, v2);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_21CD60998;
  v8 = v0[20];

  return sub_21CD65008(v8, &unk_21CD98390, v4, &unk_21CD98398, 0);
}

uint64_t sub_21CD60998()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_21CD60BF8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_21CD60AC0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD60AC0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  sub_21CD686F0(v1, v7, type metadata accessor for MobileDocumentReaderResponse);
  (*(v2 + 56))(v7, 0, 3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  sub_21CD83DB4();
  (*(v6 + 8))(v3, v5);
  v0[8] = 0;
  sub_21CD83DC4();
  sub_21CD67668(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21CD60BF8()
{
  v1 = v0[23];

  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  sub_21CD83DC4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CD60CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBE0, &qword_21CD98408);
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD60D84, 0, 0);
}

uint64_t sub_21CD60D84()
{
  v1 = v0;
  v2 = v0 + 2;
  v20 = v0 + 27;
  v3 = v0[34];
  v21 = v0[35];
  v4 = v0[33];
  v6 = v1[31];
  v5 = v1[32];
  v7 = v1[30];
  v22 = v1[29];
  v8 = type metadata accessor for XPCMobileDocumentReaderRequest();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
  v11 = *v7;
  v12 = *(v7 + 16);
  v10[32] = *(v7 + 32);
  *v10 = v11;
  *(v10 + 1) = v12;
  sub_21CD66A20(v7, (v1 + 18));
  v1[23] = v9;
  v1[24] = v8;
  v13 = objc_msgSendSuper2((v1 + 23), sel_init);
  v1[36] = v13;
  v14 = type metadata accessor for XPCMobileDocumentReaderDeviceEngagementType();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value];
  *v16 = v6;
  v16[1] = v5;
  sub_21CC96064(v6, v5);
  v1[25] = v15;
  v1[26] = v14;
  v17 = objc_msgSendSuper2((v1 + 25), sel_init);
  v1[37] = v17;
  v1[2] = v1;
  v1[7] = v20;
  v1[3] = sub_21CD6100C;
  swift_continuation_init();
  v1[17] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentReaderResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v3 + 32))(boxed_opaque_existential_0, v21, v4);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD61250;
  v1[13] = &block_descriptor_104;
  [v22 readDocumentWith:v13 engagementType:v17 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v4);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD6100C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_21CD611C8;
  }

  else
  {
    v2 = sub_21CD6111C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD6111C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[27];
  sub_21CD686F0(v3 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderResponse_value, v0[28], type metadata accessor for MobileDocumentReaderResponse);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD611C8(uint64_t a1)
{
  v2 = v1[37];
  v3 = v1[36];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21CD61264(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD61330, 0, 0);
}

uint64_t sub_21CD61330()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v1[18];
  v1[2] = v2;
  v1[3] = sub_21CD614E0;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_100;
  [v8 cancelReadWithCompletionHandler_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD614E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21CD61654;
  }

  else
  {
    v2 = sub_21CD615F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD615F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD61654(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21CD616C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBC8, &qword_21CD98350);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, a1, v9);
  LODWORD(a1) = (*(v10 + 88))(v12, v9);
  v13 = *MEMORY[0x277D85870];
  (*(v10 + 8))(v12, v9);
  if (a1 == v13)
  {
    sub_21CD83D24();
    sub_21CD674A8(&qword_27CE1BBD0, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v14 = swift_allocError();
    sub_21CD83A04();
    v18[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
    sub_21CD83DC4();
    sub_21CD83D94();
  }

  v15 = sub_21CD83D74();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;

  sub_21CD5C550(0, 0, v8, &unk_21CD98360, v16);
}