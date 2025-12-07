__n128 SearchPageContainer.toolbarItemGroups.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for SearchPageContainer(0) + 56);

  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_24F569A94(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726579616C70;
    v7 = 0xD000000000000013;
    v8 = 0x50676E69646E616CLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000019;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74706D6F7270;
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
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x656C746974;
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

uint64_t sub_24F569C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F56B2A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F569C2C(uint64_t a1)
{
  v2 = sub_24F56A150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F569C68(uint64_t a1)
{
  v2 = sub_24F56A150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPageContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F20, &qword_24FA09B78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F56A150();
  sub_24F92D128();
  LOBYTE(v17) = 0;
  type metadata accessor for Player(0);
  sub_24E6BD740(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SearchPageContainer(0);
    LOBYTE(v17) = 1;
    sub_24F92CD08();
    LOBYTE(v17) = 2;
    sub_24F92CCA8();
    LOBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768, "D5\r");
    sub_24E602068(&qword_27F247F30, &qword_27F215768, "D5\r", MEMORY[0x277D21AA8]);
    sub_24F92CD48();
    LOBYTE(v17) = 4;
    sub_24F928AD8();
    sub_24E6BD740(&qword_27F216080, MEMORY[0x277D21C88], MEMORY[0x277D21C90]);
    sub_24F92CD48();
    LOBYTE(v17) = 5;
    sub_24F92CD48();
    LOBYTE(v17) = 6;
    sub_24F92CD48();
    LOBYTE(v17) = 7;
    sub_24F92CD08();
    LOBYTE(v17) = *(v3 + v9[12]);
    v22 = 8;
    sub_24F34828C();
    sub_24F92CD48();
    LOBYTE(v17) = *(v3 + v9[13]);
    v22 = 9;
    sub_24F3482E0();
    sub_24F92CD48();
    v10 = (v3 + v9[14]);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    LOBYTE(v10) = *(v10 + 32);
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v10;
    v22 = 10;
    sub_24F348334();

    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F56A150()
{
  result = qword_27F247F28;
  if (!qword_27F247F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F28);
  }

  return result;
}

uint64_t SearchPageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v56 = sub_24F928AD8();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F38, &qword_24FA09B80);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v46 - v12;
  v14 = type metadata accessor for SearchPageContainer(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F56A150();
  v57 = v13;
  v18 = v58;
  sub_24F92D108();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v19 = v9;
  v20 = v53;
  v49 = v14;
  v58 = v16;
  LOBYTE(v60) = 0;
  sub_24E6BD740(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v21 = v54;
  sub_24F92CC68();
  v22 = v21;
  v23 = v58;
  sub_24E61C0A8(v22, v58);
  LOBYTE(v60) = 1;
  v24 = sub_24F92CC28();
  v25 = v49;
  v26 = (v23 + v49[5]);
  *v26 = v24;
  v26[1] = v27;
  LOBYTE(v60) = 2;
  v54 = 0;
  v28 = sub_24F92CBC8();
  v29 = (v23 + v25[6]);
  *v29 = v28;
  v29[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768, "D5\r");
  v63 = 3;
  sub_24E602068(&qword_27F243DB0, &qword_27F215768, "D5\r", MEMORY[0x277D21AB0]);
  sub_24F92CC68();
  v31 = v23 + v25[7];
  v32 = v61;
  *v31 = v60;
  *(v31 + 16) = v32;
  *(v31 + 32) = v62;
  LOBYTE(v60) = 4;
  v48 = sub_24E6BD740(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  sub_24F92CC68();
  v33 = *(v52 + 32);
  v34 = v23 + v25[8];
  v35 = v19;
  v36 = v56;
  v46 = v52 + 32;
  v47 = v33;
  v33(v34, v35, v56);
  LOBYTE(v60) = 5;
  sub_24F92CC68();
  v47(v23 + v25[9], v6, v36);
  LOBYTE(v60) = 6;
  sub_24F92CC68();
  v47(v23 + v25[10], v51, v36);
  LOBYTE(v60) = 7;
  v37 = sub_24F92CC28();
  LODWORD(v54) = 1;
  v38 = &v58[v25[11]];
  *v38 = v37;
  v38[1] = v39;
  v63 = 8;
  sub_24F3484FC();
  sub_24F92CC68();
  v58[v25[12]] = v60;
  v63 = 9;
  sub_24F348550();
  sub_24F92CC68();
  v58[v49[13]] = v60;
  v63 = 10;
  sub_24E933414();
  sub_24F92CC68();
  (*(v20 + 8))(v57, v55);
  v40 = v62;
  v41 = v50;
  v42 = v58;
  v43 = &v58[v49[14]];
  v44 = v61;
  *v43 = v60;
  *(v43 + 1) = v44;
  v43[32] = v40;
  sub_24F56AB8C(v42, v41);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_24F56ABF0(v42, type metadata accessor for SearchPageContainer);
}

uint64_t sub_24F56AB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPageContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56ABF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F56AC80(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

double sub_24F56ACD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;

  return result;
}

double sub_24F56AD44(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for SearchPageContainer(0) + 28));

  return __swift_assign_boxed_opaque_existential_1(v3, a1);
}

uint64_t sub_24F56ADA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F56AEDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F56B004(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F56B0EC(319);
      if (v3 <= 0x3F)
      {
        sub_24F928AD8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F56B0EC(uint64_t a1)
{
  if (!qword_27F247F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247F58, &qword_24FA09C28);
    sub_24E602068(&qword_27F247F60, &qword_27F247F58, &qword_24FA09C28, &protocol conformance descriptor for _IntentKindTable_ReturningAnyJSIntent<A, B>);
    v1 = sub_24F9280E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F247F50);
    }
  }
}

unint64_t sub_24F56B1A4()
{
  result = qword_27F247F68;
  if (!qword_27F247F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F68);
  }

  return result;
}

unint64_t sub_24F56B1FC()
{
  result = qword_27F247F70;
  if (!qword_27F247F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F70);
  }

  return result;
}

unint64_t sub_24F56B254()
{
  result = qword_27F247F78;
  if (!qword_27F247F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F78);
  }

  return result;
}

uint64_t sub_24F56B2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA76A00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50676E69646E616CLL && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA76A20 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA76A40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA76A60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA73D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA73DB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA4A080 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24F56B614()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v2 = [swift_getObjCClassFromMetadata() supportedServices];
  type metadata accessor for AIDAServiceType(0);
  v3 = sub_24F92B5A8();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 32 + 8 * v5);
      v7 = [v1 accountForService_];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 username];
        if (!v9)
        {
          goto LABEL_13;
        }

        v10 = v9;
        v11 = sub_24F92B0D8();
        v13 = v12;

        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      if (v4 == ++v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_24F56B7C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F56B95C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesFriendComparisonHeader(uint64_t a1)
{
  result = qword_27F247F90;
  if (!qword_27F247F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F56BB2C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24E61C938(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F56BC50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FF8, &qword_24FA09FA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F56D9A0();
  sub_24F92D128();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesFriendComparisonHeader(0);
    v15 = 1;
    type metadata accessor for Player(0);
    sub_24F56DAB8(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v14 = 2;
    sub_24F92CD48();
    v13 = 3;
    sub_24F92CD08();
    v12 = 4;
    sub_24F92CCA8();
    v11 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v10 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v9 = 7;
    sub_24F929608();
    sub_24F56DAB8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F56C044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - v5;
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FE8, &qword_24FA09FA0);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ChallengesFriendComparisonHeader(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 36)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v53 = v20;
  sub_24E61DA68(&v54, v20, qword_27F21B590, &unk_24F93BE30);
  v21 = v16[10];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v24 = v18;
  v23(&v18[v21], 1, 1, v22);
  v25 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F56D9A0();
  v47 = v15;
  v26 = v50;
  sub_24F92D108();
  if (v26)
  {
    v27 = v53;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v28 = v51;
    sub_24E601704(v27, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v18[v28], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v6;
    v42 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v29 = v55;
    *v18 = v54;
    *(v18 + 1) = v29;
    *(v18 + 4) = v56;
    LOBYTE(v54) = 1;
    sub_24F56DAB8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CC68();
    v30 = v53;
    sub_24E61C0A8(v11, &v18[v16[5]]);
    LOBYTE(v54) = 2;
    v31 = v42;
    sub_24F92CC68();
    sub_24E61C0A8(v31, &v18[v16[6]]);
    LOBYTE(v54) = 3;
    v50 = 0;
    v32 = sub_24F92CC28();
    v33 = v51;
    v34 = &v18[v16[7]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v54) = 4;
    v36 = sub_24F92CBC8();
    v37 = &v18[v16[8]];
    *v37 = v36;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v57 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v30, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v54) = 6;
    sub_24E65CAA0();
    v39 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v39, v24 + v33, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v54) = 7;
    sub_24F56DAB8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v40 = v44;
    sub_24F92CC18();
    (*(v49 + 8))(v47, v48);
    sub_24E6009C8(v40, v24 + v16[11], &qword_27F213E68, &unk_24F93BC80);
    sub_24F56D9F4(v24, v43);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F56DA58(v24, type metadata accessor for ChallengesFriendComparisonHeader);
  }
}

unint64_t sub_24F56C8EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x547972616D6D7573;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F54646E65697266;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F56C9F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F56DD60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F56CA20(uint64_t a1)
{
  v2 = sub_24F56D9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F56CA5C(uint64_t a1)
{
  v2 = sub_24F56D9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F56CA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

__n128 sub_24F56CBD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB0, &qword_24FA09F28);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB8, &qword_24FA09F30);
  sub_24F56CD4C(a1, &v7[*(v8 + 44)]);
  LOBYTE(a1) = sub_24F925828();
  sub_24F923318();
  v9 = &v7[*(v5 + 44)];
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24F56D850(v7, a2);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FC0, &unk_24FA09F38) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_24F56CD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8, &qword_24FA01480);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FC8, &qword_24FA09F48);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  *v12 = sub_24F9249A8();
  *(v12 + 1) = 0x4038000000000000;
  v12[16] = 0;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FD0, &qword_24FA09F50) + 44);
  v53 = v12;
  v55 = a1;
  sub_24F56D168(a1, &v12[v13]);
  v52 = type metadata accessor for ChallengesFriendComparisonHeader(0);
  v14 = (a1 + *(v52 + 28));
  v15 = v14[1];
  v59 = *v14;
  v60 = v15;
  v16 = sub_24E600AEC();

  v51 = v16;
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  sub_24F9258F8();
  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24E600B40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v59 = v22;
  v60 = v24;
  v61 = v26 & 1;
  v62 = v28;
  v63 = KeyPath;
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  v54 = v7;
  sub_24F9268B8();
  sub_24E600B40(v22, v24, v26 & 1);

  v30 = (v55 + *(v52 + 32));
  v31 = v30[1];
  if (v31)
  {
    v59 = *v30;
    v60 = v31;

    v55 = sub_24F925E18();
    v51 = v33;
    v52 = v32;
    v35 = v34;
    v36 = swift_getKeyPath();
    v37 = v35 & 1;
    v38 = 1;
  }

  else
  {
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v37 = 0;
    v36 = 0;
    v38 = 0;
  }

  v39 = v53;
  v40 = v56;
  sub_24E60169C(v53, v56, &qword_27F247FC8, &qword_24FA09F48);
  v41 = v54;
  v42 = v58;
  sub_24F56D8C8(v54, v58);
  v43 = v57;
  sub_24E60169C(v40, v57, &qword_27F247FC8, &qword_24FA09F48);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FD8, &unk_24FA09F88);
  sub_24F56D8C8(v42, v43 + *(v44 + 48));
  v45 = v43 + *(v44 + 64);
  v46 = v55;
  v48 = v51;
  v47 = v52;
  *v45 = v55;
  *(v45 + 8) = v47;
  *(v45 + 16) = v37;
  *(v45 + 24) = v48;
  *(v45 + 32) = v36;
  *(v45 + 40) = v38;
  sub_24ED1A264(v46, v47, v37, v48);
  sub_24F56D938(v41);
  sub_24E601704(v39, &qword_27F247FC8, &qword_24FA09F48);
  sub_24ED1A2B4(v46, v47, v37, v48, v36);
  sub_24F56D938(v42);
  return sub_24E601704(v40, &qword_27F247FC8, &qword_24FA09F48);
}

uint64_t sub_24F56D168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v44 = &v44 - v4;
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810) - 8;
  MEMORY[0x28223BE20](v48);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v14;
  MEMORY[0x28223BE20](v15);
  v53 = &v44 - v16;
  v46 = type metadata accessor for ChallengesFriendComparisonHeader(0);
  v17 = a1 + *(v46 + 20);
  v18 = *(v17 + 24);
  v45 = *(v17 + 16);
  v19 = type metadata accessor for PlayerAvatar.Overlay(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  *&v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v21 = *(v7 + 28);
  v20(v9 + v21, 1, 1, v19);
  v22 = v9 + *(v7 + 32);
  *&v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;

  sub_24E61DA68(&v56, v22, qword_27F21B590, &unk_24F93BE30);
  *v9 = v45;
  v9[1] = v18;
  v23 = v9 + v21;
  v24 = v44;
  sub_24E61DA68(v44, v23, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&v59, v22, qword_27F21B590, &unk_24F93BE30);
  LOBYTE(v59) = 7;
  v25 = v53;
  sub_24F8319B8(v9, &v59, v53);
  sub_24F927618();
  sub_24F9238C8();
  v26 = v48;
  v27 = (v25 + *(v48 + 44));
  v28 = v57;
  *v27 = v56;
  v27[1] = v28;
  v27[2] = v58;
  v29 = v47 + *(v46 + 24);
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);
  v32 = v24;
  v20(v24, 1, 1, v19);
  *&v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v33 = *(v7 + 28);
  v20(v9 + v33, 1, 1, v19);
  v34 = v9 + *(v7 + 32);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0;

  sub_24E61DA68(v54, v34, qword_27F21B590, &unk_24F93BE30);
  *v9 = v31;
  v9[1] = v30;
  sub_24E61DA68(v32, v9 + v33, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&v59, v34, qword_27F21B590, &unk_24F93BE30);
  LOBYTE(v59) = 7;
  v35 = v49;
  sub_24F8319B8(v9, &v59, v49);
  sub_24F927618();
  sub_24F9238C8();
  v36 = (v35 + *(v26 + 44));
  v37 = v60;
  *v36 = v59;
  v36[1] = v37;
  v36[2] = v61;
  v38 = v53;
  v39 = v50;
  sub_24E60169C(v53, v50, &qword_27F2233D0, &qword_24F958810);
  v40 = v51;
  sub_24E60169C(v35, v51, &qword_27F2233D0, &qword_24F958810);
  v41 = v52;
  sub_24E60169C(v39, v52, &qword_27F2233D0, &qword_24F958810);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FE0, &qword_24FA09F98);
  sub_24E60169C(v40, v41 + *(v42 + 48), &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v35, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v38, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v40, &qword_27F2233D0, &qword_24F958810);
  return sub_24E601704(v39, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F56D6C0(uint64_t a1)
{
  sub_24F47DB2C();

  return sub_24F9218E8();
}

unint64_t sub_24F56D750()
{
  result = qword_27F247FA8;
  if (!qword_27F247FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247FA8);
  }

  return result;
}

uint64_t sub_24F56D850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247FB0, &qword_24FA09F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56D8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8, &qword_24FA01480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56D938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245CF8, &qword_24FA01480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F56D9A0()
{
  result = qword_27F247FF0;
  if (!qword_27F247FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247FF0);
  }

  return result;
}

uint64_t sub_24F56D9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesFriendComparisonHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56DA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F56DAB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F56DB14()
{
  result = qword_27F248000;
  if (!qword_27F248000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247FC0, &unk_24FA09F38);
    sub_24F56DBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248000);
  }

  return result;
}

unint64_t sub_24F56DBA0()
{
  result = qword_27F248008;
  if (!qword_27F248008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247FB0, &qword_24FA09F28);
    sub_24E602068(&qword_27F248010, &qword_27F248018, &qword_24FA09FC0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248008);
  }

  return result;
}

unint64_t sub_24F56DC5C()
{
  result = qword_27F248020;
  if (!qword_27F248020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248020);
  }

  return result;
}

unint64_t sub_24F56DCB4()
{
  result = qword_27F248028;
  if (!qword_27F248028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248028);
  }

  return result;
}

unint64_t sub_24F56DD0C()
{
  result = qword_27F248030[0];
  if (!qword_27F248030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F248030);
  }

  return result;
}

uint64_t sub_24F56DD60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54646E65697266 && a2 == 0xEF657261706D6F43 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x547972616D6D7573 && a2 == 0xEB00000000747865 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F56E000(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92AE38();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F56E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24F928AE8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F56E178, 0, 0);
}

uint64_t sub_24F56E178()
{
  v1 = v0[2];
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[4];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_24F56E2A4;

    return sub_24F56E4B4(v3, v2);
  }

  else
  {
    v6 = v0[3];
    v7 = v1[2];
    v8 = v1[3];

    sub_24F56EA34(v7, v8, sub_24F56F934, v6);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F56E2A4(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_24F56E3A4, 0, 0);
}

uint64_t sub_24F56E3A4()
{
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    v3 = *(v0 + 40);
    (*(v2 + 104))(v1, *MEMORY[0x277D21CA8], v3);
    sub_24F92A9C8();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    sub_24F56EA34(v6, v7, sub_24F56F934, v4);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F56E4B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v2[4] = swift_task_alloc();
  v3 = sub_24F91F4A8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F56E5AC, 0, 0);
}

uint64_t sub_24F56E5AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_24F91F488();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[4], &qword_27F228530, &unk_24F93C6E0);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[7];
    (*(v0[6] + 32))(v6, v0[4], v0[5]);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_24F56E758;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 10, 0, 0, 0xD000000000000020, 0x800000024FA76A80, sub_24F56F93C, v7, v9);
  }
}

uint64_t sub_24F56E758()
{

  return MEMORY[0x2822009F8](sub_24F56E870, 0, 0);
}

uint64_t sub_24F56E870()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_24F56E8FC(void *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_24F92A9A8();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_24F92A9C8();
    (*(v3 + 8))(v6, v2);
  }
}

void sub_24F56EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F92B098();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_24F56FAB4;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_24E9F9FFC;
    v11[3] = &block_descriptor_20_4;
    v10 = _Block_copy(v11);

    [v7 openApplicationWithBundleIdentifier:v8 usingConfiguration:0 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_24F56EB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8, &qword_24FA0A168);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24F91F3B8();
    v9 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    (*(v3 + 16))(v5, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    aBlock[4] = sub_24F56F9D8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F56E000;
    aBlock[3] = &block_descriptor_162;
    v12 = _Block_copy(aBlock);

    [v7 openURL:v8 configuration:v9 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24F56EE0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction(0);
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v5;
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_24F927E88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = a1[1];
  if (v17)
  {
    v47 = v6;
    v48 = a2;
    v46 = a1;
    v18 = *a1;
    if (qword_27F210FF8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_27F23C300);
    v20 = *(v11 + 16);
    v20(v16, v19, v10);
    v21 = sub_24F92B858();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    v20(v13, v16, v10);
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    (*(v11 + 32))(v24 + v22, v13, v10);
    v25 = (v24 + v23);
    *v25 = v18;
    v25[1] = v17;

    sub_24F1F2908(0, 0, v9, &unk_24FA0A150, v24);

    sub_24E601704(v9, &unk_27F21B570, &qword_24F93B020);
    (*(v11 + 8))(v16, v10);
    v6 = v47;
    a2 = v48;
    a1 = v46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v26 = sub_24F92A9E8();
  if (qword_27F211828 != -1)
  {
    swift_once();
  }

  if (byte_27F39F070 == 1)
  {
    v27 = objc_opt_self();
    v28 = [v27 standardUserDefaults];
    v29 = sub_24F0068D0();
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      sub_24F008CB4(v31);

      if (qword_27F211430 == -1)
      {
LABEL_10:
        v32 = sub_24F9220D8();
        __swift_project_value_buffer(v32, qword_27F39E8E0);
        v33 = sub_24F9220B8();
        v34 = sub_24F92BD98();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = a1;
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          v37 = [v27 &selRef_daemonProxy + 6];
          v38 = sub_24F0068D0();

          *(v36 + 4) = v38;
          _os_log_impl(&dword_24E5DD000, v33, v34, "gameLaunchCount set to %ld", v36, 0xCu);
          v39 = v36;
          a1 = v35;
          MEMORY[0x2530542D0](v39, -1, -1);
        }

        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_13:
  v40 = sub_24F92B858();
  (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
  sub_24F56F41C(a1, v6);
  v41 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v42 = (v50 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = a2;
  sub_24F56F594(v6, v43 + v41);
  *(v43 + v42) = v26;

  sub_24EA998B8(0, 0, v9, &unk_24FA0A148, v43);

  return v26;
}

unint64_t sub_24F56F3AC()
{
  result = qword_27F2162D0;
  if (!qword_27F2162D0)
  {
    type metadata accessor for LaunchGameAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162D0);
  }

  return result;
}

uint64_t sub_24F56F41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56F480()
{
  v1 = (type metadata accessor for LaunchGameAction(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F56F594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchGameAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56F5F8(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(type metadata accessor for LaunchGameAction(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F56E0B4(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_24F56F728(__n128 a1)
{
  v2 = sub_24F927E88();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_24F56F804(uint64_t a1, __n128 a2)
{
  v5 = *(sub_24F927E88() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E614970;

  return sub_24F1F2C60(a1, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_24F56F944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8, &qword_24FA0A168);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F56F9D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480B8, &qword_24FA0A168);

  return sub_24F56ED8C(a1, a2);
}

uint64_t block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F56FA7C()
{

  return swift_deallocObject();
}

uint64_t sub_24F56FB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F56FBDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F56FCAC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24E6BCB04();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F56FD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F56FDB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480F0, &qword_24FA0A350);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F570AE4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for GameHeroDetails(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24F56FD70(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    sub_24F92CCA8();
    v8[10] = 5;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F5700D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2480E0, &unk_24FA0A340);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v31 - v7;
  v9 = type metadata accessor for GameHeroDetails(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v37 = v11 + 40;
  sub_24E61DA68(&v41, (v11 + 40), qword_27F21B590, &unk_24F93BE30);
  v38 = v9;
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v39 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F570AE4();
  v35 = v8;
  sub_24F92D108();
  if (v2)
  {
    v17 = v37;
    __swift_destroy_boxed_opaque_existential_1(v40);
    v18 = v39;
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v11[v18], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v32 = v6;
    v16 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v19 = v42;
    *v11 = v41;
    *(v11 + 1) = v19;
    *(v11 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v20 = v38;
    v21 = v16;
    sub_24E61DA68(&v41, v37, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24F56FD70(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v22 = v32;
    sub_24F92CC18();
    sub_24E61DA68(v22, &v11[v39], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v41) = 3;
    v23 = sub_24F92CC28();
    v24 = &v11[v20[7]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v41) = 4;
    v26 = sub_24F92CBC8();
    v27 = &v11[v20[8]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v41) = 5;
    v29 = sub_24F92CC38();
    (*(v21 + 8))(v35, v36);
    v11[v20[9]] = v29 & 1;
    sub_24F570A60(v11, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24F570B38(v11);
  }
}

uint64_t sub_24F5706B8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x6564616372417369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_24F570764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5722A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F57078C(uint64_t a1)
{
  v2 = sub_24F570AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5707C8(uint64_t a1)
{
  v2 = sub_24F570AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F570884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_24F570A60(a1, a2);
  result = type metadata accessor for GameHeroDetailsView(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

unint64_t sub_24F570960()
{
  result = qword_27F2480D8;
  if (!qword_27F2480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2480D8);
  }

  return result;
}

uint64_t sub_24F570A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameHeroDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F570AE4()
{
  result = qword_27F2480E8;
  if (!qword_27F2480E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2480E8);
  }

  return result;
}

uint64_t sub_24F570B38(uint64_t a1)
{
  v2 = type metadata accessor for GameHeroDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F570BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameHeroDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F570C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameHeroDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F570D3C(uint64_t a1)
{
  result = type metadata accessor for GameHeroDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F570E14()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248128, &qword_24FA0A4E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248130, &qword_24FA0A4E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(type metadata accessor for GameHeroDetailsView(0) + 20);
  if (*(v0 + v11))
  {
    v12 = sub_24F924C88();
  }

  else
  {
    v12 = sub_24F924C98();
  }

  *v7 = v12;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248138, &qword_24FA0A4F0);
  sub_24F5710B0(v0, &v7[*(v13 + 44)]);
  if (*(v0 + v11))
  {
    sub_24F924C88();
  }

  else
  {
    sub_24F924C98();
  }

  sub_24F924C88();
  if (sub_24F924C78())
  {
    v14 = 1;
  }

  else
  {
    sub_24F924C98();
    if (sub_24F924C78())
    {
      v14 = 0;
    }

    else
    {
      sub_24F924CA8();
      if (sub_24F924C78())
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v7, v10, &qword_27F248128, &qword_24FA0A4E0);
  v16 = &v10[*(v8 + 36)];
  *v16 = KeyPath;
  v16[8] = v14;
  sub_24F9254E8();
  sub_24F5724A4();
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v10, &qword_27F248130, &qword_24FA0A4E8);
}

uint64_t sub_24F5710B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v181 = a1;
  v165 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248150, &qword_24FA0A530);
  MEMORY[0x28223BE20](v2 - 8);
  v166 = v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v176 = v145 - v5;
  v6 = sub_24F924BE8();
  v156 = *(v6 - 8);
  v157 = v6;
  MEMORY[0x28223BE20](v6);
  v155 = v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9297D8();
  v179 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255360, &qword_24FA0A538);
  MEMORY[0x28223BE20](v152);
  v150 = v145 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248158, &qword_24FA0A540);
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x28223BE20](v12);
  v151 = v145 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248160, &qword_24FA0A548);
  MEMORY[0x28223BE20](v14 - 8);
  v164 = v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = v145 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248168, &unk_24FA0A550);
  MEMORY[0x28223BE20](v18);
  v20 = (v145 - v19);
  v21 = sub_24F929888();
  v180 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v167);
  v168 = v145 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248170, &qword_24FA0A560);
  v162 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v169 = v145 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248178, &unk_24FA0A568);
  MEMORY[0x28223BE20](v27 - 8);
  v163 = v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v145 - v30;
  sub_24F927618();
  sub_24F9238C8();
  v160 = v189;
  v161 = v187;
  v158 = v192;
  v159 = v191;
  v200 = 1;
  v199 = v188;
  v198 = v190;
  v32 = type metadata accessor for GameHeroDetails(0);
  v173 = v8;
  v174 = v32;
  v33 = *(v181 + *(v32 + 36));
  v170 = v25;
  v171 = v31;
  v172 = v10;
  v177 = v23;
  v178 = v21;
  if (v33 == 1)
  {
    v148 = v20;
    v149 = v18;
    if (qword_27F2114A0 != -1)
    {
      swift_once();
    }

    v193 = qword_27F39EA08;
    v194 = unk_27F39EA10;
    sub_24E600AEC();

    v34 = sub_24F925E18();
    v36 = v35;
    v38 = v37;
    sub_24F9259D8();
    sub_24F9258E8();

    v39 = sub_24F925C98();
    v41 = v40;
    v43 = v42;
    v147 = v44;

    sub_24E600B40(v34, v36, v38 & 1);

    LODWORD(v34) = sub_24F9251C8();
    v45 = *(v167 + 36);
    v46 = *MEMORY[0x277CE13B8];
    v47 = sub_24F927748();
    v48 = v168;
    (*(*(v47 - 8) + 104))(&v168[v45], v46, v47);
    *v48 = v34;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v49 = v41;
    v50 = sub_24F925C58();
    v52 = v51;
    LOBYTE(v46) = v53;
    v55 = v54;
    sub_24E600B40(v39, v49, v43 & 1);

    sub_24E601704(v48, &qword_27F213F10, &unk_24F93BE10);
    v193 = v50;
    v194 = v52;
    LOBYTE(v195) = v46 & 1;
    v196 = v55;
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v56 = v177;
    sub_24F929828();
    sub_24E601704(&v183, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v185, &qword_27F2129B0, &unk_24F945320);
    v57 = v169;
    sub_24F925EE8();
    (*(v180 + 8))(v56, v178);
    sub_24E600B40(v50, v52, v46 & 1);

    LOBYTE(v50) = sub_24F925828();
    sub_24F923318();
    v58 = v57 + *(v170 + 36);
    *v58 = v50;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    *(v58 + 32) = v62;
    *(v58 + 40) = 0;
    sub_24E60169C(v57, v148, &qword_27F248170, &qword_24FA0A560);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188, &unk_24F965250);
    sub_24F572588();
    sub_24E8533A4();
    sub_24F924E28();
    sub_24E601704(v57, &qword_27F248170, &qword_24FA0A560);
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v63 = v193;
    v64 = v194;
    v65 = v195;
    v66 = v196;
    LOBYTE(v185) = 1;
    LOBYTE(v183) = v194;
    v182[0] = v196;
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v20 + 2) = v63;
    *(v20 + 24) = v64;
    *(v20 + 4) = v65;
    *(v20 + 40) = v66;
    *(v20 + 3) = v197;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188, &unk_24F965250);
    sub_24F572588();
    sub_24E8533A4();
    sub_24F924E28();
  }

  v67 = (v181 + *(v174 + 28));
  v68 = v67[1];
  *&v185 = *v67;
  *(&v185 + 1) = v68;
  v69 = sub_24E600AEC();

  v145[1] = v69;
  v70 = sub_24F925E18();
  v72 = v71;
  v74 = v73;
  sub_24F925888();
  v75 = sub_24F925C98();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  sub_24E600B40(v70, v72, v74 & 1);

  *&v185 = v75;
  *(&v185 + 1) = v77;
  LOBYTE(v186) = v79 & 1;
  *(&v186 + 1) = v81;
  v82 = v150;
  sub_24F9268B8();
  sub_24E600B40(v75, v77, v79 & 1);

  v83 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v84 = v152;
  *(v82 + *(v152 + 36)) = v83;
  v85 = *MEMORY[0x277D22050];
  v86 = v179;
  v87 = v172;
  v88 = v173;
  v148 = *(v179 + 104);
  v149 = v179 + 104;
  v148(v172, v85, v173);
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v89 = v177;
  sub_24F929818();
  sub_24E601704(&v183, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v185, &qword_27F2129B0, &unk_24F945320);
  v146 = *(v86 + 8);
  v179 = v86 + 8;
  v146(v87, v88);
  v90 = sub_24F572644();
  v91 = v151;
  sub_24F925EE8();
  v92 = v180 + 8;
  v147 = *(v180 + 8);
  v147(v89, v178);
  sub_24E601704(v82, &qword_27F255360, &qword_24FA0A538);
  v93 = v155;
  sub_24F924BD8();
  *&v185 = v84;
  *(&v185 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  v94 = v154;
  sub_24F9266E8();
  (*(v156 + 8))(v93, v157);
  (*(v153 + 8))(v91, v94);
  v95 = (v181 + *(v174 + 32));
  v96 = v95[1];
  if (v96)
  {
    *&v185 = *v95;
    *(&v185 + 1) = v96;

    v97 = sub_24F925E18();
    v99 = v98;
    v101 = v100;
    sub_24F925898();
    sub_24F925938();
    sub_24F9259A8();

    v102 = sub_24F925C98();
    v180 = v92;
    v104 = v103;
    v106 = v105;

    sub_24E600B40(v97, v99, v101 & 1);

    LODWORD(v97) = sub_24F9251C8();
    v107 = *(v167 + 36);
    v108 = *MEMORY[0x277CE13B8];
    v109 = sub_24F927748();
    v110 = v168;
    (*(*(v109 - 8) + 104))(&v168[v107], v108, v109);
    *v110 = v97;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v111 = sub_24F925C58();
    v113 = v112;
    LOBYTE(v108) = v114;
    v116 = v115;
    sub_24E600B40(v102, v104, v106 & 1);

    sub_24E601704(v110, &qword_27F213F10, &unk_24F93BE10);
    *&v185 = v111;
    *(&v185 + 1) = v113;
    v117 = v108 & 1;
    LOBYTE(v186) = v108 & 1;
    *(&v186 + 1) = v116;
    v119 = v172;
    v118 = v173;
    v148(v172, *MEMORY[0x277D22070], v173);
    v183 = 0u;
    v184 = 0u;
    memset(v182, 0, 32);
    v120 = v177;
    sub_24F929818();
    sub_24E601704(v182, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v183, &qword_27F2129B0, &unk_24F945320);
    v146(v119, v118);
    v121 = v169;
    sub_24F925EE8();
    v147(v120, v178);
    sub_24E600B40(v111, v113, v117);

    v122 = sub_24F925818();
    sub_24F923318();
    v123 = v170;
    v124 = v121 + *(v170 + 36);
    *v124 = v122;
    *(v124 + 8) = v125;
    *(v124 + 16) = v126;
    *(v124 + 24) = v127;
    *(v124 + 32) = v128;
    *(v124 + 40) = 0;
    v129 = v176;
    sub_24E6009C8(v121, v176, &qword_27F248170, &qword_24FA0A560);
    v130 = 0;
  }

  else
  {
    v129 = v176;
    v123 = v170;
    v130 = 1;
  }

  (*(v162 + 56))(v129, v130, 1, v123);
  v131 = v200;
  v132 = v199;
  v133 = v198;
  v134 = v171;
  v135 = v163;
  sub_24E60169C(v171, v163, &qword_27F248178, &unk_24FA0A568);
  v136 = v175;
  v137 = v164;
  sub_24E60169C(v175, v164, &qword_27F248160, &qword_24FA0A548);
  v138 = v129;
  v139 = v166;
  sub_24E60169C(v138, v166, &qword_27F248150, &qword_24FA0A530);
  v140 = v165;
  *v165 = 0;
  *(v140 + 8) = v131;
  v141 = v160;
  v140[2] = v161;
  *(v140 + 24) = v132;
  v140[4] = v141;
  *(v140 + 40) = v133;
  v142 = v158;
  v140[6] = v159;
  v140[7] = v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248190, &qword_24FA0A578);
  sub_24E60169C(v135, v140 + v143[12], &qword_27F248178, &unk_24FA0A568);
  sub_24E60169C(v137, v140 + v143[16], &qword_27F248160, &qword_24FA0A548);
  sub_24E60169C(v139, v140 + v143[20], &qword_27F248150, &qword_24FA0A530);
  sub_24E601704(v176, &qword_27F248150, &qword_24FA0A530);
  sub_24E601704(v136, &qword_27F248160, &qword_24FA0A548);
  sub_24E601704(v134, &qword_27F248178, &unk_24FA0A568);
  sub_24E601704(v139, &qword_27F248150, &qword_24FA0A530);
  sub_24E601704(v137, &qword_27F248160, &qword_24FA0A548);
  return sub_24E601704(v135, &qword_27F248178, &unk_24FA0A568);
}

unint64_t sub_24F5721A4()
{
  result = qword_27F248110;
  if (!qword_27F248110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248110);
  }

  return result;
}

unint64_t sub_24F5721FC()
{
  result = qword_27F248118;
  if (!qword_27F248118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248118);
  }

  return result;
}

unint64_t sub_24F572254()
{
  result = qword_27F248120;
  if (!qword_27F248120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248120);
  }

  return result;
}

uint64_t sub_24F5722A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F5724A4()
{
  result = qword_27F248140;
  if (!qword_27F248140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248130, &qword_24FA0A4E8);
    sub_24E602068(&qword_27F248148, &qword_27F248128, &qword_24FA0A4E0, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248140);
  }

  return result;
}

unint64_t sub_24F572588()
{
  result = qword_27F248180;
  if (!qword_27F248180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248170, &qword_24FA0A560);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248180);
  }

  return result;
}

unint64_t sub_24F572644()
{
  result = qword_27F248188;
  if (!qword_27F248188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255360, &qword_24FA0A538);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248188);
  }

  return result;
}

uint64_t sub_24F57272C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248130, &qword_24FA0A4E8);
  sub_24F5724A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PlayerAvatar.init(template:overlay:segue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PlayerAvatar(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  sub_24E61DA68(v15, v13, qword_27F21B590, &unk_24F93BE30);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_24E61DA68(a3, &a5[v11], &qword_27F22DF80, &unk_24F942E50);
  return sub_24E61DA68(a4, v13, qword_27F21B590, &unk_24F93BE30);
}

unint64_t PlayerAvatar.Overlay.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F5755D4(v3, v11, type metadata accessor for PlayerAvatar.Overlay);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      inited = swift_initStackObject();
      *(inited + 32) = 0x656461637261;
      v24 = inited + 32;
      *(inited + 16) = xmmword_24F93DE60;
      v37 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v37;
      v26 = 0xE600000000000000;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      inited = swift_initStackObject();
      *(inited + 32) = 1953064037;
      v24 = inited + 32;
      *(inited + 16) = xmmword_24F93DE60;
      v25 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v25;
      v26 = 0xE400000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      *(inited + 32) = 0xD000000000000011;
      v24 = inited + 32;
      v39 = MEMORY[0x277D22580];
      v26 = 0x800000024FA76AF0;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v39;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48));
      (*(v6 + 32))(v8, v11, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990, &unk_24FA0A580);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_24F93DE60;
      *(v28 + 32) = 0x6E6F6349656D6167;
      v42 = v28 + 32;
      *(v28 + 40) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v29 = swift_initStackObject();
      *&v43 = v2;
      v30 = v29;
      *(v29 + 16) = xmmword_24F93A400;
      v31 = a1;
      *(v29 + 32) = 0xD000000000000010;
      *(v29 + 40) = 0x800000024FA76AD0;
      *(v29 + 72) = v5;
      *(v29 + 80) = sub_24F575384(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30 + 6);
      (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
      v33 = MEMORY[0x277D839F8];
      v30[11] = 0xD000000000000014;
      v30[12] = 0x800000024FA76AB0;
      v34 = MEMORY[0x277D225A0];
      v30[16] = v33;
      v30[17] = v34;
      v30[13] = v27;
      v35 = sub_24E607E40(v30);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
      swift_arrayDestroy();
      *(v28 + 48) = v35;
      v36 = sub_24E611448(v28);
      swift_setDeallocating();
      sub_24E601704(v42, &qword_27F23F998, &unk_24F9E74C0);
      v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0, &qword_24FA0A590);
      v31[4] = sub_24F575204();
      *v31 = v36;
      return (*(v6 + 8))(v8, v5);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F990, &unk_24FA0A580);
      v14 = swift_initStackObject();
      v43 = xmmword_24F93DE60;
      *(v14 + 16) = xmmword_24F93DE60;
      *(v14 + 32) = 0x736567617373656DLL;
      *(v14 + 40) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
      v15 = swift_initStackObject();
      v16 = a1;
      *(v15 + 16) = v43;
      *(v15 + 32) = 0xD000000000000014;
      v17 = v15 + 32;
      v18 = MEMORY[0x277D839F8];
      *(v15 + 40) = 0x800000024FA76AB0;
      v19 = MEMORY[0x277D225A0];
      *(v15 + 72) = v18;
      *(v15 + 80) = v19;
      *(v15 + 48) = v13;
      v20 = sub_24E607E40(v15);
      swift_setDeallocating();
      sub_24E601704(v17, &qword_27F212FB0, &unk_24F93A440);
      *(v14 + 48) = v20;
      v21 = sub_24E611448(v14);
      swift_setDeallocating();
      sub_24E601704(v14 + 32, &qword_27F23F998, &unk_24F9E74C0);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F9A0, &qword_24FA0A590);
      result = sub_24F575204();
      v16[4] = result;
      *v16 = v21;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746E6563656D6167;
    v24 = inited + 32;
    *(inited + 16) = xmmword_24F93DE60;
    v38 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v38;
    v26 = 0xEA00000000007265;
  }

  *(inited + 40) = v26;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v40 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E601704(v24, &qword_27F212FB0, &unk_24F93A440);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v40;
  return result;
}

uint64_t sub_24F572F90(uint64_t a1)
{
  v2 = sub_24F575474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F572FCC(uint64_t a1)
{
  v2 = sub_24F575474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F573008(uint64_t a1)
{
  v2 = sub_24F5753CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573044(uint64_t a1)
{
  v2 = sub_24F5753CC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F573080()
{
  v1 = *v0;
  v2 = 0x746E6563656D6167;
  v3 = 0xD000000000000011;
  v4 = 0x6E6F6349656D6167;
  if (v1 != 4)
  {
    v4 = 0x736567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656461637261;
  if (v1 != 1)
  {
    v5 = 1953064037;
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

uint64_t sub_24F573138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F57612C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F573160(uint64_t a1)
{
  v2 = sub_24F575288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F57319C(uint64_t a1)
{
  v2 = sub_24F575288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5731D8(uint64_t a1)
{
  v2 = sub_24F575420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573214(uint64_t a1)
{
  v2 = sub_24F575420();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F573250()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F57328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA76AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA76AB0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

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
  return result;
}

uint64_t sub_24F573370(uint64_t a1)
{
  v2 = sub_24F575330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5733AC(uint64_t a1)
{
  v2 = sub_24F575330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F5733E8(uint64_t a1)
{
  v2 = sub_24F5754C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F573424(uint64_t a1)
{
  v2 = sub_24F5754C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F57347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024FA76AB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F573510(uint64_t a1)
{
  v2 = sub_24F5752DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F57354C(uint64_t a1)
{
  v2 = sub_24F5752DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerAvatar.Overlay.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248198, &qword_24FA0A598);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481A0, &qword_24FA0A5A0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v40 - v5;
  v6 = sub_24F9289E8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481A8, &qword_24FA0A5A8);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481B0, &qword_24FA0A5B0);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v40 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481B8, &qword_24FA0A5B8);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481C0, &qword_24FA0A5C0);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2481C8, &qword_24FA0A5C8);
  v58 = *(v20 - 8);
  v59 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575288();
  sub_24F92D128();
  sub_24F5755D4(v61, v19, type metadata accessor for PlayerAvatar.Overlay);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v63 = 1;
      sub_24F575474();
      v37 = v59;
      sub_24F92CC98();
      (*(v41 + 8))(v13, v42);
      return (*(v58 + 8))(v22, v37);
    }

    else
    {
      v27 = v59;
      if (EnumCaseMultiPayload == 4)
      {
        v64 = 2;
        sub_24F575420();
        v28 = v43;
        sub_24F92CC98();
        v30 = v44;
        v29 = v45;
      }

      else
      {
        v65 = 3;
        sub_24F5753CC();
        v28 = v46;
        sub_24F92CC98();
        v30 = v47;
        v29 = v48;
      }

      (*(v30 + 8))(v28, v29);
      return (*(v58 + 8))(v22, v27);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v62 = 0;
        sub_24F5754C8();
        v39 = v59;
        sub_24F92CC98();
        (*(v40 + 8))(v16, v14);
        return (*(v58 + 8))(v22, v39);
      }

      v69[0] = 5;
      sub_24F5752DC();
      v24 = v49;
      v25 = v59;
      sub_24F92CC98();
      v26 = v51;
      sub_24F92CD28();
      (*(v50 + 8))(v24, v26);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0);
      v32 = v54;
      v31 = v55;
      v33 = v52;
      (*(v54 + 32))(v52, v19, v55);
      v68 = 4;
      sub_24F575330();
      v34 = v53;
      v25 = v59;
      sub_24F92CC98();
      v67 = 0;
      sub_24F575384(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v35 = v57;
      v36 = v60;
      sub_24F92CD48();
      if (!v36)
      {
        v66 = 1;
        sub_24F92CD28();
      }

      (*(v56 + 8))(v34, v35);
      (*(v32 + 8))(v33, v31);
    }

    return (*(v58 + 8))(v22, v25);
  }
}

uint64_t PlayerAvatar.Overlay.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248208, &qword_24FA0A5D0);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x28223BE20](v3);
  v77 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248210, &qword_24FA0A5D8);
  v7 = *(v6 - 8);
  v73 = v6;
  v74 = v7;
  MEMORY[0x28223BE20](v6);
  v80 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248218, &qword_24FA0A5E0);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v59 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248220, &qword_24FA0A5E8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v75 = &v59 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248228, &qword_24FA0A5F0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v76 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248230, &qword_24FA0A5F8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v78 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248238, &unk_24FA0A600);
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for PlayerAvatar.Overlay(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24F575288();
  v27 = v83;
  sub_24F92D108();
  if (!v27)
  {
    v60 = v19;
    v28 = v78;
    v61 = v22;
    v29 = v79;
    v30 = v80;
    v62 = v25;
    v83 = v17;
    v31 = v81;
    v32 = sub_24F92CC78();
    v33 = (2 * *(v32 + 16)) | 1;
    v86 = v32;
    v87 = v32 + 32;
    v88 = 0;
    v89 = v33;
    v34 = sub_24E64343C();
    if (v34 == 6 || v88 != v89 >> 1)
    {
      v39 = sub_24F92C918();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v41 = v83;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v82 + 8))(v16, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v85 = 3;
          sub_24F5753CC();
          sub_24F92CBA8();
          v46 = v82;
          (*(v69 + 8))(v29, v70);
          (*(v46 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v43 = v82;
          if (v34 == 4)
          {
            v85 = 4;
            sub_24F575330();
            v44 = v30;
            sub_24F92CBA8();
            sub_24F9289E8();
            v85 = 0;
            sub_24F575384(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
            v45 = v73;
            sub_24F92CC68();
            v85 = 1;
            sub_24F92CC48();
            v50 = v74;
            v55 = v54;
            v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
            (*(v50 + 8))(v44, v45);
            (*(v43 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v57 = v61;
            *&v61[v56] = v55;
            swift_storeEnumTagMultiPayload();
            v58 = v57;
          }

          else
          {
            v85 = 5;
            sub_24F5752DC();
            v48 = v77;
            sub_24F92CBA8();
            v49 = v71;
            sub_24F92CC48();
            v52 = v51;
            (*(v72 + 8))(v48, v49);
            (*(v43 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v53 = v60;
            *v60 = v52;
            swift_storeEnumTagMultiPayload();
            v58 = v53;
          }

          v38 = v62;
          sub_24F57551C(v58, v62);
        }

        v35 = v31;
      }

      else
      {
        v35 = v31;
        if (v34)
        {
          if (v34 == 1)
          {
            v85 = 1;
            sub_24F575474();
            v36 = v76;
            sub_24F92CBA8();
            v37 = v82;
            (*(v65 + 8))(v36, v66);
          }

          else
          {
            v85 = 2;
            sub_24F575420();
            v47 = v75;
            sub_24F92CBA8();
            v37 = v82;
            (*(v67 + 8))(v47, v68);
          }

          (*(v37 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v85 = 0;
          sub_24F5754C8();
          sub_24F92CBA8();
          (*(v63 + 8))(v28, v64);
          (*(v82 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v38 = v62;
          swift_storeEnumTagMultiPayload();
        }
      }

      sub_24F57551C(v38, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_24F574A2C()
{
  v1 = 0x79616C7265766FLL;
  if (*v0 != 1)
  {
    v1 = 0x6575676573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_24F574A84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F576334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F574AAC(uint64_t a1)
{
  v2 = sub_24F575580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F574AE8(uint64_t a1)
{
  v2 = sub_24F575580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerAvatar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248240, &qword_24FA0A610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575580();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PlayerAvatar(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar.Overlay(0);
    sub_24F575384(&qword_27F2450C8, type metadata accessor for PlayerAvatar.Overlay, &protocol conformance descriptor for PlayerAvatar.Overlay);
    sub_24F92CCF8();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlayerAvatar.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248250, &qword_24FA0A618);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 28);
  v14 = type metadata accessor for PlayerAvatar.Overlay(0);
  v15 = *(*(v14 - 8) + 56);
  v26 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = v12 + *(v10 + 32);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  sub_24E61DA68(v27, v16, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F575580();
  v17 = v25;
  sub_24F92D108();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v12 + v26, &qword_27F22DF80, &unk_24F942E50);
    return sub_24E601704(v16, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v18 = v23;
    LOBYTE(v27[0]) = 0;
    *v12 = sub_24F92CC28();
    v12[1] = v19;
    v25 = v19;
    LOBYTE(v27[0]) = 1;
    sub_24F575384(&qword_27F2450E8, type metadata accessor for PlayerAvatar.Overlay, &protocol conformance descriptor for PlayerAvatar.Overlay);
    sub_24F92CC18();
    sub_24E61DA68(v5, v12 + v26, &qword_27F22DF80, &unk_24F942E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v29 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v18 + 8))(v8, v24);
    sub_24E61DA68(v27, v16, qword_27F24EC90, &unk_24F93C1D0);
    sub_24F5755D4(v12, v22, type metadata accessor for PlayerAvatar);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24F529A28(v12);
  }
}

unint64_t sub_24F575204()
{
  result = qword_27F23F9A8;
  if (!qword_27F23F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23F9A0, &qword_24FA0A590);
    sub_24E6060B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23F9A8);
  }

  return result;
}

unint64_t sub_24F575288()
{
  result = qword_27F2481D0;
  if (!qword_27F2481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481D0);
  }

  return result;
}

unint64_t sub_24F5752DC()
{
  result = qword_27F2481D8;
  if (!qword_27F2481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481D8);
  }

  return result;
}

unint64_t sub_24F575330()
{
  result = qword_27F2481E0;
  if (!qword_27F2481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481E0);
  }

  return result;
}

uint64_t sub_24F575384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F5753CC()
{
  result = qword_27F2481E8;
  if (!qword_27F2481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481E8);
  }

  return result;
}

unint64_t sub_24F575420()
{
  result = qword_27F2481F0;
  if (!qword_27F2481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481F0);
  }

  return result;
}

unint64_t sub_24F575474()
{
  result = qword_27F2481F8;
  if (!qword_27F2481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2481F8);
  }

  return result;
}

unint64_t sub_24F5754C8()
{
  result = qword_27F248200;
  if (!qword_27F248200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248200);
  }

  return result;
}

uint64_t sub_24F57551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar.Overlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F575580()
{
  result = qword_27F248248;
  if (!qword_27F248248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248248);
  }

  return result;
}

uint64_t sub_24F5755D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F575650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F575720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5757D0(uint64_t a1)
{
  sub_24F575864(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F575864(uint64_t a1)
{
  if (!qword_27F245118)
  {
    type metadata accessor for PlayerAvatar.Overlay(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F245118);
    }
  }
}

void sub_24F5758BC(uint64_t a1)
{
  sub_24F575930(319);
  if (v1 <= 0x3F)
  {
    sub_24F57599C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F575930(uint64_t a1)
{
  if (!qword_27F248278)
  {
    sub_24F9289E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F248278);
    }
  }
}

uint64_t sub_24F57599C()
{
  result = qword_27F248280;
  if (!qword_27F248280)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_27F248280);
  }

  return result;
}

unint64_t sub_24F575A50()
{
  result = qword_27F248288;
  if (!qword_27F248288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248288);
  }

  return result;
}

unint64_t sub_24F575AA8()
{
  result = qword_27F248290;
  if (!qword_27F248290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248290);
  }

  return result;
}

unint64_t sub_24F575B00()
{
  result = qword_27F248298;
  if (!qword_27F248298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248298);
  }

  return result;
}

unint64_t sub_24F575B58()
{
  result = qword_27F2482A0;
  if (!qword_27F2482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482A0);
  }

  return result;
}

unint64_t sub_24F575BB0()
{
  result = qword_27F2482A8;
  if (!qword_27F2482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482A8);
  }

  return result;
}

unint64_t sub_24F575C08()
{
  result = qword_27F2482B0;
  if (!qword_27F2482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482B0);
  }

  return result;
}

unint64_t sub_24F575C60()
{
  result = qword_27F2482B8;
  if (!qword_27F2482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482B8);
  }

  return result;
}

unint64_t sub_24F575CB8()
{
  result = qword_27F2482C0;
  if (!qword_27F2482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482C0);
  }

  return result;
}

unint64_t sub_24F575D10()
{
  result = qword_27F2482C8;
  if (!qword_27F2482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482C8);
  }

  return result;
}

unint64_t sub_24F575D68()
{
  result = qword_27F2482D0;
  if (!qword_27F2482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482D0);
  }

  return result;
}

unint64_t sub_24F575DC0()
{
  result = qword_27F2482D8;
  if (!qword_27F2482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482D8);
  }

  return result;
}

unint64_t sub_24F575E18()
{
  result = qword_27F2482E0;
  if (!qword_27F2482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482E0);
  }

  return result;
}

unint64_t sub_24F575E70()
{
  result = qword_27F2482E8;
  if (!qword_27F2482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482E8);
  }

  return result;
}

unint64_t sub_24F575EC8()
{
  result = qword_27F2482F0;
  if (!qword_27F2482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482F0);
  }

  return result;
}

unint64_t sub_24F575F20()
{
  result = qword_27F2482F8;
  if (!qword_27F2482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2482F8);
  }

  return result;
}

unint64_t sub_24F575F78()
{
  result = qword_27F248300;
  if (!qword_27F248300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248300);
  }

  return result;
}

unint64_t sub_24F575FD0()
{
  result = qword_27F248308;
  if (!qword_27F248308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248308);
  }

  return result;
}

unint64_t sub_24F576028()
{
  result = qword_27F248310;
  if (!qword_27F248310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248310);
  }

  return result;
}

unint64_t sub_24F576080()
{
  result = qword_27F248318;
  if (!qword_27F248318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248318);
  }

  return result;
}

unint64_t sub_24F5760D8()
{
  result = qword_27F248320;
  if (!qword_27F248320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248320);
  }

  return result;
}

uint64_t sub_24F57612C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6563656D6167 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656461637261 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953064037 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA76AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F576334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F576448()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39E670);
  __swift_project_value_buffer(v4, qword_27F39E670);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

double RemotePersonalizationAppStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*RemotePersonalizationAppStateDataSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC31BA8;
}

double RemotePersonalizationAppStateDataSource.expectedAppStates.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t RemotePersonalizationAppStateDataSource.expectedAppStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)(uint64_t a1)
{
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
  sub_24F92A758();
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  sub_24F92A758();
  v2 = objc_allocWithZone(v1);
  v3 = RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(v7, v6, v5);

  return v3;
}

id RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_24F92BEE8();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_accessQueue;
  v10 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v27[1] = " rotationAngleDegrees ";
  v27[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v35 = v11;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v29);
  *&v3[v28] = sub_24F92BF38();
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds] = MEMORY[0x277D84FA0];
  v12 = v32;
  *&v3[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_bag] = v33;
  v13 = v31;
  *&v4[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_urlSession] = v31;
  *&v4[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_process] = v12;
  v34.receiver = v4;
  v34.super_class = ObjectType;

  v14 = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v34, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  if (qword_27F2103A8 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v18 selector:? name:? object:?];

  v20 = [v17 defaultCenter];
  v21 = *MEMORY[0x277CB8B78];
  v22 = objc_opt_self();
  v23 = v18;
  v24 = [v22 ams_sharedAccountStore];
  [v20 addObserver:v23 selector:sel_storeAccountDidChange name:v21 object:v24];

  v25 = [v17 defaultCenter];
  if (qword_27F2105E8 != -1)
  {
    swift_once();
  }

  [v25 addObserver:v23 selector:? name:? object:?];

  return v23;
}

id RemotePersonalizationAppStateDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*RemotePersonalizationAppStateDataSource.refreshData(completion:)(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t RemotePersonalizationAppStateDataSource.refreshData(for:completion:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

Swift::String_optional __swiftcall RemotePersonalizationAppStateDataSource.betaAppBundleVersion(adamId:)(GameStoreKit::AdamId adamId)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_24F577134()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  v7 = v0;
  sub_24F927D78();
  v12 = v6;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  v10 = sub_24F57B1BC;
  v11 = v5;
  sub_24F92BF08();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F577380(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x277D84FA0];

  v3 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x277D84F98];
}

void sub_24F577450(uint64_t a1, char *a2)
{
  v3 = sub_24F91EB48();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  *&v27 = 0x6573616863727570;
  *(&v27 + 1) = 0xE800000000000000;
  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v32), (v6 & 1) == 0))
  {

    sub_24E6585F8(v32);
LABEL_9:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v34);
  sub_24E6585F8(v32);

  if (!*(&v35 + 1))
  {
LABEL_10:
    sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
    return;
  }

  sub_24E69A5C4(0, &qword_27F239FE0, 0x277CEC400);
  if (swift_dynamicCast())
  {
    v7 = v33;
    v8 = [v33 itemID];
    v9 = [v8 stringValue];
    v10 = sub_24F92B0D8();
    v12 = v11;

    swift_beginAccess();
    sub_24F7A5A14(v10, v12, &v31);
    swift_endAccess();

    swift_beginAccess();

    sub_24E98FE14(v10, v12, &v27);

    v32[0] = v27;
    v32[1] = v28;
    v32[2] = v29;
    v32[3] = v30;
    sub_24E601704(v32, &unk_27F22BE00, &qword_24F96BDA0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = v10;
    v14 = inited + 32;
    *(inited + 40) = v12;
    sub_24E804518(inited);
    swift_setDeallocating();
    sub_24EC36F48(v14);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    v16 = a2;

    v18 = sub_24F57ABEC(v17, v16);
    if (*(v18 + 16))
    {
      sub_24F578304(v18);

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = sub_24F57B1A0;
      v20[4] = v15;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24F57B1A0;
      *(v21 + 24) = v15;
      v22 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      swift_retain_n();
      v23 = sub_24F92BEF8();
      *(&v28 + 1) = v22;
      *&v29 = MEMORY[0x277D225C0];
      *&v27 = v23;
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {

      v24 = &v16[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        (*(v25 + 16))(MEMORY[0x277D84F90], ObjectType, v25);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_24F5778FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_24F927D88();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91EB58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v15 = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  v17 = v4;
  sub_24F927D78();
  v26 = v16;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  v18 = v21;
  sub_24F92C6A8();
  v24 = v22;
  v25 = v14;
  sub_24F92BF08();

  return (*(v15 + 8))(v8, v18);
}

void sub_24F577C04(uint64_t a1, char *a2)
{
  v3 = sub_24F91EB48();
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = v3;
  v39 = 0x7364496D616461;
  v40 = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v38), (v6 & 1) == 0))
  {

    sub_24E6585F8(v38);
LABEL_28:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_29;
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v41);
  sub_24E6585F8(v38);

  if (!*(&v42 + 1))
  {
LABEL_29:
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D8F0, &unk_24FA0AEF0);
  if (swift_dynamicCast())
  {
    v7 = v38[0];
    v8 = *(v38[0] + 16);
    v37 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
    swift_beginAccess();
    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          return;
        }

        v11 = (v7 + 32 + 16 * v9);
        v13 = *v11;
        v12 = v11[1];
        ++v9;
        v14 = *&a2[v37];
        if (*(v14 + 16))
        {
          sub_24F92D068();

          sub_24F92B218();
          v15 = sub_24F92D0B8();
          v16 = -1 << *(v14 + 32);
          v17 = v15 & ~v16;
          if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = (*(v14 + 48) + 16 * v17);
              v20 = *v19 == v13 && v19[1] == v12;
              if (v20 || (sub_24F92CE08() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_9;
          }

LABEL_20:
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F45814C(0, *(v10 + 16) + 1, 1);
          v10 = v39;
        }

        v23 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_24F45814C((v22 > 1), v23 + 1, 1);
          v10 = v39;
        }

        *(v10 + 16) = v23 + 1;
        v24 = v10 + 16 * v23;
        *(v24 + 32) = v13;
        *(v24 + 40) = v12;
LABEL_9:
        if (v9 == v8)
        {
          goto LABEL_32;
        }
      }
    }

    v10 = MEMORY[0x277D84F90];
LABEL_32:
    swift_beginAccess();
    sub_24EAE9EB0(v7);
    swift_endAccess();

    sub_24F45D9F8(v10);

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = a2;

    v28 = sub_24F57ABEC(v27, v26);
    if (*(v28 + 16))
    {
      sub_24F578304(v28);

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = sub_24F57B1E4;
      v30[4] = v25;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_24F57B1E4;
      *(v31 + 24) = v25;
      v32 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      swift_retain_n();
      v33 = sub_24F92BEF8();
      v38[3] = v32;
      v38[4] = MEMORY[0x277D225C0];
      v38[0] = v33;
      sub_24F92A958();

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {

      v34 = &v26[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 1);
        ObjectType = swift_getObjectType();
        (*(v35 + 16))(MEMORY[0x277D84F90], ObjectType, v35);
        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_24F578130(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24F5781FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_24F91EB58();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v14 = a1;
  sub_24F5778FC(v13, a4, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24F578304(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B0, &qword_24F9730D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  if (qword_27F210970 != -1)
  {
    swift_once();
  }

  sub_24F92A3A8();
  sub_24F92A3F8();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(a1 + 16);
    if (v16)
    {
      v27 = v13;
      v17 = sub_24EAE67DC(v16, 0);
      v18 = sub_24EAE7C84(&v29, v17 + 4, v16, a1);
      v19 = v29;
      v26 = a1;

      result = sub_24E6586B4(v19);
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v21 = v27;
      v20 = v28;
      sub_24F579104(v17, v27);

      v22 = *(v20 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_urlSession);
      *(swift_allocObject() + 16) = v22;
      v23 = sub_24F929638();
      v30 = v23;
      v31 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v29);
      v24 = v22;
      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320, &qword_24F9A85E0);
      sub_24E602068(&qword_27F22C328, &qword_27F22C320, &qword_24F9A85E0, MEMORY[0x277D224B8]);
      sub_24F92A9B8();

      __swift_destroy_boxed_opaque_existential_1(&v29);
      *(swift_allocObject() + 16) = v26;
      v30 = v23;
      v31 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v29);

      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BDE8, &unk_24F98E9D0);
      v25 = sub_24F92A938();

      (*(v11 + 8))(v21, v10);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0, &qword_24FA0AF00);
      v29 = MEMORY[0x277D84FA0];
      v25 = sub_24F92A988();
      (*(v11 + 8))(v13, v10);
    }

    return v25;
  }

  sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
  if (qword_27F211348 != -1)
  {
    swift_once();
  }

  v14 = sub_24F92AAE8();
  __swift_project_value_buffer(v14, qword_27F39E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239FF0, &qword_24FA0AF00);
  v29 = MEMORY[0x277D84FA0];
  return sub_24F92A988();
}

double sub_24F578938(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v25 = a4;
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = a2;
    v23 = *&v13[OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_accessQueue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v24 = v13;
    v15 = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v26 = v16;
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    a3 = v15;
    v17 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v17);
    *(&v23 - 2) = sub_24F57AF98;
    *(&v23 - 1) = v14;
    sub_24F92BF08();

    (*(v8 + 8))(v10, v7);
  }

  v18 = *(v11 + 16);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = sub_24EAE67DC(*(v11 + 16), 0);
  v20 = sub_24EAE7C84(&v26, v19 + 4, v18, v11);
  v21 = v26;

  sub_24E6586B4(v21);
  if (v20 != v18)
  {
    __break(1u);
LABEL_6:
    v19 = MEMORY[0x277D84F90];
  }

  a3(v19);

  return result;
}

void sub_24F578C7C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);

  swift_beginAccess();
  v7 = 0;
  v8 = (v4 + 63) >> 6;
  v41 = v2;
  while (v6)
  {
LABEL_11:
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = (*(v2 + 48) + ((v7 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v18;
      v25 = isUniquelyReferenced_nonNull_native;
      v44 = *&v21[v22];
      v26 = v44;
      *&v21[v22] = 0x8000000000000000;
      v42 = v19;
      v27 = v24;
      v28 = sub_24E7728F0(v19, v24);
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_24;
      }

      v34 = v29;
      if (v26[3] < v33)
      {
        sub_24E8A3030(v33, v25);
        v28 = sub_24E7728F0(v42, v27);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v34)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (v25)
      {
        goto LABEL_17;
      }

      v40 = v28;
      sub_24E8B347C();
      v28 = v40;
      if (v34)
      {
LABEL_4:
        v9 = v28;

        v10 = v44;
        v11 = (v44[7] + (v9 << 6));
        v12 = v11[3];
        v14 = *v11;
        v13 = v11[1];
        v43[2] = v11[2];
        v43[3] = v12;
        v43[0] = v14;
        v43[1] = v13;
        *v11 = 0;
        *(v11 + 6) = 0x1000000000000000;
        sub_24E88D2AC(v43);
        goto LABEL_5;
      }

LABEL_18:
      v10 = v44;
      v44[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v10[6] + 16 * v28);
      *v36 = v42;
      v36[1] = v27;
      v37 = (v10[7] + (v28 << 6));
      *v37 = 0;
      v37[6] = 0x1000000000000000;
      v38 = v10[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v10[2] = v39;
LABEL_5:
      *&v21[v22] = v10;
      swift_endAccess();

      v2 = v41;
    }
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return;
    }

    v6 = *(v3 + 8 * v15);
    ++v7;
    if (v6)
    {
      v7 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F578F14(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27F211348 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v7[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  return a2(0);
}

uint64_t sub_24F579104(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43[0] = a1;
  v2 = sub_24F92B138();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - v6;
  v8 = sub_24F9288E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F91E968();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v44, v12, v17);
  sub_24F91E918();
  sub_24F91E8B8();
  sub_24F91E8C8();
  v20 = *(v50 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_bag);
  v21 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210840 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D21C40], v8);
  v43[1] = v21;
  v44 = v20;
  sub_24F92A368();
  (*(v9 + 8))(v11, v8);
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  sub_24F91E8D8();
  sub_24E6086DC(&unk_2861C24A8);
  sub_24E601704(&unk_2861C24C8, &qword_27F219F90, &qword_24F955020);
  sub_24F91E8F8();
  v22 = *(v43[0] + 16);
  if (v22)
  {
    v23 = (v43[0] + 40);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_24E615CF4(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_24E615CF4((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v51[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
  v30 = sub_24F92AF68();
  v32 = v31;

  v51[0] = 1030972521;
  v51[1] = 0xE400000000000000;
  MEMORY[0x253050C20](v30, v32);

  v33 = v45;
  sub_24F92B128();
  sub_24F92B0E8();

  (*(v46 + 8))(v33, v47);
  sub_24F91E958();
  v34 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  swift_unknownObjectRelease();
  [v34 setIncludeClientVersions_];
  v35 = [objc_opt_self() ams_sharedAccountStore];
  v36 = [v35 ams_activeiTunesAccount];

  [v34 setAccount_];
  [v34 setClientInfo_];
  v37 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
  [v34 setResponseDecoder_];

  [v34 setAnisetteType_];
  [v34 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318, &qword_24F990028);
  v38 = sub_24F91E8E8();
  v39 = [v34 requestByEncodingRequest:v38 parameters:0];

  sub_24F92A9D8();
  v51[3] = sub_24F929638();
  v51[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_24F929628();
  v40 = v49;
  v41 = sub_24F92A938();

  (*(v48 + 8))(v19, v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v41;
}

void sub_24F5798C4(id *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  sub_24F91F4E8();

  v13 = sub_24F928238();
  if (v3)
  {
    if (qword_27F211348 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39E670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v15 = v19[1];
    v16 = v20;
    v21[3] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
    sub_24F928458();
    sub_24E601704(v21, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v18 = MEMORY[0x277D84FA0];
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v19[-2] = v11;

    v18 = sub_24F57A4D0(sub_24F57B02C, &v19[-4], a2);
    (*(v8 + 8))(v11, v7);
  }

  *a3 = v18;
}

id RemotePersonalizationAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_24F579C94()
{
  swift_beginAccess();

  return result;
}

double sub_24F579D3C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_24F579DA8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC37328;
}

uint64_t sub_24F579E48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F579EA4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24F579F74(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_24F92AC28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;

  sub_24F928398();

  sub_24F928398();
  sub_24F9282B8();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F2213B0, &qword_24F965EC0);
    v15 = 0;
  }

  else
  {
    v16 = v19;
    (*(v5 + 32))(v19, v3, v4);
    v15 = sub_24F92AC18();
    (*(v5 + 8))(v16, v4);
  }

  v14(v13, v7);
  return v15 & 1;
}

uint64_t sub_24F57A258()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v4 = sub_24F928348();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    if (v4 == 0x6573616863727570 && v6 == 0xE900000000000064)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_24F92CE08();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t *sub_24F57A3A8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_24F57AA4C(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_24F57A440(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24F57A774(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_24F57A4D0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v6;
    v26 = &v24;
    MEMORY[0x28223BE20](a1);
    v25 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v7);
    v27 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = v17[1];
      v29[0] = *v17;
      v29[1] = v18;

      v19 = (v28)(v29);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_24F7A8894(v25, v24, v27, a3);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_24F7A8894(v25, v24, v27, a3);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_24F57A440(v22, v6, a3, v28);

  result = MEMORY[0x2530542D0](v22, -1, -1);
  if (!v3)
  {
    return v23;
  }

  return result;
}

unint64_t *sub_24F57A774(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v24 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;

    v18 = v24(v23);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_24F7A8894(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_24F57A8E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_24F7A918C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_24F57AA4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();
    v18 = *(*(a4 + v9) + 16);

    if (v18 && (sub_24E7728F0(v17, v16), (v19 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_17:

        return sub_24F7A8894(v22, a2, v23, a3);
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F57ABEC(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v37 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x28223BE20](v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v35 = 0;
    v36 = OBJC_IVAR____TtC12GameStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_12:
      v17 = v4;
      v18 = v14 | (v7 << 6);
      v19 = (*(v4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v23 = v36;
      v22 = v37;
      swift_beginAccess();
      v8 = *&v22[v23];
      v24 = *(v8 + 16);

      if (v24 && (sub_24E7728F0(v21, v20), (v25 & 1) != 0))
      {
        swift_endAccess();

        v4 = v17;
        v12 = v38;
      }

      else
      {
        swift_endAccess();

        *&v34[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        v26 = __OFADD__(v35++, 1);
        v4 = v17;
        v12 = v38;
        if (v26)
        {
          __break(1u);
LABEL_18:
          v27 = sub_24F7A8894(v34, v32, v35, v4);

          return v27;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;
  v27 = sub_24F57A3A8(v29, v7, v4, v30);

  MEMORY[0x2530542D0](v29, -1, -1);

  return v27;
}

uint64_t sub_24F57AED0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F57AF18()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AF58()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AFA0()
{

  return swift_deallocObject();
}

uint64_t sub_24F57AFD8()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_74(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_24F57B100(uint64_t (*a1)(unint64_t, uint64_t), uint64_t a2)
{
  v3 = *(sub_24F91EB58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v2 + v4, v5);
}

void sub_24F57B1F0(uint64_t a1)
{
  sub_24F58D7B4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F58DCC8(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F58DCC8(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24F58DC64(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24F58DC64(319, &qword_27F2483E0, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24F58DCC8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24EDA2B80();
              if (v7 <= 0x3F)
              {
                sub_24F928FD8();
                if (v8 <= 0x3F)
                {
                  sub_24F929158();
                  if (v9 <= 0x3F)
                  {
                    sub_24F58DC64(319, &qword_27F2483E8, type metadata accessor for LocalPlayerProvider, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for FeedRefreshNotifier(319);
                      if (v11 <= 0x3F)
                      {
                        sub_24E6C5550();
                        if (v12 <= 0x3F)
                        {
                          sub_24F58D7B4(319, &qword_27F2483F0, &qword_27F216F48, &unk_24F944850, MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
                          {
                            sub_24F58DC64(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for NetworkConnectionMonitor(319);
                              if (v15 <= 0x3F)
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

uint64_t sub_24F57B560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[16];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[17];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[19] + 24);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_24F929158();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[24];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[29];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_24F57B7AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[16];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[19] + 24) = (a2 - 1);
    return result;
  }

  v17 = sub_24F929158();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[24];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[29];

  return v19(v20, a2, a2, v18);
}

unint64_t sub_24F57BA10()
{
  result = qword_27F2483F8;
  if (!qword_27F2483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2483F8);
  }

  return result;
}

uint64_t sub_24F57BA64(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24F927818();
}

uint64_t sub_24F57BC34@<X0>(void *a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v48 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - v9;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v51 = a1;
  sub_24E615E00(a1, v55);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215760, &unk_24F940B30);
  v22 = v21[13];
  *(a4 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = a4 + v21[14];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a4 + v21[15];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v21[16];
  *(a4 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  sub_24F91F618();
  (*(v15 + 16))(v17, v20, v14);
  v26 = v43;
  sub_24F926F28();
  (*(v15 + 8))(v20, v14);
  v27 = a4 + v21[18];
  LOBYTE(v52) = 1;
  sub_24F926F28();
  v28 = v54;
  *v27 = v53;
  *(v27 + 1) = v28;
  v29 = (a4 + v21[30]);
  sub_24F929EB8();
  v52 = sub_24F929EA8();
  sub_24F926F28();
  v30 = v54;
  *v29 = v53;
  v29[1] = v30;
  sub_24E615E00(v55, a4 + v21[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v31 = v45;
  sub_24F92A448();
  v32 = v47;
  sub_24F92A408();
  (*(v46 + 8))(v31, v32);
  (*(v44 + 8))(v13, v26);
  v33 = v54;
  v34 = (a4 + v21[23]);
  *v34 = v53;
  v34[1] = v33;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(a4 + v21[25]) = v53;
  v35 = (a4 + v21[27]);
  *v35 = sub_24F57C818;
  v35[1] = 0;
  v36 = (a4 + v21[28]);
  *v36 = sub_24F586C58;
  v36[1] = a2;
  *(a4 + v21[20]) = a2;
  *(a4 + v21[22]) = v48 & 1;
  *(a4 + v21[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);
  swift_retain_n();
  sub_24F928F28();
  *(a4 + v21[26]) = v53;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(a4 + v21[31]) = v53;
  v37 = __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  v38 = MEMORY[0x28223BE20](v37);
  (*(v40 + 16))(&v42 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v51);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_24F57C2F4()
{
  sub_24F58D394();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F57C330@<X0>(_BYTE *a1@<X8>)
{
  sub_24F58D394();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F57C3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v6 = sub_24F928D28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_24F928D38();
  swift_getWitnessTable();
  sub_24F925FC8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F57C5E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24E60169C(a1, &v9 - v6, &qword_27F220F50, &qword_24F965290);
  sub_24E60169C(v7, v4, &qword_27F220F50, &qword_24F965290);
  sub_24F58BC60();
  sub_24F924878();
  return sub_24E601704(v7, &qword_27F220F50, &qword_24F965290);
}

uint64_t sub_24F57C70C(uint64_t a1)
{
  v2 = sub_24F923418();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924488();
}

uint64_t sub_24F57C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + v10[20], v9, qword_27F220E38, &unk_24F965190);
  v11 = *(a1 + v10[21]);
  sub_24E60169C(a1 + v10[24], v6, &qword_27F21D8F8, &qword_24F95ADB0);
  v12 = type metadata accessor for Page.Background(0);
  LOBYTE(a1) = (*(*(v12 - 8) + 48))(v6, 1, v12) == 1;
  sub_24E601704(v6, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24E6009C8(v9, a2, qword_27F220E38, &unk_24F965190);
  result = type metadata accessor for DefaultPageHeaderView(0);
  *(a2 + *(result + 20)) = v11;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_24F57C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F58E928(a1, a3, type metadata accessor for Page);
  *(a3 + *(type metadata accessor for DefaultPageShelvesContentView(0) + 20)) = a2;
}

BOOL sub_24F57CA34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_24F769764((&v8 - v4));
  sub_24F769764(v2);
  v6 = sub_24F4D9600(v5, v2);
  sub_24E601704(v2, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v5, &qword_27F215598, &qword_24F945EF0);
  return v6;
}

uint64_t sub_24F57CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v3 - 8);
  v181 = &v142 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  v6 = *(v5 - 8);
  v178 = v5;
  v179 = v6;
  MEMORY[0x28223BE20](v5);
  v177 = &v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380, &unk_24F98B2E0);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = &v142 - v11;
  v12 = a1;
  v170 = a1;
  v173 = *(a1 - 8);
  *&v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v13);
  v172 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  MEMORY[0x28223BE20](v15 - 8);
  v171 = &v142 - v16;
  v184 = type metadata accessor for Page(255);
  v185 = sub_24F921BC8();
  v183 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750, &qword_24FA0B0F0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  v187 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v186 = *(v12 + 16);
  v188 = v186;
  v189 = sub_24F924038();
  v190 = v17;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v18 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v227 = MEMORY[0x277CE0880];
  v19 = MEMORY[0x277CDFAD8];
  v20 = swift_getWitnessTable();
  v187 = v18;
  v188 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v21 = sub_24F926DC8();
  v187 = v18;
  v188 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_24E667ED0();
  v224 = OpaqueTypeConformance2;
  v225 = v23;
  v222 = swift_getWitnessTable();
  v223 = OpaqueTypeConformance2;
  v167 = MEMORY[0x277CE0340];
  v221 = swift_getWitnessTable();
  v168 = MEMORY[0x277CE0FB0];
  v24 = swift_getWitnessTable();
  v187 = v21;
  v188 = v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v25 = sub_24F924038();
  v187 = v21;
  v188 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v219 = v26;
  v220 = v27;
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x277CE0868];
  v166 = MEMORY[0x277CE0868];
  v30 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v217 = v28;
  v218 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_24E669F00();
  v215 = v31;
  v216 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_24E669F54();
  v213 = v33;
  v214 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v29);
  v211 = v35;
  v212 = v36;
  v165 = v19;
  v37 = swift_getWitnessTable();
  v187 = v25;
  v188 = v37;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v38 = sub_24F924038();
  v39 = sub_24F5877B0();
  v187 = v25;
  v188 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v209 = v40;
  v210 = v41;
  v42 = swift_getWitnessTable();
  v187 = v169;
  v188 = v38;
  v189 = &type metadata for AppEventDetailSideBySideStyling;
  v190 = v39;
  v191 = v42;
  v192 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v187);
  v43 = sub_24F924E38();
  v207 = swift_getWitnessTable();
  v208 = v42;
  v44 = swift_getWitnessTable();
  v187 = v43;
  v188 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  v187 = v43;
  v188 = v44;
  v205 = swift_getOpaqueTypeConformance2();
  v206 = v44;
  v204 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v166);
  v202 = v45;
  v203 = v46;
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  v47 = sub_24F924038();
  v48 = sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CE0790];
  v200 = v49;
  v201 = MEMORY[0x277CE0790];
  v198 = swift_getWitnessTable();
  v199 = v50;
  v51 = swift_getWitnessTable();
  v187 = v183;
  v188 = v47;
  v189 = v48;
  v190 = v51;
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  v52 = sub_24F924038();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  v54 = swift_getWitnessTable();
  v55 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier, &unk_24FA0B3E8);
  v196 = v54;
  v197 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier, &unk_24FA0B398);
  v194 = v56;
  v195 = v57;
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x277D839B0];
  v187 = v52;
  v188 = MEMORY[0x277D839B0];
  v60 = MEMORY[0x277D839C8];
  v189 = v58;
  v190 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v183 = OpaqueTypeMetadata2;
  v62 = sub_24E6A4C1C();
  v187 = &type metadata for GameOverlayViewPredicate;
  v188 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v187 = v52;
  v188 = v59;
  v189 = v58;
  v190 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v187 = v52;
  v188 = v53;
  v65 = v53;
  v189 = OpaqueTypeMetadata2;
  v190 = v58;
  v191 = v63;
  v192 = v64;
  v66 = swift_getOpaqueTypeMetadata2();
  v156 = v66;
  v67 = sub_24F921C58();
  v155 = v67;
  v68 = sub_24F58786C(&qword_27F2477E8, MEMORY[0x277D7EC50], MEMORY[0x277D7EC48]);
  v154 = v68;
  v187 = v52;
  v188 = v65;
  v189 = v183;
  v190 = v58;
  v191 = v63;
  v192 = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v153 = v69;
  v152 = sub_24F58786C(&qword_27F248440, MEMORY[0x277D7EC80], MEMORY[0x277D7EC78]);
  v187 = v184;
  v188 = v185;
  v189 = v66;
  v190 = v67;
  v191 = v68;
  v192 = v69;
  v193 = v152;
  v70 = sub_24F921908();
  v157 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v149 = &v142 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448, &qword_24FA0B128);
  v73 = swift_getWitnessTable();
  v74 = sub_24E602068(&qword_27F248450, &qword_27F248448, &qword_24FA0B128, MEMORY[0x277D21CF8]);
  v187 = v70;
  v188 = v72;
  v189 = v73;
  v190 = v74;
  v75 = swift_getOpaqueTypeMetadata2();
  v76 = sub_24F924038();
  v77 = *(v76 - 8);
  v150 = v76;
  v151 = v77;
  MEMORY[0x28223BE20](v76);
  v148 = &v142 - v78;
  v187 = v70;
  v188 = v72;
  v189 = v73;
  v190 = v74;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_24F58786C(&qword_27F23FB90, type metadata accessor for Page, &protocol conformance descriptor for Page);
  v187 = v70;
  v188 = v75;
  v143 = v70;
  v144 = v73;
  v81 = v73;
  v189 = v73;
  v190 = v79;
  v82 = v79;
  v146 = v80;
  v147 = v79;
  v191 = v80;
  v83 = v80;
  v84 = swift_getOpaqueTypeMetadata2();
  v167 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v145 = &v142 - v85;
  v187 = v70;
  v188 = v75;
  v189 = v81;
  v190 = v82;
  v191 = v83;
  v86 = swift_getOpaqueTypeConformance2();
  v187 = v84;
  v188 = v86;
  v87 = swift_getOpaqueTypeMetadata2();
  v166 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v164 = &v142 - v88;
  v89 = sub_24F928FD8();
  v169 = v84;
  v187 = v84;
  v188 = v86;
  v158 = v86;
  v90 = swift_getOpaqueTypeConformance2();
  v168 = v87;
  v187 = v87;
  v188 = v89;
  v159 = v89;
  v162 = v90;
  v189 = v90;
  v165 = swift_getOpaqueTypeMetadata2();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v160 = &v142 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v161 = &v142 - v93;
  v94 = v170;
  v95 = *(v170 + 116);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
  v96 = v175;
  v142 = v95;
  v97 = v171;
  sub_24F926F58();
  v99 = v172;
  v98 = v173;
  v100 = v94;
  (*(v173 + 16))(v172, v96, v94);
  v101 = (*(v98 + 80) + 48) & ~*(v98 + 80);
  v102 = swift_allocObject();
  v103 = *(v100 + 32);
  *(v102 + 16) = v186;
  *(v102 + 32) = v103;
  v174 = v103;
  v104 = v99;
  v105 = v100;
  (*(v98 + 32))(v102 + v101, v104, v100);
  v106 = v149;
  v107 = v97;
  v108 = v184;
  sub_24F921918();
  v109 = *(v105 + 76);
  sub_24F926F58();
  v110 = (v96 + v109);
  v111 = v105;
  v112 = v148;
  v113 = v143;
  sub_24F57C3CC(v110, v107, v143, v108, v144);
  sub_24E601704(v107, &qword_27F216F50, &unk_24FA10C90);
  (*(v157 + 8))(v106, v113);
  v114 = v96;
  v115 = v145;
  v185 = *(v105 + 96);
  v116 = v150;
  v117 = v114;
  sub_24F923FA8();
  (*(v151 + 8))(v112, v116);
  v119 = v176;
  v118 = v177;
  sub_24F926F38();
  v120 = v178;
  sub_24F9217F8();
  (*(v179 + 8))(v118, v120);
  if ((*(*(v108 - 8) + 48))(v119, 1, v108) == 1)
  {
    sub_24E601704(v119, &qword_27F22B380, &unk_24F98B2E0);
    v121 = sub_24F928818();
    v122 = v180;
    (*(*(v121 - 8) + 56))(v180, 1, 1, v121);
  }

  else
  {
    v123 = *(v108 + 24);
    v124 = sub_24F928818();
    v125 = *(v124 - 8);
    v122 = v180;
    (*(v125 + 16))(v180, v119 + v123, v124);
    sub_24F58B9FC(v119, type metadata accessor for Page);
    (*(v125 + 56))(v122, 0, 1, v124);
  }

  v126 = (v117 + *(v111 + 120));
  v128 = *v126;
  v127 = v126[1];
  v187 = v128;
  v188 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810, &unk_24F9D5560);
  sub_24F926F38();
  v129 = v181;
  sub_24F921B38();
  v130 = sub_24F921B48();
  (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
  v131 = v164;
  v132 = v169;
  sub_24F925E58();

  sub_24E601704(v129, &qword_27F2157E8, &unk_24F940C00);
  sub_24E601704(v122, &qword_27F2157F0, &qword_24F9846A0);
  v133 = (*(v167 + 8))(v115, v132);
  MEMORY[0x28223BE20](v133);
  v134 = swift_checkMetadataState();
  v135 = v160;
  v136 = v168;
  v137 = v162;
  sub_24F925EB8();
  (*(v166 + 8))(v131, v136);
  v187 = v136;
  v188 = v134;
  v189 = v137;
  swift_getOpaqueTypeConformance2();
  v138 = v161;
  v139 = v165;
  sub_24E7896B8();
  v140 = *(v163 + 8);
  v140(v135, v139);
  sub_24E7896B8();
  return (v140)(v138, v139);
}

uint64_t sub_24F57E204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v249 = a6;
  v253 = a5;
  v250 = a3;
  v247 = a2;
  v252 = a1;
  v227 = a7;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v226 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v225 = &v179 - v11;
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  MEMORY[0x28223BE20](ActionViewModifier);
  v224 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A708();
  v237 = *(v13 - 8);
  v238 = v13;
  MEMORY[0x28223BE20](v13);
  v236 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468, &qword_24FA0B140);
  MEMORY[0x28223BE20](v15 - 8);
  v234 = &v179 - v16;
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v223 = (&v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248470, &unk_24FA0B148);
  v187 = *(v18 - 8);
  v188 = v18;
  MEMORY[0x28223BE20](v18);
  v186 = &v179 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v20 - 8);
  v182 = &v179 - v21;
  v184 = sub_24F92BED8();
  v181 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v179 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248478, &qword_24FA0B158);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v180 = &v179 - v23;
  *&v288 = a3;
  v251 = a4;
  *(&v288 + 1) = a4;
  *&v289 = a5;
  *(&v289 + 1) = a6;
  v245 = type metadata accessor for BasePageView(0, &v288);
  v248 = *(v245 - 8);
  v231 = v248[8];
  MEMORY[0x28223BE20](v245);
  v246 = &v179 - v24;
  v233 = type metadata accessor for Page(0);
  v242 = *(v233 - 8);
  v230 = *(v242 + 64);
  MEMORY[0x28223BE20](v233);
  v244 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750, &qword_24FA0B0F0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  *&v288 = v26;
  *(&v288 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  *&v289 = sub_24F924038();
  *(&v289 + 1) = v26;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v27 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v328 = MEMORY[0x277CE0880];
  v28 = MEMORY[0x277CDFAD8];
  v29 = swift_getWitnessTable();
  *&v288 = v27;
  *(&v288 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v30 = sub_24F926DC8();
  *&v288 = v27;
  *(&v288 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_24E667ED0();
  v325 = OpaqueTypeConformance2;
  v326 = v32;
  v323 = swift_getWitnessTable();
  v324 = OpaqueTypeConformance2;
  v228 = MEMORY[0x277CE0340];
  v322 = swift_getWitnessTable();
  v232 = MEMORY[0x277CE0FB0];
  v33 = swift_getWitnessTable();
  *&v288 = v30;
  *(&v288 + 1) = v33;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v34 = sub_24F924038();
  *&v288 = v30;
  *(&v288 + 1) = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v320 = v35;
  v321 = v36;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE0868];
  v222 = MEMORY[0x277CE0868];
  v39 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v318 = v37;
  v319 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_24E669F00();
  v316 = v40;
  v317 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_24E669F54();
  v314 = v42;
  v315 = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v38);
  v312 = v44;
  v313 = v45;
  v217 = v28;
  v46 = swift_getWitnessTable();
  *&v288 = v34;
  *(&v288 + 1) = v46;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v47 = sub_24F924038();
  v48 = sub_24F5877B0();
  *&v288 = v34;
  *(&v288 + 1) = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v310 = v49;
  v311 = v50;
  v51 = swift_getWitnessTable();
  *&v288 = v243;
  *(&v288 + 1) = v47;
  *&v289 = &type metadata for AppEventDetailSideBySideStyling;
  *(&v289 + 1) = v48;
  *&v290 = v51;
  *(&v290 + 1) = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v288);
  v52 = sub_24F924E38();
  v308 = swift_getWitnessTable();
  v309 = v51;
  v53 = swift_getWitnessTable();
  *&v288 = v52;
  *(&v288 + 1) = v53;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  v54 = sub_24F924038();
  *&v288 = v52;
  *(&v288 + 1) = v53;
  v306 = swift_getOpaqueTypeConformance2();
  v307 = v53;
  v305 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v56 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v222);
  v303 = v55;
  v304 = v56;
  v229 = v54;
  v202 = swift_getWitnessTable();
  v195 = sub_24F924278();
  v197 = sub_24F924038();
  v57 = sub_24F924038();
  v58 = sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  v194 = swift_getWitnessTable();
  v59 = MEMORY[0x277CE0790];
  v301 = v194;
  v302 = MEMORY[0x277CE0790];
  v196 = swift_getWitnessTable();
  v299 = v196;
  v300 = v59;
  v60 = swift_getWitnessTable();
  *&v288 = v241;
  v204 = v58;
  v205 = v57;
  *(&v288 + 1) = v57;
  *&v289 = v58;
  v203 = v60;
  *(&v289 + 1) = v60;
  v61 = sub_24F924288();
  v62 = sub_24F924038();
  v219 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v218 = &v179 - v63;
  v64 = sub_24F924038();
  v221 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v232 = &v179 - v65;
  v215 = v61;
  v66 = swift_getWitnessTable();
  v67 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier, &unk_24FA0B3E8);
  v206 = v66;
  v297 = v66;
  v298 = v67;
  v220 = v62;
  v68 = swift_getWitnessTable();
  v69 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier, &unk_24FA0B398);
  v211 = v68;
  v295 = v68;
  v296 = v69;
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x277D839B0];
  *&v288 = v64;
  *(&v288 + 1) = MEMORY[0x277D839B0];
  v72 = MEMORY[0x277D839C8];
  *&v289 = v70;
  *(&v289 + 1) = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = sub_24E6A4C1C();
  *&v288 = &type metadata for GameOverlayViewPredicate;
  v207 = v74;
  *(&v288 + 1) = v74;
  v75 = swift_getOpaqueTypeConformance2();
  *&v288 = v64;
  *(&v288 + 1) = v71;
  *&v289 = v70;
  *(&v289 + 1) = v72;
  v76 = swift_getOpaqueTypeConformance2();
  v222 = v64;
  *&v288 = v64;
  *(&v288 + 1) = v240;
  v210 = OpaqueTypeMetadata2;
  *&v289 = OpaqueTypeMetadata2;
  v217 = v70;
  *(&v289 + 1) = v70;
  v214 = v75;
  *&v290 = v75;
  v212 = v76;
  *(&v290 + 1) = v76;
  v216 = swift_getOpaqueTypeMetadata2();
  v213 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v208 = &v179 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v209 = &v179 - v79;
  v228 = type metadata accessor for Page;
  v80 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v81 = v248;
  v82 = v248 + 2;
  v243 = v248[2];
  v83 = v245;
  (v243)(v246, v247, v245);
  v84 = *(v242 + 80);
  v85 = (v84 + 48) & ~v84;
  v86 = *(v81 + 80);
  v87 = (v230 + v86 + v85) & ~v86;
  v242 = v84 | v86;
  v198 = &v231[v87];
  v88 = swift_allocObject();
  v89 = v251;
  v88[2] = v250;
  v88[3] = v89;
  v90 = v249;
  v88[4] = v253;
  v88[5] = v90;
  v199 = v85;
  v91 = v88 + v85;
  v92 = v80;
  sub_24F58EB60(v80, v91, v228);
  v93 = v81 + 4;
  v94 = v81[4];
  v248 = v93;
  v200 = v87;
  v95 = v246;
  (v94)(v88 + v87, v246, v83);
  v96 = sub_24F924268();
  v193 = v97;
  *&v261 = v96;
  *(&v261 + 1) = v97;
  v98 = v83;
  v229 = v82;
  (v243)(v95, v247, v83);
  v99 = v228;
  sub_24F58E928(v252, v92, v228);
  v100 = (v86 + 48) & ~v86;
  v101 = &v231[v84 + v100] & ~v84;
  v201 = v101 + v230;
  v102 = swift_allocObject();
  v103 = v251;
  v102[2] = v250;
  v102[3] = v103;
  v104 = v249;
  v102[4] = v253;
  v102[5] = v104;
  v202 = v100;
  v231 = v94;
  (v94)(v102 + v100, v95, v98);
  v230 = v101;
  sub_24F58EB60(v92, v102 + v101, v99);
  sub_24F926AA8();

  v105 = v289;
  v106 = v290;
  v261 = v288;
  v262 = v289;
  v263 = v290;
  sub_24F9261E8();

  sub_24E824448(v105, *(&v105 + 1));
  sub_24E824448(v106, *(&v106 + 1));
  v268 = v278;
  v189 = v279;
  v190 = v281;
  v269 = v279;
  v191 = v283;
  v192 = v280;
  v270 = v280;
  v271 = v281;
  v193 = v285;
  v194 = v282;
  v272 = v282;
  v273 = v283;
  v196 = v284;
  v197 = v286;
  v274 = v284;
  v275 = v285;
  v276 = v286;
  v195 = v287;
  v277 = v287;
  v107 = *(v252 + *(v233 + 104));
  v108 = *(v107 + 16);
  v228 = v107;
  v109 = (v107 + 40);
  v110 = v108 + 1;
  while (--v110)
  {
    v111 = *(v109 - 1);
    v112 = *v109;
    v109 += 16;
    if (v112 >= 2 && v111 != 0)
    {
      v114 = v247;
      *&v288 = *(*(v247 + *(v245 + 104)) + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
      sub_24E602068(&qword_27F230DC8, &qword_27F230DC0, &unk_24F9A4110, MEMORY[0x277CBCE20]);
      *&v288 = sub_24F9230C8();
      v115 = v179;
      sub_24F92BEC8();
      sub_24E74EC40();
      v116 = sub_24F92BEF8();
      *&v261 = v116;
      v117 = sub_24F92BEB8();
      v118 = v182;
      (*(*(v117 - 8) + 56))(v182, 1, 1, v117);
      sub_24F58786C(&qword_27F21F498, sub_24E74EC40, MEMORY[0x277D85228]);
      v119 = v180;
      sub_24F923128();
      sub_24E601704(v118, &qword_27F21F468, &qword_24F962020);

      v120 = v114;
      (*(v181 + 8))(v115, v184);

      sub_24E602068(&qword_27F248480, &qword_27F248478, &qword_24FA0B158, MEMORY[0x277CBCCF8]);
      v121 = v185;
      v122 = sub_24F9230C8();
      (*(v183 + 8))(v119, v121);
      goto LABEL_9;
    }
  }

  v123 = v186;
  sub_24F923038();
  sub_24E602068(&qword_27F248488, &qword_27F248470, &unk_24FA0B148, MEMORY[0x277CBCE90]);
  v124 = v188;
  v122 = sub_24F9230C8();
  (*(v187 + 8))(v123, v124);
  v120 = v247;
LABEL_9:
  *&v261 = v122;
  v125 = v252;
  v126 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v127 = v246;
  v128 = v245;
  (v243)(v246, v120, v245);
  v129 = swift_allocObject();
  v130 = v251;
  v129[2] = v250;
  v129[3] = v130;
  v131 = v249;
  v129[4] = v253;
  v129[5] = v131;
  sub_24F58EB60(v126, v129 + v199, type metadata accessor for Page);
  (v231)(v129 + v200, v127, v128);
  sub_24F926BC8();

  sub_24E824448(v192, v190);
  sub_24E824448(v194, v191);
  sub_24E824448(v196, v193);
  sub_24E824448(v197, v195);
  v265 = v292;
  v266 = v293;
  v267 = v294;
  v261 = v288;
  v262 = v289;
  v263 = v290;
  v264 = v291;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);
  sub_24F926F58();
  (*(v237 + 16))(v236, v125, v238);
  v132 = v228 + 40;
  v133 = *(v228 + 2) + 1;
  while (--v133)
  {
    v134 = v132 + 16;
    v135 = *v132;
    v132 += 16;
    if (v135 == 1)
    {
      v136 = *(v134 - 3);
      goto LABEL_14;
    }
  }

  v136 = 0;
LABEL_14:
  v137 = v133 == 0;
  v138 = v246;
  v139 = v120;
  v140 = v245;
  (v243)(v246, v139, v245);
  v141 = v252;
  v142 = v244;
  sub_24F58E928(v252, v244, type metadata accessor for Page);
  v143 = swift_allocObject();
  v144 = v251;
  *(v143 + 2) = v250;
  *(v143 + 3) = v144;
  v145 = v249;
  *(v143 + 4) = v253;
  *(v143 + 5) = v145;
  (v231)(v143 + v202, v138, v140);
  sub_24F58EB60(v142, v143 + v230, type metadata accessor for Page);
  KeyPath = swift_getKeyPath();
  v147 = v223;
  *v223 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  swift_storeEnumTagMultiPayload();
  v148 = refreshed;
  sub_24E6009C8(v234, v147 + *(refreshed + 20), &qword_27F248468, &qword_24FA0B140);
  (*(v237 + 32))(v147 + v148[6], v236, v238);
  v149 = v147 + v148[7];
  *v149 = v136;
  *(v149 + 8) = v137;
  v150 = (v147 + v148[8]);
  *v150 = sub_24F58B8D0;
  v150[1] = v143;
  v151 = v218;
  v152 = v215;
  MEMORY[0x25304C420](v147, v215, v148, v206);
  sub_24F58B9FC(v147, type metadata accessor for OnForegroundRefreshViewModifier);
  v259[5] = v266;
  v260 = v267;
  v259[0] = v261;
  v259[1] = v262;
  v259[3] = v264;
  v259[4] = v265;
  v259[2] = v263;
  (*(*(v152 - 8) + 8))(v259, v152);
  sub_24E60169C(v141 + *(v233 + 112), &v254, qword_27F24EC90, &unk_24F93C1D0);
  v153 = ActionViewModifier;
  v154 = v224;
  v155 = &v224[*(ActionViewModifier + 24)];
  v156 = v255;
  *v155 = v254;
  *(v155 + 1) = v156;
  *(v155 + 4) = v256;
  *v154 = swift_getKeyPath();
  *(v154 + 40) = 0;
  v157 = *(v153 + 20);
  *(v154 + v157) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v158 = v154 + *(v153 + 28);
  v258 = 0;
  sub_24F926F28();
  v159 = *(&v254 + 1);
  *v158 = v254;
  *(v158 + 8) = v159;
  v160 = v220;
  MEMORY[0x25304C420](v154, v220, v153, v211);
  sub_24F58B9FC(v154, type metadata accessor for PerformPageLoadActionViewModifier);
  (*(v219 + 8))(v151, v160);
  v161 = v225;
  v162 = sub_24F924B68();
  v248 = &v179;
  MEMORY[0x28223BE20](v162);
  v163 = v251;
  *(&v179 - 6) = v250;
  *(&v179 - 5) = v163;
  v164 = v249;
  *(&v179 - 4) = v253;
  *(&v179 - 3) = v164;
  v178 = v141;
  v165 = swift_checkMetadataState();
  v166 = v212;
  v177 = v212;
  v167 = v208;
  v168 = v222;
  v169 = v240;
  v170 = v217;
  v171 = v214;
  v172 = v232;
  sub_24F926B08();
  (*(v226 + 8))(v161, v169);
  (*(v221 + 8))(v172, v168);
  *&v254 = v168;
  *(&v254 + 1) = v169;
  *&v255 = v165;
  *(&v255 + 1) = v170;
  v256 = v171;
  v257 = v166;
  swift_getOpaqueTypeConformance2();
  v173 = v209;
  v174 = v216;
  sub_24E7896B8();
  v175 = *(v213 + 8);
  v175(v167, v174);
  sub_24E7896B8();
  return (v175)(v173, v174);
}

uint64_t sub_24F57FEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a3;
  v66 = a7;
  v63 = a2;
  v64 = a6;
  v61 = a5;
  v62 = a4;
  v68 = a1;
  v69 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v55 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  type metadata accessor for Page(255);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  v84 = v11;
  v85 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v86 = sub_24F924038();
  v87 = v11;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v12 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v108 = MEMORY[0x277CE0880];
  v70 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v84 = v12;
  v85 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v14 = sub_24F926DC8();
  v84 = v12;
  v85 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_24E667ED0();
  v105 = OpaqueTypeConformance2;
  v106 = v16;
  v103 = swift_getWitnessTable();
  v104 = OpaqueTypeConformance2;
  v57 = MEMORY[0x277CE0340];
  v102 = swift_getWitnessTable();
  v60 = MEMORY[0x277CE0FB0];
  v17 = swift_getWitnessTable();
  v84 = v14;
  v85 = v17;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v18 = sub_24F924038();
  v84 = v14;
  v85 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v100 = v19;
  v101 = v20;
  v21 = swift_getWitnessTable();
  v22 = MEMORY[0x277CE0868];
  v58 = MEMORY[0x277CE0868];
  v23 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v98 = v21;
  v99 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_24E669F00();
  v96 = v24;
  v97 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_24E669F54();
  v94 = v26;
  v95 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v22);
  v92 = v28;
  v93 = v29;
  v30 = swift_getWitnessTable();
  v84 = v18;
  v85 = v30;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v31 = sub_24F924038();
  v32 = sub_24F5877B0();
  v84 = v18;
  v85 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v90 = v33;
  v91 = v34;
  v35 = swift_getWitnessTable();
  v84 = v59;
  v85 = v31;
  v86 = &type metadata for AppEventDetailSideBySideStyling;
  v87 = v32;
  v88 = v35;
  v89 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v84);
  v36 = sub_24F924E38();
  v82 = swift_getWitnessTable();
  v83 = v35;
  v37 = swift_getWitnessTable();
  v84 = v36;
  v85 = v37;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  v38 = sub_24F926DC8();
  v56 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v55 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  v41 = sub_24F924038();
  v59 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v55 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v55 = &v55 - v45;
  v71 = v62;
  v72 = v61;
  v73 = v64;
  v74 = v66;
  v75 = v63;
  v76 = v65;
  v84 = v36;
  v85 = v37;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v37;
  v46 = swift_getWitnessTable();
  sub_24F926DB8();
  swift_getKeyPath();
  v47 = sub_24F924098();
  v48 = *(v47 - 8);
  v49 = v67;
  (*(v48 + 16))(v67, v68, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  v79 = v46;
  v50 = swift_getWitnessTable();
  sub_24F9261B8();

  sub_24E601704(v49, &qword_27F220F50, &qword_24F965290);
  (*(v56 + 8))(v40, v38);
  v51 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v58);
  v77 = v50;
  v78 = v51;
  swift_getWitnessTable();
  v52 = v55;
  sub_24E7896B8();
  v53 = *(v59 + 8);
  v53(v43, v41);
  sub_24E7896B8();
  return (v53)(v52, v41);
}

void sub_24F58085C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a2;
  v71 = a1;
  v75 = a7;
  v72 = type metadata accessor for Page(0);
  v62 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v63 = v11;
  v64 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  v80 = a4;
  v67 = a5;
  v81 = a5;
  v68 = a6;
  v82 = a6;
  v73 = type metadata accessor for BasePageView(0, &v79);
  v61 = *(v73 - 8);
  v60[4] = *(v61 + 64);
  MEMORY[0x28223BE20](v73);
  v60[5] = v60 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  v79 = v13;
  v65 = a3;
  v80 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v66 = a4;
  v81 = sub_24F924038();
  v82 = v13;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v14 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v103 = MEMORY[0x277CE0880];
  v15 = swift_getWitnessTable();
  v79 = v14;
  v80 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v16 = sub_24F926DC8();
  v79 = v14;
  v80 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_24E667ED0();
  v100 = OpaqueTypeConformance2;
  v101 = v18;
  v98 = swift_getWitnessTable();
  v99 = OpaqueTypeConformance2;
  v70 = MEMORY[0x277CE0340];
  v97 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v79 = v16;
  v80 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v20 = sub_24F924038();
  v79 = v16;
  v80 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v95 = v21;
  v96 = v22;
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x277CE0868];
  v25 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v93 = v23;
  v94 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_24E669F00();
  v91 = v26;
  v92 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24E669F54();
  v89 = v28;
  v90 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v24);
  v87 = v30;
  v88 = v31;
  v32 = swift_getWitnessTable();
  v79 = v20;
  v80 = v32;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v33 = sub_24F924038();
  v34 = sub_24F5877B0();
  v79 = v20;
  v80 = v32;
  v35 = v71;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v85 = v36;
  v86 = v37;
  v38 = swift_getWitnessTable();
  v79 = v76;
  v80 = v33;
  v81 = &type metadata for AppEventDetailSideBySideStyling;
  v82 = v34;
  v83 = v38;
  v84 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v79);
  v39 = sub_24F924E38();
  MEMORY[0x28223BE20](v39);
  v41 = v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v76 = v60 - v43;
  v77 = swift_getWitnessTable();
  v78 = v38;
  v44 = swift_getWitnessTable();
  v79 = v39;
  v80 = v44;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  MEMORY[0x28223BE20](v47);
  v60[3] = v60 - v48;
  v69 = v49;
  v50 = sub_24F924E38();
  v70 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v52 = v60 - v51;
  v53 = *(v35 + *(v72 + 104));
  v54 = (v53 + 40);
  v55 = *(v53 + 16) + 1;
  while (--v55)
  {
    v56 = *(v54 - 1);
    v57 = *v54;
    v54 += 16;
    if (v57 >= 2 && v56 == 0)
    {
      v60[2] = v52;
      v59 = *(v73 + 100);
      v60[1] = v46;
      sub_24F581628(*(v74 + v59), v35, v73, v76);
    }
  }

  sub_24F581628(*(v74 + *(v73 + 100)), v35, v73, v41);
}

void sub_24F581628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v188 = a2;
  v175 = a1;
  v174 = a4;
  v182 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  v187 = type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  v183 = a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v181 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v180 = v6;
  sub_24F924038();
  swift_getTupleTypeMetadata();
  v156 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v184 = sub_24F921D68();
  v7 = sub_24F924038();
  v157 = swift_getWitnessTable();
  v212 = v157;
  v213 = MEMORY[0x277CE0880];
  v8 = swift_getWitnessTable();
  v177 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v9 = sub_24F926DC8();
  v159 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v211 = sub_24E667ED0();
  v208 = swift_getWitnessTable();
  v209 = OpaqueTypeConformance2;
  v161 = OpaqueTypeConformance2;
  v207 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v149 = v9;
  v176 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  v11 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  v150 = v11;
  v153 = sub_24F924038();
  v154 = sub_24F924038();
  v12 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v168 = v12;
  sub_24F924038();
  v160 = v10;
  v158 = swift_getOpaqueTypeConformance2();
  v205 = v158;
  v206 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x277CE0868];
  v164 = v13;
  v203 = v13;
  v204 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v163 = swift_getWitnessTable();
  v201 = v163;
  v202 = sub_24E669F00();
  v162 = swift_getWitnessTable();
  v199 = v162;
  v200 = sub_24E669F54();
  v166 = swift_getWitnessTable();
  v197 = v166;
  v198 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v14);
  v15 = swift_getWitnessTable();
  v16 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v17 = sub_24F924038();
  v18 = sub_24F5877B0();
  v167 = v15;
  v165 = swift_getOpaqueTypeConformance2();
  v195 = v165;
  v196 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  *&v191 = v182;
  *(&v191 + 1) = v17;
  *&v192 = &type metadata for AppEventDetailSideBySideStyling;
  v116 = v18;
  *(&v192 + 1) = v18;
  v173 = swift_getWitnessTable();
  v193 = v173;
  v194 = &off_286225930;
  v19 = type metadata accessor for AdaptiveSideBySideContainerView(0, &v191);
  v117 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v115 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = &v101 - v22;
  v172 = v23;
  v171 = sub_24F924E38();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v101 - v24;
  v103 = sub_24F924848();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v26 - 8);
  v152 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v151 = &v101 - v29;
  v134 = sub_24F929888();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v183;
  v185 = *(v183 - 8);
  v32 = *(v185 + 64);
  MEMORY[0x28223BE20](v33);
  v178 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v187);
  v35 = &v101 - v34;
  v120 = swift_checkMetadataState();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v37 = &v101 - v36;
  v123 = swift_checkMetadataState();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v118 = &v101 - v38;
  v39 = v186;
  v129 = swift_checkMetadataState();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v121 = &v101 - v40;
  v128 = swift_checkMetadataState();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v124 = &v101 - v41;
  v133 = swift_checkMetadataState();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = &v101 - v42;
  v142 = swift_checkMetadataState();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v184 = &v101 - v43;
  v140 = swift_checkMetadataState();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v101 - v44;
  v138 = swift_checkMetadataState();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v101 - v45;
  v150 = swift_checkMetadataState();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v145 = &v101 - v46;
  v148 = swift_checkMetadataState();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v144 = &v101 - v47;
  v168 = v16;
  v146 = *(v16 - 8);
  MEMORY[0x28223BE20](v48);
  v143 = &v101 - v49;
  OpaqueTypeMetadata2 = v17;
  v154 = *(v17 - 8);
  MEMORY[0x28223BE20](v50);
  v104 = &v101 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v153 = &v101 - v53;
  v113 = v54;
  MEMORY[0x28223BE20](v55);
  v177 = &v101 - v56;
  LODWORD(v176) = sub_24F57CA34();
  sub_24F58E928(v188, v35, type metadata accessor for Page);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1 == 1 && qword_27F210D60 != -1)
  {
    swift_once();
  }

  v57 = v185;
  v58 = *(v185 + 16);
  v59 = v178;
  v109 = v185 + 16;
  v107 = v58;
  v58(v178, v39, v31);
  v60 = (*(v57 + 80) + 48) & ~*(v57 + 80);
  v108 = *(v57 + 80);
  v105 = v60 + v32;
  v61 = swift_allocObject();
  v62 = v180;
  v61[2] = v181;
  v61[3] = v62;
  v63 = *(v31 + 40);
  v112 = *(v31 + 32);
  v61[4] = v112;
  v61[5] = v63;
  v111 = v63;
  v64 = *(v57 + 32);
  v110 = v60;
  v185 = v57 + 32;
  v106 = v64;
  v64(v61 + v60, v59, v31);
  sub_24F921A38();
  swift_checkMetadataState();
  v65 = v187;
  sub_24F921D78();
  v66 = *(v188 + *(v65 + 128));
  if (v66 == 2 || (v66 & 1) == 0)
  {
    v69 = v186;
  }

  else
  {
    v67 = sub_24F925818();
    sub_24F925848();
    sub_24F925848();
    v68 = sub_24F925848();
    v69 = v186;
    if (v68 == v67)
    {
      goto LABEL_12;
    }
  }

  sub_24F925848();
LABEL_12:
  sub_24F924058();
  v70 = v118;
  v71 = v120;
  sub_24F926438();
  (*(v119 + 8))(v37, v71);
  *&v191 = 0;
  *(&v191 + 1) = 0xE000000000000000;
  sub_24F92A708();
  v72 = v188;
  sub_24F92CA38();
  v192 = 0u;
  v191 = 0u;
  v73 = v130;
  sub_24F929838();

  sub_24E601704(&v191, &qword_27F2129B0, &unk_24F945320);
  v74 = v121;
  v75 = v123;
  sub_24F925EE8();
  (*(v132 + 8))(v73, v134);
  (*(v122 + 8))(v70, v75);
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v76 = v190;
  type metadata accessor for ArcadeSubscription(0);
  sub_24F928F28();
  v77 = v189;
  v78 = *(v69 + *(v31 + 124));
  v79 = v187;
  *(&v192 + 1) = v187;
  v193 = &protocol witness table for Page;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v191);
  sub_24F58E928(v72, boxed_opaque_existential_1, type metadata accessor for Page);
  v81 = v124;
  v159 = v78;
  v82 = v129;
  sub_24F67B57C(v76, v175, v77, v78, &v191, v129);

  (*(v127 + 8))(v74, v82);
  __swift_destroy_boxed_opaque_existential_1(&v191);
  v83 = v125;
  v84 = v128;
  sub_24F926398();
  (*(v126 + 8))(v81, v84);
  v85 = v79[24];
  v86 = v151;
  sub_24E60169C(v72 + v85, v151, &qword_27F21D8F8, &qword_24F95ADB0);
  v87 = v79[25];
  v88 = (v72 + v79[23]);
  v89 = *v88;
  v161 = v88[1];
  v175 = v89;
  v90 = v133;
  View.pageBackground(using:dragIndicatorVisibility:isSideBySide:)(v86, *(v72 + v87), (v89 != 0) & v176, v133, v158);
  sub_24E601704(v86, &qword_27F21D8F8, &qword_24F95ADB0);
  (*(v131 + 8))(v83, v90);
  v91 = v72 + v85;
  v92 = v152;
  sub_24E60169C(v91, v152, &qword_27F21D8F8, &qword_24F95ADB0);
  v93 = type metadata accessor for Page.Background(0);
  LODWORD(v79) = (*(*(v93 - 8) + 48))(v92, 1, v93);
  sub_24E601704(v92, &qword_27F21D8F8, &qword_24F95ADB0);
  if (v79 == 1)
  {
    v94 = v69 + *(v183 + 60);
    v95 = *v94;
    if (*(v94 + 8) != 1)
    {

      sub_24F92BDC8();
      v96 = sub_24F9257A8();
      sub_24F921FD8();

      v97 = v101;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v95, 0);
      (*(v102 + 8))(v97, v103);
      LOBYTE(v95) = v191;
    }
  }

  else
  {
    LOBYTE(v95) = 0;
  }

  LOBYTE(v191) = v95 & 1;
  v98 = v142;
  v99 = v184;
  v100 = View.backgroundTheme(_:)(&v191, v142, v164);
  (*(v141 + 8))(v99, v98, v100);
  sub_24F5634EC();
}

uint64_t sub_24F583558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  sub_24F92B7F8();
  v6[12] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5835F8, v8, v7);
}

uint64_t sub_24F5835F8()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  v2 = type metadata accessor for BasePageView(0, v0 + 16);
  sub_24F583690(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F583690(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = sub_24F91F648();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v16 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + *(v16 + 108), &v24, qword_27F24EC90, &unk_24F93C1D0);
  if (v25)
  {
    sub_24E612C80(&v24, v26);
    sub_24F928F28();
    (*(v9 + 104))(v11, *MEMORY[0x277D21E18], v8);
    sub_24F929288();

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_24E601704(&v24, qword_27F21B590, &unk_24F93BE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
    sub_24F926F38();
    sub_24F9217B8();
    sub_24F926F48();
  }

  sub_24F91F618();
  v17 = v22;
  (*(v3 + 16))(v21, v7, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);
  sub_24F926F48();
  return (*(v3 + 8))(v7, v17);
}

void sub_24F583A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  v11 = sub_24F91F648();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248490, &unk_24FA203D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v18 = off_27F229AB8;
  swift_beginAccess();
  v19 = v18[20];
  if (v19 != 2 && (v19 != 1 || v18[26] != 1))
  {
    v22 = sub_24EB6B1B0(&v45);
    if (*(v21 + 8) != 2)
    {
      *(v21 + 90) = 1;
    }

    (v22)(&v45, 0);
  }

  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v23 = type metadata accessor for BasePageView(0, &v45);
  type metadata accessor for TaskUpdateHolder(0);
  sub_24F928F28();
  v24 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
  sub_24F926F58();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
  v26 = OBJC_IVAR____TtC12GameStoreKit16TaskUpdateHolder_taskUpdate;
  swift_beginAccess();
  sub_24F58BB9C(v17, v24 + v26);
  swift_endAccess();
  v27 = *(a1 + *(v23 + 124));
  swift_getKeyPath();
  v45 = v27;
  sub_24F58786C(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v28 = *(v27 + 16) < 2u;
  v29 = (a1 + *(v23 + 72));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v45) = v30;
  v46 = v31;
  v44 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  v32 = type metadata accessor for Page(0);
  v33 = v43;
  v34 = *(v43 + *(v32 + 104));
  v35 = (v34 + 40);
  v36 = *(v34 + 16) + 1;
  while (--v36)
  {
    v37 = v35 + 16;
    v38 = *v35;
    v35 += 16;
    if (!v38)
    {
      v39 = *(v37 - 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);
      sub_24F926F38();
      sub_24F91F5C8();
      v41 = v40;
      (*(v12 + 8))(v14, v11);
      if (v39 < fabs(v41))
      {
        sub_24F583690(v33, v23);
      }

      break;
    }
  }
}

uint64_t sub_24F583E94()
{
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v0 = off_27F229AB8;
  swift_beginAccess();
  v1 = *(v0 + 152);
  *&v20[11] = *(v0 + 227);
  v2 = *(v0 + 200);
  v19[2] = *(v0 + 184);
  v19[3] = v2;
  *v20 = *(v0 + 216);
  v3 = *(v0 + 168);
  v19[0] = v1;
  v19[1] = v3;
  v4 = v20[26];
  if (*(&v1 + 1) == 2)
  {
    *&v13 = *&v19[0];
    *(&v13 + 1) = 2;
    v5 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v5;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    v6 = &v13;
  }

  else
  {
    v13 = __PAIR128__(*(&v1 + 1), *&v19[0]);
    v7 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = v7;
    *v17 = *(v0 + 216);
    *&v17[10] = *(v0 + 226);
    v14 = *(v0 + 168);
    v18 = v20[26];
    sub_24E60169C(v19, v11, &qword_27F229AE8, &unk_24FA0B220);
    result = sub_24E601704(&v13, &qword_27F229AE8, &unk_24FA0B220);
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v9 = *(v0 + 200);
    v11[2] = *(v0 + 184);
    v11[3] = v9;
    v12[0] = *(v0 + 216);
    *(v12 + 11) = *(v0 + 227);
    v10 = *(v0 + 168);
    v11[0] = *(v0 + 152);
    v11[1] = v10;
    *(v0 + 152) = xmmword_24F986140;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 227) = 0u;
    v6 = v11;
  }

  return sub_24E601704(v6, &qword_27F229AE8, &unk_24FA0B220);
}

uint64_t sub_24F584078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E850);
  sub_24F58E928(a2, v15, type metadata accessor for Page);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = a3;
    v35 = a6;
    v22 = v21;
    v36[0] = v21;
    *v20 = 136315138;
    v23 = sub_24F92A6E8();
    v24 = a5;
    v25 = a7;
    v27 = v26;
    sub_24F58B9FC(v15, type metadata accessor for Page);
    v28 = sub_24E7620D4(v23, v27, v36);
    a7 = v25;
    a5 = v24;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Refreshing page %s for feed refresh", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    a6 = v35;
    MEMORY[0x2530542D0](v22, -1, -1);
    v29 = v20;
    a4 = v33;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  else
  {

    sub_24F58B9FC(v15, type metadata accessor for Page);
  }

  v36[0] = a4;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = a7;
  v30 = type metadata accessor for BasePageView(0, v36);
  return sub_24F583690(a2, v30);
}

uint64_t sub_24F5842D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v95 = a6;
  v96 = a7;
  v97 = a3;
  v98 = a1;
  v90 = a2;
  v99 = a8;
  v12 = type metadata accessor for Page(0);
  v93 = *(v12 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a4;
  v116 = a5;
  v88 = a4;
  v86 = a5;
  v117 = a6;
  v118 = a7;
  v85 = type metadata accessor for BasePageView(0, &v115);
  v89 = *(v85 - 8);
  v91 = *(v89 + 64);
  MEMORY[0x28223BE20](v85);
  v87 = &v79 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750, &qword_24FA0B0F0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  v115 = v15;
  v116 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v117 = sub_24F924038();
  v118 = v15;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  v16 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v139 = MEMORY[0x277CE0880];
  v17 = swift_getWitnessTable();
  v115 = v16;
  v116 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  v18 = sub_24F926DC8();
  v115 = v16;
  v116 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E667ED0();
  v136 = OpaqueTypeConformance2;
  v137 = v20;
  v134 = swift_getWitnessTable();
  v135 = OpaqueTypeConformance2;
  v81 = MEMORY[0x277CE0340];
  v133 = swift_getWitnessTable();
  v82 = MEMORY[0x277CE0FB0];
  v21 = swift_getWitnessTable();
  v115 = v18;
  v116 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v22 = sub_24F924038();
  v115 = v18;
  v116 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v131 = v23;
  v132 = v24;
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CE0868];
  v80 = MEMORY[0x277CE0868];
  v27 = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v129 = v25;
  v130 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24E669F00();
  v127 = v28;
  v128 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_24E669F54();
  v125 = v30;
  v126 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v26);
  v123 = v32;
  v124 = v33;
  v34 = swift_getWitnessTable();
  v115 = v22;
  v116 = v34;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v35 = sub_24F924038();
  v36 = sub_24F5877B0();
  v115 = v22;
  v116 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v121 = v37;
  v122 = v38;
  v39 = swift_getWitnessTable();
  v115 = v83;
  v116 = v35;
  v117 = &type metadata for AppEventDetailSideBySideStyling;
  v118 = v36;
  v119 = v39;
  v120 = &off_286225930;
  type metadata accessor for AdaptiveSideBySideContainerView(255, &v115);
  v40 = sub_24F924E38();
  v113 = swift_getWitnessTable();
  v114 = v39;
  v41 = swift_getWitnessTable();
  v115 = v40;
  v116 = v41;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0, &unk_24F9C34A0);
  sub_24F924038();
  v115 = v40;
  v116 = v41;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v41;
  v110 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v43 = sub_24E602068(&qword_27F2381F8, &qword_27F2381F0, &unk_24F9C34A0, v80);
  v108 = v42;
  v109 = v43;
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  v44 = sub_24F924038();
  v45 = sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  v46 = swift_getWitnessTable();
  v47 = MEMORY[0x277CE0790];
  v106 = v46;
  v107 = MEMORY[0x277CE0790];
  v104 = swift_getWitnessTable();
  v105 = v47;
  v48 = swift_getWitnessTable();
  v115 = v84;
  v116 = v44;
  v117 = v45;
  v118 = v48;
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  v49 = sub_24F924038();
  v50 = swift_getWitnessTable();
  v51 = sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier, &unk_24FA0B3E8);
  v102 = v50;
  v103 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier, &unk_24FA0B398);
  v100 = v52;
  v101 = v53;
  v81 = v49;
  v82 = swift_getWitnessTable();
  v115 = v49;
  v116 = MEMORY[0x277D839B0];
  v117 = v82;
  v118 = MEMORY[0x277D839C8];
  v83 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = &v79 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v80 = &v79 - v57;
  v58 = v85;
  v59 = v90;
  v60 = *(v90 + *(v85 + 124));
  swift_getKeyPath();
  v115 = v60;
  sub_24F58786C(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  LOBYTE(v115) = *(v60 + 16) < 2u;
  v61 = v89;
  v62 = v87;
  v63 = v59;
  v64 = v58;
  (*(v89 + 16))(v87, v63, v58);
  v65 = v92;
  sub_24F58E928(v97, v92, type metadata accessor for Page);
  v66 = (*(v61 + 80) + 48) & ~*(v61 + 80);
  v67 = (v91 + *(v93 + 80) + v66) & ~*(v93 + 80);
  v68 = swift_allocObject();
  v69 = v86;
  *(v68 + 2) = v88;
  *(v68 + 3) = v69;
  v70 = v96;
  *(v68 + 4) = v95;
  *(v68 + 5) = v70;
  (*(v61 + 32))(&v68[v66], v62, v64);
  sub_24F58EB60(v65, &v68[v67], type metadata accessor for Page);
  v71 = swift_checkMetadataState();
  v72 = v79;
  v73 = MEMORY[0x277D839B0];
  v74 = v82;
  v75 = MEMORY[0x277D839C8];
  sub_24F926AB8();

  v115 = v71;
  v116 = v73;
  v117 = v74;
  v118 = v75;
  swift_getOpaqueTypeConformance2();
  v76 = v80;
  sub_24E7896B8();
  v77 = *(v84 + 8);
  v77(v72, OpaqueTypeMetadata2);
  sub_24E7896B8();
  return (v77)(v76, OpaqueTypeMetadata2);
}

void sub_24F584F80(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  v22 = *a1;
  v23 = *a2;
  v50[0] = a5;
  v50[1] = a6;
  v50[2] = a7;
  v50[3] = a8;
  v24 = type metadata accessor for BasePageView(0, v50);
  if (*(a3 + *(v24 + 84)))
  {
    if (*(a3 + *(v24 + 84)) == 1)
    {
      v25 = qword_27F2113E0;
      if (v22 != v23)
      {
        v26 = v24;
        if (qword_27F2113E0 != -1)
        {
          swift_once();
        }

        v27 = sub_24F9220D8();
        __swift_project_value_buffer(v27, qword_27F39E7F0);
        sub_24F58E928(a4, v21, type metadata accessor for Page);
        v28 = sub_24F9220B8();
        v29 = sub_24F92BDB8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v50[0] = v31;
          *v30 = 136315138;
          v32 = sub_24F92A6E8();
          v34 = v33;
          sub_24F58B9FC(v21, type metadata accessor for Page);
          v35 = sub_24E7620D4(v32, v34, v50);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_24E5DD000, v28, v29, "Network connectivity changed for page %s, refreshing page (reloadOnChange)", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x2530542D0](v31, -1, -1);
          MEMORY[0x2530542D0](v30, -1, -1);

LABEL_21:
          sub_24F583690(a4, v26);
          return;
        }

        v49 = v21;
        goto LABEL_20;
      }
    }

    else
    {
      v25 = qword_27F2113E0;
      if (!(v22 & 1 | ((v23 & 1) == 0)))
      {
        v26 = v24;
        if (qword_27F2113E0 != -1)
        {
          swift_once();
        }

        v40 = sub_24F9220D8();
        __swift_project_value_buffer(v40, qword_27F39E7F0);
        sub_24F58E928(a4, v18, type metadata accessor for Page);
        v41 = sub_24F9220B8();
        v42 = sub_24F92BDB8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v50[0] = v44;
          *v43 = 136315138;
          v45 = sub_24F92A6E8();
          v47 = v46;
          sub_24F58B9FC(v18, type metadata accessor for Page);
          v48 = sub_24E7620D4(v45, v47, v50);

          *(v43 + 4) = v48;
          _os_log_impl(&dword_24E5DD000, v41, v42, "Network connectivity changed from offline to online for page %s, refreshing page", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x2530542D0](v44, -1, -1);
          MEMORY[0x2530542D0](v43, -1, -1);

          goto LABEL_21;
        }

        v49 = v18;
LABEL_20:
        sub_24F58B9FC(v49, type metadata accessor for Page);
        goto LABEL_21;
      }
    }

    if (v25 != -1)
    {
      swift_once();
    }

    v36 = sub_24F9220D8();
    __swift_project_value_buffer(v36, qword_27F39E7F0);
    v37 = sub_24F9220B8();
    v38 = sub_24F92BDD8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24E5DD000, v37, v38, "Network connectivity changed but a refresh is not required.", v39, 2u);
      MEMORY[0x2530542D0](v39, -1, -1);
    }
  }
}

uint64_t sub_24F585440@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for BasePageView(0, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
  sub_24F926F58();
  v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v21 = swift_allocObject();
  sub_24E6009C8(v12, v21 + v20, &qword_27F216F50, &unk_24FA10C90);
  v29 = sub_24F928FD8();
  sub_24F929298();
  v31 = sub_24F587A28;
  v32 = v21;
  v22 = *(v14 + 16);
  v22(v19, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248458, &unk_24FA0B130);
  sub_24E602068(&qword_27F248460, &qword_27F248458, &unk_24FA0B130, &unk_24FA12E68);
  sub_24F929238();
  v23 = *(v14 + 8);
  v23(v16, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v22((v25 + v24), v19, v13);
  sub_24F929298();
  v22(v16, (v25 + v24), v13);
  swift_setDeallocating();
  v23((v25 + v24), v13);
  swift_deallocClassInstance();
  sub_24F929228();
  v23(v16, v13);
  return (v23)(v19, v13);
}

uint64_t sub_24F5857D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + *(type metadata accessor for Page(0) + 88));
  if (v12 == 3)
  {
    if (qword_27F211128 != -1)
    {
      swift_once();
    }

    LOBYTE(v12) = word_27F39E3B0;
  }

  sub_24F769788(v11);
  v13 = dbl_24FA0B458[v12];
  v14 = *(v9 + 56);
  v14(v7, 1, 1, v8);
  v14(v4, 1, 1, v8);
  v15 = sub_24EF13DC0(v7, v4, v13);
  sub_24E601704(v4, &qword_27F2140C0, &qword_24F93C240);
  sub_24E601704(v7, &qword_27F2140C0, &qword_24F93C240);
  (*(v9 + 8))(v11, v8);
  if (v15 + 0.0 + -20.0 >= 0.0)
  {
    *&result = v15 + 0.0 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F585A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0, &qword_24F93C240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Page(0);
  if (*(a1 + *(v12 + 88)) == 3)
  {
    if (qword_27F211128 != -1)
    {
      swift_once();
    }

    LOBYTE(v13) = HIBYTE(word_27F39E3B0);
  }

  else
  {
    v13 = HIBYTE(*(a1 + *(v12 + 88)));
  }

  sub_24F769788(v11);
  v14 = dbl_24FA0B458[v13];
  v15 = *(v9 + 56);
  v15(v7, 1, 1, v8);
  v15(v4, 1, 1, v8);
  v16 = sub_24EF13DC0(v7, v4, v14);
  sub_24E601704(v4, &qword_27F2140C0, &qword_24F93C240);
  sub_24E601704(v7, &qword_27F2140C0, &qword_24F93C240);
  (*(v9 + 8))(v11, v8);
  if (v16 + -20.0 >= 0.0)
  {
    *&result = v16 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F585C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X8>)
{
  v67 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v45 - v14;
  WitnessTable = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v73 = sub_24F924038();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v45 - v19;
  v70 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v45 - v24;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v63 = a6;
  v25 = type metadata accessor for BasePageView(0, &v81);
  sub_24F5857D4(a1);
  if (v26)
  {
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v59 = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v59 = 0;
    v60 = v90[8];
    v57 = v94;
    v58 = v92;
    v56 = v95;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v96) = v91;
    LOBYTE(v90[0]) = v93;
    v52 = 0;
    v53 = v91;
    v54 = v93;
    LOBYTE(v81) = 0;
  }

  (*(a2 + *(v25 + 108)))(a1);
  v66 = a5;
  sub_24E7896B8();
  v27 = *(v70 + 8);
  v64 = v22;
  v65 = a3;
  v61 = v27;
  v62 = v70 + 8;
  v27(v22, a3);
  v28 = v50;
  (*(a2 + *(v25 + 112)))(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);
  v29 = v51;
  sub_24F926F58();
  v30 = v68;
  v49 = v25;
  v31 = v63;
  sub_24F9261B8();

  sub_24E601704(v29, &qword_27F216F50, &unk_24FA10C90);
  (*(WitnessTable + 8))(v28, a4);
  v32 = sub_24E602068(&qword_27F2484A8, &qword_27F248410, &unk_24FA10CA0, MEMORY[0x277CE0868]);
  v90[5] = v31;
  v90[6] = v32;
  v33 = v73;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8();
  v63 = *(v71 + 8);
  v63(v30, v33);
  sub_24F585A34(a1);
  if (v34)
  {
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v35 = 0;
    LODWORD(v50) = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    LODWORD(v50) = 0;
    v51 = v96;
    v48 = v100;
    v49 = v98;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v90[0]) = v97;
    LOBYTE(v78[0]) = v99;
    v35 = v97;
    v46 = v99;
    v47 = v101;
    LOBYTE(v81) = 0;
  }

  v81 = 0;
  v82 = v52;
  v83 = v60;
  v84 = v53;
  v85 = v58;
  v86 = v54;
  v87 = v57;
  v88 = v56;
  v89 = v59;
  v90[0] = &v81;
  v37 = v64;
  v36 = v65;
  v38 = v72;
  (*(v70 + 16))(v64, v72, v65);
  v90[1] = v37;
  v39 = v68;
  v40 = v69;
  v41 = v73;
  (*(v71 + 16))(v68, v69, v73);
  v79[0] = 0;
  v79[1] = 0;
  v79[2] = v51;
  v79[3] = v35;
  v79[4] = v49;
  v79[5] = v46;
  v79[6] = v48;
  v79[7] = v47;
  v80 = v50;
  v90[2] = v39;
  v90[3] = v79;
  v78[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248408, &unk_24FA0B100);
  v78[1] = v36;
  v78[2] = v41;
  v78[3] = v78[0];
  v74 = sub_24F58D3F0();
  v75 = v66;
  v76 = WitnessTable;
  v77 = v74;
  sub_24F57BA64(v90, 4uLL, v78);
  v42 = v63;
  v63(v40, v41);
  v43 = v61;
  v61(v38, v36);
  v42(v39, v41);
  return v43(v37, v36);
}

uint64_t sub_24F58637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a2;
  v39 = a3;
  v14 = sub_24F924848();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  sub_24F769764((&v36 - v21));
  v40[0] = a4;
  v40[1] = a5;
  v40[2] = a6;
  v40[3] = a7;
  v23 = type metadata accessor for BasePageView(0, v40);
  sub_24F769764(v19);
  v24 = a1 + *(v23 + 56);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_24F92BDC8();
    v26 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v25, 0);
    (*(v36 + 8))(v16, v37);
    LODWORD(v25) = LOBYTE(v40[0]);
  }

  v27 = sub_24F5502F0(v22, v19, v25);
  v28 = 0xCu >> (v27 & 0xF);
  v29 = 0x1000100u >> (8 * v27);
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for MixedMediaItemView(0);
  *(a8 + *(v31 + 32)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *(a8 + *(v31 + 36)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v32 = v39;
  *a8 = v38;
  *(a8 + 8) = v32;
  *(a8 + 16) = 4;
  *(a8 + 17) = v29;
  *(a8 + 18) = v28 & 1;

  v33 = sub_24F924058();
  LOBYTE(v31) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248400, &qword_24FA0B0F8);
  v35 = a8 + *(result + 36);
  *v35 = v33;
  *(v35 + 8) = v31;
  return result;
}

uint64_t sub_24F58669C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v15[0] = a1;
  v15[1] = a4;
  type metadata accessor for Page(255);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408, &unk_24FA0B100);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410, &unk_24FA10CA0);
  v22 = sub_24F924038();
  v23 = v4;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24E667ED0();
  v15[15] = swift_getWitnessTable();
  v15[16] = OpaqueTypeConformance2;
  v15[14] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8, &unk_24FA0B110);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40, &qword_24F95E5A0);
  v5 = sub_24F924038();
  v15[12] = swift_getOpaqueTypeConformance2();
  v15[13] = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
  v6 = swift_getWitnessTable();
  v7 = MEMORY[0x277CE0868];
  v15[10] = v6;
  v15[11] = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
  v15[8] = swift_getWitnessTable();
  v15[9] = sub_24E669F00();
  v15[6] = swift_getWitnessTable();
  v15[7] = sub_24E669F54();
  v15[4] = swift_getWitnessTable();
  v15[5] = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, v7);
  v20 = v5;
  v21 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418, &qword_24FA0B120);
  v8 = sub_24F924038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  v20 = v5;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = sub_24E602068(&qword_27F248428, &qword_27F248418, &qword_24FA0B120, MEMORY[0x277CE0800]);
  v15[2] = v12;
  v15[3] = v13;
  swift_getWitnessTable();
  sub_24E7896B8();
  sub_24E7896B8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24F586C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F923418();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CDD6B8], v11, v13);
  v16 = sub_24F923408();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = a3 + *(refreshed + 28);
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468, &qword_24FA0B140);
      MEMORY[0x25304CAF0](v20);
      sub_24F91F5C8();
      v22 = v21;
      result = (*(v8 + 8))(v10, v7);
      if (v19 < fabs(v22))
      {
        if (qword_27F211400 != -1)
        {
          swift_once();
        }

        v23 = sub_24F9220D8();
        __swift_project_value_buffer(v23, qword_27F39E850);
        sub_24F58E928(a3, v6, type metadata accessor for OnForegroundRefreshViewModifier);
        v24 = sub_24F9220B8();
        v25 = sub_24F92BD98();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34 = v27;
          *v26 = 136315138;
          v28 = sub_24F92A6E8();
          v30 = v29;
          sub_24F58B9FC(v6, type metadata accessor for OnForegroundRefreshViewModifier);
          v31 = sub_24E7620D4(v28, v30, &v34);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_24E5DD000, v24, v25, "Refreshing page %s on foreground", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x2530542D0](v27, -1, -1);
          MEMORY[0x2530542D0](v26, -1, -1);
        }

        else
        {

          v32 = sub_24F58B9FC(v6, type metadata accessor for OnForegroundRefreshViewModifier);
        }

        return (*(a3 + *(refreshed + 32)))(v32);
      }
    }
  }

  return result;
}

uint64_t sub_24F587078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = sub_24F923418();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F76A1F0(v8);
  sub_24F58E928(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OnForegroundRefreshViewModifier);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_24F58EB60(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for OnForegroundRefreshViewModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484E0, &qword_24FA0B438);
  sub_24E602068(&qword_27F2484E8, &qword_27F2484E0, &qword_24FA0B438, MEMORY[0x277CE04B0]);
  sub_24F58786C(&qword_27F235EA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  sub_24F926AB8();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F5872DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = a1;
  v19 = a2;
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v5 = ActionViewModifier - 8;
  v6 = *(ActionViewModifier - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](ActionViewModifier);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484F0, &qword_24FA0B440);
  v17 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_24F58E928(v3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformPageLoadActionViewModifier);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_24F58EB60(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PerformPageLoadActionViewModifier);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484F8, &unk_24FA0B448);
  (*(*(v13 - 8) + 16))(v10, v18, v13);
  v14 = &v10[*(v8 + 36)];
  *v14 = sub_24F58EC4C;
  *(v14 + 1) = v12;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  sub_24E60169C(v3 + *(v5 + 32), v20, qword_27F21B590, &unk_24F93BE30);
  LOBYTE(v5) = v21 != 0;
  sub_24E601704(v20, qword_27F21B590, &unk_24F93BE30);
  v20[0] = v5;
  sub_24F58E928(v3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformPageLoadActionViewModifier);
  v15 = swift_allocObject();
  sub_24F58EB60(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11, type metadata accessor for PerformPageLoadActionViewModifier);
  sub_24F58EE10();
  sub_24F926AB8();

  return sub_24E601704(v10, &qword_27F2484F0, &qword_24FA0B440);
}

void *sub_24F587598()
{
  v1 = sub_24F921B58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v6 = (v0 + *(ActionViewModifier + 28));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v15[0]) = *v6;
  v15[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if ((v12 & 1) == 0)
  {
    sub_24E60169C(v0 + *(ActionViewModifier + 24), &v12, qword_27F21B590, &unk_24F93BE30);
    if (v13)
    {
      sub_24E612C80(&v12, v15);
      sub_24F7695C8(&v12);
      if (v13)
      {
        v10[2] = v14;
        v10[1] = __swift_project_boxed_opaque_existential_1(&v12, v13);
        sub_24F76973C(v4);
        sub_24F9218A8();
        (*(v2 + 8))(v4, v1);
        __swift_destroy_boxed_opaque_existential_1(&v12);
      }

      else
      {
        sub_24E601704(&v12, &unk_27F212740, &unk_24F940730);
      }

      LOBYTE(v12) = v7;
      *(&v12 + 1) = v8;
      v11 = 1;
      sub_24F926F48();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      return sub_24E601704(&v12, qword_27F21B590, &unk_24F93BE30);
    }
  }

  return result;
}

unint64_t sub_24F5877B0()
{
  result = qword_27F248420;
  if (!qword_27F248420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400, &qword_24FA0B0F8);
    sub_24F58786C(&qword_27F2323D0, type metadata accessor for MixedMediaItemView, &unk_24FA0D690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248420);
  }

  return result;
}

uint64_t sub_24F58786C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F587920()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F587A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);

  return sub_24F611B34();
}

uint64_t sub_24F587A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for Page(0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v16[0] = v5;
  v16[1] = v6;
  v12 = (v10 + 48) & ~v10;
  v16[2] = v7;
  v16[3] = v8;
  v13 = *(type metadata accessor for BasePageView(0, v16) - 8);
  v14 = v2 + ((v12 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_24F57FEF0(a1, v2 + v12, v14, v5, v6, v7, v8, a2);
}

void sub_24F587BBC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v5 = *(type metadata accessor for BasePageView(0, v10) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Page(0) - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_24F583A88(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for Page(0);
  v2 = *(*(v1 - 1) + 80);
  v127 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 32);
  v130[0] = *(v0 + 16);
  v130[1] = v3;
  v4 = type metadata accessor for BasePageView(0, v130);
  v129 = *(*(v4 - 1) + 80);
  v128 = (v2 + 48) & ~v2;
  v5 = v0 + v128;
  v6 = sub_24F92A708();
  (*(*(v6 - 8) + 8))(v0 + v128, v6);

  v7 = v1[6];
  v8 = sub_24F928818();
  (*(*(v8 - 8) + 8))(v0 + v128 + v7, v8);

  v9 = v0 + v128 + v1[20];
  v10 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    goto LABEL_55;
  }

  v11 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v123 = *(*(v11 - 1) + 48);
  if (!v123(v9, 1, v11))
  {

    v12 = v9 + v11[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v12, v99);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v9 + v11[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = (v9 + v11[10]);
          if (v18[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v87 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v88 = type metadata accessor for JSColor(0);
        if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
        {
          v89 = sub_24F928388();
          (*(*(v89 - 8) + 8))(v87, v89);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v96 = sub_24F9289E8();
        v97 = *(v96 - 8);
        if (!(*(v97 + 48))(v12, 1, v96))
        {
          (*(v97 + 8))(v12, v96);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v9 + v10[5];
  if (v123(v19, 1, v11))
  {
    goto LABEL_32;
  }

  v20 = v19 + v11[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v90 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v91 = type metadata accessor for JSColor(0);
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v98 = sub_24F9289E8();
      v122 = *(v98 - 8);
      if (!(*(v122 + 48))(v20, 1, v98))
      {
        (*(v122 + 8))(v20, v98);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v101 = sub_24F9289E8();
      (*(*(v101 - 8) + 8))(v20, v101);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v11[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = (v19 + v11[10]);
  if (v26[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v9 + v10[6];
  if (v123(v27, 1, v11))
  {
    goto LABEL_49;
  }

  v28 = v27 + v11[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v93 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v94 = type metadata accessor for JSColor(0);
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {
        v95 = sub_24F928388();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v100 = sub_24F9289E8();
      v126 = *(v100 - 8);
      if (!(*(v126 + 48))(v28, 1, v100))
      {
        (*(v126 + 8))(v28, v100);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_115:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_115;
    case 4:
      v102 = sub_24F9289E8();
      (*(*(v102 - 8) + 8))(v28, v102);
      break;
    case 5:
      goto LABEL_115;
  }

LABEL_34:
  v30 = v27 + v11[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = (v27 + v11[10]);
  if (v34[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v9 + v10[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v35 + 16));
    }
  }

  v36 = v9 + v10[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      goto LABEL_156;
    }

    if (v66 != 1)
    {
      if (v66)
      {
        goto LABEL_55;
      }

      v67 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v67 - 8) + 48))(v36, 1, v67))
      {
        goto LABEL_55;
      }

      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 2)
      {
        if (v68 != 3)
        {
          if (v68 == 4)
          {
            v121 = sub_24F9289E8();
            (*(*(v121 - 8) + 8))(v36, v121);
            goto LABEL_55;
          }

          if (v68 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v68)
      {
        if (v68 == 1)
        {
          v119 = sub_24F9289E8();
          v120 = *(v119 - 8);
          if (!(*(v120 + 48))(v36, 1, v119))
          {
            (*(v120 + 8))(v36, v119);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v68 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_175:
      v115 = v36 + v109;
      v116 = type metadata accessor for JSColor(0);
      if (!(*(*(v116 - 8) + 48))(v115, 1, v116))
      {
        v117 = sub_24F928388();
        (*(*(v117 - 8) + 8))(v115, v117);
      }

      goto LABEL_55;
    }

    v81 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v82 = *(*(v81 - 8) + 48);
    if (v82(v36, 1, v81))
    {
LABEL_106:
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v84 = v36 + *(v83 + 48);
      if (!v82(v84, 1, v81))
      {
        v85 = swift_getEnumCaseMultiPayload();
        if (v85 <= 2)
        {
          switch(v85)
          {
            case 0:

              v103 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v104 = type metadata accessor for JSColor(0);
              if (!(*(*(v104 - 8) + 48))(v103, 1, v104))
              {
                v105 = sub_24F928388();
                (*(*(v105 - 8) + 8))(v103, v105);
              }

              goto LABEL_174;
            case 1:
              v110 = sub_24F9289E8();
              v111 = *(v110 - 8);
              if (!(*(v111 + 48))(v84, 1, v110))
              {
                (*(v111 + 8))(v84, v110);
              }

              if (!*(v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_174;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_174;
          }

LABEL_168:

          goto LABEL_174;
        }

        switch(v85)
        {
          case 3:
            goto LABEL_168;
          case 4:
            v114 = sub_24F9289E8();
            (*(*(v114 - 8) + 8))(v84, v114);
            break;
          case 5:
            goto LABEL_168;
        }
      }

LABEL_174:
      v109 = *(v83 + 80);
      goto LABEL_175;
    }

    v86 = swift_getEnumCaseMultiPayload();
    if (v86 > 2)
    {
      if (v86 != 3)
      {
        if (v86 == 4)
        {
          v118 = sub_24F9289E8();
          (*(*(v118 - 8) + 8))(v36, v118);
          goto LABEL_106;
        }

        if (v86 != 5)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      if (!v86)
      {

        v106 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v107 = type metadata accessor for JSColor(0);
        if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
        {
          v108 = sub_24F928388();
          (*(*(v108 - 8) + 8))(v106, v108);
        }

        goto LABEL_106;
      }

      if (v86 == 1)
      {
        v112 = sub_24F9289E8();
        v113 = *(v112 - 8);
        if (!(*(v113 + 48))(v36, 1, v112))
        {
          (*(v113 + 8))(v36, v112);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_106;
      }

      if (v86 != 2)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_106;
  }

LABEL_55:
  if (*(v5 + v1[23]))
  {
  }

  v38 = v5 + v1[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 <= 1)
    {
      if (v60)
      {
        if (v60 == 1)
        {
          v62 = sub_24F9289E8();
          (*(*(v62 - 8) + 8))(v38, v62);
          v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v64 = sub_24F922348();
          v65 = *(v64 - 8);
          if (!(*(v65 + 48))(v38 + v63, 1, v64))
          {
            (*(v65 + 8))(v38 + v63, v64);
          }
        }
      }

      else
      {
        v80 = sub_24F9289E8();
        (*(*(v80 - 8) + 8))(v38, v80);
      }
    }

    else if (v60 == 2)
    {
      v69 = sub_24F9289E8();
      v70 = *(v69 - 8);
      if (!(*(v70 + 48))(v38, 1, v69))
      {
        (*(v70 + 8))(v38, v69);
      }

      v71 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v72 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v72 - 1) + 48))(v71, 1, v72))
      {
        v73 = sub_24F91F4A8();
        (*(*(v73 - 8) + 8))(v71, v73);
        (*(v70 + 8))(v71 + v72[5], v69);
        v74 = v72[9];
        v75 = sub_24F928698();
        v76 = *(v75 - 8);
        v124 = v74;
        v77 = v71 + v74;
        v78 = *(v76 + 48);
        if (!v78(v77, 1, v75))
        {
          (*(v76 + 8))(v71 + v124, v75);
        }

        v125 = v76;
        v79 = v72[10];
        if (!v78(v71 + v79, 1, v75))
        {
          (*(v125 + 8))(v71 + v79, v75);
        }
      }
    }

    else if (v60 == 3 || v60 == 4)
    {
      v61 = sub_24F928388();
      (*(*(v61 - 8) + 8))(v38, v61);
    }
  }

  v40 = (v5 + v1[27]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v5 + v1[28]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v5 + v1[29]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v128 + v127 + v129) & ~v129;
  v44 = (v5 + v1[30]);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v45 = v0 + v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F925218();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v0 + v43, 1, v46))
    {
      (*(v47 + 8))(v0 + v43, v46);
    }
  }

  else
  {
  }

  v48 = v4[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F925218();
    v50 = *(v49 - 8);
    if (!(*(v50 + 48))(v45 + v48, 1, v49))
    {
      (*(v50 + 8))(v45 + v48, v49);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v45 + v4[14]), *(v45 + v4[14] + 8));
  sub_24E62A5EC(*(v45 + v4[15]), *(v45 + v4[15] + 8));
  v51 = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_24F923E98();
    (*(*(v52 - 8) + 8))(v45 + v51, v52);
  }

  else
  {
  }

  v53 = v45 + v4[17];
  v54 = sub_24F91F648();
  (*(*(v54 - 8) + 8))(v53, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);

  __swift_destroy_boxed_opaque_existential_1((v45 + v4[19]));

  v55 = v4[24];
  v56 = sub_24F929158();
  (*(*(v56 - 8) + 8))(v45 + v55, v56);

  v57 = v45 + v4[29];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v58 - 8) + 8))(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);

  return swift_deallocObject();
}