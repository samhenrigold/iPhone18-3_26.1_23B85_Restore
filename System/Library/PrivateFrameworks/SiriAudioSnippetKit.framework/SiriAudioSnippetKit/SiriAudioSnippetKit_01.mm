uint64_t sub_26628FB1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C746974627573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4C52556567616D69;
    }

    else
    {
      v3 = 0x646E616D6D6F63;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C746974627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x4C52556567616D69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x646E616D6D6F63)
    {
LABEL_34:
      v7 = sub_2662949FC();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

unint64_t sub_26628FCBC()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_26628FD20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2662937F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26628FD48(uint64_t a1)
{
  v2 = sub_266290294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628FD84(uint64_t a1)
{
  v2 = sub_266290294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628FDC0(uint64_t a1)
{
  v2 = sub_2662902E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628FDFC(uint64_t a1)
{
  v2 = sub_2662902E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628FE38(uint64_t a1)
{
  v2 = sub_26629033C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628FE74(uint64_t a1)
{
  v2 = sub_26629033C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628FEB0(uint64_t a1)
{
  v2 = sub_266290390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628FEEC(uint64_t a1)
{
  v2 = sub_266290390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioActionButtonSnippetRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B0F0, &qword_266297520);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B0F8, &qword_266297528);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B100, &qword_266297530);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B108, &qword_266297538);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266290294();
  sub_266294A5C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_26629033C();
      v9 = v21;
      sub_26629498C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2662902E8();
      v9 = v24;
      sub_26629498C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_266290390();
    sub_26629498C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_266290294()
{
  result = qword_28006B110;
  if (!qword_28006B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B110);
  }

  return result;
}

unint64_t sub_2662902E8()
{
  result = qword_28006B118;
  if (!qword_28006B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B118);
  }

  return result;
}

unint64_t sub_26629033C()
{
  result = qword_28006B120;
  if (!qword_28006B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B120);
  }

  return result;
}

unint64_t sub_266290390()
{
  result = qword_28006B128;
  if (!qword_28006B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B128);
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippetRole.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B130, &qword_266297540);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B138, &qword_266297548);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B140, &qword_266297550);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B148, &unk_266297558);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_266290294();
  v15 = v36;
  sub_266294A4C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_26629497C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_266282F40();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_26629489C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0);
      *v24 = &type metadata for SiriAudioActionButtonSnippetRole;
      sub_26629490C();
      sub_26629488C();
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
          sub_26629033C();
          sub_2662948FC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2662902E8();
          v26 = v17;
          sub_2662948FC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_266290390();
        sub_2662948FC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_2662909B4(uint64_t a1)
{
  v2 = sub_266290FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2662909F0(uint64_t a1)
{
  v2 = sub_266290FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266290A2C(uint64_t a1)
{
  v2 = sub_26629102C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266290A68(uint64_t a1)
{
  v2 = sub_26629102C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266290AA4(uint64_t a1)
{
  v2 = sub_266291080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266290AE0(uint64_t a1)
{
  v2 = sub_266291080();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_266290B1C()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F74747562;
  }
}

uint64_t sub_266290B78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26629391C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266290BA0(uint64_t a1)
{
  v2 = sub_266290F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266290BDC(uint64_t a1)
{
  v2 = sub_266290F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioActionButtonSnippetStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B150, &qword_266297568);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B158, &qword_266297570);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B160, &qword_266297578);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B168, &qword_266297580);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266290F84();
  sub_266294A5C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_26629102C();
      v9 = v21;
      sub_26629498C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_266290FD8();
      v9 = v24;
      sub_26629498C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_266291080();
    sub_26629498C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_266290F84()
{
  result = qword_28006B170;
  if (!qword_28006B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B170);
  }

  return result;
}

unint64_t sub_266290FD8()
{
  result = qword_28006B178;
  if (!qword_28006B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B178);
  }

  return result;
}

unint64_t sub_26629102C()
{
  result = qword_28006B180;
  if (!qword_28006B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B180);
  }

  return result;
}

unint64_t sub_266291080()
{
  result = qword_28006B188;
  if (!qword_28006B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B188);
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippetStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B190, &qword_266297588);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B198, &qword_266297590);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B1A0, &qword_266297598);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B1A8, &qword_2662975A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_266290F84();
  v15 = v36;
  sub_266294A4C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_26629497C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_266282F40();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_26629489C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0);
      *v24 = &type metadata for SiriAudioActionButtonSnippetStyle;
      sub_26629490C();
      sub_26629488C();
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
          sub_26629102C();
          sub_2662948FC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_266290FD8();
          v26 = v17;
          sub_2662948FC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_266291080();
        sub_2662948FC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t SiriAudioActionButtonSnippetModel.buttonLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioActionButtonSnippetModel.buttonLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioActionButtonSnippetModel.buttonRole.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SiriAudioActionButtonSnippetModel(uint64_t a1)
{
  result = qword_28006B1F8;
  if (!qword_28006B1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.buttonRole.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.buttonStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.buttonStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.buttonCommand.getter()
{
  type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_266291964@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_2662919BC(void **a1)
{
  v1 = *a1;
  type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioActionButtonSnippetModel.buttonCommand.setter(uint64_t a1)
{
  type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioActionButtonSnippetModel.buttonCommand.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t sub_266291B20()
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266291C04(uint64_t a1)
{
  sub_26629481C();
}

uint64_t sub_266291CD4(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

unint64_t sub_266291DB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266293A3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266291DE4(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006C6562;
  v3 = 0x614C6E6F74747562;
  v4 = 0xEB00000000656C79;
  v5 = 0x74536E6F74747562;
  if (*v1 != 2)
  {
    v5 = 0x6F436E6F74747562;
    v4 = 0xED0000646E616D6DLL;
  }

  if (*v1)
  {
    v3 = 0x6F526E6F74747562;
    v2 = 0xEA0000000000656CLL;
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

uint64_t sub_266291E84()
{
  v1 = 0x614C6E6F74747562;
  v2 = 0x74536E6F74747562;
  if (*v0 != 2)
  {
    v2 = 0x6F436E6F74747562;
  }

  if (*v0)
  {
    v1 = 0x6F526E6F74747562;
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

unint64_t sub_266291F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266293A3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266291F48(uint64_t a1)
{
  v2 = sub_266292544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266291F84(uint64_t a1)
{
  v2 = sub_266292544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioActionButtonSnippetModel.init(buttonLabel:buttonCommand:buttonRole:buttonStyle:)@<X0>(char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a4;
  v8 = *a5;
  sub_26629476C();
  v9 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  sub_2662880D0();
  result = sub_26629471C();
  *(a6 + *(v9 + 20)) = v7;
  *(a6 + *(v9 + 24)) = v8;
  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.init(title:subtitle:buttonLabel:imageSystemName:buttonCommand:buttonRole:buttonStyle:)@<X0>(uint64_t a6@<X8>, uint64_t a7, char *a8, char *a9)
{

  v10 = *a8;
  v11 = *a9;
  sub_26629476C();
  v12 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  sub_2662880D0();
  result = sub_26629471C();
  *(a6 + *(v12 + 20)) = v10;
  *(a6 + *(v12 + 24)) = v11;
  return result;
}

uint64_t SiriAudioActionButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B1B0, &qword_2662975A8);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_266292544();
  v28 = v8;
  sub_266294A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v22 = v6;
  v23 = v4;
  v13 = v11;
  v15 = v25;
  v14 = v26;
  LOBYTE(v30) = 0;
  v16 = v27;
  v30 = sub_26629494C();
  v31 = v17;
  sub_26629476C();
  v32 = 1;
  sub_266292598();
  sub_26629496C();
  v18 = v15;
  *(v13 + *(v9 + 20)) = v30;
  v32 = 2;
  sub_2662925EC();
  sub_26629496C();
  *(v13 + *(v9 + 24)) = v30;
  LOBYTE(v30) = 3;
  sub_266288C40(&qword_28006AFA8, MEMORY[0x277D63230]);
  v20 = v22;
  v19 = v23;
  sub_26629496C();
  sub_26629473C();
  (*(v24 + 8))(v20, v19);
  sub_2662880D0();
  sub_26629471C();
  (*(v18 + 8))(v28, v16);
  sub_266292640(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_2662926A4(v13);
}

unint64_t sub_266292544()
{
  result = qword_28006B1B8;
  if (!qword_28006B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1B8);
  }

  return result;
}

unint64_t sub_266292598()
{
  result = qword_28006B1C0;
  if (!qword_28006B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1C0);
  }

  return result;
}

unint64_t sub_2662925EC()
{
  result = qword_28006B1C8;
  if (!qword_28006B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1C8);
  }

  return result;
}

uint64_t sub_266292640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662926A4(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAudioActionButtonSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v14[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B1D0, &qword_2662975B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266292544();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  LOBYTE(v15) = 0;
  v11 = v14[1];
  sub_2662949CC();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v13 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
    LOBYTE(v15) = *(v2 + *(v13 + 20));
    v16 = 1;
    sub_266292A44();
    sub_2662949EC();
    LOBYTE(v15) = *(v2 + *(v13 + 24));
    v16 = 2;
    sub_266292A98();
    sub_2662949EC();
    sub_26629473C();
    sub_2662880D0();
    sub_26629471C();
    LOBYTE(v15) = 3;
    sub_266288C40(&qword_28006AFB8, MEMORY[0x277D63228]);
    sub_2662949EC();
    (*(v14[0] + 8))(v6, v4);
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_266292A44()
{
  result = qword_28006B1D8;
  if (!qword_28006B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1D8);
  }

  return result;
}

unint64_t sub_266292A98()
{
  result = qword_28006B1E0;
  if (!qword_28006B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1E0);
  }

  return result;
}

unint64_t sub_266292AF0()
{
  result = qword_28006B1E8;
  if (!qword_28006B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1E8);
  }

  return result;
}

unint64_t sub_266292B48()
{
  result = qword_28006B1F0;
  if (!qword_28006B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B1F0);
  }

  return result;
}

uint64_t sub_266292C04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAudioActionButtonSnippetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_266292C78@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_266292D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_266292E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_266292F90(uint64_t a1)
{
  sub_26627EE30();
  if (v1 <= 0x3F)
  {
    sub_266289198(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2662930C0()
{
  result = qword_28006B208;
  if (!qword_28006B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B208);
  }

  return result;
}

unint64_t sub_266293118()
{
  result = qword_28006B210;
  if (!qword_28006B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B210);
  }

  return result;
}

unint64_t sub_266293170()
{
  result = qword_28006B218;
  if (!qword_28006B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B218);
  }

  return result;
}

unint64_t sub_2662931C8()
{
  result = qword_28006B220;
  if (!qword_28006B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B220);
  }

  return result;
}

unint64_t sub_266293220()
{
  result = qword_28006B228;
  if (!qword_28006B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B228);
  }

  return result;
}

unint64_t sub_266293278()
{
  result = qword_28006B230;
  if (!qword_28006B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B230);
  }

  return result;
}

unint64_t sub_2662932D0()
{
  result = qword_28006B238;
  if (!qword_28006B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B238);
  }

  return result;
}

unint64_t sub_266293328()
{
  result = qword_28006B240;
  if (!qword_28006B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B240);
  }

  return result;
}

unint64_t sub_266293380()
{
  result = qword_28006B248;
  if (!qword_28006B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B248);
  }

  return result;
}

unint64_t sub_2662933D8()
{
  result = qword_28006B250;
  if (!qword_28006B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B250);
  }

  return result;
}

unint64_t sub_266293430()
{
  result = qword_28006B258;
  if (!qword_28006B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B258);
  }

  return result;
}

unint64_t sub_266293488()
{
  result = qword_28006B260;
  if (!qword_28006B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B260);
  }

  return result;
}

unint64_t sub_2662934E0()
{
  result = qword_28006B268;
  if (!qword_28006B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B268);
  }

  return result;
}

unint64_t sub_266293538()
{
  result = qword_28006B270;
  if (!qword_28006B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B270);
  }

  return result;
}

unint64_t sub_266293590()
{
  result = qword_28006B278;
  if (!qword_28006B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B278);
  }

  return result;
}

unint64_t sub_2662935E8()
{
  result = qword_28006B280;
  if (!qword_28006B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B280);
  }

  return result;
}

unint64_t sub_266293640()
{
  result = qword_28006B288;
  if (!qword_28006B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B288);
  }

  return result;
}

unint64_t sub_266293698()
{
  result = qword_28006B290;
  if (!qword_28006B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B290);
  }

  return result;
}

unint64_t sub_2662936F0()
{
  result = qword_28006B298;
  if (!qword_28006B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B298);
  }

  return result;
}

unint64_t sub_266293748()
{
  result = qword_28006B2A0;
  if (!qword_28006B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2A0);
  }

  return result;
}

unint64_t sub_2662937A0()
{
  result = qword_28006B2A8;
  if (!qword_28006B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2A8);
  }

  return result;
}

uint64_t sub_2662937F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000266298440 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2662949FC();

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

uint64_t sub_26629391C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F74747562 && a2 == 0xE600000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000266298460 == a2 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000266298480 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2662949FC();

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

unint64_t sub_266293A3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662948EC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t SiriAudioSimpleTextSnippetModel.text.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

void (*SiriAudioSimpleTextSnippetModel.text.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627AE7C;
}

uint64_t sub_266293BA8()
{
  sub_266294A1C();
  sub_26629481C();
  return sub_266294A3C();
}

uint64_t sub_266293C04(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();
  return sub_266294A3C();
}

uint64_t sub_266293C4C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2662948EC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_266293CC4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2662948EC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_266293D1C(uint64_t a1)
{
  v2 = sub_266294188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266293D58(uint64_t a1)
{
  v2 = sub_266294188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioSimpleTextSnippetModel.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SiriAudioSimpleTextSnippetModel(0);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = v7;
    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v15 = a1;
      v16 = a2;
      sub_26629476C();
      sub_266293F4C(v9, a3);
      return (*(v14 + 56))(a3, 0, 1, v6);
    }

    v7 = v14;
  }

  v12 = *(v7 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t type metadata accessor for SiriAudioSimpleTextSnippetModel(uint64_t a1)
{
  result = qword_28006B2C8;
  if (!qword_28006B2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266293F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSimpleTextSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SiriAudioSimpleTextSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B2B0, &qword_266298068);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = type metadata accessor for SiriAudioSimpleTextSnippetModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266294188();
  sub_266294A4C();
  if (!v2)
  {
    v11 = v15;
    v14[0] = sub_26629494C();
    v14[1] = v12;
    sub_26629476C();
    (*(v5 + 8))(v7, v4);
    sub_266293F4C(v10, v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_266294188()
{
  result = qword_28006B2B8;
  if (!qword_28006B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2B8);
  }

  return result;
}

uint64_t SiriAudioSimpleTextSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B2C0, &qword_266298070);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266294188();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  sub_2662949CC();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_2662943A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAudioSimpleTextSnippetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_266294418@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_266294480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26629450C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_266294588(uint64_t a1)
{
  sub_26627EE30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_266294608()
{
  result = qword_28006B2D8;
  if (!qword_28006B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2D8);
  }

  return result;
}

unint64_t sub_266294660()
{
  result = qword_28006B2E0;
  if (!qword_28006B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2E0);
  }

  return result;
}

unint64_t sub_2662946B8()
{
  result = qword_28006B2E8;
  if (!qword_28006B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B2E8);
  }

  return result;
}