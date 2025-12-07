BOOL _s12AppleIDSetup14DiscoveryModelV8CodeTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) != 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 2)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v4 == 1)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_240684938()
{
  result = qword_27E4BADF8;
  if (!qword_27E4BADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BADF8);
  }

  return result;
}

unint64_t sub_24068498C()
{
  result = qword_27E4BAE00;
  if (!qword_27E4BAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE00);
  }

  return result;
}

unint64_t sub_2406849E0()
{
  result = qword_27E4BAE08;
  if (!qword_27E4BAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE08);
  }

  return result;
}

unint64_t sub_240684A34()
{
  result = qword_27E4BAE10;
  if (!qword_27E4BAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE10);
  }

  return result;
}

unint64_t sub_240684A88()
{
  result = qword_27E4BAE18;
  if (!qword_27E4BAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE18);
  }

  return result;
}

unint64_t sub_240684ADC()
{
  result = qword_27E4BAE20;
  if (!qword_27E4BAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE20);
  }

  return result;
}

unint64_t sub_240684B30()
{
  result = qword_27E4BAE30;
  if (!qword_27E4BAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE30);
  }

  return result;
}

unint64_t sub_240684B84()
{
  result = qword_27E4BAE38;
  if (!qword_27E4BAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE38);
  }

  return result;
}

unint64_t sub_240684BD8()
{
  result = qword_27E4BAE40;
  if (!qword_27E4BAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE40);
  }

  return result;
}

unint64_t sub_240684C2C()
{
  result = qword_27E4BAE48;
  if (!qword_27E4BAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE48);
  }

  return result;
}

unint64_t sub_240684C80()
{
  result = qword_27E4BAE50;
  if (!qword_27E4BAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE50);
  }

  return result;
}

unint64_t sub_240684D3C()
{
  result = qword_27E4BAE70;
  if (!qword_27E4BAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE70);
  }

  return result;
}

unint64_t sub_240684D90()
{
  result = qword_27E4BAE78;
  if (!qword_27E4BAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE78);
  }

  return result;
}

unint64_t sub_240684DE4()
{
  result = qword_27E4BAE80;
  if (!qword_27E4BAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAE80);
  }

  return result;
}

uint64_t sub_240684E38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E694B776F6C66 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7541746567726174 && a2 == 0xED00006761546874 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E69506465786966 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570795465646F63 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407886B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C6261646E6962 && a2 == 0xED00006574617453 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x526D6F74706D7973 && a2 == 0xED000074726F7065 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002407886D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407886F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240788710 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6976654472656570 && a2 == 0xEF7373616C436563)
  {

    return 13;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_2406852B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5D0, &qword_240774368);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5D8, &qword_240774370);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5E0, &unk_240774378);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240684D3C();
  v11 = v26;
  sub_24075AF34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24075AB34();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_2405B8AF4();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24075A8C4();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v19 = &type metadata for DiscoveryModel.Role;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_240684D90();
    sub_24075AA54();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_240684DE4();
    sub_24075AA54();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_240685774()
{
  result = qword_27E4BAEB0;
  if (!qword_27E4BAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEB0);
  }

  return result;
}

unint64_t sub_2406857C8()
{
  result = qword_27E4BAEB8;
  if (!qword_27E4BAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEB8);
  }

  return result;
}

unint64_t sub_24068581C()
{
  result = qword_27E4BAEC0;
  if (!qword_27E4BAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEC0);
  }

  return result;
}

unint64_t sub_240685870()
{
  result = qword_27E4BAEC8;
  if (!qword_27E4BAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAEC8);
  }

  return result;
}

unint64_t sub_2406858C4()
{
  result = qword_27E4BAED0;
  if (!qword_27E4BAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAED0);
  }

  return result;
}

uint64_t sub_240685918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7075746573 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726961706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617267694D656761 && a2 == 0xEC0000006E6F6974 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646578696DLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

void *sub_240685A74(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5A8, &qword_240774340);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5B0, &qword_240774348);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5B8, &qword_240774350);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5C0, &qword_240774358);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5C8, &qword_240774360);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_240685774();
  v15 = v43;
  sub_24075AF34();
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
  v20 = sub_24075AB34();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_2405B8AF8();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_240685870();
        v29 = v33;
        sub_24075AA54();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_2406858C4();
        v23 = v33;
        sub_24075AA54();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24068581C();
      v28 = v33;
      sub_24075AA54();
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
      sub_2406857C8();
      v30 = v33;
      sub_24075AA54();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24075A8C4();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
  *v11 = &type metadata for DiscoveryModel.FlowKind;
  sub_24075AA64();
  sub_24075A8A4();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_2406860B4()
{
  result = qword_27E4BAF00;
  if (!qword_27E4BAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF00);
  }

  return result;
}

unint64_t sub_240686108()
{
  result = qword_27E4BAF08;
  if (!qword_27E4BAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF08);
  }

  return result;
}

unint64_t sub_24068615C()
{
  result = qword_27E4BAF10;
  if (!qword_27E4BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF10);
  }

  return result;
}

unint64_t sub_2406861B0()
{
  result = qword_27E4BAF18;
  if (!qword_27E4BAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF18);
  }

  return result;
}

unint64_t sub_240686204()
{
  result = qword_27E4BAF20;
  if (!qword_27E4BAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF20);
  }

  return result;
}

unint64_t sub_240686288()
{
  result = qword_27E4BAF58;
  if (!qword_27E4BAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF58);
  }

  return result;
}

unint64_t sub_2406862DC()
{
  result = qword_27E4BAF60;
  if (!qword_27E4BAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF60);
  }

  return result;
}

unint64_t sub_240686330()
{
  result = qword_27E4BAF68;
  if (!qword_27E4BAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF68);
  }

  return result;
}

unint64_t sub_240686384()
{
  result = qword_27E4BAF70;
  if (!qword_27E4BAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF70);
  }

  return result;
}

unint64_t sub_2406863D8()
{
  result = qword_27E4BAF78;
  if (!qword_27E4BAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF78);
  }

  return result;
}

unint64_t sub_24068642C()
{
  result = qword_27E4BAF88;
  if (!qword_27E4BAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF88);
  }

  return result;
}

unint64_t sub_240686480()
{
  result = qword_27E4BAF90;
  if (!qword_27E4BAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF90);
  }

  return result;
}

unint64_t sub_2406864D4()
{
  result = qword_27E4BAF98;
  if (!qword_27E4BAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAF98);
  }

  return result;
}

unint64_t sub_240686528()
{
  result = qword_27E4BAFA0;
  if (!qword_27E4BAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFA0);
  }

  return result;
}

unint64_t sub_24068657C()
{
  result = qword_27E4BAFD0;
  if (!qword_27E4BAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFD0);
  }

  return result;
}

unint64_t sub_2406865D0()
{
  result = qword_27E4BAFD8;
  if (!qword_27E4BAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFD8);
  }

  return result;
}

unint64_t sub_240686624()
{
  result = qword_27E4BAFE0;
  if (!qword_27E4BAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFE0);
  }

  return result;
}

unint64_t sub_240686678()
{
  result = qword_27E4BAFE8;
  if (!qword_27E4BAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFE8);
  }

  return result;
}

unint64_t sub_2406866CC()
{
  result = qword_27E4BAFF0;
  if (!qword_27E4BAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAFF0);
  }

  return result;
}

uint64_t sub_240686720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB020, &qword_240770BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240686788(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_2406771E0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_24068679C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_240604AE0(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_2406867B0()
{
  result = qword_27E4BB030;
  if (!qword_27E4BB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB030);
  }

  return result;
}

unint64_t sub_240686804()
{
  result = qword_27E4BB038;
  if (!qword_27E4BB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB038);
  }

  return result;
}

unint64_t sub_240686858()
{
  result = qword_27E4BB048;
  if (!qword_27E4BB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB048);
  }

  return result;
}

unint64_t sub_2406868AC()
{
  result = qword_27E4BB058;
  if (!qword_27E4BB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB058);
  }

  return result;
}

uint64_t sub_240686900(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB060, &unk_240770C08);
    sub_240686A38(a2, type metadata accessor for IdMSAccount, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24068699C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_240686A38(a2, type metadata accessor for AIDAServiceType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240686A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240686A80()
{
  result = qword_27E4BB088;
  if (!qword_27E4BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB088);
  }

  return result;
}

uint64_t sub_240686AD4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB090, &qword_240770C28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240686B4C()
{
  result = qword_27E4BB0E8;
  if (!qword_27E4BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0E8);
  }

  return result;
}

unint64_t sub_240686BA0()
{
  result = qword_27E4BB0F0;
  if (!qword_27E4BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0F0);
  }

  return result;
}

unint64_t sub_240686BF4()
{
  result = qword_27E4BB0F8;
  if (!qword_27E4BB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB0F8);
  }

  return result;
}

unint64_t sub_240686C48()
{
  result = qword_27E4BB100;
  if (!qword_27E4BB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB100);
  }

  return result;
}

unint64_t sub_240686C9C()
{
  result = qword_27E4BB108;
  if (!qword_27E4BB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB108);
  }

  return result;
}

unint64_t sub_240686CF0()
{
  result = qword_27E4BB110;
  if (!qword_27E4BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB110);
  }

  return result;
}

unint64_t sub_240686D44()
{
  result = qword_27E4BB118;
  if (!qword_27E4BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB118);
  }

  return result;
}

unint64_t sub_240686D98()
{
  result = qword_27E4BB188;
  if (!qword_27E4BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB188);
  }

  return result;
}

unint64_t sub_240686DEC()
{
  result = qword_27E4BB190;
  if (!qword_27E4BB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB190);
  }

  return result;
}

unint64_t sub_240686E40()
{
  result = qword_27E4BB198;
  if (!qword_27E4BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB198);
  }

  return result;
}

unint64_t sub_240686E94()
{
  result = qword_27E4BB1A0;
  if (!qword_27E4BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1A0);
  }

  return result;
}

unint64_t sub_240686EE8()
{
  result = qword_27E4BB1A8;
  if (!qword_27E4BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1A8);
  }

  return result;
}

unint64_t sub_240686F3C()
{
  result = qword_27E4BB1B0;
  if (!qword_27E4BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1B0);
  }

  return result;
}

unint64_t sub_240686F90()
{
  result = qword_27E4BB1E8;
  if (!qword_27E4BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1E8);
  }

  return result;
}

unint64_t sub_240687024()
{
  result = qword_27E4BB1F0;
  if (!qword_27E4BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1F0);
  }

  return result;
}

unint64_t sub_240687078()
{
  result = qword_27E4BB1F8;
  if (!qword_27E4BB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB1F8);
  }

  return result;
}

unint64_t sub_2406870CC()
{
  result = qword_27E4BB200;
  if (!qword_27E4BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB200);
  }

  return result;
}

unint64_t sub_240687124()
{
  result = qword_27E4BB208;
  if (!qword_27E4BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB208);
  }

  return result;
}

unint64_t sub_24068717C()
{
  result = qword_27E4BB210;
  if (!qword_27E4BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB210);
  }

  return result;
}

unint64_t sub_240687210()
{
  result = qword_27E4BB218;
  if (!qword_27E4BB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB218);
  }

  return result;
}

unint64_t sub_240687268()
{
  result = qword_27E4BB220;
  if (!qword_27E4BB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB220);
  }

  return result;
}

unint64_t sub_2406872FC()
{
  result = qword_27E4BB228;
  if (!qword_27E4BB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB228);
  }

  return result;
}

unint64_t sub_240687354()
{
  result = qword_27E4BB230;
  if (!qword_27E4BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB230);
  }

  return result;
}

unint64_t sub_2406873E8()
{
  result = qword_27E4BB238;
  if (!qword_27E4BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB238);
  }

  return result;
}

unint64_t sub_24068747C()
{
  result = qword_27E4BB240;
  if (!qword_27E4BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB240);
  }

  return result;
}

unint64_t sub_2406874D4()
{
  result = qword_27E4BB248;
  if (!qword_27E4BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB248);
  }

  return result;
}

unint64_t sub_240687568()
{
  result = qword_27E4BB250;
  if (!qword_27E4BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB250);
  }

  return result;
}

unint64_t sub_2406875BC()
{
  result = qword_27E4BB258;
  if (!qword_27E4BB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB258);
  }

  return result;
}

unint64_t sub_240687610()
{
  result = qword_27E4BB260;
  if (!qword_27E4BB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB260);
  }

  return result;
}

unint64_t sub_240687668()
{
  result = qword_27E4BB268;
  if (!qword_27E4BB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB268);
  }

  return result;
}

unint64_t sub_2406876FC()
{
  result = qword_27E4BB270;
  if (!qword_27E4BB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB270);
  }

  return result;
}

unint64_t sub_240687754()
{
  result = qword_27E4BB278;
  if (!qword_27E4BB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB278);
  }

  return result;
}

unint64_t sub_2406877E8()
{
  result = qword_27E4BB280;
  if (!qword_27E4BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB280);
  }

  return result;
}

unint64_t sub_240687840()
{
  result = qword_27E4BB288;
  if (!qword_27E4BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB288);
  }

  return result;
}

unint64_t sub_2406878D4()
{
  result = qword_27E4BB290;
  if (!qword_27E4BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB290);
  }

  return result;
}

unint64_t sub_24068792C()
{
  result = qword_27E4BB298;
  if (!qword_27E4BB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB298);
  }

  return result;
}

unint64_t sub_2406879C0()
{
  result = qword_27E4BB2A0;
  if (!qword_27E4BB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2A0);
  }

  return result;
}

unint64_t sub_240687A18()
{
  result = qword_27E4BB2A8;
  if (!qword_27E4BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2A8);
  }

  return result;
}

uint64_t sub_240687AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_240687B00()
{
  result = qword_27E4BB2B0;
  if (!qword_27E4BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2B0);
  }

  return result;
}

unint64_t sub_240687B58()
{
  result = qword_27E4BB2B8;
  if (!qword_27E4BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14DiscoveryModelV12PairingStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV12FamilyMemberVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240687BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240687C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_240687D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240687D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14DiscoveryModelV5StateO(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 3) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_240687E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 5 && *(a1 + 49))
  {
    return (*a1 + 5);
  }

  v3 = (*(a1 + 48) & 4 | (*(a1 + 48) >> 3) & 3) ^ 7;
  if (v3 >= 4)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_240687E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 5;
    if (a3 >= 5)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (8 * ((3 * a2) & 3)) | 4;
    }
  }

  return result;
}

uint64_t sub_240687F04(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 0xE3 | (8 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 24;
  }

  return result;
}

uint64_t sub_240687F50(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_240687FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_240687FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_240688044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2406880B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_240688100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24068815C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3B && *(a1 + 25))
  {
    return (*a1 + 59);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 24) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2406881B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 59;
    if (a3 >= 0x3B)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_24068821C(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 24) = *(result + 24) & 3 | (32 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 5;
    *(result + 24) = -96;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscoveryModel.CodeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DiscoveryModel.CodeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2406882E8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_240688300(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_24068856C()
{
  result = qword_27E4BB2C0;
  if (!qword_27E4BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2C0);
  }

  return result;
}

unint64_t sub_2406885C4()
{
  result = qword_27E4BB2C8;
  if (!qword_27E4BB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2C8);
  }

  return result;
}

unint64_t sub_24068861C()
{
  result = qword_27E4BB2D0;
  if (!qword_27E4BB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2D0);
  }

  return result;
}

unint64_t sub_240688674()
{
  result = qword_27E4BB2D8;
  if (!qword_27E4BB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2D8);
  }

  return result;
}

unint64_t sub_2406886CC()
{
  result = qword_27E4BB2E0;
  if (!qword_27E4BB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2E0);
  }

  return result;
}

unint64_t sub_240688724()
{
  result = qword_27E4BB2E8;
  if (!qword_27E4BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2E8);
  }

  return result;
}

unint64_t sub_24068877C()
{
  result = qword_27E4BB2F0;
  if (!qword_27E4BB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2F0);
  }

  return result;
}

unint64_t sub_2406887D4()
{
  result = qword_27E4BB2F8;
  if (!qword_27E4BB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB2F8);
  }

  return result;
}

unint64_t sub_24068882C()
{
  result = qword_27E4BB300;
  if (!qword_27E4BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB300);
  }

  return result;
}

unint64_t sub_240688884()
{
  result = qword_27E4BB308;
  if (!qword_27E4BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB308);
  }

  return result;
}

unint64_t sub_2406888DC()
{
  result = qword_27E4BB310;
  if (!qword_27E4BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB310);
  }

  return result;
}

unint64_t sub_240688934()
{
  result = qword_27E4BB318;
  if (!qword_27E4BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB318);
  }

  return result;
}

unint64_t sub_24068898C()
{
  result = qword_27E4BB320;
  if (!qword_27E4BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB320);
  }

  return result;
}

unint64_t sub_2406889E4()
{
  result = qword_27E4BB328;
  if (!qword_27E4BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB328);
  }

  return result;
}

unint64_t sub_240688A3C()
{
  result = qword_27E4BB330;
  if (!qword_27E4BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB330);
  }

  return result;
}

unint64_t sub_240688A94()
{
  result = qword_27E4BB338;
  if (!qword_27E4BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB338);
  }

  return result;
}

unint64_t sub_240688AEC()
{
  result = qword_27E4BB340;
  if (!qword_27E4BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB340);
  }

  return result;
}

unint64_t sub_240688B44()
{
  result = qword_27E4BB348;
  if (!qword_27E4BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB348);
  }

  return result;
}

unint64_t sub_240688B9C()
{
  result = qword_27E4BB350;
  if (!qword_27E4BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB350);
  }

  return result;
}

unint64_t sub_240688BF4()
{
  result = qword_27E4BB358;
  if (!qword_27E4BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB358);
  }

  return result;
}

unint64_t sub_240688C4C()
{
  result = qword_27E4BB360;
  if (!qword_27E4BB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB360);
  }

  return result;
}

unint64_t sub_240688CA4()
{
  result = qword_27E4BB368;
  if (!qword_27E4BB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB368);
  }

  return result;
}

unint64_t sub_240688CFC()
{
  result = qword_27E4BB370;
  if (!qword_27E4BB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB370);
  }

  return result;
}

unint64_t sub_240688D54()
{
  result = qword_27E4BB378;
  if (!qword_27E4BB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB378);
  }

  return result;
}

unint64_t sub_240688DAC()
{
  result = qword_27E4BB380;
  if (!qword_27E4BB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB380);
  }

  return result;
}

unint64_t sub_240688E04()
{
  result = qword_27E4BB388;
  if (!qword_27E4BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB388);
  }

  return result;
}

unint64_t sub_240688E5C()
{
  result = qword_27E4BB390;
  if (!qword_27E4BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB390);
  }

  return result;
}

unint64_t sub_240688EB4()
{
  result = qword_27E4BB398;
  if (!qword_27E4BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB398);
  }

  return result;
}

unint64_t sub_240688F0C()
{
  result = qword_27E4BB3A0;
  if (!qword_27E4BB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3A0);
  }

  return result;
}

unint64_t sub_240688F64()
{
  result = qword_27E4BB3A8;
  if (!qword_27E4BB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3A8);
  }

  return result;
}

unint64_t sub_240688FBC()
{
  result = qword_27E4BB3B0;
  if (!qword_27E4BB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3B0);
  }

  return result;
}

unint64_t sub_240689014()
{
  result = qword_27E4BB3B8;
  if (!qword_27E4BB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3B8);
  }

  return result;
}

unint64_t sub_24068906C()
{
  result = qword_27E4BB3C0;
  if (!qword_27E4BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3C0);
  }

  return result;
}

unint64_t sub_2406890C4()
{
  result = qword_27E4BB3C8;
  if (!qword_27E4BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3C8);
  }

  return result;
}

unint64_t sub_24068911C()
{
  result = qword_27E4BB3D0;
  if (!qword_27E4BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3D0);
  }

  return result;
}

unint64_t sub_240689174()
{
  result = qword_27E4BB3D8;
  if (!qword_27E4BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3D8);
  }

  return result;
}

unint64_t sub_2406891CC()
{
  result = qword_27E4BB3E0;
  if (!qword_27E4BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3E0);
  }

  return result;
}

unint64_t sub_240689224()
{
  result = qword_27E4BB3E8;
  if (!qword_27E4BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3E8);
  }

  return result;
}

unint64_t sub_24068927C()
{
  result = qword_27E4BB3F0;
  if (!qword_27E4BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3F0);
  }

  return result;
}

unint64_t sub_2406892D4()
{
  result = qword_27E4BB3F8;
  if (!qword_27E4BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB3F8);
  }

  return result;
}

unint64_t sub_24068932C()
{
  result = qword_27E4BB400;
  if (!qword_27E4BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB400);
  }

  return result;
}

unint64_t sub_240689384()
{
  result = qword_27E4BB408;
  if (!qword_27E4BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB408);
  }

  return result;
}

unint64_t sub_2406893DC()
{
  result = qword_27E4BB410;
  if (!qword_27E4BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB410);
  }

  return result;
}

unint64_t sub_240689434()
{
  result = qword_27E4BB418;
  if (!qword_27E4BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB418);
  }

  return result;
}

unint64_t sub_24068948C()
{
  result = qword_27E4BB420;
  if (!qword_27E4BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB420);
  }

  return result;
}

unint64_t sub_2406894E4()
{
  result = qword_27E4BB428;
  if (!qword_27E4BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB428);
  }

  return result;
}

unint64_t sub_24068953C()
{
  result = qword_27E4BB430;
  if (!qword_27E4BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB430);
  }

  return result;
}

unint64_t sub_240689594()
{
  result = qword_27E4BB438;
  if (!qword_27E4BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB438);
  }

  return result;
}

unint64_t sub_2406895EC()
{
  result = qword_27E4BB440;
  if (!qword_27E4BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB440);
  }

  return result;
}

unint64_t sub_240689644()
{
  result = qword_27E4BB448;
  if (!qword_27E4BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB448);
  }

  return result;
}

unint64_t sub_24068969C()
{
  result = qword_27E4BB450;
  if (!qword_27E4BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB450);
  }

  return result;
}

unint64_t sub_2406896F4()
{
  result = qword_27E4BB458;
  if (!qword_27E4BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB458);
  }

  return result;
}

unint64_t sub_24068974C()
{
  result = qword_27E4BB460;
  if (!qword_27E4BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB460);
  }

  return result;
}

unint64_t sub_2406897A4()
{
  result = qword_27E4BB468;
  if (!qword_27E4BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB468);
  }

  return result;
}

unint64_t sub_2406897FC()
{
  result = qword_27E4BB470;
  if (!qword_27E4BB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB470);
  }

  return result;
}

unint64_t sub_240689854()
{
  result = qword_27E4BB478;
  if (!qword_27E4BB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB478);
  }

  return result;
}

unint64_t sub_2406898AC()
{
  result = qword_27E4BB480;
  if (!qword_27E4BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB480);
  }

  return result;
}

unint64_t sub_240689904()
{
  result = qword_27E4BB488;
  if (!qword_27E4BB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB488);
  }

  return result;
}

unint64_t sub_24068995C()
{
  result = qword_27E4BB490;
  if (!qword_27E4BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB490);
  }

  return result;
}

unint64_t sub_2406899B4()
{
  result = qword_27E4BB498;
  if (!qword_27E4BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB498);
  }

  return result;
}

unint64_t sub_240689A0C()
{
  result = qword_27E4BB4A0;
  if (!qword_27E4BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4A0);
  }

  return result;
}

unint64_t sub_240689A64()
{
  result = qword_27E4BB4A8;
  if (!qword_27E4BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4A8);
  }

  return result;
}

unint64_t sub_240689ABC()
{
  result = qword_27E4BB4B0;
  if (!qword_27E4BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4B0);
  }

  return result;
}

unint64_t sub_240689B14()
{
  result = qword_27E4BB4B8;
  if (!qword_27E4BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4B8);
  }

  return result;
}

unint64_t sub_240689B6C()
{
  result = qword_27E4BB4C0;
  if (!qword_27E4BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4C0);
  }

  return result;
}

unint64_t sub_240689BC4()
{
  result = qword_27E4BB4C8;
  if (!qword_27E4BB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4C8);
  }

  return result;
}

unint64_t sub_240689C1C()
{
  result = qword_27E4BB4D0;
  if (!qword_27E4BB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4D0);
  }

  return result;
}

unint64_t sub_240689C74()
{
  result = qword_27E4BB4D8;
  if (!qword_27E4BB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4D8);
  }

  return result;
}

unint64_t sub_240689CCC()
{
  result = qword_27E4BB4E0;
  if (!qword_27E4BB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4E0);
  }

  return result;
}

unint64_t sub_240689D24()
{
  result = qword_27E4BB4E8;
  if (!qword_27E4BB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4E8);
  }

  return result;
}

unint64_t sub_240689D7C()
{
  result = qword_27E4BB4F0;
  if (!qword_27E4BB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4F0);
  }

  return result;
}

unint64_t sub_240689DD4()
{
  result = qword_27E4BB4F8;
  if (!qword_27E4BB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB4F8);
  }

  return result;
}

unint64_t sub_240689E2C()
{
  result = qword_27E4BB500;
  if (!qword_27E4BB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB500);
  }

  return result;
}

unint64_t sub_240689E84()
{
  result = qword_27E4BB508;
  if (!qword_27E4BB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB508);
  }

  return result;
}

unint64_t sub_240689EDC()
{
  result = qword_27E4BB510;
  if (!qword_27E4BB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB510);
  }

  return result;
}

unint64_t sub_240689F34()
{
  result = qword_27E4BB518;
  if (!qword_27E4BB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB518);
  }

  return result;
}

unint64_t sub_240689F8C()
{
  result = qword_27E4BB520;
  if (!qword_27E4BB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB520);
  }

  return result;
}

unint64_t sub_240689FE4()
{
  result = qword_27E4BB528;
  if (!qword_27E4BB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB528);
  }

  return result;
}

unint64_t sub_24068A03C()
{
  result = qword_27E4BB530;
  if (!qword_27E4BB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB530);
  }

  return result;
}

unint64_t sub_24068A094()
{
  result = qword_27E4BB538;
  if (!qword_27E4BB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB538);
  }

  return result;
}

unint64_t sub_24068A0EC()
{
  result = qword_27E4BB540;
  if (!qword_27E4BB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB540);
  }

  return result;
}

unint64_t sub_24068A144()
{
  result = qword_27E4BB548;
  if (!qword_27E4BB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB548);
  }

  return result;
}

unint64_t sub_24068A19C()
{
  result = qword_27E4BB550;
  if (!qword_27E4BB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB550);
  }

  return result;
}

unint64_t sub_24068A1F4()
{
  result = qword_27E4BB558;
  if (!qword_27E4BB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB558);
  }

  return result;
}

unint64_t sub_24068A24C()
{
  result = qword_27E4BB560;
  if (!qword_27E4BB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB560);
  }

  return result;
}

unint64_t sub_24068A2A4()
{
  result = qword_27E4BB568;
  if (!qword_27E4BB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB568);
  }

  return result;
}

unint64_t sub_24068A2FC()
{
  result = qword_27E4BB570;
  if (!qword_27E4BB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB570);
  }

  return result;
}

unint64_t sub_24068A354()
{
  result = qword_27E4BB578;
  if (!qword_27E4BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB578);
  }

  return result;
}

unint64_t sub_24068A3AC()
{
  result = qword_27E4BB580;
  if (!qword_27E4BB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB580);
  }

  return result;
}

unint64_t sub_24068A404()
{
  result = qword_27E4BB588;
  if (!qword_27E4BB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB588);
  }

  return result;
}

unint64_t sub_24068A45C()
{
  result = qword_27E4BB590;
  if (!qword_27E4BB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB590);
  }

  return result;
}

unint64_t sub_24068A4B4()
{
  result = qword_27E4BB598;
  if (!qword_27E4BB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB598);
  }

  return result;
}

unint64_t sub_24068A50C()
{
  result = qword_27E4BB5A0;
  if (!qword_27E4BB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB5A0);
  }

  return result;
}

uint64_t sub_24068A560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473627573 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEB00000000676E69 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69736F6F6863 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A6D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7265766F63736964 && a2 == 0xEB00000000676E69;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265766F63736964 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646572696170 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69736F6F6863 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A83C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614D73776F6C6C61 && a2 == 0xEC0000006C61756ELL;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE006C61756E614DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240788730 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53676E6972696170 && a2 == 0xEC00000065746174)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068A9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E756F636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000240788750 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240788780 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E6972696170 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068AB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265626D656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002407887A0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEE007265626D654DLL || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646C756F6873 && a2 == 0xED0000646565636FLL || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407887C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068AD44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7041889 && a2 == 0xE300000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E616863 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726577736E61 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24068AF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F436168706C61 && a2 == 0xE900000000000065 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F437469676964 && a2 == 0xE900000000000065 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6175736976 && a2 == 0xEA00000000006564 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

void sub_24068B110(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = (a7 >> 3) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {

      sub_24067715C(a3, a4, a5);
    }
  }

  else
  {
    if (v9)
    {
      v16 = a7;

      v13 = v16 & 0xE7;
      a2 = a4;
      v11 = a5;
      v12 = a6;
    }

    else
    {
      v11 = a3;
      v12 = a4;
      v13 = a5;
    }

    sub_2406771E0(a2, v11, v12, v13);
  }
}

uint64_t static ObjcArchivable.unarchive(from:backing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_24075A714();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-v13];
  (*(a4 + 24))(a1, a3, a4);
  v19 = a3;
  v20 = a4;
  v21 = v5;
  v22 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24062239C(sub_24068B3B4, v18, v15, a3, &v23, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24068B3B4(uint64_t a1, void *a2)
{
  result = (*(v2[3] + 32))(a1, v2[5], v2[2]);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t ObjcArchivableWrapper.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_24075A714();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t ObjcArchivableWrapper.wrappedValue.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_24075A714();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

BOOL ObjcArchivableWrapper.needsUnarchivalDevelopment.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_24075A714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *((v2 & v1) + 0x70);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) != 1;
  (*(v5 + 8))(v7, v4);
  return v9;
}

id ObjcArchivableWrapper.__allocating_init(encoder:wrappedValue:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8 - 8];
  sub_2405F7830(a1, v15);
  (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness);
  v10 = objc_allocWithZone(v2);
  v11 = sub_24068CB24(v15, a2, v9);
  (*(v7 + 8))(v9, v6);
  v12 = sub_24075A714();
  (*(*(v12 - 8) + 8))(a2, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

id ObjcArchivableWrapper.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = sub_24068CD90(a1);
  v3 = sub_24075A714();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

id ObjcArchivableWrapper.init(coder:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v6 = sub_24075A714();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_24075A714();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = sub_24075A084();
  LODWORD(v4) = [a1 decodeBoolForKey_];

  if (!v4)
  {
    swift_getObjectType();
    (*(*(v5 - 8) + 56))(v8, 1, 1, v5);
    v20 = sub_24068CD90(v8);
    (*(v26 + 8))(v8, v27);

LABEL_6:
    swift_deallocPartialClassInstance();
    return v20;
  }

  v18 = a1;
  (*(v9 + 24))(a1, v5, v9);
  v19 = v25;
  if ((*(v25 + 48))(v14, 1, AssociatedTypeWitness) != 1)
  {
    (*(v19 + 32))(v16, v14, AssociatedTypeWitness);
    swift_getObjectType();
    v20 = sub_24068CEE0(v16);

    (*(v19 + 8))(v16, AssociatedTypeWitness);
    goto LABEL_6;
  }

  (*(v23 + 8))(v14, v24);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ObjcArchivableWrapper.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v26 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_2407593D4();
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2407593E4();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v3 & v2) + 0x50);
  v10 = sub_24075A714();
  v29 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  sub_2405B044C(&v1[*((v3 & v2) + 0x60)], &v31, &qword_27E4BB5E8, &qword_240785350);
  if (v32)
  {
    v17 = isa;
    sub_24058C9C0(&v31, v33);
    v18 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
    swift_beginAccess();
    v19 = v29;
    (*(v29 + 16))(v13, &v1[v18], v10);
    v20 = (*(v14 + 48))(v13, 1, v9);
    if (v20 == 1)
    {
      (*(v19 + 8))(v13, v10);
      v21 = v17;
    }

    else
    {
      (*(v14 + 32))(v16, v13, v9);
      v21 = v17;
      (*(*(v26 + 88) + 16))(v17, v33, v9);
      (*(v14 + 8))(v16, v9);
    }

    v24 = sub_24075A084();
    [(objc_class *)v21 encodeBool:v20 != 1 forKey:v24];

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_24068D13C(&v31);
    sub_2407593C4();
    sub_2405BD228(MEMORY[0x277D84F90]);
    sub_24068D1A4();
    sub_2407595B4();
    v22 = sub_2407593B4();
    (*(v28 + 8))(v8, v6);
    v23 = sub_2407595C4();

    [(objc_class *)isa failWithError:v23];
  }
}

void sub_24068C310(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ObjcArchivableWrapper.encode(with:)(v4);
}

uint64_t ObjcArchivableWrapper.developingUnarchive(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v6 = sub_24075A714();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v32 - v7;
  v38 = *((v4 & v3) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v32 - v18;
  v20 = v4 & v3;
  v21 = v17;
  v22 = *(v20 + 112);
  swift_beginAccess();
  (*(v10 + 16))(v15, &v2[v22], v21);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v15, v21);
    return (*(*(v5 - 8) + 56))(v41, 1, 1, v5);
  }

  else
  {
    v33 = v10;
    v34 = v21;
    v24 = v2;
    (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    v25 = v42;
    (*(v38 + 32))(v19, v39, v5);
    v42 = v25;
    if (v25)
    {
      return (*(v16 + 8))(v19, AssociatedTypeWitness);
    }

    else
    {
      (*(v16 + 8))(v19, AssociatedTypeWitness);
      v26 = v40;
      (*(*(v5 - 8) + 56))(v40, 0, 1, v5);
      v27 = v2;
      v28 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
      swift_beginAccess();
      v30 = v36;
      v29 = v37;
      (*(v36 + 40))(&v24[v28], v26, v37);
      swift_endAccess();
      v31 = v35;
      (*(v16 + 56))(v35, 1, 1, AssociatedTypeWitness);
      swift_beginAccess();
      (*(v33 + 40))(&v27[v22], v31, v34);
      swift_endAccess();
      return (*(v30 + 16))(v41, &v27[v28], v29);
    }
  }
}

id ObjcArchivableWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24068C8CC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  sub_24068D13C(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_24075A714();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x70);
  swift_getAssociatedTypeWitness();
  v6 = sub_24075A714();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

id ObjcArchivableWrapperClassProducer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s12AppleIDSetup21ObjcArchivableWrapperCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24068CB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x68);
  (*(*(*((*MEMORY[0x277D85000] & *v3) + 0x50) - 8) + 56))(&v3[v8], 1, 1, *((*MEMORY[0x277D85000] & *v3) + 0x50));
  v9 = *((*v7 & *v3) + 0x70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v3[v9], 1, 1, AssociatedTypeWitness);
  sub_2405B044C(a1, &v3[*((*v7 & *v3) + 0x60)], &qword_27E4BB5E8, &qword_240785350);
  swift_beginAccess();
  v11 = sub_24075A714();
  (*(*(v11 - 8) + 24))(&v3[v8], a2, v11);
  swift_endAccess();
  swift_beginAccess();
  v12 = sub_24075A714();
  (*(*(v12 - 8) + 24))(&v3[v9], a3, v12);
  swift_endAccess();
  v16.receiver = v3;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  sub_24068D13C(a1);
  return v13;
}

id sub_24068CD90(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_24075A714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  (*(*(AssociatedTypeWitness - 8) + 56))(v11 - v6, 1, 1, AssociatedTypeWitness);
  v8 = objc_allocWithZone(v1);
  v9 = sub_24068CB24(v11, a1, v7);
  (*(v5 + 8))(v7, v4);
  return v9;
}

id sub_24068CEE0(uint64_t a1)
{
  v3 = *(v1 + 10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_24075A714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  (*(*(v3 - 8) + 56))(v17 - v11, 1, 1, v3);
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 16))(v8, a1, AssociatedTypeWitness);
  (*(v13 + 56))(v8, 0, 1, AssociatedTypeWitness);
  v14 = objc_allocWithZone(v1);
  v15 = sub_24068CB24(v17, v12, v8);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_24068D13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB5E8, &qword_240785350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24068D1A4()
{
  result = qword_27E4BB5F0;
  if (!qword_27E4BB5F0)
  {
    sub_2407593E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BB5F0);
  }

  return result;
}

uint64_t sub_24068D27C(uint64_t a1)
{
  result = sub_24075A714();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_24075A714();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24068D3EC()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BB690);
  v1 = __swift_project_value_buffer(v0, qword_27E4BB690);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ModernAppleIDAuthenticationContext.__allocating_init(_:signInModelModifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model] = a1;
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ModernAppleIDAuthenticationContext.init(_:signInModelModifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model] = a1;
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ModernAppleIDAuthenticationContext();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ModernAppleIDAuthenticationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24068D708(uint64_t a1, SEL *a2)
{
  v3 = [objc_allocWithZone(v2) *a2];
  swift_unknownObjectRelease();
  return v3;
}

id ModernAppleIDAuthenticationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernAppleIDAuthenticationContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24068D83C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for AuthenticationModel(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068D8D0, 0, 0);
}

uint64_t sub_24068D8D0()
{
  v1 = [*(v0 + 24) username];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24075A0B4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = [*(v0 + 24) _password];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24075A0B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = *(*(v0 + 24) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v12 = sub_24075A344();
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;

  return MEMORY[0x2822009F8](sub_24068DA28, v12, v11);
}

uint64_t sub_24068DA28()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_24068DAE8;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068DAE8()
{

  return MEMORY[0x2822009F8](sub_24068DBE4, 0, 0);
}

uint64_t sub_24068DBE4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 128) = *(v1 + *(*(v0 + 32) + 36));
  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v3 = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  *(v0 + 112) = v3;
  if (v3)
  {
    [v3 _updateWithValuesFromContext_];
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v3 = sub_24068DCA4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24068DCA4()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_24068DD64;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068DD64()
{

  return MEMORY[0x2822009F8](sub_24068DE60, 0, 0);
}

uint64_t sub_24068DE60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v7 + *(*(v0 + 32) + 32));

  sub_24069EFD8(v7, type metadata accessor for AuthenticationModel);
  *(v8 + 33) = 514;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = -1;
  *v8 = v6;
  *(v8 + 8) = v5;

  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = 0;
  *(v8 + 35) = v2;
  *(v8 + 36) = 0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v9;
  *(v8 + 56) = 0;

  v10 = *(v0 + 8);

  return v10();
}

void __swiftcall AKAppleIDAuthenticationContext.init(basedOn:)(AKAppleIDAuthenticationContext *__return_ptr retstr, AKAppleIDAuthenticationContext *basedOn)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  if (v3)
  {
    v4 = v3;
    [v4 _updateWithValuesFromContext_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24068DFC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for AuthenticationModel(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068E05C, 0, 0);
}

uint64_t sub_24068E05C()
{
  v1 = [*(v0 + 24) username];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24075A0B4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  v6 = [*(v0 + 24) _password];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24075A0B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = *(*(v0 + 24) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v12 = sub_24075A344();
  *(v0 + 88) = v12;
  *(v0 + 96) = v11;

  return MEMORY[0x2822009F8](sub_24068E1B4, v12, v11);
}

uint64_t sub_24068E1B4()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_24068E274;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068E274()
{

  return MEMORY[0x2822009F8](sub_24068E370, 0, 0);
}

uint64_t sub_24068E370()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 128) = *(v1 + *(*(v0 + 32) + 36));
  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v3 = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  *(v0 + 112) = v3;
  if (v3)
  {
    [v3 _updateWithValuesFromContext_];
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v3 = sub_24068E430;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24068E430()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_24068E4F0;
  v6 = v0[10];
  v7 = v0[5];

  return sub_2405CEFE8(v7, v3, v6, ObjectType, v2);
}

uint64_t sub_24068E4F0()
{

  return MEMORY[0x2822009F8](sub_24068E5EC, 0, 0);
}

uint64_t sub_24068E5EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v7 + *(*(v0 + 32) + 32));

  sub_24069EFD8(v7, type metadata accessor for AuthenticationModel);
  *(v8 + 33) = 514;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = -1;
  *v8 = v6;
  *(v8 + 8) = v5;

  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = 1;
  *(v8 + 35) = v2;
  *(v8 + 36) = 0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v9;
  *(v8 + 56) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t ModernAppleIDAuthenticationContext.presentBasicLoginUI()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24068E710, 0, 0);
}

uint64_t sub_24068E710()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24068E7B4;
  v3 = *(v0 + 64);

  return sub_240698700(v0 + 16, v3);
}

uint64_t sub_24068E7B4()
{
  v2 = *v1;
  v3 = *v1;
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v4 = *(*v1 + 48);

  if (!v0)
  {
    v5 = *(v2 + 56);
    *v5 = v9;
    *(v5 + 16) = v8;
    *(v5 + 32) = v4;
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24068E8E0(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = swift_task_alloc();
  v2[35] = v3;
  *v3 = v2;
  v3[1] = sub_24068E97C;

  return sub_24068D83C((v2 + 15));
}

uint64_t sub_24068E97C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  *(v1 + 80) = *(v1 + 184);
  *(v1 + 96) = v3;
  *(v1 + 112) = *(v1 + 216);
  v4 = *(v1 + 136);
  *(v1 + 16) = *(v1 + 120);
  *(v1 + 32) = v4;
  *(v1 + 48) = *(v1 + 152);
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_24068EAA4, 0, 0);
}

uint64_t sub_24068EAA4()
{
  v1 = v0[34];
  v0[36] = *&v1[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v0 + 2;
  v3 = swift_allocObject();
  v0[38] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v6 = sub_24075A344();
  v0[39] = v6;
  v0[40] = v5;

  return MEMORY[0x2822009F8](sub_24068EBB0, v6, v5);
}

uint64_t sub_24068EBB0()
{
  v1 = *(v0[36] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_24068ECA4;
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[36];

  return sub_2405D1864((v0 + 28), v1, sub_24069F0E0, v3, &unk_240774870, v4, v5, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_24068ECA4()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24068EF34;
  }

  else
  {
    v5 = sub_24068EDE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24068EDE0()
{

  sub_2405AE36C(v0 + 16);

  return MEMORY[0x2822009F8](sub_24068EE58, 0, 0);
}

uint64_t sub_24068EE58()
{
  v13 = v0;
  v1 = *(v0 + 336);
  v8 = *(v0 + 224);
  v9 = *(v0 + 240);
  v10 = *(v0 + 256);
  sub_2405A26A4(v11);
  if (v1)
  {
    sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  }

  else
  {
    v6 = v11[1];
    v7 = v11[0];
    v3 = v12;
    v4 = *(v0 + 264);
    sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v3;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24068EF34()
{

  return MEMORY[0x2822009F8](sub_24068EFA4, 0, 0);
}

uint64_t sub_24068EFA4()
{
  sub_2405AE36C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24068F17C(const void *a1, void *a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_24068F1F4, 0, 0);
}

uint64_t sub_24068F1F4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24068F298;
  v3 = *(v0 + 56);

  return sub_240698700(v0 + 16, v3);
}

uint64_t sub_24068F298()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 32);
  *(v3 + 88) = *(v3 + 16);
  *(v3 + 80) = v0;
  *(v3 + 104) = v4;
  *(v3 + 120) = *(v2 + 48);

  if (v0)
  {
    v5 = sub_24068F52C;
  }

  else
  {
    v5 = sub_24068F3D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24068F3D0()
{
  v1 = *(v0 + 64);

  if (!v1)
  {

    goto LABEL_11;
  }

  if (*(v0 + 96))
  {
    v2 = sub_24075A084();

    if (*(v0 + 112))
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if (*(v0 + 120))
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 0;
  if (!*(v0 + 112))
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = sub_24075A084();

  if (!*(v0 + 120))
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = sub_240759F54();

LABEL_10:
  v5 = *(v0 + 64);
  (v5)[2](v5, v2, v3, v4, 0);
  _Block_release(v5);

LABEL_11:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24068F52C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = *(v0 + 64);
    v4 = sub_2407595C4();

    (v3)[2](v3, 0, 0, 0, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24068F60C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_240699434(v3);
}

uint64_t sub_24068F6AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24068F740, 0, 0);
}

uint64_t sub_24068F740()
{
  v0[6] = *(v0[3] + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v2 = sub_24075A344();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x2822009F8](sub_24068F818, v2, v1);
}

uint64_t sub_24068F818()
{
  v1 = v0[6];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24068F8D4;
  v6 = v0[5];
  v7 = v0[6];

  return sub_2405CEFE8(v6, v3, v7, ObjectType, v2);
}

uint64_t sub_24068F8D4()
{

  return MEMORY[0x2822009F8](sub_24068F9D0, 0, 0);
}

uint64_t sub_24068F9D0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + *(v0[4] + 32));
  v0[10] = v3;

  sub_24069EFD8(v1, type metadata accessor for AuthenticationModel);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x2822009F8](sub_24068FA7C, v5, v6);
}

uint64_t sub_24068FA7C()
{
  v1 = *(v0[6] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24068FB74;
  v3 = v0[11];
  v4 = v0[6];
  v5 = MEMORY[0x277D839B0];

  return sub_2405D1864((v0 + 14), v1, sub_24069F0A8, v3, &unk_240774860, 0, v4, v5);
}

uint64_t sub_24068FB74()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_24068FD3C;
  }

  else
  {
    v5 = sub_24068FCB0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24068FCB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 112);

  *v1 = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24068FD3C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_24068FDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v10 = result;
    [result _updateWithValuesFromContext_];

    v8[32] = 0;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 33) = 514;
    *(v8 + 5) = v10;
    *(v8 + 6) = a3;
    *(v8 + 56) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 11) = 0;
    v8[96] = -1;

    swift_storeEnumTagMultiPayload();
    v11 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v8, a1 + *(v11 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240690094(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_24069010C, 0, 0);
}

uint64_t sub_24069010C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_240699434(v3);
}

uint64_t sub_2406901AC(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_24069F0B0;
  }

  else
  {
    v4 = sub_24069F0C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ModernAppleIDAuthenticationContext.presentLoginAlertWithError(_:title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_2406902F0, 0, 0);
}

uint64_t sub_2406902F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = v1;

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_2406903C0;
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);

  return sub_240698D68(v0 + 16, v9, v5, v10, v7, v8, v6);
}

uint64_t sub_2406903C0()
{
  v2 = *v1;
  v3 = *v1;
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v4 = *(*v1 + 48);

  if (!v0)
  {
    v5 = *(v2 + 56);
    *v5 = v9;
    *(v5 + 16) = v8;
    *(v5 + 32) = v4;
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24069052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[70] = a7;
  v7[69] = a6;
  v7[68] = a5;
  v7[67] = a4;
  v7[66] = a3;
  v7[65] = a2;
  v7[64] = a1;
  return MEMORY[0x2822009F8](sub_240690564, 0, 0);
}

uint64_t sub_240690564(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 520);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v5 = sub_2407595C4();
  v6 = [v5 ak:-7012 isAuthenticationErrorWithCode:?];

  if (!v6)
  {
    if (qword_27E4B5F68 != -1)
    {
      swift_once();
    }

    v13 = sub_240759AE4();
    *(v3 + 632) = __swift_project_value_buffer(v13, qword_27E4BB690);
    v14 = v4;
    v15 = sub_240759AC4();
    v16 = sub_24075A5C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_240579000, v15, v16, "Failed to login with error: %@, showing alert then proceeding", v17, 0xCu);
      sub_24061DD28(v18);
      MEMORY[0x245CC76B0](v18, -1, -1);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    v21 = *(v3 + 528);
    v22 = *(v3 + 520);
    v26 = *(v3 + 536);
    v27 = *(v3 + 552);

    *(v3 + 640) = *(v21 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
    v23 = swift_task_alloc();
    *(v3 + 648) = v23;
    *(v23 + 16) = v26;
    *(v23 + 32) = v27;
    *(v23 + 48) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
    sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
    v24 = sub_24075A344();
    a3 = v25;
    *(v3 + 656) = v24;
    *(v3 + 664) = v25;
    a1 = sub_240690F60;
    a2 = v24;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  if (qword_27E4B5F68 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4BB690);
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_240579000, v8, v9, "Username is present but password is missing and required. Client should provide us with password.", v10, 2u);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v3 + 568) = v11;
  *v11 = v3;
  v11[1] = sub_2406908D4;

  return sub_24068DFC8(v3 + 328);
}

uint64_t sub_2406908D4()
{
  v1 = *v0;
  v2 = (*v0 + 328);

  v3 = v2[2];
  *(v1 + 168) = v2[3];
  v4 = v2[5];
  *(v1 + 184) = v2[4];
  *(v1 + 200) = v4;
  v5 = v2[1];
  *(v1 + 120) = *v2;
  *(v1 + 136) = v5;
  *(v1 + 216) = *(v1 + 424);
  *(v1 + 152) = v3;

  return MEMORY[0x2822009F8](sub_240690A00, 0, 0);
}

uint64_t sub_240690A00()
{
  v1 = v0[66];
  v0[72] = *&v1[OBJC_IVAR___AKModernAppleIDAuthenticationContext_model];
  v2 = swift_task_alloc();
  v0[73] = v2;
  *(v2 + 16) = v0 + 15;
  v3 = swift_allocObject();
  v0[74] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v6 = sub_24075A344();
  v0[75] = v6;
  v0[76] = v5;

  return MEMORY[0x2822009F8](sub_240690B10, v6, v5);
}

uint64_t sub_240690B10()
{
  v1 = *(v0[72] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_240690C08;
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];

  return sub_2405D1864((v0 + 59), v1, sub_24069F0E0, v4, &unk_240774848, v3, v5, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_240690C08()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = sub_240690E88;
  }

  else
  {
    v5 = sub_240690D44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240690D44()
{

  sub_2405AE36C(v0 + 120);

  return MEMORY[0x2822009F8](sub_240690DC0, 0, 0);
}

uint64_t sub_240690DC0()
{
  v13 = v0;
  v1 = *(v0 + 624);
  v8 = *(v0 + 472);
  v9 = *(v0 + 488);
  v10 = *(v0 + 504);
  sub_2405A26A4(v11);
  v6 = v11[1];
  v7 = v11[0];
  v2 = v12;
  sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  if (!v1)
  {
    v4 = *(v0 + 512);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240690E88()
{

  return MEMORY[0x2822009F8](sub_240690EFC, 0, 0);
}

uint64_t sub_240690EFC()
{
  sub_2405AE36C(v0 + 120);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240690F60()
{
  v1 = *(v0[80] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[84] = v2;
  *v2 = v0;
  v2[1] = sub_240691054;
  v3 = v0[81];
  v4 = v0[80];
  v5 = MEMORY[0x277D84F78] + 8;

  return sub_2405D1864(v2, v1, sub_24069EE60, v3, &unk_240774820, 0, v4, v5);
}

uint64_t sub_240691054()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_240691308;
  }

  else
  {
    v5 = sub_240691190;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240691190()
{

  return MEMORY[0x2822009F8](sub_2406911F8, 0, 0);
}

uint64_t sub_2406911F8(uint64_t a1)
{
  v2 = sub_240759AC4();
  v3 = sub_24075A5C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "User proceeded past alert, continuing to attempt login", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 688) = v5;
  *v5 = v1;
  v5[1] = sub_240691388;

  return sub_24068D83C(v1 + 224);
}

uint64_t sub_240691308()
{

  return MEMORY[0x2822009F8](sub_240691370, 0, 0);
}

uint64_t sub_240691388()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  *(v1 + 80) = *(v1 + 288);
  *(v1 + 96) = v2;
  *(v1 + 112) = *(v1 + 320);
  v3 = *(v1 + 240);
  *(v1 + 16) = *(v1 + 224);
  *(v1 + 32) = v3;
  v4 = *(v1 + 272);
  *(v1 + 48) = *(v1 + 256);
  *(v1 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2406914A4, 0, 0);
}

uint64_t sub_2406914A4()
{
  v1 = v0[66];
  v2 = swift_task_alloc();
  v0[87] = v2;
  *(v2 + 16) = v0 + 2;
  v3 = swift_allocObject();
  v0[88] = v3;
  *(v3 + 16) = v1;
  v4 = v0[83];
  v5 = v0[82];
  v6 = v1;

  return MEMORY[0x2822009F8](sub_240691550, v5, v4);
}

uint64_t sub_240691550()
{
  v1 = *(v0[80] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[89] = v2;
  *v2 = v0;
  v2[1] = sub_240691648;
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[80];

  return sub_2405D1864((v0 + 54), v1, sub_24069EE70, v4, &unk_240774838, v3, v5, &type metadata for AuthenticationModel.BasicLogin.Submission);
}

uint64_t sub_240691648()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_2406918C4;
  }

  else
  {
    v5 = sub_240691784;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240691784()
{

  sub_2405AE36C(v0 + 16);

  return MEMORY[0x2822009F8](sub_240691800, 0, 0);
}

uint64_t sub_240691800()
{
  v13 = v0;
  v1 = *(v0 + 720);
  v8 = *(v0 + 432);
  v9 = *(v0 + 448);
  v10 = *(v0 + 464);
  sub_2405A26A4(v11);
  v6 = v11[1];
  v7 = v11[0];
  v2 = v12;
  sub_2405B0558(v8, *(&v8 + 1), v9, *(&v9 + 1), v10);
  if (!v1)
  {
    v4 = *(v0 + 512);
    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2406918C4()
{

  return MEMORY[0x2822009F8](sub_240691938, 0, 0);
}

uint64_t sub_240691938()
{
  sub_2405AE36C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24069199C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a6)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
    v19 = swift_allocBox();
    v13 = v12;
    v14 = *(v11 + 48);
    swift_getErrorValue();

    Error.into()(v22, v20);
    v15 = v21;
    *(v13 + 81) = 1;
    v16 = v20[1];
    v17 = v20[2];
    *(v13 + 32) = v20[0];
    *(v13 + 48) = v16;
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 64) = v17;
    *(v13 + 80) = v15;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v18 = *(type metadata accessor for AuthenticationModel(0) + 40);
    sub_24069EC88(v10 + v18, v13 + v14);
    *(v10 + v18) = v19;
    type metadata accessor for AuthenticationModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_240691AF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for AuthenticationModel.State(0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240691BC0, 0, 0);
}

uint64_t sub_240691BC0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_projectBox();
    sub_24069F038(v6, v4);
    v7 = *(v4 + 48);
    v15 = *(v4 + 40);
    v16 = *(v4 + 32);
    v8 = *(v4 + 56);
    v9 = *(v4 + 64);
    v14 = *(v4 + 72);
    v10 = *(v4 + 81);
    v11 = *(v5 + 48);
    LOBYTE(v5) = *(v4 + 80);
    sub_24069EFD8(v4 + v11, type metadata accessor for AuthenticationModel.State);

    sub_2405AEA5C(v16, v15, v7, v8, v9, v14, v5);
  }

  else
  {
    sub_24069EFD8(*(v0 + 56), type metadata accessor for AuthenticationModel.State);
    v10 = 0;
  }

  **(v0 + 16) = v10;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_240691EE8(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[7] = a1;
  v5[8] = a5;
  v5[9] = _Block_copy(aBlock);
  if (a2)
  {
    v5[10] = sub_24075A0B4();
    v5[11] = v10;
    if (a3)
    {
LABEL_3:
      v11 = sub_24075A0B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5[10] = 0;
    v5[11] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  v5[12] = v11;
  v5[13] = v12;
  v13 = a5;
  v14 = a1;

  return MEMORY[0x2822009F8](sub_240691FB8, 0, 0);
}

uint64_t sub_240691FB8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = v1;

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_240692088;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);

  return sub_240698D68(v0 + 16, v9, v10, v7, v8, v5, v6);
}

uint64_t sub_240692088()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 120) = v0;
  v4 = *(v3 + 32);
  *(v3 + 128) = *(v3 + 16);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v2 + 48);

  if (v0)
  {

    v5 = sub_240692378;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v5 = sub_240692214;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240692214()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  if (!v1)
  {

    goto LABEL_11;
  }

  if (*(v0 + 136))
  {
    v3 = sub_24075A084();

    if (*(v0 + 152))
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if (*(v0 + 160))
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = 0;
  if (!*(v0 + 152))
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = sub_24075A084();

  if (!*(v0 + 160))
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = sub_240759F54();

LABEL_10:
  v6 = *(v0 + 72);
  (v6)[2](v6, v3, v4, v5, 0);
  _Block_release(v6);

LABEL_11:
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_240692378()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 120);
  if (v1)
  {
    v4 = *(v0 + 72);
    v5 = sub_2407595C4();

    (v4)[2](v4, 0, 0, 0, v5);
    _Block_release(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240692458(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_24069EFD8(v3, type metadata accessor for AuthenticationModel.State);
  v4 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a2 + 96);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  v6 = *(a2 + 48);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = v6;
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  return sub_2405AE958(a2, v8);
}

uint64_t sub_2406924F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = type metadata accessor for AuthenticationModel.State(0);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for AuthenticationModel.BindableState(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406925BC, 0, 0);
}

uint64_t sub_2406925BC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240590E6C(v2);
  v5 = &v2[*(v1 + 24)];
  v7 = *(v5 + 8);
  v6 = *(v5 + 9);
  v8 = *(v5 + 10);
  v9 = *(v5 + 11);
  v10 = v5[96];
  sub_2405B04B4(v7, v6, v8, v9, v5[96]);
  sub_24069EFD8(v2, type metadata accessor for AuthenticationModel.BindableState);
  if (v10 != 255)
  {
    v11 = *(v0 + 120);
    *v11 = v7;
    *(v11 + 8) = v6;
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10;
LABEL_42:

    v48 = *(v0 + 8);

    return v48();
  }

  sub_24069ECF8(v3 + v4, *(v0 + 152));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 152);
  if (EnumCaseMultiPayload != 2)
  {
    sub_24069EFD8(v13, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v24 = xmmword_24075D8E0;
    swift_willThrow();
    goto LABEL_42;
  }

  v14 = *v13;
  v15 = *(v13 + 16);
  *(v0 + 48) = *(v13 + 32);
  v16 = *(v13 + 48);
  v17 = *(v13 + 64);
  v18 = *(v13 + 80);
  *(v0 + 112) = *(v13 + 96);
  *(v0 + 80) = v17;
  *(v0 + 96) = v18;
  *(v0 + 64) = v16;
  *(v0 + 16) = v14;
  *(v0 + 32) = v15;
  if (*(v0 + 52) != 1 || (v19 = *(v0 + 136) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier, v20 = *v19, *(v0 + 176) = *v19, *(v0 + 184) = *(v19 + 8), !v20))
  {
    v25 = *(v0 + 24);
    if (v25)
    {
      v26 = *(v0 + 40);
      if (v26)
      {
        v27 = *(v0 + 16);
        v28 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v28 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          v29 = *(v0 + 32);
          v30 = HIBYTE(v26) & 0xF;
          if ((v26 & 0x2000000000000000) == 0)
          {
            v30 = v29 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v31 = *(v0 + 120);

            sub_2405AE36C(v0 + 16);
            *v31 = v27;
            *(v31 + 8) = v25;
            *(v31 + 16) = v29;
            *(v31 + 24) = v26;
            *(v31 + 32) = 1;
            goto LABEL_42;
          }
        }
      }
    }

    v32 = *(v0 + 50);
    if (v32 != 2 && (v32 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v33 = sub_240759AE4();
      __swift_project_value_buffer(v33, qword_27E4B8518);
      v34 = sub_240759AC4();
      v35 = sub_24075A5C4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_240579000, v34, v35, "Client decided to skip basic login, means they are cancelling", v36, 2u);
        MEMORY[0x245CC76B0](v36, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v38 = 3;
LABEL_33:
      *v37 = v38;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      *(v37 + 40) = 0;
      *(v37 + 48) = 6;
      swift_willThrow();
LABEL_41:
      sub_2405AE36C(v0 + 16);
      goto LABEL_42;
    }

    v39 = *(v0 + 49);
    if (v39 != 2 && (v39 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v40 = sub_240759AE4();
      __swift_project_value_buffer(v40, qword_27E4B8518);
      v41 = sub_240759AC4();
      v42 = sub_24075A5C4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_240579000, v41, v42, "Client decided to cancel basic login", v43, 2u);
        MEMORY[0x245CC76B0](v43, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v38 = 2;
      goto LABEL_33;
    }

    v44 = *(v0 + 72);
    if (v44)
    {
      v45 = v44;
      if ([v45 ak_isUserCancelError])
      {
        sub_2405B8998();
        swift_allocError();
        v47 = 2;
LABEL_40:
        *v46 = v47;
        *(v46 + 8) = 0u;
        *(v46 + 24) = 0u;
        *(v46 + 40) = 0;
        *(v46 + 48) = 6;
        swift_willThrow();

        goto LABEL_41;
      }

      v45 = v45;
      if ([v45 ak_isUserSkippedError])
      {
        sub_2405B8998();
        swift_allocError();
        v47 = 3;
        goto LABEL_40;
      }

      sub_2405AE36C(v0 + 16);
    }

    else
    {
      sub_2405AE36C(v0 + 16);
    }

    v49 = *(v0 + 120);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = -1;
    goto LABEL_42;
  }

  v21 = *(v0 + 64);

  v50 = (v20 + *v20);
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *v22 = v0;
  v22[1] = sub_240692C30;

  return v50(v21);
}

uint64_t sub_240692C30()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_240693144;
  }

  else
  {
    sub_24058CA60(*(v2 + 176), *(v2 + 184));
    v3 = sub_240692D4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240692D4C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = *(v0 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 32);
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:
    v8 = *(v0 + 50);
    if (v8 != 2 && (v8 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v9 = sub_240759AE4();
      __swift_project_value_buffer(v9, qword_27E4B8518);
      v10 = sub_240759AC4();
      v11 = sub_24075A5C4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_240579000, v10, v11, "Client decided to skip basic login, means they are cancelling", v12, 2u);
        MEMORY[0x245CC76B0](v12, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v14 = 3;
LABEL_24:
      *v13 = v14;
      *(v13 + 8) = 0u;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0;
      *(v13 + 48) = 6;
      swift_willThrow();
LABEL_32:
      sub_2405AE36C(v0 + 16);

      v24 = *(v0 + 8);
      goto LABEL_36;
    }

    v15 = *(v0 + 49);
    if (v15 != 2 && (v15 & 1) != 0)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v16 = sub_240759AE4();
      __swift_project_value_buffer(v16, qword_27E4B8518);
      v17 = sub_240759AC4();
      v18 = sub_24075A5C4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_240579000, v17, v18, "Client decided to cancel basic login", v19, 2u);
        MEMORY[0x245CC76B0](v19, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      v14 = 2;
      goto LABEL_24;
    }

    v20 = *(v0 + 72);
    if (v20)
    {
      v21 = v20;
      if ([v21 ak_isUserCancelError])
      {
        sub_2405B8998();
        swift_allocError();
        v23 = 2;
LABEL_31:
        *v22 = v23;
        *(v22 + 8) = 0u;
        *(v22 + 24) = 0u;
        *(v22 + 40) = 0;
        *(v22 + 48) = 6;
        swift_willThrow();

        goto LABEL_32;
      }

      v21 = v21;
      if ([v21 ak_isUserSkippedError])
      {
        sub_2405B8998();
        swift_allocError();
        v23 = 3;
        goto LABEL_31;
      }

      sub_2405AE36C(v0 + 16);
    }

    else
    {
      sub_2405AE36C(v0 + 16);
    }

    v25 = *(v0 + 120);
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = -1;
    goto LABEL_35;
  }

  v7 = *(v0 + 120);

  sub_2405AE36C(v0 + 16);
  *v7 = v2;
  *(v7 + 8) = v1;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = 1;
LABEL_35:

  v24 = *(v0 + 8);
LABEL_36:

  return v24();
}

uint64_t sub_240693144()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_2405AE36C((v0 + 2));
  sub_24058CA60(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2406931EC()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069328C;
  v3 = *(v0 + 16);

  return sub_24069BAA4(v3);
}

uint64_t sub_24069328C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24069338C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240693420, 0, 0);
}

uint64_t sub_240693420()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 40);
  if (EnumCaseMultiPayload == 4)
  {
    v6 = *v5;
    v7 = *(v5 + 32);
    v8 = *(v5 + 40);
    v9 = *(v5 + 48);
    v10 = *(v5 + 56);
    v11 = *(v5 + 64);
    v12 = *(v5 + 72);
    if (*(v5 + 24) == 1)
    {

      sub_2405AE990(v7, v8, v9, v10, v11);
      if (v12)
      {

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = sub_24075A584();

      sub_2405AE990(v7, v8, v9, v10, v11);
    }

    **(v0 + 16) = v13;

    v15 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v14 = xmmword_24075D8E0;
    swift_willThrow();

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_24069377C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2406937F4, 0, 0);
}

uint64_t sub_2406937F4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_240693894;
  v3 = *(v0 + 16);

  return sub_24069BAA4(v3);
}

uint64_t sub_240693894(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_240693A40;
  }

  else
  {
    v4 = sub_2406939A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406939A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 24);
    v3[2](v3, *(v0 + 40), 0);

    _Block_release(v3);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240693A40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = sub_2407595C4();

    (v3)[2](v3, 0, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240693B18()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_240699A90(v3);
}

id sub_240693BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v9 = result;
    [result _updateWithValuesFromContext_];
    v13 = 1;
    sub_2405AE990(0, 1, 0, 0, 0);
    v10 = v13;
    *v7 = v9;
    *(v7 + 8) = xmmword_24075D8D0;
    v7[24] = v10;
    *(v7 + 2) = xmmword_24075D8E0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    swift_storeEnumTagMultiPayload();
    v11 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v7, a1 + *(v11 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240693E84(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240693EFC, 0, 0);
}

uint64_t sub_240693EFC()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_240699A90(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentSecondFactorAlertWithError(_:title:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_240693FC4, 0, 0);
}

uint64_t sub_240693FC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);

  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_240694090;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_24069C368(v6, v9, v7, v8, v5, v10);
}

uint64_t sub_240694090(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

id sub_2406941E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v18 = result;
    [result _updateWithValuesFromContext_];
    if (a7)
    {
      a7 = sub_2407595C4();
    }

    v22 = 1;

    sub_2405AE990(0, 1, 0, 0, 0);
    v19 = v22;
    *v16 = v18;
    *(v16 + 8) = xmmword_24075D8D0;
    v16[24] = v19;
    *(v16 + 4) = a3;
    *(v16 + 5) = a4;
    *(v16 + 6) = a5;
    *(v16 + 7) = a6;
    *(v16 + 8) = a7;
    *(v16 + 9) = 0;
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v16, a1 + *(v20 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240694350(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406943E4, 0, 0);
}

uint64_t sub_2406943E4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 40);
  if (EnumCaseMultiPayload == 5)
  {
    v6 = *v5;
    v7 = *(v5 + 32);
    v8 = *(v5 + 40);
    v9 = *(v5 + 48);
    v10 = *(v5 + 56);
    v11 = *(v5 + 64);
    v12 = *(v5 + 72);
    if (*(v5 + 24) == 1)
    {

      sub_2405AE990(v7, v8, v9, v10, v11);
      if (v12)
      {

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = sub_24075A584();

      sub_2405AE990(v7, v8, v9, v10, v11);
    }

    **(v0 + 16) = v13;

    v15 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v14 = xmmword_24075D8E0;
    swift_willThrow();

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_240694770(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    v5[5] = sub_24075A0B4();
    v5[6] = v10;
    if (a3)
    {
LABEL_3:
      v11 = sub_24075A0B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5[5] = 0;
    v5[6] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  v5[7] = v11;
  v5[8] = v12;
  v13 = a5;
  v14 = a1;

  return MEMORY[0x2822009F8](sub_240694840, 0, 0);
}

uint64_t sub_240694840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_24069490C;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_24069C368(v10, v7, v8, v5, v6, v9);
}

uint64_t sub_24069490C(uint64_t a1)
{
  v3 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v4 = v3[2];

    v5 = sub_240694B0C;
  }

  else
  {
    v6 = v3[2];
    swift_bridgeObjectRelease_n();

    v5 = sub_240694A6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240694A6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 80);
  if (v1)
  {
    v4 = *(v0 + 32);
    v4[2](v4, *(v0 + 80), 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240694B0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 88);
  if (v1)
  {
    v4 = *(v0 + 32);
    v5 = sub_2407595C4();

    (v4)[2](v4, 0, v5);
    _Block_release(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240694DF8(int a1, void *aBlock)
{
  _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_240694C00, 0, 0);
}

uint64_t ModernAppleIDAuthenticationContext.presentServerProvidedUI(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240694E80, 0, 0);
}

uint64_t sub_240694E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_240694F24;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069CC70(v6, v5);
}

uint64_t sub_240694F24(uint64_t a1, uint64_t a2)
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

id sub_240695034(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v10 = result;
    result = [result _updateWithValuesFromContext_];
    if (a3)
    {
      *v8 = v10;
      v8[1] = a3;
      v8[3] = 0;
      v8[4] = 0;
      v8[2] = 0;
      v11 = a3;
      swift_storeEnumTagMultiPayload();
      v12 = type metadata accessor for AuthenticationModel(0);
      return sub_24069ED5C(v8, a1 + *(v12 + 40));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240695134(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406951C8, 0, 0);
}

uint64_t sub_2406951C8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[5];
  if (EnumCaseMultiPayload != 7)
  {
    sub_24069EFD8(v5, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v13 = xmmword_24075D8E0;
    swift_willThrow();
LABEL_7:

    v14 = v0[1];
    goto LABEL_13;
  }

  v7 = *v5;
  v6 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[4];
  if (v9)
  {
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      sub_240759F64();
    }

    goto LABEL_12;
  }

  if (v8)
  {
    swift_willThrow();

    goto LABEL_7;
  }

  v9 = 1;
LABEL_12:
  v15 = v0[2];
  *v15 = v9;
  v15[1] = 0;

  v14 = v0[1];
LABEL_13:

  return v14();
}

uint64_t sub_240695560(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2406955EC, 0, 0);
}

uint64_t sub_2406955EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_240695690;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069CC70(v6, v5);
}

uint64_t sub_240695690(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v5 = sub_2406958A0;
  }

  else
  {
    v5 = sub_2406957A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2406957A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  if (v1)
  {
    if (*(v0 + 56))
    {
      v3 = sub_240759F54();
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    (v5)[2](v5, v4, v3, 0);

    _Block_release(v5);
  }

  else
  {
    v3 = *(v0 + 48);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2406958A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 64);
  if (v1)
  {
    v4 = *(v0 + 32);
    v5 = sub_2407595C4();

    (v4)[2](v4, 0, 0, v5);
    _Block_release(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240695984()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_24069A348(v3);
}

id sub_240695A24(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_2407595E4();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_240759634();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v25 = sub_240759454();
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v24);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a2;
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v18 = result;
    [result _updateWithValuesFromContext_];
    (*(v10 + 56))(v8, 1, 1, v9);
    (*(v26 + 104))(v5, *MEMORY[0x277CC91D8], v27);
    sub_240759624();
    sub_240759414();
    v19 = objc_allocWithZone(MEMORY[0x277CF02D8]);
    v20 = sub_2407593F4();
    v21 = [v19 initWithRequest:v20 requestType:0];

    (*(v11 + 8))(v13, v25);
    *v15 = v18;
    v15[1] = v21;
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = 0;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for AuthenticationModel(0);
    return sub_24069ED5C(v15, v28 + *(v22 + 40));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240695F1C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240695F94, 0, 0);
}

uint64_t sub_240695F94()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_24069A348(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentNativeRecoveryUI(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240696054, 0, 0);
}

uint64_t sub_240696054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_24069F0DC;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069D540(v6, v5);
}

uint64_t sub_2406960F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24069618C, 0, 0);
}

uint64_t sub_24069618C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[5];
  if (EnumCaseMultiPayload != 9)
  {
    sub_24069EFD8(v5, type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v11 = xmmword_24075D8E0;
    swift_willThrow();
LABEL_7:

    v12 = v0[1];
    goto LABEL_9;
  }

  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  if (v9)
  {
    v10 = v9;
    sub_240759F64();
  }

  if (v8)
  {
    swift_willThrow();

    goto LABEL_7;
  }

  v13 = v0[2];

  *v13 = 1;

  v12 = v0[1];
LABEL_9:

  return v12();
}

uint64_t sub_2406964F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_240696584, 0, 0);
}

uint64_t sub_240696584()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_240696628;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069D540(v6, v5);
}

uint64_t sub_240696628(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_24069F0B8;
  }

  else
  {
    v4 = sub_24069673C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24069673C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  if (v1)
  {
    if (*(v0 + 48))
    {
      v3 = sub_240759F54();
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v0 + 32);
    (v4)[2](v4, v3, 0);
    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24069683C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24069F0D8;
  v3 = *(v0 + 16);

  return sub_24069A758(v3);
}

uint64_t sub_240696A50(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240696AC8, 0, 0);
}

uint64_t sub_240696AC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406901AC;
  v3 = *(v0 + 16);

  return sub_24069A758(v3);
}

uint64_t ModernAppleIDAuthenticationContext.presentFidoAuth(for:fidoContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_240696B88, 0, 0);
}

uint64_t sub_240696B88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_240696C2C;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069DE10(v6, v5);
}

uint64_t sub_240696C2C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_240696D2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v11 = result;
    [result _updateWithValuesFromContext_];
    *v9 = v11;
    v9[1] = a3;
    v9[2] = 0;
    v9[3] = 0;
    swift_storeEnumTagMultiPayload();
    v12 = *(type metadata accessor for AuthenticationModel(0) + 40);
    v13 = a3;
    return sub_24069ED5C(v9, a1 + v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240696E2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240696EC0, 0, 0);
}

uint64_t sub_240696EC0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[5];
  if (EnumCaseMultiPayload == 10)
  {
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v9)
    {

      v7 = v6;
      v6 = v8;
LABEL_4:
      v10 = v0[2];

      *v10 = v9;

      v11 = v0[1];
      goto LABEL_7;
    }

    if (!v8)
    {
      v9 = 1;
      goto LABEL_4;
    }

    swift_willThrow();
  }

  else
  {
    sub_24069EFD8(v0[5], type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v12 = xmmword_24075D8E0;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_7:

  return v11();
}

uint64_t sub_2406971EC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_240697278, 0, 0);
}

uint64_t sub_240697278()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_24069731C;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24069DE10(v6, v5);
}

uint64_t sub_24069731C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_2406974D0;
  }

  else
  {
    v4 = sub_240697430;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240697430()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 48);
  if (v1)
  {
    v4 = *(v0 + 32);
    v4[2](v4, *(v0 + 48), 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2406974D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = *(v0 + 32);
    v5 = sub_2407595C4();

    (v4)[2](v4, 0, v5);
    _Block_release(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t ModernAppleIDAuthenticationContext.presentKeepUsingUI(forAppleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2406975B4, 0, 0);
}

uint64_t sub_2406975B4()
{
  v1 = *(v0 + 32);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_240697660;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_24069AA34(v4, v5, v3);
}

uint64_t sub_240697660(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

id sub_240697768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthenticationModel.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277CF0170]) initWithContext_];
  if (result)
  {
    v12 = result;
    result = [result _updateWithValuesFromContext_];
    if (a4)
    {
      *v10 = v12;
      *(v10 + 1) = a3;
      *(v10 + 2) = a4;
      v10[24] = 2;

      swift_storeEnumTagMultiPayload();
      v13 = type metadata accessor for AuthenticationModel(0);
      return sub_24069ED5C(v10, a1 + *(v13 + 40));
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24069787C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AuthenticationModel.State(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240697910, 0, 0);
}

uint64_t sub_240697910()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AuthenticationModel(0);
  sub_24069ECF8(v2 + *(v3 + 40), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 40);
  if (EnumCaseMultiPayload == 11)
  {
    v6 = *v5;
    v7 = *(v5 + 24);

    if (v7 == 2 || (v7 & 1) == 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    **(v0 + 16) = v8;

    v10 = *(v0 + 8);
  }

  else
  {
    sub_24069EFD8(*(v0 + 40), type metadata accessor for AuthenticationModel.State);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7F8, &qword_2407747B0);
    sub_240590128(&qword_27E4BB800, &qword_27E4BB7F8, &qword_2407747B0, &protocol conformance descriptor for _Coordinated<A>.CommonError);
    swift_allocError();
    *v9 = xmmword_24075D8E0;
    swift_willThrow();

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_240697C20(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_24075A0B4();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_240697CBC, 0, 0);
}

uint64_t sub_240697CBC()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_240697D6C;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_24069AA34(v5, v3, v4);
}

uint64_t sub_240697D6C(char a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_240697F14;
  }

  else
  {

    v4 = sub_240697E8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240697E8C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v2[2](v2, *(v0 + 64), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240697F14()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 56);
    v4 = sub_2407595C4();

    (v2)[2](v2, 0, v4);
    _Block_release(v2);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240697FF4()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_240698094;
  v3 = *(v0 + 16);

  return sub_24069B320(v3);
}

uint64_t sub_240698094(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_24069819C(uint64_t a1)
{
  type metadata accessor for AuthenticationModel.State(0);
  v2 = swift_allocBox();
  v4 = v3;
  v5 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_24069EC88(a1 + v5, v4);
  *(a1 + v5) = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240698390(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_240698408, 0, 0);
}

uint64_t sub_240698408()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2406984A8;
  v3 = *(v0 + 16);

  return sub_24069B320(v3);
}

uint64_t sub_2406984A8(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_240698648;
  }

  else
  {
    v4 = sub_2406985C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406985C0()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v2[2](v2, *(v0 + 48), 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240698648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = sub_2407595C4();

    (v3)[2](v3, 0, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240698700(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_2406987A0;

  return sub_24068E8E0((v2 + 9), a2);
}

uint64_t sub_2406987A0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24069892C;
  }

  else
  {
    v2 = sub_2406988B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406988B4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  *v1 = *(v0 + 72);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24069892C()
{
  v1 = *(v0 + 144);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 128);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 128);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 144);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 128);

  swift_willThrow();
LABEL_24:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_240698D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;
  v14 = swift_task_alloc();
  v7[18] = v14;
  *v14 = v7;
  v14[1] = sub_240698E44;

  return sub_24069052C((v7 + 9), a2, a3, a4, a5, a6, a7);
}

uint64_t sub_240698E44()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_240698FE8;
  }

  else
  {
    v2 = sub_240698F58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240698F58()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  v3 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  *v2 = v7;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240698FE8()
{
  v1 = *(v0 + 152);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 128);
        v16 = *(v0 + 136);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v15 = *(v0 + 128);
        v16 = *(v0 + 136);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 152);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 152);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v31 = *(v0 + 128);
  v32 = *(v0 + 136);

  swift_willThrow();
LABEL_24:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_240699434(uint64_t a1)
{
  *(v1 + 80) = a1;
  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v1;
  v3[1] = sub_2406994D4;

  return sub_24068F6AC(v1 + 65, a1);
}

uint64_t sub_2406994D4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_240699650;
  }

  else
  {
    v2 = sub_2406995E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406995E8()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240699650()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 96);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 96);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 80);

  swift_willThrow();
LABEL_24:
  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_240699AB0()
{
  v1 = v0[10];
  v0[11] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v4 = sub_24075A344();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_240699B98, v4, v3);
}

uint64_t sub_240699B98()
{
  v1 = *(v0[11] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_240699C8C;
  v4 = v0[11];
  v3 = v0[12];
  v5 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v1, sub_24069EE20, v3, &unk_240774808, 0, v4, v5);
}

uint64_t sub_240699C8C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_240699EA0;
  }

  else
  {
    v5 = sub_240699DC8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240699DC8()
{
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_240699E38, 0, 0);
}

uint64_t sub_240699E38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 66);

  return v1(v2);
}

uint64_t sub_240699EA0()
{

  return MEMORY[0x2822009F8](sub_240699F08, 0, 0);
}

uint64_t sub_240699F08()
{
  v1 = *(v0 + 128);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 128);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 128);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 80);

  swift_willThrow();
LABEL_24:
  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_24069A368()
{
  v1 = v0[10];
  v0[11] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v4 = sub_24075A344();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_24069A450, v4, v3);
}

uint64_t sub_24069A450()
{
  v1 = *(v0[11] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24069A544;
  v4 = v0[11];
  v3 = v0[12];
  v5 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v1, sub_24069EE00, v3, &unk_2407747D8, 0, v4, v5);
}

uint64_t sub_24069A544()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_24069A6F0;
  }

  else
  {
    v5 = sub_24069A680;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069A680()
{
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_24069F0D4, 0, 0);
}

uint64_t sub_24069A6F0()
{

  return MEMORY[0x2822009F8](sub_24069F0C8, 0, 0);
}

uint64_t sub_24069A778()
{
  *(v0 + 88) = *(*(v0 + 80) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v2 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_24069A850, v2, v1);
}

uint64_t sub_24069A850()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24069A920;
  v6 = *(v0 + 88);

  return sub_2405D041C(v3, sub_24069F0B4, 0, v6, ObjectType, v2);
}

uint64_t sub_24069A920()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24069F0CC;
  }

  else
  {
    v2 = sub_24069F0E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24069AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_24069AA58, 0, 0);
}

uint64_t sub_24069AA58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[13] = *(v3 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v6 = sub_24075A344();
  v0[15] = v6;
  v0[16] = v5;

  return MEMORY[0x2822009F8](sub_24069AB48, v6, v5);
}

uint64_t sub_24069AB48()
{
  v1 = *(v0[13] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_24069AC3C;
  v4 = v0[13];
  v3 = v0[14];
  v5 = MEMORY[0x277D839B0];

  return sub_2405D1864(v0 + 65, v1, sub_24069ECEC, v3, &unk_2407747A8, 0, v4, v5);
}

uint64_t sub_24069AC3C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24069AE5C;
  }

  else
  {
    v5 = sub_24069AD78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069AD78()
{
  *(v0 + 66) = *(v0 + 65);

  return MEMORY[0x2822009F8](sub_24069ADE8, 0, 0);
}

uint64_t sub_24069ADE8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 66);

  return v1(v2);
}

uint64_t sub_24069AE5C()
{

  return MEMORY[0x2822009F8](sub_24069AEC4, 0, 0);
}

uint64_t sub_24069AEC4()
{
  v1 = *(v0 + 144);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 144);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 80);

  swift_willThrow();

LABEL_24:
  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_24069B340()
{
  *(v0 + 88) = *(*(v0 + 80) + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v2 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_24069B418, v2, v1);
}

uint64_t sub_24069B418()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24069B4E8;
  v6 = *(v0 + 88);

  return sub_2405D041C(v3, sub_24069F0B4, 0, v6, ObjectType, v2);
}

uint64_t sub_24069B4E8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24069B664;
  }

  else
  {
    v2 = sub_24069B5FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24069B5FC()
{
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_24069B664()
{
  v1 = *(v0 + 104);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 80);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 104);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 104);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 80);

  swift_willThrow();
LABEL_24:
  v31 = *(v0 + 8);

  return v31(0);
}

uint64_t sub_24069BAC4()
{
  v1 = v0[11];
  v0[12] = *(v1 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v4 = sub_24075A344();
  v0[14] = v4;
  v0[15] = v3;

  return MEMORY[0x2822009F8](sub_24069BBAC, v4, v3);
}

uint64_t sub_24069BBAC()
{
  v1 = *(v0[12] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB828, &qword_240774800);
  *v2 = v0;
  v2[1] = sub_24069BCB0;
  v5 = v0[12];
  v4 = v0[13];

  return sub_2405D1864((v0 + 9), v1, sub_24069EE40, v4, &unk_240774810, 0, v5, v3);
}

uint64_t sub_24069BCB0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_24069BEC4;
  }

  else
  {
    v5 = sub_24069BDEC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069BDEC()
{
  *(v0 + 144) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069BE5C, 0, 0);
}

uint64_t sub_24069BE5C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_24069BEC4()
{

  return MEMORY[0x2822009F8](sub_24069BF2C, 0, 0);
}

uint64_t sub_24069BF2C()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 136);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 136);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 88);

  swift_willThrow();
LABEL_24:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24069C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_24069C390, 0, 0);
}

uint64_t sub_24069C390()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  *(v0 + 136) = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v5 = *(v0 + 96);
  v4 = *(v0 + 112);
  *(v3 + 16) = v2;
  *(v3 + 24) = v5;
  *(v3 + 40) = v4;
  *(v3 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v7 = sub_24075A344();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x2822009F8](sub_24069C48C, v7, v6);
}

uint64_t sub_24069C48C()
{
  v1 = *(v0[17] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[21] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB828, &qword_240774800);
  *v2 = v0;
  v2[1] = sub_24069C590;
  v5 = v0[17];
  v4 = v0[18];

  return sub_2405D1864((v0 + 9), v1, sub_24069EE10, v4, &unk_2407747F8, 0, v5, v3);
}

uint64_t sub_24069C590()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_24069C7B0;
  }

  else
  {
    v5 = sub_24069C6CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069C6CC()
{
  *(v0 + 184) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069C73C, 0, 0);
}

uint64_t sub_24069C73C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_24069C7B0()
{

  return MEMORY[0x2822009F8](sub_24069C818, 0, 0);
}

uint64_t sub_24069C818()
{
  v1 = *(v0 + 176);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v16 = sub_240759AE4();
        __swift_project_value_buffer(v16, qword_27E4B8518);
        v17 = sub_240759AC4();
        v18 = sub_24075A5C4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_240579000, v17, v18, "Client skipped limited UI presentation, converting into AppleID error", v19, 2u);
          MEMORY[0x245CC76B0](v19, -1, -1);
        }

        v15 = *(v0 + 88);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 176);
  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B8518);
  v22 = v20;
  v23 = sub_240759AC4();
  v24 = sub_24075A5E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 176);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_240579000, v23, v24, "Error during limited UI presentation: %@", v26, 0xCu);
    sub_24061DD28(v27);
    MEMORY[0x245CC76B0](v27, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  v30 = *(v0 + 88);

  swift_willThrow();

LABEL_24:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_24069CC70(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_24069CC90, 0, 0);
}

uint64_t sub_24069CC90()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[14] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v5 = sub_24075A344();
  v0[16] = v5;
  v0[17] = v4;

  return MEMORY[0x2822009F8](sub_24069CD78, v5, v4);
}

uint64_t sub_24069CD78()
{
  v1 = *(v0[14] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB820, &qword_2407747F0);
  *v2 = v0;
  v2[1] = sub_24069CE7C;
  v5 = v0[14];
  v4 = v0[15];

  return sub_2405D1864((v0 + 9), v1, sub_24069EE08, v4, &unk_2407747E8, 0, v5, v3);
}

uint64_t sub_24069CE7C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24069D094;
  }

  else
  {
    v5 = sub_24069CFB8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069CFB8()
{
  *(v0 + 160) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069D028, 0, 0);
}

uint64_t sub_24069D028()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  return v2(v3, v4);
}

uint64_t sub_24069D094()
{

  return MEMORY[0x2822009F8](sub_24069D0FC, 0, 0);
}

uint64_t sub_24069D0FC()
{
  v1 = *(v0 + 152);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v16 = *(v0 + 96);
        v15 = *(v0 + 104);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v16 = *(v0 + 96);
        v15 = *(v0 + 104);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 152);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 152);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v32 = *(v0 + 96);
  v31 = *(v0 + 104);

  swift_willThrow();
LABEL_24:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24069D540(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_24069D560, 0, 0);
}

uint64_t sub_24069D560()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[13] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v5 = sub_24075A344();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x2822009F8](sub_24069D648, v5, v4);
}

uint64_t sub_24069D648()
{
  v1 = *(v0[13] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
  *v2 = v0;
  v2[1] = sub_24069D74C;
  v5 = v0[13];
  v4 = v0[14];

  return sub_2405D1864((v0 + 9), v1, sub_24069EDE0, v4, &unk_2407747C8, 0, v5, v3);
}

uint64_t sub_24069D74C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24069D964;
  }

  else
  {
    v5 = sub_24069D888;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069D888()
{
  *(v0 + 152) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069D8F8, 0, 0);
}

uint64_t sub_24069D8F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2(v3);
}

uint64_t sub_24069D964()
{

  return MEMORY[0x2822009F8](sub_24069D9CC, 0, 0);
}

uint64_t sub_24069D9CC()
{
  v1 = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    if (v9 == 6)
    {
      v10 = v5 | v4 | v6 | v7 | v8;
      if ((v3 - 1) <= 1 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v11 = sub_240759AE4();
        __swift_project_value_buffer(v11, qword_27E4B8518);
        v12 = sub_240759AC4();
        v13 = sub_24075A5C4();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_240579000, v12, v13, "Client cancelled limited UI presentation, converting into AppleID error", v14, 2u);
          MEMORY[0x245CC76B0](v14, -1, -1);
        }

        v16 = *(v0 + 88);
        v15 = *(v0 + 96);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7003 userInfo:0];
        swift_willThrow();
LABEL_17:

        goto LABEL_24;
      }

      if (v3 == 3 && !v10)
      {

        if (qword_27E4B5EB8 != -1)
        {
          swift_once();
        }

        v17 = sub_240759AE4();
        __swift_project_value_buffer(v17, qword_27E4B8518);
        v18 = sub_240759AC4();
        v19 = sub_24075A5C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_240579000, v18, v19, "Client skipped limited UI presentation, converting into AppleID error", v20, 2u);
          MEMORY[0x245CC76B0](v20, -1, -1);
        }

        v16 = *(v0 + 88);
        v15 = *(v0 + 96);

        [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CEFF48] code:-7038 userInfo:0];
        swift_willThrow();

        goto LABEL_17;
      }
    }

    sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 144);
  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B8518);
  v23 = v21;
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 144);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Error during limited UI presentation: %@", v27, 0xCu);
    sub_24061DD28(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  v32 = *(v0 + 88);
  v31 = *(v0 + 96);

  swift_willThrow();
LABEL_24:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24069DE10(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_24069DE30, 0, 0);
}

uint64_t sub_24069DE30()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[13] = *(v2 + OBJC_IVAR___AKModernAppleIDAuthenticationContext_model);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB7E8, &qword_2407747A0);
  sub_240590128(&qword_27E4BB7F0, &qword_27E4BB7E8, &qword_2407747A0, &protocol conformance descriptor for _AnyCoordinated<A>);
  v5 = sub_24075A344();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x2822009F8](sub_24069DF18, v5, v4);
}

uint64_t sub_24069DF18()
{
  v1 = *(v0[13] + 16);
  swift_getObjectType();
  v2 = swift_task_alloc();
  v0[17] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB808, &qword_2407747C0);
  *v2 = v0;
  v2[1] = sub_24069E01C;
  v5 = v0[13];
  v4 = v0[14];

  return sub_2405D1864((v0 + 9), v1, sub_24069EDC0, v4, &unk_2407747B8, 0, v5, v3);
}

uint64_t sub_24069E01C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24069E1C8;
  }

  else
  {
    v5 = sub_24069E158;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24069E158()
{
  *(v0 + 152) = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_24069F0BC, 0, 0);
}

uint64_t sub_24069E1C8()
{

  return MEMORY[0x2822009F8](sub_24069F0D0, 0, 0);
}

uint64_t sub_24069E25C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240698390(v2, v3);
}

uint64_t sub_24069E308()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240697C20(v2, v3, v4);
}

uint64_t sub_24069E3BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2405CE450;

  return sub_2406971EC(v2, v3, v5, v4);
}

uint64_t sub_24069E47C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240696A50(v2, v3);
}

uint64_t sub_24069E528()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2406964F8(v2, v3, v4);
}

uint64_t sub_24069E5DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240695F1C(v2, v3);
}

uint64_t sub_24069E688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240695560(v2, v3, v4);
}

uint64_t sub_24069E73C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240694DF8(v2, v3);
}

uint64_t sub_24069E7F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2405DA4B0;

  return sub_240694770(v2, v3, v4, v5, v6);
}

uint64_t sub_24069E8B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240693E84(v2, v3);
}

uint64_t sub_24069E964()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_24069377C(v2, v3);
}

uint64_t objectdestroy_146Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24069EA68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2405DA4B0;

  return sub_240691EE8(v2, v3, v4, v5, v6);
}

uint64_t sub_24069EB30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240690094(v2, v3);
}

uint64_t sub_24069EBDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_24068F17C(v2, v3);
}