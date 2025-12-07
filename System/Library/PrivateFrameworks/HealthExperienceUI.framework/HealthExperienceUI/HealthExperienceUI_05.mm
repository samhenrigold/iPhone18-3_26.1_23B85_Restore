uint64_t sub_1B9F7EA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B9F7EABC()
{
  result = qword_1EDC68F50;
  if (!qword_1EDC68F50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC68F50);
  }

  return result;
}

uint64_t sub_1B9F7EB2C(uint64_t a1, uint64_t a2)
{
  sub_1B9F7EC24(0, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B9F7EBBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1B9F7EC24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1B9F7EC80(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1B9F7ECC4(uint64_t a1)
{
  if (!qword_1EDC68F40)
  {
    sub_1B9F0D950(255, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC68F40);
    }
  }
}

uint64_t PlatformCellHostingConfiguration.makeContentConfiguration(viewModelState:viewContext:cellState:actionHandlerContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1B9F7F04C(255);
  sub_1BA4A5418();
  sub_1B9F7F1C4(255);
  sub_1BA4A5418();
  v9 = MEMORY[0x1E6980A18];
  sub_1B9F7F2C0(&qword_1EDC5EC00, sub_1B9F7F04C, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1B9F7F2C0(&qword_1EDC5ECB8, sub_1B9F7F1C4, v9);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B9F7F308();
  a5[3] = sub_1BA4A59C8();
  a5[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return PlatformCellHostingConfiguration.makeHostingConfiguration(viewModelState:viewContext:cellState:actionHandlerContent:)(a1, a2, a3, a4, boxed_opaque_existential_1);
}

void sub_1B9F7EF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PlatformCellBackgroundColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void *sub_1B9F7F080@<X0>(_BYTE *a1@<X8>)
{
  sub_1B9F7F1F8();
  result = sub_1BA4A5728();
  *a1 = v3;
  return result;
}

uint64_t sub_1B9F7F0D0@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for ObservableCellState(0);
  sub_1B9F7F2C0(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);

  v6 = KeyPath;
  v7 = 0;
  v8 = sub_1BA4A5348();
  v9 = v4;
  v10 = 1;
  sub_1B9F7F308();
  sub_1B9F51AA8(&v6, &type metadata for PlatformCellBackgroundView, a2);
  sub_1B9F80960(v6, v7);
}

unint64_t sub_1B9F7F1F8()
{
  result = qword_1EDC67230;
  if (!qword_1EDC67230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67230);
  }

  return result;
}

uint64_t sub_1B9F7F2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F7F308()
{
  result = qword_1EDC65490;
  if (!qword_1EDC65490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65490);
  }

  return result;
}

uint64_t PlatformCellHostingConfiguration.makeHostingConfiguration(viewModelState:viewContext:cellState:actionHandlerContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a3;
  v26 = a2;
  v25 = a1;
  v29 = a5;
  v6 = *v5;
  v24 = *(*v5 + 80);
  sub_1B9F7F04C(255);
  sub_1BA4A5418();
  sub_1B9F7F1C4(255);
  sub_1BA4A5418();
  v23 = *(v6 + 88);
  v7 = MEMORY[0x1E6980A18];
  v42 = *(*(v23 + 16) + 8);
  v43 = sub_1B9F7F2C0(&qword_1EDC5EC00, sub_1B9F7F04C, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1B9F7F2C0(&qword_1EDC5ECB8, sub_1B9F7F1C4, v7);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  v37 = MEMORY[0x1E6981E70];
  v38 = OpaqueTypeConformance2;
  v39 = MEMORY[0x1E6981E60];
  v10 = sub_1BA4A59C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - v13;
  v15 = sub_1B9F7F308();
  v36 = OpaqueTypeMetadata2;
  v37 = &type metadata for PlatformCellBackgroundView;
  v38 = OpaqueTypeConformance2;
  v39 = v15;
  v16 = sub_1BA4A59C8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v22 - v19;
  v30 = v24;
  v31 = v23;
  v32 = v25;
  v33 = v27;
  v34 = v26;
  v35 = v28;
  sub_1BA4A59B8();
  sub_1BA4A5998();
  (*(v11 + 8))(v14, v10);
  sub_1BA4A5B78();
  sub_1BA4A59A8();
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1B9F7F714@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ObservableCellState(0);
  result = sub_1BA4A4D78();
  *a2 = result;
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

uint64_t sub_1B9F7F768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v68 = a4;
  v65 = a2;
  v66 = a3;
  v64 = a1;
  v71 = a7;
  v9 = sub_1BA4A5A48();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v14, v15);
  v16 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v17);
  v19 = &v51 - v18;
  v60 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v58 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7F04C(255);
  v23 = sub_1BA4A5418();
  v62 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v56 = &v51 - v25;
  sub_1B9F7F1C4(255);
  v26 = sub_1BA4A5418();
  v61 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v57 = &v51 - v28;
  v52 = *(v12 + 8);
  v29 = v52;
  v30 = MEMORY[0x1E6980A18];
  v31 = sub_1B9F7F2C0(&qword_1EDC5EC00, sub_1B9F7F04C, MEMORY[0x1E6980A18]);
  v76 = v29;
  v77 = v31;
  WitnessTable = swift_getWitnessTable();
  v53 = WitnessTable;
  v33 = sub_1B9F7F2C0(&qword_1EDC5ECB8, sub_1B9F7F1C4, v30);
  v74 = WitnessTable;
  v75 = v33;
  v54 = swift_getWitnessTable();
  v72 = v26;
  v73 = v54;
  v55 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v36);
  v38 = &v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v43 = &v51 - v42;
  (*(v16 + 16))(v19, v64, v59, v41);
  sub_1B9F7FDF8(v65, &v72);
  v44 = v58;
  PluginView.init(_:actionHandlerContent:)(v19, &v72, a5, v63);
  v45 = v56;
  View.attachViewContext(_:)(v66, a5, v52);
  (*(v60 + 8))(v44, a5);
  type metadata accessor for ObservableCellState(0);
  sub_1B9F7F2C0(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);
  v46 = v57;
  sub_1BA4A5F68();
  (*(v62 + 8))(v45, v23);
  v47 = v67;
  sub_1BA4A5A38();
  v48 = v54;
  sub_1BA4A5F88();
  (*(v69 + 8))(v47, v70);
  (*(v61 + 8))(v46, v26);
  v72 = v26;
  v73 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1B9F51AA8(v38, OpaqueTypeMetadata2, v43);
  v49 = *(v35 + 8);
  v49(v38, OpaqueTypeMetadata2);
  sub_1B9F51AA8(v43, OpaqueTypeMetadata2, v71);
  return (v49)(v43, OpaqueTypeMetadata2);
}

uint64_t sub_1B9F7FDF8(uint64_t a1, uint64_t a2)
{
  sub_1B9F80148();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlatformCellBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A40C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A5718();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  LODWORD(v11) = *(v1 + 8);
  v21 = *(v1 + 32);
  if (v11 == 1)
  {
    LOBYTE(v24) = v13;
  }

  else
  {

    sub_1BA4A6FB8();
    v14 = sub_1BA4A5B28();
    v20 = v4;
    v15 = v3;
    v16 = a1;
    v17 = v14;
    sub_1BA4A3CA8();

    a1 = v16;
    v3 = v15;
    v4 = v20;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v13, 0);
    (*(v9 + 8))(v12, v8);
    LOBYTE(v13) = v24;
  }

  LOBYTE(v22) = v13;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F28();

  Presentation.cellBackgroundColor(for:)();
  (*(v4 + 8))(v7, v3);
  v22 = sub_1BA4A6048();
  v23 = v21 == 0;
  sub_1B9F80198();
  sub_1B9F801F0();
  result = sub_1BA4A58E8();
  v19 = v25;
  *a1 = v24;
  *(a1 + 8) = v19;
  return result;
}

void sub_1B9F80148()
{
  if (!qword_1EDC6BB70[0])
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC6BB70);
    }
  }
}

void sub_1B9F80198()
{
  if (!qword_1EDC5F190)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F190);
    }
  }
}

unint64_t sub_1B9F801F0()
{
  result = qword_1EDC5F198;
  if (!qword_1EDC5F198)
  {
    sub_1B9F80198();
    sub_1B9F8A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F198);
  }

  return result;
}

uint64_t sub_1B9F80278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F80578(0);
  v5 = (a2 + *(v4 + 36));
  v6 = *(sub_1BA4A5438() + 20);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1BA4A5818();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #26.0 }

  *v5 = _Q0;
  sub_1B9F80620(0);
  *&v5[*(v14 + 36)] = 256;
  sub_1B9F806B4(0, &qword_1EDC5ECE8, sub_1B9F8A01C, &type metadata for PlatformCellCornerRadius);
  v16 = *(*(v15 - 8) + 16);

  return v16(a2, a1, v15);
}

uint64_t PluginView.init(_:actionHandlerContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v10, v11);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v19[-v16];
  (*(v13 + 16))(&v19[-v16], a1, v12, v15);
  (*(v8 + 24))(v17, a3, v8);
  sub_1B9F7FDF8(a2, v19);
  (*(*(a4 + 8) + 16))(v19, a3);
  sub_1B9F8051C(a2);
  return (*(v13 + 8))(a1, v12);
}

uint64_t sub_1B9F8051C(uint64_t a1)
{
  sub_1B9F80148();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F80578(uint64_t a1)
{
  if (!qword_1EDC5F228)
  {
    sub_1B9F806B4(255, &qword_1EDC5ECE8, sub_1B9F8A01C, &type metadata for PlatformCellCornerRadius);
    sub_1B9F80620(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F228);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_1B9F80620(uint64_t a1)
{
  if (!qword_1EDC5F330)
  {
    sub_1BA4A5438();
    sub_1B9F8A89C(&qword_1EDC5EDD0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1BA4A5218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F330);
    }
  }
}

void sub_1B9F806B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1BA4A5978();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t View.attachViewContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1BA4A5EB8();
}

void *sub_1B9F807E0@<X0>(void *a1@<X8>)
{
  sub_1B9F64FA8();
  result = sub_1BA4A5748();
  *a1 = v3;
  return result;
}

uint64_t sub_1B9F8083C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F8090C()
{
  result = qword_1EDC69530;
  if (!qword_1EDC69530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69530);
  }

  return result;
}

uint64_t sub_1B9F80960(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1B9F8099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B9F809F8(uint64_t a1)
{
  sub_1B9F80BA8(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F640E8(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B9F80C84(319, &qword_1EDC6B6C0, sub_1B9F2ACE8, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B9F640E8(319, &qword_1EDC5F350, &type metadata for Presentation, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1B9F80C84(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1B9F640E8(319, &qword_1EDC5EB90, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1B9F80BA8(uint64_t a1)
{
  if (!qword_1EDC5F2D8)
  {
    type metadata accessor for DisclosureCellHeaderView.ViewModel(255);
    sub_1B9F80C3C(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);
    v1 = sub_1BA4A5378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F2D8);
    }
  }
}

uint64_t sub_1B9F80C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B9F80C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F80D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B9F80D88(_OWORD *a1)
{
  type metadata accessor for DisclosureCellHeaderView(255);
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  type metadata accessor for SnidgetContentView(255, v5);
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6268();
  sub_1BA4A5418();
  sub_1BA4A5418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1B9F80F28(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1B9F81070(255, a3, a4);
    v5 = sub_1BA4A6428();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F80FDC(uint64_t a1)
{
  if (!qword_1EDC5EB28)
  {
    sub_1B9F80F80(255);
    sub_1B9F80C3C(&qword_1EDC5E9C8, sub_1B9F80F80, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB28);
    }
  }
}

void sub_1B9F81070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1B9F810DC(uint64_t a1)
{
  if (!qword_1EDC5EB10)
  {
    sub_1B9F80FA8(255);
    sub_1B9F80C3C(&qword_1EDC5E9A8, sub_1B9F80FA8, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB10);
    }
  }
}

void sub_1B9F81170()
{
  if (!qword_1EDC69810)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC69810);
    }
  }
}

void sub_1B9F811D0(uint64_t a1)
{
  if (!qword_1EDC5EB40)
  {
    sub_1B9F8132C(255);
    sub_1B9F80C3C(&qword_1EDC5E9D8, sub_1B9F8132C, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EB40);
    }
  }
}

void sub_1B9F81298(uint64_t a1)
{
  if (!qword_1EDC5EA70)
  {
    sub_1B9F81264(255);
    sub_1B9F80C3C(&qword_1EDC5E900, sub_1B9F81264, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EA70);
    }
  }
}

void sub_1B9F81354(uint64_t a1)
{
  if (!qword_1EDC5EB38)
  {
    sub_1B9F811D0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5EB38);
    }
  }
}

void sub_1B9F813BC()
{
  if (!qword_1EDC5F2A8)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F2A8);
    }
  }
}

uint64_t sub_1B9F81460(void *a1)
{
  sub_1BA4A7AA8();
  sub_1BA4A7AA8();
  sub_1BA4A5418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BA4A6228();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  sub_1BA4A6218();
  return swift_getWitnessTable();
}

uint64_t SnidgetTileView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  type metadata accessor for DisclosureCellHeaderView(255);
  v34 = a1[2];
  v33 = a1[3];
  v32 = a1[4];
  v31 = a1[5];
  v30 = a1[6];
  v29 = a1[7];
  v28 = a1[8];
  v27 = a1[9];
  v54[0] = v34;
  v54[1] = v33;
  v54[2] = v32;
  v54[3] = v31;
  v54[4] = v30;
  v54[5] = v29;
  v54[6] = v28;
  v54[7] = v27;
  type metadata accessor for SnidgetContentView(255, v54);
  swift_getTupleTypeMetadata3();
  v26[1] = sub_1BA4A6428();
  v26[0] = swift_getWitnessTable();
  v4 = sub_1BA4A6268();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v26 - v6;
  v8 = sub_1BA4A5418();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v26 - v10;
  v12 = sub_1BA4A5418();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v26 - v18;
  v20 = *v2;
  v21 = v2[3];
  sub_1BA4A5878();
  v39 = v34;
  v40 = v33;
  v41 = v32;
  v42 = v31;
  v43 = v30;
  v44 = v29;
  v45 = v28;
  v46 = v27;
  v47 = v20;
  v48 = *(v2 + 1);
  v49 = v21;
  sub_1BA4A6258();
  WitnessTable = swift_getWitnessTable();
  sub_1BA4A5ED8();
  (*(v35 + 8))(v7, v4);
  sub_1BA4A63C8();
  v52 = WitnessTable;
  v53 = MEMORY[0x1E697FB50];
  v25 = swift_getWitnessTable();
  sub_1BA4A5FE8();
  (*(v36 + 8))(v11, v8);
  v50 = v25;
  v51 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1B9F51AA8(v15, v12, v19);
  v23 = *(v37 + 8);
  v23(v15, v12);
  sub_1B9F51AA8(v19, v12, v38);
  return (v23)(v19, v12);
}

uint64_t sub_1B9F81B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a7;
  *(&v49 + 1) = a6;
  *&v49 = a5;
  v47 = a4;
  v41 = a3;
  v42 = a1;
  v51 = a8;
  v48 = a12;
  v46 = a11;
  v45 = a10;
  v44 = a9;
  v13 = type metadata accessor for DisclosureCellHeaderView(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v52 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  sub_1B9F820AC();
  swift_beginAccess();
  *(v19 + 2) = swift_getKeyPath();
  *(v19 + 3) = 0;
  v19[32] = 0;
  *(v19 + 5) = swift_getKeyPath();
  v19[48] = 0;
  *(v19 + 7) = swift_getKeyPath();
  v19[64] = 0;
  v20 = *(v13 + 32);
  *&v19[v20] = swift_getKeyPath();
  sub_1B9F82218(0);
  swift_storeEnumTagMultiPayload();
  v43 = v13;
  v21 = &v19[*(v13 + 36)];
  LOBYTE(v69) = 0;
  swift_retain_n();

  sub_1BA4A61A8();
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F4A8E0(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);

  v22 = sub_1BA4A5348();
  v24 = v23;

  *v19 = v22;
  *(v19 + 1) = v24;
  LOBYTE(v69) = 1;
  sub_1BA4A61A8();

  v25 = v63;
  *v21 = v62;
  *(v21 + 1) = v25;

  v69 = sub_1B9F8224C();
  if (v41)
  {

    v26 = sub_1B9F8224C();
  }

  else
  {
    v26 = 0;
  }

  v59 = v26;
  v27 = v47;
  v28 = v49;
  v62 = v47;
  v29 = *(&v49 + 1);
  v63 = v49;
  v30 = v50;
  v64 = v50;
  v31 = v44;
  v32 = v45;
  v65 = v44;
  v66 = v45;
  v33 = v46;
  v34 = v48;
  v67 = v46;
  v68 = v48;
  v35 = type metadata accessor for SnidgetContentView.ViewModel(0, &v62);
  ViewModelState.init(id:viewModel:previousViewModel:)(v42, a2, &v69, &v59, v35, &v62);
  v59 = v62;
  v60 = v63;
  v61 = v64;
  SnidgetContentView.init(_:)(&v59, &v69);
  v59 = v69;
  v60 = v70;
  v61 = v71;
  v62 = v27;
  *&v63 = v28;
  *(&v63 + 1) = v29;
  v64 = v30;
  v65 = v31;
  v66 = v32;
  v67 = v33;
  v68 = v34;
  v36 = type metadata accessor for SnidgetContentView(0, &v62);
  WitnessTable = swift_getWitnessTable();
  sub_1B9F51AA8(&v59, v36, &v62);

  v38 = v52;
  sub_1B9F82320(v19, v52);
  v57 = 0x4037000000000000;
  v58 = 0;
  v59 = v38;
  *&v60 = &v57;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  *(&v60 + 1) = &v69;

  v56[0] = v43;
  v56[1] = MEMORY[0x1E6981840];
  v56[2] = v36;
  v53 = sub_1B9F4A8E0(qword_1EDC66200, type metadata accessor for DisclosureCellHeaderView, &protocol conformance descriptor for DisclosureCellHeaderView);
  v54 = MEMORY[0x1E6981838];
  v55 = WitnessTable;
  sub_1B9F50770(&v59, 3uLL, v56);

  sub_1B9F82384(v19);

  return sub_1B9F82384(v38);
}

uint64_t sub_1B9F820AC()
{
  KeyPath = swift_getKeyPath();
  sub_1B9F8217C(KeyPath);

  return *(v0 + 16);
}

__n128 sub_1B9F82128(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B9F8224C()
{
  KeyPath = swift_getKeyPath();
  sub_1B9F8217C(KeyPath);

  return *(v0 + 24);
}

__n128 SnidgetContentView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t sub_1B9F82320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureCellHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F82384(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureCellHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F823E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CellHeaderViewModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

id sub_1B9F82430@<X0>(void *a1@<X8>)
{
  if (qword_1EDC69CE0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EDC69CE8;
  *a1 = qword_1EDC69CE8;

  return v2;
}

id sub_1B9F824A0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  qword_1EDC69CE8 = result;
  return result;
}

uint64_t sub_1B9F824D4(id *a1)
{
  v1 = *a1;
  sub_1B9F64FA8();
  v2 = v1;
  return sub_1BA4A5758();
}

id DelayedDataSource<>.layout(for:)(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  DelayedDataSource.dataSourceState.getter();
  v8 = *(v4 + 80);
  if (v24)
  {
    v9 = swift_unknownObjectRetain();
    sub_1B9F33840(v9, v23, 1);
    if (v22)
    {
      *&v13[0] = v22;
      *&v14 = v5;
      *(&v14 + 1) = v6;
      *&v15 = v7;
      v10 = (*(a2 + 8))(&v14, v8, a2);
      swift_unknownObjectRelease();
      return v10;
    }
  }

  else
  {
    sub_1B9F33840(v22, v23, 0);
  }

  if (qword_1EDC6D2F0 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EDC6D338;
  v19 = unk_1EDC6D348;
  v20 = xmmword_1EDC6D358;
  v21 = unk_1EDC6D368;
  v14 = xmmword_1EDC6D2F8;
  v15 = *&qword_1EDC6D308;
  v16 = xmmword_1EDC6D318;
  v17 = unk_1EDC6D328;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v13[4] = xmmword_1EDC6D338;
  v13[5] = unk_1EDC6D348;
  v13[6] = xmmword_1EDC6D358;
  v13[7] = unk_1EDC6D368;
  v13[0] = xmmword_1EDC6D2F8;
  v13[1] = *&qword_1EDC6D308;
  v13[2] = xmmword_1EDC6D318;
  v13[3] = unk_1EDC6D328;
  sub_1B9F1D9A4(&v14, &v12);
  return sub_1B9F293A8(v13);
}

unint64_t sub_1B9F826D4()
{
  result = qword_1EDC61AD8;
  if (!qword_1EDC61AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61AD8);
  }

  return result;
}

uint64_t static GridLayoutEngine.articles.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EDC68DF0[0];
  v3 = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (v2 <= 0.0 || (v4 = v3, v5 = qword_1EDC68DF0[0], sub_1B9F828E0(0), inited = swift_initStackObject(), *(inited + 16) = xmmword_1BA4B9A80, *(inited + 32) = 1, *(inited + 40) = v5, *(inited + 48) = 2, *(inited + 56) = v5, *(inited + 64) = 3, *(inited + 72) = v5, *(inited + 80) = 4, *(inited + 88) = 0x4074000000000000, *(inited + 96) = 5, *(inited + 104) = 0x407A400000000000, *(inited + 112) = 6, *(inited + 120) = 0x4080900000000000, v7 = sub_1B9F58798(inited), swift_setDeallocating(), v5 <= 0.0))
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    sub_1B9F5869C();
    result = sub_1BA4A7648();
    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
    *(a1 + 32) = 0x4072C00000000000;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = result;
  }

  return result;
}

void sub_1B9F828E0(uint64_t a1)
{
  if (!qword_1EDC5DBC0)
  {
    sub_1BA09E7C8(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DBC0);
    }
  }
}

void sub_1B9F82938(uint64_t a1)
{
  if (!qword_1EDC5DFC8)
  {
    type metadata accessor for HKWidthDesignation(255);
    sub_1B9F28EB8(&qword_1EDC5E478, type metadata accessor for HKWidthDesignation, &unk_1BA4B2D1C);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DFC8);
    }
  }
}

uint64_t sub_1B9F829D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D5A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F82A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA19C344(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F82AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA1A2B20(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F82B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2B9364(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F82B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F82BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA45E348(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DelayedDataSource<>.shouldCollapseEmptySection(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  DelayedDataSource.dataSourceState.getter();
  v6 = *(v5 + 80);
  if (v12)
  {
    v7 = swift_unknownObjectRetain();
    v8 = 1;
    sub_1B9F33840(v7, v11, 1);
    if (v10)
    {
      v8 = (*(a2 + 16))(a1, v6, a2);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1B9F33840(v10, v11, 0);
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_1B9F82D44()
{
  result = qword_1EDC67238;
  if (!qword_1EDC67238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67238);
  }

  return result;
}

uint64_t sub_1B9F82DC8(uint64_t a1, int a2)
{
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if (*(v2 + v10) == 1)
  {
    v12 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
    ObjectType = swift_getObjectType();
    HIDWORD(v15) = a2;
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v14(ObjectType, v12);
    swift_unknownObjectRelease();
    (*(*v2 + 296))(v9, BYTE4(v15) & 1, 0, 0, 0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double DisclosureCellHeaderView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v2 = sub_1BA4A53C8();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BA4A2B98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A2C58();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA38E2F4();
  sub_1BA4A2C48();
  v41 = v1;
  v19 = *(v1 + 8);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  swift_beginAccess();
  sub_1B9F42CEC(v19 + v20, v14, sub_1B9F20584);
  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_1B9F4C230(v14, sub_1B9F20584);
    v21 = sub_1BA4A60E8();
  }

  else
  {
    (*(v7 + 16))(v10, v14, v6);
    sub_1B9F4C230(v14, sub_1B9F20584);
    v21 = sub_1BA4A2B78();
    (*(v7 + 8))(v10, v6);
  }

  sub_1BA38E460(v5);
  if (qword_1EDC67DE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDC84C60);
  sub_1B9F80C3C(&qword_1EDC5F2C8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v22 = sub_1BA4A66F8();
  (*(v37 + 8))(v5, v2);
  if (v22)
  {
    v23 = sub_1BA4A5878();
    LOBYTE(v74[0]) = 1;
    sub_1BA38E664(v41, v21, v90);
    v54 = *&v90[192];
    v55 = *&v90[208];
    v50 = *&v90[128];
    v51 = *&v90[144];
    v52 = *&v90[160];
    v53 = *&v90[176];
    v46 = *&v90[64];
    v47 = *&v90[80];
    v48 = *&v90[96];
    v49 = *&v90[112];
    v42 = *v90;
    v43 = *&v90[16];
    v44 = *&v90[32];
    v45 = *&v90[48];
    v69 = *&v90[192];
    v70 = *&v90[208];
    v65 = *&v90[128];
    v66 = *&v90[144];
    v67 = *&v90[160];
    v68 = *&v90[176];
    v61 = *&v90[64];
    v62 = *&v90[80];
    v63 = *&v90[96];
    v64 = *&v90[112];
    v57 = *v90;
    v58 = *&v90[16];
    v56 = v90[224];
    v71 = v90[224];
    v59 = *&v90[32];
    v60 = *&v90[48];
    sub_1B9F42CEC(&v42, &v76, sub_1B9F81264);
    sub_1B9F4C230(&v57, sub_1B9F81264);
    *&v90[183] = v53;
    *&v90[199] = v54;
    *&v90[215] = v55;
    *&v90[119] = v49;
    *&v90[135] = v50;
    *&v90[151] = v51;
    *&v90[167] = v52;
    *&v90[55] = v45;
    *&v90[71] = v46;
    *&v90[87] = v47;
    *&v90[103] = v48;
    *&v90[7] = v42;
    *&v90[23] = v43;
    *&v90[39] = v44;
    *(&v73[11] + 1) = *&v90[176];
    *(&v73[12] + 1) = *&v90[192];
    *(&v73[13] + 1) = *&v90[208];
    *(&v73[7] + 1) = *&v90[112];
    *(&v73[8] + 1) = *&v90[128];
    *(&v73[9] + 1) = *&v90[144];
    *(&v73[10] + 1) = *&v90[160];
    *(&v73[3] + 1) = *&v90[48];
    *(&v73[4] + 1) = *&v90[64];
    *(&v73[5] + 1) = *&v90[80];
    *(&v73[6] + 1) = *&v90[96];
    *(v73 + 1) = *v90;
    v90[231] = v56;
    v72 = v23;
    LOBYTE(v73[0]) = v74[0];
    *(&v73[14] + 1) = *&v90[224];
    *(&v73[1] + 1) = *&v90[16];
    *(&v73[2] + 1) = *&v90[32];
    v87[1] = v73[11];
    v88 = v73[12];
    v89[0] = v73[13];
    *(v89 + 9) = *(&v73[13] + 9);
    v84 = v73[7];
    v85 = v73[8];
    v86 = v73[9];
    v87[0] = v73[10];
    v80 = v73[3];
    v81 = v73[4];
    v82 = v73[5];
    v83 = v73[6];
    v76 = v23;
    v77 = v73[0];
    v78 = v73[1];
    v79 = v73[2];
    sub_1BA38E9FC(&v76);
    *&v90[192] = v87[1];
    *&v90[208] = v88;
    *&v90[224] = v89[0];
    *&v90[234] = *(v89 + 10);
    *&v90[128] = v84;
    *&v90[144] = v85;
    *&v90[160] = v86;
    *&v90[176] = v87[0];
    *&v90[64] = v80;
    *&v90[80] = v81;
    *&v90[96] = v82;
    *&v90[112] = v83;
    *v90 = v76;
    *&v90[16] = v77;
    *&v90[32] = v78;
    *&v90[48] = v79;
    sub_1B9F42CEC(&v72, v74, sub_1B9F81298);
    sub_1B9F42CEC(&v72, v74, sub_1B9F81298);
    sub_1B9F80FDC(0);
    sub_1B9F81298(0);
    sub_1B9F80C3C(&qword_1EDC5EB30, sub_1B9F80FDC, MEMORY[0x1E69817F8]);
    sub_1B9F80C3C(&qword_1EDC5EA78, sub_1B9F81298, MEMORY[0x1E6981870]);
    sub_1BA4A58E8();

    v24 = sub_1B9F81298;
  }

  else
  {
    v25 = sub_1BA4A5778();
    LOBYTE(v74[0]) = 0;
    sub_1B9F841C8(v41, v21, v90);
    v50 = *&v90[128];
    v51 = *&v90[144];
    v52 = *&v90[160];
    v46 = *&v90[64];
    v47 = *&v90[80];
    v48 = *&v90[96];
    v49 = *&v90[112];
    v42 = *v90;
    v43 = *&v90[16];
    v44 = *&v90[32];
    v45 = *&v90[48];
    v65 = *&v90[128];
    v66 = *&v90[144];
    v67 = *&v90[160];
    v61 = *&v90[64];
    v62 = *&v90[80];
    v63 = *&v90[96];
    v64 = *&v90[112];
    v57 = *v90;
    v58 = *&v90[16];
    LOBYTE(v53) = v90[176];
    LOBYTE(v68) = v90[176];
    v59 = *&v90[32];
    v60 = *&v90[48];
    sub_1B9F42CEC(&v42, &v76, sub_1B9F80F80);
    sub_1B9F4C230(&v57, sub_1B9F80F80);
    *&v90[135] = v50;
    *&v90[151] = v51;
    *&v90[167] = v52;
    v90[183] = v53;
    *&v90[71] = v46;
    *&v90[87] = v47;
    *&v90[103] = v48;
    *&v90[119] = v49;
    *&v90[7] = v42;
    *&v90[23] = v43;
    *&v90[39] = v44;
    *&v90[55] = v45;
    *&v72 = v25;
    *(&v72 + 1) = 0x4020000000000000;
    LOBYTE(v73[0]) = v74[0];
    *(&v73[8] + 1) = *&v90[128];
    *(&v73[9] + 1) = *&v90[144];
    *(&v73[10] + 1) = *&v90[160];
    *(&v73[11] + 1) = *&v90[176];
    *(&v73[4] + 1) = *&v90[64];
    *(&v73[5] + 1) = *&v90[80];
    *(&v73[6] + 1) = *&v90[96];
    *(&v73[7] + 1) = *&v90[112];
    *(v73 + 1) = *v90;
    *(&v73[1] + 1) = *&v90[16];
    *(&v73[2] + 1) = *&v90[32];
    *(&v73[3] + 1) = *&v90[48];
    v86 = v73[9];
    v87[0] = v73[10];
    *(v87 + 9) = *(&v73[10] + 9);
    v82 = v73[5];
    v83 = v73[6];
    v85 = v73[8];
    v84 = v73[7];
    v78 = v73[1];
    v79 = v73[2];
    v81 = v73[4];
    v80 = v73[3];
    v77 = v73[0];
    v76 = v72;
    sub_1BA38E65C(&v76);
    *&v90[192] = v87[1];
    *&v90[208] = v88;
    *&v90[224] = v89[0];
    *&v90[234] = *(v89 + 10);
    *&v90[128] = v84;
    *&v90[144] = v85;
    *&v90[160] = v86;
    *&v90[176] = v87[0];
    *&v90[64] = v80;
    *&v90[80] = v81;
    *&v90[96] = v82;
    *&v90[112] = v83;
    *v90 = v76;
    *&v90[16] = v77;
    *&v90[32] = v78;
    *&v90[48] = v79;
    sub_1B9F42CEC(&v72, v74, sub_1B9F80FDC);
    sub_1B9F42CEC(&v72, v74, sub_1B9F80FDC);
    sub_1B9F80FDC(0);
    sub_1B9F81298(0);
    sub_1B9F80C3C(&qword_1EDC5EB30, sub_1B9F80FDC, MEMORY[0x1E69817F8]);
    sub_1B9F80C3C(&qword_1EDC5EA78, sub_1B9F81298, MEMORY[0x1E6981870]);
    sub_1BA4A58E8();

    v24 = sub_1B9F80FDC;
  }

  v26 = v24;
  sub_1B9F4C230(&v72, v24);
  sub_1B9F4C230(&v72, v26);
  (*(v38 + 8))(v18, v39);
  *&v90[224] = v75[0];
  *&v90[234] = *(v75 + 10);
  *&v90[128] = v74[8];
  *&v90[144] = v74[9];
  *&v90[160] = v74[10];
  *&v90[176] = v74[11];
  *&v90[64] = v74[4];
  *&v90[80] = v74[5];
  *&v90[96] = v74[6];
  *&v90[112] = v74[7];
  *v90 = v74[0];
  *&v90[16] = v74[1];
  *&v90[32] = v74[2];
  *&v90[48] = v74[3];
  v27 = v74[13];
  v28 = v40;
  v40[12] = v74[12];
  v28[13] = v27;
  v28[14] = *&v90[224];
  *(v28 + 234) = *&v90[234];
  v29 = *&v90[144];
  v28[8] = *&v90[128];
  v28[9] = v29;
  v30 = *&v90[176];
  v28[10] = *&v90[160];
  v28[11] = v30;
  v31 = *&v90[80];
  v28[4] = *&v90[64];
  v28[5] = v31;
  v32 = *&v90[112];
  v28[6] = *&v90[96];
  v28[7] = v32;
  v33 = *&v90[16];
  *v28 = *v90;
  v28[1] = v33;
  result = *&v90[32];
  v35 = *&v90[48];
  v28[2] = *&v90[32];
  v28[3] = v35;
  return result;
}

void sub_1B9F83EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F264E0();
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_6_4;
  v8 = _Block_copy(aBlock);
  v9 = v6;

  [v9 notifyObservers_];
  _Block_release(v8);
}

uint64_t sub_1B9F83FF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F84030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();

  sub_1B9F8A548(v11, v5);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B9F84140()
{
  v0 = sub_1BA4A53C8();
  __swift_allocate_value_buffer(v0, qword_1EDC84C60);
  v1 = __swift_project_value_buffer(v0, qword_1EDC84C60);
  v2 = *MEMORY[0x1E697E728];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1B9F841C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  swift_beginAccess();
  v6 = v5[3];
  v22 = v5[2];
  swift_beginAccess();
  v8 = v5[4];
  v7 = v5[5];
  KeyPath = swift_getKeyPath();
  v28 = 0;

  v21 = sub_1BA4A5798();
  LOBYTE(v23[0]) = 0;
  sub_1B9F84604(&v44);
  v31 = v45[1];
  v32[0] = v45[2];
  *(v32 + 9) = *(&v45[2] + 9);
  v29 = v44;
  v30 = v45[0];
  v33[2] = v45[1];
  v34[0] = v45[2];
  *(v34 + 9) = *(&v45[2] + 9);
  v33[0] = v44;
  v33[1] = v45[0];
  sub_1B9F42CEC(&v29, &v39, sub_1B9F80FA8);
  sub_1B9F4C230(v33, sub_1B9F80FA8);
  *(&v27[1] + 7) = v30;
  *(&v27[2] + 7) = v31;
  *(&v27[3] + 7) = v32[0];
  v27[4] = *(v32 + 9);
  *(v27 + 7) = v29;
  *&v35 = v22;
  *(&v35 + 1) = v6;
  *&v36 = v8;
  *(&v36 + 1) = v7;
  *v37 = a2;
  *&v37[8] = KeyPath;
  *&v37[16] = 0;
  v38 = 0;
  *&v43[9] = *&v37[9];
  v42 = v36;
  *v43 = *v37;
  v41 = v35;
  *&v39 = v21;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  v10 = v27[1];
  *&v40[1] = v27[0];
  v11 = v27[3];
  *&v40[65] = *(v32 + 9);
  v12 = v27[2];
  *&v40[49] = v27[3];
  *&v40[33] = v27[2];
  v13 = v27[0];
  *&v40[17] = v27[1];
  *&v25[39] = *&v40[16];
  *&v25[23] = *v40;
  *&v25[7] = v39;
  v25[103] = BYTE8(v32[1]);
  *&v25[87] = *&v40[64];
  *&v25[71] = *&v40[48];
  *&v25[55] = *&v40[32];
  v14 = v35;
  v15 = v36;
  v16 = *&v43[16];
  *(a3 + 32) = *v37;
  *(a3 + 48) = v16;
  *a3 = v14;
  *(a3 + 16) = v15;
  v17 = *&v25[48];
  *(a3 + 105) = *&v25[32];
  v18 = *v25;
  *(a3 + 89) = *&v25[16];
  *(a3 + 73) = v18;
  v19 = *&v25[64];
  *(a3 + 153) = *&v25[80];
  *(a3 + 137) = v19;
  *(a3 + 121) = v17;
  v26 = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 169) = *&v25[96];
  *&v44 = v21;
  *(&v44 + 1) = 0x4020000000000000;
  LOBYTE(v45[0]) = 0;
  *(v45 + 1) = v13;
  *(&v45[4] + 1) = v27[4];
  *(&v45[3] + 1) = v11;
  *(&v45[2] + 1) = v12;
  *(&v45[1] + 1) = v10;
  sub_1B9F84D2C(&v35, v23);
  sub_1B9F42CEC(&v39, v23, sub_1B9F810DC);
  sub_1B9F4C230(&v44, sub_1B9F810DC);
  v23[0] = v22;
  v23[1] = v6;
  v23[2] = v8;
  v23[3] = v7;
  v23[4] = a2;
  v23[5] = KeyPath;
  v23[6] = 0;
  v24 = 0;
  return sub_1B9F84D64(v23);
}

uint64_t sub_1B9F844BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(v5 + 16))(v7, a1, v4);
    v10 = v9;
    swift_setAtReferenceWritableKeyPath();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B9F84604@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v3 = sub_1B9F8474C();
  KeyPath = swift_getKeyPath();
  v5 = sub_1B9F84ADC();
  v6 = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v3;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;

  sub_1B9F84D0C(KeyPath, 0, 0);
  sub_1B9F84D0C(v6, 0, 0);
  sub_1B9F84D1C(v6, 0, 0);

  return sub_1B9F84D1C(KeyPath, 0, 0);
}

BOOL sub_1B9F8474C()
{
  v1 = v0;
  v2 = sub_1BA4A5718();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v0 + *(type metadata accessor for DisclosureCellHeaderView(0) + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v14) = v8;
  v15 = v9;
  sub_1B9F640E8(0, &qword_1EDC5EB90, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1BA4A61B8();
  if (v13[15] != 1)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 56);
  if (*(v1 + 64) == 1)
  {
    if (v10 != 4)
    {
LABEL_4:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      return (v14 & 1) == 0;
    }
  }

  else
  {

    sub_1BA4A6FB8();
    v12 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v10, 0);
    (*(v3 + 8))(v6, v2);
    if (v14 != 4)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1B9F84978(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = (v3 + 32);
    swift_unknownObjectRetain();
    sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
    do
    {
      v12 = *v7;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v10, v13);
        v8 = v14;
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a2, a3, v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_1B9F3B8FC(v10, &qword_1EDC63A30, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling);
      }

      ++v7;
      --v4;
    }

    while (v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1B9F84ADC()
{
  v1 = v0;
  v2 = sub_1BA4A5718();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v0 + *(type metadata accessor for DisclosureCellHeaderView(0) + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v14) = v8;
  v15 = v9;
  sub_1B9F640E8(0, &qword_1EDC5EB90, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1BA4A61B8();
  if (v13[15] != 1)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 56);
  if (*(v1 + 64) == 1)
  {
    if (v10 != 4)
    {
LABEL_4:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      return (v14 & 2) == 0;
    }
  }

  else
  {

    sub_1BA4A6FB8();
    v12 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F80960(v10, 0);
    (*(v3 + 8))(v6, v2);
    if (v14 != 4)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void sub_1B9F84D0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B9F84D1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1B9F84DC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1B9F874E0(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F84E50(uint64_t a1)
{
  if (!qword_1EDC5EF98)
  {
    sub_1B9F84ED0(255, &qword_1EDC5F0B8, &qword_1EDC5F288, &type metadata for CellHeaderTitleView);
    sub_1B9F57FD4(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF98);
    }
  }
}

void sub_1B9F84ED0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1BA2C7780(255, a3, a4);
    sub_1B9F868B4(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B9F84F6C()
{
  result = qword_1EDC5EEB8;
  if (!qword_1EDC5EEB8)
  {
    sub_1BA2C3F4C(255, &qword_1EDC5EEB0, sub_1B9F84E50, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA2C7880(&qword_1EDC5EFA0, sub_1B9F84E50, sub_1B9F85130);
    sub_1B9F85270(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEB8);
  }

  return result;
}

uint64_t sub_1B9F85090(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA2C7780(255, a2, a3);
    a4();
    sub_1B9F87878(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9F85130()
{
  result = qword_1EDC5F0C0;
  if (!qword_1EDC5F0C0)
  {
    sub_1B9F84ED0(255, &qword_1EDC5F0B8, &qword_1EDC5F288, &type metadata for CellHeaderTitleView);
    sub_1B9F85090(&qword_1EDC5F290, &qword_1EDC5F288, &type metadata for CellHeaderTitleView, sub_1B9F8521C);
    sub_1B9F87878(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0C0);
  }

  return result;
}

unint64_t sub_1B9F8521C()
{
  result = qword_1EDC67DD0;
  if (!qword_1EDC67DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67DD0);
  }

  return result;
}

uint64_t sub_1B9F85270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B9F85360()
{
  v1 = [v0 userActivity];
  if (v1)
  {
    v2 = v1;
    [v0 submitUserActivityForRestoration_];
  }
}

void sub_1B9F85448(uint64_t a1)
{
  if (!qword_1EDC5EEF0)
  {
    sub_1B9F85838(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EEF0);
    }
  }
}

void sub_1B9F854A8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIViewController.submitUserActivityForRestoration(_:)(v4);
}

Swift::Void __swiftcall UIViewController.submitUserActivityForRestoration(_:)(NSUserActivity a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v5, v7).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 view];
  if (v11)
  {
    v12 = v11;
    v24 = [v11 window];

    if (v24)
    {
      v13 = [v24 windowScene];
      if (v13)
      {
        v14 = v13;
        [v13 setUserActivity_];
      }

      v15 = v24;
    }

    else
    {
      sub_1BA4A3E28();
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25[0] = v19;
        v25[1] = ObjectType;
        *v18 = 136446210;
        swift_getMetatypeMetadata();
        v20 = sub_1BA4A6808();
        v22 = sub_1B9F0B82C(v20, v21, v25);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s] Cannot save activity before view was attached to a window", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
        MEMORY[0x1BFAF43A0](v18, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F857B4(uint64_t a1)
{
  if (!qword_1EDC5F1E8)
  {
    sub_1B9F85D98(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F1E8);
    }
  }
}

uint64_t sub_1B9F85898(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DB8();
  (*(v5 + 16))(v8, a1, v4);

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6F88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v9;
    v16 = v15;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v16 = 136315394;
    sub_1B9F85D08(&qword_1EDC6E448, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v17 = sub_1BA4A82D8();
    v31 = a1;
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_1B9F0B82C(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v33 = v2;
    type metadata accessor for PersonalizedFeedTrainer();

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v34);

    *(v16 + 14) = v23;
    a1 = v31;
    _os_log_impl(&dword_1B9F07000, v13, v14, "feedDidBeginDisplay at date %s; %{public}s", v16, 0x16u);
    v24 = v29;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v24, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v32 + 8))(v12, v30);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v32 + 8))(v12, v9);
  }

  sub_1B9F8634C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v27 = (*(v25 + 16))(ObjectType, v25);
    swift_unknownObjectRelease();
    sub_1B9F51E70(v27, a1);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1B9F85C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B9F85D08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F85D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B9F85D98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t PersonalizedFeedTrainer.debugDescription.getter()
{
  swift_beginAccess();

  sub_1B9F85FB8(v0);

  sub_1B9F1D718();
  sub_1B9F85D08(&qword_1EDC6B660, sub_1B9F1D718, MEMORY[0x1E69E6310]);
  v1 = sub_1BA4A66D8();
  v3 = v2;

  sub_1BA4A7DF8();
  v4 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA505880);
  MEMORY[0x1BFAF1350](v1, v3);

  return 0;
}

void sub_1B9F85FB8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v31 = v32;
    v3 = v1 + 64;
    v4 = sub_1BA4A7C48();
    v5 = 0;
    v6 = *(v1 + 36);
    v26 = v1 + 72;
    v27 = v2;
    v28 = v6;
    v29 = v1 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v30 = v5;
      v9 = *(*(v1 + 48) + 8 * v4);
      sub_1BA4A7DF8();
      v10 = [v9 uniqueIdentifier];
      v11 = v1;
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v14 = v13;

      MEMORY[0x1BFAF1350](v12, v14);

      MEMORY[0x1BFAF1350](0x65657263736E6F20, 0xEE0020726F66206ELL);
      sub_1BA4A6CF8();
      MEMORY[0x1BFAF1350](115, 0xE100000000000000);

      v15 = v31;
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B9F1C360((v16 > 1), v17 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v3 = v29;
      v19 = *(v29 + 8 * v8);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v31 = v15;
      v6 = v28;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v26 + 8 * v8);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1BA0477A4(v4, v28, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1BA0477A4(v4, v28, 0);
      }

LABEL_4:
      v5 = v30 + 1;
      v4 = v7;
      if (v30 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_1B9F862CC()
{
  result = qword_1EDC5EEF8;
  if (!qword_1EDC5EEF8)
  {
    sub_1B9F85448(255);
    sub_1B9F863E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEF8);
  }

  return result;
}

uint64_t sub_1B9F8634C()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(v0 + 24) = v1;

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];

  *(v0 + 40) = 0;
  return result;
}

unint64_t sub_1B9F863E4()
{
  result = qword_1EDC5F040;
  if (!qword_1EDC5F040)
  {
    sub_1B9F85838(255);
    sub_1BA2D2640(&qword_1EDC5F1F0, sub_1B9F857B4, sub_1B9F5DB4C);
    sub_1B9F89514(&qword_1EDC5EC10, &qword_1EDC5EC08, &qword_1EDC6B640, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F040);
  }

  return result;
}

void sub_1B9F864BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F8650C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B9F8655C()
{
  sub_1B9F4803C(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v0 = sub_1BA4A1C68();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E69A3BF8], v0);
  v4 = sub_1B9F866AC(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  result = swift_deallocClassInstance();
  off_1EDC6CB60 = v4;
  return result;
}

uint64_t sub_1B9F866AC(uint64_t a1)
{
  v2 = sub_1BA4A1C68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B9F51E1C(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
  result = MEMORY[0x1BFAF17D0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B9F8699C(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

void sub_1B9F86848(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1BA267F88(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F868B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F64048(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F86930(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F8650C(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1BA4A5B08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B9F8699C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
  v34 = a2;
  v12 = sub_1BA4A6698();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BA0E7830(&qword_1EDC6E230, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C18]);
      v22 = sub_1BA4A6728();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B9F86C7C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B9F86C7C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BA304D58(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BA0E4ED4(MEMORY[0x1E69A3C08], sub_1BA0E7878);
      goto LABEL_12;
    }

    sub_1BA0E53CC(v12 + 1);
  }

  v14 = *v3;
  sub_1BA0E7830(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
  v15 = sub_1BA4A6698();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BA0E7830(&qword_1EDC6E230, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C18]);
      v23 = sub_1BA4A6728();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BA4A83A8();
  __break(1u);
  return result;
}

uint64_t sub_1B9F86FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9F8706C(uint64_t a1)
{
  if (!qword_1EDC5EF88)
  {
    sub_1B9F84ED0(255, &qword_1EDC5F0A8, &qword_1EDC5F278, &type metadata for CellHeaderDetailTextView);
    sub_1BA4A5B18();
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF88);
    }
  }
}

unint64_t sub_1B9F870EC()
{
  result = qword_1EDC5F0B0;
  if (!qword_1EDC5F0B0)
  {
    sub_1B9F84ED0(255, &qword_1EDC5F0A8, &qword_1EDC5F278, &type metadata for CellHeaderDetailTextView);
    sub_1B9F85090(&qword_1EDC5F280, &qword_1EDC5F278, &type metadata for CellHeaderDetailTextView, sub_1B9F87288);
    sub_1B9F87878(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0B0);
  }

  return result;
}

unint64_t sub_1B9F871D8()
{
  result = qword_1EDC5EF90;
  if (!qword_1EDC5EF90)
  {
    sub_1B9F8706C(255);
    sub_1B9F870EC();
    sub_1B9F85270(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF90);
  }

  return result;
}

unint64_t sub_1B9F87288()
{
  result = qword_1EDC664B0;
  if (!qword_1EDC664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC664B0);
  }

  return result;
}

void sub_1B9F87350(uint64_t a1)
{
  if (!qword_1EDC5F258)
  {
    sub_1B9F57FD4(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F258);
    }
  }
}

void sub_1B9F873B0(uint64_t a1)
{
  if (!qword_1EDC5EF40)
  {
    sub_1BA38F12C(255, &qword_1EDC5EF48, sub_1B9F8744C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF40);
    }
  }
}

void sub_1B9F8744C(uint64_t a1)
{
  if (!qword_1EDC5F088)
  {
    sub_1B9F87350(255);
    sub_1B9F874E0(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F088);
    }
  }
}

void sub_1B9F874E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F640E8(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B9F8755C()
{
  result = qword_1EDC5F090;
  if (!qword_1EDC5F090)
  {
    sub_1B9F8744C(255);
    sub_1B9F87720(&qword_1EDC5F260, sub_1B9F87350, sub_1B9F877D4);
    sub_1B9F878DC(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F090);
  }

  return result;
}

unint64_t sub_1B9F8762C()
{
  result = qword_1EDC5EF50;
  if (!qword_1EDC5EF50)
  {
    sub_1BA38F12C(255, &qword_1EDC5EF48, sub_1B9F8744C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1B9F8755C();
    sub_1B9F80C3C(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF50);
  }

  return result;
}

uint64_t sub_1B9F87720(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F80C3C(&qword_1EDC5EC70, sub_1B9F57FD4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9F877D4()
{
  result = qword_1EDC63A18;
  if (!qword_1EDC63A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63A18);
  }

  return result;
}

uint64_t sub_1B9F87828(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA0D4B24(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F87878(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F868B4(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F878DC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F874E0(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F87940(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA49A46C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void sub_1B9F879F0(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A5D68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F84E50(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v1;
  v35 = v1[1];
  v36 = v16;
  v17 = *(&v16 + 1);
  v32 = v35;
  v33 = v16;
  v31 = *(&v35 + 1);
  (*(v7 + 104))(v10, *MEMORY[0x1E6980EF0], v6);
  v18 = sub_1BA4A5C28();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_1B9F87E20(&v36, v34);
  sub_1B9F87F44(&v35, v34);
  sub_1BA4A5CB8();
  v19 = sub_1BA4A5CD8();
  sub_1B9F4C230(v5, sub_1B9F87DEC);
  (*(v7 + 8))(v10, v6);
  KeyPath = swift_getKeyPath();
  v21 = *(v1 + 4);
  v22 = swift_getKeyPath();
  v23 = (v15 + *(v12 + 36));
  sub_1B9F57FD4(0);

  sub_1BA4A54C8();
  *v23 = swift_getKeyPath();
  v24 = v32;
  *v15 = v33;
  v15[1] = v17;
  v25 = v31;
  v15[2] = v24;
  v15[3] = v25;
  v15[4] = KeyPath;
  v15[5] = v19;
  v15[6] = v22;
  v15[7] = v21;
  sub_1B9F640E8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B9FD0;
  *(v26 + 32) = sub_1BA38EC24();
  *(v26 + 40) = v27;
  *(v26 + 48) = 0x726564616548;
  *(v26 + 56) = 0xE600000000000000;
  *(v26 + 64) = 0x656C746954;
  *(v26 + 72) = 0xE500000000000000;
  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1B9F87720(&qword_1EDC5EFA0, sub_1B9F84E50, sub_1B9F85130);
    sub_1BA4A5F18();

    sub_1B9F4C230(v15, sub_1B9F84E50);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F87E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F87EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F87F44(uint64_t a1, uint64_t a2)
{
  sub_1B9F23398(0, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CellHeaderTitleView.body.getter()
{
  *&v5 = sub_1B9F881B0(*v0, v0[1], v0[2], v0[3]);
  *(&v5 + 1) = v1;
  LOBYTE(v6) = v2 & 1;
  *(&v6 + 1) = v3;
  *&v7 = swift_getKeyPath();
  BYTE8(v7) = 0;
  *v8 = swift_getKeyPath();
  v8[16] = 1;
  *&v8[17] = 256;
  sub_1B9F85448(0);
  sub_1B9F862CC();
  sub_1B9F252FC();
  sub_1BA4A5F78();
  v10[0] = *v8;
  *(v10 + 15) = *&v8[15];
  v9[1] = v6;
  v9[2] = v7;
  v9[0] = v5;
  return sub_1BA2D2A5C(v9, sub_1B9F85448);
}

uint64_t sub_1B9F880F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A5668();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F88148@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BA4A56C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B9F881B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1BA267E18(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    sub_1BA4A6158();
    sub_1BA4A5888();
    v13 = sub_1BA4A58B8();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    sub_1BA4A6168();

    sub_1BA2D2A5C(v12, sub_1BA267E18);
    sub_1BA4A57D8();
    sub_1BA4A57C8();
    sub_1BA4A57A8();
    sub_1BA4A57C8();
    sub_1BA4A57B8();
    sub_1BA4A57C8();
    sub_1BA4A5808();
    type metadata accessor for CellHeaderViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_1BA4A5DF8();

    return v16;
  }

  else
  {
    v18[2] = a1;
    v18[3] = a2;
    sub_1B9F252FC();

    return sub_1BA4A5E18();
  }
}

void sub_1B9F88464(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A5D68();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F8706C(0);
  v17 = v16;
  v20 = MEMORY[0x1EEE9AC00](v16, v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[1];
  if (v23 && (v1[2] & 1) != 0)
  {
    v38 = v19;
    v39 = a1;
    v40 = *v1;
    (*(v12 + 104))(v15, *MEMORY[0x1E6980F30], v11, v20);
    v24 = sub_1BA4A5C28();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);

    v25 = sub_1BA4A5CD8();
    sub_1B9F4C230(v10, sub_1B9F87DEC);
    (*(v12 + 8))(v15, v11);
    KeyPath = swift_getKeyPath();
    v27 = sub_1BA4A60F8();
    v28 = swift_getKeyPath();
    v45 = v40;
    v46 = v23;
    v47 = KeyPath;
    v48 = v25;
    v49 = v28;
    v50 = v27;
    sub_1B9F640E8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BA4B9FD0;
    v51 = *(v1 + 3);
    v52 = *(v1 + 40);
    v30 = v51;
    if (v52 == 1)
    {
    }

    else
    {

      sub_1BA4A6FB8();
      v33 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA0D5CF0(&v51);
      (*(v41 + 8))(v6, v42);
      v30 = v43;
      v31 = v44;
    }

    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    *(v29 + 48) = 0x726564616548;
    *(v29 + 56) = 0xE600000000000000;
    *(v29 + 64) = 1702125892;
    *(v29 + 72) = 0xE400000000000000;
    v34 = sub_1BA4A6AE8();

    v35 = HKUIJoinStringsForAutomationIdentifier();

    if (v35)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F88A08(0, &qword_1EDC5F0A8, &qword_1EDC5F278, &type metadata for CellHeaderDetailTextView);
      sub_1B9F870EC();
      sub_1BA4A5F18();

      v36 = v39;
      sub_1B9F88AA4(v22, v39);
      (*(v38 + 56))(v36, 0, 1, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = *(v19 + 56);

    v32(a1, 1, 1, v17, v20);
  }
}

void sub_1B9F88A08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F84DC4(255, a3, a4);
    sub_1B9F874E0(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B9F88AA4(uint64_t a1, uint64_t a2)
{
  sub_1B9F8706C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9F88B28(uint64_t a1)
{
  if (!qword_1EDC5F1D8)
  {
    sub_1B9F86930(255, &qword_1EDC5EC08, &qword_1EDC6B640, MEMORY[0x1E69E6530]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F1D8);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

void sub_1B9F88BC4(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v38) = a4;
  v9 = sub_1BA4A5718();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F8744C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA38F12C(0, &qword_1EDC5EF48, sub_1B9F8744C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v19 = v18;
  v22 = MEMORY[0x1EEE9AC00](v18, v20);
  v24 = &v35 - v23;
  if (a1)
  {
    v35 = v9;
    v36 = v21;
    sub_1B9F57FD4(0);
    sub_1BA4A54C8();
    *v17 = swift_getKeyPath();
    if (qword_1EDC5EBA0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDC5EBA8;
    KeyPath = swift_getKeyPath();
    v27 = (v17 + *(v14 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    sub_1B9F640E8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BA4B9FD0;

    if (v38)
    {
      sub_1B9F84D0C(a2, a3, 1);
    }

    else
    {
      sub_1B9F84D0C(a2, a3, 0);
      sub_1BA4A6FB8();
      v30 = sub_1BA4A5B28();
      v38 = a3;
      v31 = a5;
      v32 = v30;
      sub_1BA4A3CA8();

      a5 = v31;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1B9F84D1C(a2, v38, 0);
      (*(v37 + 8))(v12, v35);
      a2 = v39;
      a3 = v40;
    }

    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = 0x726564616548;
    *(v28 + 56) = 0xE600000000000000;
    *(v28 + 64) = 0x6E6F7276656843;
    *(v28 + 72) = 0xE700000000000000;
    v33 = sub_1BA4A6AE8();

    v34 = HKUIJoinStringsForAutomationIdentifier();

    if (v34)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F8755C();
      sub_1BA4A5F18();

      sub_1B9F4C230(v17, sub_1B9F8744C);
      sub_1B9F890A0(v24, a5);
      (*(v36 + 56))(a5, 0, 1, v19);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = *(v21 + 56);

    v29(a5, 1, 1, v19, v22);
  }
}

uint64_t sub_1B9F89060()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = sub_1BA4A6048();
  qword_1EDC5EBA8 = result;
  return result;
}

uint64_t sub_1B9F890A0(uint64_t a1, uint64_t a2)
{
  sub_1BA38F12C(0, &qword_1EDC5EF48, sub_1B9F8744C, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9F89168(uint64_t a1)
{
  if (!qword_1EDC5EFC8)
  {
    sub_1B9F89310(255, &qword_1EDC5F140, sub_1B9F89374, MEMORY[0x1E6981748]);
    sub_1B9F86848(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EFC8);
    }
  }
}

unint64_t sub_1B9F8920C()
{
  result = qword_1EDC5EFD0;
  if (!qword_1EDC5EFD0)
  {
    sub_1B9F89168(255);
    sub_1B9F893F0();
    sub_1B9F894C4(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EFD0);
  }

  return result;
}

void sub_1B9F892AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F89310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1BA4A5418();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B9F893A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F893F0()
{
  result = qword_1EDC5F148;
  if (!qword_1EDC5F148)
  {
    sub_1B9F89310(255, &qword_1EDC5F140, sub_1B9F89374, MEMORY[0x1E6981748]);
    sub_1B9F893A8(&qword_1EDC5EC30, sub_1B9F89374, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F148);
  }

  return result;
}

uint64_t sub_1B9F894C4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F86848(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F89514(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F86930(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B9F89570@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

void CellHeaderChevronAccessoryView.body.getter(uint64_t a1@<X8>)
{
  sub_1B9F89828(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1BA4A6128();
  v8 = (v6 + *(v3 + 44));
  sub_1B9F89374(0);
  v10 = *(v9 + 28);
  v11 = *MEMORY[0x1E69816C8];
  v12 = sub_1BA4A6188();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  if ([objc_opt_self() _preferredFontForTextStyle_variant_])
  {
    v13 = sub_1BA4A5D78();
    KeyPath = swift_getKeyPath();
    sub_1BA2D2524(v6, a1);
    sub_1B9F89168(0);
    v16 = (a1 + *(v15 + 36));
    *v16 = KeyPath;
    v16[1] = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F897D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A56A8();
  *a1 = result;
  return result;
}

void sub_1B9F89828(uint64_t a1)
{
  if (!qword_1EDC5F140)
  {
    sub_1B9F89374(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F140);
    }
  }
}

void sub_1B9F898D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentConfigurationHostCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F28();

  [v0 bounds];
  if (v1 != CGRectGetWidth(v3))
  {

    [v0 bounds];
    CGRectGetWidth(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F38();
  }
}

void sub_1B9F89A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B9F53A5C(255);
    a3(255);
    sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C, MEMORY[0x1E69E6338]);
    v5 = sub_1BA4A6318();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B9F89AF8()
{
  result = qword_1EDC5EA50;
  if (!qword_1EDC5EA50)
  {
    sub_1B9F89A30(255, &qword_1EDC5EA48, sub_1B9F7C3E8);
    sub_1BA4A49F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EA50);
  }

  return result;
}

void sub_1B9F89BD0()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 systemGray3Color];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v9[4] = sub_1B9F7EC80;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B9F7EBBC;
  v9[3] = &block_descriptor_98;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v1;
  [v4 initWithDynamicProvider_];
  _Block_release(v5);

  v8 = sub_1BA4A6048();

  qword_1EDC84C20 = v8;
}

uint64_t sub_1B9F89D20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B9F89D98(uint64_t a1)
{
  if (!qword_1EDC5ED60)
  {
    sub_1B9F80198();
    v1 = sub_1BA4A58F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5ED60);
    }
  }
}

unint64_t sub_1B9F89DFC()
{
  result = qword_1EDC5ED68;
  if (!qword_1EDC5ED68)
  {
    sub_1B9F89D98(255);
    sub_1B9F801F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED68);
  }

  return result;
}

uint64_t sub_1B9F89E7C()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  v2 = v4[1];
  *v1 = v4[0];
  v1[1] = v2;
}

void sub_1B9F89ED0(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = [*(a1 + 24) tabBarController];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 sidebar];
    [v7 isHidden];

    type metadata accessor for HealthAppInteractionAnalyticEvent();
    sub_1B9F2240C(&qword_1EDC69CD0, v8, type metadata accessor for HealthAppInteractionAnalyticEvent, &protocol conformance descriptor for HealthAppInteractionAnalyticEvent);
    v9 = sub_1BA4A2C98();
    v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v12 = v11;
  }

  else
  {
    sub_1B9F2240C(&qword_1EDC69CD0, v5, type metadata accessor for HealthAppInteractionAnalyticEvent, &protocol conformance descriptor for HealthAppInteractionAnalyticEvent);
    v10 = sub_1BA4A2CB8();
    v12 = v13;
  }

  *a3 = v10;
  a3[1] = v12;
}

unint64_t sub_1B9F8A01C()
{
  result = qword_1EDC66150;
  if (!qword_1EDC66150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66150);
  }

  return result;
}

uint64_t sub_1B9F8A088(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v12 = a2();
    v13 = 0;
    LOBYTE(v14) = 1;
    swift_unknownObjectRetain();
    DelayedDataSource.dataSourceState.setter(&v12);
    v10 = (*(a5 + 40))(a4, a5);
    [v10 registerObserver_];

    type metadata accessor for DelayedDataSource(0, a4, a5, v11);
    SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DelayedDataSource.dataSourceState.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BA4A4F38();
}

uint64_t sub_1B9F8A254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1B9F8A2E4(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v18 - v14;
  (*(a5 + 8))(a4, a5, v13);
  v16 = sub_1BA4A6758();

  (*(a5 + 16))(a4, a5);
  v17 = sub_1BA4A4588();
  (*(v11 + 8))(v15, v10);
  [a1 snapshotDidChangeWithDataSourceID:v16 snapshot:v17 animated:a3 & 1];
}

unint64_t sub_1B9F8A46C()
{
  result = qword_1EDC5F230;
  if (!qword_1EDC5F230)
  {
    sub_1B9F80578(255);
    sub_1B9F8A8E4(&qword_1EDC5ECF0, &qword_1EDC5ECE8, sub_1B9F8A01C, &type metadata for PlatformCellCornerRadius);
    sub_1B9F8AA5C(&qword_1EDC5F338, sub_1B9F80620, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F230);
  }

  return result;
}

void sub_1B9F8A548(uint64_t a1, char a2)
{
  v4 = *v2;
  sub_1B9F35348();
  if (v6 == 1)
  {
    type metadata accessor for HideableDataSource(0, *(v4 + 80), *(v4 + 88), v5);

    SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(a2 & 1);
  }
}

void sub_1B9F8A600(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2();
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1B9F32D84(0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    swift_getKeyPath();
    aBlock = v5;
    v14 = 0;
    LOBYTE(v15) = 1;

    sub_1BA4A4F38();
    swift_beginAccess();
    [*(v5 + 16) registerObserver_];
    swift_beginAccess();
    v9 = *(v4 + 16);
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = 1;
    v17 = sub_1BA2AE790;
    v18 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1B9F8A254;
    v16 = &block_descriptor_32;
    v11 = _Block_copy(&aBlock);

    v12 = v9;

    [v12 notifyObservers_];
    _Block_release(v11);
  }
}

__n128 sub_1B9F8A858(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F8A864()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F8A89C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F8A8E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F806B4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B9F8A934(void (*a1)(void), uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    a1();
  }

  v8 = objc_allocWithZone(type metadata accessor for SignificantTrendsDataSource(0));
  v9 = a4;

  v10 = SignificantTrendsDataSource.init(context:sourceProfile:additionalPredicates:)(a3, a4, a5);
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  v11 = sub_1BA4A70E8();
  v12 = sub_1BA4A6758();
  v13 = [v11 BOOLForKey_];

  sub_1B9F32D84(0);
  swift_allocObject();
  v14 = sub_1BA2AE974(v10, v13 ^ 1u, sub_1BA2AEB40);

  return v14;
}

uint64_t sub_1B9F8AA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *SignificantTrendsDataSource.init(context:sourceProfile:additionalPredicates:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BA4A1D38();
  v9 = sub_1BA4A7578();

  v10 = [v9 fetchRequest];
  v11 = _s18HealthExperienceUI27SignificantTrendsDataSourceC9predicate7context13sourceProfile20additionalPredicatesSo11NSPredicateCSo22NSManagedObjectContextC_0A8Platform0gK0OSayAIGtFZ_0(a1, a2, a3);

  [v10 setPredicate_];

  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v26[4] = xmmword_1EDC6D458;
  v26[5] = *&qword_1EDC6D468;
  v26[6] = xmmword_1EDC6D478;
  v26[7] = xmmword_1EDC6D488;
  v26[0] = xmmword_1EDC6D418;
  v26[1] = *&qword_1EDC6D428;
  v26[2] = xmmword_1EDC6D438;
  v26[3] = xmmword_1EDC6D448;
  v12 = xmmword_1EDC6D418;
  v25 = qword_1EDC6D428;
  v24 = xmmword_1EDC6D418;
  v13 = unk_1EDC6D430;
  v15 = xmmword_1EDC6D438;
  v14 = xmmword_1EDC6D448;
  v23 = *(&xmmword_1EDC6D478 + 1);
  v21 = *(&xmmword_1EDC6D458 + 8);
  v22 = *&qword_1EDC6D470;
  v20 = *(&xmmword_1EDC6D448 + 8);
  v16 = *(&xmmword_1EDC6D488 + 1);
  sub_1B9F1D9A4(v26, &v27);
  sub_1B9F1DA18(v13, v15, *(&v15 + 1), v14);
  v17 = (v4 + qword_1EDC61AF0);
  *v17 = sub_1BA2AE1B0;
  v17[1] = 0;
  v18 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v9);

  v27 = v24;
  v29 = 0u;
  v30 = 0u;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v28 = v25;
  v34 = v23;
  v35 = v12;
  v36 = v16;
  sub_1B9F1DA58(&v27);
  return v18;
}

id _s18HealthExperienceUI27SignificantTrendsDataSourceC9predicate7context13sourceProfile20additionalPredicatesSo11NSPredicateCSo22NSManagedObjectContextC_0A8Platform0gK0OSayAIGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA4A1D38();
  v4 = MEMORY[0x1BFAF1FA0](5, v3);

  v14 = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v7 = v6;
  if (v4)
  {
    v8 = v6;
    MEMORY[0x1BFAF1510]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v5 = v13;
  }

  sub_1B9F5ACE4(&v14, sub_1B9F8AE1C);

  sub_1B9F33948(v9);
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v10 = sub_1BA4A6AE8();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

void sub_1B9F8AE1C(uint64_t a1)
{
  if (!qword_1EDC6B628)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B630, 0x1E696AE18);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B628);
    }
  }
}

void sub_1B9F8AECC()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue];
  if (!v1)
  {
    return;
  }

  v2 = [v1 commandBuffer];
  if (!v2)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState];
  if (v3)
  {
    v4 = v2;
    swift_unknownObjectRetain();
    if ([v0 isDrawableAvailable])
    {
      v5 = [v0 nextDrawable];
      if (v5)
      {
        v6 = v5;
        v7 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer;
        v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer];
        if (v8)
        {
          v9 = [swift_unknownObjectRetain() contents];
          v10 = v8;
          v11 = &v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
          swift_beginAccess();
          v12 = *(v11 + 1);
          v13 = *(v11 + 2);
          v14 = *(v11 + 3);
          v15 = *(v11 + 4);
          *v9 = *v11;
          v9[1] = v12;
          v9[2] = v13;
          v9[3] = v14;
          v9[4] = v15;
        }

        v16 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
        v17 = [v16 colorAttachments];
        v18 = [v17 objectAtIndexedSubscript_];

        if (v18)
        {
          [v18 setTexture_];

          swift_unknownObjectRelease();
          v19 = [v4 renderCommandEncoderWithDescriptor_];
          if (v19)
          {
            v20 = v19;
            [v19 setRenderPipelineState_];
            [v20 setVertexBuffer:*&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] offset:0 atIndex:0];
            [v20 setFragmentBuffer:*&v0[v7] offset:0 atIndex:0];
            [v20 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v20 endEncoding];
            swift_unknownObjectRelease();
          }

          [v4 presentDrawable_];
          [v4 commit];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void sub_1B9F8B25C(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void sub_1B9F8B2F8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    v13[1] = ObjectType;
    *v8 = 136315394;
    swift_getMetatypeMetadata();
    v10 = sub_1BA4A6808();
    v12 = sub_1B9F0B82C(v10, v11, v13);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1B9F0B82C(0x29287472617473, 0xE700000000000000, v13);
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  sub_1B9F8B4F8();
  sub_1B9F8BA70();
}

void sub_1B9F8B4F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    v20[1] = ObjectType;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v12 = sub_1BA4A6808();
    v14 = sub_1B9F0B82C(v12, v13, v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4FBC20, v20);
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%s] %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  [v16 addObserver:v1 selector:sel_didBecomeActiveWithNotification_ name:*MEMORY[0x1E69DDAB0] object:0];

  v17 = [v15 defaultCenter];
  [v17 addObserver:v1 selector:sel_didEnterBackgroundWithNotification_ name:*MEMORY[0x1E69DDAC8] object:0];

  v18 = [v15 defaultCenter];
  if (qword_1EDC5E428 != -1)
  {
    swift_once();
  }

  [v18 addObserver:v1 selector:? name:? object:?];

  v19 = [v15 defaultCenter];
  if (qword_1EDC5E400 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v1 selector:? name:? object:?];
}

uint64_t sub_1B9F8B874()
{
  result = sub_1BA4A6758();
  qword_1EDC5E430 = result;
  return result;
}

uint64_t sub_1B9F8B8B8()
{
  result = sub_1BA4A6758();
  qword_1EDC5E408 = result;
  return result;
}

void sub_1B9F8B8F0(void *a1, uint64_t a2, char a3, void *a4, uint64_t *a5)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  v15 = sub_1BA4A6758();
  v16 = *a5;
  swift_beginAccess();
  (*(v11 + 16))(v14, a2 + v16, v10);
  v17 = sub_1BA4A4588();
  (*(v11 + 8))(v14, v10);
  [a1 snapshotDidChangeWithDataSourceID:v15 snapshot:v17 animated:a3 & 1];
}

void sub_1B9F8BA70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v52 - v14;
  v16 = v0 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener_applicationStateProvider;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55 = v24;
      *v23 = 136315394;
      v56 = ObjectType;
      swift_getMetatypeMetadata();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v55);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FBC00, &v55);
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] %s app is not active", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return;
  }

  v18 = Strong;
  v19 = *(v16 + 8);
  v20 = swift_getObjectType();
  if ((*(v19 + 8))(v20, v19))
  {

    goto LABEL_4;
  }

  v28 = sub_1B9F8C62C();
  v29 = [v28 operations];

  sub_1B9F0ADF8(0, &qword_1EDC6B638, 0x1E696ADC0);
  v30 = sub_1BA4A6B08();

  if (v30 >> 62)
  {
    v39 = sub_1BA4A7CC8();

    if (v39)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v31)
    {
LABEL_10:
      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v32 = sub_1BA4A3E88();
      v33 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55 = v35;
        *v34 = 136315394;
        v56 = ObjectType;
        swift_getMetatypeMetadata();
        v36 = sub_1BA4A6808();
        v38 = sub_1B9F0B82C(v36, v37, &v55);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FBC00, &v55);
        _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] %s operation is ongoing - not queueing another", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v35, -1, -1);
        MEMORY[0x1BFAF43A0](v34, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v11, v3);
      return;
    }
  }

  v40 = [objc_allocWithZone(sub_1BA4A3528()) init];
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v41 = v40;
  v42 = sub_1BA4A3E88();
  v43 = sub_1BA4A6FC8();

  v54 = v42;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v44 = 136315650;
    v56 = ObjectType;
    swift_getMetatypeMetadata();
    v45 = sub_1BA4A6808();
    v47 = sub_1B9F0B82C(v45, v46, &v55);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FBC00, &v55);
    *(v44 + 22) = 2112;
    *(v44 + 24) = v41;
    v48 = v52;
    *v52 = v41;
    v49 = v41;
    v50 = v54;
    _os_log_impl(&dword_1B9F07000, v54, v43, "[%s] %s queueing %@", v44, 0x20u);
    sub_1B9F8C6C8(v48);
    MEMORY[0x1BFAF43A0](v48, -1, -1);
    v51 = v53;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v51, -1, -1);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v15, v3);
  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener____lazy_storage___queue) addOperation_];
}

uint64_t sub_1B9F8C0E8()
{
  v1 = *v0;
  v9 = v0;
  v10 = v1;
  if ([objc_opt_self() isMainThread])
  {
    sub_1BA346C34(v0, aBlock);
    return aBlock[0];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v12 = 0;
  v13 = 0;
  v3 = sub_1BA4A7308();
  v4 = swift_allocObject();
  v4[2] = &v12;
  v4[3] = sub_1BA3477DC;
  v4[4] = &v8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B9F89D60;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1B9F7B0CC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_39_0;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else if (v13)
  {
    v2 = v12;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F8C310(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1B9F8C354()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  if (*(v0 + 40) == 1)
  {
    sub_1BA4A1718();
    sub_1B9F85898(v9);
    v10 = *(v2 + 8);
    v10(v9, v1);
    sub_1BA4A1718();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 56);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 16))(ObjectType, v11);
      swift_unknownObjectRelease();
      sub_1B9F51E70(v13, v5);

      v10(v5, v1);
      *(v0 + 40) = 0;
    }

    else
    {
      sub_1BA4A8018();
      __break(1u);
    }
  }
}

uint64_t sub_1B9F8C540(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1BA4A1018();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

id sub_1B9F8C62C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29InteractiveGenerationListener____lazy_storage___queue);
  }

  else
  {
    v4 = v0;
    sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
    v5 = sub_1BA4A7188();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1B9F8C6C8(uint64_t a1)
{
  sub_1B9F7EC24(0, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F8C8C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9F8C8E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProminentMessageWithActionTileViewWithImage.ViewModel.Padding(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_1B9F8C97C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1B9F8C9E4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1B9F8CA5C@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_1B9F8CAF4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

__n128 sub_1B9F8CBB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F8CBD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *sub_1B9F8CC34@<X0>(void *a1@<X8>)
{
  sub_1B9F5B440();
  result = sub_1BA4A5728();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B9F8CE20(uint64_t *a1)
{
  sub_1B9F2AC84(255, &qword_1EDC5EBF8, sub_1B9F2ACE8, MEMORY[0x1E6980A08]);
  sub_1BA4A5418();
  sub_1B9FD1ED8();
  return swift_getWitnessTable();
}

uint64_t sub_1B9F8CEBC(uint64_t *a1)
{
  sub_1B9F5FA28(255, &qword_1EBBE9780, MEMORY[0x1E69E6158], MEMORY[0x1E6980A08]);
  sub_1BA4A5418();
  sub_1B9FD1F60();
  return swift_getWitnessTable();
}

uint64_t sub_1B9F8CF4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

id sub_1B9F8CFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9FD2248();
  *a1 = result;
  return result;
}

void sub_1B9F8CFD8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___textLabel) = *a1;
  v3 = v2;
}

id sub_1B9F8D028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9FD225C();
  *a1 = result;
  return result;
}

void sub_1B9F8D054(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileCollectionViewListCell____lazy_storage___detailTextLabel) = *a1;
  v3 = v2;
}

double sub_1B9F8D0A4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI21YouAreSharingWithItem_uniqueIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F8D100()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8D150()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B9F8D1E4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1BA4A2BF8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1BA4A2B98();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1B9F7B6A0(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1B9F8D350(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1BA4A2BF8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1BA4A2B98();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1B9F7B6A0(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

double sub_1B9F8D4BC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_1B9F8D638()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8D670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI18HeaderWithIconView_item;
  swift_beginAccess();
  return sub_1B9FE9290(v3 + v4, a2, sub_1B9F7B6F8);
}

uint64_t sub_1B9F8D6E4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  MEMORY[0x1BFAF44B0](v0 + 104);
  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1B9F8D764()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B9F8D7AC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8D7E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8D81C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F8D860()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8D898()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8D8D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1B9F8D918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1B9F8D95C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

double sub_1B9F8D9AC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_1B9F8D9FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8DA34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8DA6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B9F8DAD4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1B9F8DB4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F8DB58()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8DB90()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8DBC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8DC04()
{
  sub_1B9F2BB4C(*(v0 + 24), *(v0 + 32));
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F8DC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9F8DCC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BA4A1728();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B9F8DD64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F8DDC0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI50MedicationsAffectHeartRateOnboardingViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F8DE24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F8DEE4@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F8DF9C()
{
  v1 = sub_1BA4A3778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9F8E034()
{
  v1 = sub_1BA4A3778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B9F8E0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F8E138()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8E174()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F8E1B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8E1F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8E22C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1B9F8E2CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F8E38C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8E3DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *sub_1B9F8E420@<X0>(_BYTE *a1@<X8>)
{
  sub_1B9F7F1F8();
  result = sub_1BA4A5728();
  *a1 = v3;
  return result;
}

uint64_t sub_1B9F8E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTileViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1B9F8E5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PromptTileViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

double sub_1B9F8E678@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F8E6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32AdvertisableFeatureTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F8E744()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8E77C()
{
  v1 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = v1[5];
  v7 = sub_1BA4A1148();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B9F8E8EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B9F8E93C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 80) = v2;
  *(v4 + 88) = v3;
  return result;
}

uint64_t sub_1B9F8E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
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
    v12 = *(a1 + *(a3 + 24));
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

void sub_1B9F8EA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA01C6A0(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }
}

uint64_t sub_1B9F8EB78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8EBB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8EC00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8EC38()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

id sub_1B9F8EC7C@<X0>(void *a1@<X8>)
{
  v2 = sub_1B9F13650();
  *a1 = v2;

  return v2;
}

__n128 sub_1B9F8ECF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1B9F8ED30@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA024240();
  *a1 = v2;

  return v2;
}

id sub_1B9F8EDA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA020BB4();
  *a1 = result;
  return result;
}

void sub_1B9F8EDD0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BA024C28(v1);
}

uint64_t sub_1B9F8EE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27AddToFavoritesTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F8EE98()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F8EED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8EF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BA4A1C68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B9F8F050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BA4A1C68();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1B9F8F190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F8F1EC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F8F250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA02B570();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9F8F27C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1B9F8F2D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8F314()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F354()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_1B9F8F3A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B9F8F3EC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_1B9F8F43C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F8F4F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8F52C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B9F8F574()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9F8F5AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F5E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F61C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8F65C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA03575C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1B9F8F6C4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B9F8F6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F8F710()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8F80C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8F854()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F88C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F8F8C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F904()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F8F940()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1B9F8F9B4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F8FA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  return sub_1BA0449E0(v3 + v4, a2);
}

uint64_t sub_1B9F8FA64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9F8FAC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F8FB04()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B9F8FB94()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F8FC00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B9F8FC5C(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);
  v5 = *a1;
  return v4(v2, v3);
}

double sub_1B9F8FCD0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

double sub_1B9F8FD2C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

id sub_1B9F8FD7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

double sub_1B9F8FDD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;

  return result;
}

double sub_1B9F8FE28@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;

  return result;
}

id sub_1B9F8FE78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B9F8FED4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1B9F8FF1C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_1B9F8FF88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F8FFC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9003C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F900CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F90124()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F90188()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F901C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F90218()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F90254()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9029C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F902D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F90314()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9034C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9038C()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1B9F903EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v3)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_1B9F0F1B8(v3, v2);
}

uint64_t sub_1B9F90404(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  sub_1B9F0F1B8(*a1, a1[1]);
  result = sub_1B9F0E310(v5, v6);
  *(a2 + 64) = v3;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_1B9F90464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ResettableCalendarDateDisplayCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F904C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F90504()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B9F90598(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A33C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9F90644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BA4A33C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B9F906EC@<X0>(void *a1@<X8>)
{
  v2 = sub_1B9F1E1BC();
  *a1 = v2;

  return v2;
}

__n128 sub_1B9F90760(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

double sub_1B9F907A8@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BA07CFDC();

  return result;
}

uint64_t sub_1B9F90824()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F90874()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

void *sub_1B9F908D4@<X0>(uint64_t a1@<X8>)
{
  sub_1BA07E7A0(0);
  result = sub_1BA4A2DA8();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B9F9096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA07E7A0(0);
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1B9F90A38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA07E7A0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

id sub_1B9F90BB0@<X0>(uint64_t a1@<X8>)
{
  result = HKCodableSummaryTrendChartViewModel.coveredTimeScope.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1B9F90BE4(uint64_t a1, id *a2)
{
  if (*(a1 + 8))
  {
    v2 = -1;
  }

  else
  {
    v2 = *a1;
  }

  return [*a2 setCoveredTimeScopeRawValue_];
}

double sub_1B9F90C0C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

id sub_1B9F90C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

id sub_1B9F90CB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

double sub_1B9F90D14@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;

  return result;
}

double sub_1B9F90D64@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F90DB4()
{
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9F90E88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F90EC0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F90EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F90F30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F90F88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F90FC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F91000()
{
  v1 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A33C8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B9F91110()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F91170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19PickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

__n128 sub_1B9F91210(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F91220()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F91258()
{
  if (*(v0 + 48) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F912A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F912E0()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F91328()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F91370()
{
  v1 = sub_1BA4A1A48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double sub_1B9F913F8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B9F91478@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F91530@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F91580(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1B9F915E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F915F0(uint64_t *a1)
{
  sub_1B9F7F04C(255);
  sub_1BA4A5418();
  sub_1B9F7F1C4(255);
  sub_1BA4A5418();
  v1 = MEMORY[0x1E6980A18];
  sub_1B9F7F2C0(&qword_1EDC5EC00, sub_1B9F7F04C, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1B9F7F2C0(&qword_1EDC5ECB8, sub_1B9F7F1C4, v1);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

double sub_1B9F91724@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_1EBBEB228;
  *a1 = xmmword_1EBBEB228;
  return result;
}

uint64_t sub_1B9F91770(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_beginAccess();
  *&xmmword_1EBBEB228 = v1;
  *(&xmmword_1EBBEB228 + 1) = v2;
  return result;
}

double sub_1B9F917C0@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_1EBBEB238;
  *a1 = qword_1EBBEB238;
  return result;
}

uint64_t sub_1B9F9180C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EBBEB238 = v1;
  return result;
}

double sub_1B9F9185C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_1EBBEB240;
  *a1 = qword_1EBBEB240;
  return result;
}

uint64_t sub_1B9F918A8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EBBEB240 = v1;
  return result;
}

uint64_t sub_1B9F918F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  swift_beginAccess();
  return sub_1BA097B20(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

double sub_1B9F91984@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_1EBBEB248;
  *a1 = qword_1EBBEB248;
  return result;
}

uint64_t sub_1B9F919D0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1EBBEB248 = v1;
  return result;
}

uint64_t sub_1B9F91A20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A33C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A3428();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B9F91B44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BA4A33C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A3428();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B9F91C68@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  result = sub_1BA4A65C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F91CB4(void **a1)
{
  v1 = *a1;
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  v2 = v1;
  return sub_1BA4A65D8();
}

uint64_t sub_1B9F91D10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummaryAlertDataModel(0);
  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  result = sub_1BA4A65C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F91D78(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
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
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1BA4A1728();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1BA4A2BF8();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

void sub_1B9F91F68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1BA09C38C(0, &qword_1EDC5E8C0, &qword_1EDC6E920, 0x1E696C2E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return;
  }

  v13 = sub_1BA4A1728();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1BA4A2BF8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  sub_1BA09C38C(0, &qword_1EDC5E898, &qword_1EDC6E380, 0x1E69DC888);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[9];

  v19(v20, a2, a2, v18);
}

uint64_t sub_1B9F92168()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F921A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F921E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29SelectableCellStyleFooterView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9224C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F92284()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F922C4()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F922FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F92334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalendarDatePickerItem(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_1B9F0F1B8(v4, v5);
}

uint64_t sub_1B9F92394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36CalendarDatePickerCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1B9F9240C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A1798();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9F924B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BA4A1798();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9F9255C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F92598()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F925D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B9F92608@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F92658()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F92690()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F926E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B9F92720()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F92758()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F92798()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F927D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9281C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F92864()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B9F9289C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBEB528;
  *a1 = qword_1EBBEB520;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B9F928F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

id sub_1B9F92950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F929BC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F929F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1B9F92A2C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F92A7C()
{
  v1 = sub_1BA4A30B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double sub_1B9F92B48@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F92BA4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F92C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  return sub_1BA04B338(v3 + v4, a2);
}

uint64_t sub_1B9F92CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F92D00@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EDC66668;
  return result;
}

uint64_t sub_1B9F92D4C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EDC66668 = v1;
  return result;
}

double sub_1B9F92D94@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBEB788;
  *a1 = qword_1EBBEB780;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B9F92DE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.rootNavigationMode.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_1B9F92E58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F92E74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_showsBackground;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1B9F92ED0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton);
  if (result)
  {
    result = [result isUserInteractionEnabled];
  }

  *a2 = result;
  return result;
}

id sub_1B9F92F14(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton;
  result = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_primaryButton);
  if (result)
  {
    [result setUserInteractionEnabled_];
    result = *(v3 + v4);
    if (result)
    {

      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

id sub_1B9F92F84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45CameraScannerOverlayWithButtonsViewController_overlayView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F92FF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F93084(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BA4A0FA8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9F93130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1BA4A0FA8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9F931E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1B9F87E7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1B9F9331C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1B9F87E7C(0, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1B9F93450(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1BA0D0F10(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F934FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1BA0D0F10(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F935E8(uint64_t a1, uint64_t a2)
{
  sub_1BA0D5924(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F9364C(uint64_t a1, uint64_t a2)
{
  sub_1BA0D5924(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F936C0()
{
  sub_1B9F84D1C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9F9372C()
{
  v1 = type metadata accessor for ProminentMessageWithActionTileViewWithImage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1B9F84D1C(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v1 + 20);
  sub_1B9F87E7C(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BA4A53C8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);

  v9 = *(type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0) + 32);
  v10 = sub_1BA4A2BF8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1B9F939DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F93A34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBC094D8;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

id sub_1B9F93A94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA0D7B3C();
  *a1 = result;
  return result;
}

void sub_1B9F93AC0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController);
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = *a1;
  v3 = v2;
}

uint64_t sub_1B9F93B10()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9F93B50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F93B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1BA0DA5D4(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1BA4A1728();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B9F93CF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1BA0DA5D4(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1BA4A1728();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B9F93E54()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1B9F93E8C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_1B9F93F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
  swift_beginAccess();
  return sub_1BA0E6D6C(v3 + v4, a2, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
}

uint64_t sub_1B9F93F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

id sub_1B9F93FC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

double sub_1B9F94028@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1B9F94088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F940E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1B9F94148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F9417C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F94234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  return sub_1BA0FF914(v3 + v4, a2, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1B9F942B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1B9F94308(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_isFullWidthButton;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1BA0FE74C();
}

uint64_t sub_1B9F94360()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F94418(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B9F94460()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9449C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F944DC@<X0>(void *a1@<X8>)
{
  sub_1BA1035E4();
  v3 = v2;
  result = swift_allocObject();
  *(result + 16) = sub_1BA1047C8;
  *(result + 24) = v3;
  *a1 = sub_1BA104ABC;
  a1[1] = result;
  return result;
}

uint64_t sub_1B9F94548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F945A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9F945F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9F94644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void *sub_1B9F946B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
  return result;
}

void *sub_1B9F946D8(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_1B9F946F8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
  return result;
}

void *sub_1B9F94720(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_1B9F94740@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = v3;
  return result;
}

void *sub_1B9F94768(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1B9F94788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5(a1);
  }

  else
  {
    v10 = sub_1BA4A80C8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B9F94864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);
    v5 = *(a4 + 16);

    return v7(a1, a2, a2, v5);
  }

  else
  {
    v11 = sub_1BA4A80C8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    return v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1B9F94960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F949B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9F94A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
  swift_beginAccess();
  return sub_1BA10C8F0(v3 + v4, a2);
}

uint64_t sub_1B9F94A6C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F94AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B9F94B3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F94B74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94BAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F94BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94C40()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1B9F94CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F94D04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 248, 7);
}

uint64_t sub_1B9F94D9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F94DE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1B9F94E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_item;
  swift_beginAccess();
  return sub_1BA127678(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1B9F94F00()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94F38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94F70()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94FA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F94FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *sub_1B9F95030@<X0>(char **a1@<X8>)
{
  result = sub_1BA131178();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F9505C(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI30DataTypeMostRecentSamplesQuery____lazy_storage___allowedMetadataKeys) = *a1;
}

uint64_t sub_1B9F950A8()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F950E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F95120()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F95160()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F95198()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F951D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F95208()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9F95258(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1B9F952B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F952F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9F95354()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F953A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F95420()
{
  v1 = sub_1BA4A33C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B9F954BC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F95574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17SharingPausedCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F955DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F95614()
{
  v1 = sub_1BA4A33C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B9F956B0()
{
  v1 = sub_1BA4A33C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9F95774()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F957C4()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F95800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F95858(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9F958AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F958E4()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9591C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F9595C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HostedProminentMessageWithActionTileViewWithImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;

  v10 = *(type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0) + 32);
  v11 = sub_1BA4A2BF8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  v13 = v9 + *(v5 + 36);
  if (*v13)
  {

    if (*(v13 + 32))
    {
      __swift_destroy_boxed_opaque_existential_1((v13 + 8));
    }

    v14 = *(v13 + 56);
    if (v14 >> 60 != 15)
    {
      sub_1B9F2BB4C(*(v13 + 48), v14);
    }
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1B9F95B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1B9F95C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1B9F95CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F95D48()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B9F95DB8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F95DF0()
{
  v1 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A33C8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B9F95F0C()
{

  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_1B9F95F94()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F95FCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9600C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F96044()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F96094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27TipWithActionViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v3 + v4, a2);
}

uint64_t sub_1B9F960F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F96144(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F961B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F96214()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9624C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F96288()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F962C0()
{

  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9F96320()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F96370()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B9F963E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F96424()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9645C(uint64_t a1, uint64_t a2)
{
  sub_1B9F140B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B9F964C8(uint64_t a1, uint64_t a2)
{
  sub_1B9F140B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B9F96538()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F96590()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B9F965D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B9F96620()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B9F96658()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F96690()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F966D4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F9671C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F96780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  return sub_1B9F374E8(v3 + v4, a2, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
}

uint64_t sub_1B9F967F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F96850(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1B9F968A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F96910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9F23FB0();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F9693C(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource) = *a1;
}

uint64_t sub_1B9F96988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F969FC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F96A34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

double sub_1B9F96A94@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F96AF4()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F96B2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F96B6C()
{
  v1 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1BA4A33C8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B9F96C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F96CCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F96D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F96D5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F96D94()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B9F96DEC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F96E24()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B9F96E94()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B9F96EEC()
{

  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

double sub_1B9F96F84@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F96FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA175668(0, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
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

void sub_1B9F970D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BA175668(0, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1B9F971C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F97228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  return sub_1BA178CF0(v3 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1B9F972B4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F97374()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F973AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

id sub_1B9F973F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1B9F97460@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F974D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F97530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a2);
}

uint64_t sub_1B9F97590()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F975C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F97644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F976AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F976F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F97750()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F97790()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F977C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9780C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F97924()
{

  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1B9F979A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1BA0FFEB8;
  a2[1] = v5;
}

uint64_t sub_1B9F97A1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F97A74(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9F97AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  swift_beginAccess();
  return sub_1BA18FCFC(v3 + v4, a2, &qword_1EBBED2F0, type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext);
}

uint64_t sub_1B9F97B44(uint64_t a1, uint64_t a2)
{
  sub_1BA18FD68(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B9F97BCC(uint64_t a1, uint64_t a2)
{
  sub_1BA18FD68(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B9F97C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F97C94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F97CE0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  *(a2 + *(type metadata accessor for CompactDatePickerItem(0) + 32) + 8) = v2;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F97D34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F7B6A0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F97DE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F7B6A0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F97EA0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F97ED8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B9F97F10@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

double sub_1B9F97F60@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F97FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B9F97FF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

double sub_1B9F9803C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;

  return result;
}

double sub_1B9F9808C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F980DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B9F98134()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1B9F9817C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28EmptyStateCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F981DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B9F9822C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B9F98288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA1A3A7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9F982B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1B9F98300()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F98338()
{
  sub_1BA1A6754(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B9F983C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9840C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F9846C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F984A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

double sub_1B9F984E4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI25ProfileContactOptionsItem_reuseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1B9F98544()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F9859C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F985E0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F98618()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F98660()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F986A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F986DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F9871C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F98780()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_1B9F987D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B9F98838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F98890(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B9F988EC()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F98924()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F98970()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1B9F989F8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI34InternalFeedItemListViewController_contentKinds;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1B9F98A58()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F98A90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F98BB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B9F98C5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B9F98D00()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F98D68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_sectionContext;
  swift_beginAccess();
  return sub_1BA1CACCC(v3 + v4, a2, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720], sub_1B9F6BFCC);
}

uint64_t sub_1B9F98E3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v3)
  {
    result = [v3 isUserInteractionEnabled];
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

unsigned __int8 *sub_1B9F98E88(unsigned __int8 *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI24BrowseTileViewController_contentView);
  if (v2)
  {
    return [v2 setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_1B9F98EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A54E8();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F98F54(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B9F99020(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1BA1D32EC(0, &qword_1EDC5F348, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F99104(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1BA1D32EC(0, &qword_1EDC5F348, 255, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

id sub_1B9F99240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA1D56FC();
  *a1 = result;
  return result;
}

void sub_1B9F9926C(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + qword_1EDC6DC48);
  *(*a2 + qword_1EDC6DC48) = *a1;
  v4 = v2;

  sub_1B9F49114(v3);
}

uint64_t sub_1B9F992B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9F992F0@<X0>(void *a1@<X8>)
{
  v2 = sub_1B9F34660();
  *a1 = v2;

  return v2;
}

uint64_t sub_1B9F99380()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F993B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F993F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B9F99434(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BA4A6758();
  [v2 setIdentifier_];
}

double sub_1B9F994AC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBBEDEA8;
  *a1 = qword_1EBBEDEA0;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B9F99500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24MultiselectTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a2);
}

uint64_t sub_1B9F99560@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B9F995BC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B9F99620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F99690()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F996C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F99700()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F99744()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9F9977C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedHealthStore;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F99828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B9F99880(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1B9F99914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1B9F99980@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B9F999F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1B9F99A90()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}