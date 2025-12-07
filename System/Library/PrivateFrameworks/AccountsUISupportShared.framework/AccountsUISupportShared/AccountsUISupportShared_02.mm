uint64_t IncomingServer.port.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 18) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_23DD9D758(uint64_t a1)
{
  v2 = sub_23DDA200C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9D794(uint64_t a1)
{
  v2 = sub_23DDA200C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9D9B0(uint64_t a1)
{
  v2 = sub_23DDA2194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9D9EC(uint64_t a1)
{
  v2 = sub_23DDA2194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9DA6C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = *v5;
  v11 = v5[1];
  v20 = *(v5 + 8);
  v14[1] = *(v5 + 18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();

  sub_23DDA4BF0();
  v18 = v10;
  v19 = v11;
  v21 = 0;
  sub_23DDA2060();
  v12 = v16;
  sub_23DDA4AD0();

  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_23DDA4AB0();
  }

  return (*(v17 + 8))(v9, v7);
}

uint64_t _s23AccountsUISupportShared14IncomingServerV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_23DDA4940();
  if (v2 == 1)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  return sub_23DDA4BA0();
}

uint64_t _s23AccountsUISupportShared14IncomingServerV9hashValueSivg_0()
{
  v1 = *(v0 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v1 != 1)
  {
    sub_23DDA4BA0();
  }

  return sub_23DDA4BB0();
}

uint64_t sub_23DD9DD50@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_23DDA4BD0();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v12 = v19;
  v22 = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v14 = v20;
  v15 = v21;
  LOBYTE(v20) = 1;
  v16 = sub_23DDA4A30();
  (*(v13 + 8))(v11, v9);
  *v12 = v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v16;
  *(v12 + 18) = BYTE2(v16) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DD9DF50(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4B90();
  if (v2 != 1)
  {
    sub_23DDA4BA0();
  }

  return sub_23DDA4BB0();
}

uint64_t _s23AccountsUISupportShared14IncomingServerV11descriptionSSvg_0()
{
  v1 = *v0;
  if (*(v0 + 18))
  {
  }

  else
  {
    v4 = *v0;

    MEMORY[0x23EEFF270](58, 0xE100000000000000);
    v2 = sub_23DDA4AF0();
    MEMORY[0x23EEFF270](v2);

    return v4;
  }

  return v1;
}

uint64_t ServerName.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BE0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_23DDA4B20();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t ServerName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA4BC0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_23DDA4B10();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ServerName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DDA4B00();
  }
}

uint64_t ServerName.hashValue.getter()
{
  sub_23DDA4B70();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ServerName.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23DD9E2C8()
{
  if (*v0)
  {
    return 7368560;
  }

  else
  {
    return 1885433193;
  }
}

uint64_t sub_23DD9E2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1885433193 && a2 == 0xE400000000000000;
  if (v5 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7368560 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9E3D0(uint64_t a1)
{
  v2 = sub_23DDA28F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E40C(uint64_t a1)
{
  v2 = sub_23DDA28F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9E448(uint64_t a1)
{
  v2 = sub_23DDA2A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E484(uint64_t a1)
{
  v2 = sub_23DDA2A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9E4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9E59C(uint64_t a1)
{
  v2 = sub_23DDA2948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9E5D8(uint64_t a1)
{
  v2 = sub_23DDA2948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314018, &qword_23DDABBD0);
  v27 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314020, &qword_23DDABBD8);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314028, &qword_23DDABBE0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[3];
  v39 = v1[2];
  v40 = v12;
  v13 = v1[5];
  v41 = v1[4];
  v42 = v13;
  v14 = v1[7];
  v43 = v1[6];
  v29 = v14;
  v15 = v1[9];
  v30 = v1[8];
  v16 = v1[11];
  v31 = v1[10];
  v32 = v16;
  v17 = v1[13];
  v33 = v1[12];
  v34 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA28F4();
  sub_23DDA4BF0();
  v28 = v15;
  if (v15 < 0)
  {
    v22 = v27;
    LOBYTE(v47) = 1;
    sub_23DDA2948();
    v23 = v46;
    sub_23DDA4A80();
    v47 = v10;
    v48 = v11;
    v49 = v39;
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v54 = 0;
    sub_23DDA299C();
    v24 = v35;
    v25 = v44;
    sub_23DDA4AD0();
    if (v25)
    {
      (*(v22 + 8))(v38, v24);
    }

    else
    {
      v47 = v29;
      v48 = v30;
      v49 = v28 & 0x7FFFFFFFFFFFFFFFLL;
      v50 = v31;
      v51 = v32;
      v52 = v33;
      v53 = v34;
      v54 = 1;
      sub_23DDA29F0();
      v26 = v38;
      sub_23DDA4AD0();
      (*(v22 + 8))(v26, v24);
    }

    return (*(v45 + 8))(v9, v23);
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_23DDA2A44();
    v18 = v46;
    sub_23DDA4A80();
    v47 = v10;
    v48 = v11;
    v49 = v39;
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v54 = 0;
    sub_23DDA2A98();
    v19 = v37;
    v20 = v44;
    sub_23DDA4AD0();
    if (!v20)
    {
      v47 = v29;
      v48 = v30;
      v49 = v28;
      v50 = v31;
      v51 = v32;
      v52 = v33;
      v53 = v34;
      v54 = 1;
      sub_23DDA29F0();
      sub_23DDA4AD0();
    }

    (*(v36 + 8))(v6, v19);
    return (*(v45 + 8))(v9, v18);
  }
}

uint64_t ResolvedServerConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[9];
  v5 = v1[11];
  MEMORY[0x23EEFF490](v3 < 0);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](BYTE2(v2));
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](BYTE2(v3));
  if (!v5)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.hashValue.getter()
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)(v1);
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314060, &qword_23DDABBE8);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314068, &qword_23DDABBF0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314070, &unk_23DDABBF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23DDA28F4();
  v13 = v39;
  sub_23DDA4BD0();
  if (!v13)
  {
    v39 = v5;
    v14 = v38;
    v15 = sub_23DDA4A70();
    v16 = (2 * *(v15 + 16)) | 1;
    v52 = v15;
    v53 = v15 + 32;
    v54 = 0;
    v55 = v16;
    v17 = sub_23DD7C4A8();
    if (v17 == 2 || v54 != v55 >> 1)
    {
      v20 = sub_23DDA49D0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350);
      *v22 = &type metadata for ResolvedServerConfiguration;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v17)
      {
        LOBYTE(v48) = 1;
        sub_23DDA2948();
        sub_23DDA49F0();
        v47 = 0;
        sub_23DDA2AEC();
        v18 = v35;
        v19 = v4;
        sub_23DDA4A50();
        v25 = v14;
        v45 = v48;
        *v46 = v49;
        *&v46[16] = v50;
        *&v46[32] = v51;
        v40 = 1;
        sub_23DDA2B40();
        sub_23DDA4A50();
        (*(v37 + 8))(v19, v18);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v27 = v41;
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v31 = *v46;
        v32 = *&v46[8];
        v33 = *&v46[24];
        v34 = *&v42 & 0x3FFFFLL | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_23DDA2A44();
        sub_23DDA49F0();
        v23 = v14;
        v47 = 0;
        sub_23DDA2BC4();
        v24 = v39;
        sub_23DDA4A50();
        v25 = v23;
        v45 = v48;
        *v46 = v49;
        *&v46[16] = v50;
        *&v46[32] = v51;
        v40 = 1;
        sub_23DDA2B40();
        sub_23DDA4A50();
        (*(v36 + 8))(v7, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v27 = v41;
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v31 = *v46;
        v32 = *&v46[8];
        v33 = *&v46[24];
        v34 = *&v42 & 0x3FFFFLL;
      }

      *v25 = v30;
      *(v25 + 16) = *&v31 & 0x3FFFFLL;
      *(v25 + 24) = v32;
      *(v25 + 40) = v33;
      *(v25 + 56) = v27;
      *(v25 + 72) = v34;
      *(v25 + 80) = v28;
      *(v25 + 96) = v29;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_23DD9F380()
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)(v1);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD9F3C4(uint64_t a1)
{
  sub_23DDA4B70();
  ResolvedServerConfiguration.hash(into:)(v2);
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.POP.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ResolvedServerConfiguration.POP.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_23DD9F540(uint64_t a1)
{
  v2 = sub_23DDA2C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9F57C(uint64_t a1)
{
  v2 = sub_23DDA2C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.POP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140A8, &qword_23DDABC10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2C48();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v10 = v24;
  v9 = v25;
  LOBYTE(v24) = 1;
  v35 = sub_23DDA4A60();
  LOBYTE(v20) = 2;
  sub_23DD8C4CC();
  sub_23DDA4A50();
  v19 = v24;
  v36 = 3;
  sub_23DDA2CF0();
  sub_23DDA4A50();
  (*(v6 + 8))(v8, v5);
  v17 = v33;
  v18 = v32;
  v11 = *(&v33 + 1);
  v12 = v34;
  *&v20 = v10;
  *(&v20 + 1) = v9;
  v13 = v35;
  LOWORD(v21) = v35;
  v14 = v19;
  BYTE2(v21) = v19;
  *(&v21 + 1) = v32;
  v22 = v33;
  v23 = v34;
  *(a2 + 48) = v34;
  v15 = v21;
  *a2 = v20;
  *(a2 + 16) = v15;
  *(a2 + 32) = v22;
  sub_23DDA2D44(&v20, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v10;
  v25 = v9;
  v26 = v13;
  v27 = v14;
  v28 = v18;
  v29 = v17;
  v30 = v11;
  v31 = v12;
  return sub_23DDA2B94(&v24);
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV11credentialsAC11CredentialsVvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV11credentialsAC11CredentialsVvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_23DD9FA28(uint64_t a1)
{
  v2 = sub_23DDA2D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9FA64(uint64_t a1)
{
  v2 = sub_23DDA2D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9FAE4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = *v5;
  v9 = v5[1];
  v35 = *(v5 + 8);
  v28 = *(v5 + 18);
  v11 = v5[3];
  v26 = v5[4];
  v27 = v11;
  v12 = v5[5];
  v24 = v5[6];
  v25 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = &v23 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  v29();

  sub_23DDA4BF0();
  v31 = v10;
  v32 = v9;
  v36 = 0;
  sub_23DDA2060();
  v17 = v30;
  sub_23DDA4AD0();
  if (!v17)
  {
    v18 = v28;
    v20 = v25;
    v19 = v26;
    v21 = v27;

    LOBYTE(v31) = 1;
    sub_23DDA4AE0();
    LOBYTE(v31) = v18;
    v36 = 2;
    sub_23DD8C280();
    sub_23DDA4AD0();
    v31 = v21;
    v32 = v19;
    v33 = v20;
    v34 = v24;
    v36 = 3;
    sub_23DDA2C9C();

    sub_23DDA4AD0();
  }

  return (*(v8 + 8))(v16, v7);
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v2);
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t _s23AccountsUISupportShared27ResolvedServerConfigurationO3POPV9hashValueSivg_0()
{
  v1 = *(v0 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v1);
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.IMAP.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140C8, &qword_23DDABC20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2D7C();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  sub_23DDA20B4();
  sub_23DDA4A50();
  v10 = v24;
  v9 = v25;
  LOBYTE(v24) = 1;
  v35 = sub_23DDA4A60();
  LOBYTE(v20) = 2;
  sub_23DD8C4CC();
  sub_23DDA4A50();
  v19 = v24;
  v36 = 3;
  sub_23DDA2CF0();
  sub_23DDA4A50();
  (*(v6 + 8))(v8, v5);
  v17 = v33;
  v18 = v32;
  v11 = *(&v33 + 1);
  v12 = v34;
  *&v20 = v10;
  *(&v20 + 1) = v9;
  v13 = v35;
  LOWORD(v21) = v35;
  v14 = v19;
  BYTE2(v21) = v19;
  *(&v21 + 1) = v32;
  v22 = v33;
  v23 = v34;
  *(a2 + 48) = v34;
  v15 = v21;
  *a2 = v20;
  *(a2 + 16) = v15;
  *(a2 + 32) = v22;
  sub_23DDA2DD0(&v20, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v10;
  v25 = v9;
  v26 = v13;
  v27 = v14;
  v28 = v18;
  v29 = v17;
  v30 = v11;
  v31 = v12;
  return sub_23DDA2C18(&v24);
}

uint64_t sub_23DDA0178(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v2);
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

void ResolvedServerConfiguration.SMTP.credentials.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_23DDA2E08(v2, v3, v4, v5);
}

__n128 ResolvedServerConfiguration.SMTP.credentials.setter(uint64_t a1)
{
  sub_23DDA2E4C(v1[3], v1[4], v1[5], v1[6]);
  result = *a1;
  *(v1 + 5) = *(a1 + 16);
  *(v1 + 3) = result;
  return result;
}

uint64_t sub_23DDA0328(uint64_t a1)
{
  v2 = sub_23DDA2E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA0364(uint64_t a1)
{
  v2 = sub_23DDA2E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.SMTP.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140D0, &qword_23DDABC28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v31 = *(v1 + 16);
  v26 = *(v1 + 18);
  v10 = *(v1 + 24);
  v24 = *(v1 + 32);
  v25 = v10;
  v11 = *(v1 + 40);
  v22 = *(v1 + 48);
  v23 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_23DDA2E90();

  sub_23DDA4BF0();
  v27 = v9;
  v28 = v8;
  v32 = 0;
  sub_23DDA2060();
  sub_23DDA4AD0();

  if (!v2)
  {
    v16 = v26;
    v18 = v23;
    v17 = v24;
    v19 = v25;
    LOBYTE(v27) = 1;
    sub_23DDA4AE0();
    LOBYTE(v27) = v16;
    v32 = 2;
    sub_23DD8C280();
    sub_23DDA4AD0();
    v27 = v19;
    v28 = v17;
    v29 = v18;
    v30 = v22;
    v32 = 3;
    sub_23DDA2E08(v19, v17, v18, v22);
    sub_23DDA2C9C();
    sub_23DDA4AA0();
    sub_23DDA2E4C(v27, v28, v29, v30);
  }

  return (*(v5 + 8))(v7, v15);
}

uint64_t ResolvedServerConfiguration.SMTP.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 18);
  v3 = *(v1 + 32);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v2);
  if (!v3)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.SMTP.hashValue.getter()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 32);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v1);
  sub_23DDA4B90();
  if (v2)
  {
    sub_23DDA4940();
    sub_23DDA4940();
  }

  return sub_23DDA4BB0();
}

void ResolvedServerConfiguration.SMTP.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140E0, &qword_23DDABC30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2E90();
  sub_23DDA4BD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_23DDA2E4C(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_23DDA20B4();
    sub_23DDA4A50();
    v10 = v24;
    v9 = v25;
    LOBYTE(v24) = 1;
    v36 = sub_23DDA4A60();
    LOBYTE(v20) = 2;
    sub_23DD8C4CC();
    sub_23DDA4A50();
    v19 = v24;
    v37 = 3;
    sub_23DDA2CF0();
    sub_23DDA4A20();
    (*(v6 + 8))(v8, v5);
    v12 = v32;
    v11 = v33;
    v13 = v35;
    v17 = v34;
    v18 = v32;
    sub_23DDA2E4C(0, 0, 0, 0);
    *&v20 = v10;
    *(&v20 + 1) = v9;
    LOWORD(v21) = v36;
    v14 = v19;
    BYTE2(v21) = v19;
    *(&v21 + 1) = v12;
    *&v22 = v11;
    v15 = v17;
    *(&v22 + 1) = v17;
    v23 = v13;
    *(a2 + 48) = v13;
    v16 = v21;
    *a2 = v20;
    *(a2 + 16) = v16;
    *(a2 + 32) = v22;
    sub_23DDA2EE4(&v20, &v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24 = v10;
    v25 = v9;
    v26 = v36;
    v27 = v14;
    v28 = v18;
    v29 = v11;
    v30 = v15;
    v31 = v13;
    sub_23DDA2F1C(&v24);
  }
}

uint64_t sub_23DDA0AA0(uint64_t a1)
{
  v2 = *(v1 + 18);
  v3 = *(v1 + 32);
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v2);
  if (!v3)
  {
    return sub_23DDA4B90();
  }

  sub_23DDA4B90();
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t sub_23DDA0B64(uint64_t a1)
{
  v2 = *(v1 + 18);
  v3 = *(v1 + 32);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4BA0();
  MEMORY[0x23EEFF490](v2);
  sub_23DDA4B90();
  if (v3)
  {
    sub_23DDA4940();
    sub_23DDA4940();
  }

  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.Credentials.username.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResolvedServerConfiguration.Credentials.username.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResolvedServerConfiguration.Credentials.password.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResolvedServerConfiguration.Credentials.password.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ResolvedServerConfiguration.Credentials.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DDA4B00(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DDA4B00();
    }
  }

  return result;
}

uint64_t sub_23DDA0E18()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_23DDA0E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DDA0F28(uint64_t a1)
{
  v2 = sub_23DDA2F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA0F64(uint64_t a1)
{
  v2 = sub_23DDA2F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedServerConfiguration.Credentials.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140E8, &qword_23DDABC38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2F4C();
  sub_23DDA4BF0();
  v12 = 0;
  v8 = v10[3];
  sub_23DDA4AC0();
  if (!v8)
  {
    v11 = 1;
    sub_23DDA4AC0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ResolvedServerConfiguration.Credentials.hash(into:)(uint64_t a1)
{
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t ResolvedServerConfiguration.Credentials.hashValue.getter()
{
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t ResolvedServerConfiguration.Credentials.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3140F8, &qword_23DDABC40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2F4C();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_23DDA4A40();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_23DDA4A40();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DDA1430()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_23DDA1484@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23DDA4654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23DDA14AC(uint64_t a1)
{
  v2 = sub_23DDA2FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA14E8(uint64_t a1)
{
  v2 = sub_23DDA2FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA1524(uint64_t a1)
{
  v2 = sub_23DDA309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA1560(uint64_t a1)
{
  v2 = sub_23DDA309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA159C(uint64_t a1)
{
  v2 = sub_23DDA3048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA15D8(uint64_t a1)
{
  v2 = sub_23DDA3048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DDA1614(uint64_t a1)
{
  v2 = sub_23DDA2FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DDA1650(uint64_t a1)
{
  v2 = sub_23DDA2FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TLSConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314100, &qword_23DDABC48);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314108, &qword_23DDABC50);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314110, &qword_23DDABC58);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314118, &qword_23DDABC60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DDA2FA0();
  sub_23DDA4BF0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23DDA3048();
      v9 = v21;
      sub_23DDA4A80();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23DDA2FF4();
      v9 = v24;
      sub_23DDA4A80();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23DDA309C();
    sub_23DDA4A80();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t TLSConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  MEMORY[0x23EEFF490](v1);
  return sub_23DDA4BB0();
}

uint64_t TLSConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314140, &qword_23DDABC68);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314148, &qword_23DDABC70);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314150, &qword_23DDABC78);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E314158, &qword_23DDABC80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23DDA2FA0();
  v15 = v36;
  sub_23DDA4BD0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_23DDA4A70();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_23DD7C4A0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_23DDA49D0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350);
      *v24 = &type metadata for TLSConfiguration;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_23DDA3048();
          sub_23DDA49F0();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_23DDA2FF4();
          v26 = v17;
          sub_23DDA49F0();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_23DDA309C();
        sub_23DDA49F0();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_23DDA200C()
{
  result = qword_27E313FE0;
  if (!qword_27E313FE0)
  {
    result = swift_getWitnessTable(byte_23DDAD370, &type metadata for IncomingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E313FE0);
  }

  return result;
}

unint64_t sub_23DDA2060()
{
  result = qword_27E313FE8;
  if (!qword_27E313FE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerName, &type metadata for ServerName, v0, v1);
    atomic_store(result, &qword_27E313FE8);
  }

  return result;
}

unint64_t sub_23DDA20B4()
{
  result = qword_27E313FF8;
  if (!qword_27E313FF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerName, &type metadata for ServerName, v0, v1);
    atomic_store(result, &qword_27E313FF8);
  }

  return result;
}

uint64_t sub_23DDA2108(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 18);
  v4 = *(a2 + 16);
  v5 = *(a2 + 18);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_23DDA4B00(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_23DDA2194()
{
  result = qword_27E314008;
  if (!qword_27E314008)
  {
    result = swift_getWitnessTable(asc_23DDAD320, &type metadata for OutgoingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314008);
  }

  return result;
}

BOOL _s23AccountsUISupportShared27ResolvedServerConfigurationO4SMTPV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 18);
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 16);
  v8 = *(a2 + 18);
  v9 = *(a2 + 32);
  v36 = *(a2 + 24);
  v37 = a1[6];
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_23DDA4B00();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v7 && v3 == v8)
  {
    v14 = v5;
    if (v5)
    {
      v15 = v11;
      v16 = v4;
      v17 = v9;
      v18 = v10;
      if (v9)
      {
        if (v4 == v36 && v14 == v9 || (sub_23DDA4B00() & 1) != 0)
        {
          if (v6 == v10 && v37 == v11)
          {
            sub_23DDA2E08(v4, v14, v6, v37);
            sub_23DDA2E08(v36, v9, v6, v37);
            sub_23DDA2E08(v4, v14, v6, v37);
            sub_23DDA2E4C(v36, v9, v6, v37);

            v19 = v4;
            v20 = v14;
            v21 = v6;
            v22 = v37;
LABEL_24:
            sub_23DDA2E4C(v19, v20, v21, v22);
            return 1;
          }

          v34 = v14;
          v35 = sub_23DDA4B00();
          sub_23DDA2E08(v4, v34, v6, v37);
          sub_23DDA2E08(v36, v17, v10, v11);
          sub_23DDA2E08(v4, v34, v6, v37);
          sub_23DDA2E4C(v36, v17, v10, v11);

          sub_23DDA2E4C(v4, v34, v6, v37);
          return (v35 & 1) != 0;
        }

        sub_23DDA2E08(v4, v14, v6, v37);
        sub_23DDA2E08(v36, v9, v10, v11);
        sub_23DDA2E08(v4, v14, v6, v37);
        sub_23DDA2E4C(v36, v9, v10, v11);

        v30 = v4;
        v31 = v14;
        v32 = v6;
        v33 = v37;
LABEL_19:
        sub_23DDA2E4C(v30, v31, v32, v33);
        return 0;
      }

      v28 = v4;
      v24 = v6;
      v29 = v6;
      v26 = v37;
      sub_23DDA2E08(v28, v14, v29, v37);
      v27 = v36;
      sub_23DDA2E08(v36, 0, v18, v11);
      sub_23DDA2E08(v16, v14, v24, v37);
    }

    else
    {
      v16 = v4;
      v23 = v4;
      v24 = v6;
      v25 = v6;
      v26 = v37;
      sub_23DDA2E08(v23, 0, v25, v37);
      v15 = v11;
      v18 = v10;
      if (!v9)
      {
        sub_23DDA2E08(v36, 0, v10, v11);
        v19 = v16;
        v20 = 0;
        v21 = v24;
        v22 = v37;
        goto LABEL_24;
      }

      v17 = v9;
      v27 = v36;
      sub_23DDA2E08(v36, v9, v18, v11);
    }

    sub_23DDA2E4C(v16, v14, v24, v26);
    v30 = v27;
    v31 = v17;
    v32 = v18;
    v33 = v15;
    goto LABEL_19;
  }

  return result;
}

BOOL sub_23DDA2588(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 18);
  v4 = a1[3];
  v5 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v6 = *(a2 + 16);
  v7 = *(a2 + 18);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_23DDA4B00();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v6 && v3 == v7)
  {
    return (v4 == v8 && v5 == v9 || (sub_23DDA4B00() & 1) != 0) && (v14 == v11 && v15 == v10 || (sub_23DDA4B00() & 1) != 0);
  }

  return result;
}

BOOL _s23AccountsUISupportShared27ResolvedServerConfigurationO2eeoiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v47 = a1[4];
  v48 = v3;
  v4 = a1[5];
  v49 = a1[6];
  v5 = a1[1];
  v44[0] = *a1;
  v44[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v45 = a1[2];
  v46 = v6;
  v9 = a2[1];
  v50[0] = *a2;
  v50[1] = v9;
  v10 = a2[5];
  v55 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v53 = a2[4];
  v54 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v51 = a2[2];
  v52 = v13;
  v16 = a1[1];
  v56[0] = *a1;
  v56[1] = v16;
  v17 = a1[5];
  v56[4] = a1[4];
  v56[5] = v17;
  v18 = a1[3];
  v56[2] = a1[2];
  v56[3] = v18;
  v56[8] = v15;
  v56[9] = v51;
  v56[6] = a1[6];
  v56[7] = v14;
  v19 = a2[6];
  v56[12] = v10;
  v56[13] = v19;
  v56[10] = v11;
  v56[11] = v53;
  v56[14] = v8;
  v56[15] = v7;
  v20 = a1[6];
  *&v57[32] = v4;
  *&v57[48] = v20;
  *v57 = v2;
  *&v57[16] = v47;
  v56[16] = v45;
  if ((*(&v47 + 1) & 0x8000000000000000) != 0)
  {
    *&v57[24] = *(&v47 + 1) & 0x7FFFFFFFFFFFFFFFLL;
    v24 = a2[5];
    *&v43[16] = a2[4];
    *&v43[32] = v24;
    *&v43[48] = a2[6];
    v25 = a2[1];
    v40 = *a2;
    v41 = v25;
    v26 = a2[3];
    v42 = a2[2];
    *v43 = v26;
    if ((*&v43[24] & 0x8000000000000000) == 0)
    {
LABEL_5:
      sub_23DD8CA08(v50, &v40);
      v27 = &v40;
LABEL_10:
      sub_23DD8CA08(v44, v27);
      sub_23DDA476C(v56);
      return 0;
    }

    *&v43[24] &= ~0x8000000000000000;
  }

  else
  {
    v21 = a2[5];
    *&v43[16] = a2[4];
    *&v43[32] = v21;
    *&v43[48] = a2[6];
    v22 = a2[1];
    v40 = *a2;
    v41 = v22;
    v23 = a2[3];
    v42 = a2[2];
    *v43 = v23;
    if ((*&v43[24] & 0x8000000000000000) != 0)
    {
      goto LABEL_5;
    }
  }

  v28 = a1[1];
  v34[0] = *a1;
  v34[1] = v28;
  v34[2] = a1[2];
  v35 = *(a1 + 6);
  v29 = a2[1];
  v36 = *a2;
  v37 = v29;
  v38 = a2[2];
  v39 = *(a2 + 6);
  if (!sub_23DDA2588(v34, &v36))
  {
    sub_23DD8CA08(v50, v34);
    v27 = v34;
    goto LABEL_10;
  }

  v36 = *&v57[8];
  v37 = *&v57[24];
  v38 = *&v57[40];
  v39 = *&v57[56];
  v32[0] = *&v43[8];
  v32[1] = *&v43[24];
  v32[2] = *&v43[40];
  v33 = *&v43[56];
  sub_23DD8CA08(v50, v34);
  sub_23DD8CA08(v44, v34);
  sub_23DDA2EE4(&v57[8], v34);
  sub_23DDA2EE4(&v43[8], v34);
  v30 = _s23AccountsUISupportShared27ResolvedServerConfigurationO4SMTPV2eeoiySbAE_AEtFZ_0(&v36, v32);
  sub_23DDA476C(v56);
  sub_23DDA2F1C(&v43[8]);
  sub_23DDA2F1C(&v57[8]);
  return v30;
}

unint64_t sub_23DDA28F4()
{
  result = qword_27E314030;
  if (!qword_27E314030)
  {
    result = swift_getWitnessTable(aY, &type metadata for ResolvedServerConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314030);
  }

  return result;
}

unint64_t sub_23DDA2948()
{
  result = qword_27E314038;
  if (!qword_27E314038)
  {
    result = swift_getWitnessTable(byte_23DDAD280, &type metadata for ResolvedServerConfiguration.PopCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314038);
  }

  return result;
}

unint64_t sub_23DDA299C()
{
  result = qword_27E314040;
  if (!qword_27E314040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.POP, &type metadata for ResolvedServerConfiguration.POP, v0, v1);
    atomic_store(result, &qword_27E314040);
  }

  return result;
}

unint64_t sub_23DDA29F0()
{
  result = qword_27E314048;
  if (!qword_27E314048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.SMTP, &type metadata for ResolvedServerConfiguration.SMTP, v0, v1);
    atomic_store(result, &qword_27E314048);
  }

  return result;
}

unint64_t sub_23DDA2A44()
{
  result = qword_27E314050;
  if (!qword_27E314050)
  {
    result = swift_getWitnessTable(byte_23DDAD230, &type metadata for ResolvedServerConfiguration.ImapCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314050);
  }

  return result;
}

unint64_t sub_23DDA2A98()
{
  result = qword_27E314058;
  if (!qword_27E314058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.IMAP, &type metadata for ResolvedServerConfiguration.IMAP, v0, v1);
    atomic_store(result, &qword_27E314058);
  }

  return result;
}

unint64_t sub_23DDA2AEC()
{
  result = qword_27E314078;
  if (!qword_27E314078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.POP, &type metadata for ResolvedServerConfiguration.POP, v0, v1);
    atomic_store(result, &qword_27E314078);
  }

  return result;
}

unint64_t sub_23DDA2B40()
{
  result = qword_27E314080;
  if (!qword_27E314080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.SMTP, &type metadata for ResolvedServerConfiguration.SMTP, v0, v1);
    atomic_store(result, &qword_27E314080);
  }

  return result;
}

unint64_t sub_23DDA2BC4()
{
  result = qword_27E314088;
  if (!qword_27E314088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.IMAP, &type metadata for ResolvedServerConfiguration.IMAP, v0, v1);
    atomic_store(result, &qword_27E314088);
  }

  return result;
}

unint64_t sub_23DDA2C48()
{
  result = qword_27E314098;
  if (!qword_27E314098)
  {
    result = swift_getWitnessTable(aI, &type metadata for ResolvedServerConfiguration.POP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314098);
  }

  return result;
}

unint64_t sub_23DDA2C9C()
{
  result = qword_27E3140A0;
  if (!qword_27E3140A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.Credentials, &type metadata for ResolvedServerConfiguration.Credentials, v0, v1);
    atomic_store(result, &qword_27E3140A0);
  }

  return result;
}

unint64_t sub_23DDA2CF0()
{
  result = qword_27E3140B0;
  if (!qword_27E3140B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.Credentials, &type metadata for ResolvedServerConfiguration.Credentials, v0, v1);
    atomic_store(result, &qword_27E3140B0);
  }

  return result;
}

unint64_t sub_23DDA2D7C()
{
  result = qword_27E3140C0;
  if (!qword_27E3140C0)
  {
    result = swift_getWitnessTable(byte_23DDAD190, &type metadata for ResolvedServerConfiguration.IMAP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3140C0);
  }

  return result;
}

void sub_23DDA2E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_23DDA2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23DDA2E90()
{
  result = qword_27E3140D8;
  if (!qword_27E3140D8)
  {
    result = swift_getWitnessTable(byte_23DDAD140, &type metadata for ResolvedServerConfiguration.SMTP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3140D8);
  }

  return result;
}

unint64_t sub_23DDA2F4C()
{
  result = qword_27E3140F0;
  if (!qword_27E3140F0)
  {
    result = swift_getWitnessTable(a9, &type metadata for ResolvedServerConfiguration.Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3140F0);
  }

  return result;
}

unint64_t sub_23DDA2FA0()
{
  result = qword_27E314120;
  if (!qword_27E314120)
  {
    result = swift_getWitnessTable(byte_23DDAD0A0, &type metadata for TLSConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314120);
  }

  return result;
}

unint64_t sub_23DDA2FF4()
{
  result = qword_27E314128;
  if (!qword_27E314128)
  {
    result = swift_getWitnessTable(byte_23DDAD050, &type metadata for TLSConfiguration.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314128);
  }

  return result;
}

unint64_t sub_23DDA3048()
{
  result = qword_27E314130;
  if (!qword_27E314130)
  {
    result = swift_getWitnessTable(asc_23DDAD000, &type metadata for TLSConfiguration.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314130);
  }

  return result;
}

unint64_t sub_23DDA309C()
{
  result = qword_27E314138;
  if (!qword_27E314138)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for TLSConfiguration.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314138);
  }

  return result;
}

unint64_t sub_23DDA30F4()
{
  result = qword_27E314160;
  if (!qword_27E314160)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncomingServer, &type metadata for IncomingServer, v0, v1);
    atomic_store(result, &qword_27E314160);
  }

  return result;
}

unint64_t sub_23DDA314C()
{
  result = qword_27E314168;
  if (!qword_27E314168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutgoingServer, &type metadata for OutgoingServer, v0, v1);
    atomic_store(result, &qword_27E314168);
  }

  return result;
}

unint64_t sub_23DDA31A4()
{
  result = qword_27E314170;
  if (!qword_27E314170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerName, &type metadata for ServerName, v0, v1);
    atomic_store(result, &qword_27E314170);
  }

  return result;
}

unint64_t sub_23DDA31FC()
{
  result = qword_27E314178;
  if (!qword_27E314178)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerName, &type metadata for ServerName, v0, v1);
    atomic_store(result, &qword_27E314178);
  }

  return result;
}

unint64_t sub_23DDA3254()
{
  result = qword_27E314180;
  if (!qword_27E314180)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ServerName, &type metadata for ServerName, v0, v1);
    atomic_store(result, &qword_27E314180);
  }

  return result;
}

unint64_t sub_23DDA32AC()
{
  result = qword_27E314188;
  if (!qword_27E314188)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration, &type metadata for ResolvedServerConfiguration, v0, v1);
    atomic_store(result, &qword_27E314188);
  }

  return result;
}

unint64_t sub_23DDA3304()
{
  result = qword_27E314190;
  if (!qword_27E314190)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.POP, &type metadata for ResolvedServerConfiguration.POP, v0, v1);
    atomic_store(result, &qword_27E314190);
  }

  return result;
}

unint64_t sub_23DDA335C()
{
  result = qword_27E314198;
  if (!qword_27E314198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.IMAP, &type metadata for ResolvedServerConfiguration.IMAP, v0, v1);
    atomic_store(result, &qword_27E314198);
  }

  return result;
}

unint64_t sub_23DDA33B4()
{
  result = qword_27E3141A0;
  if (!qword_27E3141A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.SMTP, &type metadata for ResolvedServerConfiguration.SMTP, v0, v1);
    atomic_store(result, &qword_27E3141A0);
  }

  return result;
}

unint64_t sub_23DDA340C()
{
  result = qword_27E3141A8;
  if (!qword_27E3141A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedServerConfiguration.Credentials, &type metadata for ResolvedServerConfiguration.Credentials, v0, v1);
    atomic_store(result, &qword_27E3141A8);
  }

  return result;
}

unint64_t sub_23DDA3464()
{
  result = qword_27E3141B0;
  if (!qword_27E3141B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TLSConfiguration, &type metadata for TLSConfiguration, v0, v1);
    atomic_store(result, &qword_27E3141B0);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_23DDA34DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_23DDA3524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_23DDA35AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 18;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_23DDA35FC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 18;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DDA368C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72) & 0x3FFFFLL | (a2 << 63);
  *(result + 16) &= 0x3FFFFuLL;
  *(result + 72) = v2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23DDA36F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DDA3740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DDA3890()
{
  result = qword_27E3141B8;
  if (!qword_27E3141B8)
  {
    result = swift_getWitnessTable(byte_23DDAC820, &type metadata for IncomingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141B8);
  }

  return result;
}

unint64_t sub_23DDA38E8()
{
  result = qword_27E3141C0;
  if (!qword_27E3141C0)
  {
    result = swift_getWitnessTable(byte_23DDAC8D8, &type metadata for OutgoingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141C0);
  }

  return result;
}

unint64_t sub_23DDA3940()
{
  result = qword_27E3141C8;
  if (!qword_27E3141C8)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for ResolvedServerConfiguration.PopCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141C8);
  }

  return result;
}

unint64_t sub_23DDA3998()
{
  result = qword_27E3141D0;
  if (!qword_27E3141D0)
  {
    result = swift_getWitnessTable(byte_23DDACA48, &type metadata for ResolvedServerConfiguration.ImapCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141D0);
  }

  return result;
}

unint64_t sub_23DDA39F0()
{
  result = qword_27E3141D8;
  if (!qword_27E3141D8)
  {
    result = swift_getWitnessTable(byte_23DDACB00, &type metadata for ResolvedServerConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141D8);
  }

  return result;
}

unint64_t sub_23DDA3A48()
{
  result = qword_27E3141E0;
  if (!qword_27E3141E0)
  {
    result = swift_getWitnessTable(byte_23DDACBB8, &type metadata for ResolvedServerConfiguration.POP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141E0);
  }

  return result;
}

unint64_t sub_23DDA3AA0()
{
  result = qword_27E3141E8;
  if (!qword_27E3141E8)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for ResolvedServerConfiguration.IMAP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141E8);
  }

  return result;
}

unint64_t sub_23DDA3AF8()
{
  result = qword_27E3141F0;
  if (!qword_27E3141F0)
  {
    result = swift_getWitnessTable(byte_23DDACD28, &type metadata for ResolvedServerConfiguration.SMTP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141F0);
  }

  return result;
}

unint64_t sub_23DDA3B50()
{
  result = qword_27E3141F8;
  if (!qword_27E3141F8)
  {
    result = swift_getWitnessTable(byte_23DDACDE0, &type metadata for ResolvedServerConfiguration.Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3141F8);
  }

  return result;
}

unint64_t sub_23DDA3BA8()
{
  result = qword_27E314200;
  if (!qword_27E314200)
  {
    result = swift_getWitnessTable(aA, &type metadata for TLSConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314200);
  }

  return result;
}

unint64_t sub_23DDA3C00()
{
  result = qword_27E314208;
  if (!qword_27E314208)
  {
    result = swift_getWitnessTable(byte_23DDACEA8, &type metadata for TLSConfiguration.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314208);
  }

  return result;
}

unint64_t sub_23DDA3C58()
{
  result = qword_27E314210;
  if (!qword_27E314210)
  {
    result = swift_getWitnessTable(asc_23DDACED0, &type metadata for TLSConfiguration.InsecureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314210);
  }

  return result;
}

unint64_t sub_23DDA3CB0()
{
  result = qword_27E314218;
  if (!qword_27E314218)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for TLSConfiguration.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314218);
  }

  return result;
}

unint64_t sub_23DDA3D08()
{
  result = qword_27E314220;
  if (!qword_27E314220)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for TLSConfiguration.StartTLSCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314220);
  }

  return result;
}

unint64_t sub_23DDA3D60()
{
  result = qword_27E314228;
  if (!qword_27E314228)
  {
    result = swift_getWitnessTable(byte_23DDACE08, &type metadata for TLSConfiguration.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314228);
  }

  return result;
}

unint64_t sub_23DDA3DB8()
{
  result = qword_27E314230;
  if (!qword_27E314230)
  {
    result = swift_getWitnessTable(byte_23DDACE30, &type metadata for TLSConfiguration.TlsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314230);
  }

  return result;
}

unint64_t sub_23DDA3E10()
{
  result = qword_27E314238;
  if (!qword_27E314238)
  {
    result = swift_getWitnessTable(byte_23DDACEF8, &type metadata for TLSConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314238);
  }

  return result;
}

unint64_t sub_23DDA3E68()
{
  result = qword_27E314240;
  if (!qword_27E314240)
  {
    result = swift_getWitnessTable(byte_23DDACF20, &type metadata for TLSConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314240);
  }

  return result;
}

unint64_t sub_23DDA3EC0()
{
  result = qword_27E314248;
  if (!qword_27E314248)
  {
    result = swift_getWitnessTable(aQ, &type metadata for ResolvedServerConfiguration.Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314248);
  }

  return result;
}

unint64_t sub_23DDA3F18()
{
  result = qword_27E314250;
  if (!qword_27E314250)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for ResolvedServerConfiguration.Credentials.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314250);
  }

  return result;
}

unint64_t sub_23DDA3F70()
{
  result = qword_27E314258;
  if (!qword_27E314258)
  {
    result = swift_getWitnessTable(asc_23DDACC98, &type metadata for ResolvedServerConfiguration.SMTP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314258);
  }

  return result;
}

unint64_t sub_23DDA3FC8()
{
  result = qword_27E314260;
  if (!qword_27E314260)
  {
    result = swift_getWitnessTable(byte_23DDACCC0, &type metadata for ResolvedServerConfiguration.SMTP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314260);
  }

  return result;
}

unint64_t sub_23DDA4020()
{
  result = qword_27E314268;
  if (!qword_27E314268)
  {
    result = swift_getWitnessTable(byte_23DDACBE0, &type metadata for ResolvedServerConfiguration.IMAP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314268);
  }

  return result;
}

unint64_t sub_23DDA4078()
{
  result = qword_27E314270;
  if (!qword_27E314270)
  {
    result = swift_getWitnessTable(byte_23DDACC08, &type metadata for ResolvedServerConfiguration.IMAP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314270);
  }

  return result;
}

unint64_t sub_23DDA40D0()
{
  result = qword_27E314278;
  if (!qword_27E314278)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for ResolvedServerConfiguration.POP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314278);
  }

  return result;
}

unint64_t sub_23DDA4128()
{
  result = qword_27E314280;
  if (!qword_27E314280)
  {
    result = swift_getWitnessTable(byte_23DDACB50, &type metadata for ResolvedServerConfiguration.POP.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E314280);
  }

  return result;
}

unint64_t sub_23DDA4180()
{
  result = qword_27E314288;
  if (!qword_27E314288)
  {
    result = swift_getWitnessTable(byte_23DDAC9B8, &type metadata for ResolvedServerConfiguration.ImapCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314288);
  }

  return result;
}

unint64_t sub_23DDA41D8()
{
  result = qword_27E314290;
  if (!qword_27E314290)
  {
    result = swift_getWitnessTable(byte_23DDAC9E0, &type metadata for ResolvedServerConfiguration.ImapCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314290);
  }

  return result;
}

unint64_t sub_23DDA4230()
{
  result = qword_27E314298;
  if (!qword_27E314298)
  {
    result = swift_getWitnessTable(byte_23DDAC900, &type metadata for ResolvedServerConfiguration.PopCodingKeys, v0, v1);
    atomic_store(result, &qword_27E314298);
  }

  return result;
}

unint64_t sub_23DDA4288()
{
  result = qword_27E3142A0;
  if (!qword_27E3142A0)
  {
    result = swift_getWitnessTable(byte_23DDAC928, &type metadata for ResolvedServerConfiguration.PopCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142A0);
  }

  return result;
}

unint64_t sub_23DDA42E0()
{
  result = qword_27E3142A8;
  if (!qword_27E3142A8)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for ResolvedServerConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142A8);
  }

  return result;
}

unint64_t sub_23DDA4338()
{
  result = qword_27E3142B0;
  if (!qword_27E3142B0)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for ResolvedServerConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142B0);
  }

  return result;
}

unint64_t sub_23DDA4390()
{
  result = qword_27E3142B8;
  if (!qword_27E3142B8)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for OutgoingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142B8);
  }

  return result;
}

unint64_t sub_23DDA43E8()
{
  result = qword_27E3142C0;
  if (!qword_27E3142C0)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for OutgoingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142C0);
  }

  return result;
}

unint64_t sub_23DDA4440()
{
  result = qword_27E3142C8;
  if (!qword_27E3142C8)
  {
    result = swift_getWitnessTable(byte_23DDAC790, &type metadata for IncomingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142C8);
  }

  return result;
}

unint64_t sub_23DDA4498()
{
  result = qword_27E3142D0;
  if (!qword_27E3142D0)
  {
    result = swift_getWitnessTable(asc_23DDAC7B8, &type metadata for IncomingServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3142D0);
  }

  return result;
}

uint64_t sub_23DDA44EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DDA4654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DDA476C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3142D8, &qword_23DDAD3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}