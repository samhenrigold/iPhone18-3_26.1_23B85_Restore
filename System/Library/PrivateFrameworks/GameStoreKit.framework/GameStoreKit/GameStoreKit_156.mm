unint64_t sub_24F61AC78()
{
  result = qword_27F24AAE8;
  if (!qword_27F24AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAE8);
  }

  return result;
}

unint64_t sub_24F61ACCC()
{
  result = qword_27F24AAF0;
  if (!qword_27F24AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAF0);
  }

  return result;
}

unint64_t sub_24F61AD20()
{
  result = qword_27F24AAF8;
  if (!qword_27F24AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAF8);
  }

  return result;
}

uint64_t sub_24F61AD74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F61ADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F61AE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F61AE8C()
{
  result = qword_27F24AB40;
  if (!qword_27F24AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB40);
  }

  return result;
}

unint64_t sub_24F61AEE0()
{
  result = qword_27F24AB50;
  if (!qword_27F24AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AB48, &qword_24FA13F28);
    sub_24F61AD74(&qword_27F24AB58, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf, &unk_24FA13EBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB50);
  }

  return result;
}

uint64_t sub_24F61AF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
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

uint64_t __swift_store_extra_inhabitant_indexTm_9(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
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

uint64_t sub_24F61B1AC(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F61B264()
{
  result = qword_27F24AB70;
  if (!qword_27F24AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB70);
  }

  return result;
}

unint64_t sub_24F61B2BC()
{
  result = qword_27F24AB78;
  if (!qword_27F24AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB78);
  }

  return result;
}

unint64_t sub_24F61B314()
{
  result = qword_27F24AB80;
  if (!qword_27F24AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB80);
  }

  return result;
}

unint64_t sub_24F61B36C()
{
  result = qword_27F24AB88;
  if (!qword_27F24AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB88);
  }

  return result;
}

unint64_t sub_24F61B3C4()
{
  result = qword_27F24AB90;
  if (!qword_27F24AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB90);
  }

  return result;
}

unint64_t sub_24F61B41C()
{
  result = qword_27F24AB98;
  if (!qword_27F24AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB98);
  }

  return result;
}

unint64_t sub_24F61B474()
{
  result = qword_27F24ABA0;
  if (!qword_27F24ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABA0);
  }

  return result;
}

unint64_t sub_24F61B4CC()
{
  result = qword_27F24ABA8;
  if (!qword_27F24ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABA8);
  }

  return result;
}

unint64_t sub_24F61B524()
{
  result = qword_27F24ABB0;
  if (!qword_27F24ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABB0);
  }

  return result;
}

unint64_t sub_24F61B57C()
{
  result = qword_27F24ABB8;
  if (!qword_27F24ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABB8);
  }

  return result;
}

unint64_t sub_24F61B5D4()
{
  result = qword_27F24ABC0;
  if (!qword_27F24ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABC0);
  }

  return result;
}

unint64_t sub_24F61B62C()
{
  result = qword_27F24ABC8;
  if (!qword_27F24ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABC8);
  }

  return result;
}

uint64_t JSColor.init(red:green:blue:alpha:)@<X0>(double a1@<D0>, double a2@<D1>, double a3@<D2>, double a4@<D3>, uint64_t a5@<X8>)
{
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x646E696B24;
  v18 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 6449010;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v18;
  *(inited + 80) = 6579570;
  *(inited + 88) = 0xE300000000000000;
  v19 = MEMORY[0x277D85048];
  *(inited + 96) = a1;
  *(inited + 120) = v19;
  *(inited + 128) = 0x6E65657267;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = a2;
  *(inited + 168) = v19;
  *(inited + 176) = 1702194274;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = a3;
  *(inited + 216) = v19;
  *(inited + 224) = 0x6168706C61;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 264) = v19;
  *(inited + 240) = a4;
  v20 = sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  v22[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v22[34] = v20;
  sub_24F928378();
  (*(v11 + 16))(v13, v16, v10);
  JSColor.init(base:)(v13, a5);
  return (*(v11 + 8))(v16, v10);
}

uint64_t JSColor.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSColor(0);
  v9 = v8[5];
  *(a2 + v9) = 0;
  v16 = v8[6];
  *(a2 + v16) = 0;
  *(a2 + v8[7]) = 0;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a2, a1, v10);
  sub_24E77ACC8();
  sub_24F9285A8();
  v12 = sub_24F92C378();
  (*(v5 + 8))(v7, v4);
  *(a2 + v9) = v12;
  v13 = v12;
  v14 = sub_24F926BF8();
  result = (*(v11 + 8))(a1, v10);
  *(a2 + v16) = v14;
  return result;
}

uint64_t JSColor.init(hexColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 32) = 0x646E696B24;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 1819112552;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 0x65756C6176;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  v14 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
  swift_arrayDestroy();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  v17 = v14;
  sub_24F928378();
  (*(v7 + 16))(v9, v12, v6);
  JSColor.init(base:)(v9, a3);
  return (*(v7 + 8))(v12, v6);
}

uint64_t JSColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24F926C08();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[7];
  *&v12[v14] = 0;
  v15 = v13[8];
  *&v12[v15] = 0;
  v16 = v13[9];
  *&v12[v16] = 0;
  sub_24E615E00(a1, &v42);
  v17 = v41;
  sub_24F928298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v14;
  v29 = v15;
  v30 = v16;
  v32 = v5;
  v33 = v7;
  (*(v40 + 16))(v12, v9, v7);
  v19 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F92D0E8();
  v20 = v39;
  sub_24F928598();
  sub_24E77ACC8();
  v21 = sub_24F92C378();
  v31 = 0;
  v22 = v21;
  UIColor.rgbaComponents.getter(&v42);
  LOBYTE(v19) = v43;
  *&v12[v28] = v22;
  v23 = v22;
  *&v12[v29] = sub_24F926BF8();
  v24 = v32;
  v25 = v37;
  if (v19)
  {
    (*(v37 + 8))(v20, v32);
    (*(v40 + 8))(v9, v33);
    *&v12[v30] = 0;
  }

  else
  {
    (*(v35 + 104))(v34, *MEMORY[0x277CE0EE8], v36);
    v26 = sub_24F926D48();
    (*(v25 + 8))(v20, v24);
    (*(v40 + 8))(v9, v33);
    *&v12[v30] = v26;
  }

  v27 = v41;
  sub_24E98745C(v12, v38);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24E9874C0(v12);
}

unint64_t JSColor.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F928368();
  v5 = v15;
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_24F92CDE8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() valueWithObject:v11 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t type metadata accessor for JSColor(uint64_t a1)
{
  result = qword_27F24ABD0;
  if (!qword_27F24ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F61C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F61C690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F928388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24F61C748(uint64_t a1)
{
  sub_24F928388();
  if (v1 <= 0x3F)
  {
    sub_24F61C7E4(319);
    if (v2 <= 0x3F)
    {
      sub_24F61C83C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F61C7E4(uint64_t a1)
{
  if (!qword_27F24ABE0)
  {
    sub_24E77ACC8();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F24ABE0);
    }
  }
}

void sub_24F61C83C()
{
  if (!qword_27F220EC0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F220EC0);
    }
  }
}

uint64_t LaunchGameAction.init(adamID:bundleID:miniGamesDeepLink:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for LaunchGameAction(0) + 28);
  v11 = sub_24F928AD8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t type metadata accessor for LaunchGameAction(uint64_t a1)
{
  result = qword_27F24AC00;
  if (!qword_27F24AC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LaunchGameAction.adamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LaunchGameAction.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LaunchGameAction.miniGamesDeepLink.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LaunchGameAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LaunchGameAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_24F61CA70()
{
  v1 = 0x44496D616461;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_24F61CAF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F61D5A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F61CB20(uint64_t a1)
{
  v2 = sub_24F61CDC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61CB5C(uint64_t a1)
{
  v2 = sub_24F61CDC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchGameAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ABE8, &qword_24FA144D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61CDC0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    type metadata accessor for LaunchGameAction(0);
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F61CDC0()
{
  result = qword_27F24ABF0;
  if (!qword_27F24ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABF0);
  }

  return result;
}

uint64_t LaunchGameAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_24F928AD8();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ABF8, &qword_24FA144D8);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for LaunchGameAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61CDC0();
  v27 = v8;
  v12 = v28;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v5;
  v15 = v25;
  v16 = v26;
  v28 = v3;
  v32 = 0;
  *v11 = sub_24F92CBC8();
  v11[1] = v17;
  v31 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v30 = 2;
  v22[1] = 0;
  v11[4] = sub_24F92CBC8();
  v11[5] = v19;
  v29 = 3;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  v22[0] = v14;
  v20 = v28;
  sub_24F92CC68();
  (*(v15 + 8))(v27, v16);
  (*(v23 + 32))(v11 + *(v9 + 28), v22[0], v20);
  sub_24F56F41C(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F61D1F0(v11);
}

uint64_t sub_24F61D1F0(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F61D290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F61D350(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F61D3F4(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F61D49C()
{
  result = qword_27F24AC10;
  if (!qword_27F24AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC10);
  }

  return result;
}

unint64_t sub_24F61D4F4()
{
  result = qword_27F24AC18;
  if (!qword_27F24AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC18);
  }

  return result;
}

unint64_t sub_24F61D54C()
{
  result = qword_27F24AC20;
  if (!qword_27F24AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC20);
  }

  return result;
}

uint64_t sub_24F61D5A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47950 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F61D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v64 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v45 - v7;
  v8 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC28, &unk_24FA14738);
  v48 = *(v62 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v62);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v61 = &v45 - v18;
  v45 = *(a2 + 24);
  v58 = *(v11 + 16);
  v59 = v11 + 16;
  v47 = v14;
  v58(v14, a1, v10, v17);
  v57 = type metadata accessor for LeaderboardEntriesShelfIntent;
  sub_24F621470(v64, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntriesShelfIntent);
  v19 = *(v11 + 80);
  v20 = (v19 + 24) & ~v19;
  v55 = *(v56 + 80);
  v56 = v12 + v55;
  v21 = (v12 + v55 + v20) & ~v55;
  v51 = v9 + 7;
  v52 = v19 | v55;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = *(v11 + 32);
  v53 = v11 + 32;
  v54 = v23;
  v24 = v14;
  v25 = v10;
  v23((v22 + v20), v24, v10);
  v26 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F620B04(v26, v22 + v21);
  *(v22 + ((v9 + 7 + v21) & 0xFFFFFFFFFFFFFFF8)) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC30, &qword_24FA14748);
  sub_24E602068(&qword_27F24AC38, &qword_27F24AC30, &qword_24FA14748, MEMORY[0x277D21A98]);
  v27 = a2;

  sub_24F9288B8();
  v28 = v61;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v65);
  v29 = v48;
  v30 = v46;
  v31 = v62;
  (*(v48 + 16))(v46, v28, v62);
  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v27;
  *(v33 + 16) = v27;
  (*(v29 + 32))(v33 + v32, v30, v31);

  v35 = v25;
  v36 = v50;
  sub_24F92B898();
  v37 = sub_24F92B858();
  v38 = v60;
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  v39 = v47;
  (v58)(v47, v36, v35);
  sub_24F621470(v64, v26, v57);
  v40 = (v19 + 40) & ~v19;
  v41 = (v56 + v40) & ~v55;
  v42 = (v51 + v41) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v34;
  v54(&v43[v40], v39, v35);
  sub_24F620B04(v26, &v43[v41]);
  *&v43[v42] = v63;

  sub_24F1D3DA4(0, 0, v38, &unk_24FA14758, v43);

  return (*(v29 + 8))(v61, v62);
}

uint64_t sub_24F61DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  type metadata accessor for Game(0);
  v4[30] = swift_task_alloc();
  type metadata accessor for Player(0);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for LeaderboardEntriesShelfConstructionIntent(0);
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for LeaderboardEntriesResponse(0);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F61DF78, 0, 0);
}

uint64_t sub_24F61DF78()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = sub_24F92B858();
  *(v0 + 312) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  *(v0 + 336) = sub_24F92B7F8();

  v9 = sub_24F92B7E8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v4;
  sub_24EA998B8(0, 0, v1, &unk_24FA14778, v10);

  *(v0 + 344) = *v5;
  v12 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  *(v0 + 352) = v12;
  v13 = v12[5];
  *(v0 + 496) = v13;
  sub_24F621470(v5 + v13, v2 + v3[5], type metadata accessor for Game);
  v14 = v12[6];
  *(v0 + 500) = v14;
  sub_24F621470(v5 + v14, v2 + v3[6], type metadata accessor for Leaderboard);
  v15 = v12[8];
  *(v0 + 504) = v15;
  sub_24F621470(v5 + v15, v2 + v3[7], type metadata accessor for Player);
  *(v0 + 360) = sub_24F92B7E8();
  v17 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E184, v17, v16);
}

uint64_t sub_24F61E184()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 368) = OBJC_IVAR____TtC12GameStoreKit30LeaderboardEntryOptionProvider___observationRegistrar;
  *(v0 + 136) = v1;
  *(v0 + 376) = sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider, &unk_24FA25F28);
  sub_24F91FD88();

  *(v0 + 508) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F61E278, 0, 0);
}

uint64_t sub_24F61E278(uint64_t a1)
{
  *(v1 + 384) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E304, v3, v2);
}

uint64_t sub_24F61E304()
{
  v1 = *(v0 + 508);
  v2 = *(v0 + 344);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 144) = v5;
  sub_24F91FD88();

  v6 = *(v5 + 17);
  *v3 = v2;
  *(v3 + v4[8]) = v1;
  *(v3 + v4[9]) = v6;
  v7 = v3 + v4[10];
  *v7 = 0;
  v7[8] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 392) = v8;
  v9 = swift_task_alloc();
  *(v0 + 400) = v9;
  *v9 = v0;
  v9[1] = sub_24F61E454;

  return MEMORY[0x28217F228](v0 + 16, v8, v8);
}

uint64_t sub_24F61E454()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_24F61E778;
  }

  else
  {
    v2 = sub_24F61E568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61E568()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[52] = v3;
  v4 = sub_24F621428(&qword_27F21C800, type metadata accessor for LeaderboardEntriesDataIntent, &unk_24FA23850);
  *v3 = v0;
  v3[1] = sub_24F61E664;
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[22];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F61E664()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24F61EEF0;
  }

  else
  {
    v2 = sub_24F61E900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61E778()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v2(v3, 1, 1, v1);

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_24EA998B8(0, 0, v3, &unk_24FA147E0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F61E900()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 168) + *(v0 + 500);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 432) = *v1;
  v4 = *(v3 + *(type metadata accessor for Leaderboard(0) + 48));
  if (*(v1 + *(v2 + 24)) > v4)
  {
    v4 = *(v1 + *(v2 + 24));
  }

  *(v0 + 440) = v4;

  *(v0 + 448) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E9E8, v6, v5);
}

uint64_t sub_24F61E9E8()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 152) = v1;
  sub_24F91FD88();

  *(v0 + 509) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F61EA98, 0, 0);
}

uint64_t sub_24F61EA98(uint64_t a1)
{
  *(v1 + 456) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61EB24, v3, v2);
}

uint64_t sub_24F61EB24()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 160) = v1;
  sub_24F91FD88();

  *(v0 + 510) = *(v1 + 17);

  return MEMORY[0x2822009F8](sub_24F61EBD4, 0, 0);
}

uint64_t sub_24F61EBD4()
{
  v18 = *(v0 + 509);
  v19 = *(v0 + 510);
  v16 = *(v0 + 432);
  v17 = *(v0 + 440);
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 168);
  sub_24F621470(v7 + *(v0 + 504), v6, type metadata accessor for Player);
  sub_24F621470(v7 + v1, v5, type metadata accessor for Game);
  v8 = (v7 + *(v2 + 28));
  v10 = *v8;
  v9 = v8[1];
  *v3 = v16;
  *(v3 + 8) = v17;
  *(v3 + 16) = v18;
  *(v3 + 17) = v19;
  sub_24F621470(v6, v3 + v4[8], type metadata accessor for Player);
  sub_24F621470(v5, v3 + v4[9], type metadata accessor for Game);
  v11 = (v3 + v4[10]);
  *v11 = v10;
  v11[1] = v9;
  *(v0 + 80) = &_s14descr2861AC041O5GamesON;
  *(v0 + 88) = sub_24EDA569C();
  *(v0 + 56) = 0;

  v12 = sub_24F91FE68();
  sub_24F6214D8(v5, type metadata accessor for Game);
  sub_24F6214D8(v6, type metadata accessor for Player);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v3 + v4[11]) = v12 & 1;
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *v13 = v0;
  v13[1] = sub_24F61EDDC;
  v14 = *(v0 + 392);

  return MEMORY[0x28217F228](v0 + 96, v14, v14);
}

uint64_t sub_24F61EDDC()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_24F61F290;
  }

  else
  {
    v2 = sub_24F61F080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61EEF0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v2(v3, 1, 1, v1);

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_24EA998B8(0, 0, v3, &unk_24FA147E0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F61F080()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[60] = v3;
  v4 = sub_24F621428(&qword_27F21D588, type metadata accessor for LeaderboardEntriesShelfConstructionIntent, &unk_24F9ECCA4);
  *v3 = v0;
  v3[1] = sub_24F61F17C;
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v8 = v0[22];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F61F17C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_24F61F6B0;
  }

  else
  {
    v2 = sub_24F61F458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61F290()
{
  v1 = v0[35];
  sub_24F6214D8(v0[33], type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v1, type metadata accessor for LeaderboardEntriesResponse);
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v3(v4, 1, 1, v2);

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24EA998B8(0, 0, v4, &unk_24FA147E8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F61F458()
{
  v16 = v0[39];
  v17 = v0[40];
  v1 = v0[38];
  v14 = v0[35];
  v15 = v0[37];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F621470(v4, v3, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v6 + 8))(v5, v7);
  sub_24F6214D8(v4, type metadata accessor for GSKShelf);
  sub_24F6214D8(v2, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v14, type metadata accessor for LeaderboardEntriesResponse);
  sub_24F6214D8(v15, type metadata accessor for LeaderboardEntriesDataIntent);
  v17(v1, 1, 1, v16);

  v9 = sub_24F92B7E8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_24EA998B8(0, 0, v1, &unk_24FA147F0, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F61F6B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[35];
  sub_24F6214D8(v0[33], type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v1, type metadata accessor for LeaderboardEntriesResponse);
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v3(v4, 1, 1, v2);

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24EA998B8(0, 0, v4, &unk_24FA147E8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F61F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24F92B7F8();
  *(v4 + 32) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61F918, v6, v5);
}

uint64_t sub_24F61F918()
{
  v1 = v0[3];

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider, &unk_24FA25F28);
    sub_24F91FD78();
  }

  v4 = v0[1];

  return v4();
}

double sub_24F61FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v8 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, v10);
  sub_24F621470(a4, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntriesShelfIntent);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + *(v23 + 80) + v19) & ~*(v23 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  (*(v11 + 32))(&v21[v19], v14, v10);
  sub_24F620B04(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v21[v20]);
  *&v21[(v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;

  sub_24F1D3DA4(0, 0, v17, &unk_24FA14828, v21);

  return result;
}

uint64_t sub_24F61FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E614970;

  return sub_24F61DD50(a6, a7, a4, a5);
}

uint64_t sub_24F61FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E6541E4;

  return sub_24F61DD50(a6, a7, a4, a5);
}

uint64_t sub_24F61FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[11] = v7;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_24F61FFD8, 0, 0);
}

uint64_t sub_24F61FFD8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v14 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf(0);
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v3, v1, v6);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();
  (*(v4 + 8))(v1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F6201D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v7 = *(*(v6 - 1) + 80);

  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + ((v4 + v5 + v7) & ~v7);
  v9 = v8 + v6[5];

  v10 = type metadata accessor for Game(0);
  v11 = v10[18];
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v45 = *(v13 + 8);
  v45(v9 + v11, v12);
  v14 = v10[19];
  v42 = *(v13 + 48);
  if (!v42(v9 + v14, 1, v12))
  {
    v45(v9 + v14, v12);
  }

  v15 = v10[21];
  v16 = sub_24F920818();
  v41 = *(v16 - 8);
  v44 = v16;
  v43 = *(v41 + 48);
  if (!v43(v9 + v15, 1))
  {
    (*(v41 + 8))(v9 + v15, v44);
  }

  v17 = v8 + v6[6];

  v18 = type metadata accessor for Leaderboard(0);
  v19 = *(v18 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if (!(*(*(v20 - 8) + 48))(v17 + v19, 1, v20))
  {
    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 8))(v17 + v19, v21);
  }

  v22 = *(v18 + 72);
  if (!(v43)(v17 + v22, 1, v44))
  {
    (*(v41 + 8))(v17 + v22, v44);
  }

  v23 = v8 + v6[8];

  v24 = type metadata accessor for Player(0);
  v45(v23 + v24[6], v12);

  if (*(v23 + v24[9] + 8) != 1)
  {
  }

  v25 = v23 + v24[13];
  v26 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = type metadata accessor for CallProviderConversationHandle(0);
    v28 = *(*(v27 - 8) + 48);
    if (!v28(v25, 1, v27))
    {

      v29 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v42(v25 + v29, 1, v12))
      {
        v45(v25 + v29, v12);
      }
    }

    v30 = v25 + *(v26 + 20);
    if (!v28(v30, 1, v27))
    {

      v31 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v42(v30 + v31, 1, v12))
      {
        v45(v30 + v31, v12);
      }
    }
  }

  if (*(v23 + v24[15] + 8))
  {
  }

  v32 = v23 + v24[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v32, 1, PlayedTogetherInfo))
  {

    v45(v32 + v10[18], v12);
    v34 = v10[19];
    if (!v42(v32 + v34, 1, v12))
    {
      v45(v32 + v34, v12);
    }

    v35 = v10[21];
    if (!(v43)(v32 + v35, 1, v44))
    {
      (*(v41 + 8))(v32 + v35, v44);
    }
  }

  v36 = v23 + v24[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v36, 1, ChallengeInfo))
  {

    v45(v36 + v10[18], v12);
    v38 = v10[19];
    if (!v42(v36 + v38, 1, v12))
    {
      v45(v36 + v38, v12);
    }

    v39 = v10[21];
    if (!(v43)(v36 + v39, 1, v44))
    {
      (*(v41 + 8))(v36 + v39, v44);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F620B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F620B68(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LeaderboardEntriesShelfIntent(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);

  return sub_24F61FA58(a1, v9, v1 + v4, v1 + v7, v8);
}

uint64_t sub_24F620C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC28, &unk_24FA14738);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F620DBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LeaderboardEntriesShelfIntent(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F61FDDC(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_24F620F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F61F880(a1, v4, v5, v6);
}

void sub_24F621020(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider, &unk_24FA25F28);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
}

uint64_t sub_24F6210F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24F92B7F8();
  *(v4 + 32) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F621188, v6, v5);
}

uint64_t sub_24F621188()
{
  v1 = v0[3];

  if (*(v1 + 32))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider, &unk_24FA25F28);
    sub_24F91FD78();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6212C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F6210F0(a1, v4, v5, v6);
}

uint64_t sub_24F621374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F6210F0(a1, v4, v5, v6);
}

uint64_t sub_24F621428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F621470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6214D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent(0);
  v7 = *(*(v6 - 1) + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + ((v4 + v5 + v7) & ~v7);
  v9 = v8 + v6[5];

  v10 = type metadata accessor for Game(0);
  v11 = v10[18];
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v45 = *(v13 + 8);
  v45(v9 + v11, v12);
  v14 = v10[19];
  v42 = *(v13 + 48);
  if (!v42(v9 + v14, 1, v12))
  {
    v45(v9 + v14, v12);
  }

  v15 = v10[21];
  v16 = sub_24F920818();
  v41 = *(v16 - 8);
  v44 = v16;
  v43 = *(v41 + 48);
  if (!v43(v9 + v15, 1))
  {
    (*(v41 + 8))(v9 + v15, v44);
  }

  v17 = v8 + v6[6];

  v18 = type metadata accessor for Leaderboard(0);
  v19 = *(v18 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if (!(*(*(v20 - 8) + 48))(v17 + v19, 1, v20))
  {
    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 8))(v17 + v19, v21);
  }

  v22 = *(v18 + 72);
  if (!(v43)(v17 + v22, 1, v44))
  {
    (*(v41 + 8))(v17 + v22, v44);
  }

  v23 = v8 + v6[8];

  v24 = type metadata accessor for Player(0);
  v45(v23 + v24[6], v12);

  if (*(v23 + v24[9] + 8) != 1)
  {
  }

  v25 = v23 + v24[13];
  v26 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = type metadata accessor for CallProviderConversationHandle(0);
    v28 = *(*(v27 - 8) + 48);
    if (!v28(v25, 1, v27))
    {

      v29 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v42(v25 + v29, 1, v12))
      {
        v45(v25 + v29, v12);
      }
    }

    v30 = v25 + *(v26 + 20);
    if (!v28(v30, 1, v27))
    {

      v31 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v42(v30 + v31, 1, v12))
      {
        v45(v30 + v31, v12);
      }
    }
  }

  if (*(v23 + v24[15] + 8))
  {
  }

  v32 = v23 + v24[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v32, 1, PlayedTogetherInfo))
  {

    v45(v32 + v10[18], v12);
    v34 = v10[19];
    if (!v42(v32 + v34, 1, v12))
    {
      v45(v32 + v34, v12);
    }

    v35 = v10[21];
    if (!(v43)(v32 + v35, 1, v44))
    {
      (*(v41 + 8))(v32 + v35, v44);
    }
  }

  v36 = v23 + v24[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v36, 1, ChallengeInfo))
  {

    v45(v36 + v10[18], v12);
    v38 = v10[19];
    if (!v42(v36 + v38, 1, v12))
    {
      v45(v36 + v38, v12);
    }

    v39 = v10[21];
    if (!(v43)(v36 + v39, 1, v44))
    {
      (*(v41 + 8))(v36 + v39, v44);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F621EC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LeaderboardEntriesShelfIntent(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E614970;

  return sub_24F61FD28(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_24F6220A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for Game(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_24F6221EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Game(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessPointDataIntent(uint64_t a1)
{
  result = qword_27F24AC40;
  if (!qword_27F24AC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F622364(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Game(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F622400(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC60, &qword_24FA148F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F622C20();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v10[13] = 1;
    sub_24F92CD18();
    type metadata accessor for AccessPointDataIntent(0);
    v10[12] = 2;
    type metadata accessor for Player(0);
    sub_24E637000(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    v10[11] = 3;
    type metadata accessor for Game(0);
    sub_24E637000(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6226AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC50, &qword_24FA148E8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AccessPointDataIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F622C20();
  v14 = v25;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v7;
  v15 = v22;
  v30 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  *v12 = v31;
  v29 = 1;
  v16 = v15;
  v12[1] = sub_24F92CC38() & 1;
  type metadata accessor for Player(0);
  v28 = 2;
  sub_24E637000(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v17 = v25;
  sub_24F92CC18();
  sub_24E6365D4(v17, &v12[*(v10 + 24)]);
  v27 = 3;
  sub_24E637000(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v18 = v4;
  v19 = v24;
  sub_24F92CC68();
  (*(v16 + 8))(v9, v19);
  sub_24E636644(v18, &v12[*(v10 + 28)]);
  sub_24F622C74(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24F622CD8(v12);
}

uint64_t sub_24F622AB4()
{
  v1 = 0x65736143657375;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 1701667175;
  }

  if (*v0)
  {
    v1 = 0x6867694864616F6CLL;
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

uint64_t sub_24F622B30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F622E4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F622B58(uint64_t a1)
{
  v2 = sub_24F622C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F622B94(uint64_t a1)
{
  v2 = sub_24F622C20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F622C20()
{
  result = qword_27F24AC58;
  if (!qword_27F24AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC58);
  }

  return result;
}

uint64_t sub_24F622C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointDataIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F622CD8(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointDataIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F622D48()
{
  result = qword_27F24AC68;
  if (!qword_27F24AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC68);
  }

  return result;
}

unint64_t sub_24F622DA0()
{
  result = qword_27F24AC70;
  if (!qword_27F24AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC70);
  }

  return result;
}

unint64_t sub_24F622DF8()
{
  result = qword_27F24AC78;
  if (!qword_27F24AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC78);
  }

  return result;
}

uint64_t sub_24F622E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867694864616F6CLL && a2 == 0xEE0073746867696CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t ChallengesAllGamesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F62300C(uint64_t a1)
{
  v2 = sub_24F623218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F623048(uint64_t a1)
{
  v2 = sub_24F623218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllGamesShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC80, &qword_24FA14A30);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F623218();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_24F623218()
{
  result = qword_27F24AC88;
  if (!qword_27F24AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC88);
  }

  return result;
}

uint64_t ChallengesAllGamesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC90, &qword_24FA14A38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F623218();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6234D4()
{
  result = qword_27F24AC98;
  if (!qword_27F24AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC98);
  }

  return result;
}

unint64_t sub_24F62352C()
{
  result = qword_27F24ACA0;
  if (!qword_27F24ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACA0);
  }

  return result;
}

unint64_t sub_24F623584()
{
  result = qword_27F24ACA8;
  if (!qword_27F24ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACA8);
  }

  return result;
}

uint64_t PageContainer.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageContainer.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PageContainer.pages.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24F6236B4()
{
  if (*v0)
  {
    return 0x7365676170;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24F6236E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676170 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F6237B0(uint64_t a1)
{
  v2 = sub_24F6239EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6237EC(uint64_t a1)
{
  v2 = sub_24F6239EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACB0, &qword_24FA14C30);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6239EC();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACC0, &qword_24FA14C38);
    sub_24F623C80(&qword_27F24ACC8, MEMORY[0x277D21F28]);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_24F6239EC()
{
  result = qword_27F24ACB8;
  if (!qword_27F24ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACB8);
  }

  return result;
}

uint64_t PageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACD0, &qword_24FA14C40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6239EC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACC0, &qword_24FA14C38);
  v16 = 1;
  sub_24F623C80(&qword_27F24ACD8, MEMORY[0x277D21F30]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F623C80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24ACC0, &qword_24FA14C38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_24F623D00@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_24F623D0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_24F623D74()
{
  result = qword_27F24ACE0;
  if (!qword_27F24ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACE0);
  }

  return result;
}

unint64_t sub_24F623DCC()
{
  result = qword_27F24ACE8;
  if (!qword_27F24ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACE8);
  }

  return result;
}

unint64_t sub_24F623E24()
{
  result = qword_27F24ACF0;
  if (!qword_27F24ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACF0);
  }

  return result;
}

uint64_t sub_24F623E9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F623FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ClampingComponentGrid(uint64_t a1)
{
  result = qword_27F24ACF8;
  if (!qword_27F24ACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F624174(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90, &qword_24F9538B0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F6242A0(void *a1, uint64_t a2, char a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADC8, &qword_24FA15368);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F626C78();
  sub_24F92D128();
  v16 = a4;
  v18 = 0;
  sub_24E620F7C();
  sub_24F92CD48();
  if (!v5)
  {
    v16 = *&a2;
    v17 = a3 & 1;
    v18 = 1;
    sub_24F92CCF8();
    v16 = a5;
    v18 = 2;
    sub_24F92CD48();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24F62449C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD68, &qword_24FA150B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6264F4();
  sub_24F92D128();
  *&v11[0] = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  sub_24F626548(&qword_27F24AD70, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_24F92CD38();
    v10 = *(v3 + 32);
    v11[0] = *(v3 + 16);
    v11[1] = v10;
    v12 = 2;
    sub_24ECF1A40();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6246CC()
{
  v1 = 0x6C61656469;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_24F624714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F626838(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F62473C(uint64_t a1)
{
  v2 = sub_24F626C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F624778(uint64_t a1)
{
  v2 = sub_24F626C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6247B4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24F626038(a2);
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_24F624820()
{
  v1 = 1937207154;
  if (*v0 != 1)
  {
    v1 = 0x746469576D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F62487C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F62694C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6248A4(uint64_t a1)
{
  v2 = sub_24F6264F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6248E0(uint64_t a1)
{
  v2 = sub_24F6264F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F62491C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24F626264(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_24F624978(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD40, &qword_24FA150A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F625E98();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for ClampingComponentGrid(0);
    LOBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v18) = 3;
    sub_24F929608();
    sub_24F625F9C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v18 = *(v3 + *(v9 + 32));
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0, MEMORY[0x277D21F20], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = *(v10 + 32);
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 5;
    sub_24F625FE4();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F624D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD28, &qword_24FA150A0);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ClampingComponentGrid(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v45 = v12 + 40;
  sub_24E61DA68(&v46, (v12 + 40), qword_27F21B590, &unk_24F93BE30);
  v13 = *(v10 + 24);
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v43 = v13;
  v15(&v12[v13], 1, 1, v14);
  v41 = v10;
  v16 = *(v10 + 28);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F625E98();
  v38 = v9;
  v20 = v40;
  sub_24F92D108();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = v42;
    v23 = v43;
    sub_24E601704(v45, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v12[v23], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v12[v22], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v40 = v5;
    v21 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v47;
    *v12 = v46;
    *(v12 + 1) = v24;
    *(v12 + 4) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v50 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v25 = v41;
    v26 = v21;
    sub_24E61DA68(&v46, v45, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v46) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v12[v43], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v46) = 3;
    sub_24F625F9C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v27 = v36;
    sub_24F92CC18();
    sub_24E61DA68(v27, &v12[v42], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0, &unk_24F9608F0);
    v50 = 4;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8, MEMORY[0x277D21F18], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    *&v12[*(v25 + 32)] = v46;
    v50 = 5;
    sub_24F625EEC();
    sub_24F92CC68();
    (*(v26 + 8))(v38, v39);
    v28 = *(&v46 + 1);
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v32 = &v12[*(v25 + 36)];
    *v32 = v46;
    *(v32 + 1) = v28;
    *(v32 + 1) = v29;
    v32[32] = v30;
    *(v32 + 5) = v31;
    sub_24F625AFC(v12, v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F625F40(v12);
  }
}

unint64_t sub_24F62548C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x736D657469;
  if (v1 != 4)
  {
    v4 = 0x6369666963657073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
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

uint64_t sub_24F62554C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F626A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F625574(uint64_t a1)
{
  v2 = sub_24F625E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6255B0(uint64_t a1)
{
  v2 = sub_24F625E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6255EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

double sub_24F62571C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ClampingComponentGrid(0);
  v7 = a2 + *(v6 + 36);
  v8 = *(v7 + 8);
  v9 = *(a2 + *(v6 + 32));
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;

  return result;
}

uint64_t sub_24F62579C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ClampingComponentGrid(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  *a2 = sub_24F9257B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD18, &unk_24FA15070);
  v11[1] = *(a1 + *(v5 + 44));
  swift_getKeyPath();
  sub_24F625AFC(a1, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24F625D60(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  sub_24E602068(&qword_27F218058, &qword_27F218050, qword_24F99DB70, MEMORY[0x277D83980]);
  sub_24F625E44();
  return sub_24F927228();
}

uint64_t sub_24F62596C(uint64_t a1)
{
  sub_24F47D88C();

  return sub_24F9218E8();
}

unint64_t sub_24F6259FC()
{
  result = qword_27F24AD10;
  if (!qword_27F24AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD10);
  }

  return result;
}

uint64_t sub_24F625AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClampingComponentGrid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F625B60()
{
  v1 = type metadata accessor for ClampingComponentGrid(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  v3 = *(v1 + 24);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(&v2[v3], 1, v4))
  {
    (*(v5 + 8))(&v2[v3], v4);
  }

  v6 = *(v1 + 28);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F625D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClampingComponentGrid(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F625DC4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClampingComponentGrid(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F62571C(a1, v6, a2);
}

unint64_t sub_24F625E44()
{
  result = qword_27F24AD20;
  if (!qword_27F24AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD20);
  }

  return result;
}

unint64_t sub_24F625E98()
{
  result = qword_27F24AD30;
  if (!qword_27F24AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD30);
  }

  return result;
}

unint64_t sub_24F625EEC()
{
  result = qword_27F24AD38;
  if (!qword_27F24AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD38);
  }

  return result;
}

uint64_t sub_24F625F40(uint64_t a1)
{
  v2 = type metadata accessor for ClampingComponentGrid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F625F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F625FE4()
{
  result = qword_27F24AD48;
  if (!qword_27F24AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD48);
  }

  return result;
}

uint64_t sub_24F626038(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADB8, &qword_24FA15360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F626C78();
  sub_24F92D108();
  v9 = 0;
  sub_24E620E90();
  sub_24F92CC68();
  v9 = 1;
  sub_24F92CC18();
  v7 = v8;
  v9 = 2;
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_24F626264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD50, &qword_24FA150B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6264F4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
  v19 = 0;
  sub_24F626548(&qword_27F24AD60, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_24F92CC68();
  v9 = v16[0];
  LOBYTE(v16[0]) = 1;
  v10 = sub_24F92CC58();
  v19 = 2;
  sub_24ECF19EC();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v11 = v16[0];
  v12 = v16[1];
  v13 = v17;
  v14 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_24F6264F4()
{
  result = qword_27F24AD58;
  if (!qword_27F24AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD58);
  }

  return result;
}

uint64_t sub_24F626548(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050, qword_24F99DB70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F62662C()
{
  result = qword_27F24AD88;
  if (!qword_27F24AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD88);
  }

  return result;
}

unint64_t sub_24F626684()
{
  result = qword_27F24AD90;
  if (!qword_27F24AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD90);
  }

  return result;
}

unint64_t sub_24F6266DC()
{
  result = qword_27F24AD98;
  if (!qword_27F24AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD98);
  }

  return result;
}

unint64_t sub_24F626734()
{
  result = qword_27F24ADA0;
  if (!qword_27F24ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADA0);
  }

  return result;
}

unint64_t sub_24F62678C()
{
  result = qword_27F24ADA8;
  if (!qword_27F24ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADA8);
  }

  return result;
}

unint64_t sub_24F6267E4()
{
  result = qword_27F24ADB0;
  if (!qword_27F24ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADB0);
  }

  return result;
}

uint64_t sub_24F626838(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61656469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
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

uint64_t sub_24F62694C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA77610 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F626A78(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xED00006E6F697461)
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

unint64_t sub_24F626C78()
{
  result = qword_27F24ADC0;
  if (!qword_27F24ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADC0);
  }

  return result;
}

unint64_t sub_24F626CE0()
{
  result = qword_27F24ADD0;
  if (!qword_27F24ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADD0);
  }

  return result;
}

unint64_t sub_24F626D38()
{
  result = qword_27F24ADD8;
  if (!qword_27F24ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADD8);
  }

  return result;
}

unint64_t sub_24F626D90()
{
  result = qword_27F24ADE0;
  if (!qword_27F24ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADE0);
  }

  return result;
}

uint64_t sub_24F626DF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = swift_task_alloc();
  *(v3 + 24) = v9;
  *v9 = v3;
  v9[1] = sub_24E67D244;

  return sub_24F626ECC(v5, v6, v7, v8, a3);
}

uint64_t sub_24F626ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24F626EF4, 0, 0);
}

uint64_t sub_24F626EF4()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_24F93DE60;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_24F627000;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_24E64BA5C(v3, v7, v5, v6);
}

uint64_t sub_24F627000(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_24F6271D8;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_24F62713C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F62713C()
{
  sub_24ECD0AF8(*(v0 + 80));
  v2 = v1;
  v4 = v3;

  if (v2)
  {
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_24F6271D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void static AccessPointHighlight.cornerRadii(highlight:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090, &unk_24F9608D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_24E60169C(a1, v4, &qword_27F21C090, &unk_24F9608D0);
  v8 = type metadata accessor for AccessPointHighlight(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_24E601704(v4, &qword_27F21C090, &unk_24F9608D0);
    v9 = type metadata accessor for AccessPointIconType(0);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  else
  {
    sub_24E60169C(&v4[*(v8 + 32)], v7, &qword_27F21C0A0, &qword_24F9608E0);
    sub_24F634DF4(v4, type metadata accessor for AccessPointHighlight);
    v10 = type metadata accessor for AccessPointIconType(0);
    (*(*(v10 - 8) + 48))(v7, 1, v10);
  }

  sub_24E601704(v7, &qword_27F21C0A0, &qword_24F9608E0);
  sub_24F924EE8();
}

double AccessPointHighlight.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t AccessPointHighlight.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AccessPointHighlight.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AccessPointHighlight.subtitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccessPointHighlight.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t AccessPointHighlight.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AccessPointHighlight(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AccessPointHighlight.shouldAnimate.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AccessPointHighlight.shouldSizeToFit.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AccessPointHighlight.prefersCustomShape.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

double AccessPointHighlight.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(v1 + *(v3 + 52), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24F627D3C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    v7 = 0x7274654D65676170;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E41646C756F6873;
    if (a1 == 7)
    {
      v9 = 0x6953646C756F6873;
    }

    else
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
    v1 = 25705;
    v2 = 0x49676E696461656CLL;
    v3 = 0x676E696C69617274;
    if (a1 != 4)
    {
      v3 = 0x6E6F697461727564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656C746974;
    if (a1 != 1)
    {
      v4 = 0x656C746974627573;
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

uint64_t sub_24F627ED8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F633CA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F627F00(uint64_t a1)
{
  v2 = sub_24F628428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F627F3C(uint64_t a1)
{
  v2 = sub_24F628428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointHighlight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADE8, &unk_24FA15528);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F628428();
  sub_24F92D128();
  v8[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[30] = 1;
    sub_24F92CCA8();
    v8[29] = 2;
    sub_24F92CCA8();
    type metadata accessor for AccessPointHighlight(0);
    v8[28] = 3;
    type metadata accessor for AccessPointIconType(0);
    sub_24F62847C(&qword_27F24ADF8, type metadata accessor for AccessPointIconType, &protocol conformance descriptor for AccessPointIconType);
    sub_24F92CCF8();
    v8[27] = 4;
    sub_24F92CCF8();
    v8[26] = 5;
    sub_24F92CCC8();
    v8[25] = 6;
    sub_24F92CCB8();
    v8[24] = 7;
    sub_24F92CCB8();
    v8[15] = 8;
    sub_24F92CCB8();
    v8[14] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[13] = 10;
    sub_24F928818();
    sub_24F62847C(&qword_27F21F898, MEMORY[0x277D21BF8], MEMORY[0x277D21C00]);
    sub_24F92CCF8();
    v8[12] = 11;
    sub_24F929608();
    sub_24F62847C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F628428()
{
  result = qword_27F24ADF0;
  if (!qword_27F24ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADF0);
  }

  return result;
}

uint64_t sub_24F62847C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AccessPointHighlight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = v51 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE00, &qword_24FA15538);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = v51 - v11;
  v13 = type metadata accessor for AccessPointHighlight(0);
  MEMORY[0x28223BE20](v13);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for AccessPointIconType(0);
  v19 = *(*(v18 - 8) + 56);
  v67 = v17;
  v19(&v15[v17], 1, 1, v18);
  v66 = v13[8];
  v19(&v15[v66], 1, 1, v18);
  v20 = &v15[v13[13]];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v64 = v20;
  sub_24E61DA68(&v68, v20, qword_27F21B590, &unk_24F93BE30);
  v21 = v13[14];
  v22 = sub_24F928818();
  v23 = *(*(v22 - 8) + 56);
  v63 = v21;
  v23(&v15[v21], 1, 1, v22);
  v24 = v13[15];
  v25 = sub_24F929608();
  v26 = *(*(v25 - 8) + 56);
  v61 = v24;
  v65 = v15;
  v26(&v15[v24], 1, 1, v25);
  v27 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24F628428();
  v58 = v12;
  v28 = v60;
  sub_24F92D108();
  if (v28)
  {
    v30 = v66;
    v29 = v67;
    __swift_destroy_boxed_opaque_existential_1(v62);

    v32 = v65;

    sub_24E601704(v32 + v29, &qword_27F21C0A0, &qword_24F9608E0);
    sub_24E601704(v32 + v30, &qword_27F21C0A0, &qword_24F9608E0);
    sub_24E601704(v64, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v32 + v63, &qword_27F2157F0, &qword_24F9846A0);
    return sub_24E601704(v32 + v61, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v60 = v18;
    v51[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v71 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v31 = v66;
    v34 = v69;
    v35 = v65;
    *v65 = v68;
    v35[1] = v34;
    *(v35 + 4) = v70;
    LOBYTE(v68) = 1;
    v36 = sub_24F92CBC8();
    v37 = v67;
    v39 = v38;
    *(v35 + 5) = v36;
    *(v35 + 6) = v38;
    LOBYTE(v68) = 2;
    v40 = sub_24F92CBC8();
    v51[2] = v39;
    *(v35 + 7) = v40;
    *(v35 + 8) = v41;
    v51[1] = v41;
    LOBYTE(v68) = 3;
    v42 = sub_24F62847C(&qword_27F24AE08, type metadata accessor for AccessPointIconType, &protocol conformance descriptor for AccessPointIconType);
    v43 = v56;
    v51[0] = v42;
    sub_24F92CC18();
    sub_24E61DA68(v43, v35 + v37, &qword_27F21C0A0, &qword_24F9608E0);
    LOBYTE(v68) = 4;
    v44 = v55;
    sub_24F92CC18();
    sub_24E61DA68(v44, v35 + v31, &qword_27F21C0A0, &qword_24F9608E0);
    LOBYTE(v68) = 5;
    v45 = sub_24F92CBE8();
    v46 = v35 + v13[9];
    *v46 = v45;
    v46[8] = v47 & 1;
    LOBYTE(v68) = 6;
    *(v35 + v13[10]) = sub_24F92CBD8();
    LOBYTE(v68) = 7;
    *(v35 + v13[11]) = sub_24F92CBD8();
    LOBYTE(v68) = 8;
    *(v35 + v13[12]) = sub_24F92CBD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v71 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v68, v64, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v68) = 10;
    sub_24F62847C(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
    sub_24F92CC18();
    v48 = v65;
    sub_24E61DA68(v54, v65 + v63, &qword_27F2157F0, &qword_24F9846A0);
    LOBYTE(v68) = 11;
    sub_24F62847C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v50 = v58;
    v49 = v59;
    sub_24F92CC18();
    (*(v57 + 8))(v50, v49);
    sub_24E61DA68(v53, v48 + v61, &qword_27F213E68, &unk_24F93BC80);
    sub_24F62CFF8(v48, v52, type metadata accessor for AccessPointHighlight);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_24F634DF4(v48, type metadata accessor for AccessPointHighlight);
  }
}

void sub_24F628F40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24F629024()
{
  swift_getKeyPath();
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

double sub_24F629124(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
    sub_24F91FD78();
  }

  return result;
}

void sub_24F62923C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t (*sub_24F62928C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit21APAnimationController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24E632DD8(v4);
  return sub_24F6293C4;
}

void sub_24F6293C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t APAnimationController.__allocating_init(highlightIndex:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24F91FDB8();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t APAnimationController.init(highlightIndex:)(uint64_t a1)
{
  sub_24F91FDB8();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24F6294F4@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v67 = sub_24F924848();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for APHighlightTitle(0);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v90 = v4;
  v91 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9234D8();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = sub_24F927748();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924918();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B038, &qword_24FA15BD0);
  MEMORY[0x28223BE20](v78);
  v20 = &v64 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B040, &qword_24FA15BD8);
  MEMORY[0x28223BE20](v80);
  v86 = &v64 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B048, &unk_24FA15BE0);
  MEMORY[0x28223BE20](v88);
  v89 = &v64 - v22;
  v23 = (v1 + *(v3 + 32));
  v24 = v23[1];
  v95 = *v23;
  v96 = v24;
  sub_24E600AEC();

  v77 = sub_24F925E18();
  v76 = v25;
  LOBYTE(v24) = v26;
  v75 = v27;
  KeyPath = swift_getKeyPath();
  v74 = sub_24F925A18();
  v72 = swift_getKeyPath();
  v70 = v24 & 1;
  LOBYTE(v95) = v24 & 1;
  LOBYTE(v94) = 0;
  v71 = sub_24F9251C8();
  sub_24F924908();
  (*(v13 + 16))(v15, v18, v12);
  sub_24F62847C(&qword_27F229180, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v28 = v1;
  v69 = sub_24F923958();
  (*(v13 + 8))(v18, v12);
  v93 = v3;
  v29 = v1 + *(v3 + 28);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v95) = v30;
  v68 = v31;
  v96 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v32 = 1.0;
  if ((v94 & 1) == 0)
  {
    if (*(v1 + *(v93 + 36)))
    {
      v32 = 0.75;
    }

    else
    {
      v32 = 1.0;
    }
  }

  sub_24F9278B8();
  v34 = v33;
  v36 = v35;
  sub_24F76A034(v9);
  v37 = v82;
  v38 = v83;
  v39 = v79;
  (*(v82 + 104))(v79, *MEMORY[0x277CDF3D0], v83);
  v40 = sub_24F9234C8();
  v41 = *(v37 + 8);
  v41(v39, v38);
  v41(v9, v38);
  v42 = v84;
  v43 = MEMORY[0x277CE13B0];
  if ((v40 & 1) == 0)
  {
    v43 = MEMORY[0x277CE13B8];
  }

  v44 = v81;
  v45 = v85;
  (*(v84 + 104))(v81, *v43, v85);
  (*(v42 + 32))(&v20[*(v78 + 36)], v44, v45);
  v46 = v76;
  *v20 = v77;
  *(v20 + 1) = v46;
  v20[16] = v70;
  v47 = KeyPath;
  *(v20 + 3) = v75;
  *(v20 + 4) = v47;
  *(v20 + 5) = 1;
  v20[48] = 0;
  v48 = v74;
  *(v20 + 7) = v72;
  *(v20 + 8) = v48;
  *(v20 + 18) = v71;
  *(v20 + 10) = v69;
  *(v20 + 11) = v32;
  *(v20 + 12) = v32;
  *(v20 + 13) = v34;
  *(v20 + 14) = v36;
  LOBYTE(v95) = v30;
  v96 = v68;
  sub_24F926F38();
  v49 = 0.0;
  if ((v94 & 1) == 0)
  {
    if (*(v28 + *(v93 + 36)))
    {
      v49 = 4.0;
    }

    else
    {
      v49 = 0.0;
    }
  }

  v50 = v86;
  sub_24E6009C8(v20, v86, &qword_27F24B038, &qword_24FA15BD0);
  v51 = v50 + *(v80 + 36);
  *v51 = v49;
  *(v51 + 8) = 0;
  v52 = v91;
  sub_24F62CFF8(v28, v91, type metadata accessor for APHighlightTitle);
  v53 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v54 = swift_allocObject();
  sub_24F630CD4(v52, v54 + v53, type metadata accessor for APHighlightTitle);
  v55 = v89;
  sub_24E6009C8(v50, v89, &qword_27F24B040, &qword_24FA15BD8);
  v56 = (v55 + *(v88 + 36));
  *v56 = sub_24F634634;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  v57 = v28 + *(v93 + 24);
  v58 = *v57;
  LOBYTE(v54) = *(v57 + 8);

  if ((v54 & 1) == 0)
  {
    sub_24F92BDC8();
    v59 = sub_24F9257A8();
    sub_24F921FD8();

    v60 = v65;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v66 + 8))(v60, v67);
    v58 = v95;
  }

  swift_getKeyPath();
  v95 = v58;
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  v61 = *(v58 + 16);

  v94 = v61;
  sub_24F62CFF8(v28, v52, type metadata accessor for APHighlightTitle);
  v62 = swift_allocObject();
  sub_24F630CD4(v52, v62 + v53, type metadata accessor for APHighlightTitle);
  sub_24F6348C4();
  sub_24F926AB8();

  return sub_24E601704(v55, &qword_27F24B048, &unk_24FA15BE0);
}

double sub_24F629F50(uint64_t a1, __n128 a2)
{
  if (*(a1 + *(type metadata accessor for APHighlightTitle(0) + 36)) == 1)
  {
    v3 = sub_24F927678();
    MEMORY[0x28223BE20](v3);
    sub_24F923B18();
  }

  return result;
}

uint64_t sub_24F62A014(__n128 a1, uint64_t a2, char a3)
{
  type metadata accessor for APHighlightTitle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24F62A09C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v43 = sub_24F924848();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for APHighlightSubtitle(0);
  v51 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v53 = v4;
  v54 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF0, &qword_24FA15B48);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v57 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF8, &qword_24FA15B50);
  MEMORY[0x28223BE20](v47);
  v50 = &v40 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B000, &qword_24FA15B58);
  MEMORY[0x28223BE20](v58);
  v52 = &v40 - v7;
  v8 = (v1 + v3[7]);
  v9 = v8[1];
  *&v67[0] = *v8;
  *(&v67[0] + 1) = v9;
  sub_24E600AEC();

  v46 = sub_24F925E18();
  v45 = v10;
  v12 = v11;
  v44 = v13;
  KeyPath = swift_getKeyPath();
  v15 = sub_24F925898();
  v16 = swift_getKeyPath();
  v69 = v12 & 1;
  v68 = 0;
  v17 = (v1 + v3[6]);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v67[0]) = *v17;
  *(&v67[0] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v20 = 1.0;
  v21 = 1.0;
  if ((v60 & 1) == 0)
  {
    if (*(v1 + v3[8]))
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0;
    }
  }

  v56 = v1;
  LOBYTE(v67[0]) = v18;
  *(&v67[0] + 1) = v19;
  sub_24F926F38();
  if ((v60 & 1) == 0)
  {
    if (*(v56 + v3[8]))
    {
      v20 = 0.75;
    }

    else
    {
      v20 = 1.0;
    }
  }

  sub_24F9278B8();
  *&v60 = v46;
  *(&v60 + 1) = v45;
  LOBYTE(v61) = v12 & 1;
  *(&v61 + 1) = v44;
  *&v62 = KeyPath;
  *(&v62 + 1) = 2;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = v16;
  *&v64 = v15;
  *(&v64 + 1) = v21;
  *&v65 = v20;
  *(&v65 + 1) = v20;
  *&v66 = v22;
  *(&v66 + 1) = v23;
  sub_24F925918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B008, &qword_24FA15BC0);
  sub_24F634094();
  sub_24F9260C8();
  v67[3] = v63;
  v67[4] = v64;
  v67[5] = v65;
  v67[6] = v66;
  v67[0] = v60;
  v67[1] = v61;
  v67[2] = v62;
  sub_24E601704(v67, &qword_27F24B008, &qword_24FA15BC0);
  LOBYTE(v60) = v18;
  *(&v60 + 1) = v19;
  sub_24F926F38();
  v24 = 0.0;
  v25 = v56;
  if ((v59 & 1) == 0)
  {
    if (*(v56 + v3[8]))
    {
      v24 = 4.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  v26 = v50;
  (*(v48 + 32))(v50, v57, v49);
  v27 = v26 + *(v47 + 36);
  *v27 = v24;
  *(v27 + 8) = 0;
  v28 = v54;
  sub_24F62CFF8(v25, v54, type metadata accessor for APHighlightSubtitle);
  v29 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v30 = swift_allocObject();
  sub_24F630CD4(v28, v30 + v29, type metadata accessor for APHighlightSubtitle);
  v31 = v52;
  sub_24F634258(v26, v52);
  v32 = (v31 + *(v58 + 36));
  *v32 = sub_24F6341B0;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  v33 = v25 + v3[5];
  v34 = *v33;
  LOBYTE(v26) = *(v33 + 8);

  if ((v26 & 1) == 0)
  {
    sub_24F92BDC8();
    v35 = sub_24F9257A8();
    sub_24F921FD8();

    v36 = v41;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v42 + 8))(v36, v43);
    v34 = v60;
  }

  swift_getKeyPath();
  *&v60 = v34;
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  v37 = *(v34 + 16);

  v59 = v37;
  sub_24F62CFF8(v25, v28, type metadata accessor for APHighlightSubtitle);
  v38 = swift_allocObject();
  sub_24F630CD4(v28, v38 + v29, type metadata accessor for APHighlightSubtitle);
  sub_24F634434();
  sub_24F926AB8();

  return sub_24F634588(v31);
}

double sub_24F62A904(uint64_t a1, __n128 a2)
{
  if (*(a1 + *(type metadata accessor for APHighlightSubtitle(0) + 32)) == 1)
  {
    sub_24F927678();
    sub_24F927698();

    MEMORY[0x28223BE20](v3);
    sub_24F923B18();
  }

  return result;
}

double sub_24F62A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25304D060](a1, a2, 0.2, 0.7, 0.0);
  sub_24F923B18();

  return result;
}

uint64_t sub_24F62AA60(__n128 a1, uint64_t a2, char a3)
{
  type metadata accessor for APHighlightSubtitle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t static APHighlightIcon.artworkHeight(for:)(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  result = (*(v3 + 88))(v6, v2);
  if (result != *MEMORY[0x277CDF9F0] && result != *MEMORY[0x277CDFA00] && result != *MEMORY[0x277CDFA10])
  {
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_24F62AC70()
{
  v1 = sub_24F924848();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_24E60169C(v0, v6, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v18 + 8))(v3, v19);
  }

  (*(v8 + 16))(v10, v13, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == *MEMORY[0x277CDF9F0] || v15 == *MEMORY[0x277CDFA00] || v15 == *MEMORY[0x277CDFA10])
  {
    return (*(v8 + 8))(v13, v7);
  }

  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v17 = *(v8 + 8);
  v17(v13, v7);
  return (v17)(v10, v7);
}

void sub_24F62B030(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v130 = sub_24F9289E8();
  v119 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v147 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v146 = &v116 - v5;
  v6 = type metadata accessor for Player(0);
  v116 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B110, &unk_24FA15CE0);
  MEMORY[0x28223BE20](v127);
  v128 = &v116 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE90, &qword_24FA155B0);
  MEMORY[0x28223BE20](v136);
  v129 = &v116 - v9;
  v10 = sub_24F927748();
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x28223BE20](v10);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for PlayerGroupView(0);
  MEMORY[0x28223BE20](v131);
  v123 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v120 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v15 - 8);
  v144 = &v116 - v16;
  v143 = type metadata accessor for PlayerAvatar(0);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v117 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v116 - v19);
  v145 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v145);
  v118 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B118, &qword_24FA15CF0);
  MEMORY[0x28223BE20](v138);
  v23 = (&v116 - v22);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B120, &qword_24FA15CF8);
  MEMORY[0x28223BE20](v132);
  v134 = &v116 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B128, &unk_24FA15D00);
  MEMORY[0x28223BE20](v121);
  v122 = &v116 - v25;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE70, &qword_24FA15598);
  MEMORY[0x28223BE20](v133);
  v140 = &v116 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE60, &qword_24FA15590);
  MEMORY[0x28223BE20](v27);
  v135 = &v116 - v28;
  v29 = sub_24F926E08();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessPointIconType(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for APHighlightIcon(0);
  sub_24F62CFF8(a1 + *(v36 + 24), v35, type metadata accessor for AccessPointIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v119 = v23;
    if (EnumCaseMultiPayload)
    {
      v137 = v27;
      if (EnumCaseMultiPayload == 1)
      {
        v38 = *v35;
        v39 = *(v35 + 1);
        v40 = type metadata accessor for PlayerAvatar.Overlay(0);
        v41 = *(*(v40 - 8) + 56);
        v42 = v144;
        v41(v144, 1, 1, v40);
        *&v154 = 0;
        v152 = 0u;
        v153 = 0u;
        v43 = v143;
        v44 = *(v143 + 20);
        v41(v20 + v44, 1, 1, v40);
        v45 = v20 + *(v43 + 24);
        *&v150 = 0;
        v148 = 0u;
        v149 = 0u;
        *v45 = 0u;
        *(v45 + 16) = 0u;
        *(v45 + 32) = 0;
        sub_24E61DA68(&v148, v45, qword_27F21B590, &unk_24F93BE30);
        *v20 = v38;
        v20[1] = v39;
        sub_24E61DA68(v42, v20 + v44, &qword_27F22DF80, &unk_24F942E50);
        sub_24E61DA68(&v152, v45, qword_27F21B590, &unk_24F93BE30);
        LOBYTE(v152) = 7;
        v46 = v118;
        sub_24F8319B8(v20, &v152, v118);
        sub_24F62CFF8(v46, v122, type metadata accessor for PlayerAvatarView);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE80, &unk_24FA155A0);
        sub_24F62D58C();
        sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
        v47 = v140;
        sub_24F924E28();
        sub_24E60169C(v47, v134, &qword_27F24AE70, &qword_24FA15598);
        swift_storeEnumTagMultiPayload();
        sub_24F62D4D0();
        sub_24F62D644();
        v48 = v135;
        sub_24F924E28();
        sub_24E601704(v47, &qword_27F24AE70, &qword_24FA15598);
        sub_24E60169C(v48, v119, &qword_27F24AE60, &qword_24FA15590);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24E601704(v48, &qword_27F24AE60, &qword_24FA15590);
        v49 = type metadata accessor for PlayerAvatarView;
      }

      else
      {
        v77 = *v35;
        sub_24F926C88();
        v78 = sub_24F926D08();

        (*(v125 + 104))(v124, *MEMORY[0x277CE13D8], v126);
        v79 = v131;
        v80 = v123;
        *(v123 + *(v131 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
        *(v80 + *(v79 + 32)) = 7;
        v81 = *(v77 + 16);
        if (v81)
        {
          v122 = v78;
          *&v160 = MEMORY[0x277D84F90];
          sub_24F457BF8(0, v81, 0);
          v82 = v160;
          v83 = v117;
          v84 = *(v116 + 80);
          v121 = v77;
          v85 = v77 + ((v84 + 32) & ~v84);
          v140 = *(v116 + 72);
          v86 = v143;
          do
          {
            v147 = v81;
            v87 = v142;
            sub_24F62CFF8(v85, v142, type metadata accessor for Player);
            v88 = *(v87 + 16);
            v145 = *(v87 + 24);
            v146 = v88;

            sub_24F634DF4(v87, type metadata accessor for Player);
            v89 = type metadata accessor for PlayerAvatar.Overlay(0);
            v90 = *(*(v89 - 8) + 56);
            v91 = v144;
            v90(v144, 1, 1, v89);
            *&v154 = 0;
            v152 = 0u;
            v153 = 0u;
            v92 = v82;
            v93 = *(v86 + 20);
            v90(&v83[v93], 1, 1, v89);
            v94 = &v83[*(v86 + 24)];
            *&v150 = 0;
            v148 = 0u;
            v149 = 0u;
            *v94 = 0u;
            *(v94 + 16) = 0u;
            *(v94 + 32) = 0;
            sub_24E61DA68(&v148, v94, qword_27F21B590, &unk_24F93BE30);
            v95 = v145;
            *v83 = v146;
            *(v83 + 1) = v95;
            v96 = &v83[v93];
            v82 = v92;
            sub_24E61DA68(v91, v96, &qword_27F22DF80, &unk_24F942E50);
            sub_24E61DA68(&v152, v94, qword_27F21B590, &unk_24F93BE30);
            *&v160 = v92;
            v98 = *(v92 + 16);
            v97 = *(v92 + 24);
            if (v98 >= v97 >> 1)
            {
              sub_24F457BF8((v97 > 1), v98 + 1, 1);
              v82 = v160;
            }

            *(v82 + 16) = v98 + 1;
            sub_24F630CD4(v83, v82 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v98, type metadata accessor for PlayerAvatar);
            v85 += v140;
            v81 = v147 - 1;
          }

          while (v147 != 1);

          v78 = v122;
        }

        else
        {

          v82 = MEMORY[0x277D84F90];
        }

        v106 = v123;
        v105 = v124;
        *v123 = v82;
        *(v106 + 8) = v78;
        (*(v125 + 32))(v106 + *(v131 + 24), v105, v126);
        v46 = v120;
        sub_24F630CD4(v106, v120, type metadata accessor for PlayerGroupView);
        sub_24F62CFF8(v46, v128, type metadata accessor for PlayerGroupView);
        swift_storeEnumTagMultiPayload();
        sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
        sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
        v107 = v129;
        sub_24F924E28();
        sub_24E60169C(v107, v134, &qword_27F24AE90, &qword_24FA155B0);
        swift_storeEnumTagMultiPayload();
        sub_24F62D4D0();
        sub_24F62D644();
        v108 = v135;
        sub_24F924E28();
        sub_24E601704(v107, &qword_27F24AE90, &qword_24FA155B0);
        sub_24E60169C(v108, v119, &qword_27F24AE60, &qword_24FA15590);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24E601704(v108, &qword_27F24AE60, &qword_24FA15590);
        v49 = type metadata accessor for PlayerGroupView;
      }

      sub_24F634DF4(v46, v49);
    }

    else
    {
      sub_24F926E48();
      (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
      v54 = sub_24F926E88();

      (*(v30 + 8))(v32, v29);
      v55 = sub_24F925808();
      sub_24F923318();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      LOBYTE(v152) = 1;
      LOBYTE(v148) = 0;
      sub_24F926C88();
      v64 = sub_24F926D08();

      v65 = sub_24F925808();
      v152 = v54;
      LOWORD(v153) = 257;
      BYTE8(v153) = v55;
      *&v154 = v57;
      *(&v154 + 1) = v59;
      *&v155[0] = v61;
      *(&v155[0] + 1) = v63;
      LOBYTE(v155[1]) = 0;
      *(&v155[1] + 1) = v148;
      DWORD1(v155[1]) = *(&v148 + 3);
      *(&v155[1] + 1) = v64;
      v156 = v65;
      v66 = v155[0];
      v67 = v122;
      *(v122 + 32) = v154;
      *(v67 + 48) = v66;
      *(v67 + 64) = v155[1];
      *(v67 + 80) = v65;
      v68 = v153;
      *v67 = v152;
      *(v67 + 16) = v68;
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v152, &v148, &qword_27F24AE80, &unk_24FA155A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE80, &unk_24FA155A0);
      sub_24F62D58C();
      sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
      v69 = v140;
      sub_24F924E28();
      sub_24E60169C(v69, v134, &qword_27F24AE70, &qword_24FA15598);
      swift_storeEnumTagMultiPayload();
      sub_24F62D4D0();
      sub_24F62D644();
      v70 = v135;
      sub_24F924E28();
      sub_24E601704(v69, &qword_27F24AE70, &qword_24FA15598);
      sub_24E60169C(v70, v119, &qword_27F24AE60, &qword_24FA15590);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
      sub_24F62D444();
      sub_24F62D730();
      sub_24F924E28();
      sub_24E601704(&v152, &qword_27F24AE80, &unk_24FA155A0);
      sub_24E601704(v70, &qword_27F24AE60, &qword_24FA15590);
    }

    return;
  }

  v137 = v27;
  if (EnumCaseMultiPayload == 3)
  {
    v71 = v119;
    v72 = v130;
    v119[4](v146, v35, v130);
    sub_24F62AC70();
    sub_24F62AC70();
    v73 = v147;
    sub_24F9289C8();
    (*(v71 + 16))(v128, v73, v72);
    swift_storeEnumTagMultiPayload();
    sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
    sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    v74 = v129;
    sub_24F924E28();
    sub_24E60169C(v74, v134, &qword_27F24AE90, &qword_24FA155B0);
    swift_storeEnumTagMultiPayload();
    sub_24F62D4D0();
    sub_24F62D644();
    v75 = v135;
    sub_24F924E28();
    sub_24E601704(v74, &qword_27F24AE90, &qword_24FA155B0);
    sub_24E60169C(v75, v23, &qword_27F24AE60, &qword_24FA15590);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
    sub_24F62D444();
    sub_24F62D730();
    sub_24F924E28();
    sub_24E601704(v75, &qword_27F24AE60, &qword_24FA15590);
    v76 = *(v71 + 8);
    v76(v147, v72);
    v76(v146, v72);
    return;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v100 = *v35;
    v99 = *(v35 + 1);
    v146 = v99;
    v147 = v100;
    if (v99 >> 60 != 15)
    {
      sub_24E71CBC0(v100, v99);
      v101 = sub_24F62C92C(v100, v99);
      if (v101)
      {
        v102 = v23;
        v103 = v101;
        sub_24F926DD8();
        (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
        v104 = sub_24F926E88();

        (*(v30 + 8))(v32, v29);
        v148 = v104;
        LOWORD(v149) = 1;
        BYTE2(v149) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
        sub_24E6E97A8();
        sub_24F924E28();
        sub_24E71CBAC(v100, v99);

LABEL_26:
        v109 = v153;
        v110 = BYTE2(v153);
        v158[0] = BYTE2(v153);
        LOBYTE(v162) = 1;
        BYTE8(v155[1]) = 1;
        v111 = v152;
        sub_24F634E5C(v152, *(&v152 + 1), v153, SBYTE2(v153));
        sub_24F634E5C(v111, *(&v111 + 1), v109, v110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEB0, &unk_24FA155C8);
        sub_24EFC1714();
        sub_24F62D7BC();
        sub_24F924E28();
        v112 = v151[0];
        v154 = v150;
        v155[0] = v151[0];
        v113 = *(v151 + 9);
        *(v155 + 9) = *(v151 + 9);
        v115 = v148;
        v114 = v149;
        v152 = v148;
        v153 = v149;
        v102[2] = v150;
        v102[3] = v112;
        *(v102 + 57) = v113;
        *v102 = v115;
        v102[1] = v114;
        swift_storeEnumTagMultiPayload();
        sub_24E60169C(&v152, &v160, &qword_27F24AEA0, &unk_24FA155B8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24F634E68(v111, *(&v111 + 1), v109, v110);
        sub_24E601704(&v152, &qword_27F24AEA0, &unk_24FA155B8);
        sub_24E71CBAC(v147, v146);
        sub_24F634E68(v111, *(&v111 + 1), v109, v110);
        return;
      }

      sub_24E71CBAC(v100, v99);
    }

    v102 = v23;
    v148 = 0uLL;
    LOWORD(v149) = 0;
    BYTE2(v149) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    sub_24E6E97A8();
    sub_24F924E28();
    goto LABEL_26;
  }

  v50 = *(v35 + 2);
  sub_24F926E98();
  (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
  v51 = sub_24F926E88();

  (*(v30 + 8))(v32, v29);
  if (v50 <= 0.0)
  {
    sub_24F62AC70();
    sub_24F62AC70();
  }

  sub_24F927618();
  sub_24F9238C8();
  v159 = 1;
  *&v158[6] = v162;
  *&v158[22] = v163;
  *&v158[38] = v164;
  v160 = v51;
  *v161 = 1;
  *&v161[2] = *v158;
  *&v161[18] = *&v158[16];
  *&v161[34] = *&v158[32];
  *&v161[48] = *(&v164 + 1);
  v148 = v51;
  v149 = *v161;
  v150 = *&v161[16];
  v151[0] = *&v161[32];
  *&v151[1] = *(&v164 + 1);
  v157 = 0;
  BYTE8(v151[1]) = 0;
  sub_24E60169C(&v160, &v152, &qword_27F235A20, &qword_24F9B9160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20, &qword_24F9B9160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEB0, &unk_24FA155C8);
  sub_24EFC1714();
  sub_24F62D7BC();
  sub_24F924E28();
  v52 = v155[0];
  v23[2] = v154;
  v23[3] = v52;
  *(v23 + 57) = *(v155 + 9);
  v53 = v153;
  *v23 = v152;
  v23[1] = v53;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0, &unk_24FA155B8);
  sub_24F62D444();
  sub_24F62D730();
  sub_24F924E28();
  sub_24E601704(&v160, &qword_27F235A20, &qword_24F9B9160);
}

uint64_t sub_24F62C92C(uint64_t a1, uint64_t a2)
{
  sub_24E69A5C4(0, &qword_27F21E318, 0x277CCAAC8);
  sub_24E69A5C4(0, &qword_27F2283A0, 0x277D755B8);
  result = sub_24F92BE38();
  if (!result)
  {
    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E718);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "banner image could not be deserialized", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t APHighlightIcon.body.getter(__n128 a1)
{
  v2 = type metadata accessor for APHighlightIcon(0);
  v17 = *(v2 - 1);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE20, &qword_24FA15568);
  MEMORY[0x28223BE20](v4);
  v6 = (&v17 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE28, &unk_24FA15570);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = v1 + v2[5];
  v11 = *v10;
  v12 = *(v10 + 8);
  v19 = v11;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v18 == 1)
  {
    sub_24F62B030(v1, v9);
    *&v9[*(v7 + 36)] = *(v1 + v2[7]);
    sub_24E60169C(v9, v6, &qword_27F24AE28, &unk_24FA15570);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80, &unk_24F973630);
    sub_24F62D27C();
    sub_24E9ED7E0();
    sub_24F924E28();
    return sub_24E601704(v9, &qword_27F24AE28, &unk_24FA15570);
  }

  else
  {
    if (*(v1 + v2[8]) == 1)
    {
      sub_24F926C88();
      v14 = sub_24F926D08();
    }

    else
    {
      v14 = sub_24F926C98();
    }

    sub_24F62CFF8(v1, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for APHighlightIcon);
    v15 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v16 = swift_allocObject();
    sub_24F630CD4(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for APHighlightIcon);
    *v6 = v14;
    v6[1] = sub_24F62D250;
    v6[2] = v16;
    v6[3] = 0;
    v6[4] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80, &unk_24F973630);
    sub_24F62D27C();
    sub_24E9ED7E0();
    return sub_24F924E28();
  }
}

void sub_24F62CF34(uint64_t a1)
{
  MEMORY[0x25304D060](0.5, 0.8, 0.0);
  type metadata accessor for APHighlightIcon(0);
  sub_24F927698();

  sub_24F923B18();
}

uint64_t sub_24F62CFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F62D060()
{
  v1 = type metadata accessor for APHighlightIcon(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 24));
  type metadata accessor for AccessPointIconType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v8 = sub_24F9289E8();
      (*(*(v8 - 8) + 8))(v4, v8);
      break;
    case 4:
LABEL_12:

      break;
    case 5:
      v6 = v4[1];
      if (v6 >> 60 != 15)
      {
        sub_24E627880(*v4, v6);
      }

      break;
  }

LABEL_13:

  return swift_deallocObject();
}

unint64_t sub_24F62D27C()
{
  result = qword_27F24AE30;
  if (!qword_27F24AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE28, &unk_24FA15570);
    sub_24F62D334();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE30);
  }

  return result;
}

unint64_t sub_24F62D334()
{
  result = qword_27F24AE38;
  if (!qword_27F24AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE40, &qword_24FA15580);
    sub_24F62D3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE38);
  }

  return result;
}

unint64_t sub_24F62D3B8()
{
  result = qword_27F24AE48;
  if (!qword_27F24AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE50, &qword_24FA15588);
    sub_24F62D444();
    sub_24F62D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE48);
  }

  return result;
}

unint64_t sub_24F62D444()
{
  result = qword_27F24AE58;
  if (!qword_27F24AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE60, &qword_24FA15590);
    sub_24F62D4D0();
    sub_24F62D644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE58);
  }

  return result;
}

unint64_t sub_24F62D4D0()
{
  result = qword_27F24AE68;
  if (!qword_27F24AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE70, &qword_24FA15598);
    sub_24F62D58C();
    sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE68);
  }

  return result;
}

unint64_t sub_24F62D58C()
{
  result = qword_27F24AE78;
  if (!qword_27F24AE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE80, &unk_24FA155A0);
    sub_24E746E8C();
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE78);
  }

  return result;
}

unint64_t sub_24F62D644()
{
  result = qword_27F24AE88;
  if (!qword_27F24AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE90, &qword_24FA155B0);
    sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
    sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE88);
  }

  return result;
}

unint64_t sub_24F62D730()
{
  result = qword_27F24AE98;
  if (!qword_27F24AE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEA0, &unk_24FA155B8);
    sub_24EFC1714();
    sub_24F62D7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE98);
  }

  return result;
}

unint64_t sub_24F62D7BC()
{
  result = qword_27F24AEA8;
  if (!qword_27F24AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEB0, &unk_24FA155C8);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEA8);
  }

  return result;
}

uint64_t sub_24F62D848(uint64_t a1)
{
  type metadata accessor for APHighlightIcon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

double static AccessPointHighlightComponent.accessPointHeight(for:)(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277CDF9F0])
  {
    v8 = 43.0;
  }

  else if (v7 == *MEMORY[0x277CDFA00])
  {
    v8 = 45.0;
  }

  else if (v7 == *MEMORY[0x277CDFA10])
  {
    v8 = 48.0;
  }

  else
  {
    if (_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0())
    {
      v8 = 50.0;
    }

    else
    {
      v8 = 40.0;
    }

    (*(v3 + 8))(v5, v2);
  }

  v9 = 12.0;
  if (v6)
  {
    v9 = 14.0;
  }

  return v9 + v8;
}

uint64_t AccessPointHighlightComponent.GestureHandler.didSwipeUp.getter()
{
  swift_getKeyPath();
  sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

void sub_24F62DB3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void AccessPointHighlightComponent.GestureHandler.didSwipeUp.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
    sub_24F91FD78();
  }
}

uint64_t (*AccessPointHighlightComponent.GestureHandler.didSwipeUp.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV12GameStoreKit29AccessPointHighlightComponent14GestureHandler___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F62DED0;
}

void sub_24F62DED0(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t AccessPointHighlightComponent.GestureHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_24F91FDB8();
  return v0;
}

uint64_t AccessPointHighlightComponent.GestureHandler.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_24F91FDB8();
  return v1;
}

uint64_t sub_24F62DFD4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

double sub_24F62E03C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F62E0D4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_24F62E214@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccessPointHighlightComponent(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F62E41C(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 44));
  if (v6 != 2 && (v6 & 1) != 0 && (v7 = *(a1 + 48)) != 0 && ((v7 & 0x2000000000000000) != 0 ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(a1 + 40) & 0xFFFFFFFFFFFFLL), v8))
  {
    sub_24F62E214(v5);
    v9 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_24F62E53C(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - v7);
  v9 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 44));
  if (v9 != 2 && (v9 & 1) != 0)
  {
    return 0;
  }

  sub_24F62E214(v8);
  v11 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (v11)
  {
    sub_24F62E214(v5);
    v13 = (*(v3 + 88))(v5, v2);
    if (v13 == *MEMORY[0x277CDF988])
    {
      return 0x4078000000000000;
    }

    if (v13 == *MEMORY[0x277CDF998])
    {
      return 0x407C000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9A8])
    {
      return 0x4080000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9B8])
    {
      return 0x4082000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9D0])
    {
      return 0x4084000000000000;
    }

    v12(v5, v2);
  }

  return 0x4074000000000000;
}

uint64_t sub_24F62E754()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for AccessPointHighlightComponent(0);
  sub_24E60169C(v0 + *(v14 + 20), v6, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
  }

  (*(v8 + 16))(v10, v13, v7);
  v16 = (*(v8 + 88))(v10, v7);
  if (v16 == *MEMORY[0x277CDF9F0] || v16 == *MEMORY[0x277CDFA00] || v16 == *MEMORY[0x277CDFA10])
  {
    return (*(v8 + 8))(v13, v7);
  }

  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

BOOL sub_24F62EB1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = a1[6];
  if (v5)
  {
    if ((v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : a1[5] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v7 = a1[8];
  if (v7)
  {
    if ((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : a1[7] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v10 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(a1 + *(v10 + 32), v4, &qword_27F21C0A0, &qword_24F9608E0);
  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = (*(*(v11 - 8) + 48))(v4, 1, v11) == 1;
  sub_24E601704(v4, &qword_27F21C0A0, &qword_24F9608E0);
  return v12;
}

uint64_t AccessPointHighlightComponent.content(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v91 = sub_24F924E98();
  MEMORY[0x28223BE20](v91);
  v90 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_24F923568();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50, &qword_24F95ACA0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v73[-v7];
  v78 = type metadata accessor for AccessPointHighlight(0);
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v88 = v9;
  v89 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AccessPointHighlightComponent(0);
  v11 = v10 - 8;
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = v12;
  v13 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v73[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090, &unk_24F9608D0);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v80 = &v73[-v19];
  v79 = sub_24F9251F8();
  MEMORY[0x28223BE20](v79);
  v82 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEC0, &qword_24FA15608);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v73[-v23];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEC8, &qword_24FA15610);
  MEMORY[0x28223BE20](v74);
  v77 = &v73[-v25];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AED0, &qword_24FA15618);
  MEMORY[0x28223BE20](v76);
  v83 = &v73[-v26];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AED8, &qword_24FA15620);
  MEMORY[0x28223BE20](v86);
  v87 = &v73[-v27];
  *v24 = sub_24F9249A8();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEE0, &unk_24FA15628);
  v29 = a1;
  sub_24F62F9B8(a1, v3, &v24[*(v28 + 44)]);
  sub_24F9278A8();
  *&v24[*(v22 + 44)] = sub_24F923908();
  v30 = v3 + *(v11 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  *&v99 = v31;
  BYTE8(v99) = v32;
  *&v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  sub_24F926F38();
  sub_24F927628();
  sub_24F9242E8();
  v34 = v77;
  sub_24E6009C8(v24, v77, &qword_27F24AEC0, &qword_24FA15608);
  v35 = &v34[*(v74 + 36)];
  v36 = v104;
  v35[4] = v103;
  v35[5] = v36;
  v35[6] = v105;
  v37 = v100;
  *v35 = v99;
  v35[1] = v37;
  v38 = v102;
  v35[2] = v101;
  v35[3] = v38;
  v39 = v80;
  sub_24F62CFF8(a1, v80, type metadata accessor for AccessPointHighlight);
  v40 = v78;
  (*(v8 + 56))(v39, 0, 1, v78);
  v41 = v75;
  sub_24E60169C(v39, v75, &qword_27F21C090, &unk_24F9608D0);
  if ((*(v8 + 48))(v41, 1, v40) == 1)
  {
    sub_24E601704(v41, &qword_27F21C090, &unk_24F9608D0);
    v42 = type metadata accessor for AccessPointIconType(0);
    v43 = v81;
    (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
  }

  else
  {
    v44 = &v41[*(v40 + 32)];
    v43 = v81;
    sub_24E60169C(v44, v81, &qword_27F21C0A0, &qword_24F9608E0);
    sub_24F634DF4(v41, type metadata accessor for AccessPointHighlight);
    v45 = type metadata accessor for AccessPointIconType(0);
    (*(*(v45 - 8) + 48))(v43, 1, v45);
  }

  sub_24E601704(v43, &qword_27F21C0A0, &qword_24F9608E0);
  sub_24F924EE8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E601704(v39, &qword_27F21C090, &unk_24F9608D0);
  v54 = *(v79 + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_24F924B38();
  v57 = v82;
  (*(*(v56 - 8) + 104))(&v82[v54], v55, v56);
  *v57 = v47;
  v57[1] = v49;
  v57[2] = v51;
  v57[3] = v53;
  v58 = v83;
  v59 = &v83[*(v76 + 36)];
  sub_24F630CD4(v57, v59, MEMORY[0x277CE0550]);
  *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEE8, &qword_24FA15638) + 36)) = 0;
  sub_24E6009C8(v34, v58, &qword_27F24AEC8, &qword_24FA15610);
  sub_24F62CFF8(v3, v13, type metadata accessor for AccessPointHighlightComponent);
  v60 = v89;
  sub_24F62CFF8(v29, v89, type metadata accessor for AccessPointHighlight);
  v61 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v62 = v61 + v85;
  v85 = v3;
  v63 = (v62 + *(v8 + 80)) & ~*(v8 + 80);
  v64 = swift_allocObject();
  sub_24F630CD4(v13, v64 + v61, type metadata accessor for AccessPointHighlightComponent);
  sub_24F630CD4(v60, v64 + v63, type metadata accessor for AccessPointHighlight);
  v65 = v87;
  sub_24E6009C8(v58, v87, &qword_27F24AED0, &qword_24FA15618);
  v66 = &v65[*(v86 + 36)];
  *v66 = sub_24F631994;
  v66[1] = v64;
  v66[2] = 0;
  v66[3] = 0;
  sub_24F925228();
  v67 = v92;
  sub_24F923518();
  sub_24F62CFF8(v85, v13, type metadata accessor for AccessPointHighlightComponent);
  v68 = swift_allocObject();
  sub_24F630CD4(v13, v68 + v61, type metadata accessor for AccessPointHighlightComponent);
  sub_24F62847C(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_24F62847C(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v69 = v94;
  v70 = v95;
  sub_24F927278();

  (*(v93 + 8))(v67, v70);
  sub_24F9235A8();
  sub_24F631E00();
  sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
  v71 = v97;
  sub_24F9269D8();
  (*(v96 + 8))(v69, v71);
  return sub_24E601704(v65, &qword_27F24AED8, &qword_24FA15620);
}

uint64_t sub_24F62F9B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v153 = a1;
  v152 = a3;
  v122 = sub_24F924258();
  MEMORY[0x28223BE20](v122);
  v121 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B088, &qword_24FA15C10);
  MEMORY[0x28223BE20](v145);
  v147 = (&v119 - v4);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B090, &qword_24FA15C18);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v124 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B098, &qword_24FA15C20);
  MEMORY[0x28223BE20](v8 - 8);
  v151 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v150 = &v119 - v11;
  v127 = sub_24F923E98();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v130 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v119 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0A0, &qword_24FA15C28);
  MEMORY[0x28223BE20](v125);
  v139 = &v119 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0A8, &qword_24FA15C30);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v129 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v128 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0B0, &qword_24FA15C38);
  MEMORY[0x28223BE20](v19 - 8);
  v146 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v119 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0B8, &qword_24FA15C40);
  MEMORY[0x28223BE20](v132);
  v25 = (&v119 - v24);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0C0, &qword_24FA15C48);
  MEMORY[0x28223BE20](v131);
  v27 = &v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  MEMORY[0x28223BE20](v28 - 8);
  v138 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v119 - v31;
  v33 = type metadata accessor for AccessPointIconType(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v143 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v119 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0C8, &qword_24FA15C50);
  MEMORY[0x28223BE20](v39 - 8);
  v144 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v119 - v42;
  v140 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(v153 + *(v140 + 28), v32, &qword_27F21C0A0, &qword_24F9608E0);
  v44 = *(v34 + 48);
  v137 = v33;
  v135 = v34 + 48;
  v134 = v44;
  v45 = v44(v32, 1, v33);
  v154 = v43;
  if (v45 == 1)
  {
    sub_24E601704(v32, &qword_27F21C0A0, &qword_24F9608E0);
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v46 = BYTE8(v156);
    v47 = v157;
    v48 = BYTE8(v157);
    *v27 = v156;
    v27[8] = v46;
    *(v27 + 2) = v47;
    v27[24] = v48;
    *(v27 + 2) = v158;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374B8, &qword_24F9FEF90);
    sub_24F634C78();
    sub_24F02EA44();
    sub_24F924E28();
  }

  else
  {
    v120 = v38;
    sub_24F630CD4(v32, v38, type metadata accessor for AccessPointIconType);
    v49 = type metadata accessor for APHighlightIcon(0);
    sub_24F62CFF8(v38, v25 + v49[6], type metadata accessor for AccessPointIconType);
    v50 = sub_24F923918();
    v51 = sub_24F62EB1C(v153);
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v52 = v145;
    v53 = v25 + v49[5];
    LOBYTE(v166) = 0;
    sub_24F926F28();
    v54 = *(&v159 + 1);
    *v53 = v159;
    *(v53 + 1) = v54;
    *(v25 + v49[7]) = v50;
    *(v25 + v49[8]) = 1;
    *(v25 + v49[9]) = !v51;
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v55 = (v25 + *(v52 + 36));
    v56 = v157;
    *v55 = v156;
    v55[1] = v56;
    v55[2] = v158;
    *(v25 + *(v132 + 36)) = 256;
    sub_24E60169C(v25, v27, &qword_27F24B0B8, &qword_24FA15C40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374B8, &qword_24F9FEF90);
    sub_24F634C78();
    sub_24F02EA44();
    sub_24F924E28();
    sub_24E601704(v25, &qword_27F24B0B8, &qword_24FA15C40);
    sub_24F634DF4(v120, type metadata accessor for AccessPointIconType);
  }

  v57 = v153;
  v58 = v153[6];
  v59 = v142;
  v60 = v140;
  v61 = v139;
  v62 = v136;
  if (v58 && ((v58 & 0x2000000000000000) != 0 ? (v63 = HIBYTE(v58) & 0xF) : (v63 = v153[5] & 0xFFFFFFFFFFFFLL), v63) || (v64 = v153[8]) != 0 && ((v64 & 0x2000000000000000) != 0 ? (v65 = HIBYTE(v64) & 0xF) : (v65 = v153[7] & 0xFFFFFFFFFFFFLL), v65))
  {
    *v61 = sub_24F924C98();
    *(v61 + 1) = 0;
    v61[16] = 0;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0F0, &qword_24FA15C90);
    sub_24F630D3C(v57, &v61[*(v66 + 44)]);
    v67 = sub_24F925808();
    v68 = &v61[*(v125 + 36)];
    *v68 = v67;
    *(v68 + 8) = xmmword_24FA15510;
    *(v68 + 24) = xmmword_24F94BC80;
    v68[40] = 0;
    sub_24F62E214(v62);
    v69 = v126;
    v70 = v130;
    v71 = v127;
    (*(v126 + 16))(v130, v62, v127);
    v72 = (*(v69 + 88))(v70, v71);
    if (v72 == *MEMORY[0x277CDF9F0] || v72 == *MEMORY[0x277CDFA00] || v72 == *MEMORY[0x277CDFA10])
    {
      (*(v69 + 8))(v62, v71);
    }

    else
    {
      LODWORD(v133) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      v74 = *(v69 + 8);
      v74(v62, v71);
      v74(v130, v71);
    }

    sub_24F927618();
    sub_24F9242E8();
    v75 = v61;
    v76 = v129;
    sub_24E6009C8(v75, v129, &qword_27F24B0A0, &qword_24FA15C28);
    v77 = (v76 + *(v59 + 36));
    v78 = v164;
    v79 = v165;
    v77[4] = v163;
    v77[5] = v78;
    v77[6] = v79;
    v80 = v160;
    *v77 = v159;
    v77[1] = v80;
    v81 = v162;
    v77[2] = v161;
    v77[3] = v81;
    v82 = v76;
    v83 = v128;
    sub_24E6009C8(v82, v128, &qword_27F24B0A8, &qword_24FA15C30);
    sub_24E6009C8(v83, v23, &qword_27F24B0A8, &qword_24FA15C30);
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v84 = v60;
  v85 = v23;
  (*(v141 + 56))(v23, v73, 1, v59);
  LODWORD(v142) = sub_24F62E41C(v57);
  v86 = v138;
  sub_24E60169C(v57 + *(v84 + 32), v138, &qword_27F21C0A0, &qword_24F9608E0);
  if (v134(v86, 1, v137) == 1)
  {
    sub_24E601704(v86, &qword_27F21C0A0, &qword_24F9608E0);
    v87 = 1;
    v88 = v150;
    v89 = v149;
    v90 = v154;
  }

  else
  {
    v91 = v143;
    sub_24F630CD4(v86, v143, type metadata accessor for AccessPointIconType);
    v92 = type metadata accessor for APHighlightIcon(0);
    v93 = v147;
    sub_24F62CFF8(v91, v147 + v92[6], type metadata accessor for AccessPointIconType);
    sub_24F9278A8();
    v94 = sub_24F923908();
    *v93 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v95 = v93 + v92[5];
    v155 = 0;
    sub_24F926F28();
    v96 = *(&v166 + 1);
    *v95 = v166;
    *(v95 + 1) = v96;
    *(v93 + v92[7]) = v94;
    *(v93 + v92[8]) = 0;
    *(v93 + v92[9]) = 1;
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v97 = (v93 + *(v145 + 36));
    v98 = v168;
    v97[1] = v167;
    v97[2] = v98;
    *v97 = v166;
    v99 = *(v57 + *(v84 + 48));
    if (v99 == 2 || (v99 & 1) == 0)
    {
      sub_24E63E314();
    }

    else
    {
      sub_24F62E754();
      v101 = v100 * 0.24;
      v102 = *(v122 + 20);
      v103 = *MEMORY[0x277CE0118];
      v104 = sub_24F924B38();
      v105 = v121;
      (*(*(v104 - 8) + 104))(v121 + v102, v103, v104);
      *v105 = v101;
      v105[1] = v101;
      sub_24F62847C(&qword_27F229928, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    }

    v106 = sub_24F927348();
    v88 = v150;
    v89 = v149;
    v90 = v154;
    sub_24F634DF4(v143, type metadata accessor for AccessPointIconType);
    v107 = v124;
    sub_24E6009C8(v147, v124, &qword_27F24B088, &qword_24FA15C10);
    v108 = v107 + *(v89 + 36);
    *v108 = v106;
    *(v108 + 8) = 256;
    v109 = v107;
    v110 = v123;
    sub_24E6009C8(v109, v123, &qword_27F24B090, &qword_24FA15C18);
    sub_24E6009C8(v110, v88, &qword_27F24B090, &qword_24FA15C18);
    v87 = 0;
  }

  (*(v148 + 56))(v88, v87, 1, v89);
  v111 = v144;
  sub_24E60169C(v90, v144, &qword_27F24B0C8, &qword_24FA15C50);
  v112 = v85;
  v113 = v146;
  sub_24E60169C(v85, v146, &qword_27F24B0B0, &qword_24FA15C38);
  v114 = v151;
  sub_24E60169C(v88, v151, &qword_27F24B098, &qword_24FA15C20);
  v115 = v152;
  sub_24E60169C(v111, v152, &qword_27F24B0C8, &qword_24FA15C50);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0E8, &qword_24FA15C58);
  sub_24E60169C(v113, v115 + v116[12], &qword_27F24B0B0, &qword_24FA15C38);
  v117 = v115 + v116[16];
  *v117 = 0;
  *(v117 + 8) = 0;
  *(v117 + 9) = (v142 & 1) == 0;
  sub_24E60169C(v114, v115 + v116[20], &qword_27F24B098, &qword_24FA15C20);
  sub_24E601704(v88, &qword_27F24B098, &qword_24FA15C20);
  sub_24E601704(v112, &qword_27F24B0B0, &qword_24FA15C38);
  sub_24E601704(v154, &qword_27F24B0C8, &qword_24FA15C50);
  sub_24E601704(v114, &qword_27F24B098, &qword_24FA15C20);
  sub_24E601704(v113, &qword_27F24B0B0, &qword_24FA15C38);
  return sub_24E601704(v111, &qword_27F24B0C8, &qword_24FA15C50);
}

uint64_t sub_24F630CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F630D3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for APHighlightSubtitle(0);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0F8, &qword_24FA15C98);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v58 - v14;
  v15 = type metadata accessor for APHighlightTitle(0);
  v66 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v64 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B100, &qword_24FA15CA0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v26 = a1[6];
  if (!v26)
  {
    goto LABEL_6;
  }

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = a1[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v61 = a1[5];
    v28 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 40));
    v60 = (v28 == 2) | v28;
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
    swift_storeEnumTagMultiPayload();
    v62 = v5;
    v29 = v15[5];
    *(v17 + v29) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v30 = v15[6];
    v63 = a2;
    v59 = (v17 + v30);
    type metadata accessor for APAnimationController(0);
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);

    v31 = sub_24F923598();
    v32 = v59;
    *v59 = v31;
    *(v32 + 8) = v33 & 1;
    a2 = v63;
    v34 = v17 + v15[7];
    v69 = 0;
    sub_24F926F28();
    v35 = v71;
    *v34 = v70;
    *(v34 + 1) = v35;
    v36 = (v17 + v15[8]);
    *v36 = v61;
    v36[1] = v26;
    *(v17 + v15[9]) = v60 & 1;
    v37 = v17;
    v38 = v64;
    sub_24F630CD4(v37, v64, type metadata accessor for APHighlightTitle);
    v5 = v62;
    sub_24F630CD4(v38, v25, type metadata accessor for APHighlightTitle);
    (*(v66 + 56))(v25, 0, 1, v15);
  }

  else
  {
LABEL_6:
    (*(v66 + 56))(&v58 - v24, 1, 1, v15);
  }

  v39 = a1[8];
  if (!v39)
  {
    goto LABEL_12;
  }

  v40 = a1;
  v41 = a1[7];
  v42 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v42 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(v40 + *(type metadata accessor for AccessPointHighlight(0) + 40));
    v66 = v6;
    LODWORD(v64) = (v43 == 2) | v43;
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v44 = a2;
    v45 = v8 + v5[5];
    type metadata accessor for APAnimationController(0);
    v46 = v25;
    v47 = v5;
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController, &protocol conformance descriptor for APAnimationController);

    *v45 = sub_24F923598();
    v45[8] = v48 & 1;
    a2 = v44;
    v49 = v8 + v5[6];
    v69 = 0;
    sub_24F926F28();
    v50 = v71;
    *v49 = v70;
    *(v49 + 1) = v50;
    v5 = v47;
    v25 = v46;
    v51 = (v8 + v5[7]);
    *v51 = v41;
    v51[1] = v39;
    v52 = v65;
    v6 = v66;
    *(v8 + v5[8]) = v64 & 1;
    sub_24F630CD4(v8, v52, type metadata accessor for APHighlightSubtitle);
    v53 = v67;
    sub_24F630CD4(v52, v67, type metadata accessor for APHighlightSubtitle);
    v54 = 0;
  }

  else
  {
LABEL_12:
    v54 = 1;
    v53 = v67;
  }

  (*(v6 + 56))(v53, v54, 1, v5);
  sub_24E60169C(v25, v22, &qword_27F24B100, &qword_24FA15CA0);
  v55 = v68;
  sub_24E60169C(v53, v68, &qword_27F24B0F8, &qword_24FA15C98);
  sub_24E60169C(v22, a2, &qword_27F24B100, &qword_24FA15CA0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B108, &qword_24FA15CA8);
  sub_24E60169C(v55, a2 + *(v56 + 48), &qword_27F24B0F8, &qword_24FA15C98);
  sub_24E601704(v53, &qword_27F24B0F8, &qword_24FA15C98);
  sub_24E601704(v25, &qword_27F24B100, &qword_24FA15CA0);
  sub_24E601704(v55, &qword_27F24B0F8, &qword_24FA15C98);
  return sub_24E601704(v22, &qword_27F24B100, &qword_24FA15CA0);
}

double sub_24F63144C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x25304D060](0.3, 0.9, 0.0);
  sub_24F923B18();

  return result;
}

uint64_t sub_24F6314D8()
{
  v1 = type metadata accessor for AccessPointHighlightComponent(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AccessPointHighlight(0);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v6 = v0 + v2;

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923E98();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v0 + v5;
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  v10 = (v0 + v5 + v4[7]);
  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = *(*(v11 - 8) + 48);
  if (!v12(v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload > 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    switch(EnumCaseMultiPayload)
    {
      case 3:
        v26 = sub_24F9289E8();
        (*(*(v26 - 8) + 8))(v10, v26);
        break;
      case 4:
LABEL_13:

        break;
      case 5:
        v14 = v10[1];
        if (v14 >> 60 != 15)
        {
          sub_24E627880(*v10, v14);
        }

        break;
    }
  }

LABEL_14:
  v15 = (v9 + v4[8]);
  if (v12(v15, 1, v11))
  {
    goto LABEL_24;
  }

  v16 = swift_getEnumCaseMultiPayload();
  if (v16 <= 2)
  {
    if (v16 > 2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  switch(v16)
  {
    case 3:
      v27 = sub_24F9289E8();
      (*(*(v27 - 8) + 8))(v15, v27);
      break;
    case 4:
LABEL_23:

      break;
    case 5:
      v17 = v15[1];
      if (v17 >> 60 != 15)
      {
        sub_24E627880(*v15, v17);
      }

      break;
  }

LABEL_24:
  v18 = (v9 + v4[13]);
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v19 = v4[14];
  v20 = sub_24F928818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v9 + v19, 1, v20))
  {
    (*(v21 + 8))(v9 + v19, v20);
  }

  v22 = v4[15];
  v23 = sub_24F929608();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v9 + v22, 1, v23))
  {
    (*(v24 + 8))(v9 + v22, v23);
  }

  return swift_deallocObject();
}

double sub_24F631994()
{
  v1 = *(type metadata accessor for AccessPointHighlightComponent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AccessPointHighlight(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24F63144C(v0 + v2, v5);
}

uint64_t sub_24F631A60(uint64_t a1, uint64_t a2)
{
  sub_24F62E53C(a2);
  type metadata accessor for AccessPointHighlightComponent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  return sub_24F926F48();
}

double sub_24F631B00(uint64_t a1)
{
  sub_24F923528();
  result = -20.0;
  if (v2 < -20.0)
  {
    v3 = sub_24F62E0D4();
    swift_beginAccess();
    if (*(v3 + 16) == 1)
    {
      *(v3 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F631C58()
{
  v1 = type metadata accessor for AccessPointHighlightComponent(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F631D90(uint64_t a1)
{
  type metadata accessor for AccessPointHighlightComponent(0);

  return sub_24F631B00(a1);
}

unint64_t sub_24F631E00()
{
  result = qword_27F24AEF0;
  if (!qword_27F24AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED8, &qword_24FA15620);
    sub_24F631E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEF0);
  }

  return result;
}

unint64_t sub_24F631E8C()
{
  result = qword_27F24AEF8;
  if (!qword_27F24AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED0, &qword_24FA15618);
    sub_24F631F44();
    sub_24E602068(&qword_27F24AF20, &qword_27F24AEE8, &qword_24FA15638, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEF8);
  }

  return result;
}

unint64_t sub_24F631F44()
{
  result = qword_27F24AF00;
  if (!qword_27F24AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEC8, &qword_24FA15610);
    sub_24F631FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AF00);
  }

  return result;
}

unint64_t sub_24F631FD0()
{
  result = qword_27F24AF08;
  if (!qword_27F24AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEC0, &qword_24FA15608);
    sub_24E602068(&qword_27F24AF10, &qword_27F24AF18, &qword_24FA15640, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AF08);
  }

  return result;
}

uint64_t sub_24F632290(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F62CFF8(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointHighlightComponent);
  sub_24F62847C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent, &protocol conformance descriptor for AccessPointHighlightComponent);
  return sub_24F9218E8();
}

double sub_24F632368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F6323C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(a1 + *(v4 + 52), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F632428(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AccessPointHighlight(0) + 52);

  return sub_24F634BEC(a1, v3);
}

uint64_t sub_24F632484(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_24F632628(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0, &qword_24F9608E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

void sub_24F6327B8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F632E64(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F6329FC(319, &qword_27F24AF48, type metadata accessor for AccessPointIconType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F632E64(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F632E64(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24F6331AC(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
            if (v6 <= 0x3F)
            {
              sub_24F6329FC(319, &qword_27F24AF50, MEMORY[0x277D21BF8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24F6329FC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
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

void sub_24F6329FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F632B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F632C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AccessPointIconType(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F632D64(uint64_t a1)
{
  sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessPointIconType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F632E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F632EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F632FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

void sub_24F633084(uint64_t a1)
{
  sub_24F6329FC(319, &qword_27F24AF88, type metadata accessor for AccessPointHighlightComponent.GestureHandler, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F6331AC(319, &qword_27F21CFF8, &qword_27F21CFA8, &qword_24F958530, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6331AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24F633224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24F91FDC8();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F6332E8()
{
  result = qword_27F24AFA0;
  if (!qword_27F24AFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AFA8, &qword_24FA15958);
    sub_24F62D27C();
    sub_24E9ED7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFA0);
  }

  return result;
}

uint64_t sub_24F633374()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED8, &qword_24FA15620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B50, &qword_24F95ACA0);
  sub_24F631E00();
  sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F63344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F63352C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F633614(uint64_t a1)
{
  sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F24AFC0, type metadata accessor for APAnimationController, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F63375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F633898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F6339DC(uint64_t a1)
{
  sub_24F6329FC(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F6329FC(319, &qword_27F24AFC0, type metadata accessor for APAnimationController, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F633B6C()
{
  result = qword_27F24AFD8;
  if (!qword_27F24AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFD8);
  }

  return result;
}

unint64_t sub_24F633BFC()
{
  result = qword_27F24AFE0;
  if (!qword_27F24AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFE0);
  }

  return result;
}

unint64_t sub_24F633C54()
{
  result = qword_27F24AFE8;
  if (!qword_27F24AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFE8);
  }

  return result;
}

uint64_t sub_24F633CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E696461656CLL && a2 == 0xEB000000006E6F63 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEC0000006E6F6349 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E41646C756F6873 && a2 == 0xED00006574616D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6953646C756F6873 && a2 == 0xEF7469466F54657ALL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA776C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F634094()
{
  result = qword_27F24B010;
  if (!qword_27F24B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B008, &qword_24FA15BC0);
    sub_24F634120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B010);
  }

  return result;
}

unint64_t sub_24F634120()
{
  result = qword_27F24B018;
  if (!qword_27F24B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B020, &qword_24FA15BC8);
    sub_24E6DC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B018);
  }

  return result;
}

uint64_t sub_24F6341DC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24F634258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF8, &qword_24FA15B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(type metadata accessor for APHighlightSubtitle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F634434()
{
  result = qword_27F24B028;
  if (!qword_27F24B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B000, &qword_24FA15B58);
    sub_24F6344C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B028);
  }

  return result;
}

unint64_t sub_24F6344C0()
{
  result = qword_27F24B030;
  if (!qword_27F24B030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AFF8, &qword_24FA15B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B008, &qword_24FA15BC0);
    sub_24F634094();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B030);
  }

  return result;
}

uint64_t sub_24F634588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B000, &qword_24FA15B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for APHighlightTitle(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F9234D8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923E98();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F6348C4()
{
  result = qword_27F24B050;
  if (!qword_27F24B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B048, &unk_24FA15BE0);
    sub_24F634950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B050);
  }

  return result;
}

unint64_t sub_24F634950()
{
  result = qword_27F24B058;
  if (!qword_27F24B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B040, &qword_24FA15BD8);
    sub_24F6349DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B058);
  }

  return result;
}

unint64_t sub_24F6349DC()
{
  result = qword_27F24B060;
  if (!qword_27F24B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B038, &qword_24FA15BD0);
    sub_24F634A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B060);
  }

  return result;
}

unint64_t sub_24F634A68()
{
  result = qword_27F24B068;
  if (!qword_27F24B068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B070, &qword_24FA15BF0);
    sub_24F634AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B068);
  }

  return result;
}

unint64_t sub_24F634AF4()
{
  result = qword_27F24B078;
  if (!qword_27F24B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B080, &qword_24FA15BF8);
    sub_24E6DC224();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B078);
  }

  return result;
}

uint64_t sub_24F634BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590, &unk_24F93BE30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F634C78()
{
  result = qword_27F24B0D0;
  if (!qword_27F24B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B0B8, &qword_24FA15C40);
    sub_24F634D30();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0, &qword_24F949650, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B0D0);
  }

  return result;
}

unint64_t sub_24F634D30()
{
  result = qword_27F24B0D8;
  if (!qword_27F24B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B088, &qword_24FA15C10);
    sub_24F62847C(&qword_27F24B0E0, type metadata accessor for APHighlightIcon, &protocol conformance descriptor for APHighlightIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B0D8);
  }

  return result;
}

uint64_t sub_24F634DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F634E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

double sub_24F634E68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAHyAcAE10fontWeightyQrAA4FontV0K0VSgFQOyAHyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGARyAKSgGGAA14_OpacityEffectVGAA06_ScaleS0VG_Qo_AA05_BlurS0VGAA017_AppearanceActionQ0VG_SiQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ArcadeSubscriptionEntitlementRequest.CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F635004()
{
  result = qword_27F24B130;
  if (!qword_27F24B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B130);
  }

  return result;
}

uint64_t sub_24F635058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F6350A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F635130()
{
  v1 = v0[10];
  if (!*(v1 + 56))
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *(v2 + 16) = v1;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_24F63536C;
    v4 = sub_24F636150;
    v5 = v0 + 8;
    goto LABEL_5;
  }

  if (*(v1 + 56) == 1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_24F6354EC;
    v4 = sub_24F635ECC;
    v5 = v0 + 4;
LABEL_5:
    v7 = 0x800000024FA77700;
    v8 = 0xD000000000000010;
    goto LABEL_7;
  }

  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_24F635964;
  v4 = sub_24F635EC4;
  v5 = v0 + 2;
  v8 = 0xD000000000000011;
  v7 = 0x800000024FA776E0;
LABEL_7:

  return MEMORY[0x2822008A0](v5, 0, 0, v8, v7, v4, v2, &type metadata for ArcadeSubscriptionEntitlementRequest.EntitlementResponse);
}

uint64_t sub_24F63536C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F635488;
  }

  else
  {

    v2 = sub_24F635B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6354EC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24F63574C;
  }

  else
  {

    v2 = sub_24F635608;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635608()
{
  v1 = *(v0 + 32);
  if (*(v0 + 41))
  {
    v2 = *(v0 + 80);

    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_24F6357B0;

    return MEMORY[0x2822008A0](v0 + 48, 0, 0, 0xD000000000000011, 0x800000024FA776E0, sub_24F63614C, v3, &type metadata for ArcadeSubscriptionEntitlementRequest.EntitlementResponse);
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 8);

    return v6(v1, v5);
  }
}

uint64_t sub_24F63574C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6357B0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24F635900;
  }

  else
  {

    v2 = sub_24F6358CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6358CC()
{
  if (*(v0 + 57))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 48), v1 | *(v0 + 56));
}

uint64_t sub_24F635900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F635964()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24F635AB4;
  }

  else
  {

    v2 = sub_24F635A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635A80()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_24F635AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F635B18()
{
  if (*(v0 + 73))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 64), v1 | *(v0 + 72));
}

double sub_24F635B4C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 16))(1, sub_24F635ED8, v10, v11, v12);

  return result;
}

uint64_t sub_24F635CBC(void *a1, char a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
    return sub_24F92B798();
  }
}

double sub_24F635D50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 8))(1, 1, sub_24F636094, v10, v11, v12);

  return result;
}

uint64_t sub_24F635ED8(void *a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);

  return sub_24F635CBC(a1, a2, a3);
}

uint64_t sub_24F635F6C(void *a1, char a2, char a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
    return sub_24F92B798();
  }
}

uint64_t objectdestroyTm_78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F636094(void *a1, char a2, char a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138, &qword_24FA15DF8);

  return sub_24F635F6C(a1, a2, a3, a4);
}

uint64_t ChallengesHistoryFriendsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengesHistoryFriendsShelfIntent(uint64_t a1)
{
  result = qword_27F24B158;
  if (!qword_27F24B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ChallengesHistoryFriendsShelfIntent.friendHistories.getter()
{
  type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);

  return result;
}

uint64_t ChallengesHistoryFriendsShelfIntent.displayType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ChallengesHistoryFriendsShelfIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChallengesHistoryFriendsShelfIntent(0) + 36));

  return v1;
}

unint64_t ChallengesHistoryFriendsShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v7 = type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24F637078(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F6370C0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x6948646E65697266;
  *(inited + 152) = 0xEF736569726F7473;
  v10 = *(v1 + v7[6]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980, &unk_24F946630);
  v11 = sub_24F636FDC(&qword_27F217988, &qword_27F217990, &protocol conformance descriptor for ChallengesHistoryData.FriendHistory, MEMORY[0x277D22590]);
  *(inited + 160) = v10;
  *(inited + 192) = v11;
  *(inited + 200) = 0x796C6E4F6E6977;
  *(inited + 208) = 0xE700000000000000;
  v12 = *(v1 + v7[7]);
  v13 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v13;
  *(inited + 216) = v12;
  *(inited + 256) = 0x5479616C70736964;
  *(inited + 264) = 0xEB00000000657079;
  v14 = *(v1 + v7[8]);
  *(inited + 296) = &type metadata for ChallengesShelfDisplayType;
  v15 = sub_24E7C96C0();
  *(inited + 272) = v14;
  *(inited + 304) = v15;
  *(inited + 312) = 0x4449656C646E7562;
  *(inited + 320) = 0xE800000000000000;
  v16 = (v1 + v7[9]);
  v18 = *v16;
  v17 = v16[1];
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 360) = sub_24E605DB4();
  *(inited + 328) = v18;
  *(inited + 336) = v17;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F636610()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x796C6E4F6E6977;
  v4 = 0x5479616C70736964;
  if (v1 != 4)
  {
    v4 = 0x4449656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616C506C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6948646E65697266;
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

uint64_t sub_24F6366E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F637534(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F63670C(uint64_t a1)
{
  v2 = sub_24F636F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F636748(uint64_t a1)
{
  v2 = sub_24F636F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryFriendsShelfIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B140, &qword_24FA15E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F636F88();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24F637078(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980, &unk_24F946630);
    sub_24F636FDC(&qword_27F2179C0, &qword_27F2179C8, &protocol conformance descriptor for ChallengesHistoryData.FriendHistory, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v11[14] = 3;
    sub_24F92CD18();
    v11[13] = *(v3 + *(v9 + 32));
    v11[12] = 4;
    sub_24F3F9670();
    sub_24F92CD48();
    v11[11] = 5;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengesHistoryFriendsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B150, &qword_24FA15E78);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ChallengesHistoryFriendsShelfIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F636F88();
  v26 = v8;
  v12 = v27;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v5;
  v14 = v24;
  v15 = v25;
  v35 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v16;
  v34 = 1;
  sub_24F637078(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v13, v11 + v9[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980, &unk_24F946630);
  v33 = 2;
  sub_24F636FDC(&qword_27F2179E8, &qword_27F2179F0, &protocol conformance descriptor for ChallengesHistoryData.FriendHistory, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v17 = a1;
  *(v11 + v9[6]) = v28;
  v32 = 3;
  *(v11 + v9[7]) = sub_24F92CC38() & 1;
  v30 = 4;
  sub_24F368F98();
  sub_24F92CC68();
  *(v11 + v9[8]) = v31;
  v29 = 5;
  v18 = sub_24F92CBC8();
  v20 = v19;
  (*(v14 + 8))(v26, v15);
  v21 = (v11 + v9[9]);
  *v21 = v18;
  v21[1] = v20;
  sub_24F6370C0(v11, v23, type metadata accessor for ChallengesHistoryFriendsShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24F637128(v11, type metadata accessor for ChallengesHistoryFriendsShelfIntent);
}

unint64_t sub_24F636F88()
{
  result = qword_27F24B148;
  if (!qword_27F24B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B148);
  }

  return result;
}

uint64_t sub_24F636FDC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217980, &unk_24F946630);
    sub_24F637078(a2, type metadata accessor for ChallengesHistoryData.FriendHistory, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F637078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6370C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F637128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F63719C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F63725C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F637300(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F6373C4(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6373C4(uint64_t a1)
{
  if (!qword_27F24B168)
  {
    type metadata accessor for ChallengesHistoryData.FriendHistory(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F24B168);
    }
  }
}

unint64_t sub_24F637430()
{
  result = qword_27F24B170;
  if (!qword_27F24B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B170);
  }

  return result;
}

unint64_t sub_24F637488()
{
  result = qword_27F24B178;
  if (!qword_27F24B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B178);
  }

  return result;
}

unint64_t sub_24F6374E0()
{
  result = qword_27F24B180;
  if (!qword_27F24B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B180);
  }

  return result;
}

uint64_t sub_24F637534(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6948646E65697266 && a2 == 0xEF736569726F7473 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_24F637750(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = sub_24F91F648();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_24F637978(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = sub_24F91F648();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

void sub_24F637BAC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              sub_24F91F648();
              if (v7 <= 0x3F)
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

uint64_t sub_24F637D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24F637D70(int a1, __n128 a2)
{
  v32 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08, &qword_24F9FAD50);
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v27 - v8;
  v10 = (v2 + *(type metadata accessor for ChallengeCard(0) + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(*v10 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v28 = v10[1];
    v29 = a1;
    v33 = MEMORY[0x277D84F90];
    v30 = v13;
    result = sub_24F457C3C(0, v13, 0);
    v16 = 0;
    v14 = v33;
    v17 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v16 < *(v12 + 16))
    {
      v18 = v4;
      sub_24F639DD0(v17 + *(v4 + 72) * v16, v6, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v19 = &v9[*(v31 + 48)];
      sub_24F639DD0(v6, v9, type metadata accessor for PlayerAvatar);
      v20 = &v6[*(v32 + 20)];
      v21 = *v20;
      LOBYTE(v20) = v20[8];
      *v19 = v21;
      v19[8] = v20;
      sub_24F19A0B4(v6, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v33 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_24F457C3C((v22 > 1), v23 + 1, 1);
        v14 = v33;
      }

      ++v16;
      v14[2] = v23 + 1;
      result = sub_24E6009C8(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, &qword_27F217C08, &qword_24F9FAD50);
      v4 = v18;
      if (v30 == v16)
      {
        LOBYTE(a1) = v29;
        v11 = v28;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    if (a1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 4;
    }

    if (a1)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }

    v26 = sub_24F5289A8(v11, 0, v14, v25, v24);

    return v26;
  }

  return result;
}

uint64_t sub_24F638078(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B268, &qword_24FA16578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A984();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for PlayerAvatar(0);
  sub_24F637D08(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
    v8[14] = 1;
    sub_24F92CCE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F638238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B258, &qword_24FA16570);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A984();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_24F637D08(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  v14 = v25;
  v13 = v26;
  sub_24F92CC68();
  sub_24E7CB43C(v14, v11, type metadata accessor for PlayerAvatar);
  v27 = 1;
  v15 = sub_24F92CC08();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = v11 + *(v22 + 20);
  *v19 = v15;
  *(v19 + 8) = v17 & 1;
  sub_24F639DD0(v11, v18, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F19A0B4(v11, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
}

uint64_t sub_24F638574(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B200, &qword_24FA162F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F63A1E4();
  sub_24F92D128();
  v12 = a2;
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1E8, &qword_24FA162E8);
  sub_24F63A238(&qword_27F24B208, &qword_27F24B210, &unk_24FA16480, MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v3)
  {
    v11[14] = 1;
    sub_24F92CD38();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F638760(uint64_t a1)
{
  v2 = sub_24F63A984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F63879C(uint64_t a1)
{
  v2 = sub_24F63A984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F638808()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_24F638850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77760 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F638938(uint64_t a1)
{
  v2 = sub_24F63A1E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F638974(uint64_t a1)
{
  v2 = sub_24F63A1E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6389B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F639E38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_24F638A04()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F638AE8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F638BB8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F638C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F63A048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F638CC8(unint64_t *a1@<X8>)
{
  v2 = 0xED00006275487365;
  v3 = 0x676E656C6C616863;
  v4 = 0x800000024FA40430;
  v5 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  if (*v1)
  {
    v3 = 0x61746544656D6167;
    v2 = 0xEB00000000736C69;
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

unint64_t sub_24F638DCC()
{
  result = qword_27F24B198;
  if (!qword_27F24B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B198);
  }

  return result;
}

uint64_t sub_24F638E20(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x4D747865746E6F63;
    v8 = 0xD000000000000014;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6575676573;
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
    v1 = 0x73656D6954646E65;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 0x747865746E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E6F6349656D6167;
    v4 = 0x656D614E656D6167;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
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

uint64_t sub_24F638F90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_24F91F648();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9289E8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1B0, &unk_24FA162D0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v42 - v15;
  v17 = type metadata accessor for ChallengeCard(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v59 = v19 + 40;
  sub_24E61DA68(&v60, (v19 + 40), qword_27F21B590, &unk_24F93BE30);
  v57 = v17;
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v58 = v20;
  v56 = v19;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F63A094();
  v48 = v16;
  v24 = v54;
  sub_24F92D108();
  if (v24)
  {
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(v59, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v25 + v58, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v54 = v11;
    v42 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v63 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v26 = v61;
    v27 = v56;
    *v56 = v60;
    v27[1] = v26;
    *(v27 + 4) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v63 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v57;
    sub_24E61DA68(&v60, v59, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v60) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v14, v27 + v58, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v60) = 3;
    sub_24F637D08(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v29 = v54;
    sub_24F92CC18();
    sub_24E6009C8(v29, v27 + v28[7], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v60) = 4;
    sub_24F637D08(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v30 = v42;
    sub_24F92CC68();
    sub_24E7CB43C(v30, v27 + v28[8], type metadata accessor for CommonCardAttributes);
    LOBYTE(v60) = 5;
    sub_24F637D08(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v31 = v45;
    v32 = v53;
    sub_24F92CC68();
    (*(v52 + 32))(v27 + v28[9], v31, v32);
    LOBYTE(v60) = 6;
    v33 = sub_24F92CC28();
    v34 = (v27 + v28[10]);
    *v34 = v33;
    v34[1] = v35;
    v63 = 7;
    sub_24F63A0E8();
    sub_24F92CC68();
    v36 = *(&v60 + 1);
    v37 = (v27 + v28[11]);
    *v37 = v60;
    v37[1] = v36;
    LOBYTE(v60) = 8;
    sub_24F637D08(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v38 = v44;
    sub_24F92CC68();
    (*(v50 + 32))(v27 + v28[12], v38, v51);
    LOBYTE(v60) = 9;
    sub_24F92CC48();
    *(v56 + v57[13]) = v39;
    v63 = 10;
    sub_24F63A13C();
    sub_24F92CC68();
    (*(v47 + 8))(v48, v49);
    v40 = v56;
    *(v56 + v57[14]) = v60;
    sub_24F639DD0(v40, v43, type metadata accessor for ChallengeCard);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24F19A0B4(v40, type metadata accessor for ChallengeCard);
  }
}

uint64_t sub_24F639B34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F63A608(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F639B5C(uint64_t a1)
{
  v2 = sub_24F63A094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F639B98(uint64_t a1)
{
  v2 = sub_24F63A094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F639C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F639CE4(uint64_t a1)
{
  *(a1 + 8) = sub_24F637D08(&qword_27F21AAC0, type metadata accessor for ChallengeCard, &unk_24FA16288);
  result = sub_24F637D08(&qword_27F24B1A0, type metadata accessor for ChallengeCard, &unk_24FA16244);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F639DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F639E38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1D8, &qword_24FA162E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24F63A1E4();
  sub_24F92D108();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B1E8, &qword_24FA162E8);
    v9[7] = 0;
    sub_24F63A238(&qword_27F24B1F0, &qword_27F24B1F8, &unk_24FA164A8, MEMORY[0x277D83978]);
    sub_24F92CC68();
    v7 = v10;
    v9[6] = 1;
    sub_24F92CC58();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F63A048(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F63A094()
{
  result = qword_27F24B1B8;
  if (!qword_27F24B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1B8);
  }

  return result;
}

unint64_t sub_24F63A0E8()
{
  result = qword_27F24B1C0;
  if (!qword_27F24B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1C0);
  }

  return result;
}

unint64_t sub_24F63A13C()
{
  result = qword_27F24B1C8;
  if (!qword_27F24B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1C8);
  }

  return result;
}

unint64_t sub_24F63A190()
{
  result = qword_27F24B1D0;
  if (!qword_27F24B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1D0);
  }

  return result;
}

unint64_t sub_24F63A1E4()
{
  result = qword_27F24B1E0;
  if (!qword_27F24B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B1E0);
  }

  return result;
}

uint64_t sub_24F63A238(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B1E8, &qword_24FA162E8);
    sub_24F637D08(a2, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F63A308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F63A388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F63A3FC()
{
  result = qword_27F24B228;
  if (!qword_27F24B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B228);
  }

  return result;
}

unint64_t sub_24F63A454()
{
  result = qword_27F24B230;
  if (!qword_27F24B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B230);
  }

  return result;
}

unint64_t sub_24F63A4AC()
{
  result = qword_27F24B238;
  if (!qword_27F24B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B238);
  }

  return result;
}

unint64_t sub_24F63A504()
{
  result = qword_27F24B240;
  if (!qword_27F24B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B240);
  }

  return result;
}

unint64_t sub_24F63A55C()
{
  result = qword_27F24B248;
  if (!qword_27F24B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B248);
  }

  return result;
}

unint64_t sub_24F63A5B4()
{
  result = qword_27F24B250;
  if (!qword_27F24B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B250);
  }

  return result;
}

uint64_t sub_24F63A608(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77720 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656D6954646E65 && a2 == 0xEC000000706D6174 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA77740 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

unint64_t sub_24F63A984()
{
  result = qword_27F24B260;
  if (!qword_27F24B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B260);
  }

  return result;
}

unint64_t sub_24F63A9EC()
{
  result = qword_27F24B270;
  if (!qword_27F24B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B270);
  }

  return result;
}

unint64_t sub_24F63AA44()
{
  result = qword_27F24B278;
  if (!qword_27F24B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B278);
  }

  return result;
}

unint64_t sub_24F63AA9C()
{
  result = qword_27F24B280;
  if (!qword_27F24B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B280);
  }

  return result;
}

uint64_t sub_24F63AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AchievementProgressStatus(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}