uint64_t sub_274167694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274165AE4(a1, v4, v5, v1 + 32);
}

uint64_t sub_274167744(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274165D6C(a1, v4, v5, v1 + 32);
}

unint64_t sub_274167814()
{
  result = qword_28093A738;
  if (!qword_28093A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A738);
  }

  return result;
}

unint64_t sub_274167868()
{
  result = qword_28093A740;
  if (!qword_28093A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A730, &qword_2741D4C78);
    sub_2741678EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A740);
  }

  return result;
}

unint64_t sub_2741678EC()
{
  result = qword_28093A748;
  if (!qword_28093A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A750, &qword_2741D4C80);
    sub_2740A6D24(&qword_28093A758, &qword_28093A760, &qword_2741D4C88, MEMORY[0x277CDF028]);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A748);
  }

  return result;
}

uint64_t sub_2741679D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274167A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A728, &qword_2741D4C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274167AB0()
{
  result = qword_28093A778;
  if (!qword_28093A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A770, &qword_2741D4CA8);
    sub_2740A6D24(&qword_28093A780, &qword_28093A788, &qword_2741D4CB0, MEMORY[0x277CE1138]);
    sub_2740A6D24(&qword_28093A790, &qword_28093A798, &qword_2741D4CB8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A778);
  }

  return result;
}

uint64_t sub_274167BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2741C6F8C();
  *a1 = result;
  return result;
}

unint64_t sub_274167C04()
{
  result = qword_28093A7E8;
  if (!qword_28093A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7E0, &unk_2741D4E20);
    sub_2740A6D24(&qword_280939E38, &qword_280939E40, &qword_2741D2C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7E8);
  }

  return result;
}

unint64_t sub_274167CBC()
{
  result = qword_28093A7F0;
  if (!qword_28093A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7D0, &unk_2741D4D48);
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    sub_274167C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7F0);
  }

  return result;
}

unint64_t sub_274167D74()
{
  result = qword_28093A7F8;
  if (!qword_28093A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A7B8, &qword_2741D4D30);
    sub_274167C04();
    sub_274168064(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A7F8);
  }

  return result;
}

unint64_t sub_274167E40()
{
  result = qword_28093A810;
  if (!qword_28093A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A808, &qword_2741D4E38);
    sub_2740A6D24(&qword_28093A818, &qword_28093A820, &qword_2741D4E40, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A810);
  }

  return result;
}

uint64_t sub_274167EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27409D648;

  return sub_274163AC0(a1, v4, v5, v1 + 32);
}

uint64_t sub_274167FC4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_27409861C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274168014(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_2740A6AC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274168064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_15()
{
  sub_274166974(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_56Tm()
{
  sub_274166974(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();
  sub_274166974(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2741681C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2740A7434;

  return sub_274164D70(a1, v4, v5, v1 + 32);
}

uint64_t sub_274168274()
{
  swift_unknownObjectRelease();
  sub_274166974(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2741682D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_274164FFC(a1, v4, v5, (v1 + 4), v6);
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

uint64_t sub_2741683B4(uint64_t a1, int a2)
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

uint64_t sub_2741683FC(uint64_t result, int a2, int a3)
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

unint64_t sub_274168454()
{
  result = qword_28093A868;
  if (!qword_28093A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A6F8, &unk_2741D4B50);
    sub_2741684E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A868);
  }

  return result;
}

unint64_t sub_2741684E0()
{
  result = qword_28093A870;
  if (!qword_28093A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A6F0, &qword_2741D4B48);
    sub_2740A6D24(&qword_28093A878, &qword_28093A880, qword_2741D4FB8, MEMORY[0x277CDD978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A870);
  }

  return result;
}

unint64_t sub_2741685DC()
{
  result = qword_28093A8B8;
  if (!qword_28093A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A898, &qword_2741D5070);
    sub_2740A6D24(&qword_28093A8C0, &qword_28093A888, &qword_2741D5060, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A8B8);
  }

  return result;
}

void sub_274168748(uint64_t a1)
{
  sub_274168824(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274168824(319, &qword_28093A8E8, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274168824(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2741688A4(void (*a1)(uint64_t *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for KnownNetwork(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2741C69CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2741C69DC();
  sub_27416A81C(&qword_28093A9B8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v12 = sub_2741C823C();
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v36 = MEMORY[0x277D84F90];
  v31 = v12;
  sub_27419897C(0, v12 & ~(v12 >> 63), 0);
  v13 = v36;
  v30 = v10;
  sub_2741C822C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v25 = v7;
    v26 = v6;
    for (i = 0; ; ++i)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v16 = sub_2741C825C();
      v34 = *v17;
      v16(v35, 0);
      v18 = v5;
      v19 = v33;
      v28(&v34);
      v33 = v19;
      if (v19)
      {
        goto LABEL_13;
      }

      v36 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_27419897C((v20 > 1), v21 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
      v5 = v18;
      sub_27416C394(v18, v22, type metadata accessor for KnownNetwork);
      v23 = v30;
      sub_2741C824C();
      if (v15 == v31)
      {
        (*(v25 + 8))(v23, v26);
        return v13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  (*(v25 + 8))(v30, v26);

  __break(1u);
  return result;
}

uint64_t sub_274168BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EditableKnownNetworkSection(0);
  v4 = v3 - 8;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v22 - v10);
  v12 = (v1 + *(type metadata accessor for KnownNetworksSectionTable(0) + 20));
  v25 = *v12;
  v26 = *(v12 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F8, &qword_2741D51A0);
  sub_2741C7B1C();
  v13 = v23;
  type metadata accessor for KnownNetworksViewModel(0);
  v22 = v24;
  swift_allocObject();
  v14 = KnownNetworksViewModel.init()();
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  v15 = v11 + *(v4 + 28);
  *v15 = v13;
  *(v15 + 8) = v22;
  v16 = (v11 + *(v4 + 32));
  v23 = v14;
  sub_2741C7A2C();
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  swift_allocObject();
  v23 = KnownNetworksViewModel.init()();
  sub_2741C7A2C();
  v18 = v25;
  v19 = v26;
  sub_27416A864(v11, v8, type metadata accessor for EditableKnownNetworkSection);
  sub_27416A864(v8, a1, type metadata accessor for EditableKnownNetworkSection);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A900, &qword_2741D51E0) + 48));
  *v20 = v18;
  v20[1] = v19;

  sub_274169F38(v11);

  return sub_274169F38(v8);
}

uint64_t sub_274168E48@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_2741C743C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v47 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditableKnownNetworkSection(0);
  v40[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v40[1] = v7;
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A960, &qword_2741D5330);
  MEMORY[0x28223BE20](v44, v8);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A968, &qword_2741D5338);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v42 = v40 - v13;
  v43 = v1;
  v51 = v1;
  if (qword_280937678 != -1)
  {
    swift_once();
  }

  v52 = xmmword_280946428;
  sub_2740A6A74();

  v14 = sub_2741C76AC();
  v16 = v15;
  v18 = v17;
  *&v52 = sub_2741C7EDC();
  *(&v52 + 1) = v19;
  v20 = sub_2741C765C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_2740A6AC8(v14, v16, v18 & 1);

  *&v52 = v20;
  *(&v52 + 1) = v22;
  v53 = v24 & 1;
  v54 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A970, &unk_2741D5340);
  sub_27416A8D4();
  sub_2741C7B7C();
  v27 = v43;
  v28 = v41;
  sub_27416A864(v43, v41, type metadata accessor for EditableKnownNetworkSection);
  v29 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
  v30 = swift_allocObject();
  sub_27416C394(v28, v30 + v29, type metadata accessor for EditableKnownNetworkSection);
  v31 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A980, &qword_2741D5358) + 36)];
  *v31 = sub_27416A990;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  sub_27416A864(v27, v28, type metadata accessor for EditableKnownNetworkSection);
  v32 = swift_allocObject();
  sub_27416C394(v28, v32 + v29, type metadata accessor for EditableKnownNetworkSection);
  v33 = v44;
  v34 = &v10[*(v44 + 36)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = sub_27416AB54;
  *(v34 + 3) = v32;
  v35 = v47;
  sub_2741C742C();
  v36 = sub_27416ABC4();
  v37 = v42;
  sub_2741C77DC();
  (*(v48 + 8))(v35, v49);
  sub_27409D420(v10, &qword_28093A960, &qword_2741D5330);
  sub_2741C7EDC();
  *&v52 = v33;
  *(&v52 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_2741C780C();

  return (*(v45 + 8))(v37, v38);
}

uint64_t sub_274169368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditableKnownNetworkSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v14[1] = *(a1 + *(MEMORY[0x28223BE20](v4 - 8, v7) + 32) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  v14[0] = v15;
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v8 = *(v15 + 24);

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  type metadata accessor for KnownNetworkRowView(0);
  sub_2740A6D24(&qword_28093A950, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277D83980]);
  sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView, &unk_2741D53B8);
  sub_27416A81C(&qword_28093A958, type metadata accessor for KnownNetwork, &unk_2741D2990);
  sub_2741C7B6C();
  sub_27416A864(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditableKnownNetworkSection);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_27416C394(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for EditableKnownNetworkSection);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_27416AD10;
  *(v11 + 24) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A970, &unk_2741D5340);
  v13 = (a2 + *(result + 36));
  *v13 = sub_27416C220;
  v13[1] = v11;
  return result;
}

uint64_t sub_2741696B4(uint64_t a1)
{
  v20 = v1;
  v2 = sub_2741688A4(sub_27416C248, v19);
  v3 = type metadata accessor for EditableKnownNetworkSection(0);
  v4 = (v1 + *(v3 + 20));
  v6 = v4[1];
  v7 = v4[2];
  v25 = *v4;
  v5 = v25;
  v26 = v6;
  v27 = v7;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F8, &qword_2741D51A0);
  MEMORY[0x2743E5B70](v28);
  sub_27416C268(v2);
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v21 = v28[0];
  sub_2741C7AFC();

  v8 = (v1 + *(v3 + 24));
  v10 = *v8;
  v9 = v8[1];
  v25 = v10;
  v26 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  v11 = v22;
  swift_getKeyPath();
  v25 = v11;
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  v25 = v11;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  sub_2740A6D24(&qword_28093A9A8, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277D83960]);
  sub_2740A6D24(&qword_28093A9B0, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277D83990]);
  sub_2741C826C();
  swift_endAccess();
  v25 = v11;
  swift_getKeyPath();
  sub_2741C6A1C();

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_2741C856C();

  v22 = 0xD000000000000022;
  v23 = 0x80000002741E2870;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  MEMORY[0x2743E5B70](v28, v18);
  v12 = v28[0];
  v13 = type metadata accessor for KnownNetwork(0);
  v14 = MEMORY[0x2743E6080](v12, v13);
  v16 = v15;

  MEMORY[0x2743E5FB0](v14, v16);

  sub_2740CB460(v22, v23);
}

uint64_t sub_274169A2C(uint64_t a1, unsigned int *a2)
{
  v28 = a2;
  v3 = sub_2741C7C0C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2741C70AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v25 - v18;
  sub_2740A6D94(a1, v15, &qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2740A6C18(v15, v19, &qword_280938680, &qword_2741D5140);
  }

  else
  {
    sub_2741C82AC();
    v20 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v7);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v21 - 8) + 48))(v19, 1, v21) == 1)
  {
    v22 = &qword_280938680;
    v23 = &qword_2741D5140;
  }

  else
  {
    (*(v26 + 104))(v6, *v28, v27);
    sub_2741C7AFC();
    v22 = &qword_280938710;
    v23 = &qword_2741D5350;
  }

  return sub_27409D420(v19, v22, v23);
}

uint64_t sub_274169D80@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for EditableKnownNetworkSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  swift_beginAccess();
  v5 = *(v8 + 24);

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v5 + 16))
  {
    v7 = *(type metadata accessor for KnownNetwork(0) - 8);
    sub_27416A864(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, a3, type metadata accessor for KnownNetwork);
  }

  __break(1u);
  return result;
}

uint64_t sub_274169F38(uint64_t a1)
{
  v2 = type metadata accessor for EditableKnownNetworkSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_27416A160(uint64_t a1)
{
  sub_274168824(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274168824(319, &qword_28093A8E8, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_27416C680(319, &qword_28093A918, type metadata accessor for KnownNetworksViewModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27416A304(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  swift_getKeyPath();
  sub_27416A81C(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  sub_2741C6A0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  type metadata accessor for KnownNetworkRowView(0);
  sub_2740A6D24(&qword_28093A950, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277D83980]);
  sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView, &unk_2741D53B8);
  sub_27416A81C(&qword_28093A958, type metadata accessor for KnownNetwork, &unk_2741D2990);
  return sub_2741C7B6C();
}

uint64_t sub_27416A4F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_27416A864(a1, a3, type metadata accessor for KnownNetwork);
  type metadata accessor for CurrentNetworkModel(0);
  sub_27416A81C(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  v5 = sub_2741C6CEC();
  v7 = v6;
  v8 = type metadata accessor for KnownNetworkRowView(0);
  *(a3 + v8[5]) = a2;
  v9 = a3 + v8[6];
  result = sub_2741C7A2C();
  *v9 = v12;
  *(v9 + 8) = v13;
  v11 = a3 + v8[7];
  *v11 = v5;
  *(v11 + 8) = v7 & 1;
  return result;
}

uint64_t sub_27416A5FC()
{
  if (qword_280937680 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  sub_2741C76AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A930, &qword_2741D52F8);
  sub_27416A708();
  return sub_2741C7B7C();
}

unint64_t sub_27416A708()
{
  result = qword_28093A938;
  if (!qword_28093A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A930, &qword_2741D52F8);
    sub_27416A81C(&qword_28093A940, type metadata accessor for KnownNetworkRowView, &unk_2741D53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A938);
  }

  return result;
}

uint64_t sub_27416A7DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27416A81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27416A864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_27416A8D4()
{
  result = qword_28093A978;
  if (!qword_28093A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A970, &unk_2741D5340);
    sub_27416A708();
    sub_2740A6D24(&qword_280938840, &qword_280938848, &qword_2741CCA08, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A978);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = *(type metadata accessor for EditableKnownNetworkSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_2741C7C0C();
      (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_27416ABC4()
{
  result = qword_28093A988;
  if (!qword_28093A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A960, &qword_2741D5330);
    sub_27416AC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A988);
  }

  return result;
}

unint64_t sub_27416AC50()
{
  result = qword_28093A990;
  if (!qword_28093A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A980, &qword_2741D5358);
    sub_27416C728(&qword_28093A998, &qword_28093A9A0, &qword_2741D5360, sub_27416A8D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A990);
  }

  return result;
}

uint64_t sub_27416AD74()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for KnownNetworkRowView(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2741C82AC();
    v9 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_27416AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA00, &unk_2741D5410);
  v83 = *(v3 - 8);
  v84 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v82 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v87 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D0, &qword_2741CF940);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v71 - v11;
  v13 = sub_2741C717C();
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381D8, &unk_2741D5420);
  MEMORY[0x28223BE20](v74, v16);
  v75 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381E0, &qword_2741D42A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA08, &qword_2741D5430);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v88 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v71 - v28;
  if (*(a1 + *(type metadata accessor for KnownNetworkRowView(0) + 20)))
  {
    sub_27416C9A0(&v100);
  }

  else
  {
    sub_2741C7C1C();
    sub_2741C6F1C();
    *&v91[71] = v97;
    *&v91[55] = v96;
    *&v91[103] = v99;
    *&v91[87] = v98;
    *&v91[23] = v94;
    *&v91[7] = v93;
    *&v91[39] = v95;
    *(&v89[4] + 9) = *&v91[64];
    *(&v89[5] + 9) = *&v91[80];
    *(&v89[6] + 9) = *&v91[96];
    *(v89 + 9) = *v91;
    *(&v89[1] + 9) = *&v91[16];
    *(&v89[2] + 9) = *&v91[32];
    v92 = 1;
    *&v89[0] = 0;
    BYTE8(v89[0]) = 1;
    *(&v89[7] + 1) = *(&v99 + 1);
    *(&v89[3] + 9) = *&v91[48];
    sub_27416C8D0(v89);
    v106 = v89[6];
    v107 = v89[7];
    v108 = v90;
    v102 = v89[2];
    v103 = v89[3];
    v104 = v89[4];
    v105 = v89[5];
    v100 = v89[0];
    v101 = v89[1];
  }

  *&v89[0] = sub_27411741C();
  *(&v89[0] + 1) = v30;
  sub_2740A6A74();
  v31 = sub_2741C76AC();
  v85 = v32;
  v86 = v31;
  v79 = v33;
  v81 = v34;
  v35 = 1;
  if ((*(a1 + 48) & 1) == 0)
  {
    *&v89[0] = sub_2741C79CC();
    sub_2741C714C();
    v71 = v22;
    v72 = v13;
    v73 = a1;
    v36 = v75;
    sub_2741C77AC();

    v37 = v76;
    sub_2741C716C();
    v38 = v71;
    sub_2741C6E5C();
    (*(v78 + 8))(v37, v72);
    sub_27409D420(v36, &qword_2809381D8, &unk_2741D5420);
    v39 = sub_2741C75AC();
    (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
    v40 = sub_2741C75CC();
    sub_27409D420(v12, &qword_2809381D0, &qword_2741CF940);
    KeyPath = swift_getKeyPath();
    v42 = (v38 + *(v18 + 36));
    *v42 = KeyPath;
    v42[1] = v40;
    sub_2740A6C18(v38, v29, &qword_2809381E0, &qword_2741D42A0);
    v35 = 0;
  }

  v43 = (*(v19 + 56))(v29, v35, 1, v18);
  MEMORY[0x28223BE20](v43, v44);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA10, &qword_2741D5468);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A600, &unk_2741D5470);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AA18, &qword_2741D6CD0);
  v47 = v29;
  v77 = v29;
  v48 = v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A610, &unk_2741D5480);
  v50 = sub_2741C732C();
  v51 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480, MEMORY[0x277CDF028]);
  v52 = sub_27416A81C(&qword_28093A620, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  *&v89[0] = v49;
  *(&v89[0] + 1) = v50;
  *&v89[1] = v51;
  *(&v89[1] + 1) = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_27416C8E8();
  *&v89[0] = v45;
  *(&v89[0] + 1) = v48;
  *&v89[1] = OpaqueTypeConformance2;
  *(&v89[1] + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v87;
  sub_2741C6E8C();
  v89[6] = v106;
  v89[7] = v107;
  v90 = v108;
  v89[2] = v102;
  v89[3] = v103;
  v89[4] = v104;
  v89[5] = v105;
  v89[0] = v100;
  v89[1] = v101;
  sub_2740A6D94(v47, v88, &qword_28093AA08, &qword_2741D5430);
  v56 = v82;
  v57 = v83;
  v78 = *(v83 + 16);
  v58 = v84;
  (v78)(v82, v55, v84);
  v59 = v89[7];
  v60 = v80;
  *(v80 + 96) = v89[6];
  *(v60 + 112) = v59;
  *(v60 + 128) = v90;
  v61 = v89[3];
  *(v60 + 32) = v89[2];
  *(v60 + 48) = v61;
  v62 = v89[5];
  *(v60 + 64) = v89[4];
  *(v60 + 80) = v62;
  v63 = v89[1];
  *v60 = v89[0];
  *(v60 + 16) = v63;
  v64 = v85;
  v65 = v86;
  *(v60 + 136) = v86;
  *(v60 + 144) = v64;
  LOBYTE(v47) = v79 & 1;
  *(v60 + 152) = v79 & 1;
  *(v60 + 160) = v81;
  *(v60 + 168) = 0;
  *(v60 + 176) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA28, &unk_2741D5490);
  sub_2740A6D94(v88, v60 + *(v66 + 80), &qword_28093AA08, &qword_2741D5430);
  (v78)(v60 + *(v66 + 96), v56, v58);
  v67 = v65;
  v68 = v85;
  sub_27409861C(v67, v85, v47);
  v69 = *(v57 + 8);

  v69(v87, v58);
  sub_27409D420(v77, &qword_28093AA08, &qword_2741D5430);
  v69(v56, v58);
  sub_27409D420(v88, &qword_28093AA08, &qword_2741D5430);
  sub_2740A6AC8(v86, v68, v47);
}

uint64_t sub_27416B818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v40 = a2;
  v3 = sub_2741C732C();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KnownNetworkRowView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A610, &unk_2741D5480);
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A600, &unk_2741D5470);
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v33 = &v33 - v20;
  sub_27416A864(a1, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnownNetworkRowView);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_27416C394(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for KnownNetworkRowView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A650, &qword_2741D4328);
  sub_274149DA4();
  sub_2741C7A7C();
  sub_2741C731C();
  v23 = sub_2740A6D24(&qword_28093A618, &qword_28093A610, &unk_2741D5480, MEMORY[0x277CDF028]);
  v24 = sub_27416A81C(&qword_28093A620, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v25 = v36;
  sub_2741C76FC();
  (*(v37 + 8))(v7, v25);
  (*(v35 + 8))(v16, v13);
  v26 = v34;
  v27 = v34 + *(v9 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  v46 = v28;
  v47 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v41 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA18, &qword_2741D6CD0);
  v42 = v13;
  v43 = v25;
  v44 = v23;
  v45 = v24;
  swift_getOpaqueTypeConformance2();
  sub_27416C8E8();
  v30 = v38;
  v31 = v33;
  sub_2741C77FC();

  return (*(v39 + 8))(v31, v30);
}

uint64_t sub_27416BCD8(uint64_t a1)
{
  type metadata accessor for KnownNetworkRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_27416BD4C@<X0>(uint64_t a1@<X0>, id (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for KnownNetworkRowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_27416A864(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KnownNetworkRowView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = sub_27416C394(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for KnownNetworkRowView);
  *a2 = sub_27416CC50;
  a2[1] = v9;
  a2[2] = sub_27416C0B8;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

id sub_27416BE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v25 - v6);
  v8 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27416AD74();
  type metadata accessor for NetworkDetailsModel(0);
  v13 = swift_allocObject();
  sub_27416A864(a1, v11, type metadata accessor for KnownNetwork);
  v14 = sub_2741930B8(v11, v12, v13);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v16 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_2740A6C18(v7, a2, &qword_280937E88, &qword_2741CB5A0);
    v18 = type metadata accessor for NetworkDetailsView(0);
    v19 = (a2 + v18[5]);
    v26 = v14;
    sub_2741C7A2C();
    v20 = v28;
    *v19 = v27;
    v19[1] = v20;
    v21 = a2 + v18[6];
    LOBYTE(v26) = 1;
    sub_2741C7A2C();
    v22 = v28;
    *v21 = v27;
    *(v21 + 8) = v22;
    v23 = a2 + v18[7];
    LOBYTE(v26) = 0;
    result = sub_2741C7A2C();
    v24 = v28;
    *v23 = v27;
    *(v23 + 8) = v24;
    *(a2 + v18[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27416C0B8()
{
  sub_2741C856C();
  type metadata accessor for KnownNetworkRowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA30, &unk_2741D54A0);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD00000000000004FLL, 0x80000002741E28A0);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27416C16C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A9F8, &qword_2741D5408);
  return sub_27416AEC4(v2, a2 + *(v4 + 44));
}

uint64_t sub_27416C1E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27416C268(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_27417743C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for KnownNetwork(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27416C394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27416C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KnownNetwork(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_27416C4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for KnownNetwork(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_27416C5AC(uint64_t a1)
{
  type metadata accessor for KnownNetwork(319);
  if (v1 <= 0x3F)
  {
    sub_2740A5754();
    if (v2 <= 0x3F)
    {
      sub_27416C680(319, &qword_28093A9D0, type metadata accessor for CurrentNetworkModel, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27416C680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27416C728(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27416C7BC()
{
  result = qword_28093A9E8;
  if (!qword_28093A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A9F0, &qword_2741D53B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093A960, &qword_2741D5330);
    sub_27416ABC4();
    swift_getOpaqueTypeConformance2();
    sub_27416A81C(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A9E8);
  }

  return result;
}

unint64_t sub_27416C8E8()
{
  result = qword_28093AA20;
  if (!qword_28093AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AA18, &qword_2741D6CD0);
    sub_2740A6D24(&qword_28093A640, &qword_28093A638, &qword_2741D4318, &unk_2741D6F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA20);
  }

  return result;
}

double sub_27416C9A0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_27416C9C4()
{
  v1 = *(type metadata accessor for KnownNetworkRowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_27416BCD8(v2);
}

unint64_t sub_27416CA24()
{
  result = qword_28093A660;
  if (!qword_28093A660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809381F0, &unk_2741D4330);
    sub_2740A829C();
    sub_27416A81C(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093A660);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(type metadata accessor for KnownNetworkRowView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 72));
  v5 = *(type metadata accessor for KnownNetwork(0) + 64);
  v6 = sub_2741C689C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_27416CC50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KnownNetworkRowView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27416BE78(v4, a1);
}

uint64_t sub_27416CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2741C699C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_27416CE00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2741C699C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WFButton(uint64_t a1)
{
  result = qword_28093AA48;
  if (!qword_28093AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27416CF04(uint64_t a1)
{
  result = sub_2741C699C();
  if (v2 <= 0x3F)
  {
    result = sub_27416CF90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_27416CF90()
{
  result = qword_28093AA58;
  if (!qword_28093AA58)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28093AA58);
  }

  return result;
}

unint64_t sub_27416CFE4()
{
  result = qword_28093AA60;
  if (!qword_28093AA60)
  {
    sub_2741C699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA60);
  }

  return result;
}

uint64_t sub_27416D03C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C699C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_27416D0B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_27416D290(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_27416D0F8()
{
  result = qword_28093AA68;
  if (!qword_28093AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA68);
  }

  return result;
}

unint64_t sub_27416D150()
{
  result = qword_28093AA70;
  if (!qword_28093AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA70);
  }

  return result;
}

unint64_t sub_27416D1A8()
{
  result = qword_28093AA78;
  if (!qword_28093AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA78);
  }

  return result;
}

unint64_t sub_27416D200()
{
  result = qword_28093AA80;
  if (!qword_28093AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AA80);
  }

  return result;
}

uint64_t sub_27416D254(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_27416D290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_27416D2CC()
{
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_27416D33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_27416D3B4(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_27416D7EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_27416D48C(unsigned __int8 a1)
{
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_27416D5A0()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit9ScanState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanState(uint64_t a1)
{
  result = qword_28093AA90;
  if (!qword_28093AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27416D690(uint64_t a1)
{
  result = sub_2741C6A4C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27416D730()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27416D7EC();
  sub_2741C6A0C();

  return *(v1 + 16);
}

unint64_t sub_27416D7C4(uint64_t a1)
{
  result = sub_27416D7EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27416D7EC()
{
  result = qword_28093AAA0;
  if (!qword_28093AAA0)
  {
    type metadata accessor for ScanState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAA0);
  }

  return result;
}

uint64_t sub_27416D88C()
{
  sub_2741C87DC();
  sub_2741C7F0C();

  return sub_2741C880C();
}

uint64_t sub_27416D960(uint64_t a1)
{
  sub_2741C7F0C();
}

uint64_t sub_27416DA20(uint64_t a1)
{
  sub_2741C87DC();
  sub_2741C7F0C();

  return sub_2741C880C();
}

unint64_t sub_27416DAF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27416DF54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27416DB20(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x736C6961746564;
  v4 = 0xEB00000000736C61;
  v5 = 0x69746E6564657263;
  if (*v1 != 2)
  {
    v5 = 0x7265437473757274;
    v4 = 0xE900000000000074;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000002741D8900;
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

unint64_t sub_27416DBB4()
{
  result = qword_28093AAA8;
  if (!qword_28093AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAA8);
  }

  return result;
}

uint64_t sub_27416DC08(char *a1)
{
  v2 = sub_2741C689C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_27416DFA0();
  v7 = sub_2741C86CC();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = v7 == 0xD000000000000010 && 0x80000002741D8900 == v9;
  if (v11 || (sub_2741C86DC() & 1) != 0)
  {
    v10(a1, v2);

    return 0;
  }

  else
  {
    v13 = v7 == 0x446B726F7774654ELL && v9 == 0xEE00736C69617465;
    if (v13 || (sub_2741C86DC() & 1) != 0)
    {
      v10(a1, v2);

      return 1;
    }

    v14 = v7 == 0x69746E6564657243 && v9 == 0xEB00000000736C61;
    if (v14 || (sub_2741C86DC() & 1) != 0)
    {
      v10(a1, v2);

      return 2;
    }

    if (v7 == 0x746E457473757254 && v9 == 0xEF65736972707265)
    {
    }

    else
    {
      v16 = sub_2741C86DC();

      if ((v16 & 1) == 0)
      {
        v18 = 0;
        v19 = 0xE000000000000000;
        sub_2741C856C();

        v18 = 0xD000000000000020;
        v19 = 0x80000002741E2920;
        v17 = sub_2741C86CC();
        MEMORY[0x2743E5FB0](v17);

        sub_2740CB218(v18, v19, 0x6C72752874696E69, 0xEA0000000000293ALL);

        v10(a1, v2);
        return 4;
      }
    }

    v10(a1, v2);
    return 3;
  }
}

unint64_t sub_27416DF54(uint64_t a1, uint64_t a2)
{
  v2 = sub_2741C869C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_27416DFA0()
{
  result = qword_28093AAB0;
  if (!qword_28093AAB0)
  {
    sub_2741C689C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AAB0);
  }

  return result;
}

uint64_t sub_27416DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 272) = a5;
  *(v5 + 40) = a4;

  return MEMORY[0x2822009F8](sub_27416E08C, 0, 0);
}

uint64_t sub_27416E08C()
{
  *(v0 + 48) = sub_2741C80AC();
  *(v0 + 56) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416E158, v2, v1);
}

uint64_t sub_27416E158()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27416E21C, 0, 0);
}

uint64_t sub_27416E21C(uint64_t a1)
{
  *(v1 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416E2DC, v3, v2);
}

uint64_t sub_27416E2DC()
{

  *(v0 + 72) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416E384, 0, 0);
}

uint64_t sub_27416E384(uint64_t a1)
{
  *(v1 + 80) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416E444, v3, v2);
}

uint64_t sub_27416E444()
{

  sub_2741BB460(2);

  return MEMORY[0x2822009F8](sub_27416E4E8, 0, 0);
}

uint64_t sub_27416E4E8()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 16) = 0;
  v2 = [v1 setPower:*(v0 + 272) error:v0 + 16];
  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = v3;
    *(v0 + 88) = sub_2741C809C();
    v5 = sub_2741C805C();
    v7 = sub_27416E6E0;
  }

  else
  {
    v8 = v3;
    v9 = sub_2741C681C();
    *(v0 + 224) = v9;

    swift_willThrow();
    sub_2741C856C();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001FLL, 0x80000002741E2950);
    *(v0 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(*(v0 + 16), *(v0 + 24), 0x65776F7028746573, 0xEB00000000293A72);

    *(v0 + 232) = sub_2741C809C();
    v5 = sub_2741C805C();
    v7 = sub_27416F920;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_27416E6E0()
{

  return MEMORY[0x2822009F8](sub_27416E774, 0, 0);
}

uint64_t sub_27416E774(uint64_t a1)
{
  *(v1 + 96) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416E834, v3, v2);
}

uint64_t sub_27416E834()
{

  *(v0 + 104) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416E8DC, 0, 0);
}

uint64_t sub_27416E8DC(uint64_t a1)
{
  *(v1 + 112) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416E99C, v3, v2);
}

uint64_t sub_27416E99C()
{
  v1 = *(v0 + 272);

  sub_2741BB460(v1);

  return MEMORY[0x2822009F8](sub_27416EA4C, 0, 0);
}

uint64_t sub_27416EA4C(uint64_t a1)
{
  v2 = *(v1 + 272);
  *(v1 + 120) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2 == 1)
  {
    v5 = sub_27416EB24;
  }

  else
  {
    v5 = sub_27416EE7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27416EB24()
{

  return MEMORY[0x2822009F8](sub_27416EBB8, 0, 0);
}

uint64_t sub_27416EBB8(uint64_t a1)
{
  *(v1 + 128) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416EC78, v3, v2);
}

uint64_t sub_27416EC78()
{

  *(v0 + 136) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416ED20, 0, 0);
}

uint64_t sub_27416ED20(uint64_t a1)
{
  *(v1 + 144) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416EDE0, v3, v2);
}

uint64_t sub_27416EDE0()
{

  sub_2741B8FB8(32);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27416EE7C()
{

  return MEMORY[0x2822009F8](sub_27416EF10, 0, 0);
}

uint64_t sub_27416EF10(uint64_t a1)
{
  *(v1 + 152) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416EFD0, v3, v2);
}

uint64_t sub_27416EFD0()
{

  *(v0 + 160) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416F078, 0, 0);
}

uint64_t sub_27416F078(uint64_t a1)
{
  *(v1 + 168) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416F138, v3, v2);
}

uint64_t sub_27416F138()
{

  sub_2741B8FB8(16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27416F1D4()
{

  return MEMORY[0x2822009F8](sub_27416F268, 0, 0);
}

uint64_t sub_27416F268(uint64_t a1)
{
  *(v1 + 176) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416F328, v3, v2);
}

uint64_t sub_27416F328()
{

  *(v0 + 184) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416F3D0, 0, 0);
}

uint64_t sub_27416F3D0(uint64_t a1)
{
  *(v1 + 192) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416F490, v3, v2);
}

uint64_t sub_27416F490()
{

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_27416F534, 0, 0);
}

uint64_t sub_27416F534()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27416F5C0()
{

  return MEMORY[0x2822009F8](sub_27416F654, 0, 0);
}

uint64_t sub_27416F654(uint64_t a1)
{
  *(v1 + 200) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416F714, v3, v2);
}

uint64_t sub_27416F714()
{

  *(v0 + 208) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416F7BC, 0, 0);
}

uint64_t sub_27416F7BC(uint64_t a1)
{
  *(v1 + 216) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416F87C, v3, v2);
}

uint64_t sub_27416F87C()
{

  sub_2741B8FB8(16);

  return MEMORY[0x2822009F8](sub_27416FD64, 0, 0);
}

uint64_t sub_27416F920()
{

  return MEMORY[0x2822009F8](sub_27416F9B4, 0, 0);
}

uint64_t sub_27416F9B4(uint64_t a1)
{
  *(v1 + 240) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416FA74, v3, v2);
}

uint64_t sub_27416FA74()
{

  *(v0 + 248) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27416FB1C, 0, 0);
}

uint64_t sub_27416FB1C(uint64_t a1)
{
  *(v1 + 256) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27416FBDC, v3, v2);
}

uint64_t sub_27416FBDC()
{
  v1 = *(v0 + 272);

  sub_2741BB460((v1 & 1) == 0);

  return MEMORY[0x2822009F8](sub_27416FC90, 0, 0);
}

uint64_t sub_27416FC90(uint64_t a1)
{
  v2 = *(v1 + 272);
  *(v1 + 264) = sub_2741C809C();
  v4 = sub_2741C805C();
  if (v2)
  {
    v5 = sub_27416F5C0;
  }

  else
  {
    v5 = sub_27416F1D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27416FD64()
{

  return sub_27416F534();
}

uint64_t sub_27416FDE8(uint64_t a1)
{
  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAB8, &qword_2741D58E8);
  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  MEMORY[0x2743E5FB0](0x3D6973737220, 0xE600000000000000);
  v3 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0x3D7372616220, 0xE600000000000000);
  v4 = a1 + 77.5;
  v5 = fabsf(sqrtf((v4 * v4) + 450.0));
  sub_2740CBBBC(((v4 / (v5 + v5)) + 0.5));
  v6 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v6);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_27416FF7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2741C70AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PasswordPromptSheet(0);
  sub_2740A6D94(v1 + *(v12 + 28), v11, &qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2741C6DBC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_2741C82AC();
    v15 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_274170184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PasswordPromptSheet(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v45[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *(v9 + 5) = sub_274175B8C(v10, &v47);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v9[48] = wapiCapability;
    v14 = v6[7];
    *&v9[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
    swift_storeEnumTagMultiPayload();
    v15 = &v9[v6[8]];
    type metadata accessor for AssociationModel(0);
    sub_274176A48(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    *v15 = sub_2741C6CEC();
    v15[8] = v16 & 1;
    v17 = &v9[v6[9]];
    LOBYTE(v45[0]) = 0;
    sub_2741C7A2C();
    v18 = *(&v47 + 1);
    *v17 = v47;
    *(v17 + 1) = v18;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_2740A6D94(&v47, v45, &qword_280937E78, &qword_2741D81E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E78, &qword_2741D81E0);
    sub_2741C7A2C();
    sub_27409D420(&v47, &qword_280937E78, &qword_2741D81E0);
    v19 = &v9[v6[11]];
    if (qword_280937480 != -1)
    {
      swift_once();
    }

    *v45 = xmmword_280946038;

    sub_2741C7A2C();
    v20 = v48;
    *v19 = v47;
    *(v19 + 2) = v20;
    v21 = &v9[v6[12]];
    type metadata accessor for AssociationCredentials(0);
    swift_allocObject();
    v45[0] = sub_27410A05C();
    sub_2741C7A2C();
    v22 = v47;
    *v21 = v47;
    v23 = &v9[v6[13]];
    LOBYTE(v45[0]) = 0;
    sub_2741C7A2C();
    v24 = *(&v47 + 1);
    *v23 = v47;
    *(v23 + 1) = v24;
    v25 = &v9[v6[14]];
    sub_2740A5224();
    sub_2741C6CAC();
    v26 = *(&v47 + 1);
    v27 = v48;
    *v25 = v47;
    *(v25 + 1) = v26;
    v25[16] = v27;
    v28 = &v9[v6[15]];
    *(v28 + 32) = 0;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    sub_27409D4E4(a1, v9);
    if (*(__swift_project_boxed_opaque_existential_1(a1, a1[3]) + 160) == 1)
    {
      v47 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
      sub_2741C7A3C();
      v29 = v45[0];
      v30 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
      sub_2740ACAC8((v30 + 1), &v47);
      v31 = v50;
      if (*(v29 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == v50)
      {
        sub_274108F9C();

        sub_2740ACB2C(&v47);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v33);
        *(&v44 - 2) = v29;
        *(&v44 - 1) = v31;
        v45[0] = v29;
        sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
        sub_2741C69FC();

        sub_2740ACB2C(&v47);
      }
    }

    v34 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    sub_2740ACAC8((v34 + 1), &v47);
    v35 = v47;
    v36 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    sub_2740ACAC8((v36 + 1), v45);
    v37 = v46;
    v38 = objc_allocWithZone(MEMORY[0x277D54CB0]);

    v39 = [v38 init];
    v40 = type metadata accessor for WiFiPasswordSharingService();
    v41 = swift_allocObject();
    v42 = sub_274175DEC(v35, *(&v35 + 1), v37, v39, v41);
    sub_2740ACB2C(v45);
    sub_2740ACB2C(&v47);
    if (v42)
    {
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_2741C856C();
      *v45 = v47;
      MEMORY[0x2743E5FB0](0x2065636976726553, 0xE800000000000000);
      *&v47 = v42;
      sub_2741C862C();
      MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741E2970);
      v43 = __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
      sub_2740ACAC8((v43 + 1), &v47);
      MEMORY[0x2743E5FB0](v47, *(&v47 + 1));
      sub_2740ACB2C(&v47);
      sub_2740CB460(v45[0], v45[1]);

      *(&v48 + 1) = v40;
      v49 = &off_288329520;
      *&v47 = v42;
      sub_2740ACB2C(a2);
      sub_2741760E4(&v47, v28);
    }

    else
    {
      sub_2740ACB2C(a2);
    }

    sub_274176080(v9, a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_274176B04(v9, type metadata accessor for PasswordPromptSheet);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PasswordPromptSheet(uint64_t a1)
{
  result = qword_28093AAD8;
  if (!qword_28093AAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2741708A4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for PasswordPromptSheet(0);
  v44 = *(v2 - 8);
  v45 = v2 - 8;
  v43 = *(v44 + 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB00, &unk_2741D7EC0);
  MEMORY[0x28223BE20](v49, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB08, &qword_2741D5A00);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v50 = &v39 - v11;
  v51 = v1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB10, &qword_2741D5A08);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB18, &unk_2741D5A10);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396F0, &qword_2741D03C8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB20, &qword_2741D5A20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB28, &qword_2741D5A28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939708, &qword_2741D03E0);
  v15 = sub_2740A6D24(&qword_28093AB30, &qword_28093AB28, &qword_2741D5A28, MEMORY[0x277CDE580]);
  v16 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0, MEMORY[0x277CDDF68]);
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v12;
  v53 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
  v20 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
  v52 = v19;
  v53 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v52 = v41;
  v53 = v40;
  v54 = v18;
  v55 = v21;
  swift_getOpaqueTypeConformance2();
  v39 = v8;
  sub_2741C6E8C();
  v22 = v1;
  sub_274176080(v1, v5);
  v23 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v24 = swift_allocObject();
  v44 = type metadata accessor for PasswordPromptSheet;
  sub_274176A9C(v5, v24 + v23, type metadata accessor for PasswordPromptSheet);
  v25 = &v8[*(v49 + 36)];
  *v25 = sub_2741766C4;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  v26 = v22;
  v27 = *__swift_project_boxed_opaque_existential_1(v22, v22[3]);
  swift_getKeyPath();
  v52 = v27;
  sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState, &unk_2741CE300);

  sub_2741C6A0C();

  LOBYTE(v24) = *(v27 + 17);

  LOBYTE(v52) = v24;
  sub_274176080(v26, v5);
  v28 = swift_allocObject();
  v29 = v5;
  sub_274176A9C(v5, v28 + v23, type metadata accessor for PasswordPromptSheet);
  sub_274176764();
  v30 = v39;
  sub_2741C78CC();

  sub_27409D420(v30, &qword_28093AB00, &unk_2741D7EC0);
  v31 = v26 + *(v45 + 44);
  v32 = *v31;
  v33 = *(v31 + 8);
  v56 = v32;
  v57 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A5C();
  v34 = v52;
  v35 = v53;
  LODWORD(v19) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  sub_274176080(v26, v5);
  v36 = swift_allocObject();
  sub_274176A9C(v29, &v36[v23], v44);
  v37 = v50;
  sub_2741A42A0(v34, v35, v19, &v52, sub_27417681C, v36, v48);

  sub_27409D420(&v52, &qword_280937E78, &qword_2741D81E0);
  return (*(v46 + 8))(v37, v47);
}

uint64_t sub_274170F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2741C70BC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB28, &qword_2741D5A28);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB20, &qword_2741D5A20);
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB18, &unk_2741D5A10);
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v32 = &v31 - v19;
  v31 = a1;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB50, &qword_2741D5A68);
  sub_2740A6D24(&qword_28093AB58, &qword_28093AB50, &qword_2741D5A68, MEMORY[0x277CE14C0]);
  sub_2741C761C();
  v40 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939708, &qword_2741D03E0);
  v21 = sub_2740A6D24(&qword_28093AB30, &qword_28093AB28, &qword_2741D5A28, MEMORY[0x277CDE580]);
  v22 = sub_2740A6D24(&qword_280939718, &qword_280939708, &qword_2741D03E0, MEMORY[0x277CDDF68]);
  sub_2741C78BC();
  (*(v8 + 8))(v11, v7);
  v24 = v34;
  v23 = v35;
  (*(v34 + 104))(v6, *MEMORY[0x277CDDDC0], v35);
  v42 = v7;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_2741C783C();
  (*(v24 + 8))(v6, v23);
  (*(v33 + 8))(v15, v12);
  v39 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809396F0, &qword_2741D03C8);
  v42 = v12;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939720, &qword_2741D03E8);
  v28 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_2741C78BC();
  return (*(v37 + 8))(v26, v29);
}

uint64_t sub_274171478@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939768, &qword_2741D04E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v45 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939770, &qword_2741D04E8);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB60, &qword_2741D5B20);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v49 = &v44 - v21;
  v50 = a1;
  v22 = *(__swift_project_boxed_opaque_existential_1(a1, *(a1 + 24)) + 160);
  v46 = v3;
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      if (qword_280937670 != -1)
      {
        swift_once();
      }

      v27 = &qword_280946418;
    }

    else
    {
      if (qword_280937668 != -1)
      {
        swift_once();
      }

      v27 = &qword_280946408;
    }

    v28 = *v27;

    v51 = v28;
    v52 = v29;
    sub_2740A6A74();
    v23 = sub_2741C76AC();
    v25 = v30 & 1;
  }

  v51 = v23;
  v52 = v24;
  v53 = v25;
  v54 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB68, &qword_2741D5B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
  sub_2740A6D24(&qword_28093AB70, &qword_28093AB68, &qword_2741D5B28, MEMORY[0x277CE14C0]);
  sub_2740A5EE4();
  sub_2741C7BAC();
  v31 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  if (v31[21] && *(v31 + 160) == 1)
  {
    MEMORY[0x28223BE20](v31, v32);
    *(&v44 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397A8, &qword_2741D5B40);
    sub_2740A6D24(&qword_2809397B0, &qword_2809397A8, &qword_2741D5B40, MEMORY[0x277CDF038]);
    v33 = v45;
    sub_2741C7B9C();
    v34 = v46;
    (*(v4 + 32))(v13, v33, v46);
    v35 = v34;
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v46;
  }

  (*(v4 + 56))(v13, v36, 1, v35);
  v37 = *(v15 + 16);
  v38 = v49;
  v37(v19, v49, v14);
  v39 = v47;
  sub_2740A6D94(v13, v47, &qword_280939770, &qword_2741D04E8);
  v40 = v48;
  v37(v48, v19, v14);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB78, &qword_2741D5B38);
  sub_2740A6D94(v39, &v40[*(v41 + 48)], &qword_280939770, &qword_2741D04E8);
  sub_27409D420(v13, &qword_280939770, &qword_2741D04E8);
  v42 = *(v15 + 8);
  v42(v38, v14);
  sub_27409D420(v39, &qword_280939770, &qword_2741D04E8);
  return (v42)(v19, v14);
}

uint64_t sub_2741719DC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397E0, &qword_2741D5B80);
  MEMORY[0x28223BE20](v66, v4);
  v6 = &v58 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB80, &qword_2741D5B88);
  MEMORY[0x28223BE20](v7, v8);
  v67 = (&v58 - v9);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB88, &unk_2741D5B90);
  MEMORY[0x28223BE20](v68, v10);
  v12 = &v58 - v11;
  v63 = type metadata accessor for IdentitySelectionView(0);
  MEMORY[0x28223BE20](v63, v13);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397F0, &qword_2741D0578);
  v65 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v15);
  v64 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AB90, &unk_2741D5BA0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v71 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380C8, &qword_2741CB848);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v58 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809380D0, &qword_2741CB850);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v69 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v58 - v34;
  if (*(__swift_project_boxed_opaque_existential_1(a1, *(a1 + 3)) + 160) == 1)
  {
    *v28 = sub_2741C70EC();
    *(v28 + 1) = 0;
    v28[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938108, &unk_2741CB880);
    sub_274172324(a1, &v28[*(v36 + 44)]);
    sub_2740FBB6C(v28, v35);
    (*(v25 + 56))(v35, 0, 1, v24);
  }

  else
  {
    (*(v25 + 56))(v35, 1, 1, v24);
  }

  v37 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3))[21];
  if (!v37)
  {
    goto LABEL_8;
  }

  v58 = v12;
  v59 = v21;
  v60 = v7;
  v61 = a2;
  v38 = &a1[*(type metadata accessor for PasswordPromptSheet(0) + 48)];
  v39 = *v38;
  v40 = *(v38 + 1);
  v72 = *v38;
  v73 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v41 = v75;
  swift_getKeyPath();
  v72 = v41;
  sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v42 = *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v42 != 2)
  {

    a2 = v61;
    v12 = v58;
    v21 = v59;
LABEL_8:
    *v6 = sub_2741C70EC();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939800, &qword_2741D0588);
    sub_2741733A0(a1, &v6[*(v53 + 44)]);
    sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80, MEMORY[0x277CE1138]);
    v54 = v67;
    sub_2741C780C();
    sub_27409D420(v6, &qword_2809397E0, &qword_2741D5B80);
    sub_2740A6D94(v54, v12, &qword_28093AB80, &qword_2741D5B88);
    swift_storeEnumTagMultiPayload();
    sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578, MEMORY[0x277CDD938]);
    sub_274176950();
    v52 = v71;
    sub_2741C72CC();
    sub_27409D420(v54, &qword_28093AB80, &qword_2741D5B88);
    goto LABEL_9;
  }

  v67 = &v58;
  MEMORY[0x28223BE20](v43, v44);
  v66 = &v58 - 4;
  *(&v58 - 2) = a1;
  v75 = v39;
  v76 = v40;
  sub_2741C7A5C();
  v45 = v72;
  v46 = v73;
  v47 = v74;
  swift_getKeyPath();
  v72 = v45;
  v73 = v46;
  v74 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  v48 = v62;
  sub_2741C7B0C();

  *v48 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939820, &unk_2741D05C0);
  sub_2740A6D24(&qword_280939828, &qword_280939820, &unk_2741D05C0, MEMORY[0x277CE1138]);
  sub_274176A48(&qword_280939830, type metadata accessor for IdentitySelectionView, &unk_2741D77F0);
  v49 = v64;
  sub_2741C6DDC();
  v50 = v65;
  v51 = v70;
  (*(v65 + 16))(v58, v49, v70);
  swift_storeEnumTagMultiPayload();
  sub_2740A6D24(&qword_280939808, &qword_2809397F0, &qword_2741D0578, MEMORY[0x277CDD938]);
  sub_274176950();
  v52 = v71;
  sub_2741C72CC();
  (*(v50 + 8))(v49, v51);
  a2 = v61;
  v21 = v59;
LABEL_9:
  v55 = v69;
  sub_2740A6D94(v35, v69, &qword_2809380D0, &qword_2741CB850);
  sub_2740A6D94(v52, v21, &qword_28093AB90, &unk_2741D5BA0);
  sub_2740A6D94(v55, a2, &qword_2809380D0, &qword_2741CB850);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABA0, &qword_2741D5BB0);
  sub_2740A6D94(v21, a2 + *(v56 + 48), &qword_28093AB90, &unk_2741D5BA0);
  sub_27409D420(v52, &qword_28093AB90, &unk_2741D5BA0);
  sub_27409D420(v35, &qword_2809380D0, &qword_2741CB850);
  sub_27409D420(v21, &qword_28093AB90, &unk_2741D5BA0);
  return sub_27409D420(v55, &qword_2809380D0, &qword_2741CB850);
}

uint64_t sub_274172324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938110, &unk_2741D05D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v95 = v69 - v5;
  v6 = sub_2741C6E4C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v92 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PasswordPromptSheet(0);
  v76 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v77 = v11;
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938118, &unk_2741CB890);
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v12);
  v70 = v69 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938120, &unk_2741D05E0);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v14);
  v79 = v69 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938128, &unk_2741CB8A0);
  v82 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v16);
  v78 = v69 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938130, &unk_2741D05F0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v18);
  v85 = v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938138, &qword_2741CB8B0);
  v90 = *(v20 - 8);
  v91 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v89 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v97 = v69 - v25;
  if (qword_2809374A0 != -1)
  {
    swift_once();
  }

  v98 = xmmword_280946078;
  sub_2740A6A74();

  v73 = sub_2741C76AC();
  v72 = v26;
  v74 = v27;
  v75 = v28;
  v69[3] = sub_2741C714C();
  v69[2] = v29;
  v69[1] = v30;
  v31 = (a1 + *(v9 + 48));
  v33 = *v31;
  v32 = v31[1];
  *&v101 = v33;
  *(&v101 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v34 = v98;
  v35 = v99;
  swift_getKeyPath();
  v101 = v34;
  v102 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v36 = v70;
  sub_2741C7C8C();
  v37 = (a1 + *(v9 + 56));
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v37) = v37[16];
  LOBYTE(v98) = v38;
  *(&v98 + 1) = v39;
  LOBYTE(v99) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v98 = v101;
  LOBYTE(v99) = v102;
  LOBYTE(v101) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v41 = sub_2740A6D24(&qword_280938148, &qword_280938118, &unk_2741CB890, MEMORY[0x277CDF1A8]);
  v42 = sub_2740A58C0();
  v43 = v79;
  v44 = v80;
  sub_2741C789C();

  (*(v71 + 8))(v36, v44);
  v45 = v81;
  sub_274176080(a1, v81);
  v46 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v47 = swift_allocObject();
  sub_274176A9C(v45, v47 + v46, type metadata accessor for PasswordPromptSheet);
  v48 = v92;
  sub_2741C6E3C();
  *&v98 = v44;
  *(&v98 + 1) = v40;
  v99 = v41;
  v100 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v78;
  v51 = v84;
  sub_2741C78EC();

  (*(v93 + 8))(v48, v94);
  (*(v83 + 8))(v43, v51);
  *&v98 = v51;
  *(&v98 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v85;
  v54 = v87;
  MEMORY[0x2743E5870](1, v87, v52);
  (*(v82 + 8))(v50, v54);
  v55 = v95;
  sub_2741C744C();
  v56 = sub_2741C745C();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  *&v98 = v54;
  *(&v98 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v97;
  v58 = v88;
  sub_2741C782C();
  sub_27409D420(v55, &qword_280938110, &unk_2741D05D0);
  (*(v86 + 8))(v53, v58);
  v60 = v89;
  v59 = v90;
  v61 = *(v90 + 16);
  v62 = v91;
  v61(v89, v57, v91);
  v63 = v96;
  v64 = v73;
  v65 = v72;
  *v96 = v73;
  v63[1] = v65;
  LOBYTE(v58) = v74 & 1;
  *(v63 + 16) = v74 & 1;
  v63[3] = v75;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938150, &qword_2741CB8E8);
  v61(v63 + *(v66 + 48), v60, v62);
  sub_27409861C(v64, v65, v58);
  v67 = *(v59 + 8);

  v67(v97, v62);
  v67(v60, v62);
  sub_2740A6AC8(v64, v65, v58);
}

uint64_t sub_274172D88()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = (v0 + *(type metadata accessor for PasswordPromptSheet(0) + 48));
  v4 = *v2;
  v3 = v2[1];
  v7[0] = v4;
  v7[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v8[3] = type metadata accessor for AssociationCredentials(0);
  v8[4] = &off_288329FD0;
  v5 = v1[16];
  sub_27409D4E4(v8, v7);
  v5(v1 + 1, v1, v7);
  sub_27409D420(v7, &qword_280937FB8, &unk_2741D0410);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return sub_274175A48();
}

double sub_274172E60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v16 = 1;
  sub_274172F68(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2740A6D94(&v17, &v9, &qword_280939838, &qword_2741D3B50);
  sub_27409D420(v22, &qword_280939838, &qword_2741D3B50);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_274172F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for EnterpriseIdentity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2809374B0 != -1)
  {
    swift_once();
  }

  v51 = qword_280946098;
  v52 = unk_2809460A0;
  sub_2740A6A74();

  v13 = sub_2741C76AC();
  v46 = v14;
  v47 = v13;
  v45 = v15;
  v17 = v16;
  v18 = (a1 + *(type metadata accessor for PasswordPromptSheet(0) + 48));
  v20 = *v18;
  v19 = v18[1];
  v51 = v20;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  v21 = v48;
  swift_getKeyPath();
  v51 = v21;
  sub_274176A48(&qword_280937FD8, type metadata accessor for AssociationCredentials, &unk_2741D13C0);
  sub_2741C6A0C();

  v22 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_2740A6D94(v21 + v22, v7, &qword_280937DA0, &qword_2741CB190);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27409D420(v7, &qword_280937DA0, &qword_2741CB190);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v43 = type metadata accessor for EnterpriseIdentity;
    sub_274176A9C(v7, v12, type metadata accessor for EnterpriseIdentity);
    v27 = v12[1];
    v48 = *v12;
    v49 = v27;

    v28 = sub_2741C76AC();
    v30 = v29;
    v32 = v31;
    v44 = v17;
    LODWORD(v48) = sub_2741C737C();
    v23 = sub_2741C764C();
    v24 = v33;
    v35 = v34;
    v26 = v36;
    sub_2740A6AC8(v28, v30, v32 & 1);
    v17 = v44;

    sub_274176B04(v12, v43);
    v25 = v35 & 1;
    sub_27409861C(v23, v24, v35 & 1);
  }

  v37 = v45 & 1;
  LOBYTE(v48) = v45 & 1;
  v50 = 1;
  v39 = v46;
  v38 = v47;
  sub_27409861C(v47, v46, v45 & 1);

  sub_2740ACA00(v23, v24, v25, v26);
  sub_2740ACA44(v23, v24, v25, v26);
  v40 = v48;
  v41 = v50;
  *a2 = v38;
  *(a2 + 8) = v39;
  *(a2 + 16) = v40;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = v41;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  sub_2740ACA44(v23, v24, v25, v26);
  sub_2740A6AC8(v38, v39, v37);
}

uint64_t sub_2741733A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v3 = sub_2741C6E4C();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v73 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PasswordPromptSheet(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v64 = v8;
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938158, &qword_2741CFBD0);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v9);
  v57 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938160, &unk_2741CB900);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v65 = v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938168, &qword_2741D5C10);
  v71 = *(v14 - 8);
  v72 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v70 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v77 = v56 - v19;
  if (qword_2809374A8 != -1)
  {
    swift_once();
  }

  v78 = xmmword_280946088;
  sub_2740A6A74();

  v59 = sub_2741C76AC();
  v58 = v20;
  v60 = v21;
  v61 = v22;
  v56[2] = sub_2741C714C();
  v56[1] = v23;
  v56[0] = v24;
  v25 = (a1 + *(v6 + 48));
  v27 = *v25;
  v26 = v25[1];
  *&v81 = v27;
  *(&v81 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  v28 = v78;
  v29 = v79;
  swift_getKeyPath();
  v81 = v28;
  v82 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  v30 = v57;
  sub_2741C6CFC();
  v31 = a1;
  v32 = (a1 + *(v6 + 56));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v32) = v32[16];
  LOBYTE(v78) = v33;
  *(&v78 + 1) = v34;
  LOBYTE(v79) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  sub_2741C6C8C();
  v78 = v81;
  LOBYTE(v79) = v82;
  LOBYTE(v81) = 2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937EE0, &qword_2741CFAD0);
  v36 = sub_2740A6D24(&qword_280938178, &qword_280938158, &qword_2741CFBD0, MEMORY[0x277CDD798]);
  v37 = sub_2740A58C0();
  v39 = v65;
  v38 = v66;
  sub_2741C789C();

  (*(v62 + 8))(v30, v38);
  v40 = v67;
  sub_274176080(v31, v67);
  v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v42 = swift_allocObject();
  sub_274176A9C(v40, v42 + v41, type metadata accessor for PasswordPromptSheet);
  v43 = v73;
  sub_2741C6E3C();
  *&v78 = v38;
  *(&v78 + 1) = v35;
  v79 = v36;
  v80 = v37;
  swift_getOpaqueTypeConformance2();
  v44 = v77;
  v45 = v69;
  sub_2741C78EC();

  (*(v74 + 8))(v43, v75);
  (*(v68 + 8))(v39, v45);
  v47 = v70;
  v46 = v71;
  v48 = *(v71 + 16);
  v49 = v72;
  v48(v70, v44, v72);
  v50 = v76;
  v51 = v59;
  v52 = v58;
  *v76 = v59;
  v50[1] = v52;
  LOBYTE(v45) = v60 & 1;
  *(v50 + 16) = v60 & 1;
  v50[3] = v61;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939840, &unk_2741D5C40);
  v48(v50 + *(v53 + 48), v47, v49);
  sub_27409861C(v51, v52, v45);
  v54 = *(v46 + 8);

  v54(v77, v49);
  v54(v47, v49);
  sub_2740A6AC8(v51, v52, v45);
}

uint64_t sub_274173B30(uint64_t a1)
{
  if (qword_2809373D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PasswordPromptSheet(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A5C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  sub_2741C7B0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397B8, &unk_2741D0550);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_2809397C8, &qword_2809397B8, &unk_2741D0550, MEMORY[0x277CE14C0]);
  sub_2740A6A74();
  return sub_2741C7ABC();
}

uint64_t sub_274173D08@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D0, &unk_2741D5B70);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v29 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  if (qword_280937480 != -1)
  {
    swift_once();
  }

  v29 = xmmword_280946038;
  sub_2740A6A74();

  *v18 = sub_2741C76AC();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 257;
  if (qword_280937488 != -1)
  {
    swift_once();
  }

  v29 = xmmword_280946048;

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v22;
  v15[16] = v23 & 1;
  *(v15 + 3) = v24;
  *(v15 + 16) = 258;
  v25 = *(v3 + 16);
  v25(v11, v18, v2);
  v25(v7, v15, v2);
  v25(a1, v11, v2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809397D8, &unk_2741D0560);
  v25(&a1[*(v26 + 48)], v7, v2);
  v27 = *(v3 + 8);
  v27(v15, v2);
  v27(v18, v2);
  v27(v7, v2);
  return (v27)(v11, v2);
}

uint64_t sub_274173FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939760, &qword_2741D5AC0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v22 - v5;
  v7 = sub_2741C730C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v22 - v16;
  sub_2741C72DC();
  v22[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  sub_2741C72EC();
  v22[4] = a1;
  sub_2741C6D2C();
  v18 = *(v3 + 48);
  v19 = *(v10 + 16);
  v19(v6, v17, v9);
  v19(&v6[v18], v14, v9);
  sub_2741C71EC();
  v20 = *(v10 + 8);
  v20(v14, v9);
  return (v20)(v17, v9);
}

uint64_t sub_274174284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_274176080(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_274176A9C(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PasswordPromptSheet);
  sub_2741C7A7C();
  v10 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  v15[1] = v10;
  sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState, &unk_2741CE300);

  sub_2741C6A0C();

  LOBYTE(v6) = *(v10 + 16);

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_2740A7438;
  v14[2] = v12;
  return result;
}

uint64_t sub_2741744BC(void *a1)
{
  v2 = sub_2741C6DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v7[14];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8(v7 + 1, v7, v10);
  sub_27409D420(v10, &qword_280937FB8, &unk_2741D0410);
  sub_274175A48();
  sub_27416FF7C(v6);
  sub_2741C6DAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2741745E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PasswordPromptSheet(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - v12;
  sub_274176080(a1, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_274176A9C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PasswordPromptSheet);
  sub_2741C7A7C();
  v16 = (a1 + *(v5 + 56));
  v18 = *v16;
  v17 = v16[1];
  v26 = v18;
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FC0, &unk_2741CB6E0);
  sub_2741C7A3C();
  LOBYTE(v6) = sub_274109704();

  if (v6)
  {
    v19 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getKeyPath();
    v26 = v19;
    sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState, &unk_2741CE300);

    sub_2741C6A0C();

    v20 = *(v19 + 16);
  }

  else
  {
    v20 = 1;
  }

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v10 + 32))(a2, v13, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v24 = (a2 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_2740A6E2C;
  v24[2] = v22;
  return result;
}

uint64_t sub_27417491C(uint64_t a1)
{
  v2 = sub_2741C730C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939720, &qword_2741D03E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_2741C72FC();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939740, &unk_2741D5A70);
  sub_2740A6D24(&qword_280939748, &qword_280939740, &unk_2741D5A70, MEMORY[0x277CE1198]);
  sub_2741C6D2C();
  v9 = sub_2740A6D24(&qword_280939728, &qword_280939720, &qword_2741D03E8, MEMORY[0x277CDD7A8]);
  MEMORY[0x2743E53C0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

void *sub_274174B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C71AC();
  v10 = 1;
  sub_274174BE4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_2740A6D94(__dst, &v7, &qword_280939750, &qword_2741D0460);
  sub_27409D420(v12, &qword_280939750, &qword_2741D0460);
  memcpy(&v9[7], __dst, 0x120uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x127uLL);
}

uint64_t sub_274174BE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_2741C713C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_2741C712C();
  sub_2741C711C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2741C710C();

  sub_2741C711C();
  sub_2741C715C();
  v5 = sub_2741C768C();
  v7 = v6;
  v9 = v8;
  sub_2741C75DC();
  v43 = sub_2741C767C();
  v44 = v10;
  v51 = v11;
  v13 = v12;

  sub_2740A6AC8(v5, v7, v9 & 1);

  v50 = sub_2741C752C();
  sub_2741C6C6C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v46 = v13 & 1;
  LOBYTE(v78[0]) = v13 & 1;
  LOBYTE(v69) = 0;
  v49 = sub_2741C753C();
  sub_2741C6C6C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v89) = 0;
  KeyPath = swift_getKeyPath();
  v48 = sub_2741C736C();
  if (qword_280937660 != -1)
  {
    swift_once();
  }

  v89 = qword_2809463F8;
  v90 = unk_280946400;
  sub_2740A6A74();

  v30 = sub_2741C76AC();
  v32 = v31;
  v34 = v33;
  sub_2741C75EC();
  v35 = sub_2741C767C();
  v37 = v36;
  v39 = v38;
  v42 = v40;

  sub_2740A6AC8(v30, v32, v34 & 1);

  sub_2741C7C1C();
  sub_2741C6F1C();
  v116 = v39 & 1;
  *&v60 = v43;
  *(&v60 + 1) = v51;
  LOBYTE(v61) = v46;
  *(&v61 + 1) = *v118;
  DWORD1(v61) = *&v118[3];
  *(&v61 + 1) = v44;
  LOBYTE(v62) = v50;
  *(&v62 + 1) = *v117;
  DWORD1(v62) = *&v117[3];
  *(&v62 + 1) = v15;
  *&v63 = v17;
  *(&v63 + 1) = v19;
  *&v64 = v21;
  BYTE8(v64) = 0;
  HIDWORD(v64) = *&v120[3];
  *(&v64 + 9) = *v120;
  LOBYTE(v65) = v49;
  DWORD1(v65) = *&v119[3];
  *(&v65 + 1) = *v119;
  *(&v65 + 1) = v23;
  *&v66 = v25;
  *(&v66 + 1) = v27;
  *&v67 = v29;
  BYTE8(v67) = 0;
  HIDWORD(v67) = *&v121[3];
  *(&v67 + 9) = *v121;
  *&v68 = KeyPath;
  BYTE8(v68) = 1;
  *(&v68 + 9) = v122;
  BYTE11(v68) = v123;
  HIDWORD(v68) = v48;
  v52[2] = v62;
  v52[3] = v63;
  v52[0] = v60;
  v52[1] = v61;
  v52[6] = v66;
  v52[7] = v67;
  v52[4] = v64;
  v52[5] = v65;
  *&v69 = v35;
  *(&v69 + 1) = v37;
  LOBYTE(v70) = v39 & 1;
  *(&v70 + 1) = *v115;
  DWORD1(v70) = *&v115[3];
  *(&v70 + 1) = v42;
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v71 = v53;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v52[14] = v56;
  v52[15] = v57;
  v52[16] = v58;
  v52[17] = v59;
  v52[8] = v68;
  v52[9] = v69;
  v52[12] = v54;
  v52[13] = v55;
  v52[10] = v70;
  v52[11] = v53;
  memcpy(a2, v52, 0x120uLL);
  v78[0] = v35;
  v78[1] = v37;
  v79 = v39 & 1;
  *v80 = *v115;
  *&v80[3] = *&v115[3];
  v81 = v42;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  sub_2740A6D94(&v60, &v89, &qword_280939758, &unk_2741D5AB0);
  sub_2740A6D94(&v69, &v89, &qword_2809381B0, &qword_2741CB9D0);
  sub_27409D420(v78, &qword_2809381B0, &qword_2741CB9D0);
  v89 = v43;
  v90 = v51;
  v91 = v46;
  *v92 = *v118;
  *&v92[3] = *&v118[3];
  v93 = v44;
  v94 = v50;
  *v95 = *v117;
  *&v95[3] = *&v117[3];
  v96 = v15;
  v97 = v17;
  v98 = v19;
  v99 = v21;
  v100 = 0;
  *&v101[3] = *&v120[3];
  *v101 = *v120;
  v102 = v49;
  *&v103[3] = *&v119[3];
  *v103 = *v119;
  v104 = v23;
  v105 = v25;
  v106 = v27;
  v107 = v29;
  v108 = 0;
  *v109 = *v121;
  *&v109[3] = *&v121[3];
  v110 = KeyPath;
  v111 = 1;
  v112 = v122;
  v113 = v123;
  v114 = v48;
  return sub_27409D420(&v89, &qword_280939758, &unk_2741D5AB0);
}

uint64_t sub_2741751F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PasswordPromptSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

void sub_274175294(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for PasswordPromptSheet(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
    sub_2741C6C7C();
    v4 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    if (*(*v4 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v6);
      sub_274176A48(&qword_280938EA8, type metadata accessor for PasswordPromptViewState, &unk_2741CE300);

      sub_2741C69FC();
    }

    else
    {
      *(*v4 + 17) = 0;
    }
  }
}

uint64_t sub_274175428(uint64_t a1)
{
  type metadata accessor for PasswordPromptSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F28, &unk_2741CB660);
  sub_2741C7A3C();
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB0, &qword_2741CB6B0);
    if (swift_dynamicCast())
    {
      if (v22 > 5u)
      {
        if (v22 == 6)
        {
          sub_2741C856C();
          v23 = 0;
          v24 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          sub_2740CB460(0xD00000000000001ALL, 0x80000002741D8E90);
          WiFiDisableMISState();
          sub_274172D88();
          v1 = v16;
          v2 = v17;
          v3 = v18;
          v4 = v19;
          v5 = v20;
          v6 = v21;
          v7 = 6;
          goto LABEL_15;
        }

        if (v22 == 7)
        {
          sub_2741C856C();
          v23 = 0;
          v24 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);
          v8 = v16;
          v9 = v17;
          v10 = v18;
          v11 = v19;
          v12 = v20;
          v13 = v21;
          v14 = 7;
LABEL_12:
          sub_2740A66EC(v8, v9, v10, v11, v12, v13, v14);

          goto LABEL_16;
        }
      }

      else
      {
        if (v22 == 3)
        {
          sub_2741C856C();
          v23 = 1;
          v24 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD00000000000001CLL, 0x80000002741D8EB0);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
          sub_2741C7A4C();
          sub_274172D88();
          v1 = v16;
          v2 = v17;
          v3 = v18;
          v4 = v19;
          v5 = v20;
          v6 = v21;
          v7 = 3;
          goto LABEL_15;
        }

        if (v22 == 5)
        {
          sub_2741C856C();
          v23 = 0;
          v24 = 0xE000000000000000;
          MEMORY[0x2743E5FB0](0xD000000000000020, 0x80000002741D8E40);
          MEMORY[0x2743E5FB0]();
          MEMORY[0x2743E5FB0](0xD000000000000017, 0x80000002741D8E70);
          sub_2741C862C();
          sub_2740CB460(0, 0xE000000000000000);

          sub_274172D88();
          v1 = v16;
          v2 = v17;
          v3 = v18;
          v4 = v19;
          v5 = v20;
          v6 = v21;
          v7 = 5;
LABEL_15:
          sub_2740A66EC(v1, v2, v3, v4, v5, v6, v7);
          goto LABEL_16;
        }
      }

      sub_2741C856C();
      v23 = 0;
      v24 = 0xE000000000000000;
      MEMORY[0x2743E5FB0](0xD000000000000026, 0x80000002741D8E10);
      sub_2741C862C();
      sub_2740CB460(0, 0xE000000000000000);
      v8 = v16;
      v9 = v17;
      v10 = v18;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      v14 = v22;
      goto LABEL_12;
    }
  }

  else
  {
    sub_27409D420(&v23, &qword_280937E78, &qword_2741D81E0);
  }

LABEL_16:
  LOBYTE(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  LOBYTE(v23) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FA0, &unk_2741CB6A0);
  return sub_2741C6C7C();
}

uint64_t sub_274175A48()
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_2741C856C();

  *&v5 = 0xD000000000000023;
  *(&v5 + 1) = 0x80000002741E2A50;
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_2740ACAC8((v1 + 1), &v7);
  MEMORY[0x2743E5FB0](v7, v8);
  sub_2740ACB2C(&v7);
  sub_2740CB460(0xD000000000000023, 0x80000002741E2A50);

  v2 = type metadata accessor for PasswordPromptSheet(0);
  sub_2740A6D94(v0 + *(v2 + 60), &v5, &qword_28093AAC0, &unk_2741D5920);
  if (!v6)
  {
    return sub_27409D420(&v5, &qword_28093AAC0, &unk_2741D5920);
  }

  sub_27409D118(&v5, &v7);
  __swift_project_boxed_opaque_existential_1(&v7, v9);
  v3 = off_288329530;
  type metadata accessor for WiFiPasswordSharingService();
  v3();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v7);
}

uint64_t sub_274175B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  type metadata accessor for WiFiAssociator();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = &off_288329608;
  sub_2740A6D94(a2, &v18, &qword_28093A228, &unk_2741D4770);
  if (v19)
  {
    sub_27409D118(&v18, v21);
    v9 = v22;
    v10 = v23;
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v19 = v9;
    v20 = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    v13 = sub_2741C80DC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_27409D4E4(&v18, v17);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_27409D118(v17, v14 + 32);
    *(v14 + 72) = 1;

    sub_2740CE980(0, 0, v7, &unk_2741D5960, v14);

    sub_27409D420(a2, &qword_28093A228, &unk_2741D4770);
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_27409D420(a2, &qword_28093A228, &unk_2741D4770);
    sub_27409D420(&v18, &qword_28093A228, &unk_2741D4770);
  }

  return v8;
}

uint64_t *sub_274175DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v27[3] = sub_27417615C();
  v27[4] = &off_28832C8F0;
  v27[0] = a4;
  a5[7] = 0;
  a5[8] = &unk_2883264F0;
  sub_27409D4E4(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAD0, &qword_2741D5958);
  if (swift_dynamicCast())
  {

    v10 = [objc_opt_self() passwordSharingAvailability];
    v11 = a5[8];
    v12 = *(v11 + 16);
    v13 = (v11 + 32);
    do
    {
      if (!v12)
      {
        v15 = ":securityType:service:)";
        v16 = 0xD000000000000030;
        goto LABEL_11;
      }

      v14 = *v13++;
      --v12;
    }

    while (v14 != a3);
    if (!v10)
    {
      goto LABEL_7;
    }

    v15 = " password for network: ";
    v16 = 0xD000000000000035;
LABEL_11:

    sub_2740CB218(v16, v15 | 0x8000000000000000, 0xD000000000000027, 0x80000002741E29E0);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    type metadata accessor for WiFiPasswordSharingService();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
LABEL_7:
    sub_27409D4E4(v27, (a5 + 2));
    swift_beginAccess();
    v17 = a5[5];
    v18 = a5[6];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 2), v17);
    (*(v18 + 16))(a1, a2, v17, v18);
    swift_endAccess();
    if (qword_280937370 != -1)
    {
      swift_once();
    }

    v19 = unk_280939580;
    swift_beginAccess();
    v20 = a5[5];
    v21 = a5[6];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 2), v20);
    v22 = *(v21 + 40);
    v23 = swift_unknownObjectRetain();
    v22(v23, v19, v20, v21);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return a5;
}

uint64_t sub_274176080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasswordPromptSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741760E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AAC0, &unk_2741D5920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_27417615C()
{
  result = qword_28093AAC8;
  if (!qword_28093AAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28093AAC8);
  }

  return result;
}

uint64_t sub_2741761A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2741761FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2741762CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_27417637C(uint64_t a1)
{
  sub_2741765D4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WiFiAssociator();
    if (v2 <= 0x3F)
    {
      sub_2740FB16C(319, &qword_280937EA8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2740FB16C(319, &qword_280937EB0, type metadata accessor for AssociationModel, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_274118100(319, &qword_280937EC8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_274176638(319, &qword_280937ED0, &qword_280937E78, &qword_2741D81E0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_274118100(319, &qword_280939450, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                sub_2740FB16C(319, &qword_280937EC0, type metadata accessor for AssociationCredentials, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_2740A5850(319);
                  if (v9 <= 0x3F)
                  {
                    sub_274176638(319, &qword_28093AAF0, &qword_28093AAF8, &qword_2741D59A0, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
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

unint64_t sub_2741765D4()
{
  result = qword_28093AAE8;
  if (!qword_28093AAE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28093AAE8);
  }

  return result;
}

void sub_274176638(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2741766E4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for PasswordPromptSheet(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_274175294(a1, a2, v6);
}

unint64_t sub_274176764()
{
  result = qword_28093AB38;
  if (!qword_28093AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
    sub_2740A6D24(&qword_28093AB40, &qword_28093AB48, &unk_2741D5A58, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AB38);
  }

  return result;
}

uint64_t sub_2741768C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PasswordPromptSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274176950()
{
  result = qword_28093AB98;
  if (!qword_28093AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB80, &qword_2741D5B88);
    sub_2740A6D24(&qword_280939810, &qword_2809397E0, &qword_2741D5B80, MEMORY[0x277CE1138]);
    sub_274176A48(&qword_280938F10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AB98);
  }

  return result;
}

uint64_t sub_274176A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274176A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_274176B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for PasswordPromptSheet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2741C6DBC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v1[10]));
  }

  v8 = (v5 + v1[15]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274176D98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB08, &qword_2741D5A00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AB00, &unk_2741D7EC0);
  sub_274176764();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

char *sub_274176EC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABE8, &qword_2741D5CA0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_274176FC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939D80, &qword_2741D2B38);
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

char *sub_2741770D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC10, &qword_2741D5CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2741771D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809385F0, &unk_2741CF560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_274177318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
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

void *sub_274177464(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_274177640(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC00, &qword_2741D5CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2741776D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF0, &qword_2741D5CA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_274177768(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2741777F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
    v3 = sub_2741C867C();
    for (i = a1 + 32; ; i += 48)
    {
      sub_2740A6D94(i, v11, &qword_28093ABD0, &qword_2741D5C88);
      v5 = v11[0];
      result = sub_274125ECC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_27409D118(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABD8, &qword_2741D5C90);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v11, &qword_28093ABE0, &qword_2741D5C98);
      v5 = v11;
      result = sub_274125370(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_27409D2F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC28, &qword_2741D5CE0);
    v3 = sub_2741C867C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2741251AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v13, &qword_280938440, &qword_2741CC118);
      v5 = v13;
      v6 = v14;
      result = sub_2741251AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27409D2F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABC8, &qword_2741D5C80);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v11, &qword_28093ABB0, &qword_2741D5C68);
      v5 = v11;
      result = sub_274125404(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_27409D2F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC20, &qword_2741D5CD8);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, v15, &qword_2809384F0, &qword_2741CC4A8);
      result = sub_274125164(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AC08, &qword_2741D5CC0);
    v3 = sub_2741C867C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2741251AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274177FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, v13, &qword_280939BE8, qword_2741D1A70);
      result = sub_274125164(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_27409D2F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_274178114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABF8, &qword_2741D5CB0);
    v3 = sub_2741C867C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2741251AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_274178210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v3 = sub_2741C867C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_274125ECC();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_274125ECC();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_274178320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
    v3 = sub_2741C867C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2740A6D94(v4, &v13, &qword_28093AC18, &qword_2741D5CD0);
      v5 = v13;
      v6 = v14;
      result = sub_2741251AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27409D118(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_274178454()
{
  v95[30] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v79 = &v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v85 = &v73 - v5;
  v88 = type metadata accessor for EnterpriseIdentity(0);
  v81 = *(v88 - 8);
  v7 = MEMORY[0x28223BE20](v88, v6);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v86 = &v73 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABA8, &qword_2741D5C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741D5C50;
  v12 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v13 = *MEMORY[0x277CDC240];
  type metadata accessor for CFString(0);
  *(inited + 40) = v13;
  v14 = *MEMORY[0x277CDC568];
  v15 = MEMORY[0x277D839B0];
  *(inited + 64) = v16;
  *(inited + 72) = v14;
  *(inited + 80) = 1;
  v17 = *MEMORY[0x277CDC428];
  *(inited + 104) = v15;
  *(inited + 112) = v17;
  v18 = *MEMORY[0x277CDC430];
  *(inited + 120) = *MEMORY[0x277CDC430];
  v19 = *MEMORY[0x277CDBEC8];
  v90 = v16;
  *(inited + 144) = v16;
  *(inited + 152) = v19;
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000002741E2A80;
  v20 = *MEMORY[0x277CDC5D0];
  if (!*MEMORY[0x277CDC5D0])
  {
    __break(1u);
  }

  *(inited + 192) = v20;
  *(inited + 224) = v15;
  *(inited + 200) = 1;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  sub_274177C6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABB0, &qword_2741D5C68);
  swift_arrayDestroy();
  sub_274178E40();
  v28 = sub_2741C7D4C();

  v95[0] = 0;
  if (SecItemCopyMatching(v28, v95))
  {
    goto LABEL_3;
  }

  if (!v95[0])
  {
    sub_2740CB460(0xD00000000000001ALL, 0x80000002741E2AA0);
LABEL_3:

    v89 = 0;
LABEL_4:
    swift_unknownObjectRelease();
    return v89;
  }

  v91 = v95[0];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ABB8, &qword_2741D5C70);
  if (!swift_dynamicCast())
  {
    sub_2740CB218(0xD000000000000031, 0x80000002741E2AC0, 0xD000000000000011, 0x80000002741E2B00);
    goto LABEL_3;
  }

  v30 = v94;
  v89 = (v94 >> 62);
  if (v94 >> 62)
  {
    goto LABEL_63;
  }

  v31 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v73 = v28;
  v87 = v30;
  if (v31)
  {
    v32 = 0;
    v33 = v30 & 0xC000000000000001;
    v34 = v30 & 0xFFFFFFFFFFFFFF8;
    v90 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33)
      {
        v35 = MEMORY[0x2743E6600](v32, v30);
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_60;
        }

        v35 = *(v30 + 8 * v32 + 32);
      }

      v28 = v35;
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v31 = sub_2741C848C();
        goto LABEL_9;
      }

      v94 = 0;
      SecIdentityCopyCertificate(v35, &v94);
      v93 = 0;
      if (!v94)
      {
        goto LABEL_21;
      }

      v36 = v94;
      SecCertificateCopyCommonName(v36, &v93);
      v37 = v93;
      if (!v93)
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      v91 = 0;
      v92 = 0;
      v38 = v37;
      sub_2741C7E6C();

      v39 = v92;
      if (!v92)
      {
        break;
      }

      v40 = v91;

LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_274176FC8(0, *(v90 + 2) + 1, 1, v90);
      }

      v42 = *(v90 + 2);
      v41 = *(v90 + 3);
      v28 = (v42 + 1);
      if (v42 >= v41 >> 1)
      {
        v90 = sub_274176FC8((v41 > 1), v42 + 1, 1, v90);
      }

      v43 = v90;
      *(v90 + 2) = v28;
      v44 = &v43[16 * v42];
      *(v44 + 4) = v40;
      *(v44 + 5) = v39;
      ++v32;
      v45 = v30 == v31;
      v30 = v87;
      if (v45)
      {
        goto LABEL_33;
      }
    }

LABEL_21:
    v40 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_22;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_33:
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_2741C856C();

  v91 = 0xD000000000000014;
  v92 = 0x80000002741E2B20;
  v46 = MEMORY[0x2743E6080](v90, MEMORY[0x277D837D0]);
  v28 = v47;
  MEMORY[0x2743E5FB0](v46);

  sub_2740CB218(v91, v92, 0xD000000000000011, 0x80000002741E2B00);

  if (v89)
  {
    v48 = sub_2741C848C();
    v49 = v85;
    if (v48)
    {
      goto LABEL_35;
    }

LABEL_55:
    v89 = MEMORY[0x277D84F90];
LABEL_56:

    v53 = v73;
LABEL_58:

    goto LABEL_4;
  }

  v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v85;
  if (!v48)
  {
    goto LABEL_55;
  }

LABEL_35:
  v50 = 0;
  v77 = v30 & 0xFFFFFFFFFFFFFF8;
  v78 = v30 & 0xC000000000000001;
  v74 = (v81 + 48);
  v75 = (v81 + 56);
  v51 = v90 + 40;
  v89 = MEMORY[0x277D84F90];
  v76 = v48;
  while (1)
  {
    if (v78)
    {
      v52 = MEMORY[0x2743E6600](v50, v30);
    }

    else
    {
      if (v50 >= *(v77 + 16))
      {
        goto LABEL_61;
      }

      v52 = *(v30 + 8 * v50 + 32);
    }

    v53 = v52;
    v54 = *(v90 + 2);
    if (v50 == v54)
    {

      goto LABEL_58;
    }

    if (v50 >= v54)
    {
      goto LABEL_62;
    }

    v55 = *(v51 - 1);
    v56 = *v51;
    *(v49 + 3) = 0;
    *(v49 + 4) = 0;
    v57 = *(v88 + 28);
    v28 = sub_2741C696C();
    v58 = *(v28 - 1);
    v83 = *(v58 + 56);
    v84 = v57;
    v82 = v58 + 56;
    v83(&v49[v57], 1, 1, v28);
    *v49 = v55;
    *(v49 + 1) = v56;
    *(v49 + 2) = v53;
    v91 = 0;
    swift_bridgeObjectRetain_n();
    v59 = v53;
    v60 = SecIdentityCopyCertificate(v59, &v91);
    v61 = v91;
    if (!v60)
    {
      if (v91)
      {
        break;
      }
    }

LABEL_47:

    v68 = v88;
    (*v75)(v49, 0, 1, v88);

    if ((*v74)(v49, 1, v68) == 1)
    {
      sub_274178E98(v49);
    }

    else
    {
      v69 = v80;
      sub_2740F23D4(v49, v80);
      sub_2740F23D4(v69, v86);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_274177464(0, v89[2] + 1, 1, v89, &qword_28093ABC0, &qword_2741D5C78, type metadata accessor for EnterpriseIdentity);
      }

      v71 = v89[2];
      v70 = v89[3];
      v28 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        v89 = sub_274177464((v70 > 1), v71 + 1, 1, v89, &qword_28093ABC0, &qword_2741D5C78, type metadata accessor for EnterpriseIdentity);
      }

      v72 = v89;
      v89[2] = v28;
      sub_2740F23D4(v86, v72 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v71);
    }

    ++v50;
    v51 += 16;
    if (v76 == v50)
    {
      goto LABEL_56;
    }
  }

  v62 = v91;
  result = SecCertificateCopyIssuerSummary();
  if (result)
  {
    v63 = result;
    v64 = sub_2741C7E7C();
    v66 = v65;

    v49 = v85;
    *(v85 + 3) = v64;
    *(v49 + 4) = v66;
    SecCertificateNotValidAfter();

    v67 = v79;
    sub_2741C68DC();

    v83(v67, 0, 1, v28);
    sub_274178F00(v67, &v49[v84]);
    v61 = v91;
    v30 = v87;
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

unint64_t sub_274178E40()
{
  result = qword_280937D58;
  if (!qword_280937D58)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280937D58);
  }

  return result;
}

uint64_t sub_274178E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274178F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_274178F9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937400 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = sub_2741C76AC();
  v4 = v3;
  *a1 = v2;
  *(a1 + 8) = v3;
  v6 = v5 & 1;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27409861C(v2, v3, v5 & 1);

  sub_2740A6AC8(v2, v4, v6);
}

uint64_t sub_274179084@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2741C70EC();
  sub_274178F9C(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  LOBYTE(v11[0]) = 1;
  v17 = v12;
  v16 = v15;
  result = sub_2741C736C();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 68) = result;
  return result;
}

unint64_t sub_274179120()
{
  result = qword_28093AC38;
  if (!qword_28093AC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AC40, &unk_2741D5D60);
    sub_2740A6D24(&qword_2809392E0, &qword_2809392D8, &qword_2741CF338, MEMORY[0x277CE1138]);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC38);
  }

  return result;
}

uint64_t sub_274179204()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_274179274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2741792EC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2741793C4()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_274179444@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2741794C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_27417A880();
    sub_2741C69FC();
  }
}

uint64_t sub_2741795F0()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_274179670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_2741796EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_27417A880();
    sub_2741C69FC();
  }
}

uint64_t sub_27417981C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27417A880();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v5 + v3, a1);
}

uint64_t sub_2741798B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a2);
}

uint64_t sub_27417994C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_274099294(a1, &v7 - v4);
  return sub_2741799E0(v5);
}

uint64_t sub_2741799E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v1 + v7, v6);
  v8 = sub_27417AA4C(v6, a1);
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_27417A880();
    sub_2741C69FC();
  }

  else
  {
    sub_274099294(a1, v6);
    swift_beginAccess();
    sub_274099390(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274179BA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  sub_27410B054(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_274179C0C()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
}

uint64_t sub_274179C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
  return result;
}

uint64_t sub_274179D04(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274179DE4()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
}

uint64_t sub_274179E5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
  return result;
}

uint64_t sub_274179EDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_27417A880();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274179FC4()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();
}

uint64_t sub_27417A040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain);
}

uint64_t sub_27417A0C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C69FC();
}

uint64_t sub_27417A160()
{

  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity, &qword_280937DA0, &qword_2741CB190);
  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__sharer, &qword_28093AAC0, &unk_2741D5920);
  sub_2740ACB2C(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword_network);

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationPassword(uint64_t a1)
{
  result = qword_28093AC78;
  if (!qword_28093AC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27417A2D4(uint64_t a1)
{
  sub_2740997F4(319);
  if (v1 <= 0x3F)
  {
    sub_2741C6A4C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27417A3FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword_networkName);

  return v1;
}

uint64_t sub_27417A43C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_27417A4BC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_27417A53C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__privateMACAddressMode);
}

uint64_t sub_27417A5B4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__overrideLockdown);
}

uint64_t sub_27417A62C()
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();
}

uint64_t sub_27417A6A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C69FC();
}

uint64_t sub_27417A74C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a1);
}

uint64_t sub_27417A7E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27417A880();
  sub_2741C6A0C();

  return *(v1 + 16);
}

unint64_t sub_27417A880()
{
  result = qword_28093AC88;
  if (!qword_28093AC88)
  {
    type metadata accessor for AssociationPassword(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC88);
  }

  return result;
}

uint64_t sub_27417A900()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15WiFiSettingsKit19AssociationPassword__certificateChain) = *(v0 + 24);
}

uint64_t keypath_set_77Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_27417AA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseIdentity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_274099294(a1, &v23 - v16);
  sub_274099294(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_274099294(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2740F23D4(&v17[v18], v8);
      v21 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_2740FBC6C(v8);
      sub_2740FBC6C(v12);
      sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
      v20 = !v21;
      return v20 & 1;
    }

    sub_2740FBC6C(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27409D420(v17, &qword_280939B58, &unk_2741D15B0);
    v20 = 1;
    return v20 & 1;
  }

  sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_27417AD14()
{
  result = qword_28093AC98;
  if (!qword_28093AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACA0, qword_2741D5FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AC98);
  }

  return result;
}

id WiFiPickerManager.__allocating_init(configuration:context:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_27417C70C(a1, a2);

  return v6;
}

id WiFiPickerManager.init(configuration:context:)(void *a1, uint64_t a2)
{
  v3 = sub_27417C70C(a1, a2);

  return v3;
}

uint64_t sub_27417AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27417AF2C, v6, v5);
}

uint64_t sub_27417AF2C(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v1[8] = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27417AFC8, v3, v2);
}

uint64_t sub_27417AFC8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;

  sub_2741C6BFC();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_27417D1BC, v1, v2);
}

uint64_t sub_27417B0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = sub_2741C80DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2741C80AC();
  v9 = v2;
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_2740CE980(0, 0, v7, a2, v11);
}

uint64_t sub_27417B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v6 = sub_2741C805C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_27417B278, v6, v5);
}

uint64_t sub_27417B278(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel);
  v1[8] = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27417B314, v3, v2);
}

uint64_t sub_27417B314()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 0;

  sub_2741C6BFC();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_27417D1BC, v1, v2);
}

void sub_27417B3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = sub_2741C80DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2741C80AC();
  v11 = a1;
  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_2740CE980(0, 0, v9, a4, v13);
}

uint64_t sub_27417B510(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();
  v8 = v1;
  v9 = a1;
  v10 = sub_2741C809C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_2740CE980(0, 0, v6, &unk_2741D60E0, v11);
}

uint64_t sub_27417B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2741C80AC();
  v5[5] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_27417B6E0, v7, v6);
}

uint64_t sub_27417B6E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2741C6BEC();

  v0[8] = v0[2];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_27417B7D8;
  v2 = v0[4];

  return sub_2740DE050(v2);
}

uint64_t sub_27417B7D8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_27417B91C, v3, v2);
}

uint64_t sub_27417B91C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27417BACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();
  v8 = v1;

  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  sub_2740CE980(0, 0, v6, &unk_2741D60F0, v10);
}

uint64_t sub_27417BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2741C80AC();
  v5[4] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_27417BC9C, v7, v6);
}

uint64_t sub_27417BC9C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_27417BD40;
  v2 = *(v0 + 24);

  return sub_27411FB00(v2);
}

uint64_t sub_27417BD40()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2741310F0, v3, v2);
}

uint64_t sub_27417BFB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_2741C80DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2741C80AC();

  v8 = v1;
  v9 = sub_2741C809C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;
  sub_2740CE980(0, 0, v6, &unk_2741D6100, v10);
}

uint64_t sub_27417C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2741C80AC();
  v5[5] = sub_2741C809C();
  v7 = sub_2741C805C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_27417C184, v7, v6);
}

uint64_t sub_27417C184()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = type metadata accessor for WiFiNetwork(0);
    do
    {
      v7 = *v5;
      v8 = objc_allocWithZone(v6);
      swift_bridgeObjectRetain_n();
      v9 = WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(v7, 0);
      MEMORY[0x2743E6040]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2741C800C();
      }

      sub_2741C802C();

      v1 = *v2;

      ++v5;
      --v4;
    }

    while (v4);
  }

  v0[8] = v1;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_27417C30C;

  return sub_27411FB00(v1);
}

uint64_t sub_27417C30C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_27417C42C, v3, v2);
}

uint64_t sub_27417C42C()
{

  v1 = *(v0 + 8);

  return v1();
}

id WiFiPickerManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiPickerManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WiFiPickerManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_27417C70C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(&v29 + 1) = &type metadata for WiFiSettingsKitFeatureFlags;
  *&v30 = sub_27417D0F4();
  v6 = sub_2741C6A5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  if (v6)
  {
    v7 = *(a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_currentNetwork);
    type metadata accessor for CurrentNetworkViewModel(0);
    swift_allocObject();
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = sub_2740DEB74(v7, 0, a2);

    swift_unknownObjectRelease();
    v10 = *(a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_networks);
    type metadata accessor for NetworksViewModel(0);
    swift_allocObject();

    v11 = sub_274122588(v9, v10);

    v12 = OBJC_IVAR___WiFiPickerConfiguration_Swift_presentationStyle;
    swift_beginAccess();
    *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_presentationStyle) = *(a1 + v12);
    v13 = OBJC_IVAR___WiFiPickerConfiguration_Swift_interactionStyle;
    swift_beginAccess();
    *(v11 + OBJC_IVAR____TtC15WiFiSettingsKit17NetworksViewModel_interactionStyle) = *(a1 + v13);
    v14 = (a1 + OBJC_IVAR___WiFiPickerConfiguration_Swift_accessoryName);
    swift_beginAccess();
    v16 = *v14;
    v15 = v14[1];

    sub_2741C7A2C();
    v17 = v28;
    v18 = *(&v28 + 1);
    *&v28 = 0x4046800000000000;
    *(&v28 + 1) = sub_27417D148;
    *&v29 = v11;
    BYTE8(v29) = 0;
    *&v30 = v16;
    *(&v30 + 1) = v15;
    LOBYTE(v31) = v17;
    *(&v31 + 1) = v18;
    *&v3[OBJC_IVAR___WiFiPickerManager_Swift_networksViewModel] = v11;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACC0, &unk_2741D6208));

    sub_27416698C(&v28, v23);
    *&v3[OBJC_IVAR___WiFiPickerManager_Swift_hostingController] = sub_2741C71FC();
    v22.receiver = v3;
    v22.super_class = type metadata accessor for WiFiPickerManager();
    v20 = objc_msgSendSuper2(&v22, sel_init);

    sub_27417D150(&v28);

    swift_unknownObjectRelease();
    return v20;
  }

  else
  {
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27417CA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27417AE90(a1, v4, v5, v6);
}

uint64_t sub_27417CAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27417B1DC(a1, v4, v5, v6);
}

uint64_t sub_27417CB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417B648(a1, v4, v5, v7, v6);
}

uint64_t sub_27417CC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417BC04(a1, v4, v5, v7, v6);
}

uint64_t sub_27417CD00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27417C0EC(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of WiFiPickerManager.updateScannedNetworks(networks:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27417D024(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_27417B648(a1, v4, v5, v7, v6);
}

unint64_t sub_27417D0F4()
{
  result = qword_28093ACB8;
  if (!qword_28093ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093ACB8);
  }

  return result;
}

uint64_t sub_27417D1C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  sub_2741C6A0C();

  *a2 = *(v3 + 128);
}

uint64_t sub_27417D2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_2740A6D94(a1, &v6 - v4, &qword_280938680, &qword_2741D5140);
  return sub_2741C704C();
}

uint64_t sub_27417D364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2741C70AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  sub_2740A6D94(v2, &v15 - v11, &qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2740C12C4(v12, a1);
  }

  sub_2741C82AC();
  v14 = sub_2741C74FC();
  sub_2741C6ACC();

  sub_2741C709C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t type metadata accessor for WiFiSettingsMainView(uint64_t a1)
{
  result = qword_28093AD78;
  if (!qword_28093AD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WiFiSettingsMainView.deferredURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WiFiSettingsMainView(0) + 32);

  return sub_274117D38(a1, v3);
}

uint64_t WiFiSettingsMainView.init()@<X0>(char *a1@<X8>)
{
  v2 = sub_2741C673C();
  v81 = *(v2 - 8);
  v82 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v75 - v7;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for WiFiSettingsMainView(0);
  v9 = &a1[v8[6]];
  strcpy(v9, "Power Section");
  *(v9 + 7) = -4864;
  v10 = [objc_opt_self() defaultCenter];
  if (qword_280937B90 != -1)
  {
    swift_once();
  }

  v11 = qword_280946F08;
  sub_2741C82FC();
  v12 = v8[8];
  v13 = sub_2741C689C();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = &a1[v8[9]];
  LOBYTE(v86) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACC8, &unk_2741D6250);
  sub_2741C7A2C();
  v15 = *(&v83 + 1);
  *v14 = v83;
  *(v14 + 1) = v15;
  v16 = &a1[v8[10]];
  LOBYTE(v86) = 0;
  sub_2741C7A2C();
  v17 = *(&v83 + 1);
  *v16 = v83;
  *(v16 + 1) = v17;
  v18 = &a1[v8[11]];
  LOBYTE(v86) = 0;
  sub_2741C7A2C();
  v19 = *(&v83 + 1);
  *v18 = v83;
  *(v18 + 1) = v19;
  v20 = &a1[v8[12]];
  LOBYTE(v86) = 0;
  sub_2741C7A2C();
  v21 = *(&v83 + 1);
  *v20 = v83;
  *(v20 + 1) = v21;
  v22 = &a1[v8[13]];
  LOBYTE(v86) = 0;
  sub_2741C7A2C();
  v23 = *(&v83 + 1);
  *v22 = v83;
  *(v22 + 1) = v23;
  v24 = &a1[v8[14]];
  type metadata accessor for AssociationModel(0);
  v25 = swift_allocObject();
  v86 = sub_274139DC0(v25);
  sub_2741C7A2C();
  v26 = *(&v83 + 1);
  *v24 = v83;
  *(v24 + 1) = v26;
  v27 = v8[15];
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v78 = &a1[v27];
  v28 = qword_280946F10;
  type metadata accessor for CurrentNetworkModel(0);
  v29 = swift_allocObject();

  sub_2741C6A3C();
  v30 = type metadata accessor for CurrentNetworkState(0);
  swift_allocObject();
  v31 = sub_27419D9D0();
  v29[2] = v31;
  *(&v84 + 1) = v30;
  v85 = sub_274186558(&qword_28093A6D8, type metadata accessor for CurrentNetworkState, &unk_2741D7354);
  *&v83 = v31;
  v32 = type metadata accessor for WiFiStateProvider();
  v33 = swift_allocObject();

  v34 = sub_274183FF8(v28, &v83, v33);
  v29[6] = v32;
  v29[7] = &off_28832A538;
  v29[3] = v34;

  v35 = type metadata accessor for ScanState(0);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  sub_2741C6A3C();
  *(&v84 + 1) = v35;
  v85 = sub_274186558(&qword_280938E50, type metadata accessor for ScanState, &unk_2741D5750);
  *&v83 = v36;

  v38 = sub_274183D64(v37, &v83);

  v77 = sub_274197AE8();
  v76 = v39;
  v41 = v40;
  LOWORD(v36) = v42;

  v43 = type metadata accessor for WiFiScanner();
  *(&v84 + 1) = v43;
  v85 = &off_28832B088;
  *&v83 = v38;
  type metadata accessor for NetworksListModel(0);
  v44 = swift_allocObject();
  v45 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v43);
  MEMORY[0x28223BE20](v45, v45);
  v47 = (&v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = sub_274184514(v29, *v47, v77, v76, v41, v36 & 0x1FF, v44);

  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  v86 = v49;
  sub_2741C7A2C();
  v50 = *(&v83 + 1);
  v51 = v78;
  *v78 = v83;
  *(v51 + 1) = v50;
  v52 = &a1[v8[16]];
  type metadata accessor for KnownNetworksViewModel(0);
  swift_allocObject();
  v86 = KnownNetworksViewModel.init()();
  sub_2741C7A2C();
  v53 = *(&v83 + 1);
  *v52 = v83;
  *(v52 + 1) = v53;
  v54 = &a1[v8[17]];
  type metadata accessor for UserSettingsModel(0);
  v55 = swift_allocObject();
  sub_2741C6A3C();
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v56 = type metadata accessor for WiFiSystemConfiguration();
  v57 = swift_allocObject();

  v59 = sub_27409CBB0(v58, &v83, v57);

  *(v55 + 40) = v56;
  *(v55 + 48) = &off_2883289C0;
  *(v55 + 16) = v59;
  v60 = __swift_project_boxed_opaque_existential_1((v55 + 16), v56);
  v61 = *v60;
  v62 = *(*v60 + 40);
  v64 = *(*v60 + 48);
  v63 = *(*v60 + 56);
  v65 = *(v61 + 64);
  LOBYTE(v61) = *(v61 + 65);
  *(v55 + 56) = v62;
  *(v55 + 64) = v64;
  *(v55 + 72) = v63;
  *(v55 + 80) = v65;
  *(v55 + 81) = v61;
  v86 = v55;

  sub_2741C7A2C();
  v66 = *(&v83 + 1);
  *v54 = v83;
  *(v54 + 1) = v66;
  v67 = &a1[v8[18]];
  v86 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A8F0, &qword_2741D5148);
  sub_2741C7A2C();
  v68 = *(&v83 + 1);
  *v67 = v83;
  *(v67 + 1) = v68;
  v69 = v79;
  sub_2741C672C();
  v70 = v81;
  v71 = v82;
  (*(v81 + 16))(v80, v69, v82);
  sub_2741C7A2C();
  (*(v70 + 8))(v69, v71);
  v72 = &a1[v8[20]];
  LOBYTE(v86) = 0;
  sub_2741C7A2C();
  v73 = *(&v83 + 1);
  *v72 = v83;
  *(v72 + 1) = v73;
  type metadata accessor for AppStateProvider(0);
  swift_allocObject();
  *&a1[v8[5]] = sub_2740B3988();
  *&a1[v8[21]] = qword_280946F10;
}

uint64_t WiFiSettingsMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v148 = a1;
  v2 = type metadata accessor for WiFiSettingsMainView(0);
  v3 = *(v2 - 8);
  v4 = (v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v154 = v6;
  v7 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACD0, &qword_2741D6260);
  v126 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v8);
  v121 = &v118 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACD8, &qword_2741D6268);
  v129 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v10);
  v123 = &v118 - v11;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACE0, &qword_2741D6270);
  v131 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v12);
  v125 = &v118 - v13;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACE8, &qword_2741D6278);
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v14);
  v150 = &v118 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACF0, &qword_2741D6280);
  MEMORY[0x28223BE20](v137, v16);
  v132 = &v118 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ACF8, &qword_2741D6288);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v18);
  v151 = &v118 - v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD00, &qword_2741D6290);
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v20);
  v152 = &v118 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD08, &qword_2741D6298);
  v23 = *(v22 - 8);
  v144 = v22;
  v145 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v140 = &v118 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD10, &unk_2741D62A0);
  v146 = *(v26 - 8);
  v147 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v141 = &v118 - v28;
  v155 = type metadata accessor for WiFiSettingsMainView;
  v149 = v7;
  sub_274186B00(v1, v7, type metadata accessor for WiFiSettingsMainView);
  v157 = *(v3 + 80);
  v29 = (v157 + 16) & ~v157;
  v127 = v29;
  v30 = swift_allocObject();
  sub_274184814(v7, v30 + v29);
  v158 = sub_274184878;
  v159 = v30;
  v31 = v4;
  v32 = (v1 + v4[16]);
  v156 = v1;
  v34 = *v32;
  v33 = v32[1];
  v162 = v34;
  v163 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD20, &qword_2741D62B8);
  sub_2741C7A3C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD28, &unk_2741D62C0);
  v36 = type metadata accessor for AssociationModel(0);
  v37 = sub_2740A6D24(&qword_28093AD30, &qword_28093AD28, &unk_2741D62C0, MEMORY[0x277CDDB40]);
  v38 = sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  v136 = v36;
  v135 = v38;
  sub_2741C770C();

  v39 = (v1 + v31[18]);
  v41 = *v39;
  v40 = v39[1];
  v158 = v41;
  v159 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  v42 = type metadata accessor for KnownNetworksViewModel(0);
  v158 = v35;
  v159 = v36;
  v160 = v37;
  v161 = v38;
  v43 = MEMORY[0x277CE0C50];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_274186558(&qword_280937E00, type metadata accessor for KnownNetworksViewModel, &protocol conformance descriptor for KnownNetworksViewModel);
  v46 = v123;
  v47 = v124;
  v48 = v121;
  sub_2741C770C();

  (*(v126 + 1))(v48, v47);
  v49 = v31[17];
  v153 = v31;
  v50 = v156;
  v51 = (v156 + v49);
  v53 = *v51;
  v52 = v51[1];
  v126 = v53;
  v121 = v52;
  v158 = v53;
  v159 = v52;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD38, &unk_2741D62D0);
  sub_2741C7A3C();
  v119 = type metadata accessor for NetworksListModel(0);
  v158 = v47;
  v159 = v42;
  v160 = OpaqueTypeConformance2;
  v161 = v45;
  v54 = v43;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v57 = v125;
  v58 = v128;
  sub_2741C770C();

  (*(v129 + 8))(v46, v58);
  v59 = (v50 + v31[19]);
  v61 = *v59;
  v60 = v59[1];
  v158 = v61;
  v159 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809391B8, &qword_2741CF038);
  sub_2741C7A3C();
  v62 = type metadata accessor for UserSettingsModel(0);
  v158 = v58;
  v159 = v119;
  v160 = v55;
  v161 = v56;
  v122 = v54;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_274186558(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
  v65 = v130;
  sub_2741C770C();

  v66 = v65;
  (*(v131 + 8))(v57, v65);
  v158 = v126;
  v159 = v121;
  sub_2741C7A3C();
  v67 = v162;
  swift_getKeyPath();
  v158 = v67;
  sub_2741C6A0C();

  type metadata accessor for CurrentNetworkModel(0);
  v158 = v66;
  v159 = v62;
  v160 = v63;
  v161 = v64;
  swift_getOpaqueTypeConformance2();
  sub_274186558(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  v68 = v132;
  v69 = v133;
  v70 = v150;
  sub_2741C770C();

  (*(v134 + 8))(v70, v69);
  v71 = v153;
  v72 = v155;
  v73 = v156;
  v74 = *(*(v156 + v153[7]) + 24);
  v75 = v149;
  sub_274186B00(v156, v149, v155);
  v76 = v127;
  v77 = swift_allocObject();
  sub_274184814(v75, v77 + v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD40, &unk_2741D6308);
  *(v68 + *(v78 + 52)) = v74;
  v79 = (v68 + *(v78 + 56));
  *v79 = sub_274184928;
  v79[1] = v77;
  sub_274186B00(v73, v75, v72);
  v80 = swift_allocObject();
  sub_274184814(v75, v80 + v76);
  v81 = v137;
  v82 = (v68 + *(v137 + 36));
  *v82 = sub_274184998;
  v82[1] = v80;
  v82[2] = 0;
  v82[3] = 0;
  v83 = v73 + v71[14];
  v84 = *v83;
  v85 = *(v83 + 8);
  LOBYTE(v158) = v84;
  v159 = v85;

  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  LOBYTE(v158) = v162;
  sub_274186B00(v73, v75, v72);
  v86 = swift_allocObject();
  sub_274184814(v75, v86 + v76);
  v87 = sub_2741849B4();
  sub_2741C78DC();

  sub_27409D420(v68, &qword_28093ACF0, &qword_2741D6280);
  v88 = v153;
  v133 = v153[10];
  v89 = v156;
  sub_274186B00(v156, v75, v72);
  v90 = swift_allocObject();
  sub_274184814(v75, v90 + v76);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  v158 = v81;
  v159 = MEMORY[0x277D839B0];
  v160 = v87;
  v161 = MEMORY[0x277D839C8];
  v137 = MEMORY[0x277CE0E40];
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_274184AC0();
  v93 = v89;
  v94 = v151;
  v95 = v138;
  sub_2741C78DC();

  v139[1](v94, v95);
  v96 = v93 + v88[12];
  v97 = *v96;
  v98 = *(v96 + 8);
  LOBYTE(v162) = v97;
  v163 = v98;
  sub_2741C7A5C();
  v139 = v159;
  LODWORD(v151) = v160;
  v99 = v155;
  sub_274186B00(v93, v75, v155);
  v100 = swift_allocObject();
  sub_274184814(v75, v100 + v76);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD68, &qword_2741D6318);
  v158 = v95;
  v159 = v134;
  v160 = v91;
  v161 = v92;
  v138 = swift_getOpaqueTypeConformance2();
  v101 = sub_274184BE4();
  v158 = &type metadata for WiFiURLView;
  v159 = v136;
  v160 = v101;
  v161 = v135;
  v117 = swift_getOpaqueTypeConformance2();
  v102 = v140;
  v103 = v142;
  v104 = v152;
  sub_2741C788C();

  (*(v143 + 8))(v104, v103);
  v105 = v156;
  v106 = v149;
  sub_274186B00(v156, v149, v99);
  v107 = swift_allocObject();
  sub_274184814(v106, v107 + v76);
  v158 = v103;
  v159 = v133;
  v160 = v138;
  v161 = v117;
  swift_getOpaqueTypeConformance2();
  v108 = v141;
  v109 = v144;
  sub_2741C790C();

  (*(v145 + 8))(v102, v109);
  v110 = v105 + v153[22];
  v111 = *v110;
  v112 = *(v110 + 8);
  LOBYTE(v162) = v111;
  v163 = v112;
  sub_2741C7A5C();
  v113 = v158;
  v114 = v159;
  LODWORD(v104) = v160;
  sub_274186B00(v105, v106, v155);
  v115 = swift_allocObject();
  sub_274184814(v106, v115 + v76);
  sub_274183640(v113, v114, v104, sub_274184CA8, v115, v148);

  return (*(v146 + 8))(v108, v147);
}

uint64_t sub_27417F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v31 = a3;
  v4 = type metadata accessor for WiFiSettingsMainView(0);
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = sub_2741C6EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADE0, &qword_2741D64A0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  v27 = a2;
  sub_27417F438(a2, &v26 - v15);
  v28 = *(v5 + 36);
  (*(v9 + 16))(v12, v29, v8);
  sub_274186B00(a2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = (v10 + *(v30 + 80) + v17) & ~*(v30 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v17, v12, v8);
  sub_274184814(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = *(v13 + 52);
  v21 = sub_2741C830C();
  v22 = &v16[v20];
  v23 = v27;
  (*(*(v21 - 8) + 16))(v22, v27 + v28, v21);
  v24 = &v16[*(v13 + 56)];
  *v24 = sub_274185DB8;
  v24[1] = v19;
  v32 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADE8, &qword_2741D64A8);
  sub_2740A6D24(&qword_28093ADF0, &qword_28093ADE0, &qword_2741D64A0, MEMORY[0x277CDDB50]);
  sub_2740A6D24(&qword_28093ADF8, &qword_28093ADE8, &qword_2741D64A8, MEMORY[0x277CDDF68]);
  sub_2741C78BC();
  return sub_27409D420(v16, &qword_28093ADE0, &qword_2741D64A0);
}

uint64_t sub_27417F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2741C6EBC();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE28, &qword_2741D6528);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE30, &qword_2741D6530);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE38, &qword_2741D6538);
  MEMORY[0x28223BE20](v39, v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for WiFiSettingsMainView(0);
  v18 = (a1 + *(v17 + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v42) = v19;
  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  v21 = sub_2741C7A3C();
  if (v46 - 1 <= 1 && (v23 = v10, v24 = v3, v25 = a1, v26 = *(a1 + *(v17 + 20)), swift_getKeyPath(), v42 = v26, sub_274186558(&qword_280938478, type metadata accessor for AppStateProvider, &unk_2741CC38C), sub_2741C6A0C(), v21 = , v27 = *(v26 + 32), a1 = v25, v3 = v24, v10 = v23, v27))
  {
    swift_storeEnumTagMultiPayload();
    sub_2741865A0();
    v28 = sub_2740A6D24(&qword_28093AE68, &qword_28093AE28, &qword_2741D6528, MEMORY[0x277CDE580]);
    v29 = sub_274186558(&qword_28093AE70, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v42 = v40;
    v43 = v3;
    v44 = v28;
    v45 = v29;
    swift_getOpaqueTypeConformance2();
    return sub_2741C72CC();
  }

  else
  {
    MEMORY[0x28223BE20](v21, v22);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE40, &qword_2741D6540);
    sub_274186470();
    sub_2741C760C();
    sub_2741C7C7C();
    v31 = sub_2740A6D24(&qword_28093AE68, &qword_28093AE28, &qword_2741D6528, MEMORY[0x277CDE580]);
    v32 = sub_274186558(&qword_28093AE70, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v33 = v40;
    sub_2741C78FC();
    (*(v37 + 8))(v6, v3);
    (*(v36 + 8))(v9, v33);
    v34 = v38;
    (*(v38 + 16))(v16, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_2741865A0();
    v42 = v33;
    v43 = v3;
    v44 = v31;
    v45 = v32;
    swift_getOpaqueTypeConformance2();
    sub_2741C72CC();
    return (*(v34 + 8))(v13, v10);
  }
}

uint64_t sub_27417FA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE60, &qword_2741D6548);
  MEMORY[0x28223BE20](v4, v5);
  *&v67 = v54 - v6;
  v7 = type metadata accessor for WiFiSettingsMainView(0);
  v64 = *(v7 - 1);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE80, &qword_2741D6550);
  v12 = MEMORY[0x28223BE20](v65, v11);
  v66 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v63 = v54 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE88, &qword_2741D6558);
  MEMORY[0x28223BE20](v69, v16);
  v68 = v54 - v17;
  v70 = type metadata accessor for KnownNetworksSectionTable(0);
  MEMORY[0x28223BE20](v70, v18);
  v20 = (v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (a1 + v7[11]);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v73) = v22;
  *&v74 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v71 - 1 > 1)
  {
    v30 = (a1 + v7[15]);
    v32 = *v30;
    v31 = v30[1];
    v59 = v32;
    v60 = v31;
    v73 = v32;
    *&v74 = v31;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD38, &unk_2741D62D0);
    sub_2741C7A3C();
    v62 = v4;
    v33 = v71;
    swift_getKeyPath();
    v61 = a2;
    v73 = v33;
    v57 = sub_274186558(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
    sub_2741C6A0C();

    v55 = *(v33 + 128);
    v34 = v55;

    v35 = (a1 + v7[13]);
    v36 = *v35;
    v37 = *(v35 + 1);
    LOBYTE(v71) = v36;
    v72 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    sub_2741C7A5C();
    v39 = v73;
    v38 = v74;
    v56 = v73;
    v54[1] = v74;
    v40 = BYTE8(v74);
    sub_274186B00(a1, v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
    v41 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v42 = swift_allocObject();
    sub_274184814(v10, v42 + v41);
    type metadata accessor for UserSettingsModel(0);
    sub_274186558(&qword_280938290, type metadata accessor for UserSettingsModel, &unk_2741D66C8);
    v43 = sub_2741C6CEC();
    v84 = v44 & 1;
    v73 = v43;
    LOBYTE(v74) = v44 & 1;
    *(&v74 + 1) = *v83;
    DWORD1(v74) = *&v83[3];
    *(&v74 + 1) = v34;
    v75 = v39;
    v76 = v38;
    v77 = v40;
    *v78 = *v82;
    *&v78[3] = *&v82[3];
    v79 = sub_27418698C;
    v80 = v42;
    v71 = v59;
    v72 = v60;
    sub_2741C7A3C();
    v45 = v81;
    swift_getKeyPath();
    v71 = v45;
    sub_2741C6A0C();

    type metadata accessor for CurrentNetworkModel(0);
    sub_2741869FC();
    sub_274186558(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
    v46 = v63;
    sub_2741C770C();

    v47 = (a1 + v7[6]);
    v49 = *v47;
    v48 = v47[1];
    v50 = (v46 + *(v65 + 52));
    *v50 = v49;
    v50[1] = v48;

    sub_2741A8234(&v73);
    v51 = v66;
    sub_2740A6D94(v46, v66, &qword_28093AE80, &qword_2741D6550);
    sub_274186A50(&v73, &v71);
    v52 = v67;
    sub_2740A6D94(v51, v67, &qword_28093AE80, &qword_2741D6550);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE98, &unk_2741D6560);
    sub_274186A50(&v71, v52 + *(v53 + 48));
    sub_274186AAC(&v71);
    sub_27409D420(v51, &qword_28093AE80, &qword_2741D6550);
    sub_2740A6D94(v52, v68, &qword_28093AE60, &qword_2741D6548);
    swift_storeEnumTagMultiPayload();
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable, &unk_2741D5150);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548, MEMORY[0x277CE14C0]);
    sub_2741C72CC();
    sub_27409D420(v52, &qword_28093AE60, &qword_2741D6548);
    sub_274186AAC(&v73);
    return sub_27409D420(v46, &qword_28093AE80, &qword_2741D6550);
  }

  else
  {
    v24 = (a1 + v7[18]);
    v26 = *v24;
    v25 = v24[1];
    v71 = v26;
    v72 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
    sub_2741C7A5C();
    v27 = v73;
    v67 = v74;
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
    swift_storeEnumTagMultiPayload();
    v28 = v20 + *(v70 + 20);
    *v28 = v27;
    *(v28 + 8) = v67;
    sub_274186B00(v20, v68, type metadata accessor for KnownNetworksSectionTable);
    swift_storeEnumTagMultiPayload();
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable, &unk_2741D5150);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548, MEMORY[0x277CE14C0]);
    sub_2741C72CC();
    return sub_274186B68(v20);
  }
}

id sub_27418028C()
{
  v0 = sub_2741C678C();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_2741C673C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v14 - v9;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (qword_280937690 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_280937698 == -1)
    {
LABEL_6:

      sub_2741C677C();
      sub_2741C674C();
      v14[1] = sub_2741C796C();
      sub_274186BC4();
      sub_2741C675C();
      type metadata accessor for WiFiSettingsMainView(0);
      (*(v3 + 16))(v7, v10, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
      sub_2741C7A4C();
      return (*(v3 + 8))(v10, v2);
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2741804FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2741C7C4C();
  sub_2741C6DCC();
}

uint64_t sub_274180570(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WiFiSettingsMainView(0);

  sub_2741C7CAC();
  sub_2741C6E9C();
}

uint64_t sub_274180600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE00, &unk_2741D64B0);
  MEMORY[0x28223BE20](v58, v3);
  v54 = v51 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938F48, &qword_2741D04A0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v5);
  v7 = v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938740, &unk_2741D64C0);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v51 - v10;
  v12 = sub_2741C730C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938748, &unk_2741CC8D0);
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v52 = v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE08, &qword_2741D64D0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v51 - v23;
  v25 = *(type metadata accessor for WiFiSettingsMainView(0) + 44);
  v60 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v62) = v27;
  v63 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v61 == 1)
  {
    v29 = sub_2741C72DC();
    v51[1] = v51;
    MEMORY[0x28223BE20](v29, v30);
    v51[-2] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
    sub_2740A6D24(&qword_280937F78, &qword_280937F80, &unk_2741CB690, MEMORY[0x277CDF028]);
    v31 = v52;
    sub_2741C6D2C();
    v32 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0, MEMORY[0x277CDD7A8]);
    v33 = v14;
    MEMORY[0x2743E53C0](v31, v14, v32);
    v34 = v56;
    (*(v56 + 16))(v21, v11, v8);
    (*(v34 + 56))(v21, 0, 1, v8);
    v62 = v33;
    v63 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v8;
    v37 = v24;
    MEMORY[0x2743E53D0](v21, v36, OpaqueTypeConformance2);
    sub_27409D420(v21, &qword_28093AE08, &qword_2741D64D0);
    (*(v34 + 8))(v11, v36);
    (*(v53 + 8))(v31, v33);
  }

  else
  {
    (*(v56 + 56))(v21, 1, 1, v8);
    v38 = sub_2740A6D24(&qword_280938750, &qword_280938748, &unk_2741CC8D0, MEMORY[0x277CDD7A8]);
    v62 = v14;
    v63 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = v8;
    v37 = v24;
    MEMORY[0x2743E53D0](v21, v40, v39);
    sub_27409D420(v21, &qword_28093AE08, &qword_2741D64D0);
  }

  v41 = sub_2741C72EC();
  MEMORY[0x28223BE20](v41, v42);
  v51[-2] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  sub_2740DD218();
  sub_2741C6D2C();
  v43 = *(v58 + 48);
  v44 = v37;
  v45 = v37;
  v46 = v54;
  sub_2740A6D94(v45, v54, &qword_28093AE08, &qword_2741D64D0);
  v47 = v55;
  v48 = v46 + v43;
  v49 = v57;
  (*(v55 + 16))(v48, v7, v57);
  sub_2741C71EC();
  (*(v47 + 8))(v7, v49);
  return sub_27409D420(v44, &qword_28093AE08, &qword_2741D64D0);
}

uint64_t sub_274180CC8(uint64_t a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_2741C676C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_274186B00(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WiFiSettingsMainView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_274184814(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_2740A6A74();
  return sub_2741C7A9C();
}

uint64_t sub_274180E84(uint64_t a1)
{
  sub_2741C7C4C();
  sub_2741C6DCC();
}

uint64_t sub_274180EF4(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - v9;
  sub_27417D364(&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D8], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = type metadata accessor for WiFiSettingsMainView(0);
  v15 = (a1 + *(v14 + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v22) = v16;
  v23 = v17;
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A4C();
  v18 = (a1 + *(v14 + 72));
  v20 = *v18;
  v19 = v18[1];
  v22 = v20;
  v23 = v19;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  return sub_2741C7A4C();
}

uint64_t sub_274181148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WiFiSettingsMainView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27[-v11];
  sub_274186B00(a1, &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for WiFiSettingsMainView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_274184814(&v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v28 = a1;
  sub_2741C7A7C();
  v15 = (a1 + *(v4 + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v30) = v16;
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v29 - 1 > 1)
  {
    v22 = 0;
  }

  else
  {
    v18 = (a1 + *(v4 + 72));
    v20 = *v18;
    v19 = v18[1];
    v30 = v20;
    v31 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
    sub_2741C7A3C();
    v21 = *(v29 + 16);

    v22 = v21 == 0;
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v9 + 32))(a2, v12, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381A0, &qword_2741CB990);
  v26 = (a2 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = sub_2740A6E2C;
  v26[2] = v24;
  return result;
}

uint64_t sub_274181434(char *a1)
{
  v2 = type metadata accessor for WiFiSettingsMainView(0);
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v55 = v4;
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v53 = &v51 - v7;
  v8 = sub_2741C7C0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE10, &qword_2741D6508);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AE18, &qword_2741D6510);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v51 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v51 - v29;
  v57 = a1;
  sub_27417D364(v19);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v31 - 8) + 48))(v19, 1, v31) == 1)
  {
    sub_27409D420(v19, &qword_280938680, &qword_2741D5140);
    v32 = 1;
  }

  else
  {
    MEMORY[0x2743E5B70](v31);
    sub_27409D420(v19, &qword_280938710, &qword_2741D5350);
    v32 = 0;
  }

  v33 = *(v9 + 56);
  v33(v30, v32, 1, v8);
  (*(v9 + 104))(v27, *MEMORY[0x277CDF0D0], v8);
  v33(v27, 0, 1, v8);
  v34 = *(v12 + 48);
  sub_2740A6D94(v30, v15, &qword_28093AE18, &qword_2741D6510);
  sub_2740A6D94(v27, &v15[v34], &qword_28093AE18, &qword_2741D6510);
  v35 = *(v9 + 48);
  if (v35(v15, 1, v8) != 1)
  {
    v36 = v52;
    sub_2740A6D94(v15, v52, &qword_28093AE18, &qword_2741D6510);
    if (v35(&v15[v34], 1, v8) != 1)
    {
      v45 = v51;
      (*(v9 + 32))(v51, &v15[v34], v8);
      sub_274186558(&qword_28093AE20, MEMORY[0x277CDF0E0], MEMORY[0x277CDF0E8]);
      v46 = v36;
      v47 = sub_2741C7DBC();
      v48 = *(v9 + 8);
      v48(v45, v8);
      sub_27409D420(v27, &qword_28093AE18, &qword_2741D6510);
      sub_27409D420(v30, &qword_28093AE18, &qword_2741D6510);
      v48(v46, v8);
      sub_27409D420(v15, &qword_28093AE18, &qword_2741D6510);
      if (v47)
      {
        goto LABEL_12;
      }

LABEL_10:
      v37 = sub_2741C80DC();
      v38 = v53;
      (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
      v39 = v56;
      sub_274186B00(v57, v56, type metadata accessor for WiFiSettingsMainView);
      sub_2741C80AC();
      v40 = sub_2741C809C();
      v41 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v42 = swift_allocObject();
      v43 = MEMORY[0x277D85700];
      *(v42 + 16) = v40;
      *(v42 + 24) = v43;
      sub_274184814(v39, v42 + v41);
      sub_2740CE980(0, 0, v38, &unk_2741D6520, v42);
    }

    sub_27409D420(v27, &qword_28093AE18, &qword_2741D6510);
    sub_27409D420(v30, &qword_28093AE18, &qword_2741D6510);
    (*(v9 + 8))(v36, v8);
LABEL_9:
    sub_27409D420(v15, &qword_28093AE10, &qword_2741D6508);
    goto LABEL_10;
  }

  sub_27409D420(v27, &qword_28093AE18, &qword_2741D6510);
  sub_27409D420(v30, &qword_28093AE18, &qword_2741D6510);
  if (v35(&v15[v34], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_27409D420(v15, &qword_28093AE18, &qword_2741D6510);
LABEL_12:
  v49 = sub_2741C7C4C();
  MEMORY[0x28223BE20](v49, v50);
  *(&v51 - 2) = v57;
  sub_2741C6DCC();
}

uint64_t sub_274181B98(uint64_t a1)
{
  type metadata accessor for WiFiSettingsMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  return sub_2741C7A4C();
}

uint64_t sub_274181C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2741C80AC();
  v4[4] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_274181CD4;

  return sub_2740B5AD8(0);
}

uint64_t sub_274181CD4(char a1)
{
  v2 = *v1;
  *(v2 + 72) = a1;

  v4 = sub_2741C805C();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_274181E20, v4, v3);
}

uint64_t sub_274181E20()
{
  if ((*(v0 + 72) | 2) == 2)
  {

    return MEMORY[0x2822009F8](sub_274181EC8, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_274181EC8(uint64_t a1)
{
  *(v1 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274181F54, v3, v2);
}

uint64_t sub_274181F54()
{
  v1 = v0[2];

  sub_2741C7C4C();
  *(swift_task_alloc() + 16) = v1;
  sub_2741C6DCC();

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2741310F0, v2, v3);
}

uint64_t sub_27418201C(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - v9;
  sub_27417D364(&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = type metadata accessor for WiFiSettingsMainView(0);
  v15 = (a1 + *(v14 + 72));
  v17 = *v15;
  v16 = v15[1];
  v22 = v17;
  v23 = v16;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  sub_2741C7A4C();
  v18 = (a1 + *(v14 + 44));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v22) = v19;
  v23 = v20;
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  return sub_2741C7A4C();
}

uint64_t sub_274182274@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for WiFiSettingsMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v7 - 1 < 2)
  {
    if (qword_2809373D8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_2809373E0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_2740A6A74();
  result = sub_2741C76AC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_274182398(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WiFiSettingsMainView(0);
  v30 = *(v3 - 1);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v32 = &v30 - v8;
  v9 = *(a2 + v3[5]);
  swift_getKeyPath();
  v34 = v9;
  sub_274186558(&qword_280938478, type metadata accessor for AppStateProvider, &unk_2741CC38C);
  sub_2741C6A0C();

  if (*(v9 + 32) == 1)
  {
    v10 = (a2 + v3[11]);
    v11 = *v10;
    v12 = *(v10 + 1);
    LOBYTE(v34) = *v10;
    v35 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
    sub_2741C7A3C();
    if (v33 == 1)
    {
      LOBYTE(v34) = v11;
      v35 = v12;
      v33 = 2;
      sub_2741C7A4C();
      return;
    }
  }

  swift_getKeyPath();
  v34 = v9;
  sub_2741C6A0C();

  if (*(v9 + 32) == 1)
  {
    sub_2740CB460(0xD000000000000030, 0x80000002741E2D00);
    v13 = *(a2 + v3[21]);
    v14 = sub_2741C80DC();
    v15 = v32;
    (*(*(v14 - 8) + 56))(v32, 1, 1, v14);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;

    v17 = &unk_2741D7DF0;
    v18 = v15;
    v19 = v16;
LABEL_8:
    sub_2740CE980(0, 0, v18, v17, v19);

    return;
  }

  v20 = (a2 + v3[11]);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v34) = v21;
  v35 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A3C();
  if (v33 == 2)
  {
    v23 = sub_2741C80DC();
    v24 = v32;
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    v25 = v31;
    sub_274186B00(a2, v31, type metadata accessor for WiFiSettingsMainView);
    sub_2741C80AC();
    v26 = sub_2741C809C();
    v27 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v26;
    *(v28 + 24) = v29;
    sub_274184814(v25, v28 + v27);
    v17 = &unk_2741D6490;
    v18 = v24;
    v19 = v28;
    goto LABEL_8;
  }

  swift_getKeyPath();
  v34 = v9;
  sub_2741C6A0C();

  if (*(v9 + 32) == 2)
  {
    sub_274160514(1, 2);
  }
}

uint64_t sub_274182804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_2741C80AC();
  v4[6] = sub_2741C809C();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2741828C4;

  return sub_2740B5AD8(0);
}

uint64_t sub_2741828C4(char a1)
{
  *(*v1 + 73) = a1;

  return MEMORY[0x2822009F8](sub_2741829C4, 0, 0);
}

uint64_t sub_2741829C4(uint64_t a1)
{
  *(v1 + 64) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274182A50, v3, v2);
}

uint64_t sub_274182A50()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 32);

  v3 = (v2 + *(type metadata accessor for WiFiSettingsMainView(0) + 44));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 72) = (v1 & 0xFD) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  sub_2741C7A4C();
  v7 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274133E34, v7, v6);
}

uint64_t sub_274182B48(uint64_t a1)
{
  sub_2741C856C();

  type metadata accessor for WiFiSettingsMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A3C();
  if (v4)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v1, v2);

  sub_2740CB218(0xD000000000000013, 0x80000002741E2CE0, 2036625250, 0xE400000000000000);
}

uint64_t sub_274182C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v26[-v4];
  v6 = sub_2741C689C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26[-v13];
  v15 = type metadata accessor for WiFiSettingsMainView(0);
  sub_2740A6D94(a1 + v15[8], v5, &qword_280938518, &unk_2741D2090);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_27409D420(v5, &qword_280938518, &unk_2741D2090);
  }

  (*(v7 + 32))(v14, v5, v6);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_2741C856C();

  v28 = 0xD000000000000016;
  v29 = 0x80000002741E2CC0;
  sub_274186558(&qword_28093AAB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v17 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v17);

  sub_2740CB460(v28, v29);

  (*(v7 + 16))(v11, v14, v6);
  v18 = sub_27416DC08(v11);
  v19 = v18;
  if (v18 == 4)
  {
    return (*(v7 + 8))(v14, v6);
  }

  v20 = (a1 + v15[9]);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v28) = v21;
  v29 = v22;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
  sub_2741C7A4C();
  if (v19 == 1)
  {
    v23 = v15[13];
  }

  else
  {
    v23 = v15[10];
  }

  v24 = a1 + v23;
  v25 = *(v24 + 8);
  LOBYTE(v28) = *v24;
  v29 = v25;
  v27 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
  sub_2741C7A4C();
  (*(v7 + 8))(v14, v6);
}

uint64_t sub_274182FB4(uint64_t a1)
{
  type metadata accessor for WiFiSettingsMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
  sub_2741C7A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD20, &qword_2741D62B8);
  sub_2741C7A3C();
  type metadata accessor for AssociationModel(0);
  sub_274184BE4();
  sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  sub_2741C770C();
}

uint64_t sub_274183104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_27416DC08(v7);
  v10 = result;
  if (result != 4)
  {
    v11 = result;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E2CA0);
    v21 = v11;
    sub_2741C862C();
    sub_2740CB460(v22, v23);

    v12 = type metadata accessor for WiFiSettingsMainView(0);
    v13 = (a2 + v12[9]);
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v22) = v14;
    v23 = v15;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD8, &unk_2741D6450);
    sub_2741C7A4C();
    if (v10 == 1)
    {
      v16 = v12[13];
    }

    else
    {
      v16 = v12[10];
    }

    v17 = (a2 + v16);
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v22) = v18;
    v23 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F20, &qword_2741CCFB0);
    return sub_2741C7A4C();
  }

  return result;
}

uint64_t sub_2741832F8(uint64_t a1)
{
  type metadata accessor for WiFiSettingsMainView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A948, &qword_2741D5300);
  sub_2741C7A3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADC8, &qword_2741D6440);
  sub_2741C7A3C();
  sub_27409AAC0(v2);

  sub_2741C7C5C();
  sub_2741C6DCC();

  return sub_2741C7A4C();
}

uint64_t sub_27418342C(uint64_t a1)
{
  v2 = sub_2741C7C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938680, &qword_2741D5140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18[-v9];
  sub_27417D364(&v18[-v9]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    v12 = &qword_280938680;
    v13 = &qword_2741D5140;
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D8], v2);
    sub_2741C7AFC();
    v12 = &qword_280938710;
    v13 = &qword_2741D5350;
  }

  sub_27409D420(v10, v12, v13);
  v14 = (a1 + *(type metadata accessor for WiFiSettingsMainView(0) + 44));
  v15 = *v14;
  v16 = *(v14 + 1);
  v18[0] = v15;
  v19 = v16;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093ADD0, &qword_2741D6448);
  return sub_2741C7A4C();
}

id sub_274183640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a4;
  v88 = sub_2741C699C();
  v12 = *(v88 - 1);
  MEMORY[0x28223BE20](v88, v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (qword_280937A58 != -1)
      {
        swift_once();
      }

      v19 = &qword_280946C98;
    }

    else
    {
      if (qword_280937A50 != -1)
      {
        swift_once();
      }

      v19 = &qword_280946C88;
    }

    v20 = *v19;

    v91 = v20;
    v92 = v21;
    sub_2740A6A74();
    v22 = sub_2741C76AC();
    v80 = v23;
    v81 = v22;
    v79 = v24;
    v82 = v25;
    v83 = a6;
    v86 = a2;
    v87 = v6;
    v85 = a1;
    v84 = a3;
    v78 = a5;
    if (wapiCapability)
    {
      if (qword_280937A70 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946CC8;
    }

    else
    {
      if (qword_280937A68 != -1)
      {
        swift_once();
      }

      v26 = &qword_280946CB8;
    }

    v27 = *v26;

    v91 = v27;
    v92 = v28;
    v29 = sub_2741C76AC();
    v90 = v30;
    v32 = v31;
    v72 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809389D8, &qword_2741CCD00);
    v34 = (type metadata accessor for WFButton(0) - 8);
    v35 = *(*v34 + 72);
    v36 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2741CC090;
    v38 = v37 + v36;
    v77 = v37;
    sub_2741C698C();
    v39 = *(v12 + 32);
    v40 = v88;
    v39(v38, v15, v88);
    *(v38 + v34[7]) = 1;
    v41 = (v38 + v34[8]);
    *v41 = nullsub_1;
    v41[1] = 0;
    v42 = v38 + v35;
    sub_2741C698C();
    v39(v42, v15, v40);
    v88 = &v71;
    *(v42 + v34[7]) = 3;
    v43 = (v42 + v34[8]);
    v44 = v78;
    *v43 = v89;
    v43[1] = v44;
    LOBYTE(v42) = v32 & 1;
    v46 = MEMORY[0x28223BE20](v44, v45);
    v89 = v70;
    MEMORY[0x28223BE20](v46, v47);
    v76 = v29;
    v48 = v90;
    v70[3] = v72;

    sub_27409861C(v29, v48, v32 & 1);

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD10, &unk_2741D62A0);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F38, &unk_2741CB670);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F40, &qword_2741D5B30);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD08, &qword_2741D6298);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD00, &qword_2741D6290);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD68, &qword_2741D6318);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF8, &qword_2741D6288);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
    v54 = sub_2741849B4();
    v91 = v53;
    v92 = MEMORY[0x277D839B0];
    v93 = v54;
    v94 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = sub_274184AC0();
    v91 = v51;
    v92 = v52;
    v93 = OpaqueTypeConformance2;
    v94 = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = type metadata accessor for AssociationModel(255);
    v59 = sub_274184BE4();
    v60 = sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
    v91 = &type metadata for WiFiURLView;
    v92 = v58;
    v93 = v59;
    v94 = v60;
    v61 = swift_getOpaqueTypeConformance2();
    v91 = v49;
    v92 = v50;
    v93 = v57;
    v94 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    v91 = v73;
    v92 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = sub_2740A5DB0();
    v65 = sub_2740A5EE4();
    v70[1] = v64;
    v70[2] = v65;
    v70[0] = v63;
    LOBYTE(v58) = v79;
    v67 = v80;
    v66 = v81;
    sub_2741C787C();
    v68 = v76;
    v69 = v90;
    sub_2740A6AC8(v76, v90, v42);

    sub_2740A6AC8(v68, v69, v42);

    sub_2740A6AC8(v66, v67, v58 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274183D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  type metadata accessor for WiFiScanner();
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0u;
  swift_beginAccess();
  sub_274186C38(a2, v8 + 16);
  swift_endAccess();
  *(v8 + 56) = a1;
  *(v8 + 64) = &off_28832C658;
  sub_2740A6D94(a2, &v18, &qword_280938E10, &qword_2741D8580);
  if (v19)
  {
    sub_27409D118(&v18, v21);
    v9 = v22;
    v10 = v23;
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v19 = v9;
    v20 = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    v13 = sub_2741C80DC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_27409D4E4(&v18, v17);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_27409D118(v17, v14 + 32);
    *(v14 + 72) = 0;

    sub_2740CE980(0, 0, v7, &unk_2741D5960, v14);

    sub_27409D420(a2, &qword_280938E10, &qword_2741D8580);
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    sub_27409D420(a2, &qword_280938E10, &qword_2741D8580);
    sub_27409D420(&v18, &qword_280938E10, &qword_2741D8580);
  }

  return v8;
}

uint64_t sub_274183FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v43 - v12;
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_28832BE38;
  sub_2740A6D94(a2, &v44, &qword_28093A6C8, &unk_2741D6570);
  if (*(&v45 + 1))
  {
    sub_27409D118(&v44, v51);
    v14 = *(a1 + 16);
    swift_unknownObjectRetain();
    v15 = [v14 wifiUIStateFlags];
    v16 = v52;
    v17 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v17 + 144))(v15, v16, v17);
    v18 = [*(a1 + 16) currentScanResult];
    if (v18)
    {
      sub_27409D85C(v18, &v44);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
    }

    v19 = v52;
    v20 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v20 + 24))(&v44, v19, v20);
    v21 = [*(a1 + 16) currentScanResult];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 matchingKnownNetworkProfile];
      if (v23)
      {
        sub_274117670(v23, v13);
        v24 = 0;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 1;
    }

    v25 = type metadata accessor for KnownNetwork(0);
    (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
    v26 = v52;
    v27 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v27 + 48))(v13, v26, v27);
    v28 = [*(a1 + 16) powerOn];
    v29 = v52;
    v30 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v30 + 120))(v28, v29, v30);
    swift_beginAccess();
    sub_2740A6D94(a1 + 48, &v44, &qword_2809395D8, &qword_2741CFF78);
    v31 = *(&v45 + 1);
    sub_27409D420(&v44, &qword_2809395D8, &qword_2741CFF78);
    if (v31)
    {
      v32 = *(a1 + 16);
      v33 = sub_2741BC2FC();
    }

    else
    {
      v33 = 0;
    }

    v34 = v52;
    v35 = v53;
    __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    (*(v35 + 192))(v33 & 1, v34, v35);
    v36 = v52;
    v37 = v53;
    v38 = __swift_project_boxed_opaque_existential_1(v51, v52);
    *(&v45 + 1) = v36;
    *&v46 = *(v37 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
    v40 = sub_2741C80DC();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    sub_27409D4E4(&v44, v43);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    sub_27409D118(v43, v41 + 32);
    *(v41 + 72) = 2;
    sub_2740CE980(0, 0, v9, &unk_2741D6580, v41);

    sub_27409D420(a2, &qword_28093A6C8, &unk_2741D6570);
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  else
  {
    sub_27409D420(a2, &qword_28093A6C8, &unk_2741D6570);
    sub_27409D420(&v44, &qword_28093A6C8, &unk_2741D6570);
  }

  return a3;
}

uint64_t sub_274184514(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v24[3] = type metadata accessor for WiFiScanner();
  v24[4] = &off_28832B088;
  v24[0] = a2;
  v14 = MEMORY[0x277D84F90];
  *(a7 + 56) = MEMORY[0x277D84F90];
  *(a7 + 64) = v14;
  *(a7 + 72) = v14;
  *(a7 + 80) = v14;
  *(a7 + 88) = MEMORY[0x277D84FA0];
  *(a7 + 96) = 0;
  *(a7 + 104) = 0x4000000000000000;
  *(a7 + 112) = v14;
  *(a7 + 120) = v14;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  *(a7 + 168) = qword_280946F10;

  sub_2741C6A3C();
  *(a7 + 128) = a1;
  sub_27409D4E4(v24, a7 + 16);
  *(a7 + 136) = a3;
  *(a7 + 144) = a4;
  *(a7 + 152) = a5;
  *(a7 + 160) = a6;
  *(a7 + 161) = HIBYTE(a6) & 1;
  v15 = *__swift_project_boxed_opaque_existential_1((a7 + 16), *(a7 + 40));
  swift_beginAccess();
  sub_2740A6D94(v15 + 16, &v21, &qword_280938E10, &qword_2741D8580);
  if (v22)
  {
    v16 = sub_27409D118(&v21, v23);
    v18 = MEMORY[0x28223BE20](v16, v17);
    MEMORY[0x28223BE20](v18, v19);

    sub_2741C69EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_2741C69EC();
    sub_2741C69EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    return a7;
  }

  else
  {

    sub_27409D420(&v21, &qword_280938E10, &qword_2741D8580);
    result = sub_2741C863C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274184814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiSettingsMainView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274184878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_27417F0C0(a1, v6, a2);
}

void sub_274184928(uint64_t a1)
{
  v3 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_274182398(a1, v4);
}

unint64_t sub_2741849B4()
{
  result = qword_28093AD48;
  if (!qword_28093AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
    sub_2740A6D24(&qword_28093AD50, &qword_28093AD40, &unk_2741D6308, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD48);
  }

  return result;
}

unint64_t sub_274184AC0()
{
  result = qword_28093AD58;
  if (!qword_28093AD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
    sub_274186558(&qword_28093AD60, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD58);
  }

  return result;
}

uint64_t sub_274184B74()
{
  v1 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_274182FB4(v2);
}

unint64_t sub_274184BE4()
{
  result = qword_28093AD70;
  if (!qword_28093AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AD70);
  }

  return result;
}

uint64_t sub_274184C38(uint64_t a1)
{
  v3 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_274183104(a1, v4);
}

uint64_t sub_274184CF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_2741C830C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[19];

  return v18(v19, a2, v17);
}

uint64_t sub_274184EE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938660, &unk_2741CC790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_2741C830C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[19];

  return v18(v19, a2, a2, v17);
}

void sub_2741850C4(uint64_t a1)
{
  sub_2740BAD2C(319, &qword_280938678, &qword_280938680, &qword_2741D5140, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppStateProvider(319);
    if (v2 <= 0x3F)
    {
      sub_2741C830C();
      if (v3 <= 0x3F)
      {
        sub_27418544C(319, &qword_280938568, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2740BAD2C(319, &qword_28093AD88, &qword_28093ACC8, &unk_2741D6250, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_274118100(319, &qword_280937EC8, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_274118100(319, &qword_28093AD90, &type metadata for EditState);
              if (v7 <= 0x3F)
              {
                sub_27418544C(319, &qword_28093AD98, type metadata accessor for AssociationModel, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_27418544C(319, &qword_28093ADA0, type metadata accessor for NetworksListModel, MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_27418544C(319, &qword_28093A918, type metadata accessor for KnownNetworksViewModel, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_27418544C(319, &qword_28093ADA8, type metadata accessor for UserSettingsModel, MEMORY[0x277CE10B8]);
                      if (v11 <= 0x3F)
                      {
                        sub_2740BAD2C(319, &qword_28093ADB0, &qword_28093A8F0, &qword_2741D5148, MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
                        {
                          sub_27418544C(319, &qword_28093ADB8, MEMORY[0x277CC8C40], MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for WiFiInterface();
                            if (v14 <= 0x3F)
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

void sub_27418544C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2741854B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD10, &unk_2741D62A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD08, &qword_2741D6298);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD00, &qword_2741D6290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AD68, &qword_2741D6318);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF8, &qword_2741D6288);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938518, &unk_2741D2090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093ACF0, &qword_2741D6280);
  sub_2741849B4();
  swift_getOpaqueTypeConformance2();
  sub_274184AC0();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for AssociationModel(255);
  sub_274184BE4();
  sub_274186558(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2740A5DB0();
  sub_2740A5EE4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_274185744()
{
  result = qword_28093ADC0;
  if (!qword_28093ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093ADC0);
  }

  return result;
}

uint64_t sub_2741857C0(uint64_t a1)
{
  v4 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274182804(a1, v6, v7, v1 + v5);
}

uint64_t sub_2741858B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2741858F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_27415D624(a1, v4, v5, v6);
}

uint64_t sub_2741859A4()
{
  v1 = sub_2741C6EAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for WiFiSettingsMainView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
    {

      v12 = *(v11 + 32);
      v13 = sub_2741C7C0C();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  else
  {
  }

  v14 = v6[7];
  v15 = sub_2741C830C();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);
  v16 = v6[8];
  v17 = sub_2741C689C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v10 + v16, 1, v17))
  {
    (*(v18 + 8))(v10 + v16, v17);
  }

  v19 = v10 + v6[19];
  v20 = sub_2741C673C();
  (*(*(v20 - 8) + 8))(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_274185DB8(uint64_t a1)
{
  v3 = *(sub_2741C6EAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2741804FC(a1, v1 + v4, v7);
}

uint64_t sub_274185EF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_42Tm()
{
  v1 = type metadata accessor for WiFiSettingsMainView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_2741C7C0C();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_2741C830C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[8];
  v12 = sub_2741C689C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v1[19];
  v15 = sub_2741C673C();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}