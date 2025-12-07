uint64_t DatabaseIdentifier.hash(into:)(uint64_t a1)
{
  sub_230D55C8C(a1, *v1);
  sub_230E69100();
  sub_230E69100();
}

uint64_t DatabaseIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230D55C8C(v3, v1);
  sub_230E69100();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D562A8(uint64_t a1)
{
  sub_230D55C8C(a1, *v1);
  sub_230E69100();
  sub_230E69100();
}

uint64_t sub_230D56354(uint64_t a1)
{
  v2 = *v1;
  sub_230E699B0();
  sub_230D55C8C(v4, v2);
  sub_230E69100();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t _s20ServicesIntelligence18DatabaseIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_230D0B544(*a1, *a2) & 1) != 0 && (v2 == v5 ? (v8 = v3 == v6) : (v8 = 0), v8 || (sub_230E698C0()))
  {
    v9 = 0xE600000000000000;
    v10 = 0x524F54434556;
    if (v4 != 1)
    {
      v10 = 22091;
      v9 = 0xE200000000000000;
    }

    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5001555;
    }

    if (v4)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = 0xE600000000000000;
    v14 = 0x524F54434556;
    if (v7 != 1)
    {
      v14 = 22091;
      v13 = 0xE200000000000000;
    }

    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = 5001555;
    }

    if (v7)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    if (v11 == v15 && v12 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_230E698C0();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_230D56534()
{
  result = qword_27DB5B660;
  if (!qword_27DB5B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B660);
  }

  return result;
}

uint64_t sub_230D56588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D565D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t RunInferenceRequest.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RunInferenceRequest.useCase.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RunInferenceRequest.cachingBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 RunInferenceRequest.cachingBehavior.setter(uint64_t a1)
{
  v3 = *(a1 + 32);

  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t RunInferenceRequest.inputPayload.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 56) = v2;
  return result;
}

uint64_t RunInferenceRequest.processIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t RunInferenceRequest.treatmentIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t RunInferenceRequest.treatmentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t RunInferenceRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a1;
  v25 = a2[1];
  v26 = *a2;
  v14 = *(a2 + 32);
  v15 = *a3;
  if (v13 > 3)
  {
    v16 = 0xEF7265776F546D65;
    v21 = 0x7449756F59726F46;
    if (v13 != 6)
    {
      v21 = 0xD000000000000016;
      v16 = 0x8000000230E80400;
    }

    v22 = 0xEC00000059464741;
    v23 = 0xD000000000000011;
    if (v13 == 4)
    {
      v23 = 0x4154656461637261;
    }

    else
    {
      v22 = 0x8000000230E803D0;
    }

    if (*a1 <= 5u)
    {
      v20 = v23;
    }

    else
    {
      v20 = v21;
    }

    if (*a1 <= 5u)
    {
      v16 = v22;
    }
  }

  else
  {
    v16 = 0xE400000000000000;
    v17 = 1953719668;
    v18 = 0xE400000000000000;
    v19 = 2019850594;
    if (v13 != 2)
    {
      v19 = 0xD000000000000010;
      v18 = 0x8000000230E803B0;
    }

    if (*a1)
    {
      v17 = 0x4647656461637261;
      v16 = 0xE900000000000059;
    }

    if (*a1 <= 1u)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (*a1 > 1u)
    {
      v16 = v18;
    }
  }

  *a8 = v20;
  *(a8 + 8) = v16;

  *(a8 + 16) = v26;
  *(a8 + 32) = v25;
  *(a8 + 48) = v14;

  *(a8 + 56) = v15;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5 & 1;
  *(a8 + 80) = a6;
  *(a8 + 88) = a7;
  return result;
}

uint64_t RunInferenceRequest.init(useCase:cachingBehavior:inputPayload:processIdentifier:treatmentIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *(a3 + 32);
  v16 = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;

  v17 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v17;
  *(a9 + 48) = v15;

  *(a9 + 56) = v16;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6 & 1;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t sub_230D56A74()
{
  v1 = *v0;
  v2 = 0x65736143657375;
  v3 = 0x7961507475706E69;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x42676E6968636163;
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

uint64_t sub_230D56B28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D5C858(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D56B50(uint64_t a1)
{
  v2 = sub_230D56E54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D56B8C(uint64_t a1)
{
  v2 = sub_230D56E54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunInferenceRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B668, &qword_230E70E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - v7;
  v9 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v9;
  v27 = *(v1 + 48);
  v10 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = v10;
  v19 = *(v1 + 72);
  v11 = *(v1 + 80);
  v18[1] = *(v1 + 88);
  v18[2] = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_230D56E54();
  sub_230E69A50();
  LOBYTE(v24) = 0;
  sub_230E69810();
  if (!v2)
  {
    v16 = v21;
    v25 = v22;
    v24 = v23;
    v26 = v27;
    v28 = 1;
    sub_230D56EA8();

    sub_230E69850();

    *&v24 = v16;
    v28 = 2;
    sub_230D56EFC();

    sub_230E697F0();

    LOBYTE(v24) = 3;
    sub_230E697D0();
    LOBYTE(v24) = 4;
    sub_230E697B0();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_230D56E54()
{
  result = qword_27DB5B670;
  if (!qword_27DB5B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B670);
  }

  return result;
}

unint64_t sub_230D56EA8()
{
  result = qword_27DB5B678;
  if (!qword_27DB5B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B678);
  }

  return result;
}

unint64_t sub_230D56EFC()
{
  result = qword_27DB5B680;
  if (!qword_27DB5B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B680);
  }

  return result;
}

uint64_t RunInferenceRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B688, &qword_230E70E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D56E54();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v40) = 0;
    v10 = sub_230E69720();
    *(&v33 + 1) = v11;
    *&v33 = v10;
    LOBYTE(v34) = 1;
    sub_230D57384();
    sub_230E69760();
    v12 = v41;
    v32 = v40;
    v31 = v42;
    v30 = v43;
    v13 = v44;

    LOBYTE(v34) = 2;
    sub_230D573D8();
    sub_230E69700();
    v29 = v13;
    v14 = v40;

    LOBYTE(v40) = 3;
    v28 = sub_230E696E0();
    v52 = v15 & 1;
    v53 = 4;
    v16 = sub_230E696B0();
    v17 = v9;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    v20 = v33;
    v34 = v33;
    v21 = *(&v33 + 1);
    *&v35 = v32;
    *(&v35 + 1) = v12;
    *&v36 = v31;
    *(&v36 + 1) = v30;
    LOBYTE(v37) = v29;
    *(&v37 + 1) = v14;
    *&v38 = v28;
    v27 = v52;
    BYTE8(v38) = v52;
    *&v39 = v16;
    *(&v39 + 1) = v19;
    v22 = v37;
    a2[2] = v36;
    a2[3] = v22;
    v23 = v35;
    *a2 = v34;
    a2[1] = v23;
    v24 = v39;
    a2[4] = v38;
    a2[5] = v24;
    sub_230D5742C(&v34, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = v20;
    v41 = v21;
    v42 = v32;
    v43 = v12;
    v44 = v31;
    v45 = v30;
    v46 = v29;
    v47 = v14;
    v48 = v28;
    v49 = v27;
    v50 = v16;
    v51 = v19;
    return sub_230D57464(&v40);
  }
}

unint64_t sub_230D57384()
{
  result = qword_27DB5B690;
  if (!qword_27DB5B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B690);
  }

  return result;
}

unint64_t sub_230D573D8()
{
  result = qword_27DB5B698;
  if (!qword_27DB5B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B698);
  }

  return result;
}

uint64_t RunInferenceResponse.workflow.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 89);
  v4 = *(v14 + 9);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 89) = v4;
  return sub_230D2D898(v10, &v9);
}

__n128 RunInferenceResponse.workflow.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 89);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_230D2D8F4(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  *(v1 + 89) = *(a1 + 89);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t RunInferenceResponse.result.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

__n128 RunInferenceResponse.init(workflow:result:cacheStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  *(a4 + 89) = *(a1 + 89);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 120) = v4;
  return result;
}

uint64_t sub_230D57668()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x6174536568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x776F6C666B726F77;
  }
}

uint64_t sub_230D576C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D5CA20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D576F0(uint64_t a1)
{
  v2 = sub_230D57A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D5772C(uint64_t a1)
{
  v2 = sub_230D57A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunInferenceResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6A0, &unk_230E70E10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - v7;
  v9 = v1[5];
  v38 = v1[4];
  v39[0] = v9;
  *(v39 + 9) = *(v1 + 89);
  v10 = v1[1];
  v34 = *v1;
  v35 = v10;
  v11 = v1[3];
  v36 = v1[2];
  v37 = v11;
  v40 = *(v1 + 14);
  v18 = *(v1 + 120);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_230D2D898(&v34, &v28);
  sub_230D57A4C();
  sub_230E69A50();
  v31 = v37;
  v32 = v38;
  v33[0] = v39[0];
  *(v33 + 9) = *(v39 + 9);
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v27 = 0;
  sub_230D57AA0();
  sub_230E69850();
  if (v2)
  {
    v25 = v32;
    *v26 = v33[0];
    *&v26[9] = *(v33 + 9);
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_230D2D8F4(&v21);
  }

  else
  {
    v16 = v18;
    v25 = v32;
    *v26 = v33[0];
    *&v26[9] = *(v33 + 9);
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_230D2D8F4(&v21);
    v20 = v40;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230E69850();
    LOBYTE(v20) = v16;
    v19 = 2;
    sub_230D57BB0();
    sub_230E69850();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_230D57A4C()
{
  result = qword_27DB5B6A8;
  if (!qword_27DB5B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B6A8);
  }

  return result;
}

unint64_t sub_230D57AA0()
{
  result = qword_27DB5B6B0;
  if (!qword_27DB5B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B6B0);
  }

  return result;
}

unint64_t sub_230D57B5C()
{
  result = qword_27DB5B6E8;
  if (!qword_27DB5B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B6E8);
  }

  return result;
}

unint64_t sub_230D57BB0()
{
  result = qword_27DB5B6F0;
  if (!qword_27DB5B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B6F0);
  }

  return result;
}

uint64_t RunInferenceResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6F8, &qword_230E70E30);
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D57A4C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v32 = 0;
  sub_230D57FA4();
  v10 = v45;
  sub_230E69760();
  v43 = v37;
  *v44 = v38[0];
  *&v44[9] = *(v38 + 9);
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  LOBYTE(v21[0]) = 1;
  sub_230D57FF8(&qword_27DB5B708, sub_230D5807C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_230E69760();
  v20 = *&v27[0];
  v30 = 2;
  sub_230D58228();
  sub_230E69760();
  (*(v9 + 8))(v8, v10);
  v11 = v31;
  v13 = *v44;
  v12 = *&v44[16];
  v25 = *v44;
  v26[0] = *&v44[16];
  v14 = v42;
  v23 = v42;
  v24 = v43;
  v16 = v39;
  v15 = v40;
  v21[0] = v39;
  v21[1] = v40;
  v22 = v41;
  v17 = v20;
  *&v26[1] = v20;
  BYTE8(v26[1]) = v31;
  a2[4] = v43;
  a2[5] = v13;
  a2[6] = v12;
  *a2 = v16;
  a2[1] = v15;
  *(a2 + 105) = *(v26 + 9);
  a2[2] = v22;
  a2[3] = v14;
  sub_230D5827C(v21, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[4] = v43;
  v27[5] = *v44;
  v27[6] = *&v44[16];
  v27[0] = v39;
  v27[1] = v40;
  v27[2] = v41;
  v27[3] = v42;
  v28 = v17;
  v29 = v11;
  return sub_230D582B4(v27);
}

unint64_t sub_230D57FA4()
{
  result = qword_27DB5B700;
  if (!qword_27DB5B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B700);
  }

  return result;
}

uint64_t sub_230D57FF8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B6B8, &unk_230E774B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D580B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B6D0, &unk_230E70E20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D5815C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5B6E0, &qword_230E774C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D581D4()
{
  result = qword_27DB5B720;
  if (!qword_27DB5B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B720);
  }

  return result;
}

unint64_t sub_230D58228()
{
  result = qword_27DB5B728;
  if (!qword_27DB5B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B728);
  }

  return result;
}

uint64_t sub_230D5831C()
{
  if (*v0)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_230D58358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230D58434(uint64_t a1)
{
  v2 = sub_230D5B2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D58470(uint64_t a1)
{
  v2 = sub_230D5B2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D584AC(uint64_t a1)
{
  v2 = sub_230D5B3D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D584E8(uint64_t a1)
{
  v2 = sub_230D5B3D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D58538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D585BC(uint64_t a1)
{
  v2 = sub_230D5B32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D585F8(uint64_t a1)
{
  v2 = sub_230D5B32C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceCachingBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B730, &qword_230E70E38);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B738, &qword_230E70E40);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B740, &qword_230E70E48);
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v12);
  v14 = &v22 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v25 = v1[3];
  v26 = v15;
  v24 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B2D8();
  sub_230E69A50();
  if (v16)
  {
    LOBYTE(v30) = 1;
    sub_230D5B32C();
    v18 = v29;
    sub_230E697A0();
    v30 = v26;
    v31 = v16;
    v32 = v17;
    v33 = v25;
    v34 = v24 & 1;
    sub_230D5B380();
    v19 = v28;
    sub_230E69850();
    (*(v27 + 8))(v6, v19);
    return (*(v11 + 8))(v14, v18);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_230D5B3D4();
    v21 = v29;
    sub_230E697A0();
    (*(v22 + 8))(v10, v23);
    return (*(v11 + 8))(v14, v21);
  }
}

uint64_t InferenceCachingBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B768, &qword_230E70E50);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B770, &qword_230E70E58);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B778, &unk_230E70E60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v17 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_230D5B2D8();
  v18 = v42;
  sub_230E69A30();
  if (!v18)
  {
    v42 = v13;
    v20 = v40;
    v19 = v41;
    v21 = sub_230E69780();
    v22 = (2 * *(v21 + 16)) | 1;
    v47 = v21;
    v48 = v21 + 32;
    v49 = 0;
    v50 = v22;
    v23 = sub_230D089CC();
    if (v23 == 2 || v49 != v50 >> 1)
    {
      v27 = sub_230E69580();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v29 = &type metadata for InferenceCachingBehavior;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v42 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v43) = 1;
        sub_230D5B32C();
        v24 = v16;
        v25 = v7;
        sub_230E69690();
        v26 = v42;
        sub_230D5B428();
        v32 = v25;
        v33 = v38;
        sub_230E69760();
        (*(v39 + 8))(v32, v33);
        (*(v26 + 8))(v24, v12);
        swift_unknownObjectRelease();
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_230D5B3D4();
        sub_230E69690();
        v31 = v42;
        (*(v20 + 8))(v11, v8);
        (*(v31 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
        v37 = 0;
        v36 = 0uLL;
      }

      *v19 = v34;
      *(v19 + 8) = v35;
      *(v19 + 16) = v36;
      *(v19 + 32) = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t InferenceCachingOption.signature.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceCachingOption.signature.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InferenceCachingOption.expiration.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t InferenceCachingOption.init(signature:age:expiration:dataClass:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t sub_230D58FC4()
{
  v1 = 0x727574616E676973;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0x73616C4361746164;
  }

  if (*v0)
  {
    v1 = 6645601;
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

uint64_t sub_230D59040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D5CB38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D59068(uint64_t a1)
{
  v2 = sub_230D5B47C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D590A4(uint64_t a1)
{
  v2 = sub_230D5B47C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceCachingOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B788, &qword_230E70E70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v11 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B47C();
  sub_230E69A50();
  v16 = 0;
  v8 = v12;
  sub_230E69810();
  if (!v8)
  {
    v15 = 1;
    sub_230E69830();
    v14 = 2;
    sub_230E697C0();
    v13 = 3;
    sub_230D0D128();
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InferenceCachingOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B798, &qword_230E70E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B47C();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  sub_230E69740();
  v15 = v14;
  v22 = 2;
  v16 = sub_230E696D0();
  v20 = v17;
  v19 = v16;
  v21 = 3;
  sub_230D0D1D0();
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InferenceInputPayload.features.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

ServicesIntelligence::InferenceInputPayload __swiftcall InferenceInputPayload.init(features:)(Swift::OpaquePointer features)
{
  v3 = v1;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  v3->_rawValue = features._rawValue;
  return result;
}

uint64_t InferenceInputPayload.ValidationError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if ((v0[6] & 1) == 0)
  {
    v8 = v0[5];
    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
    MEMORY[0x23191DA00](v5, v8);
LABEL_8:
    v7 = 1869029420;
    goto LABEL_9;
  }

  v6 = v5[2];
  if (v6 != 1)
  {
    if (v6)
    {
      sub_230E69540();

      MEMORY[0x23191DA00](v2, v1);
      MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E82170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
      sub_230D443B8();
      v14 = sub_230E68FF0();
      MEMORY[0x23191DA00](v14);

      v12 = 0x20746F67202C29;
      v13 = 0xE700000000000000;
      goto LABEL_10;
    }

    sub_230E69540();

    MEMORY[0x23191DA00](v2, v1);
    v7 = 1866932270;
LABEL_9:
    v12 = v7 & 0xFFFF0000FFFFFFFFLL | 0x207400000000;
    v13 = 0xE600000000000000;
LABEL_10:
    MEMORY[0x23191DA00](v12, v13);
    MEMORY[0x23191DA00](v4, v3);
    return 0x7463657078656E55;
  }

  sub_230E69540();

  MEMORY[0x23191DA00](v2, v1);
  result = MEMORY[0x23191DA00](0x746365707845202ELL, 0xEB00000000206465);
  if (v5[2])
  {
    v11 = v5[4];
    v10 = v5[5];

    MEMORY[0x23191DA00](v11, v10);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t InferenceInputPayload.validateFeaturesAndParseAsData(inputDefinitions:)(uint64_t a1)
{
  result = sub_230D5B4EC(a1, sub_230D5B4D0);
  if (!v1)
  {
    if (*(result + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A978, &qword_230E78E90);
      v3 = sub_230E69640();
    }

    else
    {
      v3 = MEMORY[0x277D84F98];
    }

    v5 = v3;

    sub_230D5ADC4(v4, 1, &v5);

    return v5;
  }

  return result;
}

uint64_t sub_230D5999C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 32);
  v7 = *(a3 + 41);
  if (*(a4 + 16) && (result = sub_230DA41A0(result, a2), (v9 & 1) != 0))
  {
    v10 = *(*(a4 + 56) + 8 * result);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  v64 = v11;
  v65 = v10;
  v61 = v5;
  if (v7)
  {
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v13 = 0;
      v60 = v10 + 32;
      v14 = MEMORY[0x277D84F90];
      while (v13 < *(v10 + 16))
      {
        v33 = *(v60 + 8 * v13);
        if (*(v33 + 16) != v6)
        {
          goto LABEL_73;
        }

        v63 = v13;
        if (v6)
        {

          result = sub_230D48E28(0, v6, 0);
          v36 = 0;
          v37 = (v33 + 36);
          v38.i64[0] = 0x8000000080000000;
          v38.i64[1] = 0x8000000080000000;
          while (v36 < *(v33 + 16))
          {
            v39 = *(v37 - 1);
            if ((*v37 & 1) == 0)
            {
              v34.i32[0] = *(v37 - 1);
              *v35.i32 = v39 - truncf(v39);
              v35 = vbslq_s8(v38, v35, v34);
              if (*v35.i32 != 0.0 || v39 < -2147500000.0 || v39 > 2147500000.0)
              {

                sub_230D5CD18();
                swift_allocError();
                *v51 = xmmword_230E70DE0;
                *(v51 + 16) = xmmword_230E70DF0;
                *(v51 + 32) = &unk_2845A54E8;
                *(v51 + 40) = 0;
                *(v51 + 48) = 1;
                swift_willThrow();
              }

              if ((~LODWORD(v39) & 0x7F800000) == 0)
              {
                goto LABEL_82;
              }

              if (v39 <= -2147500000.0)
              {
                goto LABEL_83;
              }

              if (v39 >= 2147500000.0)
              {
                goto LABEL_84;
              }

              LODWORD(v39) = v39;
            }

            v43 = *(v12 + 2);
            v42 = *(v12 + 3);
            v4 = (v43 + 1);
            if (v43 >= v42 >> 1)
            {
              result = sub_230D48E28((v42 > 1), v43 + 1, 1);
              v38.i64[0] = 0x8000000080000000;
              v38.i64[1] = 0x8000000080000000;
            }

            ++v36;
            *(v12 + 2) = v4;
            v12[v43 + 8] = v39;
            v37 += 2;
            if (v6 == v36)
            {

              goto LABEL_60;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_60:
        v44 = *(v12 + 2);
        v45 = *(v14 + 16);
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_91;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v46 > *(v14 + 24) >> 1)
        {
          if (v45 <= v46)
          {
            v47 = v45 + v44;
          }

          else
          {
            v47 = v45;
          }

          result = sub_230E4A1E0(result, v47, 1, v14);
          v14 = result;
        }

        if (*(v12 + 2))
        {
          v48 = *(v14 + 16);
          if ((*(v14 + 24) >> 1) - v48 < v44)
          {
            goto LABEL_93;
          }

          memcpy((v14 + 4 * v48 + 32), v12 + 8, 4 * v44);

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            v49 = *(v14 + 16);
            v30 = __OFADD__(v49, v44);
            v50 = v49 + v44;
            if (v30)
            {
              goto LABEL_94;
            }

            *(v14 + 16) = v50;
          }
        }

        else
        {

          v32 = v64;
          v10 = v65;
          v12 = MEMORY[0x277D84F90];
          if (v44)
          {
            goto LABEL_92;
          }
        }

        v13 = v63 + 1;
        if (v63 + 1 == v32)
        {
          goto LABEL_76;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_76:

    v59 = *(v14 + 16);
    if (!(v59 >> 61))
    {
LABEL_80:
      sub_230DD8EEC((v14 + 32), 4 * v59);

      return v61;
    }

    __break(1u);
LABEL_78:
    v14 = v4;
LABEL_79:

    v59 = *(v14 + 16);
    if (v59 >> 61)
    {
LABEL_95:
      __break(1u);
      return result;
    }

    goto LABEL_80;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_78;
  }

  v15 = 0;
  v62 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 >= *(v10 + 16))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v17 = *(v62 + 8 * v15);
    if (*(v17 + 16) != v6)
    {
      break;
    }

    if (v6)
    {

      sub_230D48E48(0, v6, 0);
      v18 = v4;
      v19 = *(v4 + 2);
      v20 = (v17 + 36);
      v21 = v6;
      do
      {
        if (*v20)
        {
          v22 = *(v20 - 1);
        }

        else
        {
          v22 = *(v20 - 1);
        }

        v23 = *(v18 + 3);
        if (v19 >= v23 >> 1)
        {
          sub_230D48E48((v23 > 1), v19 + 1, 1);
        }

        *(v18 + 2) = v19 + 1;
        v18[v19 + 8] = v22;
        v20 += 2;
        ++v19;
        --v21;
      }

      while (v21);

      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      v18 = v4;
    }

    v24 = *(v18 + 2);
    v25 = *(v14 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_86;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v14 + 24) >> 1)
    {
      if (!*(v18 + 2))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_230E4A2E4(result, v27, 1, v14);
      v14 = result;
      if (!*(v18 + 2))
      {
LABEL_10:

        v16 = v64;
        v10 = v65;
        if (v24)
        {
          goto LABEL_87;
        }

        goto LABEL_11;
      }
    }

    v28 = *(v14 + 16);
    if ((*(v14 + 24) >> 1) - v28 < v24)
    {
      goto LABEL_88;
    }

    memcpy((v14 + 4 * v28 + 32), v18 + 8, 4 * v24);

    v16 = v64;
    v10 = v65;
    if (v24)
    {
      v29 = *(v14 + 16);
      v30 = __OFADD__(v29, v24);
      v31 = v29 + v24;
      if (v30)
      {
        goto LABEL_89;
      }

      *(v14 + 16) = v31;
    }

LABEL_11:
    if (++v15 == v16)
    {
      goto LABEL_79;
    }
  }

LABEL_73:

  v52 = sub_230E69890();
  v54 = v53;
  v55 = sub_230E69890();
  v57 = v56;
  sub_230D5CD18();
  swift_allocError();
  *v58 = xmmword_230E70DD0;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v55;
  *(v58 + 40) = v57;
  *(v58 + 48) = 0;
  swift_willThrow();
}

uint64_t sub_230D59FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D5A070(uint64_t a1)
{
  v2 = sub_230D5B84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D5A0AC(uint64_t a1)
{
  v2 = sub_230D5B84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceInputPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B7A0, &qword_230E70E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B84C();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
  sub_230D57FF8(&qword_27DB5B6C0, sub_230D57AF4, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

uint64_t InferenceInputPayload.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B7B0, &qword_230E70E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  sub_230D0DE98(MEMORY[0x277D84F90]);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B84C();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B6B8, &unk_230E774B0);
    sub_230D57FF8(&qword_27DB5B708, sub_230D5807C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnhancedRunInferenceRequest.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_230D5742C(v9, &v8);
}

__n128 EnhancedRunInferenceRequest.request.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_230D57464(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t EnhancedRunInferenceRequest.requestContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v2 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 121);
  v6 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 32) = v6;
}

uint64_t EnhancedRunInferenceRequest.requestContext.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = a1[25];
  v7 = *(a1 + 4);

  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 121) = v6;
  *(v1 + 128) = v7;
  return result;
}

__n128 EnhancedRunInferenceRequest.init(request:requestContext:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = a2[24];
  v7 = a2[25];
  v8 = *(a2 + 4);
  v9 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v9;
  v10 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v12;
  *(a3 + 96) = v3;
  *(a3 + 104) = v4;
  *(a3 + 112) = v5;
  *(a3 + 120) = v6;
  *(a3 + 121) = v7;
  *(a3 + 128) = v8;
  return result;
}

uint64_t sub_230D5A688()
{
  if (*v0)
  {
    return 0x4374736575716572;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_230D5A6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4374736575716572 && a2 == 0xEE00747865746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230D5A7B4(uint64_t a1)
{
  v2 = sub_230D5B8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D5A7F0(uint64_t a1)
{
  v2 = sub_230D5B8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnhancedRunInferenceRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B7B8, &qword_230E70EA0);
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - v6;
  v8 = v1[3];
  v39 = v1[2];
  v40 = v8;
  v9 = v1[5];
  v41 = v1[4];
  v42 = v9;
  v10 = v1[1];
  v37 = *v1;
  v38 = v10;
  v19 = *(v1 + 96);
  v11 = *(v1 + 14);
  v18 = *(v1 + 13);
  v12 = *(v1 + 120);
  v16 = *(v1 + 121);
  v17 = v12;
  v13 = *(v1 + 16);
  v20 = v11;
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5742C(&v37, &v31);
  sub_230D5B8A0();
  sub_230E69A50();
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  v30 = 0;
  sub_230D5B8F4();
  sub_230E69850();
  v29[2] = v33;
  v29[3] = v34;
  v29[4] = v35;
  v29[5] = v36;
  v29[0] = v31;
  v29[1] = v32;
  sub_230D57464(v29);
  if (!v2)
  {
    v23[0] = v19;
    v24 = v18;
    v25 = v20;
    v26 = v17;
    v27 = v16;
    v28 = v21;
    v22 = 1;
    sub_230D5B948();

    sub_230E69850();
  }

  return (*(v43 + 8))(v7, v4);
}

uint64_t EnhancedRunInferenceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B7D8, &qword_230E70EA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D5B8A0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v21;
  v56 = 0;
  sub_230D5B99C();
  sub_230E69760();
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v49 = v43;
  v50 = v44;
  v55 = 1;
  sub_230D5B9F0();
  sub_230E69760();
  (*(v9 + 8))(v8, v4);
  v11 = v38;
  v12 = v40;
  v20 = v39;
  v13 = v41;
  LOBYTE(v9) = HIBYTE(v41);
  v14 = v42;
  v24 = v51;
  v25 = v52;
  v26 = v53;
  v27 = v54;
  v22 = v49;
  v23 = v50;
  LOBYTE(v28) = v38;
  *(&v28 + 1) = v39;
  *&v29 = v40;
  WORD4(v29) = v41;
  v30 = v42;
  *(v10 + 128) = v42;
  v15 = v27;
  *(v10 + 64) = v26;
  *(v10 + 80) = v15;
  v16 = v25;
  *(v10 + 32) = v24;
  *(v10 + 48) = v16;
  v17 = v23;
  *v10 = v22;
  *(v10 + 16) = v17;
  v18 = v29;
  *(v10 + 96) = v28;
  *(v10 + 112) = v18;
  sub_230D5BA44(&v22, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[2] = v51;
  v31[3] = v52;
  v31[4] = v53;
  v31[5] = v54;
  v31[0] = v49;
  v31[1] = v50;
  v32 = v11;
  v33 = v20;
  v34 = v12;
  v35 = v13;
  v36 = v9;
  v37 = v14;
  return sub_230D5BA7C(v31);
}

uint64_t sub_230D5ADC4(void *a1, char a2, void *a3)
{
  v44 = a1[2];
  if (!v44)
  {
  }

  v6 = a1[6];
  v5 = a1[7];
  v8 = a1[4];
  v7 = a1[5];

  sub_230D0DD0C(v6, v5);
  if (!v7)
  {
  }

  v9 = *a3;
  v11 = sub_230DA41A0(v8, v7);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_230DB9E1C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_230D0F4A8(v6, v5);

      return MEMORY[0x23191E910](v18);
    }

    goto LABEL_30;
  }

  sub_230DB69F4(v14, a2 & 1);
  v16 = sub_230DA41A0(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_29:
    sub_230E69950();
    __break(1u);
LABEL_30:
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000001BLL, 0x8000000230E82200);
    sub_230E695F0();
    MEMORY[0x23191DA00](39, 0xE100000000000000);
    result = sub_230E69600();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_13:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 16 * v11);
  *v23 = v6;
  v23[1] = v5;
  v24 = v21[2];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21[2] = v26;
  if (v44 != 1)
  {
    v27 = a1 + 11;
    v28 = 1;
    while (v28 < a1[2])
    {
      v6 = *(v27 - 1);
      v5 = *v27;
      v30 = *(v27 - 3);
      v29 = *(v27 - 2);

      sub_230D0DD0C(v6, v5);
      if (!v29)
      {
      }

      v31 = *a3;
      v32 = sub_230DA41A0(v30, v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v25 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v25)
      {
        goto LABEL_26;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_230DB69F4(v36, 1);
        v32 = sub_230DA41A0(v30, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_29;
        }
      }

      if (v37)
      {
        goto LABEL_10;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v30;
      v40[1] = v29;
      v41 = (v39[7] + 16 * v32);
      *v41 = v6;
      v41[1] = v5;
      v42 = v39[2];
      v25 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      ++v28;
      v39[2] = v43;
      v27 += 4;
      if (v44 == v28)
      {
      }
    }

    goto LABEL_28;
  }
}

uint64_t _s20ServicesIntelligence22InferenceCachingOptionV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v6)
    {
      return 0;
    }

LABEL_9:
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v5)
      {
        v11 = v7;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    return 1;
  }

  v9 = sub_230E698C0();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _s20ServicesIntelligence24InferenceCachingBehaviorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  if (v2 == 0.0)
  {
    if (!v3)
    {
      swift_bridgeObjectRelease_n();
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  v15[2] = v10;
  v15[3] = v4;
  v16 = v9 & 1;
  v13[0] = v5;
  v13[1] = v3;
  v13[2] = v6;
  v13[3] = v7;
  v14 = v8 & 1;
  v11 = _s20ServicesIntelligence22InferenceCachingOptionV2eeoiySbAC_ACtFZ_0(v15, v13);
  return v11 & 1;
}

unint64_t sub_230D5B2D8()
{
  result = qword_27DB5B748;
  if (!qword_27DB5B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B748);
  }

  return result;
}

unint64_t sub_230D5B32C()
{
  result = qword_27DB5B750;
  if (!qword_27DB5B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B750);
  }

  return result;
}

unint64_t sub_230D5B380()
{
  result = qword_27DB5B758;
  if (!qword_27DB5B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B758);
  }

  return result;
}

unint64_t sub_230D5B3D4()
{
  result = qword_27DB5B760;
  if (!qword_27DB5B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B760);
  }

  return result;
}

unint64_t sub_230D5B428()
{
  result = qword_27DB5B780;
  if (!qword_27DB5B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B780);
  }

  return result;
}

unint64_t sub_230D5B47C()
{
  result = qword_27DB5B790;
  if (!qword_27DB5B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B790);
  }

  return result;
}

uint64_t sub_230D5B4EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int128 *))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v61 = MEMORY[0x277D84F90];
  sub_230D48E08(0, v4, 0);
  v5 = v61;
  v7 = v6 + 64;
  result = sub_230E694B0();
  if (result < 0 || result >= 1 << *(v6 + 32))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v40 = v6 + 72;
    v41 = v4;
    v9 = *(v6 + 36);
    v10 = 1;
    v43 = v6 + 64;
    v44 = v6;
    v42 = v9;
    while ((*(v7 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      if (v9 != *(v6 + 36))
      {
        goto LABEL_28;
      }

      v47 = 1 << result;
      v48 = result >> 6;
      v46 = v10;
      v50 = v3;
      v51 = v5;
      v11 = (*(v6 + 48) + 16 * result);
      v12 = *v11;
      v13 = v11[1];
      v49 = result;
      v14 = *(v6 + 56) + 48 * result;
      v15 = *v14;
      v16 = *(v14 + 8);
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      v19 = *(v14 + 32);
      v20 = *(v14 + 40);
      v5 = *(v14 + 41);
      v58[0] = v12;
      v58[1] = v13;
      v58[2] = v15;
      v58[3] = v16;
      v58[4] = v18;
      v58[5] = v17;
      v58[6] = v19;
      v59 = v20;
      v60 = v5;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_230D5CCB0(v58);
      *&v55 = v12;
      *(&v55 + 1) = v13;
      *&v56 = v15;
      *(&v56 + 1) = v16;
      *v57 = v18;
      *&v57[8] = v17;
      *&v57[16] = v19;
      v57[24] = v20;
      v57[25] = v5;
      v21 = a2(v12, v13, &v56);
      v3 = v50;
      if (v50)
      {
        v52 = v55;
        v53 = v56;
        v54[0] = *v57;
        *(v54 + 10) = *&v57[10];
        sub_230D5CCB0(&v52);

        return v5;
      }

      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v52 = v55;
      v53 = v56;
      v54[0] = *v57;
      *(v54 + 10) = *&v57[10];
      sub_230D5CCB0(&v52);
      v5 = v51;
      v61 = v51;
      v30 = *(v51 + 16);
      v29 = *(v51 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_230D48E08((v29 > 1), v30 + 1, 1);
        v5 = v61;
      }

      *(v5 + 16) = v30 + 1;
      v31 = (v5 + 32 * v30);
      v31[4] = v25;
      v31[5] = v26;
      v31[6] = v27;
      v31[7] = v28;
      v6 = v44;
      v32 = 1 << *(v44 + 32);
      result = v49;
      if (v49 >= v32)
      {
        goto LABEL_29;
      }

      v7 = v43;
      v33 = *(v43 + 8 * v48);
      if ((v33 & v47) == 0)
      {
        goto LABEL_30;
      }

      v9 = v42;
      if (v42 != *(v44 + 36))
      {
        goto LABEL_31;
      }

      v34 = v33 & (-2 << (v49 & 0x3F));
      if (v34)
      {
        result = __clz(__rbit64(v34)) | v49 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v48 << 6;
        v36 = v48 + 1;
        v37 = (v40 + 8 * v48);
        while (v36 < (v32 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_230D52C58(v49, v42, 0);
            result = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        sub_230D52C58(v49, v42, 0);
        result = v32;
      }

LABEL_20:
      if (v46 == v41)
      {
        return v5;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v10 = v46 + 1;
        if (result < 1 << *(v44 + 32))
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_230D5B84C()
{
  result = qword_27DB5B7A8;
  if (!qword_27DB5B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7A8);
  }

  return result;
}

unint64_t sub_230D5B8A0()
{
  result = qword_27DB5B7C0;
  if (!qword_27DB5B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7C0);
  }

  return result;
}

unint64_t sub_230D5B8F4()
{
  result = qword_27DB5B7C8;
  if (!qword_27DB5B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7C8);
  }

  return result;
}

unint64_t sub_230D5B948()
{
  result = qword_27DB5B7D0;
  if (!qword_27DB5B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7D0);
  }

  return result;
}

unint64_t sub_230D5B99C()
{
  result = qword_27DB5B7E0;
  if (!qword_27DB5B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7E0);
  }

  return result;
}

unint64_t sub_230D5B9F0()
{
  result = qword_27DB5B7E8;
  if (!qword_27DB5B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7E8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_230D5BAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_230D5BB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_230D5BBB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D5BBF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D5BC7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_230D5BCCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_230D5BD28(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_230D5BD40(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_230D5BD78(uint64_t a1, int a2)
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

uint64_t sub_230D5BDC0(uint64_t result, int a2, int a3)
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

uint64_t sub_230D5BE4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_230D5BE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_230D5BF38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_230D5BF80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D5C074()
{
  result = qword_27DB5B7F0;
  if (!qword_27DB5B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7F0);
  }

  return result;
}

unint64_t sub_230D5C0CC()
{
  result = qword_27DB5B7F8;
  if (!qword_27DB5B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B7F8);
  }

  return result;
}

unint64_t sub_230D5C124()
{
  result = qword_27DB5B800;
  if (!qword_27DB5B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B800);
  }

  return result;
}

unint64_t sub_230D5C17C()
{
  result = qword_27DB5B808;
  if (!qword_27DB5B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B808);
  }

  return result;
}

unint64_t sub_230D5C1D4()
{
  result = qword_27DB5B810;
  if (!qword_27DB5B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B810);
  }

  return result;
}

unint64_t sub_230D5C22C()
{
  result = qword_27DB5B818;
  if (!qword_27DB5B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B818);
  }

  return result;
}

unint64_t sub_230D5C284()
{
  result = qword_27DB5B820;
  if (!qword_27DB5B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B820);
  }

  return result;
}

unint64_t sub_230D5C2DC()
{
  result = qword_27DB5B828;
  if (!qword_27DB5B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B828);
  }

  return result;
}

unint64_t sub_230D5C334()
{
  result = qword_27DB5B830;
  if (!qword_27DB5B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B830);
  }

  return result;
}

unint64_t sub_230D5C38C()
{
  result = qword_27DB5B838;
  if (!qword_27DB5B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B838);
  }

  return result;
}

unint64_t sub_230D5C3E4()
{
  result = qword_27DB5B840;
  if (!qword_27DB5B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B840);
  }

  return result;
}

unint64_t sub_230D5C43C()
{
  result = qword_27DB5B848;
  if (!qword_27DB5B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B848);
  }

  return result;
}

unint64_t sub_230D5C494()
{
  result = qword_27DB5B850;
  if (!qword_27DB5B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B850);
  }

  return result;
}

unint64_t sub_230D5C4EC()
{
  result = qword_27DB5B858;
  if (!qword_27DB5B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B858);
  }

  return result;
}

unint64_t sub_230D5C544()
{
  result = qword_27DB5B860;
  if (!qword_27DB5B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B860);
  }

  return result;
}

unint64_t sub_230D5C59C()
{
  result = qword_27DB5B868;
  if (!qword_27DB5B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B868);
  }

  return result;
}

unint64_t sub_230D5C5F4()
{
  result = qword_27DB5B870;
  if (!qword_27DB5B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B870);
  }

  return result;
}

unint64_t sub_230D5C64C()
{
  result = qword_27DB5B878;
  if (!qword_27DB5B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B878);
  }

  return result;
}

unint64_t sub_230D5C6A4()
{
  result = qword_27DB5B880;
  if (!qword_27DB5B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B880);
  }

  return result;
}

unint64_t sub_230D5C6FC()
{
  result = qword_27DB5B888;
  if (!qword_27DB5B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B888);
  }

  return result;
}

unint64_t sub_230D5C754()
{
  result = qword_27DB5B890;
  if (!qword_27DB5B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B890);
  }

  return result;
}

unint64_t sub_230D5C7AC()
{
  result = qword_27DB5B898;
  if (!qword_27DB5B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B898);
  }

  return result;
}

unint64_t sub_230D5C804()
{
  result = qword_27DB5B8A0;
  if (!qword_27DB5B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8A0);
  }

  return result;
}

uint64_t sub_230D5C858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x42676E6968636163 && a2 == 0xEF726F6976616865 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961507475706E69 && a2 == 0xEC00000064616F6CLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E821B0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E801F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D5CA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174536568636163 && a2 == 0xEB00000000737574)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D5CB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73616C4361746164 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D5CCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B8A8, &unk_230E71CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230D5CD18()
{
  result = qword_27DB5B8B0;
  if (!qword_27DB5B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8B0);
  }

  return result;
}

double sub_230D5CD70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_230DA41A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + (v6 << 7));
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    v22 = v8[2];
    v23 = v9;
    v20 = v11;
    v21 = v10;
    v13 = v8[5];
    v12 = v8[6];
    v14 = v8[4];
    *(v26 + 9) = *(v8 + 105);
    v25 = v13;
    v26[0] = v12;
    v24 = v14;
    memmove(a4, v8, 0x79uLL);
    nullsub_1();
    sub_230D5827C(&v20, &v19);
  }

  else
  {
    sub_230D65C88(&v20);
    v16 = v25;
    a4[4] = v24;
    a4[5] = v16;
    a4[6] = v26[0];
    *(a4 + 105) = *(v26 + 9);
    v17 = v21;
    *a4 = v20;
    a4[1] = v17;
    result = *&v22;
    v18 = v23;
    a4[2] = v22;
    a4[3] = v18;
  }

  return result;
}

uint64_t static MLInferenceClient.shared.getter()
{
  type metadata accessor for MLInferenceClient();

  return swift_initStaticObject();
}

uint64_t sub_230D5CE90(_OWORD *a1, uint64_t a2)
{
  *(v3 + 296) = v2;
  v6 = sub_230E68D80();
  *(v3 + 304) = v6;
  *(v3 + 312) = *(v6 - 8);
  *(v3 + 320) = swift_task_alloc();
  v7 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v7;
  v8 = a1[5];
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v8;
  v9 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v9;
  v10 = *(a2 + 16);
  *(v3 + 328) = *a2;
  *(v3 + 344) = v10;
  *(v3 + 360) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230D5CFC0, 0, 0);
}

uint64_t sub_230D5CFC0()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v0 + 352);
    v3 = *(v0 + 360);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    *(v0 + 384) = v1;
    *(v0 + 392) = v3;
    *(v0 + 847) = BYTE1(v2);
    *(v0 + 846) = v2 & 1;
    *(v0 + 376) = v5;
    *(v0 + 845) = v4;
    *(v0 + 208) = v4;
    *(v0 + 216) = v5;
    *(v0 + 224) = v1;
    *(v0 + 232) = v2 & 1;
    *(v0 + 233) = BYTE1(v2);
    *(v0 + 240) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 400) = qword_27DB5A438;

    sub_230D5742C(v0 + 16, v0 + 112);

    return MEMORY[0x2822009F8](sub_230D5D424, v6, 0);
  }

  else
  {
    *(v0 + 844) = 32;
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_230D5D1B0;

    return static RequestContext.from(_:correlationID:)(v0 + 248, (v0 + 844), 0, 0);
  }
}

uint64_t sub_230D5D1B0()
{

  return MEMORY[0x2822009F8](sub_230D5D2D8, 0, 0);
}

uint64_t sub_230D5D2D8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 273);
  v6 = *(v0 + 280);
  *(v0 + 384) = v3;
  *(v0 + 392) = v6;
  *(v0 + 847) = v5;
  *(v0 + 846) = v4;
  *(v0 + 376) = v2;
  *(v0 + 845) = v1;
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  v9 = *(v0 + 336);
  v10 = *(v0 + 344);
  v11 = *(v0 + 328);
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  *(v0 + 233) = v5;
  *(v0 + 240) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 400) = qword_27DB5A438;

  sub_230D5742C(v0 + 16, v0 + 112);

  return MEMORY[0x2822009F8](sub_230D5D424, v12, 0);
}

uint64_t sub_230D5D424()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E807F0, v24);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v24);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v24);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 846) == 1 && ((v9 = *(v0 + 392), v10 = *(v0 + 847), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10))
  {
    sub_230E68950();
    *(v0 + 408) = CFAbsoluteTimeGetCurrent();
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0u;
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
    *(v0 + 768) = 0u;
    *(v0 + 784) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0;
    *(v0 + 836) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 464), (v0 + 836));
    *(v0 + 840) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 512);
      v19 = *(v0 + 584);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 432) = v17;
    *(v0 + 288) = 0;
    v14 = swift_task_alloc();
    *(v0 + 440) = v14;
    *v14 = v0;
    v15 = sub_230D5D968;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 416) = v14;
    *v14 = v0;
    v15 = sub_230D5D810;
  }

  v14[1] = v15;
  v22 = *(v0 + 296);

  return sub_230D5E018(v14, v22, v0 + 16, v0 + 208);
}

uint64_t sub_230D5D810()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_230D5DF38;
  }

  else
  {
    v4 = sub_230D5DE58;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D5D968()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 400);
  if (v0)
  {
    v4 = sub_230D5DBDC;
  }

  else
  {
    v4 = sub_230D5DAC0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D5DAC0()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  sub_230D38814(32, *(v0 + 432), *(v0 + 840) != 0, v0 + 208, (v0 + 288), *(v0 + 408));
  (*(v2 + 8))(v1, v3);

  sub_230D57464(v0 + 16);

  return MEMORY[0x2822009F8](sub_230D5DD38, 0, 0);
}

uint64_t sub_230D5DBDC(uint64_t a1)
{
  v2 = *(v1 + 448);
  v3 = *(v1 + 432);
  v4 = *(v1 + 408);
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 304);
  v8 = *(v1 + 840) != 0;
  *(v1 + 288) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D38814(32, v3, v8, v1 + 208, (v1 + 288), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  sub_230D57464(v1 + 16);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 456) = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_230D5DDC8, 0, 0);
}

uint64_t sub_230D5DD38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D5DDC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D5DE58()
{
  (*(v0[39] + 8))(v0[40], v0[38]);

  sub_230D57464((v0 + 2));

  return MEMORY[0x2822009F8](sub_230D5DD38, 0, 0);
}

uint64_t sub_230D5DF38()
{
  (*(v0[39] + 8))(v0[40], v0[38]);

  sub_230D57464((v0 + 2));
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[57] = v0[53];

  return MEMORY[0x2822009F8](sub_230D5DDC8, 0, 0);
}

uint64_t sub_230D5E018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 832) = a4;
  *(v4 + 824) = a3;
  *(v4 + 816) = a2;
  *(v4 + 137) = *a4;
  *(v4 + 840) = *(a4 + 8);
  *(v4 + 138) = *(a4 + 24);
  *(v4 + 856) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230D5E064, 0, 0);
}

uint64_t sub_230D5E064()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 139);
  v3 = *(v0 + 138);
  v4 = *(v0 + 848);
  v5 = *(v0 + 840);
  v6 = *(v0 + 137);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v9 = v8[1];
  *(v0 + 400) = *v8;
  *(v0 + 416) = v9;
  v10 = v8[2];
  v11 = v8[3];
  v12 = v8[5];
  *(v0 + 464) = v8[4];
  *(v0 + 480) = v12;
  *(v0 + 432) = v10;
  *(v0 + 448) = v11;
  *(v0 + 592) = v6;
  *(v0 + 600) = v5;
  *(v0 + 608) = v4;
  *(v0 + 616) = v3 & 1 | (v2 << 8);
  *(v0 + 624) = v1;
  sub_230D1CDE0(v7, v0 + 632);
  v13 = swift_task_alloc();
  *(v0 + 864) = v13;
  *v13 = v0;
  v13[1] = sub_230D5E15C;

  return sub_230D64748(v0 + 272, (v0 + 400), v0 + 592);
}

uint64_t sub_230D5E15C()
{
  v1 = *v0;

  sub_230D666B4(v1[74], v1[75], v1[76], v1[77], v1[78]);

  return MEMORY[0x2822009F8](sub_230D5E2C4, 0, 0);
}

uint64_t sub_230D5E2C4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  *(v0 + 240) = v3;
  v4 = *(v0 + 272);
  v5 = *(v0 + 288);
  *(v0 + 144) = v4;
  *(v0 + 160) = v5;
  v6 = *(v0 + 304);
  v7 = *(v0 + 320);
  *(v0 + 176) = v6;
  *(v0 + 192) = v7;
  v8 = *(v0 + 377);
  *(v0 + 249) = v8;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  *(v0 + 112) = v3;
  *(v0 + 121) = v8;
  if (sub_230D666F8(v0 + 16) == 1)
  {
    v9 = *(v0 + 832);
    sub_230D1CDE0(v9, v0 + 672);
    sub_230D1CDE0(v9, v0 + 712);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 824);
    sub_230D1CDE0(*(v0 + 832), v0 + 752);
    sub_230D5742C(v10, v0 + 496);
    v11 = swift_task_alloc();
    *(v0 + 872) = v11;
    *v11 = v0;
    v11[1] = sub_230D5E4B0;

    return (sub_230D75ED8)(34);
  }

  else
  {
    sub_230D2D9F8(v0 + 144, &qword_27DB5B8E0, &qword_230E71DD8);
    sub_230E68950();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_230D5E4B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 880) = a1;
  *(v4 + 888) = v1;

  sub_230D1CE3C(*(v3 + 832));
  if (v1)
  {
    v5 = sub_230D5E750;
  }

  else
  {
    v5 = sub_230D5E5F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230D5E5F0()
{
  v1 = v0[111];
  sub_230D1CE3C(v0[104]);
  sub_230E68C60();
  if (v1)
  {
    sub_230E69540();
    v0[99] = 0;
    v0[100] = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD00000000000002ELL, 0x8000000230E826F0);
    v0[101] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    sub_230E695F0();
    sub_230E68950();

    MEMORY[0x23191E910](v1);
  }

  else
  {
    sub_230E68950();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_230D5E750()
{
  sub_230D1CE3C(*(v0 + 832));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D5E7B4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = v2;
  v5 = sub_230E68D80();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  v6 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v6;
  v7 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v7;
  v8 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 804) = 33;
  v9 = swift_task_alloc();
  *(v3 + 336) = v9;
  *v9 = v3;
  v9[1] = sub_230D5E910;

  return static RequestContext.from(_:correlationID:)(v3 + 248, (v3 + 804), 0, 0);
}

uint64_t sub_230D5E910()
{

  return MEMORY[0x2822009F8](sub_230D5EA38, 0, 0);
}

uint64_t sub_230D5EA38()
{
  v1 = *(v0 + 248);
  *(v0 + 805) = v1;
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 344) = v2;
  *(v0 + 352) = v3;
  v4 = *(v0 + 272);
  *(v0 + 806) = v4;
  v5 = *(v0 + 273);
  v6 = *(v0 + 280);
  *(v0 + 360) = v6;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  *(v0 + 233) = v5;
  *(v0 + 240) = v6;
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v7 = qword_27DB5A438;
  *(v0 + 368) = qword_27DB5A438;

  sub_230D5742C(v0 + 16, v0 + 112);

  return MEMORY[0x2822009F8](sub_230D5EB70, v7, 0);
}

uint64_t sub_230D5EB70()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 344);
    v3 = *(v0 + 352);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v24);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v24);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v24);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 806) == 1)
  {
    v9 = *(v0 + 360);
    v10 = RequestType.rawValue.getter();
    v12 = v11;

    sub_230D33FDC(v10, v12, v9);

    sub_230E68950();
    *(v0 + 376) = CFAbsoluteTimeGetCurrent();
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 0u;
    *(v0 + 664) = 0u;
    *(v0 + 680) = 0u;
    *(v0 + 696) = 0u;
    *(v0 + 712) = 0u;
    *(v0 + 728) = 0u;
    *(v0 + 744) = 0u;
    *(v0 + 760) = 0u;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0;
    *(v0 + 796) = 93;
    v13 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 424), (v0 + 796));
    *(v0 + 800) = v13;
    v14 = 0.0;
    if (!v13)
    {
      v15 = *(v0 + 472);
      v16 = *(v0 + 544);
      v17 = __CFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
      }

      v14 = vcvtd_n_f64_u64(v18, 0x14uLL);
    }

    *(v0 + 400) = v14;
    *(v0 + 288) = 0;
    v19 = swift_task_alloc();
    *(v0 + 408) = v19;
    *v19 = v0;
    v20 = sub_230D5F0B8;
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    *v19 = v0;
    v20 = sub_230D5EF60;
  }

  v19[1] = v20;
  v21 = *(v0 + 296);
  v22 = *(v0 + 304);

  return sub_230D606AC(v21, v22, v0 + 16, v0 + 208);
}

uint64_t sub_230D5EF60()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_230D5F574;
  }

  else
  {
    v4 = sub_230D5F48C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D5F0B8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_230D5F334;
  }

  else
  {
    v4 = sub_230D5F210;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D5F210()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  sub_230D39194(33, *(v0 + 400), *(v0 + 800) != 0, v0 + 208, (v0 + 288), *(v0 + 376));
  (*(v2 + 8))(v1, v3);

  sub_230D57464(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D5F334(uint64_t a1)
{
  v2 = *(v1 + 416);
  v3 = *(v1 + 400);
  v4 = *(v1 + 376);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v7 = *(v1 + 312);
  v8 = *(v1 + 800) != 0;
  *(v1 + 288) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D39194(33, v3, v8, v1 + 208, (v1 + 288), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  sub_230D57464(v1 + 16);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230D5F48C()
{
  (*(v0[40] + 8))(v0[41], v0[39]);

  sub_230D57464((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D5F574()
{
  (*(v0[40] + 8))(v0[41], v0[39]);

  sub_230D57464((v0 + 2));
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D5F650(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 296) = a1;
  *(v4 + 304) = v3;
  v7 = sub_230E68D80();
  *(v4 + 312) = v7;
  *(v4 + 320) = *(v7 - 8);
  *(v4 + 328) = swift_task_alloc();
  v8 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v8;
  v9 = a2[5];
  *(v4 + 80) = a2[4];
  *(v4 + 96) = v9;
  v10 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v10;
  v11 = *(a3 + 16);
  *(v4 + 336) = *a3;
  *(v4 + 352) = v11;
  *(v4 + 368) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230D5F774, 0, 0);
}

uint64_t sub_230D5F774()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 368);
    v4 = *(v0 + 336);
    v5 = *(v0 + 344);
    *(v0 + 392) = v1;
    *(v0 + 400) = v3;
    *(v0 + 846) = v2 & 1;
    *(v0 + 384) = v5;
    *(v0 + 845) = v4;
    *(v0 + 208) = v4;
    *(v0 + 216) = v5;
    *(v0 + 224) = v1;
    *(v0 + 232) = v2 & 1;
    *(v0 + 233) = BYTE1(v2);
    *(v0 + 240) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 408) = qword_27DB5A438;

    sub_230D5742C(v0 + 16, v0 + 112);

    return MEMORY[0x2822009F8](sub_230D5FBD0, v6, 0);
  }

  else
  {
    *(v0 + 844) = 33;
    v7 = swift_task_alloc();
    *(v0 + 376) = v7;
    *v7 = v0;
    v7[1] = sub_230D5F960;

    return static RequestContext.from(_:correlationID:)(v0 + 248, (v0 + 844), 0, 0);
  }
}

uint64_t sub_230D5F960()
{

  return MEMORY[0x2822009F8](sub_230D5FA88, 0, 0);
}

uint64_t sub_230D5FA88()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 273);
  v6 = *(v0 + 280);
  *(v0 + 392) = v3;
  *(v0 + 400) = v6;
  *(v0 + 846) = v4;
  *(v0 + 384) = v2;
  *(v0 + 845) = v1;
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  *(v0 + 233) = v5;
  *(v0 + 240) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 408) = qword_27DB5A438;

  sub_230D5742C(v0 + 16, v0 + 112);

  return MEMORY[0x2822009F8](sub_230D5FBD0, v12, 0);
}

uint64_t sub_230D5FBD0()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0x666B726F576E7572, 0xEB00000000776F6CLL, v24);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v24);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v24);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 846) == 1)
  {
    v9 = *(v0 + 400);
    v10 = RequestType.rawValue.getter();
    v12 = v11;

    sub_230D33FDC(v10, v12, v9);

    sub_230E68950();
    *(v0 + 416) = CFAbsoluteTimeGetCurrent();
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0u;
    *(v0 + 736) = 0u;
    *(v0 + 752) = 0u;
    *(v0 + 768) = 0u;
    *(v0 + 784) = 0u;
    *(v0 + 800) = 0u;
    *(v0 + 816) = 0u;
    *(v0 + 832) = 0;
    *(v0 + 836) = 93;
    v13 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 464), (v0 + 836));
    *(v0 + 840) = v13;
    v14 = 0.0;
    if (!v13)
    {
      v15 = *(v0 + 512);
      v16 = *(v0 + 584);
      v17 = __CFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
      }

      v14 = vcvtd_n_f64_u64(v18, 0x14uLL);
    }

    *(v0 + 440) = v14;
    *(v0 + 288) = 0;
    v19 = swift_task_alloc();
    *(v0 + 448) = v19;
    *v19 = v0;
    v20 = sub_230D60114;
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 424) = v19;
    *v19 = v0;
    v20 = sub_230D5FFBC;
  }

  v19[1] = v20;
  v21 = *(v0 + 296);
  v22 = *(v0 + 304);

  return sub_230D606AC(v21, v22, v0 + 16, v0 + 208);
}

uint64_t sub_230D5FFBC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_230D605D0;
  }

  else
  {
    v4 = sub_230D604E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D60114()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_230D60390;
  }

  else
  {
    v4 = sub_230D6026C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D6026C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  sub_230D39194(33, *(v0 + 440), *(v0 + 840) != 0, v0 + 208, (v0 + 288), *(v0 + 416));
  (*(v2 + 8))(v1, v3);

  sub_230D57464(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230D60390(uint64_t a1)
{
  v2 = *(v1 + 456);
  v3 = *(v1 + 440);
  v4 = *(v1 + 416);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v7 = *(v1 + 312);
  v8 = *(v1 + 840) != 0;
  *(v1 + 288) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D39194(33, v3, v8, v1 + 208, (v1 + 288), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  sub_230D57464(v1 + 16);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230D604E8()
{
  (*(v0[40] + 8))(v0[41], v0[39]);

  sub_230D57464((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D605D0()
{
  (*(v0[40] + 8))(v0[41], v0[39]);

  sub_230D57464((v0 + 2));
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D606AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 2488) = a4;
  *(v4 + 2480) = a3;
  *(v4 + 2472) = a2;
  *(v4 + 2464) = a1;
  *(v4 + 409) = *a4;
  *(v4 + 2496) = *(a4 + 8);
  *(v4 + 410) = *(a4 + 24);
  *(v4 + 2512) = *(a4 + 32);
  v5 = sub_230E68D80();
  *(v4 + 2520) = v5;
  *(v4 + 2528) = *(v5 - 8);
  *(v4 + 2536) = swift_task_alloc();
  v6 = sub_230E68C30();
  *(v4 + 2544) = v6;
  *(v4 + 2552) = *(v6 - 8);
  *(v4 + 2560) = swift_task_alloc();
  *(v4 + 2568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D6082C, 0, 0);
}

uint64_t sub_230D6082C()
{
  v1 = *(v0 + 2512);
  v2 = *(v0 + 411);
  v3 = *(v0 + 410);
  v4 = *(v0 + 2504);
  v5 = *(v0 + 2496);
  v6 = *(v0 + 409);
  v7 = *(v0 + 2488);
  v8 = *(v0 + 2480);
  v9 = *v8;
  *(v0 + 1632) = v8[1];
  *(v0 + 1616) = v9;
  v10 = v8[2];
  v11 = v8[3];
  v12 = v8[4];
  *(v0 + 1696) = v8[5];
  *(v0 + 1680) = v12;
  *(v0 + 1664) = v11;
  *(v0 + 1648) = v10;
  *(v0 + 1808) = v6;
  *(v0 + 1816) = v5;
  *(v0 + 1824) = v4;
  *(v0 + 1832) = v3 & 1 | (v2 << 8);
  *(v0 + 1840) = v1;
  sub_230D1CDE0(v7, v0 + 2168);
  v13 = swift_task_alloc();
  *(v0 + 2576) = v13;
  *v13 = v0;
  v13[1] = sub_230D6095C;

  return sub_230D64748(v0 + 784, (v0 + 1616), v0 + 1808);
}

uint64_t sub_230D6095C()
{
  v1 = *v0;

  sub_230D666B4(v1[226], v1[227], v1[228], v1[229], v1[230]);

  return MEMORY[0x2822009F8](sub_230D60AF8, 0, 0);
}

uint64_t sub_230D60AF8()
{
  v1 = *(v0 + 864);
  *(v0 + 352) = *(v0 + 848);
  *(v0 + 368) = v1;
  *(v0 + 384) = *(v0 + 880);
  *(v0 + 393) = *(v0 + 889);
  v2 = *(v0 + 800);
  *(v0 + 288) = *(v0 + 784);
  *(v0 + 304) = v2;
  v3 = *(v0 + 832);
  *(v0 + 320) = *(v0 + 816);
  *(v0 + 336) = v3;
  if (sub_230D666F8(v0 + 288) == 1)
  {
    v4 = *(v0 + 2488);
    sub_230D1CDE0(v4, v0 + 2128);
    sub_230D1CDE0(v4, v0 + 2088);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 2488);
    v6 = *(v0 + 2480);
    v7 = qword_27DB5A438;
    *(v0 + 2584) = qword_27DB5A438;
    sub_230D1CDE0(v5, v0 + 1888);
    sub_230D5742C(v6, v0 + 1520);
    v8 = swift_task_alloc();
    *(v0 + 2592) = v8;
    *v8 = v0;
    v8[1] = sub_230D60D4C;
    v9 = *(v0 + 2488);
    v10 = *(v0 + 2480);

    return sub_230D75ED8(34, v9, v7, v10, v9);
  }

  else
  {
    v12 = *(v0 + 2464);
    sub_230E68950();
    v13 = *(v0 + 288);
    v14 = *(v0 + 304);
    v15 = *(v0 + 336);
    v12[2] = *(v0 + 320);
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = *(v0 + 352);
    v17 = *(v0 + 368);
    v18 = *(v0 + 384);
    *(v12 + 105) = *(v0 + 393);
    v12[5] = v17;
    v12[6] = v18;
    v12[4] = v16;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_230D60D4C(uint64_t a1)
{
  v3 = *v2;
  v3[325] = a1;
  v3[326] = v1;

  sub_230D1CE3C(v3[311]);
  if (v1)
  {
    v4 = sub_230D61228;
  }

  else
  {
    v4 = sub_230D60EA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230D60EA8()
{
  v1 = *(v0 + 2608);
  v2 = *(v0 + 2488);
  v3 = *(v0 + 2480);
  sub_230D1CE3C(v2);
  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  v8 = *v3;
  v7 = v3[1];
  v9 = *v2;
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  *(v0 + 48) = v3[2];
  *(v0 + 64) = v4;
  *(v0 + 16) = v8;
  *(v0 + 32) = v7;
  *(v0 + 144) = v11;
  *(v0 + 112) = v9;
  *(v0 + 128) = v10;
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  sub_230D1CDE0(v2, v0 + 1848);
  sub_230D5742C(v3, v0 + 1712);
  sub_230E68950();
  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  v12 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  v13 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v13;
  v14 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  v15 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v15;
  *(v0 + 216) = v12;
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v14;
  sub_230D66710();
  v16 = sub_230E686D0();
  *(v0 + 2616) = v16;
  *(v0 + 2624) = v17;
  if (v1)
  {
    MEMORY[0x23191E910](v1);

    sub_230D5BA7C(v0 + 16);
    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v18 = 0xD00000000000002DLL;
    *(v18 + 8) = 0x8000000230E822F0;
    *(v18 + 16) = 2;
    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = v16;
    v22 = v17;

    sub_230D5BA7C(v0 + 16);
    sub_230E68C50();

    sub_230D0DD0C(v21, v22);
    MEMORY[0x23191D510](v21, v22);
    *(v0 + 2632) = sub_230E68C40();
    sub_230E68950();
    v23 = MEMORY[0x277D29DF8];
    v24 = *MEMORY[0x277D29DF8];
    v25 = swift_task_alloc();
    *(v0 + 2640) = v25;
    *v25 = v0;
    v25[1] = sub_230D612E0;
    v26 = *(v0 + 2560);

    return ((v24 + v23))(v26);
  }
}

uint64_t sub_230D61228()
{
  sub_230D1CE3C(*(v0 + 2488));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D612E0()
{
  *(*v1 + 2648) = v0;

  if (v0)
  {
    v2 = sub_230D63840;
  }

  else
  {
    v2 = sub_230D61420;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230D61420()
{
  v1 = sub_230E68C10();
  *(v0 + 2656) = v1;
  *(v0 + 2664) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 2560);
    v4 = *(v0 + 2552);
    v5 = *(v0 + 2544);
    sub_230E68950();
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000047, 0x8000000230E823C0);
    v6 = sub_230E68C80();
    MEMORY[0x23191DA00](v6);

    sub_230D66764();
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 4;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
LABEL_5:
    v16 = *(v0 + 2624);
    v17 = *(v0 + 2616);
    sub_230E69540();

    swift_getErrorValue();
    v18 = sub_230E69960();
    MEMORY[0x23191DA00](v18);

    sub_230D66764();
    swift_allocError();
    *v19 = 0xD000000000000026;
    *(v19 + 8) = 0x8000000230E82360;
    *(v19 + 16) = 0;
    swift_willThrow();
    MEMORY[0x23191E910](v7);

    sub_230D0F4A8(v17, v16);

    v20 = *(v0 + 8);

    return v20();
  }

  v9 = v1;
  v10 = v2;
  v11 = *(v0 + 2648);
  sub_230E68950();
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230D667B8();
  sub_230E686A0();
  if (v11)
  {
    v12 = *(v0 + 2560);
    v13 = *(v0 + 2552);
    v14 = *(v0 + 2544);
    MEMORY[0x23191E910](v11);

    sub_230E68950();
    sub_230D66764();
    v7 = swift_allocError();
    *v15 = 0xD000000000000036;
    *(v15 + 8) = 0x8000000230E82480;
    *(v15 + 16) = 5;
    swift_willThrow();
    sub_230D0F494(v9, v10);
    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v22 = *(v0 + 2584);
  v23 = *(v0 + 2488);

  v24 = *(v0 + 1248);
  *(v0 + 1104) = *(v0 + 1232);
  *(v0 + 1120) = v24;
  *(v0 + 1136) = *(v0 + 1264);
  *(v0 + 1145) = *(v0 + 1273);
  v25 = *(v0 + 1184);
  *(v0 + 1040) = *(v0 + 1168);
  *(v0 + 1056) = v25;
  v26 = *(v0 + 1216);
  *(v0 + 1072) = *(v0 + 1200);
  *(v0 + 1088) = v26;
  sub_230E68950();
  sub_230D1CDE0(v23, v0 + 1928);

  return MEMORY[0x2822009F8](sub_230D618A4, v22, 0);
}

uint64_t sub_230D618A4()
{
  sub_230D1CDE0(v0[311], (v0 + 246));

  v1 = swift_task_alloc();
  v0[334] = v1;
  *v1 = v0;
  v1[1] = sub_230D619A8;
  v2 = v0[323];
  v3 = v0[311];

  return sub_230D72678(15, v3, v2, 0, v2);
}

uint64_t sub_230D619A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2680) = a1;
  *(v4 + 2688) = v1;

  v5 = *(v3 + 2584);
  sub_230D1CE3C(*(v3 + 2488));
  if (v1)
  {
    v6 = sub_230D623D8;
  }

  else
  {
    v6 = sub_230D61B30;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D61B30()
{
  sub_230D1CE3C(*(v0 + 2488));

  return MEMORY[0x2822009F8](sub_230D61BC4, 0, 0);
}

uint64_t sub_230D61BC4()
{
  v1 = *(v0 + 2480);
  v2 = v1[2];
  *(v0 + 2696) = v2;
  v3 = v1[3];
  *(v0 + 2704) = v3;
  *(v0 + 2712) = v1[5];
  v4 = *(v0 + 2680);
  if (v3)
  {
    *(v0 + 905) = *(v1 + 48);
    *(v0 + 2720) = v1[4];
    v5 = *v1;
    v6 = v1[1];

    MEMORY[0x23191DA00](v5, v6);
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v2, v3);

    *(v0 + 2728) = 0x776F6C666B726F77;
    *(v0 + 2736) = 0xEF3A65686361632DLL;
    *(v0 + 2744) = *(v0 + 1152);
    *(v0 + 1344) = *(v0 + 1088);
    *(v0 + 1360) = *(v0 + 1104);
    *(v0 + 1376) = *(v0 + 1120);
    *(v0 + 1385) = *(v0 + 1129);
    *(v0 + 1296) = *(v0 + 1040);
    *(v0 + 1312) = *(v0 + 1056);
    *(v0 + 1328) = *(v0 + 1072);
    sub_230D2D898(v0 + 1040, v0 + 1408);

    v7 = sub_230D61DF0;
  }

  else
  {
    v8 = *(v0 + 2488);
    *(v0 + 2832) = *v1;
    *(v0 + 2840) = v1[1];
    MEMORY[0x23191DA00]();
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    *(v0 + 2848) = 0x776F6C666B726F77;
    *(v0 + 2856) = 0xEF3A65686361632DLL;
    sub_230D1CDE0(v8, v0 + 2008);
    v7 = sub_230D6329C;
  }

  return MEMORY[0x2822009F8](v7, v4, 0);
}

uint64_t sub_230D61DF0()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 2736);
  v2 = *(v0 + 2728);
  v3 = *(v0 + 2720);
  v4 = *(v0 + 905);
  v5 = *(v0 + 2712);
  v40 = *(v0 + 2744);
  v41 = (v0 + 2432);
  v6 = *(v0 + 2488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ABE8, qword_230E6C090);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230E6B3B0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = 0;
  *(v7 + 64) = v5;
  *(v7 + 72) = v4 & 1;

  v8 = sub_230D0DA94(v7);
  *(v0 + 2752) = v8;
  swift_setDeallocating();
  sub_230D2D9F8(v7 + 32, &qword_27DB5ABF0, &qword_230E71DB0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B8D8, &unk_230E71DB8);
  v9 = swift_allocObject();
  *(v9 + 32) = v2;
  *(v9 + 16) = xmmword_230E6B3B0;
  *(v9 + 40) = v1;
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1376);
  *(v0 + 976) = *(v0 + 1360);
  *(v0 + 992) = v11;
  *(v0 + 1008) = *(v0 + 1392);
  v12 = *(v0 + 1312);
  *(v0 + 912) = *(v0 + 1296);
  *(v0 + 928) = v12;
  *(v0 + 944) = *(v0 + 1328);
  *(v0 + 960) = v10;
  *(v0 + 1024) = v40;
  *(v0 + 1032) = 0;
  nullsub_1();
  v13 = *(v0 + 992);
  *(v9 + 112) = *(v0 + 976);
  *(v9 + 128) = v13;
  *(v9 + 144) = *(v0 + 1008);
  *(v9 + 153) = *(v0 + 1017);
  v14 = *(v0 + 928);
  *(v9 + 48) = *(v0 + 912);
  *(v9 + 64) = v14;
  v15 = *(v0 + 960);
  *(v9 + 80) = *(v0 + 944);
  *(v9 + 96) = v15;

  v16 = sub_230D0E088(v9);
  *(v0 + 2760) = v16;
  swift_setDeallocating();
  sub_230D2D9F8(v9 + 32, &qword_27DB5AA10, &qword_230E6BAB0);
  swift_deallocClassInstance();
  sub_230D1CDE0(v6, v0 + 2208);

  sub_230E68D70();
  sub_230D1CDE0(v6, v0 + 2248);
  v17 = sub_230E68D60();
  v18 = sub_230E693E0();
  sub_230D1CE3C(v6);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 2488);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42[0] = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_230D7E620(0x44564B6E49746573, 0xEF65736162617461, v42);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_230D7E620(*(v19 + 8), *(v19 + 16), v42);
    *(v20 + 22) = 2080;
    v22 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v22);

    v23 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v42);

    *(v20 + 24) = v23;
    _os_log_impl(&dword_230D02000, v17, v18, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v21, -1, -1);
    MEMORY[0x23191EAE0](v20, -1, -1);
  }

  *v41 = *(*(v0 + 2488) + 24);
  if ((*(v0 + 2432) & 1) == 0)
  {
    goto LABEL_7;
  }

  v24 = *(v0 + 2440);
  v25 = RequestType.rawValue.getter();
  v27 = v26;
  sub_230D1CE90(v41, v0 + 2416);
  LOBYTE(v25) = sub_230D33FDC(v25, v27, v24);

  if ((v25 & 1) == 0)
  {
    v28 = *(v0 + 2433);
    sub_230D1F9CC(v41);
    if (v28 >= 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v29 = swift_task_alloc();
    *(v0 + 2776) = v29;
    *v29 = v0;
    v30 = sub_230D625D8;
    goto LABEL_12;
  }

  sub_230D1F9CC(v41);
LABEL_8:
  sub_230E68950();
  *(v0 + 2768) = CFAbsoluteTimeGetCurrent();
  *(v0 + 412) = 0u;
  *(v0 + 428) = 0u;
  *(v0 + 444) = 0u;
  *(v0 + 460) = 0u;
  *(v0 + 476) = 0u;
  *(v0 + 492) = 0u;
  *(v0 + 508) = 0u;
  *(v0 + 524) = 0u;
  *(v0 + 540) = 0u;
  *(v0 + 556) = 0u;
  *(v0 + 572) = 0u;
  *(v0 + 588) = 0u;
  *(v0 + 604) = 0u;
  *(v0 + 620) = 0u;
  *(v0 + 636) = 0u;
  *(v0 + 652) = 0u;
  *(v0 + 668) = 0u;
  *(v0 + 684) = 0u;
  *(v0 + 700) = 0u;
  *(v0 + 716) = 0u;
  *(v0 + 732) = 0u;
  *(v0 + 748) = 0u;
  *(v0 + 764) = 0u;
  *(v0 + 780) = 0;
  *(v0 + 908) = 93;
  v31 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 412), (v0 + 908));
  *(v0 + 1036) = v31;
  v32 = 0.0;
  if (!v31)
  {
    v33 = *(v0 + 460);
    v34 = *(v0 + 532);
    v35 = __CFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      __break(1u);
    }

    v32 = vcvtd_n_f64_u64(v36, 0x14uLL);
  }

  *(v0 + 2792) = v32;
  *(v0 + 2456) = 0;
  v29 = swift_task_alloc();
  *(v0 + 2800) = v29;
  *v29 = v0;
  v30 = sub_230D6273C;
LABEL_12:
  v29[1] = v30;
  v37 = *(v0 + 2680);
  v38 = *(v0 + 2488);

  return sub_230E03FCC(v16, v8, v37, v38);
}

uint64_t sub_230D623D8()
{
  v1 = *(v0 + 2488);
  MEMORY[0x23191E910](*(v0 + 2688));
  sub_230D1CE3C(v1);

  return MEMORY[0x2822009F8](sub_230D62478, 0, 0);
}

uint64_t sub_230D62478()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 2616);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v5 = *(v0 + 2544);
  sub_230D0F494(*(v0 + 2656), *(v0 + 2664));

  sub_230D0F4A8(v2, v1);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 2464);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1056);
  v9 = *(v0 + 1088);
  v6[2] = *(v0 + 1072);
  v6[3] = v9;
  *v6 = v7;
  v6[1] = v8;
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1120);
  v12 = *(v0 + 1136);
  *(v6 + 105) = *(v0 + 1145);
  v6[5] = v11;
  v6[6] = v12;
  v6[4] = v10;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_230D625D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[294] = v2;
  v4[295] = a1;
  v4[296] = v1;
  v4[348] = v1;

  v5 = v3[335];
  if (v1)
  {
    v6 = sub_230D63184;
  }

  else
  {
    v6 = sub_230D63088;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D6273C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[297] = v2;
  v4[298] = a1;
  v4[299] = v1;
  v4[351] = v1;

  v5 = v3[335];
  if (v1)
  {
    v6 = sub_230D629D8;
  }

  else
  {
    v6 = sub_230D628A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D628A0()
{
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2528);
  v3 = *(v0 + 2520);
  v4 = *(v0 + 2488);
  sub_230D34F14(9, *(v0 + 2792), *(v0 + 1036) != 0, v4, (v0 + 2456), *(v0 + 2768));
  (*(v2 + 8))(v1, v3);

  sub_230D1CE3C(v4);
  v5 = *(v0 + 2384);

  *(v0 + 2816) = v5;

  return MEMORY[0x2822009F8](sub_230D62B64, 0, 0);
}

uint64_t sub_230D629D8(uint64_t a1)
{
  v2 = *(v1 + 2808);
  v3 = *(v1 + 2792);
  v4 = *(v1 + 2768);
  v5 = *(v1 + 2536);
  v6 = *(v1 + 2528);
  v7 = *(v1 + 2520);
  v8 = *(v1 + 2488);
  v9 = *(v1 + 1036) != 0;
  *(v1 + 2456) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D34F14(9, v3, v9, v8, (v1 + 2456), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  sub_230D1CE3C(v8);

  sub_230D582B4(v1 + 1040);
  *(v1 + 2824) = *(v1 + 2808);

  return MEMORY[0x2822009F8](sub_230D62EB0, 0, 0);
}

uint64_t sub_230D62B64()
{
  if (*(v0 + 2816) == 1)
  {
    v1 = *(v0 + 2720);
    v2 = *(v0 + 905);
    v3 = *(v0 + 2712);
    v22 = *(v0 + 2696);
    v4 = *(v0 + 2664);
    v5 = *(v0 + 2656);
    v23 = *(v0 + 2616);
    v24 = *(v0 + 2624);
    v28 = *(v0 + 2560);
    v6 = *(v0 + 2552);
    v26 = *(v0 + 2544);

    sub_230E69540();
    *(v0 + 2400) = 0;
    *(v0 + 2408) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E82570);
    *(v0 + 2288) = v22;
    *(v0 + 2304) = v1;
    *(v0 + 2312) = v3;
    *(v0 + 2320) = v2 & 1;
    sub_230E695F0();
    sub_230E68950();
    sub_230D0F494(v5, v4);

    sub_230D0F4A8(v23, v24);

    (*(v6 + 8))(v28, v26);
  }

  else
  {
    v7 = *(v0 + 2736);
    v8 = *(v0 + 2728);
    v9 = *(v0 + 2664);
    v10 = *(v0 + 2656);
    v11 = *(v0 + 2616);
    v25 = *(v0 + 2624);
    v12 = *(v0 + 2552);
    v27 = *(v0 + 2544);
    v29 = *(v0 + 2560);
    sub_230E69540();

    MEMORY[0x23191DA00](v8, v7);

    MEMORY[0x23191DA00](0x2E64656C69616620, 0xE800000000000000);
    sub_230E68950();
    sub_230D0F494(v10, v9);

    sub_230D0F4A8(v11, v25);

    (*(v12 + 8))(v29, v27);
  }

  v13 = *(v0 + 2464);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 1056);
  v16 = *(v0 + 1088);
  v13[2] = *(v0 + 1072);
  v13[3] = v16;
  *v13 = v14;
  v13[1] = v15;
  v17 = *(v0 + 1104);
  v18 = *(v0 + 1120);
  v19 = *(v0 + 1136);
  *(v13 + 105) = *(v0 + 1145);
  v13[5] = v18;
  v13[6] = v19;
  v13[4] = v17;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230D62EB0()
{
  v1 = v0[320];
  v2 = v0[319];
  v3 = v0[318];
  sub_230D0F494(v0[332], v0[333]);

  (*(v2 + 8))(v1, v3);
  v4 = v0[353];
  v5 = v0[328];
  v6 = v0[327];
  sub_230E69540();

  swift_getErrorValue();
  v7 = sub_230E69960();
  MEMORY[0x23191DA00](v7);

  sub_230D66764();
  swift_allocError();
  *v8 = 0xD000000000000026;
  *(v8 + 8) = 0x8000000230E82360;
  *(v8 + 16) = 0;
  swift_willThrow();
  MEMORY[0x23191E910](v4);

  sub_230D0F4A8(v6, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_230D63088()
{
  v1 = v0[311];
  (*(v0[316] + 8))(v0[317], v0[315]);

  sub_230D1CE3C(v1);
  v2 = v0[295];

  v0[352] = v2;

  return MEMORY[0x2822009F8](sub_230D62B64, 0, 0);
}

uint64_t sub_230D63184()
{
  v1 = v0[311];
  (*(v0[316] + 8))(v0[317], v0[315]);

  sub_230D1CE3C(v1);

  sub_230D582B4((v0 + 130));
  v0[353] = v0[348];

  return MEMORY[0x2822009F8](sub_230D62EB0, 0, 0);
}

uint64_t sub_230D6329C()
{
  sub_230D1CDE0(v0[311], (v0 + 256));

  v1 = swift_task_alloc();
  v0[358] = v1;
  *v1 = v0;
  v1[1] = sub_230D633B4;
  v2 = v0[357];
  v3 = v0[356];
  v4 = v0[335];
  v5 = v0[311];

  return sub_230D7F790(7, v5, v4, v3, v2, v4, v5);
}

uint64_t sub_230D633B4(uint64_t a1)
{
  v2 = *(*v1 + 2680);
  v3 = *(*v1 + 2488);
  *(*v1 + 2872) = a1;

  sub_230D1CE3C(v3);

  return MEMORY[0x2822009F8](sub_230D63540, v2, 0);
}

uint64_t sub_230D63540()
{
  v1 = *(v0 + 2488);

  sub_230D1CE3C(v1);

  return MEMORY[0x2822009F8](sub_230D635E0, 0, 0);
}

uint64_t sub_230D635E0()
{
  if (*(v0 + 2872) < 1)
  {
    v7 = *(v0 + 2664);
    v8 = *(v0 + 2656);
    v9 = *(v0 + 2624);
    v10 = *(v0 + 2616);
    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));

    sub_230D0F4A8(v10, v9);
    sub_230D0F494(v8, v7);
  }

  else
  {
    v1 = *(v0 + 2840);
    v2 = *(v0 + 2832);
    v3 = *(v0 + 2664);
    v4 = *(v0 + 2656);
    v5 = *(v0 + 2616);
    v20 = *(v0 + 2624);
    v6 = *(v0 + 2552);
    v21 = *(v0 + 2544);
    v22 = *(v0 + 2560);
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000035, 0x8000000230E82500);
    MEMORY[0x23191DA00](v2, v1);
    sub_230E68950();
    sub_230D0F494(v4, v3);

    sub_230D0F4A8(v5, v20);

    (*(v6 + 8))(v22, v21);
  }

  v11 = *(v0 + 2464);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1056);
  v14 = *(v0 + 1088);
  v11[2] = *(v0 + 1072);
  v11[3] = v14;
  *v11 = v12;
  v11[1] = v13;
  v15 = *(v0 + 1104);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1136);
  *(v11 + 105) = *(v0 + 1145);
  v11[5] = v16;
  v11[6] = v17;
  v11[4] = v15;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_230D63840()
{
  v1 = v0[331];
  v2 = v0[328];
  v3 = v0[327];
  sub_230E69540();

  swift_getErrorValue();
  v4 = sub_230E69960();
  MEMORY[0x23191DA00](v4);

  sub_230D66764();
  swift_allocError();
  *v5 = 0xD000000000000026;
  *(v5 + 8) = 0x8000000230E82360;
  *(v5 + 16) = 0;
  swift_willThrow();
  MEMORY[0x23191E910](v1);

  sub_230D0F4A8(v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_230D639DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230D63A08, 0, 0);
}

uint64_t sub_230D63A08()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    *(v0 + 144) = v1;
    *(v0 + 152) = v3;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_230D63E20;

    return (sub_230D7BB08)();
  }

  else
  {
    *(v0 + 168) = 31;
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_230D63BDC;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 168), 0, 0);
  }
}

uint64_t sub_230D63BDC()
{

  return MEMORY[0x2822009F8](sub_230D63CD8, 0, 0);
}

uint64_t sub_230D63CD8()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  *(v0 + 144) = v2;
  *(v0 + 152) = v6;
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v6;
  sub_230D0585C(v5, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v11 = qword_27DB5A438;

  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_230D63E20;

  return sub_230D7BB08(sub_230D7BB08, 31, v0 + 16, v11, v0 + 16);
}

uint64_t sub_230D63E20()
{

  return MEMORY[0x2822009F8](sub_230D63F54, 0, 0);
}

uint64_t sub_230D63F8C()
{
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = qword_27DB5A438;
  *(v0 + 192) = qword_27DB5A438;
  sub_230D1CDE0(v1, v0 + 16);

  return MEMORY[0x2822009F8](sub_230D64034, v2, 0);
}

uint64_t sub_230D64034()
{
  sub_230D1CDE0(*(v0 + 184), v0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_230D64100;
  v2 = *(v0 + 184);

  return (sub_230D72678)(15, v2);
}

uint64_t sub_230D64100(uint64_t a1)
{
  v4 = *v2;
  v4[26] = v1;

  v5 = v4[24];
  v6 = v4[23];
  if (v1)
  {
    sub_230D1CE3C(v6);
    v7 = sub_230D6425C;
  }

  else
  {
    v4[27] = a1;
    sub_230D1CE3C(v6);
    v7 = sub_230D642C8;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_230D6425C()
{
  v1 = v0[23];
  MEMORY[0x23191E910](v0[26]);
  sub_230D1CE3C(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_230D642C8()
{
  sub_230D1CE3C(*(v0 + 184));

  return MEMORY[0x2822009F8](sub_230D64330, 0, 0);
}

uint64_t sub_230D64330()
{
  v1 = *(v0 + 216);
  sub_230D1CDE0(*(v0 + 184), v0 + 96);

  return MEMORY[0x2822009F8](sub_230D643A0, v1, 0);
}

uint64_t sub_230D643A0()
{
  sub_230D1CDE0(*(v0 + 184), v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_230D64494;

  return (sub_230D7F790)(7);
}

uint64_t sub_230D64494(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 184);
  *(*v1 + 232) = a1;

  sub_230D1CE3C(v3);

  return MEMORY[0x2822009F8](sub_230D645D0, v2, 0);
}

uint64_t sub_230D645D0()
{
  sub_230D1CE3C(*(v0 + 184));

  return MEMORY[0x2822009F8](sub_230D64638, 0, 0);
}

uint64_t sub_230D64638()
{
  v1 = v0[29];
  sub_230E69540();

  v0[22] = v1;
  v2 = sub_230E69890();
  MEMORY[0x23191DA00](v2);

  MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
  sub_230E68950();

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D64748(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 352) = a1;
  *(v3 + 360) = v4;
  *(v3 + 368) = v5;
  *(v3 + 376) = *(a2 + 1);
  v6 = *(a3 + 16);
  *(v3 + 272) = *a3;
  *(v3 + 288) = v6;
  *(v3 + 304) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D6478C, 0, 0);
}

uint64_t sub_230D6478C()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 376);
    MEMORY[0x23191DA00](*(v0 + 360), *(v0 + 368));
    MEMORY[0x23191DA00](58, 0xE100000000000000);
    MEMORY[0x23191DA00](v2, v1);
    *(v0 + 392) = 0x776F6C666B726F77;
    *(v0 + 400) = 0xEF3A65686361632DLL;
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    *(v0 + 137) = 0;
    v3 = *(v0 + 288);
    *(v0 + 312) = *(v0 + 272);
    *(v0 + 328) = v3;
    *(v0 + 344) = *(v0 + 304);
    v4 = swift_task_alloc();
    *(v0 + 408) = v4;
    *v4 = v0;
    v4[1] = sub_230D6494C;

    return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 137), v5, v0 + 312);
  }

  else
  {
    v7 = *(v0 + 352);
    sub_230D65C88((v0 + 16));
    v8 = *(v0 + 16);
    v9 = *(v0 + 32);
    v10 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    v11 = *(v0 + 80);
    v12 = *(v0 + 96);
    v13 = *(v0 + 112);
    *(v7 + 105) = *(v0 + 121);
    v7[5] = v12;
    v7[6] = v13;
    v7[4] = v11;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_230D6494C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x23191E910](v1);
    v5 = sub_230D64E4C;
  }

  else
  {
    *(v4 + 416) = a1;
    v5 = sub_230D64A78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230D64A78()
{
  v1 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_230D64AE8, v1, 0);
}

uint64_t sub_230D64AE8()
{
  v2 = v0[49];
  v1 = v0[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v3 = swift_allocObject();
  v0[53] = v3;
  *(v3 + 16) = xmmword_230E6B3B0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = sub_230D0DEAC(MEMORY[0x277D84F90]);
  v0[54] = v4;
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_230D64BF8;
  v6 = v0[52];

  return sub_230D65E6C(v3, v4, (v0 + 34), v6);
}

uint64_t sub_230D64BF8(uint64_t a1)
{
  v2 = *(*v1 + 416);
  *(*v1 + 448) = a1;

  return MEMORY[0x2822009F8](sub_230D64D50, v2, 0);
}

uint64_t sub_230D64D50()
{
  sub_230D5CD70(*(v0 + 392), *(v0 + 400), *(v0 + 448), *(v0 + 352));

  return MEMORY[0x2822009F8](sub_230D64DEC, 0, 0);
}

uint64_t sub_230D64DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D64E4C()
{
  v1 = *(v0 + 352);

  sub_230D65C88((v0 + 144));
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  v4 = *(v0 + 192);
  v1[2] = *(v0 + 176);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 208);
  v6 = *(v0 + 224);
  v7 = *(v0 + 240);
  *(v1 + 105) = *(v0 + 249);
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v5;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_230D64EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = a3;
  *(v3 + 184) = a1;
  *(v3 + 312) = *a3;
  *(v3 + 208) = *(a3 + 8);
  *(v3 + 313) = *(a3 + 24);
  *(v3 + 224) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D64F28, 0, 0);
}

uint64_t sub_230D64F28()
{
  v1 = v0[24];
  v2 = *v1;
  v0[29] = *v1;
  v3 = v1[1];
  v0[30] = v3;
  if (v1[9])
  {

    v4 = getpid();
  }

  else
  {
    v4 = v1[8];
  }

  v0[31] = v4;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000003DLL, 0x8000000230E825F0);
  MEMORY[0x23191DA00](v2, v3);
  MEMORY[0x23191DA00](0xD000000000000016, 0x8000000230E82630);
  v0[22] = v4;
  v5 = sub_230E69890();
  MEMORY[0x23191DA00](v5);

  sub_230E68950();

  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v6 = v0[25];
  v7 = qword_27DB5A438;
  v0[32] = qword_27DB5A438;
  sub_230D1CDE0(v6, (v0 + 2));

  return MEMORY[0x2822009F8](sub_230D650DC, v7, 0);
}

uint64_t sub_230D650DC()
{
  sub_230D1CDE0(*(v0 + 200), v0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_230D651AC;
  v2 = *(v0 + 200);

  return (sub_230D6F7D0)(39, v2);
}

uint64_t sub_230D651AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 256);
  sub_230D1CE3C(*(v3 + 200));
  if (v1)
  {
    v6 = sub_230D65738;
  }

  else
  {
    v6 = sub_230D652FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230D652FC()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 312);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 313) & 1 | (*(v0 + 314) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v6;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_230D65404;
  v8 = *(v0 + 272);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);

  return sub_230E57B20(v10, v9, v8, v0 + 96);
}

uint64_t sub_230D65404(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  sub_230D666B4(v3[12], v3[13], v3[14], v3[15], v3[16]);
  if (v1)
  {

    v4 = sub_230D656D4;
  }

  else
  {
    v4 = sub_230D65544;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230D65544()
{
  if (*(v0[37] + 16))
  {
    v1 = v0[23];
    sub_230E68950();
    sub_230E68C90();
    v2 = sub_230E68C70();

    *v1 = v2;
  }

  else
  {

    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v4 = 0xD00000000000001FLL;
    *(v4 + 8) = 0x8000000230E826D0;
    *(v4 + 16) = 3;
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_230D656D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D65738()
{
  sub_230D1CE3C(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of MLInferenceClient.prewarmInference(_:requestContext:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 80) + **(*v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_230D1D2F8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLInferenceClient.runInference(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_230D1D2F8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLInferenceClient.runInference(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_230D1BF00;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLInferenceClient.clearInferenceCache(requestContext:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_230D1D2F8;

  return v6(a1);
}

double sub_230D65C88(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_230D65CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_230D65D5C;

  return sub_230E0611C(a2, a3, a4, a5);
}

uint64_t sub_230D65D5C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_230D65E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 176) = a2;
  v7 = *(a3 + 16);
  *(v4 + 200) = *a3;
  *(v4 + 216) = v7;
  *(v4 + 232) = *(a3 + 32);
  *(v4 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  *(v4 + 88) = sub_230D66514();
  *(v4 + 56) = a1;

  return MEMORY[0x2822009F8](sub_230D65F28, a4, 0);
}

uint64_t sub_230D65F28()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    v9[2] = v0 + 56;
    v9[3] = v7;
    v9[4] = v0 + 16;
    v9[5] = v8;
    sub_230D66644(v6, v0 + 136);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_230D6633C;

    return sub_230D1846C(8, v0 + 16, &unk_230E71D90, v9);
  }

  else
  {
    *(v0 + 288) = 8;
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_230D660F4;

    return static RequestContext.from(_:correlationID:)(v0 + 96, (v0 + 288), 0, 0);
  }
}

uint64_t sub_230D660F4()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_230D66204, v1, 0);
}

uint64_t sub_230D66204()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v6 = *(v0 + 128);
  *(v0 + 248) = v3;
  *(v0 + 256) = v6;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 16) = v1;
  v9 = *(v0 + 176);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  v10[2] = v0 + 56;
  v10[3] = v8;
  v10[4] = v0 + 16;
  v10[5] = v9;
  sub_230D66644(v7, v0 + 136);
  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_230D6633C;

  return sub_230D1846C(8, v0 + 16, &unk_230E71D90, v10);
}

uint64_t sub_230D6633C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_230D664B0, v2, 0);
}

uint64_t sub_230D664B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[1];
  v2 = v0[35];

  return v1(v2);
}

unint64_t sub_230D66514()
{
  result = qword_27DB5ABF8;
  if (!qword_27DB5ABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ABF8);
  }

  return result;
}

uint64_t sub_230D66578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1BF00;

  return sub_230D65CA4(a1, v4, v5, v7, v6);
}

uint64_t sub_230D66644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B8B8, &qword_230E7ADD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_230D666B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_230D666F8(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_230D66710()
{
  result = qword_27DB5B8C0;
  if (!qword_27DB5B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8C0);
  }

  return result;
}

unint64_t sub_230D66764()
{
  result = qword_27DB5B8C8;
  if (!qword_27DB5B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8C8);
  }

  return result;
}

unint64_t sub_230D667B8()
{
  result = qword_27DB5B8D0;
  if (!qword_27DB5B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8D0);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_230D66848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D66890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D66908(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x536C6C617265766FLL;
    v6 = 0x74536D6574737973;
    if (a1 != 2)
    {
      v6 = 0x7365736143657375;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
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
    v1 = 0xD000000000000010;
    v2 = 0x65726F7453766BLL;
    if (a1 != 7)
    {
      v2 = 0x6D7553726F727265;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E6967676F6CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_230D66A50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B900, &qword_230E71EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D67B5C();
  sub_230E69A50();
  LOBYTE(v13) = 0;
  sub_230E69840();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_230E69820();
    LOBYTE(v13) = 2;
    sub_230E69810();
    v13 = *(v3 + 32);
    v14 = *(v3 + 48);
    v12 = 3;
    sub_230D67C6C();
    sub_230E69850();
    v13 = *(v3 + 56);
    v14 = *(v3 + 72);
    v12 = 4;
    sub_230E69850();
    v13 = *(v3 + 80);
    v14 = *(v3 + 96);
    v12 = 5;
    sub_230E69850();
    v13 = *(v3 + 104);
    v14 = *(v3 + 120);
    v12 = 6;
    sub_230E69850();
    v13 = *(v3 + 128);
    v14 = *(v3 + 144);
    v12 = 7;
    sub_230E69850();
    LOBYTE(v13) = 8;
    sub_230E69810();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_230D66D74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D67230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D66DA8(uint64_t a1)
{
  v2 = sub_230D67B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D66DE4(uint64_t a1)
{
  v2 = sub_230D67B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_230D66E20@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_230D67530(a2, v9).n128_u64[0];
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_230D66EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B938, &qword_230E72060);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D682F8();
  sub_230E69A50();
  v16 = 0;
  sub_230E69840();
  if (!v4)
  {
    v15 = 1;
    sub_230E69840();
    v13[1] = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_230E69850();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_230D670D8()
{
  v1 = 0x436572756C696166;
  if (*v0 != 1)
  {
    v1 = 0x744964656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4373736563637573;
  }
}

uint64_t sub_230D67140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D67FB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D67168(uint64_t a1)
{
  v2 = sub_230D682F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D671A4(uint64_t a1)
{
  v2 = sub_230D682F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D671E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_230D680D8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_230D67230(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000230E827C0 == a2;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C6C617265766FLL && a2 == 0xEE00737365636375 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74536D6574737973 && a2 == 0xEC00000073757461 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365736143657375 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E827E0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82800 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65726F7453766BLL && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D7553726F727265 && a2 == 0xEC0000007972616DLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_230E698C0();

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

__n128 sub_230D67530@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B8E8, &qword_230E71EA0);
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D67B5C();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v5;
    LOBYTE(v61) = 0;
    v10 = sub_230E69750();
    LOBYTE(v61) = 1;
    v82 = sub_230E69730();
    LOBYTE(v61) = 2;
    v46 = sub_230E69720();
    v48 = v11;
    LOBYTE(v50) = 3;
    v47 = sub_230D67BB0();
    sub_230E69760();
    v12 = v62;
    v42 = v61;
    LOBYTE(v50) = 4;
    v44 = 0;
    v45 = v63;
    sub_230E69760();
    v40 = v12;
    v13 = v61;
    v14 = v62;
    v41 = v63;
    LOBYTE(v50) = 5;
    sub_230E69760();
    v37 = v13;
    v38 = v14;
    v15 = v61;
    v16 = v62;
    v39 = v63;
    LOBYTE(v50) = 6;
    sub_230E69760();
    v34 = v15;
    v17 = v61;
    v35 = v62;
    v36 = v16;
    v18 = v63;
    LOBYTE(v50) = 7;
    sub_230E69760();
    v43 = v18;
    v44 = v17;
    v32 = v62;
    v33 = v61;
    v19 = v63;
    v83 = 8;
    v31 = sub_230E69720();
    v47 = 0;
    v21 = v20;
    v82 &= 1u;
    v22 = v82;
    (*(v9 + 8))(v8, v49);
    *&v50 = v10;
    BYTE8(v50) = v22;
    *&v51 = v46;
    *(&v51 + 1) = v48;
    v24 = v41;
    v23 = v42;
    *&v52 = v42;
    *(&v52 + 1) = v40;
    v53.n128_u64[0] = v45;
    v53.n128_u64[1] = v37;
    *&v54 = v38;
    *(&v54 + 1) = v41;
    *&v55 = v34;
    *(&v55 + 1) = v36;
    *&v56 = v39;
    *(&v56 + 1) = v44;
    *&v57 = v35;
    *(&v57 + 1) = v43;
    *&v58 = v33;
    *(&v58 + 1) = v32;
    v25 = v31;
    *&v59 = v19;
    *(&v59 + 1) = v31;
    v60 = v21;
    sub_230D67C04(&v50, &v61);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v61 = v10;
    LOBYTE(v62) = v82;
    v63 = v46;
    v64 = v48;
    v65 = v23;
    v66 = v40;
    v67 = v45;
    v68 = v37;
    v69 = v38;
    v70 = v24;
    v71 = v34;
    v72 = v36;
    v73 = v39;
    v74 = v44;
    v75 = v35;
    v76 = v43;
    v77 = v33;
    v78 = v32;
    v79 = v19;
    v80 = v25;
    v81 = v21;
    sub_230D67C3C(&v61);
    v26 = v59;
    *(a2 + 128) = v58;
    *(a2 + 144) = v26;
    *(a2 + 160) = v60;
    v27 = v55;
    *(a2 + 64) = v54;
    *(a2 + 80) = v27;
    v28 = v57;
    *(a2 + 96) = v56;
    *(a2 + 112) = v28;
    v29 = v51;
    *a2 = v50;
    *(a2 + 16) = v29;
    result = v53;
    *(a2 + 32) = v52;
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_230D67B5C()
{
  result = qword_27DB5B8F0;
  if (!qword_27DB5B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8F0);
  }

  return result;
}

unint64_t sub_230D67BB0()
{
  result = qword_27DB5B8F8;
  if (!qword_27DB5B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B8F8);
  }

  return result;
}

unint64_t sub_230D67C6C()
{
  result = qword_27DB5B908;
  if (!qword_27DB5B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationSyncMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationSyncMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_230D67E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230D67E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D67EAC()
{
  result = qword_27DB5B910;
  if (!qword_27DB5B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B910);
  }

  return result;
}

unint64_t sub_230D67F04()
{
  result = qword_27DB5B918;
  if (!qword_27DB5B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B918);
  }

  return result;
}

unint64_t sub_230D67F5C()
{
  result = qword_27DB5B920;
  if (!qword_27DB5B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B920);
  }

  return result;
}

uint64_t sub_230D67FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4373736563637573 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436572756C696166 && a2 == 0xEC000000746E756FLL || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x744964656C696166 && a2 == 0xEB00000000736D65)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D680D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B928, &unk_230E72050);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D682F8();
  sub_230E69A30();
  v9[31] = 0;
  v7 = sub_230E69750();
  v9[30] = 1;
  sub_230E69750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v9[15] = 2;
  sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_230E69760();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_230D682F8()
{
  result = qword_27DB5B930;
  if (!qword_27DB5B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B930);
  }

  return result;
}

unint64_t sub_230D68360()
{
  result = qword_27DB5B940;
  if (!qword_27DB5B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B940);
  }

  return result;
}

unint64_t sub_230D683B8()
{
  result = qword_27DB5B948;
  if (!qword_27DB5B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B948);
  }

  return result;
}

unint64_t sub_230D68410()
{
  result = qword_27DB5B950[0];
  if (!qword_27DB5B950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DB5B950);
  }

  return result;
}

void sub_230D6846C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_230D68858();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_230D68510(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_230D68664(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_230D68858()
{
  if (!qword_27DB5B9D8[0])
  {
    v0 = sub_230E69450();
    if (!v1)
    {
      atomic_store(v0, qword_27DB5B9D8);
    }
  }
}

uint64_t sub_230D688A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373654DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726556746E657665 && a2 == 0xEC0000006E6F6973 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E82820 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D68AAC(unsigned __int8 a1)
{
  sub_230E699B0();
  MEMORY[0x23191E2B0](a1);
  return sub_230E699D0();
}

uint64_t sub_230D68AF4(unsigned __int8 a1)
{
  v1 = 0x6567617373654DLL;
  v2 = 0x726556746E657665;
  v3 = 0x6D6954746E657665;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x707954746E657665;
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

uint64_t sub_230D68BA4(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v12[0] = a2;
  v12[1] = v4;
  type metadata accessor for EnhancedMetricsEvent.CodingKeys(255, v4, v3, a2[4]);
  swift_getWitnessTable();
  v5 = sub_230E69870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E69A50();
  v17 = 0;
  v10 = v12[3];
  sub_230E69850();
  if (!v10)
  {
    v16 = 1;
    sub_230E69810();
    v15 = 2;
    sub_230E69840();
    v14 = 3;
    sub_230E69830();
    v13 = 4;
    sub_230E697B0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_230D68DC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v37 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnhancedMetricsEvent.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v40 = sub_230E69790();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v13);
  v15 = &v34 - v14;
  v38 = a3;
  v16 = type metadata accessor for EnhancedMetricsEvent(0, a2, a3, a4);
  v34 = *(v16 - 1);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v34 - v18;
  v20 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v41 = v15;
  v21 = v42;
  sub_230E69A30();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v23 = v36;
  v22 = v37;
  v48 = 0;
  sub_230E69760();
  (*(v22 + 32))(v19, v39, a2);
  v47 = 1;
  v24 = sub_230E69720();
  v25 = &v19[v16[11]];
  *v25 = v24;
  v25[1] = v26;
  v46 = 2;
  *&v19[v16[12]] = sub_230E69750();
  v45 = 3;
  sub_230E69740();
  *&v19[v16[13]] = v27;
  v44 = 4;
  v28 = sub_230E696B0();
  v30 = v29;
  (*(v23 + 8))(v41, v40);
  v31 = &v19[v16[14]];
  *v31 = v28;
  v31[1] = v30;
  v32 = v34;
  (*(v34 + 16))(v35, v19, v16);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v32 + 8))(v19, v16);
}

uint64_t sub_230D69248(uint64_t a1)
{
  sub_230E699B0();
  sub_230D68A84(v3, *v1);
  return sub_230E699D0();
}

uint64_t sub_230D692A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230D688A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230D692D8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_230D694F4();
  *a2 = result;
  return result;
}

uint64_t sub_230D6930C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_230D69360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_230D693B4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_230D69428(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t static LoggingConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = sub_230D6A090(v2, v3);

  return v4 & 1;
}

uint64_t sub_230D69598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D69620(uint64_t a1)
{
  v2 = sub_230D6A4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6965C(uint64_t a1)
{
  v2 = sub_230D6A4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoggingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA60, &qword_230E72330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6A4E4();

  sub_230E69A50();
  v10[1] = v8;
  sub_230D6A538();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

uint64_t LoggingConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA68, &qword_230E72338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6A4E4();
  sub_230E69A30();
  if (!v2)
  {
    sub_230D6A58C();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D69994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = sub_230D6A090(v2, v3);

  return v4 & 1;
}

ServicesIntelligence::MetricsTopic_optional __swiftcall MetricsTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetricsTopic.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F5F706D615F7078;
  }
}

uint64_t sub_230D69AC0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D69B78(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D69C1C(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D69CDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676F6C5F7064;
  v4 = 0x8000000230E802F0;
  v5 = 0xD00000000000001FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000230E80310;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F5F706D615F7078;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230D69E00(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000230E802F0;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000230E802F0;
  }

  else
  {
    v6 = 0x8000000230E80310;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F5F706D615F7078;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00676F6C5F7064;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = 0x8000000230E80310;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F5F706D615F7078;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00676F6C5F7064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230D69EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_230D6C9CC();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_230D69F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_230D6C9CC();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_230D69FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_230D6C9CC();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_230D6A02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_230D6C9CC();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_230D6A090(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v33 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v35 = result;
  v34 = v8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v37 = (v7 - 1) & v7;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(v3 + 48) + v12);
      v14 = *(v3 + 56) + 48 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v19 = *(v14 + 24);
      v18 = *(v14 + 32);
      v20 = *(v14 + 40);

      v38 = v18;

      if (!v16)
      {
        return 1;
      }

      v21 = sub_230DB4A68(v13);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = *(v2 + 56) + 48 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = *v23;
      v29 = *(v23 + 40);

      if ((sub_230D0B544(v28, v15) & 1) == 0 || (sub_230D26220(v24, v16) & 1) == 0 || v25 != v17 || (sub_230D6A5E0(v26, v19) & 1) == 0 || (sub_230D6A784(v27, v38) & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v29)
      {
        if (!v20)
        {
          goto LABEL_40;
        }

        v30 = *(v29 + 16);
        if (v30 != *(v20 + 16))
        {
          goto LABEL_40;
        }

        if (v30 && v29 != v20)
        {
          v31 = 0;
          while (1)
          {
            v32 = *(v29 + v31 + 32) == *(v20 + v31 + 32) && *(v29 + v31 + 40) == *(v20 + v31 + 40);
            if (!v32 && (sub_230E698C0() & 1) == 0)
            {
              break;
            }

            v31 += 16;
            if (!--v30)
            {
              goto LABEL_26;
            }
          }

LABEL_40:

LABEL_41:

          return 0;
        }
      }

      else if (v20)
      {
        goto LABEL_40;
      }

LABEL_26:

      v3 = v35;
      v2 = a2;
      v8 = v34;
      v7 = v37;
      if (!v37)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_41;
  }

LABEL_7:
  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v33 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_230D6A4E4()
{
  result = qword_2815664F8;
  if (!qword_2815664F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664F8);
  }

  return result;
}

unint64_t sub_230D6A538()
{
  result = qword_2815661B0;
  if (!qword_2815661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661B0);
  }

  return result;
}

unint64_t sub_230D6A58C()
{
  result = qword_27DB5BA70;
  if (!qword_27DB5BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BA70);
  }

  return result;
}

uint64_t sub_230D6A5E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_230DA41A0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_230E698C0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6A784(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_230DA41A0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6A8C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v38 = (v6 + 63) >> 6;
  v39 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v43 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 48 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v45 = *(v16 + 32);
    v44 = *(v16 + 40);
    v41 = v14 == 0;
    v42 = *(v16 + 41);

    v46 = v17;

    if (!v14)
    {
      return 1;
    }

    v21 = sub_230DA41A0(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0 || ((v24 = *(v2 + 56) + 48 * v21, v26 = *(v24 + 16), v25 = *(v24 + 24), v27 = *(v24 + 32), v28 = *(v24 + 40), v29 = *(v24 + 41), *v24 == v18) ? (v30 = v46 == *(v24 + 8)) : (v30 = 0), !v30 && (sub_230E698C0() & 1) == 0))
    {
LABEL_51:

      return 0;
    }

    if (v25)
    {
      if (!v19)
      {
        goto LABEL_51;
      }

      v31 = v26 == v20 && v25 == v19;
      if (!v31 && (sub_230E698C0() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v19)
    {
      goto LABEL_51;
    }

    if (v27 != v45 || v44 != v28)
    {
      goto LABEL_51;
    }

    if (v29)
    {
      v32 = 0x3233746E69;
    }

    else
    {
      v32 = 0x323374616F6C66;
    }

    if (v29)
    {
      v33 = 0xE500000000000000;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    if (v42)
    {
      v34 = 0x3233746E69;
    }

    else
    {
      v34 = 0x323374616F6C66;
    }

    if (v42)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE700000000000000;
    }

    if (v32 == v34 && v33 == v35)
    {

      v3 = v39;
      v2 = a2;
      v8 = v43;
    }

    else
    {
      v37 = sub_230E698C0();

      v3 = v39;
      v2 = a2;
      v8 = v43;
      result = v41;
      if ((v37 & 1) == 0)
      {
        return result;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v38)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6ABB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v50 = *(v16 + 16);
    v20 = *v16;
    v51 = v19;
    v52 = v18;
    v49 = v20;
    v53 = v17;
    v33 = v18;
    v34 = v50;
    v31 = v19;
    v32 = v20;

    sub_230D6CA20(&v49, &v44);
    if (!v14)
    {
      return 1;
    }

    v49 = v32;
    v50 = v34;
    v51 = v31;
    v52 = v33;
    v53 = v17;
    v21 = sub_230DA41A0(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_230D6CA7C(&v44);
      return 0;
    }

    v24 = *(a2 + 56) + 72 * v21;
    v40[0] = *v24;
    v26 = *(v24 + 32);
    v25 = *(v24 + 48);
    v27 = *(v24 + 16);
    v41 = *(v24 + 64);
    v40[2] = v26;
    v40[3] = v25;
    v40[1] = v27;
    v28 = *(v24 + 48);
    v37 = *(v24 + 32);
    v38 = v28;
    v39 = *(v24 + 64);
    v29 = *(v24 + 16);
    v35 = *v24;
    v36 = v29;
    sub_230D6CA20(v40, &v44);
    v30 = _s20ServicesIntelligence25InferenceOutputDefinitionV2eeoiySbAC_ACtFZ_0(&v35, &v49);
    v42[2] = v37;
    v42[3] = v38;
    v43 = v39;
    v42[0] = v35;
    v42[1] = v36;
    sub_230D6CA7C(v42);
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    result = sub_230D6CA7C(&v44);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230D6AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736369706F74 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D6AEA0(uint64_t a1)
{
  v2 = sub_230D6B0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6AEDC(uint64_t a1)
{
  v2 = sub_230D6B0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricsLoggingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA78, &qword_230E72340);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6B0D0();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA80, &qword_230E72348);
  sub_230D6B390(&qword_281565FD0, sub_230D6B124, sub_230D6B178, MEMORY[0x277D83508]);
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D6B0D0()
{
  result = qword_2815661C8;
  if (!qword_2815661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661C8);
  }

  return result;
}

unint64_t sub_230D6B124()
{
  result = qword_2815667A8;
  if (!qword_2815667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667A8);
  }

  return result;
}

unint64_t sub_230D6B178()
{
  result = qword_2815661D0;
  if (!qword_2815661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661D0);
  }

  return result;
}

uint64_t MetricsLoggingConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA88, &qword_230E72350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6B0D0();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BA80, &qword_230E72348);
    sub_230D6B390(&qword_27DB5BA90, sub_230D6B420, sub_230D6B474, MEMORY[0x277D83528]);
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D6B390(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BA80, &qword_230E72348);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6B420()
{
  result = qword_27DB5BA98;
  if (!qword_27DB5BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BA98);
  }

  return result;
}

unint64_t sub_230D6B474()
{
  result = qword_27DB5BAA0;
  if (!qword_27DB5BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAA0);
  }

  return result;
}

void __swiftcall MetricsTopicConfiguration.init(domain:publishers:schema:samplingRate:eventTypeToSamplingRateOverride:enhancedMetricsEvents:)(ServicesIntelligence::MetricsTopicConfiguration *__return_ptr retstr, ServicesIntelligence::Domain domain, Swift::OpaquePointer publishers, Swift::OpaquePointer schema, Swift::Double samplingRate, Swift::OpaquePointer eventTypeToSamplingRateOverride, Swift::OpaquePointer_optional enhancedMetricsEvents)
{
  retstr->domain = *domain;
  retstr->publishers = publishers;
  retstr->samplingRate = samplingRate;
  retstr->schema = schema;
  retstr->eventTypeToSamplingRateOverride = eventTypeToSamplingRateOverride;
  retstr->enhancedMetricsEvents.value._rawValue = enhancedMetricsEvents.value._rawValue;
}

void __swiftcall MetricsTopicConfiguration.init(domain:schema:samplingRate:eventTypeToSamplingRateOverride:enhancedMetricsEvents:)(ServicesIntelligence::MetricsTopicConfiguration *__return_ptr retstr, ServicesIntelligence::Domain domain, Swift::OpaquePointer schema, Swift::Double samplingRate, Swift::OpaquePointer eventTypeToSamplingRateOverride, Swift::OpaquePointer_optional enhancedMetricsEvents)
{
  rawValue = enhancedMetricsEvents.value._rawValue;
  v11 = *domain;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAA8, &qword_230E72358);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_230E6B3B0;
  *(v12 + 32) = v11;
  retstr->domain = v11;
  retstr->publishers._rawValue = v12;
  retstr->samplingRate = samplingRate;
  retstr->schema = schema;
  retstr->eventTypeToSamplingRateOverride = eventTypeToSamplingRateOverride;
  retstr->enhancedMetricsEvents.value._rawValue = rawValue;
}

uint64_t sub_230D6B5E8()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x616D65686373;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656873696C627570;
  if (v1 != 1)
  {
    v5 = 0x676E696C706D6173;
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

uint64_t sub_230D6B6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D6C7B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D6B6D8(uint64_t a1)
{
  v2 = sub_230D6C188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D6B714(uint64_t a1)
{
  v2 = sub_230D6C188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricsTopicConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB0, &qword_230E72360);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 4);
  v19 = *(v1 + 3);
  v20 = v10;
  v17 = *(v1 + 5);
  v18 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6C188();
  v12 = v4;
  sub_230E69A50();
  LOBYTE(v21) = v9;
  v22 = 0;
  sub_230D0D0D4();
  sub_230E69850();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v15 = v17;
    v21 = v20;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB8, &qword_230E72368);
    sub_230D6C24C(&qword_27DB5BAC0, sub_230D0D0D4, MEMORY[0x277D83948]);
    sub_230E69850();
    LOBYTE(v21) = 2;
    sub_230E69830();
    v21 = v14;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
    sub_230D6C2C4(&qword_281565FC8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_230E69850();
    v21 = v13;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
    sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_230E69850();
    v21 = v15;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_230E697F0();
  }

  return (*(v5 + 8))(v8, v12);
}

uint64_t MetricsTopicConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD8, &qword_230E72378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D6C188();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_230D0D17C();
  sub_230E69760();
  v10 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAB8, &qword_230E72368);
  v21 = 1;
  sub_230D6C24C(&qword_27DB5BAE0, sub_230D0D17C, MEMORY[0x277D83978]);
  sub_230E69760();
  v11 = v20;
  LOBYTE(v20) = 2;
  sub_230E69740();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
  v21 = 3;
  sub_230D6C2C4(&qword_27DB5BAE8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_230E69760();
  v19 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  v21 = 4;
  sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
  sub_230E69760();
  v18 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v21 = 5;
  sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_230E69700();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  v15 = v20;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  v17 = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_230D6BFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  if (*(v4 + 16))
  {
    v5 = sub_230DA41A0(a1, a2);
    if (v6)
    {
      v3 = *(*(v4 + 56) + 8 * v5);
    }
  }

  if (v3 <= 0.0)
  {
    return 0;
  }

  if (v3 >= 1.0)
  {
    return 1;
  }

  return vcvtd_n_f64_u64(sub_230D6C028(0x20000000000001uLL), 0x35uLL) < v3;
}

unint64_t sub_230D6C028(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23191EAF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23191EAF0](&v3, 8);
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

uint64_t _s20ServicesIntelligence25MetricsTopicConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((sub_230D0B544(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_230D26220(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && v3 == v8)
  {
    if (sub_230D6A5E0(v5, v10) & 1) != 0 && (sub_230D6A784(v4, v9))
    {
      if (v6)
      {
        if (v11 && (sub_230D2654C(v6, v11) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_230D6C188()
{
  result = qword_2815661E8;
  if (!qword_2815661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815661E8);
  }

  return result;
}

uint64_t sub_230D6C1DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAD0, &qword_230E73560);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D6C24C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAB8, &qword_230E72368);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230D6C2C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5BAC8, &qword_230E72370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D6C334()
{
  result = qword_2815667A0;
  if (!qword_2815667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815667A0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_230D6C3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_230D6C414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D6C4A4()
{
  result = qword_27DB5BAF0;
  if (!qword_27DB5BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAF0);
  }

  return result;
}

unint64_t sub_230D6C4FC()
{
  result = qword_27DB5BAF8;
  if (!qword_27DB5BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BAF8);
  }

  return result;
}

unint64_t sub_230D6C554()
{
  result = qword_27DB5BB00;
  if (!qword_27DB5BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5BB00);
  }

  return result;
}