void sub_1C2CD7CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CommunicationDetailsContactsTabView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1C2CCDD84(a1, a2, v6);
}

unint64_t sub_1C2CD7D3C()
{
  result = qword_1EC05E7D8;
  if (!qword_1EC05E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E730, &qword_1C2E7D2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E738, &qword_1C2E7D2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7B8, &qword_1C2E7D338);
    sub_1C2CD7AC8();
    sub_1C2C94F38(&qword_1EC05E7C8, &qword_1EC05E7B8, &qword_1C2E7D338, MEMORY[0x1E697C1A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E7D8);
  }

  return result;
}

unint64_t sub_1C2CD7E5C()
{
  result = qword_1EC05E7E0;
  if (!qword_1EC05E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7D0, &qword_1C2E7D340);
    sub_1C2C94EBC(&qword_1EC05E7E8, &qword_1EC05CA58, 0x1E695CD58, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E7E0);
  }

  return result;
}

uint64_t sub_1C2CD7F0C()
{
  v1 = *(type metadata accessor for CommunicationDetailsContactsTabView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C2CCD7C4(v2);
}

uint64_t sub_1C2CD7F7C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1C2CD7FD8()
{
  result = qword_1EC05E818;
  if (!qword_1EC05E818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E820, &qword_1C2E7D368);
    sub_1C2CD8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E818);
  }

  return result;
}

unint64_t sub_1C2CD8064()
{
  result = qword_1EC05E828;
  if (!qword_1EC05E828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E830, &qword_1C2E7D370);
    sub_1C2CD1BE0(&qword_1EC05E838, 255, type metadata accessor for CommunicationDetailsCallHistoryView, &unk_1C2E7DBA4);
    sub_1C2C94F38(&qword_1EC05E840, &qword_1EC05E848, &qword_1C2E7D378, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E828);
  }

  return result;
}

unint64_t sub_1C2CD8150()
{
  result = qword_1EC05E858;
  if (!qword_1EC05E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E858);
  }

  return result;
}

unint64_t sub_1C2CD81C8()
{
  result = qword_1EC05E8C8;
  if (!qword_1EC05E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E8C0, &qword_1C2E7D3E8);
    sub_1C2CD8288();
    sub_1C2CD1BE0(&qword_1EC05E8F0, 255, type metadata accessor for ContactCardStyleModifier, &unk_1C2E7D680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E8C8);
  }

  return result;
}

unint64_t sub_1C2CD8288()
{
  result = qword_1EC05E8D0;
  if (!qword_1EC05E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E8D8, &qword_1C2E7D3F0);
    sub_1C2C94F38(&qword_1EC05E8E0, &qword_1EC05E8E8, &qword_1C2E7D3F8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E8D0);
  }

  return result;
}

unint64_t sub_1C2CD8358()
{
  result = qword_1EC05E910;
  if (!qword_1EC05E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E8A0, &qword_1C2E7D3C8);
    sub_1C2CD8410();
    sub_1C2C94F38(&qword_1EC05E930, &qword_1EC05E908, &qword_1C2E7D438, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E910);
  }

  return result;
}

unint64_t sub_1C2CD8410()
{
  result = qword_1EC05E918;
  if (!qword_1EC05E918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E900, &qword_1C2E7D400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E890, &qword_1C2E7D3B8);
    sub_1C2C94F38(&qword_1EC05E8F8, &qword_1EC05E890, &qword_1C2E7D3B8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E920, &qword_1EC05E928, &qword_1C2E7D440, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E918);
  }

  return result;
}

uint64_t sub_1C2CD8538(double *a1)
{
  v3 = *(type metadata accessor for CommunicationDetailsContactsTabView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C2CCD5D0(a1, v4);
}

unint64_t sub_1C2CD85A8()
{
  result = qword_1EC05E980;
  if (!qword_1EC05E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E970, &qword_1C2E7D470);
    sub_1C2CD862C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E980);
  }

  return result;
}

unint64_t sub_1C2CD862C()
{
  result = qword_1EC05E988;
  if (!qword_1EC05E988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E990, &qword_1C2E7D480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E998, &qword_1C2E7D488);
    sub_1C2CD8720();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E988);
  }

  return result;
}

unint64_t sub_1C2CD8720()
{
  result = qword_1EC05E9A0;
  if (!qword_1EC05E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E998, &qword_1C2E7D488);
    type metadata accessor for RecentsCallHistoryHeaderView(255);
    sub_1C2CD1BE0(&qword_1EC05E9A8, 255, type metadata accessor for RecentsCallHistoryHeaderView, &unk_1C2E7D630);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8, &qword_1C2E7CAE0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E9A0);
  }

  return result;
}

unint64_t sub_1C2CD885C()
{
  result = qword_1EC05E9B8;
  if (!qword_1EC05E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05E9B8);
  }

  return result;
}

uint64_t sub_1C2CD88B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2CD8918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2CD8978()
{
  v1 = *(type metadata accessor for CommunicationDetailsContactsTabView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C2CCA4BC(v2);
}

uint64_t sub_1C2CD8A00(uint64_t a1)
{
  result = sub_1C2E71574();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So9CNContactCSo16UIViewControllerCIeggo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1C2CD8AC4(uint64_t a1)
{
  sub_1C2CD7374(319, &qword_1EC05BAB0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecentsCallHistoryHeaderViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2CD8BD4()
{
  result = qword_1EC05EA28;
  if (!qword_1EC05EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA20, &qword_1C2E7D6E0);
    sub_1C2C94F38(&qword_1EC05EA30, &qword_1EC05EA38, &qword_1C2E7D6E8, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EA28);
  }

  return result;
}

unint64_t sub_1C2CD8C8C()
{
  result = qword_1EC05EA48;
  if (!qword_1EC05EA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA10, &qword_1C2E7D6D0);
    sub_1C2C94F38(&qword_1EC05EA50, &qword_1EC05EA40, &unk_1C2E7D6F0, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EC05E480, &qword_1EC05E488, &qword_1C2E7CAD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EA48);
  }

  return result;
}

unint64_t sub_1C2CD8D78()
{
  result = qword_1EC05EAB0;
  if (!qword_1EC05EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EAA8, &unk_1C2E7D740);
    sub_1C2C94F38(&qword_1EC05EAB8, &qword_1EC05EAC0, &unk_1C2E87C50, MEMORY[0x1E69817F8]);
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8, &qword_1C2E7D750, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EAB0);
  }

  return result;
}

unint64_t sub_1C2CD8E5C()
{
  result = qword_1EC05CBB0;
  if (!qword_1EC05CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E518, &qword_1C2E7CBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBB0);
  }

  return result;
}

unint64_t sub_1C2CD8EEC()
{
  result = qword_1EC05EB40;
  if (!qword_1EC05EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB38, &qword_1C2E7D7F8);
    sub_1C2CD8F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EB40);
  }

  return result;
}

unint64_t sub_1C2CD8F70()
{
  result = qword_1EC05EB48;
  if (!qword_1EC05EB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB50, &qword_1C2E7D800);
    sub_1C2CD8FFC();
    sub_1C2CD9088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EB48);
  }

  return result;
}

unint64_t sub_1C2CD8FFC()
{
  result = qword_1EC05EB58;
  if (!qword_1EC05EB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB60, &qword_1C2E7D808);
    sub_1C2CD9088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EB58);
  }

  return result;
}

unint64_t sub_1C2CD9088()
{
  result = qword_1EC05EB68;
  if (!qword_1EC05EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB70, &qword_1C2E7D810);
    sub_1C2CD918C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB88, &qword_1C2E7D820);
    sub_1C2C94F38(&qword_1EC05EB90, &qword_1EC05EB88, &qword_1C2E7D820, MEMORY[0x1E697C090]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EB68);
  }

  return result;
}

unint64_t sub_1C2CD918C()
{
  result = qword_1EC05EB78;
  if (!qword_1EC05EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB80, &qword_1C2E7D818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EB88, &qword_1C2E7D820);
    sub_1C2C94F38(&qword_1EC05EB90, &qword_1EC05EB88, &qword_1C2E7D820, MEMORY[0x1E697C090]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EB78);
  }

  return result;
}

id sub_1C2CD92A0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_1C2CD92AC()
{
  result = qword_1EC05EBC8;
  if (!qword_1EC05EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EBC8);
  }

  return result;
}

uint64_t sub_1C2CD9300(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C2CD937C()
{
  result = qword_1EC05EBD8;
  if (!qword_1EC05EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EBE0, &qword_1C2E7D880);
    sub_1C2CD9408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EBD8);
  }

  return result;
}

unint64_t sub_1C2CD9408()
{
  result = qword_1EC05EBE8;
  if (!qword_1EC05EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EBE8);
  }

  return result;
}

unint64_t sub_1C2CD946C()
{
  result = qword_1EC05EBF8;
  if (!qword_1EC05EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EC00, &qword_1C2E7D8D0);
    sub_1C2C94F38(&qword_1EC05EA60, &qword_1EC05EA58, &qword_1C2E7D700, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EBF8);
  }

  return result;
}

unint64_t sub_1C2CD9528()
{
  result = qword_1EC05EC08;
  if (!qword_1EC05EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EC10, &qword_1C2E7D8D8);
    sub_1C2CD8EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EC08);
  }

  return result;
}

uint64_t sub_1C2CD95D4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1C2CD5920(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

double sub_1C2CD96A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C2E718A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E71574();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  *a2 = a1;
  v15 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v16 = v15[5];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  swift_storeEnumTagMultiPayload();
  v17 = (a2 + v15[6]);
  v25[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC8, &unk_1C2E7DB70);
  sub_1C2E75174();
  v18 = *(&v26 + 1);
  *v17 = v26;
  v17[1] = v18;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1C2E71554();
  (*(v9 + 16))(v11, v14, v8);
  sub_1C2E75174();
  (*(v9 + 8))(v14, v8);
  v19 = a2 + v15[8];
  sub_1C2E71894();
  v20 = sub_1C2E71854();
  v22 = v21;
  (*(v5 + 8))(v7, v4);
  v25[0] = v20;
  v25[1] = v22;
  sub_1C2E75174();
  result = *&v26;
  v24 = v27;
  *v19 = v26;
  *(v19 + 2) = v24;
  return result;
}

uint64_t sub_1C2CD996C@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v73 = a3;
  v4 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = v5;
  v68 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECF0, &qword_1C2E7DBF8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v57 - v6;
  v60 = sub_1C2E71604();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECF8, &qword_1C2E7DC00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57[1] = v57 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED00, &qword_1C2E7DC08);
  MEMORY[0x1EEE9AC00](v69);
  v11 = v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED08, &qword_1C2E7DC10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED10, &qword_1C2E7DC18);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED18, &qword_1C2E7DC20);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v57 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED20, &qword_1C2E7DC28);
  v72 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v22 = v57 - v21;
  v75 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED28, &qword_1C2E7DC30);
  sub_1C2CE0A8C();
  sub_1C2E746E4();
  v23 = sub_1C2E74474();
  v24 = sub_1C2E73674();
  v25 = &v14[*(v12 + 36)];
  *v25 = v24;
  v25[8] = v23;
  sub_1C2CE0C68();
  sub_1C2E74C64();
  sub_1C2C73644(v14, &qword_1EC05ED08, &qword_1C2E7DC10);
  v26 = sub_1C2E74F44();
  v27 = sub_1C2E74454();
  v28 = &v17[*(v15 + 36)];
  *v28 = v26;
  v28[8] = v27;
  sub_1C2CE0D20();
  sub_1C2E74C94();
  sub_1C2C73644(v17, &qword_1EC05ED10, &qword_1C2E7DC18);
  KeyPath = swift_getKeyPath();
  v30 = &v20[*(v18 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70, &qword_1C2E7BDE0) + 28);
  v32 = *MEMORY[0x1E697DBA8];
  v33 = sub_1C2E730D4();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  v70 = a2;
  v74 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED70, &qword_1C2E7DC88);
  v35 = sub_1C2CE0E1C();
  v36 = sub_1C2C94F38(&qword_1EC05ED80, &qword_1EC05ED70, &qword_1C2E7DC88, MEMORY[0x1E697C5E0]);
  v71 = v22;
  v62 = v18;
  sub_1C2E74D94();
  sub_1C2C73644(v20, &qword_1EC05ED18, &qword_1C2E7DC20);
  v37 = [objc_opt_self() currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38)
  {
    v39 = sub_1C2E75744();
    v57[0] = v40;
    v41 = &v11[*(v69 + 36)];
    v42 = *v70;
    sub_1C2E732C4();
    sub_1C2E732C4();
    v43 = v58;
    sub_1C2E715F4();
    v44 = v60;
    sub_1C2E753B4();
    (*(v59 + 8))(v43, v44);
    sub_1C2E715E4();
    v45 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED88, &qword_1C2E7DC90) + 36)];
    *v45 = 0x4030000000000000;
    v45[8] = 0;
    v46 = sub_1C2E73674();
    v47 = sub_1C2E74454();
    v48 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED90, &qword_1C2E7DC98) + 36)];
    *v48 = v46;
    v48[8] = v47;
    v49 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED98, &qword_1C2E7DCA0) + 36)];
    v50 = v57[0];
    *v49 = v39;
    v49[1] = v50;
    v51 = v63;
    (*(v72 + 16))(v11, v71, v63);
    sub_1C2C736A4(v11, v64, &qword_1EC05ED00, &qword_1C2E7DC08);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE0F10();
    v76 = v62;
    v77 = v34;
    v78 = v35;
    v79 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    sub_1C2C73644(v11, &qword_1EC05ED00, &qword_1C2E7DC08);
  }

  else
  {
    v51 = v63;
    (*(v72 + 16))(v64, v71, v63);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE0F10();
    v76 = v62;
    v77 = v34;
    v78 = v35;
    v79 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
  }

  (*(v72 + 8))(v71, v51);
  v52 = v68;
  sub_1C2CE09A0(v70, v68);
  v53 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v54 = swift_allocObject();
  sub_1C2CE24B0(v52, v54 + v53, type metadata accessor for CommunicationDetailsCallHistoryView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDB0, &qword_1C2E7DCA8);
  v56 = (v73 + *(result + 36));
  *v56 = sub_1C2CE121C;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  return result;
}

uint64_t sub_1C2CDA2F0(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 32));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDB8, &qword_1C2E7DCB0);
  sub_1C2E75184();
  sub_1C2CE09A0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C2CE24B0(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CommunicationDetailsCallHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC8, &unk_1C2E7DB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED40, &qword_1C2E7DC38);
  sub_1C2C94F38(&qword_1EC05EE28, &qword_1EC05ECC8, &unk_1C2E7DB70, MEMORY[0x1E69E6338]);
  sub_1C2CE0B10();
  sub_1C2CE0C20(&qword_1EC05EE30, type metadata accessor for CommunicationDetailsCallHistoryCellViewModel, &unk_1C2E7DA54);
  return sub_1C2E75444();
}

uint64_t sub_1C2CDA500@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  LOBYTE(v8) = 0;

  sub_1C2E75174();
  type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v5 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ED40, &qword_1C2E7DC38) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);
  sub_1C2E75184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860, &unk_1C2E85390);
  sub_1C2E75184();
  result = type metadata accessor for ContactCardStyleModifier(0);
  v7 = (v5 + *(result + 20));
  *v7 = v8;
  v7[1] = v9;
  *a3 = v4;
  *(a3 + 8) = sub_1C2CDB7D4;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_1C2CDA630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDC0, &qword_1C2E7DCB8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v28 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDC8, &qword_1C2E7DCC0);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDD0, &qword_1C2E7DCC8);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1C2E73FC4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDD8, &qword_1C2E7DCD0);
  v30 = *(v11 - 8);
  v12 = v30;
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  sub_1C2E73FA4();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDE0, &qword_1C2E7DCD8);
  sub_1C2CE1B50();
  v29 = v14;
  sub_1C2E73144();
  sub_1C2E73FB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE10, &qword_1C2E7DCF8);
  sub_1C2CE1D4C();
  sub_1C2E73144();
  sub_1C2E73F84();
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D728, &unk_1C2E7DD00);
  sub_1C2C94F38(&qword_1EC05D720, &qword_1EC05D728, &unk_1C2E7DD00, MEMORY[0x1E697D680]);
  sub_1C2E73144();
  v15 = *(v35 + 48);
  v16 = *(v35 + 64);
  v17 = *(v12 + 16);
  v18 = v31;
  v17(v4, v14, v31);
  v19 = v32;
  v20 = &v4[v15];
  v21 = v4;
  v22 = v9;
  v23 = v9;
  v24 = v33;
  (*(v32 + 16))(v20, v22, v33);
  v25 = v34;
  v26 = v36;
  (*(v34 + 16))(&v21[v16], v6, v36);
  sub_1C2E73E04();
  (*(v25 + 8))(v6, v26);
  (*(v19 + 8))(v23, v24);
  return (*(v30 + 8))(v29, v18);
}

uint64_t sub_1C2CDAA9C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE08, &unk_1C2E7DCE8);
  MEMORY[0x1EEE9AC00](v50);
  v4 = &v50 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDF8, &qword_1C2E7DCE0);
  *&v5 = MEMORY[0x1EEE9AC00](v51).n128_u64[0];
  v52 = &v50 - v6;
  v7 = [*a1 displayName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C2E75C64();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v54 = v9;
  v55 = v11;
  sub_1C2C74960();
  v12 = sub_1C2E748A4();
  v14 = v13;
  v16 = v15;
  sub_1C2E745E4();
  v17 = sub_1C2E747F4();
  v19 = v18;
  v21 = v20;

  sub_1C2C72340(v12, v14, v16 & 1);

  v22 = sub_1C2E747E4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C2C72340(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = &v4[*(v50 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70, &qword_1C2E7BDE0) + 28);
  v32 = *MEMORY[0x1E697DBA8];
  v33 = sub_1C2E730D4();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  *v4 = v22;
  *(v4 + 1) = v24;
  v4[16] = v26 & 1;
  *(v4 + 3) = v28;
  LOBYTE(KeyPath) = sub_1C2E74464();
  v34 = [objc_opt_self() currentDevice];
  [v34 userInterfaceIdiom];

  sub_1C2E73034();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v4;
  v44 = v52;
  sub_1C2C71D5C(v43, v52, &qword_1EC05EE08, &unk_1C2E7DCE8);
  v45 = v44 + *(v51 + 36);
  *v45 = KeyPath;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  v46 = sub_1C2E71B74();
  v47 = v44;
  v48 = v53;
  sub_1C2C71D5C(v47, v53, &qword_1EC05EDF8, &qword_1C2E7DCE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDE0, &qword_1C2E7DCD8);
  *(v48 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_1C2CDAE08@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70, &qword_1C2E7BDE0) + 28);
  v4 = *MEMORY[0x1E697DBA8];
  v5 = sub_1C2E730D4();
  result = (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = KeyPath;
  return result;
}

uint64_t sub_1C2CDAEA4(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2CE09A0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C2CE24B0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CommunicationDetailsCallHistoryView);
  return sub_1C2E751C4();
}

uint64_t sub_1C2CDAFE4(uint64_t a1)
{
  v16 = sub_1C2E73BA4();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1C2E732B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  sub_1C2C736A4(a1 + *(v12 + 20), v7, &qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1C2E732A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C2CDB26C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E75044();
  *a1 = result;
  return result;
}

void sub_1C2CDB2A4(NSPredicate *a1@<X8>)
{
  v2 = v1;
  CNContact.predicateForCalls()(a1);
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E6993580]) init];
  v6 = [v5 callsWithPredicate:v4 limit:0x7FFFFFFFFFFFFFFFLL offset:0 batchSize:0x7FFFFFFFFFFFFFFFLL];

  v7 = sub_1C2C6E1B4(0, &qword_1EC05E6A0, 0x1E6993590);
  v8 = sub_1C2E75D74();

  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C2E72B44();
  __swift_project_value_buffer(v9, qword_1EC075B88);

  v10 = sub_1C2E72B24();
  v11 = sub_1C2E75FE4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x1C69267B0](v8, v7);
    v16 = sub_1C2E43AC0(v14, v15, v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C2C6B000, v10, v11, "CommunicationDetails: fetched all recent calls: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6927DF0](v13, -1, -1);
    MEMORY[0x1C6927DF0](v12, -1, -1);
  }

  sub_1C2CE127C(v8);

  v17 = (v2 + *(type metadata accessor for CommunicationDetailsCallHistoryView(0) + 24));
  v18 = v17[1];
  v19[0] = *v17;
  v19[1] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EDB8, &qword_1C2E7DCB0);
  sub_1C2E75194();
}

uint64_t sub_1C2CDB508@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1C2CE09A0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1C2CE24B0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CommunicationDetailsCallHistoryView);
  *a2 = sub_1C2CE0A04;
  a2[1] = v7;
  return result;
}

uint64_t sub_1C2CDB608@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1C2E71684();

  sub_1C2C74960();
  v4 = sub_1C2E748A4();
  v6 = v5;
  v8 = v7;
  sub_1C2E744F4();
  v9 = sub_1C2E747F4();
  v11 = v10;
  v13 = v12;

  sub_1C2C72340(v4, v6, v8 & 1);

  sub_1C2E71B74();
  v14 = sub_1C2E74794();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1C2C72340(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_1C2CDB7D4()
{
  type metadata accessor for RTTManager(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC98, &qword_1C2E7D9A0);
  sub_1C2E72E54();
  return v0;
}

uint64_t sub_1C2CDB844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE48, &qword_1C2E7DE58);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v81 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE50, &qword_1C2E7DE60);
  MEMORY[0x1EEE9AC00](v106);
  v82 = &v81 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE58, &qword_1C2E7DE68);
  MEMORY[0x1EEE9AC00](v96);
  v103 = &v81 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE60, &qword_1C2E7DE70);
  v84 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v83 = &v81 - v6;
  v90 = sub_1C2E73D84();
  v92 = *(v90 - 1);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1C2E74264();
  v8 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE68, &qword_1C2E7DE78);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE70, &qword_1C2E7DE80);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE78, &qword_1C2E7DE88);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v87 = &v81 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE80, &qword_1C2E7DE90);
  MEMORY[0x1EEE9AC00](v91);
  v19 = &v81 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE88, &qword_1C2E7DE98);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v111 = &v81 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE90, &qword_1C2E7DEA0);
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EE98, &qword_1C2E7DEA8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v97 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v81 - v27;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EEA0, &qword_1C2E7DEB0);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v81 - v28;
  *v13 = sub_1C2E73DD4();
  *(v13 + 1) = 0xBFF0000000000000;
  v13[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EEA8, &unk_1C2E7DEB8);
  sub_1C2CDC8A8(v2, &v13[*(v29 + 44)]);
  sub_1C2E74244();
  v30 = sub_1C2C94F38(&qword_1EC05EEB0, &qword_1EC05EE68, &qword_1C2E7DE78, MEMORY[0x1E6981870]);
  v85 = v11;
  sub_1C2E74C04();
  (*(v8 + 8))(v10, v112);
  sub_1C2C73644(v13, &qword_1EC05EE68, &qword_1C2E7DE78);
  v31 = *(v2 + 8);
  v32 = *(v2 + 16);
  LODWORD(v11) = *(v2 + 24);
  type metadata accessor for RTTManager(0);
  sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
  v110 = v31;
  LODWORD(v112) = v11;
  sub_1C2E73124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  v109 = v32;
  if (v114)
  {

    v33 = v86;
    sub_1C2E73D64();
    v34 = v90;
  }

  else
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1C2CE0C20(&qword_1EC05B5D8, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD20, &qword_1C2E7B7A0);
    sub_1C2C94F38(&unk_1EC05B270, &qword_1EC05DD20, &qword_1C2E7B7A0, MEMORY[0x1E69E6328]);
    v33 = v86;
    v32 = v109;
    v35 = v90;
    sub_1C2E76464();
    v34 = v35;
  }

  v114 = v85;
  v115 = v30;
  swift_getOpaqueTypeConformance2();
  v36 = v87;
  v37 = v89;
  sub_1C2E74C34();
  (*(v92 + 8))(v33, v34);
  (*(v88 + 8))(v15, v37);
  sub_1C2C71D5C(v36, v19, &qword_1EC05EE78, &qword_1C2E7DE88);
  v38 = v91;
  v19[*(v91 + 36)] = 0;
  v39 = *v2;
  v118 = *(v2 + 32);
  v40 = swift_allocObject();
  v41 = *(v2 + 16);
  v40[1] = *v2;
  v40[2] = v41;
  v40[3] = *(v2 + 32);

  v42 = v110;
  sub_1C2CE1FB4(v110, v32);
  sub_1C2C736A4(&v118, &v114, &qword_1EC05E7F8, &unk_1C2E7D350);
  v43 = sub_1C2CE1FBC();
  sub_1C2E749F4();

  sub_1C2C73644(v19, &qword_1EC05EE80, &qword_1C2E7DE90);
  v90 = objc_opt_self();
  v44 = [v90 currentDevice];
  v45 = v32;
  v46 = [v44 userInterfaceIdiom];

  v92 = v39;
  if (v46)
  {
    v47 = v94;
    v48 = v111;
    v49 = v95;
    (*(v94 + 16))(v103, v111, v95);
    swift_storeEnumTagMultiPayload();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EED0, &qword_1C2E7DEC8);
    v114 = v38;
    v115 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = sub_1C2CE21A0();
    v114 = v49;
    v115 = v50;
    v116 = OpaqueTypeConformance2;
    v117 = v52;
    swift_getOpaqueTypeConformance2();
    v53 = v93;
    sub_1C2E73F44();
  }

  else
  {
    v113 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
    sub_1C2E751A4();
    LODWORD(v89) = v116;
    v54 = swift_allocObject();
    v55 = *(v2 + 16);
    v54[1] = *v2;
    v54[2] = v55;
    v54[3] = *(v2 + 32);

    sub_1C2CE1FB4(v42, v45);
    sub_1C2C736A4(&v118, &v114, &qword_1EC05E7F8, &unk_1C2E7D350);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EED0, &qword_1C2E7DEC8);
    v114 = v38;
    v115 = v43;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_1C2CE21A0();
    v57 = v83;
    v49 = v95;
    v58 = v111;
    sub_1C2E74D34();
    v48 = v58;

    v59 = v84;
    v60 = v104;
    (*(v84 + 16))(v103, v57, v104);
    swift_storeEnumTagMultiPayload();
    v114 = v49;
    v115 = v56;
    v116 = v79;
    v117 = v80;
    swift_getOpaqueTypeConformance2();
    v61 = v93;
    sub_1C2E73F44();
    v42 = v110;
    v62 = v60;
    v53 = v61;
    (*(v59 + 8))(v57, v62);
    v47 = v94;
  }

  (*(v47 + 8))(v48, v49);
  v63 = v99;
  sub_1C2C71D5C(v53, v99, &qword_1EC05EE90, &qword_1C2E7DEA0);
  v64 = [v90 currentDevice];
  v65 = [v64 userInterfaceIdiom];

  if (v65 && *(v92 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) == 1)
  {
    v66 = sub_1C2E75744();
    v68 = v67;
    v69 = v82;
    v70 = &v82[*(v106 + 36)];
    sub_1C2CDDF44(v2, v70);
    v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF00, &qword_1C2E7DED0) + 36));
    *v71 = v66;
    v71[1] = v68;
    sub_1C2C736A4(v63, v69, &qword_1EC05EE90, &qword_1C2E7DEA0);
    sub_1C2C736A4(v69, v107, &qword_1EC05EE50, &qword_1C2E7DE60);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE2274();
    sub_1C2CE232C();
    v72 = v97;
    sub_1C2E73F44();
    sub_1C2C73644(v69, &qword_1EC05EE50, &qword_1C2E7DE60);
  }

  else
  {
    sub_1C2C736A4(v63, v107, &qword_1EC05EE90, &qword_1C2E7DEA0);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE2274();
    sub_1C2CE232C();
    v72 = v97;
    sub_1C2E73F44();
  }

  sub_1C2C73644(v63, &qword_1EC05EE90, &qword_1C2E7DEA0);
  v73 = v102;
  sub_1C2C71D5C(v72, v102, &qword_1EC05EE98, &qword_1C2E7DEA8);
  v74 = swift_allocObject();
  v75 = *(v2 + 16);
  *(v74 + 1) = *v2;
  *(v74 + 2) = v75;
  *(v74 + 3) = *(v2 + 32);
  v76 = v101;
  sub_1C2C71D5C(v73, v101, &qword_1EC05EE98, &qword_1C2E7DEA8);
  v77 = (v76 + *(v100 + 36));
  *v77 = sub_1C2CE2454;
  v77[1] = v74;
  v77[2] = 0;
  v77[3] = 0;
  sub_1C2C71D5C(v76, v108, &qword_1EC05EEA0, &qword_1C2E7DEB0);

  sub_1C2CE1FB4(v42, v109);
  return sub_1C2C736A4(&v118, &v114, &qword_1EC05E7F8, &unk_1C2E7D350);
}

uint64_t sub_1C2CDC8A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF18, &qword_1C2E7DEE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF20, &qword_1C2E7DEF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v34 = sub_1C2E73C24();
  v41 = 1;
  sub_1C2CDCD40(&v37);
  v44 = *&v38[16];
  v45 = *&v38[32];
  v42 = v37;
  v43 = *v38;
  v47[2] = *&v38[16];
  v47[3] = *&v38[32];
  v47[4] = *&v38[48];
  v47[1] = *v38;
  v46 = *&v38[48];
  v47[0] = v37;
  sub_1C2C736A4(&v42, v35, &qword_1EC05EF28, &qword_1C2E7DEF8);
  sub_1C2C73644(v47, &qword_1EC05EF28, &qword_1C2E7DEF8);
  *&v40[23] = v43;
  *&v40[39] = v44;
  *&v40[55] = v45;
  *&v40[71] = v46;
  *&v40[7] = v42;
  v33 = v41;
  v15 = (*a1 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_subLabel);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;

    *v9 = sub_1C2E73C24();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF30, &qword_1C2E7DF00);
    sub_1C2CDD020(v17, v16, a1, &v9[*(v18 + 44)]);

    sub_1C2C71D5C(v9, v14, &qword_1EC05EF18, &qword_1C2E7DEE8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v5 + 56))(v14, v19, 1, v4);
  *v9 = sub_1C2E73C24();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF30, &qword_1C2E7DF00);
  sub_1C2CDD740(a1, &v9[*(v20 + 44)]);
  v21 = v31;
  sub_1C2C736A4(v14, v31, &qword_1EC05EF20, &qword_1C2E7DEF0);
  v22 = v32;
  sub_1C2C736A4(v9, v32, &qword_1EC05EF18, &qword_1C2E7DEE8);
  v35[0] = v34;
  v35[1] = 0;
  v36[0] = v33;
  *&v36[1] = *v40;
  *&v36[17] = *&v40[16];
  *&v36[65] = *&v40[64];
  *&v36[49] = *&v40[48];
  *&v36[33] = *&v40[32];
  v23 = *&v40[79];
  *&v36[80] = *&v40[79];
  v24 = *v36;
  *a2 = v34;
  *(a2 + 16) = v24;
  v25 = *&v36[16];
  v26 = *&v36[32];
  v27 = *&v36[48];
  v28 = *&v36[64];
  *(a2 + 96) = v23;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF38, &qword_1C2E7DF08);
  sub_1C2C736A4(v21, a2 + *(v29 + 48), &qword_1EC05EF20, &qword_1C2E7DEF0);
  sub_1C2C736A4(v22, a2 + *(v29 + 64), &qword_1EC05EF18, &qword_1C2E7DEE8);
  sub_1C2C736A4(v35, &v37, &qword_1EC05EF40, &qword_1C2E7DF10);
  sub_1C2C73644(v9, &qword_1EC05EF18, &qword_1C2E7DEE8);
  sub_1C2C73644(v14, &qword_1EC05EF20, &qword_1C2E7DEF0);
  sub_1C2C73644(v22, &qword_1EC05EF18, &qword_1C2E7DEE8);
  sub_1C2C73644(v21, &qword_1EC05EF20, &qword_1C2E7DEF0);
  *&v38[33] = *&v40[32];
  *&v38[49] = *&v40[48];
  *v39 = *&v40[64];
  *&v38[1] = *v40;
  v37 = v34;
  v38[0] = v33;
  *&v39[15] = *&v40[79];
  *&v38[17] = *&v40[16];
  return sub_1C2C73644(&v37, &qword_1EC05EF40, &qword_1C2E7DF10);
}

uint64_t sub_1C2CDCD40@<X0>(uint64_t a2@<X8>)
{
  sub_1C2C74960();

  v3 = sub_1C2E748A4();
  v5 = v4;
  v7 = v6;
  sub_1C2E71B94();
  v8 = sub_1C2E747F4();
  v10 = v9;
  v12 = v11;

  sub_1C2C72340(v3, v5, v7 & 1);

  sub_1C2E71B84();
  v13 = sub_1C2E74794();
  v33 = v14;
  v34 = v13;
  v32 = v15;
  v35 = v16;
  sub_1C2C72340(v8, v10, v12 & 1);

  v17 = sub_1C2E748A4();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_1C2E71B94();
  v21 = sub_1C2E747F4();
  v23 = v22;
  LOBYTE(v5) = v24;

  sub_1C2C72340(v17, v19, v10 & 1);

  sub_1C2E71B74();
  v25 = sub_1C2E74794();
  v27 = v26;
  LOBYTE(v8) = v28;
  v30 = v29;
  sub_1C2C72340(v21, v23, v5 & 1);

  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27;
  *(a2 + 64) = v8 & 1;
  *(a2 + 72) = v30;
  sub_1C2C72330(v34, v33, v32 & 1);

  sub_1C2C72330(v25, v27, v8 & 1);

  sub_1C2C72340(v25, v27, v8 & 1);

  sub_1C2C72340(v34, v33, v32 & 1);
}

uint64_t sub_1C2CDD020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a3;
  v45 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF48, &qword_1C2E7DF18);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = (&v37 - v7);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF50, &qword_1C2E7DF20);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF58, &qword_1C2E7DF28);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v46 = a1;
  v47 = a2;
  sub_1C2C74960();

  v18 = sub_1C2E748A4();
  v20 = v19;
  v22 = v21;
  v46 = sub_1C2E71B74();
  v23 = sub_1C2E74794();
  v25 = v24;
  v40 = v26;
  v42 = v27;
  sub_1C2C72340(v18, v20, v22 & 1);

  v28 = 1;
  if (*(*v41 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) == 1)
  {
    sub_1C2CDD42C(v11);
    v29 = sub_1C2E71B74();
    v30 = v38;
    *&v11[*(v37 + 36)] = v29;
    sub_1C2C736A4(v11, v30, &qword_1EC05EF50, &qword_1C2E7DF20);
    v31 = v39;
    *v39 = 0;
    *(v31 + 8) = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF68, &qword_1C2E7DF38);
    sub_1C2C736A4(v30, v31 + *(v32 + 48), &qword_1EC05EF50, &qword_1C2E7DF20);
    sub_1C2C73644(v11, &qword_1EC05EF50, &qword_1C2E7DF20);
    sub_1C2C73644(v30, &qword_1EC05EF50, &qword_1C2E7DF20);
    sub_1C2C71D5C(v31, v17, &qword_1EC05EF48, &qword_1C2E7DF18);
    v28 = 0;
  }

  (*(v43 + 56))(v17, v28, 1, v44);
  sub_1C2C736A4(v17, v14, &qword_1EC05EF58, &qword_1C2E7DF28);
  v33 = v45;
  *v45 = v23;
  v33[1] = v25;
  v34 = v40 & 1;
  *(v33 + 16) = v40 & 1;
  v33[3] = v42;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF60, &qword_1C2E7DF30);
  sub_1C2C736A4(v14, v33 + *(v35 + 48), &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C72330(v23, v25, v34);

  sub_1C2C73644(v17, &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C73644(v14, &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C72340(v23, v25, v34);
}

uint64_t sub_1C2CDD42C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_1C2E74264();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF70, &qword_1C2E7DF40);
  v5 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v7 = v22 - v6;
  v8 = sub_1C2E73C24();
  sub_1C2CDE414(v28);
  v9 = v28[0];
  v10 = sub_1C2E74644();
  KeyPath = swift_getKeyPath();
  v12 = sub_1C2E71B84();
  LOBYTE(v23) = 0;
  *&v25 = v8;
  *(&v25 + 1) = 0x4010000000000000;
  v26[0] = 0;
  *&v26[8] = v9;
  *&v26[24] = KeyPath;
  *&v27 = v10;
  *(&v27 + 1) = v12;
  sub_1C2E74234();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF78, &qword_1C2E7DF78);
  v14 = sub_1C2CE2574();
  sub_1C2E74C04();
  (*(v2 + 8))(v4, v1);
  v28[0] = v25;
  v28[1] = *v26;
  v28[2] = *&v26[16];
  v28[3] = v27;
  sub_1C2C73644(v28, &qword_1EC05EF78, &qword_1C2E7DF78);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_1C2E71684();
  v19 = v18;

  *&v25 = v17;
  *(&v25 + 1) = v19;
  v23 = v13;
  v24 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C2C74960();
  v20 = v22[0];
  sub_1C2E74B34();

  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_1C2CDD740@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF48, &qword_1C2E7DF18);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = (&v41 - v4);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF50, &qword_1C2E7DF20);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF58, &qword_1C2E7DF28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - v11;
  v44 = a1;
  v12 = *a1;
  v13 = *(*a1 + 56);
  v51 = *(*a1 + 48);
  v52 = v13;
  sub_1C2C74960();

  v14 = sub_1C2E748A4();
  v16 = v15;
  v18 = v17;
  sub_1C2E71B94();
  v19 = sub_1C2E747F4();
  v21 = v20;
  v23 = v22;

  sub_1C2C72340(v14, v16, v18 & 1);

  v51 = sub_1C2E71B74();
  v24 = sub_1C2E74794();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C2C72340(v19, v21, v23 & 1);

  if (*(v12 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) == 1)
  {
    v31 = 1;
    v32 = v46;
    if (!*(v12 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_subLabel + 8))
    {
      v33 = v42;
      sub_1C2CDD42C(v42);
      *(v33 + *(v41 + 36)) = sub_1C2E71B74();
      v34 = v43;
      sub_1C2C736A4(v33, v43, &qword_1EC05EF50, &qword_1C2E7DF20);
      v35 = v45;
      *v45 = 0;
      *(v35 + 8) = 1;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF68, &qword_1C2E7DF38);
      sub_1C2C736A4(v34, v35 + *(v36 + 48), &qword_1EC05EF50, &qword_1C2E7DF20);
      sub_1C2C73644(v33, &qword_1EC05EF50, &qword_1C2E7DF20);
      sub_1C2C73644(v34, &qword_1EC05EF50, &qword_1C2E7DF20);
      sub_1C2C71D5C(v35, v32, &qword_1EC05EF48, &qword_1C2E7DF18);
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
    v32 = v46;
  }

  (*(v48 + 56))(v32, v31, 1, v49);
  v37 = v47;
  sub_1C2C736A4(v32, v47, &qword_1EC05EF58, &qword_1C2E7DF28);
  v38 = v50;
  *v50 = v24;
  v38[1] = v26;
  *(v38 + 16) = v28 & 1;
  v38[3] = v30;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF60, &qword_1C2E7DF30);
  sub_1C2C736A4(v37, v38 + *(v39 + 48), &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C72330(v24, v26, v28 & 1);

  sub_1C2C73644(v32, &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C73644(v37, &qword_1EC05EF58, &qword_1C2E7DF28);
  sub_1C2C72340(v24, v26, v28 & 1);
}

void sub_1C2CDDBD0(void *a1)
{
  if (*(*a1 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) == 1)
  {
    type metadata accessor for RTTManager(0);
    sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
    sub_1C2E73124();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C2E72E64();

    if (v1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
      sub_1C2E75194();
    }
  }
}

uint64_t sub_1C2CDDD10@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for RTTConversationView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  type metadata accessor for RTTManager(0);
  sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
  sub_1C2E73124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  if (v14)
  {
    *v6 = v14;
    v10 = *(v3 + 20);
    *(v6 + v10) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE24B0(v6, v9, type metadata accessor for RTTConversationView);
    sub_1C2CE24B0(v9, a2, type metadata accessor for RTTConversationView);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v4 + 56))(a2, v11, 1, v3);
}

uint64_t sub_1C2CDDF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF08, &qword_1C2E7DED8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EF10, &qword_1C2E7DEE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v20 - v6;
  v7 = type metadata accessor for RTTConversationView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  type metadata accessor for RTTManager(0);
  sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
  sub_1C2E73124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  if (v25)
  {
    *v9 = v25;
    v13 = *(v7 + 20);
    *(v9 + v13) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
    swift_storeEnumTagMultiPayload();
    sub_1C2CE24B0(v9, v12, type metadata accessor for RTTConversationView);
    v14 = sub_1C2CE0C20(&qword_1EC05EEE0, type metadata accessor for RTTConversationView, &unk_1C2E7E010);
    sub_1C2E74C94();
    v27 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
    sub_1C2E751A4();
    v25 = v7;
    v26 = v14;
    swift_getOpaqueTypeConformance2();
    v15 = v21;
    sub_1C2E73464();
    sub_1C2CE2518(v12);
    v16 = v24;
    (*(v5 + 32))(v24, v15, v4);
    v17 = 0;
    v18 = v16;
  }

  else
  {
    v17 = 1;
    v18 = v24;
  }

  return (*(v5 + 56))(v18, v17, 1, v4);
}

double sub_1C2CDE33C(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) == 1)
  {
    type metadata accessor for RTTManager(0);
    sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
    sub_1C2E73124();
    sub_1C2CDEC18(*(v1 + 16), *(v1 + 24));
  }

  return result;
}

double sub_1C2CDE414@<D0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C2E75044();
  type metadata accessor for RTTManager(0);
  sub_1C2CE0C20(&qword_1EC05EEB8, type metadata accessor for RTTManager, &unk_1C2E7DA9C);
  sub_1C2E73124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  if (v6)
  {

    sub_1C2E75044();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;

  return result;
}

id sub_1C2CDE59C()
{
  v1 = [objc_opt_self() viewControllerForConversation_];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFD8, &unk_1C2E7E060);
  sub_1C2E743F4();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v6 action:sel_handleClose];

  v3 = [v1 navigationItem];
  [v3 setLeftBarButtonItem_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v4;
}

id sub_1C2CDE750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RTTConversationView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2CDE81C(uint64_t a1)
{
  result = sub_1C2E732B4();
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

uint64_t sub_1C2CDE8B4@<X0>(void *a1@<X8>)
{
  v2 = sub_1C2E732B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2D88BE8(v5);
  v6 = type metadata accessor for RTTConversationView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  (*(v3 + 16))(v7 + OBJC_IVAR____TtCV16CommunicationsUI19RTTConversationView11Coordinator_dismiss, v5, v2);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = (*(v3 + 8))(v5, v2);
  *a1 = v8;
  return result;
}

uint64_t sub_1C2CDEA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CE0C20(&qword_1EC05EFD0, type metadata accessor for RTTConversationView, &unk_1C2E7DF98);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C2CDEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CE0C20(&qword_1EC05EFD0, type metadata accessor for RTTConversationView, &unk_1C2E7DF98);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C2CDEB4C(uint64_t a1)
{
  sub_1C2CE0C20(&qword_1EC05EFD0, type metadata accessor for RTTConversationView, &unk_1C2E7DF98);
  sub_1C2E74344();
  __break(1u);
}

uint64_t sub_1C2CDEBA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  return v1;
}

double sub_1C2CDEC18(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1C2E759D4();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E75A04();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E759E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0, 0x1E69E9610);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v13 = sub_1C2E760A4();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v19;
  v15[3] = a2;
  v15[4] = v14;
  aBlock[4] = sub_1C2CDF930;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  sub_1C2E759F4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1C2CE0C20(&qword_1EDDCDA00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60, &qword_1C2E854E0);
  sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60, &qword_1C2E854E0, MEMORY[0x1E69E6328]);
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v22 + 8))(v5, v3);
  (*(v20 + 8))(v8, v21);

  return result;
}

id sub_1C2CDF00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C2E759D4();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E75A04();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedUtilityProvider];
  if (result)
  {
    v11 = result;
    v12 = sub_1C2E75C24();
    v13 = [v11 conversationForCallUID_];

    sub_1C2C6E1B4(0, &qword_1EDDCD9E0, 0x1E69E9610);
    v14 = sub_1C2E76084();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1C2CDF954;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2CB2CC4;
    aBlock[3] = &block_descriptor_48;
    v16 = _Block_copy(aBlock);

    v17 = v13;

    sub_1C2E759F4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C2CE0C20(&qword_1EDDCDA00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60, &qword_1C2E854E0);
    sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60, &qword_1C2E854E0, MEMORY[0x1E69E6328]);
    sub_1C2E76464();
    MEMORY[0x1C6926AC0](0, v9, v6, v16);
    _Block_release(v16);

    (*(v21 + 8))(v6, v4);
    return (*(v19 + 8))(v9, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2CDF378(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a2;
    return sub_1C2E72E74();
  }

  return result;
}

uint64_t sub_1C2CDF40C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI10RTTManager__rttConversation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECB0, &unk_1C2E7DB28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1C2CDF4DC(uint64_t a1)
{
  sub_1C2CE086C(319, &qword_1EC05EC90, &qword_1EC05EC98, &qword_1C2E7D9A0, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C2CDF598@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RTTManager(0);
  result = sub_1C2E72DC4();
  *a2 = result;
  return result;
}

uint64_t sub_1C2CDF5D8()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_date;
  v2 = sub_1C2E71844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2CDF6F0(uint64_t a1)
{
  result = sub_1C2E71844();
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

uint64_t sub_1C2CDF7A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_date;
  swift_beginAccess();
  v4 = sub_1C2E71844();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C2CDF830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_date;
  swift_beginAccess();
  v4 = sub_1C2E71844();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C2CDF920@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2CDF95C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  *a2 = v3;
}

uint64_t sub_1C2CDF9DC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1C2E72E74();
}

uint64_t sub_1C2CDFA54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C2CDFA84(void *a1)
{
  if (![a1 wasEmergencyCall])
  {
    return 0;
  }

  v2 = [a1 emergencyMediaItems];
  if (v2)
  {
    v3 = v2;
    sub_1C2C6E1B4(0, &qword_1EC05D4B0, 0x1E6993570);
    sub_1C2CE0654();
    v4 = sub_1C2E75F14();
  }

  else if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C2E764E4())
  {
    sub_1C2C9622C(MEMORY[0x1E69E7CC0]);
    v4 = v56;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v57 = a1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C2E764A4();
    sub_1C2C6E1B4(0, &qword_1EC05D4B0, 0x1E6993570);
    sub_1C2CE0654();
    sub_1C2E75F24();
    v4 = v61;
    v5 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v58 = 0;
  v59 = 0;
  v12 = (v6 + 64) >> 6;
  while (2)
  {
    v13 = v7;
    v14 = v8;
    do
    {
      if (v4 < 0)
      {
        if (!sub_1C2E76514())
        {
          goto LABEL_31;
        }

        sub_1C2C6E1B4(0, &qword_1EC05D4B0, 0x1E6993570);
        swift_dynamicCast();
        v18 = v60;
        v7 = v13;
        v8 = v14;
        if (!v60)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v16 = v13;
        v17 = v14;
        v7 = v13;
        if (!v14)
        {
          while (1)
          {
            v7 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_31;
            }

            v17 = *(v5 + 8 * v7);
            ++v16;
            if (v17)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_20:
        v8 = (v17 - 1) & v17;
        v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v18)
        {
          goto LABEL_31;
        }
      }

      if (![v18 emergencyMediaType])
      {
        if (__OFADD__(v59, 1))
        {
          goto LABEL_58;
        }

        ++v59;
      }

      v15 = [v18 emergencyMediaType];

      v13 = v7;
      v14 = v8;
    }

    while (v15 != 1);
    if (!__OFADD__(v58++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_31:
  sub_1C2CC8218(v4);

  if (([v57 usedEmergencyVideoStreaming] & 1) == 0)
  {
    goto LABEL_35;
  }

  v12 = v58 + 1;
  if (__OFADD__(v58, 1))
  {
    __break(1u);
LABEL_35:
    v12 = v58;
  }

  v14 = v59;
  if (qword_1EC05CFE8 == -1)
  {
    goto LABEL_37;
  }

LABEL_59:
  swift_once();
LABEL_37:
  v20 = sub_1C2E72B44();
  __swift_project_value_buffer(v20, qword_1EC075B88);
  v21 = sub_1C2E72B24();
  v22 = sub_1C2E75FE4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v14;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v12;
    _os_log_impl(&dword_1C2C6B000, v21, v22, "CommunicationDetails,emergencySubLabelText: mediaCount.images:%ld mediaCount.videos:%ld", v23, 0x16u);
    MEMORY[0x1C6927DF0](v23, -1, -1);
  }

  if (v12 >= 1 && !v14)
  {
    goto LABEL_44;
  }

  if (v12 == 1)
  {
    if (v14 == 1)
    {
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      sub_1C2E71684();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C2E7A110;
      v33 = sub_1C2E76774();
      v35 = v34;
      v36 = MEMORY[0x1E69E6158];
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v37 = sub_1C2CAB500();
      *(v32 + 64) = v37;
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v38 = sub_1C2E76774();
      *(v32 + 96) = v36;
      *(v32 + 104) = v37;
LABEL_54:
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      goto LABEL_55;
    }

    if (v14 < 2)
    {
      return 0;
    }

LABEL_53:
    type metadata accessor for StringDummy();
    v47 = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C2E7A110;
    v49 = sub_1C2E76774();
    v51 = v50;
    v52 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v53 = sub_1C2CAB500();
    *(v32 + 64) = v53;
    *(v32 + 32) = v49;
    *(v32 + 40) = v51;
    v38 = sub_1C2E76774();
    *(v32 + 96) = v52;
    *(v32 + 104) = v53;
    goto LABEL_54;
  }

  if (v12)
  {
    if (v12 < 2)
    {
      return 0;
    }

    if (v14 == 1)
    {
      type metadata accessor for StringDummy();
      v40 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      sub_1C2E71684();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C2E7A110;
      v42 = sub_1C2E76774();
      v44 = v43;
      v45 = MEMORY[0x1E69E6158];
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v46 = sub_1C2CAB500();
      *(v32 + 64) = v46;
      *(v32 + 32) = v42;
      *(v32 + 40) = v44;
      v38 = sub_1C2E76774();
      *(v32 + 96) = v45;
      *(v32 + 104) = v46;
      goto LABEL_54;
    }

    if (v14 < 2)
    {
      return 0;
    }

    goto LABEL_53;
  }

  if (v14 >= 1)
  {
LABEL_44:
    type metadata accessor for StringDummy();
    v24 = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C2E7A930;
    v27 = sub_1C2E76774();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1C2CAB500();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
LABEL_55:
    v54 = sub_1C2E75C74();

    return v54;
  }

  return 0;
}

unint64_t sub_1C2CE0654()
{
  result = qword_1EC05ECB8;
  if (!qword_1EC05ECB8)
  {
    sub_1C2C6E1B4(255, &qword_1EC05D4B0, 0x1E6993570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ECB8);
  }

  return result;
}

void sub_1C2CE0704(uint64_t a1)
{
  sub_1C2C6E1B4(319, &qword_1EC05CA58, 0x1E695CD58);
  if (v1 <= 0x3F)
  {
    sub_1C2CE08D0(319, &qword_1EC05BAA8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1C2CE086C(319, &qword_1EC05ECE8, &qword_1EC05ECC8, &unk_1C2E7DB70, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C2CE08D0(319, &qword_1EC05E720, MEMORY[0x1E695D008], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C2CE0934();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C2CE086C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1C2CE08D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C2CE0934()
{
  if (!qword_1EC05CAD8)
  {
    v0 = sub_1C2E751B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CAD8);
    }
  }
}

uint64_t sub_1C2CE09A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CE0A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CommunicationDetailsCallHistoryView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1C2CD996C(a1, v6, a2);
}

unint64_t sub_1C2CE0A8C()
{
  result = qword_1EC05ED30;
  if (!qword_1EC05ED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED28, &qword_1C2E7DC30);
    sub_1C2CE0B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED30);
  }

  return result;
}

unint64_t sub_1C2CE0B10()
{
  result = qword_1EC05ED38;
  if (!qword_1EC05ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED40, &qword_1C2E7DC38);
    sub_1C2CE0BCC();
    sub_1C2CE0C20(&qword_1EC05E8F0, type metadata accessor for ContactCardStyleModifier, &unk_1C2E7D680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED38);
  }

  return result;
}

unint64_t sub_1C2CE0BCC()
{
  result = qword_1EC05ED48;
  if (!qword_1EC05ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED48);
  }

  return result;
}

uint64_t sub_1C2CE0C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2CE0C68()
{
  result = qword_1EC05ED50;
  if (!qword_1EC05ED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED08, &qword_1C2E7DC10);
    sub_1C2C94F38(&qword_1EC05ED58, &qword_1EC05ED60, &unk_1C2E7DC40, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED50);
  }

  return result;
}

unint64_t sub_1C2CE0D20()
{
  result = qword_1EC05ED68;
  if (!qword_1EC05ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED10, &qword_1C2E7DC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED08, &qword_1C2E7DC10);
    sub_1C2CE0C68();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8, &qword_1C2E7E9A0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED68);
  }

  return result;
}

unint64_t sub_1C2CE0E1C()
{
  result = qword_1EC05ED78;
  if (!qword_1EC05ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED18, &qword_1C2E7DC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED10, &qword_1C2E7DC18);
    sub_1C2CE0D20();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05ED78);
  }

  return result;
}

unint64_t sub_1C2CE0F10()
{
  result = qword_1EC05EDA0;
  if (!qword_1EC05EDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED00, &qword_1C2E7DC08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED18, &qword_1C2E7DC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05ED70, &qword_1C2E7DC88);
    sub_1C2CE0E1C();
    sub_1C2C94F38(&qword_1EC05ED80, &qword_1EC05ED70, &qword_1C2E7DC88, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05EDA8, &qword_1EC05ED98, &qword_1C2E7DCA0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EDA0);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for CommunicationDetailsCallHistoryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C2E732B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 28);
  v9 = sub_1C2E71574();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1C2CE127C(unint64_t a1)
{
  v2 = sub_1C2E71844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v63[-v6];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v63[-v9];
  v101 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v11 = sub_1C2E764E4();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v84 = a1 & 0xC000000000000001;
    v13 = (v3 + 32);
    v80 = *MEMORY[0x1E69935B0];
    v70 = *MEMORY[0x1E69935C8];
    v69 = 0x80000001C2E95620;
    v82 = 0x80000001C2E95640;
    v74 = *MEMORY[0x1E69935A0];
    v68 = *MEMORY[0x1E69935A8];
    v64 = *MEMORY[0x1E69935B8];
    v65 = "SHARED %@ VIDEOS";
    v66 = "CALL_STATUS_RECENTS_MISSED";
    v67 = "CALL_STATUS_CANCELLED";
    v73 = (v3 + 16);
    v72 = (v3 + 8);
    v75 = (v3 + 32);
    v77 = a1;
    v76 = v11;
    v81 = &qword_1C2E7D960;
    v71 = v2;
    v96 = v10;
    while (1)
    {
      v14 = v84 ? MEMORY[0x1C6927010](v12, a1, v8) : *(a1 + 8 * v12 + 32);
      v15 = v14;
      v16 = [v14 date];
      if (v16)
      {
        break;
      }

LABEL_6:
      if (v11 == ++v12)
      {
        return;
      }
    }

    v17 = v78;
    v18 = v16;
    sub_1C2E71814();

    v95 = *v13;
    v95(v10, v17, v2);
    if (qword_1EC05CF28 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC075AD8;
    v20 = sub_1C2E71804();
    v21 = [v19 stringFromDate_];

    v22 = sub_1C2E75C64();
    v97 = v23;
    v98 = v22;

    [v15 duration];
    sub_1C2CE4A0C(v24);
    v83 = v25;
    v94 = v26;
    v27 = [v15 callStatus];
    if (v27 != v80)
    {
      [v15 callStatus];
    }

    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_1C2E71684();
    v91 = v31;
    v92 = v30;

    v32 = [v15 callStatus];
    v93 = v12;
    if (v74 == v32 || v68 == v32)
    {
      v33 = [objc_opt_self() bundleForClass_];
      v34 = sub_1C2E71684();
      v36 = v35;
      v2 = v71;
      v37 = v96;
    }

    else
    {
      v2 = v71;
      v36 = 0xE000000000000000;
      v37 = v96;
      if (v70 != v32 && v80 != v32 && v64 != v32)
      {
        v34 = 0;
        goto LABEL_24;
      }

      v33 = [objc_opt_self() bundleForClass_];
      v34 = sub_1C2E71684();
      v36 = v38;
    }

LABEL_24:
    v99 = static Date.faceTimeDateString(from:showToday:)(v37, 1);
    v100 = v39;
    MEMORY[0x1C6926710](548913696, 0xA400000000000000);
    MEMORY[0x1C6926710](v98, v97);
    v88 = v100;
    v89 = v99;
    v40 = sub_1C2CDFA84(v15);
    v86 = v41;
    v87 = v40;
    v42 = v15;
    v43 = [v15 uniqueId];
    v44 = sub_1C2E75C64();
    v85 = v45;

    v46 = v94;
    v90 = v36;
    if (v94)
    {
      v47 = v83;
    }

    else
    {

      v46 = v36;
      v47 = v34;
    }

    v48 = v79;
    v49 = v96;
    (*v73)(v79, v96, v2);
    v50 = [v42 ttyType] != 0;
    type metadata accessor for CommunicationDetailsCallHistoryCellViewModel(0);
    v51 = swift_allocObject();
    v52 = (v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_subLabel);
    *v52 = 0;
    v52[1] = 0;
    v53 = v85;
    v51[2] = v44;
    v51[3] = v53;
    v54 = v97;
    v51[4] = v98;
    v51[5] = v54;
    v51[6] = v47;
    v51[7] = v46;
    v55 = v48;
    v13 = v75;
    v95(v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_date, v55, v2);
    v56 = (v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_subLabel);
    v57 = v86;
    *v56 = v87;
    v56[1] = v57;
    v58 = (v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_dateAndTime);
    v59 = v88;
    *v58 = v89;
    v58[1] = v59;
    v60 = (v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_callStatus);
    v61 = v91;
    *v60 = v92;
    v60[1] = v61;
    *(v51 + OBJC_IVAR____TtC16CommunicationsUI44CommunicationDetailsCallHistoryCellViewModel_isRTT) = v50;

    MEMORY[0x1C6926780](v62);
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();

    (*v72)(v49, v2);
    a1 = v77;
    v10 = v49;
    v11 = v76;
    v12 = v93;
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1C2CE1B50()
{
  result = qword_1EC05EDE8;
  if (!qword_1EC05EDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EDE0, &qword_1C2E7DCD8);
    sub_1C2CE1C08();
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8, &qword_1C2E7D750, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EDE8);
  }

  return result;
}

unint64_t sub_1C2CE1C08()
{
  result = qword_1EC05EDF0;
  if (!qword_1EC05EDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EDF8, &qword_1C2E7DCE0);
    sub_1C2CE1C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EDF0);
  }

  return result;
}

unint64_t sub_1C2CE1C94()
{
  result = qword_1EC05EE00;
  if (!qword_1EC05EE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE08, &unk_1C2E7DCE8);
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EE00);
  }

  return result;
}

unint64_t sub_1C2CE1D4C()
{
  result = qword_1EC05EE18;
  if (!qword_1EC05EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE10, &qword_1C2E7DCF8);
    sub_1C2CE1E04();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EE18);
  }

  return result;
}

unint64_t sub_1C2CE1E04()
{
  result = qword_1EC05EE20;
  if (!qword_1EC05EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EE20);
  }

  return result;
}

uint64_t sub_1C2CE1E60()
{
  v1 = *(type metadata accessor for CommunicationDetailsCallHistoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C2CDAFE4(v2);
}

uint64_t sub_1C2CE1EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CommunicationDetailsCallHistoryView(0);

  return sub_1C2CDA500(a1, a2);
}

unint64_t sub_1C2CE1FBC()
{
  result = qword_1EC05EEC0;
  if (!qword_1EC05EEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE80, &qword_1C2E7DE90);
    sub_1C2CE2074();
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8, &qword_1C2E7CAE0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EEC0);
  }

  return result;
}

unint64_t sub_1C2CE2074()
{
  result = qword_1EC05EEC8;
  if (!qword_1EC05EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE78, &qword_1C2E7DE88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE68, &qword_1C2E7DE78);
    sub_1C2C94F38(&qword_1EC05EEB0, &qword_1EC05EE68, &qword_1C2E7DE78, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    sub_1C2CE0C20(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EEC8);
  }

  return result;
}

unint64_t sub_1C2CE21A0()
{
  result = qword_1EC05EED8;
  if (!qword_1EC05EED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EED0, &qword_1C2E7DEC8);
    sub_1C2CE0C20(&qword_1EC05EEE0, type metadata accessor for RTTConversationView, &unk_1C2E7E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EED8);
  }

  return result;
}

unint64_t sub_1C2CE2274()
{
  result = qword_1EC05EEE8;
  if (!qword_1EC05EEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE50, &qword_1C2E7DE60);
    sub_1C2CE232C();
    sub_1C2C94F38(&qword_1EC05EEF8, &qword_1EC05EF00, &qword_1C2E7DED0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EEE8);
  }

  return result;
}

unint64_t sub_1C2CE232C()
{
  result = qword_1EC05EEF0;
  if (!qword_1EC05EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE90, &qword_1C2E7DEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE88, &qword_1C2E7DE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EED0, &qword_1C2E7DEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE80, &qword_1C2E7DE90);
    sub_1C2CE1FBC();
    swift_getOpaqueTypeConformance2();
    sub_1C2CE21A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EEF0);
  }

  return result;
}

uint64_t objectdestroy_82Tm()
{

  sub_1C2CE1FA4(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2CE24B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2CE2518(uint64_t a1)
{
  v2 = type metadata accessor for RTTConversationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2CE2574()
{
  result = qword_1EC05EF80;
  if (!qword_1EC05EF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EF78, &qword_1C2E7DF78);
    sub_1C2CE262C();
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8, &qword_1C2E7D750, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EF80);
  }

  return result;
}

unint64_t sub_1C2CE262C()
{
  result = qword_1EC05EF88;
  if (!qword_1EC05EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EF90, &qword_1C2E7DF80);
    sub_1C2C94F38(&qword_1EC05EF98, &qword_1EC05EFA0, &unk_1C2E7DF88, MEMORY[0x1E69817F8]);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EF88);
  }

  return result;
}

void sub_1C2CE2738(uint64_t a1)
{
  sub_1C2C6E1B4(319, &qword_1EC05EFB8, 0x1E69C6B38);
  if (v1 <= 0x3F)
  {
    sub_1C2CE08D0(319, &qword_1EC05BAA8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2CE27FC()
{
  result = qword_1EC05EFC0;
  if (!qword_1EC05EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EEA0, &qword_1C2E7DEB0);
    sub_1C2CE2888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EFC0);
  }

  return result;
}

unint64_t sub_1C2CE2888()
{
  result = qword_1EC05EFC8;
  if (!qword_1EC05EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EE98, &qword_1C2E7DEA8);
    sub_1C2CE2274();
    sub_1C2CE232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EFC8);
  }

  return result;
}

Swift::String __swiftcall CommunicationDetailsTimeSection.title()()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

CommunicationsUI::CommunicationDetailsTimeSection_optional __swiftcall CommunicationDetailsTimeSection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *_s16CommunicationsUI31CommunicationDetailsTimeSectionO16groupItemsByDateySDyACSayAA0cdJ5Model_pGGAFFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8, &qword_1C2E89AC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v201 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v206 = &v197 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v203 = &v197 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v214 = &v197 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v197 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v220 = &v197 - v14;
  v246 = sub_1C2E719B4();
  *&v256 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v16 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F000, &unk_1C2E7E220);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v226 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v227 = &v197 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v197 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v229 = &v197 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v233 = &v197 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v232 = &v197 - v29;
  v254 = sub_1C2E71844();
  v30 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v198 = &v197 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v205 = &v197 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v204 = &v197 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v223 = &v197 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v211 = &v197 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v210 = &v197 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v199 = &v197 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v213 = &v197 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v212 = &v197 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v197 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v217 = &v197 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v216 = &v197 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v200 = &v197 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v218 = &v197 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v219 = &v197 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v231 = &v197 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v225 = &v197 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v224 = &v197 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v242 = &v197 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v197 - v70;
  v208 = sub_1C2E719D4();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v73 = &v197 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C2D94B64(MEMORY[0x1E69E7CC0]);
  v245 = v73;
  sub_1C2E719A4();
  sub_1C2E71834();
  v75 = *(a1 + 16);
  v252 = v71;
  if (!v75)
  {
    v195 = 0;
    v169 = *(v30 + 8);
    v78 = v245;
LABEL_76:
    v169(v252, v254);
    (*(v207 + 8))(v78, v208);
    sub_1C2C71668(v195, 0);
    return v74;
  }

  v236 = v16;
  v202 = v12;
  v76 = 0;
  v77 = (a1 + 32);
  v237 = *MEMORY[0x1E6969A10];
  v249 = (v256 + 104);
  v250 = (v256 + 8);
  v243 = (v30 + 32);
  v253 = (v30 + 8);
  v230 = (v30 + 48);
  v215 = *MEMORY[0x1E6969A48];
  v235 = *MEMORY[0x1E6969A78];
  v234 = *MEMORY[0x1E6969A68];
  v222 = v23;
  v228 = v50;
  v78 = v245;
  v79 = v242;
  while (1)
  {
    v255 = v76;
    v256 = *v77;
    ObjectType = swift_getObjectType();
    v81 = *(&v256 + 1);
    v82 = *(*(&v256 + 1) + 8);
    swift_unknownObjectRetain();
    v82(ObjectType, v81);
    v83 = v79;
    if (sub_1C2E71954())
    {
      sub_1C2C71668(v255, 0);
      v84 = 0;
      goto LABEL_44;
    }

    if (sub_1C2E71974())
    {
      sub_1C2C71668(v255, 0);
      v84 = 1;
      goto LABEL_44;
    }

    v239 = v77;
    v85 = v236;
    v86 = v237;
    v87 = v246;
    v247 = *v249;
    v247(v236, v237, v246);
    v88 = v232;
    sub_1C2E71944();
    v251 = *v250;
    v251(v85, v87);
    v89 = sub_1C2E71624();
    v90 = *(v89 - 8);
    v91 = *(v90 + 48);
    v244 = v90 + 48;
    v248 = v91;
    v92 = (v91)(v88, 1, v89);
    v93 = v233;
    v241 = v90;
    if (v92 == 1)
    {
      sub_1C2C73644(v88, &qword_1EC05F000, &unk_1C2E7E220);
    }

    else
    {
      v94 = v225;
      sub_1C2E71614();
      (*(v90 + 8))(v88, v89);
      v95 = v224;
      v96 = v94;
      v78 = v245;
      v97 = v254;
      (*v243)(v224, v96, v254);
      sub_1C2CE49B4();
      v98 = sub_1C2E75B84();
      v99 = v95;
      v86 = v237;
      (*v253)(v99, v97);
      if ((v98 & 1) == 0)
      {
        sub_1C2C71668(v255, 0);
        v84 = 2;
LABEL_27:
        v83 = v242;
        v77 = v239;
        goto LABEL_44;
      }
    }

    v240 = v75;
    v101 = v246;
    v100 = v247;
    v247(v85, v86, v246);
    sub_1C2E71944();
    v251(v85, v101);
    v102 = (v248)(v93, 1, v89);
    v238 = v89;
    if (v102 == 1)
    {
      sub_1C2C73644(v93, &qword_1EC05F000, &unk_1C2E7E220);
      v103 = v229;
      v104 = v100;
      v100(v85, v235, v101);
      goto LABEL_19;
    }

    v105 = v219;
    sub_1C2E71614();
    (*(v241 + 8))(v93, v89);
    v106 = v254;
    v221 = *v243;
    v221(v231, v105, v254);
    v100(v85, v86, v101);
    v107 = v101;
    v108 = v220;
    sub_1C2E71984();
    v109 = v108;
    v251(v85, v107);
    v110 = *v230;
    if ((*v230)(v109, 1, v106) == 1)
    {
      (*v253)(v231, v106);
      sub_1C2C73644(v109, &qword_1EC05EFF8, &qword_1C2E89AC0);
      v101 = v107;
      v103 = v229;
      v104 = v100;
LABEL_17:
      v89 = v238;
LABEL_18:
      v104(v85, v235, v101);
      goto LABEL_19;
    }

    v221(v218, v109, v106);
    v100(v85, v215, v107);
    v111 = v202;
    v112 = v231;
    sub_1C2E71984();
    v251(v85, v107);
    if (v110(v111, 1, v106) == 1)
    {
      v113 = *v253;
      (*v253)(v218, v106);
      v113(v112, v106);
      sub_1C2C73644(v111, &qword_1EC05EFF8, &qword_1C2E89AC0);
      v101 = v246;
      v85 = v236;
      v103 = v229;
      v104 = v247;
      goto LABEL_17;
    }

    v173 = v200;
    v221(v200, v111, v106);
    sub_1C2CE49B4();
    v174 = v218;
    v175 = sub_1C2E75B84();
    v176 = v106;
    v103 = v229;
    v89 = v238;
    if ((v175 & 1) == 0)
    {
      v187 = sub_1C2E75B84();
      v188 = *v253;
      (*v253)(v173, v176);
      v188(v174, v176);
      v188(v231, v176);
      v78 = v245;
      v101 = v246;
      v85 = v236;
      v104 = v247;
      if ((v187 & 1) == 0)
      {
        sub_1C2C71668(v255, 0);
        v84 = 3;
        goto LABEL_43;
      }

      goto LABEL_18;
    }

    v177 = *v253;
    (*v253)(v173, v176);
    v177(v174, v176);
    v177(v231, v176);
    v101 = v246;
    v85 = v236;
    v104 = v247;
    v247(v236, v235, v246);
LABEL_19:
    sub_1C2E71944();
    v251(v85, v101);
    if ((v248)(v103, 1, v89) == 1)
    {
      sub_1C2C73644(v103, &qword_1EC05F000, &unk_1C2E7E220);
      v75 = v240;
      goto LABEL_22;
    }

    v114 = v217;
    sub_1C2E71614();
    (*(v241 + 8))(v103, v89);
    v115 = v216;
    v116 = v114;
    v78 = v245;
    v117 = v254;
    (*v243)(v216, v116, v254);
    sub_1C2CE49B4();
    v118 = sub_1C2E75B84();
    (*v253)(v115, v117);
    v75 = v240;
    if ((v118 & 1) == 0)
    {
      sub_1C2C71668(v255, 0);
      v84 = 4;
      goto LABEL_27;
    }

LABEL_22:
    v119 = v235;
    v120 = v246;
    v104(v85, v235, v246);
    v121 = v222;
    sub_1C2E71944();
    v122 = v251;
    v251(v85, v120);
    if ((v248)(v121, 1, v89) == 1)
    {
      sub_1C2C73644(v121, &qword_1EC05F000, &unk_1C2E7E220);
      v123 = v227;
      goto LABEL_31;
    }

    v124 = v212;
    sub_1C2E71614();
    (*(v241 + 8))(v121, v89);
    v125 = v254;
    v221 = *v243;
    v221(v228, v124, v254);
    v247(v85, v119, v120);
    v126 = v214;
    sub_1C2E71984();
    v122(v85, v120);
    v209 = *v230;
    if (v209(v126, 1, v125) == 1)
    {
      (*v253)(v228, v125);
      sub_1C2C73644(v126, &qword_1EC05EFF8, &qword_1C2E89AC0);
      v120 = v246;
LABEL_30:
      v123 = v227;
      goto LABEL_31;
    }

    v221(v213, v126, v125);
    v127 = v246;
    v247(v85, v215, v246);
    v128 = v203;
    sub_1C2E71984();
    v122(v85, v127);
    if (v209(v128, 1, v125) == 1)
    {
      v129 = *v253;
      (*v253)(v213, v125);
      v129(v228, v125);
      sub_1C2C73644(v128, &qword_1EC05EFF8, &qword_1C2E89AC0);
      v120 = v246;
      v85 = v236;
      goto LABEL_30;
    }

    v178 = v199;
    v221(v199, v128, v125);
    sub_1C2CE49B4();
    v179 = v213;
    v180 = sub_1C2E75B84();
    v181 = v125;
    v123 = v227;
    if (v180)
    {
      v182 = *v253;
      (*v253)(v178, v181);
      v182(v179, v181);
      v182(v228, v181);
      v120 = v246;
      v85 = v236;
    }

    else
    {
      v189 = sub_1C2E75B84();
      v190 = v178;
      v191 = *v253;
      (*v253)(v190, v181);
      v191(v179, v181);
      v191(v228, v181);
      v120 = v246;
      v85 = v236;
      if ((v189 & 1) == 0)
      {
        sub_1C2C71668(v255, 0);
        v84 = 5;
        v83 = v242;
        v77 = v239;
        v78 = v245;
        goto LABEL_44;
      }
    }

LABEL_31:
    v247(v85, v234, v120);
    sub_1C2E71944();
    v251(v85, v120);
    v130 = v238;
    if ((v248)(v123, 1, v238) == 1)
    {
      sub_1C2C73644(v123, &qword_1EC05F000, &unk_1C2E7E220);
      v131 = v241;
      v132 = v226;
      v78 = v245;
    }

    else
    {
      v133 = v211;
      sub_1C2E71614();
      v131 = v241;
      (*(v241 + 8))(v123, v130);
      v134 = v210;
      v135 = v133;
      v136 = v254;
      (*v243)(v210, v135, v254);
      sub_1C2CE49B4();
      v137 = sub_1C2E75B84();
      v138 = v136;
      v78 = v245;
      (*v253)(v134, v138);
      v132 = v226;
      if ((v137 & 1) == 0)
      {
        sub_1C2C71668(v255, 0);
        v84 = 6;
LABEL_43:
        v83 = v242;
        v77 = v239;
        v75 = v240;
        goto LABEL_44;
      }
    }

    v139 = v246;
    v247(v85, v234, v246);
    sub_1C2E71944();
    v140 = v251;
    v251(v85, v139);
    if ((v248)(v132, 1, v130) == 1)
    {
      v141 = v132;
      v142 = &qword_1EC05F000;
      v143 = &unk_1C2E7E220;
LABEL_38:
      sub_1C2C73644(v141, v142, v143);
LABEL_39:
      v83 = v242;
      v77 = v239;
      v75 = v240;
LABEL_40:
      sub_1C2C71668(v255, 0);
LABEL_41:
      v84 = 8;
      goto LABEL_44;
    }

    v144 = v204;
    v145 = v140;
    sub_1C2E71614();
    (*(v131 + 8))(v132, v130);
    v146 = v144;
    v78 = v245;
    v147 = v254;
    v248 = *v243;
    v248(v223, v146, v254);
    v247(v85, v234, v139);
    v148 = v139;
    v149 = v206;
    sub_1C2E71984();
    v150 = v149;
    v145(v85, v148);
    v151 = *v230;
    if ((*v230)(v150, 1, v147) == 1)
    {
      (*v253)(v223, v147);
      v141 = v150;
      v142 = &qword_1EC05EFF8;
      v143 = &qword_1C2E89AC0;
      goto LABEL_38;
    }

    v248(v205, v150, v147);
    v247(v85, v215, v148);
    v171 = v201;
    sub_1C2E71984();
    v251(v85, v148);
    if (v151(v171, 1, v147) == 1)
    {
      v172 = *v253;
      (*v253)(v205, v147);
      v172(v223, v147);
      sub_1C2C73644(v171, &qword_1EC05EFF8, &qword_1C2E89AC0);
      v78 = v245;
      goto LABEL_39;
    }

    v183 = v198;
    v248(v198, v171, v147);
    sub_1C2CE49B4();
    v83 = v242;
    v184 = v205;
    v185 = sub_1C2E75B84();
    v77 = v239;
    v75 = v240;
    if (v185)
    {
      v186 = *v253;
      (*v253)(v183, v147);
      v186(v184, v147);
      v186(v223, v147);
      v78 = v245;
      goto LABEL_40;
    }

    v192 = v147;
    v193 = sub_1C2E75B84();
    v194 = *v253;
    (*v253)(v183, v192);
    v194(v184, v192);
    v194(v223, v192);
    sub_1C2C71668(v255, 0);
    v78 = v245;
    if (v193)
    {
      goto LABEL_41;
    }

    v84 = 7;
LABEL_44:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = v74;
    v154 = sub_1C2C6FE84(v84);
    v155 = v74[2];
    v156 = (v153 & 1) == 0;
    v157 = v155 + v156;
    if (__OFADD__(v155, v156))
    {
      break;
    }

    v158 = v153;
    if (v74[3] >= v157)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v153)
        {
          goto LABEL_53;
        }
      }

      else
      {
        sub_1C2D93C3C();
        v74 = v257;
        if (v158)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      sub_1C2D92BB4(v157, isUniquelyReferenced_nonNull_native);
      v74 = v257;
      v159 = sub_1C2C6FE84(v84);
      if ((v158 & 1) != (v160 & 1))
      {
        goto LABEL_79;
      }

      v154 = v159;
      if (v158)
      {
        goto LABEL_53;
      }
    }

    v74[(v154 >> 6) + 8] |= 1 << v154;
    *(v74[6] + v154) = v84;
    *(v74[7] + 8 * v154) = MEMORY[0x1E69E7CC0];
    v161 = v74[2];
    v162 = __OFADD__(v161, 1);
    v163 = v161 + 1;
    if (v162)
    {
      goto LABEL_78;
    }

    v74[2] = v163;
LABEL_53:
    v164 = v74[7];
    v165 = *(v164 + 8 * v154);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    *(v164 + 8 * v154) = v165;
    if ((v166 & 1) == 0)
    {
      v165 = sub_1C2DD22A4(0, v165[2] + 1, 1, v165);
      *(v164 + 8 * v154) = v165;
    }

    v168 = v165[2];
    v167 = v165[3];
    if (v168 >= v167 >> 1)
    {
      *(v164 + 8 * v154) = sub_1C2DD22A4((v167 > 1), v168 + 1, 1, v165);
    }

    v169 = *v253;
    (*v253)(v83, v254);
    v170 = *(v164 + 8 * v154);
    *(v170 + 16) = v168 + 1;
    *(v170 + 16 * v168 + 32) = v256;
    ++v77;
    v76 = sub_1C2CE2B84;
    --v75;
    v79 = v83;
    if (!v75)
    {
      v195 = sub_1C2CE2B84;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = sub_1C2E767C4();
  __break(1u);
  return result;
}

unint64_t sub_1C2CE4760()
{
  result = qword_1EC05EFE0;
  if (!qword_1EC05EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EFE0);
  }

  return result;
}

unint64_t sub_1C2CE47B8()
{
  result = qword_1EC05EFE8;
  if (!qword_1EC05EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EFF0, &qword_1C2E7E128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05EFE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsTimeSection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationDetailsTimeSection(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C2CE49B4()
{
  result = qword_1EC05F008;
  if (!qword_1EC05F008)
  {
    sub_1C2E71844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F008);
  }

  return result;
}

void sub_1C2CE4A0C(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v1 = a1;
  if (a1 >= 1)
  {
    if (v1 > 0x3B && v1 > 0xE0F)
    {
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      sub_1C2E71684();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C2E7A930;
      v11 = sub_1C2E76774();
      v13 = v12;
      *(v10 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1C2CAB500();
      *(v10 + 64) = v14;
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      sub_1C2E75C74();

      if (v1 % 0xE10 >= 0x3C)
      {
        type metadata accessor for StringDummy();
        v15 = swift_getObjCClassFromMetadata();
        v16 = [objc_opt_self() bundleForClass_];
        sub_1C2E71684();

        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1C2E7A930;
        v18 = sub_1C2E76774();
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = v14;
        *(v17 + 32) = v18;
        *(v17 + 40) = v19;
        v20 = sub_1C2E75C74();
        v22 = v21;

        MEMORY[0x1C6926710](32, 0xE100000000000000);
        MEMORY[0x1C6926710](v20, v22);
      }
    }

    else
    {
      type metadata accessor for StringDummy();
      v2 = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      sub_1C2E71684();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C2E7A930;
      v5 = sub_1C2E76774();
      v7 = v6;
      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1C2CAB500();
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      sub_1C2E75C74();
    }
  }
}

double static CallsColorMatrix.background.getter@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1C2E7E230;
  a1[1] = xmmword_1C2E7E240;
  a1[2] = xmmword_1C2E7E250;
  a1[3] = xmmword_1C2E7E260;
  result = 0.0;
  a1[4] = xmmword_1C2E7A980;
  return result;
}

id static ColorMatrixConvertion.colorEffect(_:)(_OWORD *a1)
{
  v2 = objc_opt_self();
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = [v2 _colorEffectCAMatrix_];

  return v5;
}

__n128 static ColorMatrixConvertion.colorMatrix(_:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1C2CE5094(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C2CE5094@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

Swift::String __swiftcall Date.faceTimeDateString()()
{
  v1 = static Date.faceTimeDateString(from:showToday:)(v0, 0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static Date.faceTimeDateString(from:showToday:)(uint64_t a1, char a2)
{
  v3 = sub_1C2E719B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E71844();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2E719D4();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E719A4();
  if (sub_1C2E71954())
  {
    if (a2)
    {
      goto LABEL_5;
    }

    if (qword_1EC05CF28 != -1)
    {
      swift_once();
    }

    v17 = qword_1EC075AD8;
    v18 = sub_1C2E71804();
    v19 = [v17 stringFromDate_];
LABEL_16:
    v15 = v19;

    v16 = sub_1C2E75C64();
    goto LABEL_17;
  }

  if (sub_1C2E71974())
  {
LABEL_5:
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_1C2E71684();
LABEL_17:
    v25 = v16;

    goto LABEL_18;
  }

  sub_1C2E71834();
  v20 = *MEMORY[0x1E6969A10];
  v28 = *(v4 + 104);
  v28(v6, v20, v3);
  v21 = sub_1C2E71994();
  v27 = *(v4 + 8);
  v27(v6, v3);
  (*(v8 + 8))(v10, v7);
  if ((v21 & 1) == 0)
  {
    if (qword_1EC05CF30 == -1)
    {
LABEL_15:
      v26 = qword_1EC075AE0;
      v18 = sub_1C2E71804();
      v19 = [v26 stringFromDate_];
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v28(v6, *MEMORY[0x1E6969AB0], v3);
  v22 = sub_1C2E719C4();
  v27(v6, v3);
  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = sub_1C2E71964();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(result + 16))
  {
    v25 = *(result + 16 * v23 + 32);

LABEL_18:
    (*(v29 + 8))(v13, v30);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CE55C4()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();

  return v2;
}

uint64_t sub_1C2CE5690@<X0>(uint64_t *a2@<X8>)
{
  sub_1C2CE95B0();
  result = sub_1C2E71D84();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C2CE56D0()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1C2E71684();
  v5 = v4;

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  return v0;
}

void (*sub_1C2CE57B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C2E71DD4();
  return sub_1C2CC3834;
}

uint64_t sub_1C2CE5840@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VideoMessagingTab();
  sub_1C2CE9564(&qword_1EC05F090, v2, type metadata accessor for VideoMessagingTab, &unk_1C2E7E5E0);
  result = sub_1C2E71E24();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C2CE58B8()
{
  type metadata accessor for CommunicationDetailsVideoMessagingViewModel(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F038, &unk_1C2E7E370);
  sub_1C2E72E54();
  v1 = OBJC_IVAR____TtC16CommunicationsUI43CommunicationDetailsVideoMessagingViewModel_messageStoreController;
  sub_1C2E729D4();
  *(v0 + v1) = sub_1C2E729C4();
  return v0;
}

uint64_t sub_1C2CE5954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = sub_1C2E74054();
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E75564();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D778, &qword_1C2E7E8B0);
  sub_1C2E75574();
  *(swift_allocObject() + 16) = xmmword_1C2E7A110;
  v30 = xmmword_1C2E7E2E0;
  *v7 = xmmword_1C2E7E2E0;
  v8 = *MEMORY[0x1E697D748];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_1C2E75584();
  *v7 = v30;
  v9(v7, v8, v4);
  sub_1C2E75584();
  v34 = a1;
  sub_1C2E73DC4();
  v35 = 0;
  sub_1C2CE9564(&qword_1EC05B508, 255, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1C2E76924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0E8, &qword_1C2E7E8B8);
  sub_1C2CEA118();
  v10 = v33;
  sub_1C2E75804();
  LOBYTE(a1) = sub_1C2E74444();
  sub_1C2E73034();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0B8, &qword_1C2E7E878) + 36);
  *v19 = a1;
  *(v19 + 8) = v12;
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = 0;
  LOBYTE(a1) = sub_1C2E744B4();
  sub_1C2E73034();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0A0, &qword_1C2E7E870);
  v29 = v10 + *(result + 36);
  *v29 = a1;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1C2CE5D00(uint64_t *a1)
{
  type metadata accessor for CommunicationDetailsVideoMessagingViewModel(0);
  sub_1C2CE9564(&qword_1EC05F0E0, 255, type metadata accessor for CommunicationDetailsVideoMessagingViewModel, &unk_1C2E7E570);
  sub_1C2E73124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  v7[12] = v7[0];
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 3);
  v2[3] = *(a1 + 2);
  v2[4] = v3;
  v4 = *(a1 + 5);
  v2[5] = *(a1 + 4);
  v2[6] = v4;
  v5 = *(a1 + 1);
  v2[1] = *a1;
  v2[2] = v5;
  sub_1C2CE9948(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F038, &unk_1C2E7E370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F100, &qword_1C2E7E8C0);
  sub_1C2C94F38(&qword_1EC05F110, &qword_1EC05F038, &unk_1C2E7E370, MEMORY[0x1E69E6338]);
  sub_1C2CE9564(&qword_1EC05E340, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C2CEA19C();
  return sub_1C2E75434();
}

__n128 sub_1C2CE5F2C@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];

  sub_1C2C6EE50(v5, v6);
  sub_1C2C6EE50(v7, v8);
  sub_1C2CE9A40(v4, v5, v6, v7, v8, v12);
  sub_1C2CE9B74();
  sub_1C2E75744();
  sub_1C2E73274();
  v9 = v12[5];
  *(a3 + 64) = v12[4];
  *(a3 + 80) = v9;
  *(a3 + 96) = v13;
  v10 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v10;
  result = v12[3];
  *(a3 + 32) = v12[2];
  *(a3 + 48) = result;
  return result;
}

double sub_1C2CE6010(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560, &qword_1C2E7A890);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  type metadata accessor for CommunicationDetailsVideoMessagingViewModel(0);
  sub_1C2CE9564(&qword_1EC05F0E0, 255, type metadata accessor for CommunicationDetailsVideoMessagingViewModel, &unk_1C2E7E570);
  v5 = sub_1C2E73124();
  v6 = a1[3];
  sub_1C2E75E44();
  v7 = sub_1C2E75E74();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v9 = v6;
  sub_1C2D22B9C(0, 0, v4, &unk_1C2E7E8A8, v8);

  return result;
}

uint64_t sub_1C2CE6194()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  return v1;
}

uint64_t sub_1C2CE6208@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v18 = v1[2];
  v19 = v3;
  v4 = v1[5];
  v20 = v1[4];
  v21 = v4;
  v5 = v1[1];
  v16 = *v1;
  v17 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0A0, &qword_1C2E7E870);
  sub_1C2CE97FC();
  sub_1C2E71BF4();
  v6 = sub_1C2E74F44();
  v7 = sub_1C2E74454();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0D0, &qword_1C2E7E888) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = swift_allocObject();
  v10 = v19;
  *(v9 + 3) = v18;
  *(v9 + 4) = v10;
  v11 = v21;
  *(v9 + 5) = v20;
  *(v9 + 6) = v11;
  v12 = v17;
  *(v9 + 1) = v16;
  *(v9 + 2) = v12;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F0D8, &unk_1C2E7E890) + 36));
  *v13 = sub_1C2CE9940;
  v13[1] = v9;
  v13[2] = 0;
  v13[3] = 0;
  return sub_1C2CE9948(&v16, v15);
}

uint64_t sub_1C2CE635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = sub_1C2E72974();
  v5[7] = swift_task_alloc();
  v6 = sub_1C2E729E4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_1C2E72A04();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_1C2E72A24();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2CE6534, 0, 0);
}

uint64_t sub_1C2CE6534()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v23 = v0[19];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];
  v7 = CNContact.handleStrings.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *v1 = v8;
  v9 = *(v4 + 104);
  v22 = v1;
  v9(v1, *MEMORY[0x1E699C000], v6);
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1F4297490;
  *v5 = v10;
  v9(v5, *MEMORY[0x1E699C010], v6);
  sub_1C2E72A14();
  v11 = *(v4 + 8);
  v0[21] = v11;
  v0[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v6);
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F42974B8;
  *v5 = v12;
  v9(v5, *MEMORY[0x1E699C008], v6);
  sub_1C2E72A14();
  v11(v5, v6);
  v11(v3, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1F42974E0;
  *v3 = v13;
  v9(v3, *MEMORY[0x1E699BFF8], v6);
  sub_1C2E72A14();
  v11(v3, v6);
  v11(v2, v6);
  v11(v22, v6);
  (*(v4 + 32))(v22, v23, v6);
  (*(v4 + 16))(v23, v22, v6);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E360, &qword_1C2E7C880) + 48);
  v15 = *MEMORY[0x1E699BF50];
  v16 = sub_1C2E72984();
  (*(*(v16 - 8) + 104))(v24, v15, v16);
  v17 = *MEMORY[0x1E699BF60];
  v18 = sub_1C2E72994();
  (*(*(v18 - 8) + 104))(v24 + v14, v17, v18);
  (*(v25 + 104))(v24, *MEMORY[0x1E699BFB8], v26);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1C2CE9564(&qword_1EC05E368, 255, MEMORY[0x1E699BF10], MEMORY[0x1E699BF18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E370, &qword_1C2E7C888);
  sub_1C2C94F38(&qword_1EC05E378, &qword_1EC05E370, &qword_1C2E7C888, MEMORY[0x1E69E6328]);
  sub_1C2E76464();
  sub_1C2E729F4();
  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_1C2CE69F8;
  v20 = v0[13];

  return MEMORY[0x1EEE03BF8](v20);
}

uint64_t sub_1C2CE69F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1C2CE6F84;
  }

  else
  {
    v4 = sub_1C2CE6B0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C2CE6B0C()
{
  v25 = v0;
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2E72B44();
  __swift_project_value_buffer(v1, qword_1EC075B88);

  v2 = sub_1C2E72B24();
  v3 = sub_1C2E75FE4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = sub_1C2E72964();
    v8 = MEMORY[0x1C69267B0](v4, v7);
    v10 = sub_1C2E43AC0(v8, v9, &v24);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1C2C6B000, v2, v3, "CommunicationDetails: Fetched video messages: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1C6927DF0](v6, -1, -1);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  v11 = v0[24];
  if (v11 >> 62)
  {
    v12 = sub_1C2E764E4();
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_15:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_7:
  v24 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C2E76634();
  if (v12 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v16 = 0;
  v17 = v0[24] + 32;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1C6927010](v16, v0[24]);
    }

    else
    {
      v18 = *(v17 + 8 * v16);
    }

    ++v16;
    sub_1C2CE9C88(v18);
    sub_1C2E76614();
    sub_1C2E76644();
    sub_1C2E76654();
    sub_1C2E76624();
  }

  while (v12 != v16);

  v19 = v24;
LABEL_16:
  v0[26] = v19;
  sub_1C2E75E34();
  v0[27] = sub_1C2E75E24();
  v20 = sub_1C2E75DD4();
  v22 = v21;
  v13 = sub_1C2CE6DD4;
  v14 = v20;
  v15 = v22;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C2CE6DD4()
{
  v1 = *(v0 + 208);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 24) = v1;

  sub_1C2E72E74();

  return MEMORY[0x1EEE6DFA0](sub_1C2CE6E94, 0, 0);
}

uint64_t sub_1C2CE6E94()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C2CE6F84()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1(v2, v3);
  if (qword_1EC05CFE8 != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v5 = sub_1C2E72B44();
  __swift_project_value_buffer(v5, qword_1EC075B88);
  v6 = v4;
  v7 = sub_1C2E72B24();
  v8 = sub_1C2E75FE4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1C2C6B000, v7, v8, "CommunicationDetails: trying to fetch all video messages, but hitting error: %@", v11, 0xCu);
    sub_1C2C73644(v12, &unk_1EC062DD0, &qword_1C2E7C890);
    MEMORY[0x1C6927DF0](v12, -1, -1);
    MEMORY[0x1C6927DF0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C2CE71B0()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI43CommunicationDetailsVideoMessagingViewModel__messageViewModels;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F098, &qword_1C2E7E6E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2CE7268@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CommunicationDetailsVideoMessagingViewModel(0);
  result = sub_1C2E72DC4();
  *a2 = result;
  return result;
}

uint64_t sub_1C2CE72A8()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_id;
  v2 = sub_1C2E718A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_imageURL, &unk_1EC061C20, &qword_1C2E83530);

  sub_1C2C77608(*(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage), *(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage + 8), *(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage + 16));

  sub_1C2CC2678(*(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration + 8));
  return v0;
}

uint64_t sub_1C2CE73A0()
{
  sub_1C2CE72A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C2CE73F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_id;
  v5 = sub_1C2E718A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C2CE7474@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v205 = a1;
  v3 = sub_1C2E718A4();
  v196 = *(v3 - 8);
  v197 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v195 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for ContactAvatarTileView.Caption(0);
  *&v215 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v6 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v207 = &v166 - v8;
  v209 = sub_1C2E746A4();
  v214 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  *&v208 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1C2E757E4();
  v200 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  *&v202 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v166 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v166 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v166 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0, &qword_1C2E7EA00);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v189 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v23);
  *&v211 = &v166 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v210 = &v166 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v166 - v28;
  v30 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContactAvatarTileView(0);
  v203 = *(v33 - 8);
  v204 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v193 = (&v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20, &qword_1C2E83530);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v166 - v36;
  v38 = sub_1C2E71784();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v2;
  v41 = *v2;
  v43 = v42;
  v45 = v44;
  sub_1C2C736A4(v41 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_imageURL, v37, &unk_1EC061C20, &qword_1C2E83530);
  if ((*(v45 + 48))(v37, 1, v43) == 1)
  {
    sub_1C2C73644(v37, &unk_1EC061C20, &qword_1C2E83530);
    v46 = 1;
    v48 = v204;
    v47 = v205;
  }

  else
  {
    v170 = v6;
    (*(v45 + 32))(v40, v37, v43);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140, &qword_1C2E7EA08) + 48);
    v50 = *(v45 + 16);
    v171 = v40;
    v50(v32, v40, v43);
    v172 = v45;
    v173 = v43;
    (*(v45 + 56))(&v32[v49], 1, 1, v43);
    v190 = v32;
    swift_storeEnumTagMultiPayload();
    v168 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v175 = *MEMORY[0x1E6981DF0];
    v51 = v200;
    v52 = v201;
    v53 = *(v200 + 104);
    v176 = v200 + 104;
    v174 = v53;
    *&v212 = v41;
    v54 = v206;
    v53(v201);
    v55 = &v29[*(v213 + 48)];
    v185 = *(v51 + 16);
    v186 = v51 + 16;
    v185(v55, v52, v54);
    v56 = *MEMORY[0x1E6980EF8];
    v57 = v214;
    v58 = v208;
    v59 = v209;
    v183 = *(v214 + 104);
    v184 = v214 + 104;
    (v183)(v208, v56, v209);
    v60 = sub_1C2E74534();
    v61 = *(v60 - 8);
    v62 = v207;
    v181 = *(v61 + 56);
    v182 = v60;
    v180 = v61 + 56;
    v181(v207, 1, 1);
    sub_1C2E745A4();
    v63 = sub_1C2E745D4();
    sub_1C2C73644(v62, &qword_1EC05D810, &qword_1C2E7B9B0);
    v64 = *(v57 + 8);
    v214 = v57 + 8;
    v177 = v64;
    v64(v58, v59);
    v178 = *(v51 + 8);
    v179 = v51 + 8;
    v178(v52, v54);
    *v29 = 0;
    *(v29 + 1) = 0xE000000000000000;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v65 = v168;
    *(v29 + 4) = v168;
    *(v29 + 5) = 0;
    v29[48] = 0;
    *(v29 + 7) = 0;
    *(v29 + 8) = v63;
    v66 = MEMORY[0x1E69E7CC0];
    *(v29 + 9) = MEMORY[0x1E69E7CC0];
    *(v29 + 10) = v65;
    *(v29 + 11) = 0;
    v29[96] = 0;
    *(v29 + 13) = v63;
    v67 = *(v215 + 56);
    v191 = v29;
    *&v215 = v215 + 56;
    v188 = v67;
    v67(v29, 0, 1, v213);
    v68 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_subtitleLabelText + 8);
    v167 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_subtitleLabelText);
    v69 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage);
    v70 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage + 8);
    v71 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage + 16);
    v169 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImageColor);
    v72 = v198;
    v174(v198, v175, v54);
    v232[0] = v69;
    v232[1] = v70;
    v233 = v71;

    v168 = v68;

    sub_1C2C70B1C(v69, v70, v71);
    v73 = v72;
    if (v71 == 255)
    {
      v78 = v199;
      v76 = v170;
    }

    else
    {
      sub_1C2C70B1C(v69, v70, v71);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1C2C70B44(0, *(v66 + 2) + 1, 1, v66);
      }

      v75 = *(v66 + 2);
      v74 = *(v66 + 3);
      v76 = v170;
      if (v75 >= v74 >> 1)
      {
        v66 = sub_1C2C70B44((v74 > 1), v75 + 1, 1, v66);
      }

      *(v66 + 2) = v75 + 1;
      v77 = &v66[24 * v75];
      *(v77 + 4) = v69;
      *(v77 + 5) = v70;
      v77[48] = v71;
      v78 = v199;
    }

    sub_1C2C73644(v232, &qword_1EC05F148, &qword_1C2E7EA10);
    v79 = v187;
    v80 = v206;
    v81 = v185;
    v185(v187, v73, v206);
    sub_1C2E74FA4();
    v166 = sub_1C2E74F74();

    v81(v78, v79, v80);
    v82 = v208;
    LODWORD(v170) = *MEMORY[0x1E6980EF0];
    v83 = v209;
    v183(v208);
    v84 = v207;
    (v181)(v207, 1, 1, v182);
    v85 = v169;

    sub_1C2E74594();
    v86 = sub_1C2E745D4();
    sub_1C2C73644(v84, &qword_1EC05D810, &qword_1C2E7B9B0);
    v177(v82, v83);
    v87 = v79;
    v88 = v178;
    v178(v87, v80);
    v88(v198, v80);
    v89 = v166;
    v90 = v168;
    *v76 = v167;
    *(v76 + 8) = v90;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    *(v76 + 32) = v89;
    *(v76 + 40) = 0;
    *(v76 + 48) = 0;
    *(v76 + 56) = 0;
    *(v76 + 64) = v86;
    *(v76 + 72) = v66;
    if (!v85)
    {
    }

    *(v76 + 80) = v85;
    *(v76 + 88) = 0;
    *(v76 + 96) = 0;
    *(v76 + 104) = v86;
    v91 = v213;
    (*(v200 + 32))(v76 + *(v213 + 48), v199, v80);
    v92 = v210;
    sub_1C2CEA634(v76, v210, type metadata accessor for ContactAvatarTileView.Caption);
    v93 = v92;
    v94 = v188;
    v188(v93, 0, 1, v91);
    v94(v211, 1, 1, v91);
    v95 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_detailLabelText + 8);
    v199 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_detailLabelText);
    v174(v202, v175, v80);
    v96 = byte_1F4297538;

    v200 = v95;

    if (v96 == 255)
    {
      v198 = MEMORY[0x1E69E7CC0];
      v101 = v201;
    }

    else
    {
      v97 = qword_1F4297528;
      v98 = qword_1F4297530;
      sub_1C2C70B1C(qword_1F4297528, qword_1F4297530, v96);
      v99 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v201;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v99 = sub_1C2C70B44(0, *(v99 + 2) + 1, 1, v99);
      }

      v103 = *(v99 + 2);
      v102 = *(v99 + 3);
      if (v103 >= v102 >> 1)
      {
        v99 = sub_1C2C70B44((v102 > 1), v103 + 1, 1, v99);
      }

      v198 = v99;
      *(v99 + 2) = v103 + 1;
      v104 = &v99[24 * v103];
      *(v104 + 4) = v97;
      *(v104 + 5) = v98;
      v104[48] = v96;
      v80 = v206;
      v84 = v207;
    }

    sub_1C2C73644(&qword_1F4297528, &qword_1EC05F148, &qword_1C2E7EA10);
    v105 = v202;
    v106 = v185;
    v185(v101, v202, v80);
    sub_1C2E74FA4();
    v207 = sub_1C2E74F74();

    v107 = v213;
    v108 = v192;
    v106(&v192[*(v213 + 48)], v101, v80);
    v109 = v101;
    v110 = v208;
    v111 = v209;
    (v183)(v208, v170, v209);
    (v181)(v84, 1, 1, v182);
    sub_1C2E74594();
    v112 = sub_1C2E745D4();
    sub_1C2C73644(v84, &qword_1EC05D810, &qword_1C2E7B9B0);
    v177(v110, v111);
    v113 = v178;
    v178(v109, v80);
    v113(v105, v80);
    v114 = v200;
    *v108 = v199;
    *(v108 + 8) = v114;
    *(v108 + 16) = 0;
    *(v108 + 24) = 0;
    v115 = v207;
    *(v108 + 32) = v207;
    *(v108 + 40) = 0;
    *(v108 + 48) = 0;
    *(v108 + 56) = 0;
    *(v108 + 64) = v112;
    *(v108 + 72) = v198;
    *(v108 + 80) = v115;
    *(v108 + 88) = 0;
    *(v108 + 96) = 0;
    *(v108 + 104) = v112;
    v116 = v188;
    v188(v108, 0, 1, v107);
    v117 = v107;
    v118 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration);
    v119 = *(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration + 8);
    LODWORD(v214) = v119 | (*(v212 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration + 9) << 8);
    LODWORD(v107) = v119;
    v209 = type metadata accessor for ContactPosterOrAvatarTileState(0);
    v234 = 0u;
    v235 = 0u;
    v236 = 0;
    v120 = swift_allocObject();
    v121 = v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
    *v121 = 0;
    *(v121 + 8) = 768;
    v116(v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__primaryCaption, 1, 1, v117);
    v116(v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__secondaryCaption, 1, 1, v117);
    v116(v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__bodyCaption, 1, 1, v117);
    v116(v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__detailCaption, 1, 1, v117);
    v122 = v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
    *v122 = 0u;
    *(v122 + 16) = 0u;
    *(v122 + 32) = 0;
    v213 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;

    sub_1C2CC290C(v118, v107);
    sub_1C2E71A94();
    sub_1C2CEA50C(v190, v120 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle);
    v123 = v189;
    sub_1C2C736A4(v191, v189, &qword_1EC05E0F0, &qword_1C2E7EA00);
    ContactPosterOrAvatarTileState.primaryCaption.setter(v123);
    sub_1C2C736A4(v210, v123, &qword_1EC05E0F0, &qword_1C2E7EA00);
    ContactPosterOrAvatarTileState.secondaryCaption.setter(v123);
    sub_1C2C736A4(v211, v123, &qword_1EC05E0F0, &qword_1C2E7EA00);
    ContactPosterOrAvatarTileState.bodyCaption.setter(v123);
    KeyPath = swift_getKeyPath();
    *&v208 = &v166;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v166 - 4) = v120;
    *(&v166 - 3) = v118;
    *(&v166 - 8) = v214;
    v230 = v120;
    LODWORD(v206) = v107;
    sub_1C2CC290C(v118, v107);
    *&v215 = type metadata accessor for ContactPosterOrAvatarTileState;
    v207 = sub_1C2CE9564(&qword_1EC05BCA8, 255, type metadata accessor for ContactPosterOrAvatarTileState, &protocol conformance descriptor for ContactPosterOrAvatarTileState);
    sub_1C2E71A54();
    sub_1C2CC2678(v118, v107);

    sub_1C2C736A4(v108, v123, &qword_1EC05E0F0, &qword_1C2E7EA00);
    ContactPosterOrAvatarTileState.detailCaption.setter(v123);
    v125 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v125);
    *(&v166 - 4) = v120;
    *(&v166 - 3) = v118;
    *(&v166 - 8) = v214;
    v230 = v120;
    sub_1C2E71A54();
    sub_1C2CC2678(v118, v206);

    sub_1C2C736A4(&v234, &v230, &unk_1EC061C40, &qword_1C2E7EA40);
    v126 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v126);
    *(&v166 - 2) = v120;
    *(&v166 - 1) = &v230;
    v216 = v120;
    sub_1C2E71A54();

    sub_1C2C73644(&v234, &unk_1EC061C40, &qword_1C2E7EA40);
    sub_1C2C73644(v108, &qword_1EC05E0F0, &qword_1C2E7EA00);
    sub_1C2C73644(v211, &qword_1EC05E0F0, &qword_1C2E7EA00);
    sub_1C2C73644(v210, &qword_1EC05E0F0, &qword_1C2E7EA00);
    sub_1C2C73644(v191, &qword_1EC05E0F0, &qword_1C2E7EA00);
    sub_1C2C72BD4(v190);
    sub_1C2C73644(&v230, &unk_1EC061C40, &qword_1C2E7EA40);
    *(&v235 + 1) = v209;
    v236 = sub_1C2CE9564(&qword_1EC05F150, 255, v215, &protocol conformance descriptor for ContactPosterOrAvatarTileState);
    *&v234 = v120;
    v127 = v194;
    v129 = v194[2];
    v130 = v194[3];
    v230 = v194[1];
    v128 = v230;
    *&v231 = v129;
    *(&v231 + 1) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F158, &qword_1C2E7EA70);
    sub_1C2E75184();
    v131 = v216;
    v132 = v217;
    v230 = v216;
    *&v231 = v217;
    *&v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40, &unk_1C2E7AFB0);
    sub_1C2E753B4();
    sub_1C2C71668(v131, v132);
    v215 = v227;
    v213 = v229;
    v214 = v228;
    v238[0] = v130;
    v133 = v127[4];
    v134 = v127[5];
    v237 = v127[6];
    sub_1C2E75E34();

    sub_1C2C6EE50(v128, v129);
    sub_1C2C736A4(v238, &v230, &qword_1EC05F160, &qword_1C2E7EA78);
    sub_1C2C6EE50(v133, v134);
    sub_1C2C736A4(&v237, &v230, &qword_1EC05F168, &unk_1C2E7EA80);
    v135 = sub_1C2E75E24();
    v136 = swift_allocObject();
    v137 = MEMORY[0x1E69E85E0];
    *(v136 + 16) = v135;
    *(v136 + 24) = v137;
    v138 = v137;
    v139 = *(v127 + 1);
    *(v136 + 32) = *v127;
    *(v136 + 48) = v139;
    *(v136 + 64) = *(v127 + 2);
    *(v136 + 80) = v127[6];

    sub_1C2C6EE50(v128, v129);
    sub_1C2C736A4(v238, &v230, &qword_1EC05F160, &qword_1C2E7EA78);
    sub_1C2C6EE50(v133, v134);
    sub_1C2C736A4(&v237, &v230, &qword_1EC05F168, &unk_1C2E7EA80);
    v140 = sub_1C2E75E24();
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v138;
    v142 = *(v127 + 1);
    *(v141 + 32) = *v127;
    *(v141 + 48) = v142;
    *(v141 + 64) = *(v127 + 2);
    *(v141 + 80) = v127[6];
    sub_1C2E753A4();
    v212 = v224;
    v209 = v226;
    v210 = v225;
    *&v231 = 0;
    v230 = 0;
    sub_1C2E753B4();
    v208 = v221;
    v206 = v223;
    v207 = v222;
    *&v231 = 0;
    v230 = 0;
    sub_1C2E753B4();
    v211 = v218;
    v143 = v219;
    v144 = v220;
    LOBYTE(v216) = 0;
    sub_1C2E753B4();
    v145 = v230;
    v146 = v231;
    LOBYTE(v127) = BYTE8(v231);
    v216 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E100, &qword_1C2E93130);
    sub_1C2E753B4();
    v147 = v230;
    v202 = v231;
    v48 = v204;
    v148 = v204[5];
    v149 = swift_getKeyPath();
    v150 = v193;
    *(v193 + v148) = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250, &qword_1C2E7EAC0);
    swift_storeEnumTagMultiPayload();
    v151 = v48[14];
    *(v150 + v151) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58, &unk_1C2E7A920);
    swift_storeEnumTagMultiPayload();
    sub_1C2C6E3A4(&v234, &v230);
    sub_1C2C6E3A4(&v230, &v216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E8, &unk_1C2E7C0C0);
    sub_1C2E75174();
    __swift_destroy_boxed_opaque_existential_1(&v230);
    v152 = v150 + v48[8];
    *v152 = v215;
    v153 = v213;
    *(v152 + 2) = v214;
    *(v152 + 3) = v153;
    v154 = v150 + v48[9];
    *v154 = v212;
    v155 = v209;
    *(v154 + 2) = v210;
    *(v154 + 3) = v155;
    v156 = v150 + v48[10];
    *v156 = v208;
    v157 = v206;
    *(v156 + 2) = v207;
    *(v156 + 3) = v157;
    v158 = v150 + v48[11];
    *v158 = v211;
    *(v158 + 2) = v143;
    *(v158 + 3) = v144;
    *(v150 + v48[12]) = 2;
    v159 = v150 + v48[13];
    *v159 = v145;
    *(v159 + 1) = v146;
    v159[16] = v127;
    v160 = v150 + v48[6];
    *v160 = v147;
    *(v160 + 8) = v202;
    v161 = v195;
    sub_1C2E71894();
    v162 = sub_1C2E71854();
    v164 = v163;
    (*(v196 + 8))(v161, v197);
    (*(v172 + 8))(v171, v173);
    __swift_destroy_boxed_opaque_existential_1(&v234);
    *v150 = v162;
    v150[1] = v164;
    v47 = v205;
    sub_1C2CEA634(v150, v205, type metadata accessor for ContactAvatarTileView);
    v46 = 0;
  }

  return (*(v203 + 56))(v47, v46, 1, v48);
}

void *sub_1C2CE8C7C@<X0>(void *a1@<X2>, uint64_t (**a2)()@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F170, &qword_1C2E7EAF8);
  result = sub_1C2E75184();
  v5 = v9;
  if (v9)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v9;
    *(v6 + 24) = v10;
    v7 = *(*a1 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_message);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C2CEA6CC;
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    result = v7;
    v8 = sub_1C2CEA704;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2CE8D70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C2CB1B1C;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C2CEA69C;
    *(v8 + 24) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F170, &qword_1C2E7EAF8);
  return sub_1C2E75194();
}

void sub_1C2CE8E88()
{
  v0 = sub_1C2E71934();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v5 = objc_opt_self();
  v6 = sub_1C2E75C24();
  sub_1C2E718F4();
  v7 = sub_1C2E718D4();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  qword_1EC075AD8 = v4;
}

id sub_1C2CE8FEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_1EC075AE0 = v0;
  return result;
}

void sub_1C2CE909C(uint64_t a1)
{
  sub_1C2CE9138(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C2CE9138(uint64_t a1)
{
  if (!qword_1EC05F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F038, &unk_1C2E7E370);
    v1 = sub_1C2E72E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05F030);
    }
  }
}

void sub_1C2CE91C4(uint64_t a1)
{
  sub_1C2E718A4();
  if (v1 <= 0x3F)
  {
    sub_1C2CE92C4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C2CE92C4(uint64_t a1)
{
  if (!qword_1EC05CA40)
  {
    sub_1C2E71784();
    v1 = sub_1C2E76424();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CA40);
    }
  }
}

unint64_t sub_1C2CE9374()
{
  result = qword_1EC05F060;
  if (!qword_1EC05F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F060);
  }

  return result;
}

unint64_t sub_1C2CE93CC()
{
  result = qword_1EC05F068;
  if (!qword_1EC05F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F068);
  }

  return result;
}

unint64_t sub_1C2CE9424()
{
  result = qword_1EC05F070;
  if (!qword_1EC05F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F070);
  }

  return result;
}

unint64_t sub_1C2CE947C()
{
  result = qword_1EC05F078;
  if (!qword_1EC05F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F078);
  }

  return result;
}

uint64_t sub_1C2CE9564(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2CE95B0()
{
  result = qword_1EC05F088;
  if (!qword_1EC05F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F088);
  }

  return result;
}

void sub_1C2CE9604(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C2E72E64();

  *a2 = v3;
}

uint64_t sub_1C2CE9684(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C2E72E74();
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

uint64_t sub_1C2CE9728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1C2CE9770(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1C2CE97FC()
{
  result = qword_1EC05F0A8;
  if (!qword_1EC05F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F0A0, &qword_1C2E7E870);
    sub_1C2CE9888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F0A8);
  }

  return result;
}

unint64_t sub_1C2CE9888()
{
  result = qword_1EC05F0B0;
  if (!qword_1EC05F0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F0B8, &qword_1C2E7E878);
    sub_1C2C94F38(&qword_1EC05F0C0, &qword_1EC05F0C8, &qword_1C2E7E880, MEMORY[0x1E697D7B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F0B0);
  }

  return result;
}

uint64_t sub_1C2CE9980(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2C7DC10;

  return sub_1C2CE635C(a1, v4, v5, v7, v6);
}

__n128 sub_1C2CE9A40@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40, &unk_1C2E7AFB0);
  sub_1C2E75174();
  if (a4)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F118, &qword_1C2E7E8F0);
  sub_1C2E75174();
  result = v15;
  *a6 = a1;
  *(a6 + 8) = v15;
  *(a6 + 24) = v16;
  *(a6 + 32) = v15;
  *(a6 + 48) = v16;
  return result;
}

void sub_1C2CE9B74()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetWidth(v10);
  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  CGRectGetHeight(v11);
  v9 = [objc_opt_self() currentDevice];
  [v9 userInterfaceIdiom];
}

void sub_1C2CE9C88(uint64_t a1)
{
  v2 = sub_1C2E71784();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20, &qword_1C2E83530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = sub_1C2E71844();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E72954();
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v40 = v3;
  v41 = v2;
  v17 = v16 / 60;
  v18 = v16 % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90, &unk_1C2E7B240);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C2E7A110;
  v20 = MEMORY[0x1E69E6530];
  v21 = MEMORY[0x1E69E65A8];
  *(v19 + 56) = MEMORY[0x1E69E6530];
  *(v19 + 64) = v21;
  *(v19 + 32) = v17;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v18;
  v22 = sub_1C2E75C74();
  v38 = v23;
  v39 = v22;
  sub_1C2E72904();
  v24 = static Date.faceTimeDateString(from:showToday:)(v15, 0);
  v36 = v25;
  v37 = v24;
  (*(v13 + 8))(v15, v12);
  sub_1C2E72924();
  sub_1C2E72914();
  if (sub_1C2E72934())
  {
    v26 = 0;
    v27 = 0xE90000000000006CLL;
    v28 = 0x6C69662E79616C70;
  }

  else
  {
    v26 = sub_1C2E74F54();
    v27 = 0xEB000000006C6C69;
    v28 = 0x662E656C63726963;
  }

  sub_1C2C736A4(v11, v8, &unk_1EC061C20, &qword_1C2E83530);
  type metadata accessor for VideoMessageCellViewModel(0);
  v29 = swift_allocObject();
  sub_1C2E71894();
  (*(v40 + 8))(v5, v41);
  sub_1C2C73644(v11, &unk_1EC061C20, &qword_1C2E83530);
  sub_1C2CEA0A0(v8, v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_imageURL);
  *(v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_message) = a1;
  v30 = (v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_subtitleLabelText);
  v31 = v38;
  *v30 = v39;
  v30[1] = v31;
  v32 = (v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_detailLabelText);
  v33 = v36;
  *v32 = v37;
  v32[1] = v33;
  v34 = v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImage;
  *v34 = v28;
  *(v34 + 8) = v27;
  *(v34 + 16) = 1;
  *(v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_secondaryAccessoryImageColor) = v26;
  v35 = v29 + OBJC_IVAR____TtC16CommunicationsUI25VideoMessageCellViewModel_buttonConfiguration;
  *v35 = 4;
  *(v35 + 8) = 64;
}

uint64_t sub_1C2CEA0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20, &qword_1C2E83530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2CEA118()
{
  result = qword_1EC05F0F0;
  if (!qword_1EC05F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F0E8, &qword_1C2E7E8B8);
    sub_1C2CEA19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F0F0);
  }

  return result;
}

unint64_t sub_1C2CEA19C()
{
  result = qword_1EC05F0F8;
  if (!qword_1EC05F0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F100, &qword_1C2E7E8C0);
    sub_1C2CEA228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F0F8);
  }

  return result;
}

unint64_t sub_1C2CEA228()
{
  result = qword_1EC05F108;
  if (!qword_1EC05F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F108);
  }

  return result;
}

uint64_t sub_1C2CEA2B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C2CEA2F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C2CEA354()
{
  result = qword_1EC05F120;
  if (!qword_1EC05F120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F0D8, &unk_1C2E7E890);
    sub_1C2CEA3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F120);
  }

  return result;
}

unint64_t sub_1C2CEA3E0()
{
  result = qword_1EC05F128;
  if (!qword_1EC05F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F0D0, &qword_1C2E7E888);
    sub_1C2CEA498();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8, &qword_1C2E7E9A0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F128);
  }

  return result;
}

unint64_t sub_1C2CEA498()
{
  result = qword_1EC05F130;
  if (!qword_1EC05F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F138, &qword_1C2E7E998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F130);
  }

  return result;
}

uint64_t sub_1C2CEA50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C2CEA634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2CEA69C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1C2CEA6CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1C2CEA734()
{
  result = qword_1EC05F178;
  if (!qword_1EC05F178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F180, &unk_1C2E7EB00);
    sub_1C2CE9564(&qword_1EC05F188, 255, type metadata accessor for ContactAvatarTileView, &protocol conformance descriptor for ContactAvatarTileView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F178);
  }

  return result;
}

uint64_t sub_1C2CEA828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C2E715A4();
  MEMORY[0x1EEE9AC00](v5);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v6 = *(v2 + 32);
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v12 = a1;
    sub_1C2E715C4();
    goto LABEL_8;
  }

  v16 = a2;
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 24);
  v15 = v6;
  if ((v9(a1, v6, ObjectType, v7) & 1) == 0)
  {
    swift_unknownObjectRelease();

    a2 = v16;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F240, &qword_1C2E7ECD0);
  *(swift_allocObject() + 16) = xmmword_1C2E7A930;
  v10 = a1;
  sub_1C2E71584();
  sub_1C2CEF85C(&qword_1EC05F248, 255, MEMORY[0x1E695D010], MEMORY[0x1E695D020]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F250, &qword_1C2E7ECD8);
  sub_1C2C94F38(&qword_1EC05F258, &qword_1EC05F250, &qword_1C2E7ECD8, MEMORY[0x1E69E6328]);
  sub_1C2E76464();
  sub_1C2CEF85C(&unk_1EC05F260, v11, type metadata accessor for CommunicationDetailsActionsProvider, &unk_1C2E7EC54);
  swift_unknownObjectRetain();
  a2 = v16;
  sub_1C2E715B4();
  swift_unknownObjectRelease();

LABEL_8:
  v13 = sub_1C2E715D4();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

id static CommunicationDetailsViewController.getBlockUnblockDisplayName(for:)(void *a1)
{
  if ([a1 type] != 2)
  {
    goto LABEL_10;
  }

  result = [a1 value];
  if (result)
  {
    v3 = result;
    v4 = PNCopyBestGuessCountryCodeForNumber();

    if (!v4)
    {
      goto LABEL_10;
    }

    result = [a1 value];
    if (result)
    {
      v5 = result;
      v6 = CFPhoneNumberCreate();

      if (v6)
      {
        String = CFPhoneNumberCreateString();
        if (String)
        {
          v8 = String;
          v9 = sub_1C2E75C64();

LABEL_11:
          return v9;
        }
      }

LABEL_10:
      v4 = [a1 value];
      v9 = sub_1C2E75C64();
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2CEAC3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    return 0;
  }

  while (1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = *(v5 + 32);
    if (!v10)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v11 = *(v5 + 24);
    if (v7)
    {
      v12 = sub_1C2E764E4();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v10;
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {
        swift_unknownObjectRelease();

        return 0;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C6927010](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(a1 + 8 * i + 32);
      }

      v7 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v5 = (*(v11 + 24))(v7, v10, ObjectType, v11);

      if (v5)
      {
        v16 = swift_allocObject();
        v16[2] = v9;
        v16[3] = v11;
        v16[4] = v17;
        sub_1C2E72424();
        swift_allocObject();

        return sub_1C2E72414();
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (sub_1C2E764E4() < 2)
    {
      return 0;
    }
  }
}

uint64_t CommunicationDetailsAppType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

id sub_1C2CEAF00(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0641C0, &unk_1C2E7ECF0);
  v4 = sub_1C2E75D64();
  v5 = [v15 areKeysAvailable_];

  if (v5)
  {

    return v15;
  }

  else
  {
    v17 = a1;

    if ([v15 availableKeyDescriptor])
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x1C6926780](v7);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      swift_unknownObjectRelease();
    }

    v8 = [v15 identifier];
    if (!v8)
    {
      sub_1C2E75C64();
      v8 = sub_1C2E75C24();
    }

    v9 = sub_1C2E75D64();
    v16 = 0;
    v10 = [a2 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v16];

    if (v10)
    {
      v11 = v16;
    }

    else
    {
      v12 = v16;
      v13 = sub_1C2E716D4();

      swift_willThrow();
      v11 = v15;
      v10 = v15;
    }

    v14 = v11;

    return v10;
  }
}

void sub_1C2CEB178(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v6 = sub_1C2E71574();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_1C2E718A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v55) = 0;
  sub_1C2E75174();
  v17 = *(&v52 + 1);
  *(a5 + 80) = v52;
  *(a5 + 88) = v17;
  v55 = 0;
  sub_1C2E75174();
  v18 = *(&v52 + 1);
  *(a5 + 96) = v52;
  *(a5 + 104) = v18;
  sub_1C2E71894();
  v19 = sub_1C2E71854();
  v21 = v20;
  (*(v14 + 8))(v16, v13);
  v55 = v19;
  v56 = v21;
  sub_1C2E75174();
  v22 = v53;
  *(a5 + 112) = v52;
  *(a5 + 128) = v22;
  type metadata accessor for CommunicationDetailsContactsTabView(0);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  LOBYTE(v45) = 0;
  sub_1C2E71554();
  (*(v7 + 16))(v9, v12, v6);
  sub_1C2E75174();
  (*(v7 + 8))(v12, v6);
  *(a5 + 8) = 1;
  v23 = v48;
  *a5 = v47;
  *(a5 + 72) = v23;
  v24 = v49 & 1;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v25 = v50;
  *(a5 + 16) = v50;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F210, &qword_1C2E7D230);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v29 = v25;

  sub_1C2E71A94();
  v27[2] = sub_1C2CEF78C;
  v27[3] = v26;
  v30 = (v27 + *(*v27 + 112));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0, &qword_1C2E7D490) + 44);

  sub_1C2CC964C(&v52, 0, v30 + v31);

  *v30 = v28;
  v30[1] = 0;
  v55 = v27;
  sub_1C2E75174();
  v32 = v52;
  *(a5 + 56) = v52;
  v52 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220, &unk_1C2E7D380);
  sub_1C2E75184();
  v33 = v55;
  v34 = sub_1C2E71C74();
  v55 = v34;
  v56 = v25;
  v35 = v33 + *(*v33 + 112);
  swift_beginAccess();
  v36 = *(v35 + 8);
  v37 = v36;
  v38 = v29;

  if (sub_1C2CF6DEC(v39, v34))
  {
    if (v36)
    {
      if (v25)
      {
        sub_1C2C6E1B4(0, &qword_1EC05E6A0, 0x1E6993590);
        v40 = v38;
        v41 = v37;
        v42 = sub_1C2E76234();

        if (v42)
        {

          return;
        }

        goto LABEL_8;
      }
    }

    else if (!v25)
    {

      return;
    }
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v43);
  *(&v47 - 4) = &type metadata for CommunicationDetailsContactsTabView.Configuration;
  *(&v47 - 3) = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  sub_1C2CD8150();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v45 = v33;
  v46 = &v55;
  v51 = v33;
  sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210, &qword_1C2E7D230, &unk_1C2E7CECC);
  sub_1C2E71A54();
}

uint64_t sub_1C2CEB7A8()
{
  if (sub_1C2CECAD0())
  {
    v1 = [objc_opt_self() stringFromContact:v0 style:0];
    if (v1)
    {
      v2 = v1;
      sub_1C2E75C64();
    }

    [v0 mutableCopy];
    sub_1C2E76444();
    swift_unknownObjectRelease();
    sub_1C2C6E1B4(0, &unk_1EC05F1A0, 0x1E695CF18);
    swift_dynamicCast();
    v5 = sub_1C2E75C24();
    [v7 setGivenName_];

    v6 = sub_1C2E75C24();
    [v7 setFamilyName_];

    return sub_1C2E71D24();
  }

  else
  {
    v3 = v0;
    return sub_1C2E71D44();
  }
}

void sub_1C2CEB910(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v53 = a6;
  v54 = a2;
  LODWORD(v52) = a3;
  v51 = a1;
  v9 = sub_1C2E71574();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1C2E718A4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationDetailsActionsProvider();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 24) = a5;
  swift_unknownObjectWeakAssign();
  v20 = v54;
  *(v19 + 32) = v54;
  LOBYTE(v59) = 0;
  v50 = v20;
  sub_1C2E75174();
  v21 = *(&v56 + 1);
  *(a7 + 80) = v56;
  *(a7 + 88) = v21;
  v59 = 0;
  sub_1C2E75174();
  v22 = *(&v56 + 1);
  *(a7 + 96) = v56;
  *(a7 + 104) = v22;
  sub_1C2E71894();
  v23 = sub_1C2E71854();
  v25 = v24;
  (*(v16 + 8))(v18, v15);
  v59 = v23;
  v60 = v25;
  sub_1C2E75174();
  v26 = v57;
  *(a7 + 112) = v56;
  *(a7 + 128) = v26;
  type metadata accessor for CommunicationDetailsContactsTabView(0);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  LOBYTE(v47) = 0;
  sub_1C2E71554();
  (*(v10 + 16))(v49, v14, v9);
  sub_1C2E75174();
  (*(v10 + 8))(v14, v9);
  *(a7 + 8) = 0;
  *a7 = v51;
  v27 = v54;
  *(a7 + 72) = v53;
  v28 = v52 & 1;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 16) = v27;
  *(a7 + 40) = v28;
  *(a7 + 48) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F210, &qword_1C2E7D230);
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v52 = v50;

  sub_1C2E71A94();
  v30[2] = sub_1C2CEF8BC;
  v30[3] = v29;
  v32 = (v30 + *(*v30 + 112));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0, &qword_1C2E7D490) + 44);

  sub_1C2CC964C(&v56, v19, v32 + v33);

  *v32 = v31;
  v32[1] = 0;
  v59 = v30;
  sub_1C2E75174();
  v34 = v56;
  *(a7 + 56) = v56;
  v56 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220, &unk_1C2E7D380);
  sub_1C2E75184();
  v35 = v59;
  v36 = sub_1C2E71C74();
  v59 = v36;
  v60 = v27;
  v37 = v35 + *(*v35 + 112);
  swift_beginAccess();
  v38 = *(v37 + 8);
  v39 = v38;
  v40 = v52;

  if ((sub_1C2CF6DEC(v41, v36) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v38)
  {
    if (!v27)
    {

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!v27)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1C2C6E1B4(0, &qword_1EC05E6A0, 0x1E6993590);
  v42 = v40;
  v43 = v39;
  v44 = sub_1C2E76234();

  if (v44)
  {

LABEL_11:

    return;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v45);
  *(&v49 - 4) = &type metadata for CommunicationDetailsContactsTabView.Configuration;
  *(&v49 - 3) = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  sub_1C2CD8150();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v47 = v35;
  v48 = &v59;
  v55 = v35;
  sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210, &qword_1C2E7D230, &unk_1C2E7CECC);
  sub_1C2E71A54();
}

uint64_t sub_1C2CEBFAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for CommunicationDetailsVoiceMailViewModel(0);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2F8, &unk_1C2E7ECE0);
  sub_1C2E72E54();
  *(v12 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel____lazy_storage___messageStoreController) = 0;
  *(v12 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel_contact) = a3;
  *(v12 + OBJC_IVAR____TtC16CommunicationsUI38CommunicationDetailsVoiceMailViewModel_appType) = a2 & 1;
  sub_1C2CEF85C(&qword_1EC05F270, 255, type metadata accessor for CommunicationDetailsVoiceMailViewModel, &unk_1C2E7C738);
  v13 = a3;
  v14 = sub_1C2E73474();
  *a6 = a1;
  a6[1] = v14;
  a6[2] = v15;
  a6[3] = a4;
  a6[4] = a5;

  return sub_1C2C6EE50(a4, a5);
}

uint64_t sub_1C2CEC0F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1C2E75174();
  *a7 = sub_1C2CE58B8;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = a2;
  *(a7 + 32) = a1;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  *(a7 + 72) = v16;
  *(a7 + 80) = v17;
  *(a7 + 88) = 0x4020000000000000;
  v14 = a2;

  sub_1C2C6EE50(a3, a4);
  return sub_1C2C6EE50(a5, a6);
}

id sub_1C2CEC1C8(void *a1, char *a2, uint64_t a3, unint64_t a4, char *a5, void *a6, uint64_t a7, uint64_t (*a8)(void, void, void), char a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C2E7A720;
  *(v17 + 32) = a1;
  if (!a2)
  {
    v28 = a1;
LABEL_16:
    v33 = a9 & 1;
    v29 = sub_1C2CECFBC(v17, a2, a3, a4, a5, a6, a7, a8, &v33, 0, 0);

    return v29;
  }

  v32 = a8;
  v18 = a1;
  v19 = [a2 initiator];
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v31 = a7;
  if ([v19 type] != 2)
  {
    goto LABEL_14;
  }

  result = [v20 value];
  if (result)
  {
    v22 = result;
    v23 = PNCopyBestGuessCountryCodeForNumber();

    v30 = v23;
    if (!v23)
    {
      goto LABEL_14;
    }

    result = [v20 value];
    if (result)
    {
      v24 = result;
      v25 = CFPhoneNumberCreate();

      if (v25)
      {
        String = CFPhoneNumberCreateString();
        if (String)
        {
          v27 = String;
          sub_1C2E75C64();

          v20 = v30;
LABEL_15:

          a7 = v31;
          a8 = v32;
          goto LABEL_16;
        }
      }

LABEL_14:
      v25 = [v20 value];
      sub_1C2E75C64();
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C2CEC3FC(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  LODWORD(v60) = a5;
  v58 = a3;
  v59 = a4;
  v57 = a1;
  v55 = a6;
  v56 = a9;
  v12 = sub_1C2E71574();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_1C2E718A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommunicationDetailsActionsProvider();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 24) = a7;
  swift_unknownObjectWeakAssign();
  v53 = a2;
  *(v22 + 32) = a2;
  LOBYTE(v65) = 0;
  v55 = a2;
  sub_1C2E75174();
  v23 = *(&v62 + 1);
  *(a8 + 80) = v62;
  *(a8 + 88) = v23;
  v65 = 0;
  sub_1C2E75174();
  v24 = *(&v62 + 1);
  *(a8 + 96) = v62;
  *(a8 + 104) = v24;
  sub_1C2E71894();
  v25 = sub_1C2E71854();
  v27 = v26;
  (*(v19 + 8))(v21, v18);
  v65 = v25;
  v66 = v27;
  sub_1C2E75174();
  v28 = v63;
  *(a8 + 112) = v62;
  *(a8 + 128) = v28;
  type metadata accessor for CommunicationDetailsContactsTabView(0);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  LOBYTE(v51) = 0;
  sub_1C2E71554();
  (*(v13 + 16))(v54, v17, v12);
  sub_1C2E75174();
  (*(v13 + 8))(v17, v12);
  *(a8 + 8) = 0;
  v29 = v56;
  *a8 = v57;
  *(a8 + 72) = v29;
  v30 = v53;
  v31 = v58;
  v32 = v59;
  *(a8 + 16) = v53;
  *(a8 + 24) = v31;
  *(a8 + 32) = v32;
  *(a8 + 40) = v60 & 1;
  *(a8 + 48) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F210, &qword_1C2E7D230);
  v34 = swift_allocObject();
  v62 = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v60 = v55;

  sub_1C2E71A94();
  v34[2] = sub_1C2CEF8BC;
  v34[3] = v33;
  v35 = (v34 + *(*v34 + 112));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0, &qword_1C2E7D490) + 44);

  sub_1C2CC964C(&v62, v22, v35 + v36);

  *v35 = MEMORY[0x1E69E7CC0];
  v35[1] = 0;
  v37 = v30;
  v65 = v34;
  sub_1C2E75174();
  v38 = v62;
  *(a8 + 56) = v62;
  v62 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F220, &unk_1C2E7D380);
  sub_1C2E75184();
  v39 = v65;
  v40 = sub_1C2E71C74();
  v65 = v40;
  v66 = v30;
  v41 = v39 + *(*v39 + 112);
  swift_beginAccess();
  v42 = *(v41 + 8);
  v43 = v42;
  v44 = v60;

  if ((sub_1C2CF6DEC(v45, v40) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v42)
  {
    if (!v37)
    {

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!v37)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1C2C6E1B4(0, &qword_1EC05E6A0, 0x1E6993590);
  v46 = v44;
  v47 = v43;
  v48 = sub_1C2E76234();

  if (v48)
  {

LABEL_11:

    return;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v49);
  *(&v53 - 4) = &type metadata for CommunicationDetailsContactsTabView.Configuration;
  *(&v53 - 3) = type metadata accessor for CommunicationDetailsContactsTabView.MemoizedState(0);
  sub_1C2CD8150();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v51 = v39;
  v52 = &v65;
  v61 = v39;
  sub_1C2C94F38(&unk_1EC05F230, &unk_1EC05F210, &qword_1C2E7D230, &unk_1C2E7CECC);
  sub_1C2E71A54();
}

uint64_t sub_1C2CECAD0()
{
  result = [v0 isUnknown];
  if (result)
  {
    v2 = [v0 givenName];
    v3 = sub_1C2E75C64();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return 1;
    }

    else
    {
      v7 = [v0 familyName];
      v8 = sub_1C2E75C64();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      return v11 != 0;
    }
  }

  return result;
}

void sub_1C2CECBA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C2E715A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v2 + 32);
    if (v13)
    {
      v21[1] = Strong;
      v14 = *(v2 + 24);
      (*(v6 + 16))(v11, a1, v5);
      v15 = v13;
      sub_1C2E71594();
      sub_1C2CEF85C(&qword_1EC05F198, 255, MEMORY[0x1E695D010], MEMORY[0x1E695D018]);
      v16 = sub_1C2E75BA4();
      v17 = *(v6 + 8);
      v17(v8, v5);
      if (v16)
      {
        v17(v11, v5);
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(a2, ObjectType, v14);
      }

      else
      {
        sub_1C2E71584();
        v19 = sub_1C2E75BA4();
        v17(v8, v5);
        v17(v11, v5);
        if (v19)
        {
          v20 = swift_getObjectType();
          (*(v14 + 8))(a2, v20, v14);
          (*(v14 + 16))(v15, v20, v14);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C2CECE74()
{
  sub_1C2C93260(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C2CECEB8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0, &qword_1C2E7D490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v14 - v5 + 16);
  v8 = a2[1];
  v14[0] = *a2;
  v7 = v14[0];
  v14[1] = v8;
  v9 = a1[2];
  v10 = v8;

  v9(v14);
  *v6 = v7;
  v6[1] = v8;
  v11 = *(*a1 + 112);
  swift_beginAccess();
  sub_1C2CEF794(v6, a1 + v11);
  return swift_endAccess();
}

id sub_1C2CECFBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t *a7, uint64_t (*a8)(void, void, void), unsigned __int8 *a9, uint64_t *a10, _OWORD *a11)
{
  v255 = a7;
  v256 = a8;
  v252 = a6;
  v261 = a4;
  v262 = a5;
  v260 = a3;
  v257 = a2;
  v258 = a1;
  v259 = *a9;
  v264 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v11 = swift_allocObject();
  v11[1] = xmmword_1C2E7EB10;
  v12 = *MEMORY[0x1E695C258];
  v13 = *MEMORY[0x1E695C228];
  *(v11 + 4) = *MEMORY[0x1E695C258];
  *(v11 + 5) = v13;
  v14 = *MEMORY[0x1E695C208];
  v15 = *MEMORY[0x1E695C330];
  *(v11 + 6) = *MEMORY[0x1E695C208];
  *(v11 + 7) = v15;
  v16 = *MEMORY[0x1E695C410];
  v17 = *MEMORY[0x1E695C240];
  *(v11 + 8) = *MEMORY[0x1E695C410];
  *(v11 + 9) = v17;
  v18 = *MEMORY[0x1E695C230];
  v19 = *MEMORY[0x1E695C328];
  *(v11 + 10) = *MEMORY[0x1E695C230];
  *(v11 + 11) = v19;
  v20 = objc_opt_self();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v258;
  v28 = v18;
  v29 = v19;
  *(v11 + 12) = [v20 descriptorForRequiredKeysForStyle_];
  *(v11 + 13) = [objc_opt_self() descriptorForRequiredKeys];
  v30 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  v31 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  if (v27 >> 62)
  {
    v32 = sub_1C2E764E4();
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_13:

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v32 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v32; ++i)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1C6927010](i, v27);
    }

    else
    {
      v34 = *(v27 + 8 * i + 32);
    }

    v35 = v34;
    sub_1C2CEAF00(v11, v31);
    MEMORY[0x1C6926780]();
    if (*((v264 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v264 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();
  }

  v36 = v264;

LABEL_14:
  v11 = a11;
  v38 = v36 >> 62;
  v254 = v31;
  if (v36 >> 62)
  {
    v32 = v36;
    if (sub_1C2E764E4())
    {
      if (sub_1C2E764E4() <= 1)
      {
        result = sub_1C2E764E4();
        if (result)
        {
          goto LABEL_17;
        }
      }

LABEL_27:
      v251 = a10;
      v115 = swift_allocObject();
      v18 = v257;
      v116 = v260;
      v117 = v261;
      *(v115 + 16) = v257;
      *(v115 + 24) = v116;
      v118 = v262;
      *(v115 + 32) = v117;
      *(v115 + 40) = v118;
      v30 = v252;
      v120 = v255;
      v119 = v256;
      *(v115 + 48) = v252;
      *(v115 + 56) = v120;
      *(v115 + 64) = v119;
      v248 = v115;
      *(v115 + 72) = v259;
      if (!v38)
      {
        v121 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
        v250 = v11;
        v247 = v32;
        if (v121)
        {
          v122 = v18;
          sub_1C2C6EE50(v255, v256);
          sub_1C2C6EE50(v260, v261);
          sub_1C2C6EE50(v262, v30);
          v263 = MEMORY[0x1E69E7CC0];
          result = sub_1C2CA4DA4(0, v121 & ~(v121 >> 63), 0);
          if (v121 < 0)
          {
            goto LABEL_47;
          }

          v123 = v263;
          v124 = v247;
          v262 = (v247 & 0xC000000000000001);
          v125 = sub_1C2E71D54();
          v126 = 0;
          v261 = v125;
          v127 = *(v125 - 8);
          v128 = *(v127 + 64);
          v260 = v127 + 32;
          v246 = v122;
          do
          {
            v129 = MEMORY[0x1EEE9AC00](v125);
            if (v262)
            {
              MEMORY[0x1C6927010](v126, v124, v129);
            }

            else
            {
              v130 = *(v124 + 8 * v126 + 32);
            }

            sub_1C2E71D44();
            v263 = v123;
            v132 = *(v123 + 16);
            v131 = *(v123 + 24);
            if (v132 >= v131 >> 1)
            {
              sub_1C2CA4DA4((v131 > 1), v132 + 1, 1);
              v124 = v247;
              v123 = v263;
            }

            ++v126;
            *(v123 + 16) = v132 + 1;
            v125 = (*(v127 + 32))(v123 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v132, &v214 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0), v261);
          }

          while (v121 != v126);
        }

        else
        {
          v246 = v18;
          sub_1C2C6EE50(v255, v256);
          sub_1C2C6EE50(v260, v261);
          sub_1C2C6EE50(v262, v30);
          v123 = MEMORY[0x1E69E7CC0];
        }

        v255 = sub_1C2E71C54();
        v260 = *(*(v255 - 1) + 64);
        v164 = MEMORY[0x1EEE9AC00](v255);
        v261 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
        LODWORD(v245) = *MEMORY[0x1E6995768];
        v167 = *(v166 + 104);
        v252 = (v166 + 104);
        v256 = v167;
        v167(&v214 - v261, v164);
        v240 = sub_1C2E71C34();
        v168 = *(v240 - 8);
        v243 = *(v168 + 64);
        MEMORY[0x1EEE9AC00](v240);
        v244 = (v169 + 15) & 0xFFFFFFFFFFFFFFF0;
        v170 = (&v214 - v244);
        v171 = objc_allocWithZone(MEMORY[0x1E695D158]);
        v242 = sub_1C2C6E1B4(0, &qword_1EC05CA58, 0x1E695CD58);
        v172 = sub_1C2E75D64();
        v173 = [v171 initGroupWithName:0 photo:0 contacts:v172];

        *v170 = v123;
        v170[1] = v173;
        LODWORD(v238) = *MEMORY[0x1E6995728];
        v174 = *(v168 + 104);
        v239 = v168 + 104;
        v241 = v174;
        v174(v170);
        v234 = sub_1C2E71C44();
        v236 = *(*(v234 - 8) + 64);
        v175 = MEMORY[0x1EEE9AC00](v234);
        v237 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
        v232 = *MEMORY[0x1E6995750];
        v178 = *(v177 + 104);
        v233 = v177 + 104;
        v235 = v178;
        v178(&v214 - v237, v175);
        v231 = sub_1C2E71CC4();
        swift_allocObject();

        v179 = sub_1C2E71CA4();
        v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F1B0, &qword_1C2E7EC88);
        v180 = sub_1C2E71C64();
        v181 = *(v180 - 8);
        v182 = *(v181 + 72);
        v228 = *(v181 + 80);
        v227 = ((v228 + 32) & ~v228) + 4 * v182;
        v183 = (v228 + 32) & ~v228;
        v226 = v183;
        v184 = v182;
        v217 = v182;
        v185 = swift_allocObject();
        v225 = xmmword_1C2E7C4C0;
        *(v185 + 16) = xmmword_1C2E7C4C0;
        v186 = v185 + v183;
        v224 = *MEMORY[0x1E69957B0];
        v187 = *(v181 + 104);
        v187(v186);
        v223 = *MEMORY[0x1E69957C0];
        v187(v186 + v184);
        v219 = 2 * v184;
        v222 = *MEMORY[0x1E6995780];
        v187(v186 + 2 * v184);
        v221 = 3 * v184;
        v220 = *MEMORY[0x1E6995798];
        v187(v186 + 3 * v184);

        v249 = v179;
        MEMORY[0x1C69226B0](v185);

        v230 = sub_1C2E71D14();
        v253 = &v214;
        v215 = *(v230 - 8);
        v216 = v230 - 8;
        v218 = v215;
        MEMORY[0x1EEE9AC00](v230 - 8);
        v262 = &v214 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
        type metadata accessor for ContactDetailsTab();
        swift_allocObject();
        sub_1C2CC908C();
        sub_1C2E71D64();
        swift_allocObject();
        sub_1C2CEF85C(&qword_1EC05E690, 255, type metadata accessor for ContactDetailsTab, &unk_1C2E7CF20);
        v214 = sub_1C2E71D74();
        v189 = swift_allocObject();
        v190 = v248;
        v191 = v257;
        *(v189 + 16) = v247;
        *(v189 + 24) = v191;
        *(v189 + 32) = sub_1C2CEF70C;
        *(v189 + 40) = v190;
        *(v189 + 48) = v259;
        v192 = v250;
        *(v189 + 56) = v251;
        *(v189 + 64) = v192;
        *(v189 + 72) = v179;
        type metadata accessor for CommunicationDetailsContactsTabView(0);
        sub_1C2CEF85C(&qword_1EC05F1C0, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D2B0);
        sub_1C2CEF85C(&qword_1EC05F1C8, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D260);
        v193 = v246;
        swift_unknownObjectRetain();

        v194 = sub_1C2E71D04();
        v195 = MEMORY[0x1EEE9AC00](v194);
        v196 = v256(&v214 - v261, v245, v255, v195);
        MEMORY[0x1EEE9AC00](v196);
        v197 = (&v214 - v244);
        v198 = objc_allocWithZone(MEMORY[0x1E695D158]);
        v199 = sub_1C2E75D64();
        v200 = [v198 initGroupWithName:0 photo:0 contacts:v199];

        *v197 = v123;
        v197[1] = v200;
        v201 = v241(v197, v238, v240);
        v202 = MEMORY[0x1EEE9AC00](v201);
        v235(&v214 - v237, v232, v234, v202);
        swift_allocObject();
        sub_1C2E71CA4();
        v203 = swift_allocObject();
        *(v203 + 16) = v225;
        v204 = v203 + v226;
        (v187)(v203 + v226, v224, v180);
        (v187)(v204 + v217, v223, v180);
        (v187)(v204 + v219, v222, v180);
        (v187)(v204 + v221, v220, v180);
        MEMORY[0x1C69226B0](v203);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F200, &unk_1C2E7EC90);
        v205 = v218;
        v206 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v207 = swift_allocObject();
        *(v207 + 16) = xmmword_1C2E7A930;
        v208 = v262;
        v209 = v230;
        (*(v205 + 16))(v207 + v206, v262, v230);
        v210 = sub_1C2E71C24();
        MEMORY[0x1EEE9AC00](v210 - 8);
        sub_1C2E71C04();
        v211 = objc_allocWithZone(sub_1C2E71CE4());
        v102 = sub_1C2E71CD4();

        (*(v205 + 8))(v208, v209);
        v114 = v254;
LABEL_42:
        v212 = v102;
        v213 = [v212 navigationItem];

        [v213 setLargeTitleDisplayMode_];
        return v212;
      }

LABEL_44:
      v121 = sub_1C2E764E4();
      goto LABEL_29;
    }

LABEL_39:

    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v134 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    v135 = sub_1C2E75C24();

    v136 = [objc_opt_self() contactWithDisplayName:v135 handleStrings:0];

    v137 = sub_1C2E71C54();
    v138 = MEMORY[0x1EEE9AC00](v137);
    (*(v140 + 104))(&v214 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6995768], v138);
    v141 = sub_1C2E71C34();
    v142 = *(v141 - 8);
    MEMORY[0x1EEE9AC00](v141);
    v144 = &v214 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    v262 = v136;
    MEMORY[0x1C6922760]();
    (*(v142 + 104))(v144, *MEMORY[0x1E6995730], v141);
    v145 = sub_1C2E71C44();
    v146 = MEMORY[0x1EEE9AC00](v145);
    (*(v148 + 104))(&v214 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6995760], v146);
    sub_1C2E71CC4();
    swift_allocObject();
    v149 = sub_1C2E71CA4();
    v261 = sub_1C2E71D14();
    v253 = &v214;
    v150 = *(v261 - 8);
    MEMORY[0x1EEE9AC00](v261);
    v260 = &v214 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for ContactDetailsTab();
    swift_allocObject();
    swift_retain_n();
    sub_1C2CC908C();
    sub_1C2E71D64();
    swift_allocObject();
    sub_1C2CEF85C(&qword_1EC05E690, 255, type metadata accessor for ContactDetailsTab, &unk_1C2E7CF20);
    sub_1C2E71D74();
    v152 = swift_allocObject();
    v153 = v257;
    *(v152 + 16) = v257;
    *(v152 + 24) = v259;
    *(v152 + 32) = v149;
    type metadata accessor for CommunicationDetailsContactsTabView(0);
    sub_1C2CEF85C(&qword_1EC05F1C0, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D2B0);
    sub_1C2CEF85C(&qword_1EC05F1C8, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D260);
    v154 = v153;
    v155 = v260;
    sub_1C2E71D04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F200, &unk_1C2E7EC90);
    v156 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_1C2E7A930;
    v158 = v155;
    v159 = v155;
    v160 = v261;
    (*(v150 + 16))(v157 + v156, v158, v261);
    v161 = sub_1C2E71C24();
    MEMORY[0x1EEE9AC00](v161 - 8);
    sub_1C2E71C14();
    v162 = objc_allocWithZone(sub_1C2E71CE4());
    v102 = sub_1C2E71CD4();

    v163 = v160;
    v114 = v254;
    (*(v150 + 8))(v159, v163);
    goto LABEL_42;
  }

  v32 = v36;
  v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_39;
  }

  if (v39 != 1)
  {
    goto LABEL_27;
  }

LABEL_17:
  v250 = a11;
  v251 = a10;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1C6927010](0, v32);
    goto LABEL_20;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v32 + 32);
LABEL_20:
    v41 = v40;

    v42 = sub_1C2E71D54();
    v253 = &v214;
    v43 = *(v42 - 8);
    MEMORY[0x1EEE9AC00](v42);
    v45 = &v214 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v241 = v41;
    sub_1C2CEB7A8();
    v46 = sub_1C2E71C54();
    v47 = MEMORY[0x1EEE9AC00](v46);
    (*(v49 + 104))(&v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6995768], v47);
    v50 = sub_1C2E71C34();
    v51 = *(v50 - 8);
    v52 = MEMORY[0x1EEE9AC00](v50);
    v54 = &v214 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    v247 = v45;
    v248 = v43;
    v55 = *(v43 + 16);
    v258 = v42;
    v55(v54, v45, v42, v52);
    (*(v51 + 104))(v54, *MEMORY[0x1E6995730], v50);
    v56 = sub_1C2E71C44();
    v57 = MEMORY[0x1EEE9AC00](v56);
    (*(v59 + 104))(&v214 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6995760], v57);
    sub_1C2E71CC4();
    swift_allocObject();
    v60 = sub_1C2E71CA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F1B0, &qword_1C2E7EC88);
    v61 = sub_1C2E71C64();
    v62 = *(v61 - 8);
    v63 = *(v62 + 72);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1C2E7C4C0;
    v66 = v65 + v64;
    v67 = *(v62 + 104);
    v67(v66, *MEMORY[0x1E69957B0], v61);
    v67(v66 + v63, *MEMORY[0x1E69957C0], v61);
    v67(v66 + 2 * v63, *MEMORY[0x1E6995780], v61);
    v67(v66 + 3 * v63, *MEMORY[0x1E6995798], v61);

    MEMORY[0x1C69226B0](v65);

    v245 = sub_1C2E71D14();
    v246 = &v214;
    v242 = *(v245 - 8);
    v243 = v245 - 8;
    v244 = v242;
    v239 = *(v242 + 64);
    MEMORY[0x1EEE9AC00](v245 - 8);
    v240 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
    v69 = &v214 - v240;
    type metadata accessor for ContactDetailsTab();
    swift_allocObject();
    sub_1C2CC908C();
    sub_1C2E71D64();
    swift_allocObject();
    sub_1C2CEF85C(&qword_1EC05E690, 255, type metadata accessor for ContactDetailsTab, &unk_1C2E7CF20);
    v238 = sub_1C2E71D74();
    v70 = swift_allocObject();
    v71 = v241;
    v72 = v257;
    *(v70 + 16) = v241;
    *(v70 + 24) = v72;
    *(v70 + 32) = v259;
    v73 = v250;
    *(v70 + 40) = v251;
    *(v70 + 48) = v73;
    v249 = v60;
    *(v70 + 56) = v60;
    type metadata accessor for CommunicationDetailsContactsTabView(0);
    sub_1C2CEF85C(&qword_1EC05F1C0, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D2B0);
    sub_1C2CEF85C(&qword_1EC05F1C8, 255, type metadata accessor for CommunicationDetailsContactsTabView, &unk_1C2E7D260);
    v74 = v72;
    v75 = v71;
    swift_unknownObjectRetain();
    v257 = v69;
    v76 = sub_1C2E71D04();
    v251 = &v214;
    MEMORY[0x1EEE9AC00](v76);
    v77 = v240;
    v78 = &v214 - v240;
    type metadata accessor for VoiceMailTab();
    swift_allocObject();
    sub_1C2CC3634();
    swift_allocObject();
    sub_1C2CEF85C(&qword_1EC05F1D0, 255, type metadata accessor for VoiceMailTab, &unk_1C2E7C7A8);
    sub_1C2E71D74();
    v79 = swift_allocObject();
    LOBYTE(v60) = v259;
    *(v79 + 16) = v259;
    v81 = v255;
    v80 = v256;
    *(v79 + 24) = v75;
    *(v79 + 32) = v81;
    *(v79 + 40) = v80;
    v82 = v75;
    sub_1C2C6EE50(v81, v80);
    sub_1C2CEF5AC();
    sub_1C2CEF600();
    v256 = v78;
    v83 = sub_1C2E71D04();
    v255 = &v214;
    MEMORY[0x1EEE9AC00](v83);
    v84 = &v214 - v77;
    type metadata accessor for VideoMessagingTab();
    swift_allocObject();
    sub_1C2CE56D0();
    swift_allocObject();
    sub_1C2CEF85C(&qword_1EC05F090, 255, type metadata accessor for VideoMessagingTab, &unk_1C2E7E5E0);
    sub_1C2E71D74();
    v85 = swift_allocObject();
    v87 = v260;
    v86 = v261;
    v85[2] = v82;
    v85[3] = v87;
    v88 = v262;
    v85[4] = v86;
    v85[5] = v88;
    v89 = v252;
    v85[6] = v252;
    v250 = v82;
    sub_1C2C6EE50(v87, v86);
    sub_1C2C6EE50(v88, v89);
    sub_1C2CEF664();
    sub_1C2CEF6B8();
    sub_1C2E71D04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05F200, &unk_1C2E7EC90);
    v90 = *(v242 + 72);
    v91 = (*(v244 + 80) + 32) & ~*(v244 + 80);
    v92 = v244;
    if (v60)
    {
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1C2E7A110;
      v94 = v93 + v91;
      v95 = *(v92 + 16);
      v96 = v257;
      v97 = v245;
      v95(v94, v257, v245);
      v98 = v94 + v90;
      v99 = v256;
      v95(v98, v256, v97);
      v100 = sub_1C2E71C24();
      MEMORY[0x1EEE9AC00](v100 - 8);

      sub_1C2E71C14();
      v101 = objc_allocWithZone(sub_1C2E71CE4());
      v102 = sub_1C2E71CD4();

      v103 = *(v92 + 8);
      v103(v84, v97);
      v103(v99, v97);
      v104 = v96;
    }

    else
    {
      v105 = 2 * v90;
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1C2E7AA50;
      v107 = v106 + v91;
      v108 = *(v92 + 16);
      v109 = v257;
      v97 = v245;
      v108(v107, v257, v245);
      v110 = v107 + v90;
      v111 = v256;
      v108(v110, v256, v97);
      v108(v107 + v105, v84, v97);
      v112 = sub_1C2E71C24();
      MEMORY[0x1EEE9AC00](v112 - 8);

      sub_1C2E71C14();
      v113 = objc_allocWithZone(sub_1C2E71CE4());
      v102 = sub_1C2E71CD4();

      v103 = *(v92 + 8);
      v103(v84, v97);
      v103(v111, v97);
      v104 = v109;
    }

    v103(v104, v97);
    (*(v248 + 8))(v247, v258);
    v114 = v254;
    goto LABEL_42;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

id sub_1C2CEF254(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t *a7, uint64_t (*a8)(void, void, void), unsigned __int8 *a9, uint64_t *a10, _OWORD *a11)
{
  v11 = *a9;
  if (!a2)
  {
    goto LABEL_17;
  }

  v29 = a3;
  v30 = a1;
  v12 = a4;
  v28 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a2;
  v17 = [a2 initiator];
  if (!v17)
  {
LABEL_16:
    a8 = v15;
    a7 = v14;
    a6 = v13;
    a5 = v28;
    a3 = v29;
    a4 = v12;
    a2 = v16;
    a1 = v30;
LABEL_17:
    v31 = v11;
    v26 = sub_1C2CECFBC(a1, a2, a3, a4, a5, a6, a7, a8, &v31, a10, a11);

    return v26;
  }

  v18 = v17;
  if ([v17 type] != 2)
  {
    goto LABEL_14;
  }

  result = [v18 value];
  if (result)
  {
    v20 = result;
    v21 = PNCopyBestGuessCountryCodeForNumber();

    v27 = v21;
    if (!v21)
    {
      goto LABEL_14;
    }

    result = [v18 value];
    if (result)
    {
      v22 = result;
      v23 = CFPhoneNumberCreate();

      if (v23)
      {
        String = CFPhoneNumberCreateString();
        if (String)
        {
          v25 = String;
          sub_1C2E75C64();

          v18 = v27;
LABEL_15:

          goto LABEL_16;
        }
      }

LABEL_14:
      v23 = [v18 value];
      sub_1C2E75C64();
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2CEF434()
{
  result = qword_1EC05F190;
  if (!qword_1EC05F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommunicationDetailsAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1C2CEF5AC()
{
  result = qword_1EC05F1D8;
  if (!qword_1EC05F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F1D8);
  }

  return result;
}

unint64_t sub_1C2CEF600()
{
  result = qword_1EC05F1E0;
  if (!qword_1EC05F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F1E0);
  }

  return result;
}

unint64_t sub_1C2CEF664()
{
  result = qword_1EC05F1F0;
  if (!qword_1EC05F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F1F0);
  }

  return result;
}

unint64_t sub_1C2CEF6B8()
{
  result = qword_1EC05F1F8;
  if (!qword_1EC05F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F1F8);
  }

  return result;
}

uint64_t sub_1C2CEF794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9C0, &qword_1C2E7D490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2CEF804()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v2, ObjectType, v1);
}

uint64_t sub_1C2CEF85C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2CEF8C0()
{
  v1 = sub_1C2E73BA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for DateLabel(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C2E75FD4();
    v8 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C2CEFA14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F278, &qword_1C2E7ED60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DateLabel(0);
  sub_1C2CF0774(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E74614();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2CEFC04()
{
  v1 = sub_1C2E73BA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for DateLabel(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C2E75FD4();
    v8 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

id DateLabel.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC918]) initWithFrame_];
  LODWORD(v1) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v3];
  v4 = sub_1C2E75C24();
  [v0 setAccessibilityIdentifier_];

  return v0;
}

uint64_t DateLabel.updateUIView(_:context:)(void *a1)
{
  v2 = sub_1C2E759D4();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E75A04();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E74614();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2E71804();
  [a1 setDate_];

  if (!sub_1C2CEF8C0())
  {
    sub_1C2E74514();
  }

  sub_1C2CEFA14(v11);
  v13 = sub_1C2E744D4();

  (*(v9 + 8))(v11, v8);
  [a1 setFont_];

  if (sub_1C2CEFC04())
  {
    sub_1C2C6E1B4(0, &qword_1EC05CA78, 0x1E69DC888);
    v14 = sub_1C2E761F4();
  }

  else
  {
    v14 = [objc_opt_self() labelColor];
  }

  v15 = v14;
  [a1 setTextColor_];

  sub_1C2C6E1B4(0, &qword_1EDDCD9E0, 0x1E69E9610);
  v16 = sub_1C2E76084();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_1C2CF04A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_1C2E759F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2CF072C(&qword_1EDDCDA00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60, &qword_1C2E854E0);
  sub_1C2CF04C8();
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v7, v4, v18);
  _Block_release(v18);

  (*(v24 + 8))(v4, v2);
  return (*(v22 + 8))(v7, v23);
}

uint64_t sub_1C2CF02D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CF072C(&qword_1EC05BB90, type metadata accessor for DateLabel, &protocol conformance descriptor for DateLabel);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2CF0364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CF072C(&qword_1EC05BB90, type metadata accessor for DateLabel, &protocol conformance descriptor for DateLabel);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

uint64_t sub_1C2CF03F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2CF0474@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244B0]();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2CF04C8()
{
  result = qword_1EDDCD9F0;
  if (!qword_1EDDCD9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC061C60, &qword_1C2E854E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCD9F0);
  }

  return result;
}

void sub_1C2CF059C(uint64_t a1)
{
  sub_1C2E71844();
  if (v1 <= 0x3F)
  {
    sub_1C2CF06D8(319, &qword_1EC05BA90, &qword_1EC05F288, &qword_1C2E7EEB0);
    if (v2 <= 0x3F)
    {
      sub_1C2CF0680(319);
      if (v3 <= 0x3F)
      {
        sub_1C2CF06D8(319, &qword_1EC05BA88, &qword_1EC05F290, &qword_1C2E7EEB8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C2CF0680(uint64_t a1)
{
  if (!qword_1EC05BA98)
  {
    sub_1C2E74614();
    v1 = sub_1C2E730F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05BA98);
    }
  }
}

void sub_1C2CF06D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C2E730F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C2CF072C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2CF0774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F278, &qword_1C2E7ED60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BlocklistView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E754F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1C2E72254();
  v10 = sub_1C2E72264();
  (*(v3 + 104))(v8, *MEMORY[0x1E697D710], v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_1C2E75174();
  (*(v3 + 8))(v8, v2);
  v11 = type metadata accessor for SettingsPersonList(0);
  v12 = v11[5];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298, &qword_1C2E7EEF0);
  result = swift_storeEnumTagMultiPayload();
  v14 = v11[7];
  *(a1 + v11[6]) = v9;
  *(a1 + v14) = v10;
  *(a1 + v11[8]) = 1;
  return result;
}

uint64_t sub_1C2CF09CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2A8, &qword_1C2E7EF90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2CF0C18(a1, &v5 - v3);
  return sub_1C2E73B04();
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BlocklistView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BlocklistView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2CF0BC0()
{
  result = qword_1EC05F2A0;
  if (!qword_1EC05F2A0)
  {
    type metadata accessor for SettingsPersonList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F2A0);
  }

  return result;
}

uint64_t sub_1C2CF0C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2A8, &qword_1C2E7EF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static UIColor.defaultContactTileBackground.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = sub_1C2CF0D4C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C2CF0DD4;
  v4[3] = &block_descriptor_3;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

id sub_1C2CF0D4C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v1 == 2)
  {
    v3 = 0.17;
    v4 = 0.18;
  }

  else
  {
    v3 = 0.95;
    v4 = 0.96;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:1.0];
}

id sub_1C2CF0DD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t StackedControlButtonConfiguration.__allocating_init(buttonConfiguration:textConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  sub_1C2E71A94();
  *(v3 + 16) = a1;
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  return v3;
}

uint64_t sub_1C2CF0FBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2CF10A8()
{
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

double sub_1C2CF1160(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

void sub_1C2CF1288(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_1C2CF12F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI33StackedControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF0F6C(v4);
  return sub_1C2CF1428;
}

uint64_t sub_1C2CF1484()
{
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

double sub_1C2CF153C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A54();

  return result;
}

void sub_1C2CF160C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t (*sub_1C2CF1674(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI33StackedControlButtonConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF1434(v4);
  return sub_1C2CF17AC;
}

void sub_1C2CF17B8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C2E71A74();

  free(v3);
}

uint64_t StackedControlButtonConfiguration.init(buttonConfiguration:textConfiguration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  sub_1C2E71A94();
  *(v2 + 16) = a1;
  swift_getKeyPath();
  sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  return v2;
}

uint64_t type metadata accessor for StackedControlButtonConfiguration(uint64_t a1)
{
  result = qword_1EC05BC50;
  if (!qword_1EC05BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackedControlButtonConfiguration.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI33StackedControlButtonConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StackedControlButtonConfiguration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI33StackedControlButtonConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t StackedControlButton.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StackedControlButton.init(action:configuration:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *(a4 + 40) = 0x4018000000000000;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  return result;
}

uint64_t StackedControlButton.body.getter()
{
  v1 = sub_1C2E74264();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2B0, &qword_1C2E7F000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = v0[2];
  v12[1] = v0[1];
  v12[2] = v8;
  v12[0] = *v0;
  v9 = *(&v8 + 1);
  *v7 = sub_1C2E73DC4();
  *(v7 + 1) = v9;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2B8, &qword_1C2E7F008);
  sub_1C2CF1CE4(v12, &v7[*(v10 + 44)]);
  sub_1C2E74244();
  sub_1C2CF20CC();
  sub_1C2E74C04();
  (*(v2 + 8))(v4, v1);
  return sub_1C2C73644(v7, &qword_1EC05F2B0, &qword_1C2E7F000);
}

uint64_t sub_1C2CF1CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2C0, &qword_1C2E7F178);
  MEMORY[0x1EEE9AC00](v25);
  v4 = (v24 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2C8, &qword_1C2E7F180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  swift_getKeyPath();
  v24[1] = OBJC_IVAR____TtC16CommunicationsUI33StackedControlButtonConfiguration___observationRegistrar;
  *&v28 = v13;
  v24[0] = sub_1C2CF25A0(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration, &protocol conformance descriptor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v14 = a1[3];
  v15 = a1[4];
  v16 = type metadata accessor for ControlButton(0);
  v17 = *(v16 + 28);
  *(v4 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0, &qword_1C2E86AA0);
  swift_storeEnumTagMultiPayload();
  *v4 = v11;
  v4[1] = v12;
  type metadata accessor for ControlButtonConfiguration(0);
  sub_1C2CF25A0(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration, &protocol conformance descriptor for ControlButtonConfiguration);

  sub_1C2E754C4();
  v18 = (v4 + *(v16 + 24));
  *v18 = v14;
  v18[1] = v15;
  sub_1C2E75744();
  sub_1C2E73274();
  v19 = (v4 + *(v25 + 36));
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  v19[2] = v30;
  sub_1C2E73D14();
  sub_1C2CF24E4();
  sub_1C2E74B24();

  sub_1C2C73644(v4, &qword_1EC05F2C0, &qword_1C2E7F178);
  swift_getKeyPath();
  v27 = v13;
  sub_1C2E71A64();

  swift_beginAccess();
  v21 = *(v13 + 24);
  sub_1C2CF25E8(v10, v7);
  v22 = v26;
  sub_1C2CF25E8(v7, v26);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D8, &unk_1C2E7F1C0) + 48)) = v21;
  swift_retain_n();
  sub_1C2C73644(v10, &qword_1EC05F2C8, &qword_1C2E7F180);

  return sub_1C2C73644(v7, &qword_1EC05F2C8, &qword_1C2E7F180);
}

unint64_t sub_1C2CF20CC()
{
  result = qword_1EC05B358;
  if (!qword_1EC05B358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F2B0, &qword_1C2E7F000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B358);
  }

  return result;
}

uint64_t sub_1C2CF214C()
{
  v1 = sub_1C2E74264();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2B0, &qword_1C2E7F000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = v0[2];
  v12[1] = v0[1];
  v12[2] = v8;
  v12[0] = *v0;
  v9 = *(&v8 + 1);
  *v7 = sub_1C2E73DC4();
  *(v7 + 1) = v9;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2B8, &qword_1C2E7F008);
  sub_1C2CF1CE4(v12, &v7[*(v10 + 44)]);
  sub_1C2E74244();
  sub_1C2CF20CC();
  sub_1C2E74C04();
  (*(v2 + 8))(v4, v1);
  return sub_1C2C73644(v7, &qword_1EC05F2B0, &qword_1C2E7F000);
}

uint64_t sub_1C2CF2328(uint64_t a1)
{
  result = sub_1C2E71AA4();
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

unint64_t sub_1C2CF24E4()
{
  result = qword_1EC05B9D0;
  if (!qword_1EC05B9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F2C0, &qword_1C2E7F178);
    sub_1C2CF25A0(&qword_1EC05C608, type metadata accessor for ControlButton, &protocol conformance descriptor for ControlButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9D0);
  }

  return result;
}

uint64_t sub_1C2CF25A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2CF25E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2C8, &qword_1C2E7F180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TrailingActionButtonsViewFactory.makeWithUIButtons(_:_:)(void *a1, void *a2)
{
  v3 = a1;
  a2;
  sub_1C2E75174();
  return sub_1C2E75174();
}

uint64_t TrailingActionButtonsView.init(leadingButton:trailingButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v17);
  sub_1C2CF28B0(v19, a3);
  (*(v11 + 16))(v13, a2, a4);
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = v23;
  type metadata accessor for TrailingActionButtonsView(0, v24);
  sub_1C2CF29B8(v13, v20, a4);
  (*(v11 + 8))(a2, a4);
  return (*(v15 + 8))(a1, a3);
}

uint64_t sub_1C2CF28B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1C2E75174();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1C2CF29B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1C2E75174();
  return (*(v5 + 8))(a1, a3);
}

uint64_t TrailingActionButtonsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v18 = *(a1 + 16);
  sub_1C2E73654();
  v17 = *(a1 + 24);
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v3 = sub_1C2E75214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = sub_1C2E73654();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v21 = v18;
  v22 = v17;
  v23 = *(a1 + 32);
  v24 = v19;
  sub_1C2E73C24();
  sub_1C2E75204();
  WitnessTable = swift_getWitnessTable();
  sub_1C2E74D74();
  (*(v4 + 8))(v6, v3);
  v25 = WitnessTable;
  v26 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1C2C6EE48(v10);
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_1C2C6EE48(v13);
  return (v15)(v13, v7);
}

uint64_t sub_1C2CF2DB4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v51 = a1;
  v58 = a6;
  v57 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v48 = v10;
  v12 = sub_1C2E73654();
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v43 - v16;
  v17 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C2E73654();
  v59 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v63 = a2;
  v64 = v11;
  v65 = a4;
  v66 = a5;
  type metadata accessor for TrailingActionButtonsView(0, &v63);
  sub_1C2E751B4();
  sub_1C2E75184();
  sub_1C2E75744();
  sub_1C2E74D14();
  (*(v17 + 8))(v20, a2);
  v62[4] = a4;
  v62[5] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v27 = v26;
  v44 = v23;
  v45 = v21;
  sub_1C2C6EE48(v23);
  v49 = *(v59 + 8);
  v50 = v59 + 8;
  v49(v23, v21);
  sub_1C2E751B4();
  v28 = v53;
  sub_1C2E75184();
  sub_1C2E75744();
  v29 = v52;
  v30 = v48;
  v31 = v47;
  sub_1C2E74D14();
  (*(v57 + 8))(v28, v30);
  v62[2] = v31;
  v62[3] = MEMORY[0x1E697E040];
  v32 = v55;
  v33 = swift_getWitnessTable();
  v34 = v54;
  sub_1C2C6EE48(v29);
  v35 = v56;
  v36 = *(v56 + 8);
  v36(v29, v32);
  v37 = v44;
  v38 = v27;
  v39 = v27;
  v40 = v45;
  (*(v59 + 16))(v44, v39, v45);
  v63 = v37;
  (*(v35 + 16))(v29, v34, v32);
  v64 = v29;
  v62[0] = v40;
  v62[1] = v32;
  v60 = WitnessTable;
  v61 = v33;
  sub_1C2C6EC40(&v63, 2uLL, v62);
  v36(v34, v32);
  v41 = v49;
  v49(v38, v40);
  v36(v29, v32);
  return v41(v37, v40);
}

unint64_t sub_1C2CF337C()
{
  result = qword_1EC05F2E0[0];
  if (!qword_1EC05F2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC05F2E0);
  }

  return result;
}

uint64_t sub_1C2CF33D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CF3A44();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2CF3434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2CF3A44();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2CF3498(uint64_t a1)
{
  sub_1C2CF3A44();
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2CF34D8(uint64_t a1)
{
  result = sub_1C2E751B4();
  if (v2 <= 0x3F)
  {
    result = sub_1C2E751B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2CF3564(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  v13 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + (v13 & ~v12) + 8;
  v15 = a2 - v11;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v11 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 > v6)
  {
    return (*(v8 + 48))((a1 + v13) & ~v12, v9, v7);
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(a1);
  }

  v24 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

void sub_1C2CF3758(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = ((v14 + v15) & ~v15) + v16;
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v13 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v13)
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v13;
    }

    if (v17)
    {
      v23 = ~v13 + a2;
      v24 = a1;
      bzero(a1, ((v14 + v15) & ~v15) + v16);
      a1 = v24;
      *v24 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v21 == 2)
  {
    *(a1 + v17) = 0;
    goto LABEL_41;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v10 <= v7)
  {
    if (v7 < a2)
    {
      if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
      {
        return;
      }

      v25 = ~v7 + a2;
      v26 = a1;
      v27 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      goto LABEL_49;
    }

    if (v6 < 0x7FFFFFFE)
    {
      v30 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v30 = 0;
        *v30 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v30 = a2;
      }
    }

    else
    {
      v29 = *(v5 + 56);

      v29();
    }
  }

  else
  {
    a1 = ((a1 + v14 + v15) & ~v15);
    if (v12 < a2)
    {
      if (!v16)
      {
        return;
      }

      v25 = ~v12 + a2;
      v26 = a1;
      v27 = v16;
LABEL_49:
      bzero(a1, v27);
      *v26 = v25;
      return;
    }

    v28 = *(v9 + 56);

    v28(a1);
  }
}

unint64_t sub_1C2CF3A44()
{
  result = qword_1EC05F368;
  if (!qword_1EC05F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05F368);
  }

  return result;
}

double sub_1C2CF3A98(unsigned __int8 a1)
{
  swift_beginAccess();
  if (*(v1 + 152) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t BasicApertureHudConfiguration.apertureElementConfiguration.getter()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2CF3CA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for BasicApertureHudConfiguration(uint64_t a1)
{
  result = qword_1EC05F3A0;
  if (!qword_1EC05F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double BasicApertureHudConfiguration.apertureElementConfiguration.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t (*BasicApertureHudConfiguration.apertureElementConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF4048;
}

uint64_t BasicApertureHudConfiguration.apertureAccessoryTemplate.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v3 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v5 = *(v1 + 72);
  v9 = *(v1 + 56);
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C2CF42FC(v8, v7);
}

uint64_t sub_1C2CF4134@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v10[2] = *(v3 + 56);
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = *(v3 + 40);
  *a2 = *(v3 + 24);
  a2[1] = v7;
  a2[2] = *(v3 + 56);
  a2[3] = v6;
  return sub_1C2CF42FC(v10, v9);
}

double sub_1C2CF4220(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A54();

  return result;
}

uint64_t sub_1C2CF42FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B50, &qword_1C2E7F420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double BasicApertureHudConfiguration.apertureAccessoryTemplate.setter(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A54();
  sub_1C2CF452C(v4);

  return result;
}

double sub_1C2CF444C(void *a1, _OWORD *a2)
{
  swift_beginAccess();
  v4 = a1[4];
  v14 = a1[3];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2[1];
  *(a1 + 3) = *a2;
  *(a1 + 5) = v9;
  v10 = a2[3];
  *(a1 + 7) = a2[2];
  v11 = a1[9];
  v12 = a1[10];
  *(a1 + 9) = v10;
  sub_1C2CF42FC(a2, v15);
  return sub_1C2CF7F3C(v14, v4, v5, v6, v7, v8, v11, v12);
}

uint64_t sub_1C2CF452C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B50, &qword_1C2E7F420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*BasicApertureHudConfiguration.apertureAccessoryTemplate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF46D4;
}

void *BasicApertureHudConfiguration.title.getter()
{
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

id sub_1C2CF479C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_1C2CF4868(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BasicApertureHudConfiguration.title.setter(v1);
}

void BasicApertureHudConfiguration.title.setter(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
    sub_1C2E71A54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C2C6E1B4(0, &qword_1EC05F380, 0x1E696AAB0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C2E76234();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

void sub_1C2CF4A1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
  v5 = a2;
}

uint64_t (*BasicApertureHudConfiguration.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI29BasicApertureHudConfiguration___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2CF83F8(&qword_1EC05F378, type metadata accessor for BasicApertureHudConfiguration, &protocol conformance descriptor for BasicApertureHudConfiguration);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2CF4BD8;
}