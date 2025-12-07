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

uint64_t sub_2589DD12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2589DD174(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2589DD21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_258B024B4();
  v38 = v5;
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a1 + 16);
  sub_258B00B04();
  sub_258B00B04();
  sub_258B00B04();
  v7 = sub_258B00B04();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v35 - v8;
  v43 = *(a1 + 24);
  v9 = MEMORY[0x277CDFC60];
  v67 = v43;
  v68 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x277CDF918];
  v65 = WitnessTable;
  v66 = MEMORY[0x277CDF918];
  v63 = swift_getWitnessTable();
  v64 = v11;
  v61 = swift_getWitnessTable();
  v62 = v9;
  v41 = swift_getWitnessTable();
  v55 = v7;
  v56 = MEMORY[0x277D837D0];
  v57 = v41;
  v58 = MEMORY[0x277D837E0];
  *&v12 = COERCE_DOUBLE(sub_258B021E4());
  v37 = *&v12;
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v36 = &v35 - v13;
  sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
  v15 = v14;
  v40 = v14;
  v16 = swift_getWitnessTable();
  v39 = v16;
  v35 = sub_2589DE538();
  v55 = v12;
  v56 = v15;
  v57 = v5;
  v58 = v16;
  v59 = v35;
  v60 = MEMORY[0x277CE1320];
  v17 = type metadata accessor for ScrollableWithPinnedFooter(0, &v55);
  v42 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v58 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  v59 = &off_2869D8358;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v55);
  sub_258AC1B28(v23);
  v24 = v45;
  v25 = v47;
  v26 = v43;
  sub_258A55DDC(v43, v45);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v55 = 0xD000000000000023;
  v56 = 0x8000000258B36680;
  v27 = v36;
  sub_258B01E34();
  (*(v46 + 8))(v24, v7);
  v28 = *(v3 + 8) != 0;
  v52 = v25;
  v53 = v26;
  v54 = v3;
  v29 = v48;
  sub_258B024A4();
  v30 = v37;
  v31 = v38;
  v32 = sub_258A4B280(v28, sub_2589DE6C0, v51, v37, v40, v38, v39, v20, v35, MEMORY[0x277CE1320]);
  (*(v49 + 8))(v29, v31, v32);
  (*(v44 + 8))(v27, COERCE_DOUBLE(*&v30));
  swift_getWitnessTable();
  sub_258A4DFD4();
  v33 = *(v42 + 8);
  v33(v20, v17);
  sub_258A4DFD4();
  return v33(v22, v17);
}

uint64_t sub_2589DD850@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  sub_2589DE168(0, a2, a3, a5);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v35[0] = *a1;
  v35[1] = v14;
  v15 = a1[3];
  v35[2] = a1[2];
  v35[3] = v15;
  v35[4] = a1[4];
  if (*(&v35[0] + 1))
  {
    v30 = v35[0];
    v16 = a1[2];
    v17 = a1[3];
    v18 = *a1;
    v31 = a1[1];
    v32 = v16;
    v19 = a1[4];
    v33 = v17;
    v34 = v19;
    v29[2] = v16;
    v29[3] = v17;
    v29[4] = v19;
    v29[0] = v18;
    v29[1] = v31;
    v27 = v11;
    sub_2589DE6CC(v29, &v28);
    type metadata accessor for StateOfMindEntryPhase_iOS(0, a2, a3, v20);
    sub_2589DDA6C(&v30, v13);
    sub_2589DE704(v35);
    v21 = *(v10 + 36);
    *&v13[v21] = swift_getKeyPath();
    sub_2589DE104(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_2589A5D04(v13, a4, v22, v23);
    return (*(v27 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v25 = *(v11 + 56);

    return v25(a4, 1, 1, v10);
  }
}

uint64_t sub_2589DDA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_258B00AA4();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v5);
  v51 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589D5AFC(0);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589DE234(0, v10, v11, v12);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v60 = *(a1 + 32);
  v61 = *(a1 + 40);
  v62 = v15;
  v56[3] = v5;
  v56[4] = &off_2869D8358;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);

  sub_2589DE784(&v62, v53);
  sub_258AC1B28(boxed_opaque_existential_1);
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  v18[3] = *(a1 + 32);
  v18[4] = v19;
  v18[5] = *(a1 + 64);
  v20 = *(a1 + 16);
  v18[1] = *a1;
  v18[2] = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  v21[3] = *(a1 + 32);
  v21[4] = v22;
  v21[5] = *(a1 + 64);
  v23 = *(a1 + 16);
  v21[1] = *a1;
  v21[2] = v23;
  v56[5] = v15;
  v56[6] = v16;
  v24 = v51;
  v56[7] = v60;
  v57 = v61;
  v54 = sub_2589DE7E0;
  v55 = v18;
  v58 = sub_2589DE860;
  v59 = v21;
  sub_2589DE6CC(a1, v53);
  sub_2589DE6CC(a1, v53);
  sub_258AC1B28(v24);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    sub_2589DE868(v24, type metadata accessor for AssociationSelectionPhaseSpecs);
    v29 = v49;
    v28 = v50;
    v30 = MEMORY[0x277CDF998];
    if (homeButtonType != 2)
    {
      v30 = MEMORY[0x277CDF988];
    }

    (*(v49 + 104))(v50, *v30, v3);
    (*(v29 + 32))(v9, v28, v3);
    sub_2589DE390(&qword_27F96D048, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_258B02AA4();
    if (result)
    {
      sub_2589DE338(0, v31, v32, v33);
      v51 = v34;
      v35 = sub_2589DE390(&qword_27F96D2C0, sub_2589DE338, &unk_258B347F8);
      v36 = sub_2589DE390(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
      v37 = v44;
      v38 = v45;
      sub_258B01C84();
      sub_2589DE868(v9, sub_2589D5AFC);
      sub_2589DE868(&v54, sub_2589DE338);
      v39 = MEMORY[0x277D837D0];
      sub_2589DE924(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258B2C470;
      v53[0] = *(a1 + 48);
      *(inited + 32) = v53[0];
      v52 = &unk_2869D4670;
      sub_2589DE8C8(v53, &v54);
      v41 = sub_258B003E4();
      sub_2589FC8C8(v41);
      v54 = v52;
      sub_2589DE924(0, &qword_280DF8948, v39, MEMORY[0x277D83940]);
      sub_2589C6824();
      sub_258B02A34();

      swift_setDeallocating();
      swift_arrayDestroy();
      v54 = v51;
      v55 = v38;
      v56[0] = v35;
      v56[1] = v36;
      swift_getOpaqueTypeConformance2();
      v42 = v47;
      sub_258B01DD4();

      return (*(v46 + 8))(v37, v42);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589DE094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2589BFF58(a1, a2, a3);
  sub_258B003E4();
  result = sub_258B01B44();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

void sub_2589DE104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589DE168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F96D2A0)
  {
    sub_2589DE1CC(255, a2, a3, a4);
    v6 = v5;
    v10 = sub_2589DE3D8(v5, v7, v8, v9);
    v12 = type metadata accessor for StateOfMindEntryButtonTray(a1, v6, v10, v11);
    if (!v13)
    {
      atomic_store(v12, &qword_27F96D2A0);
    }
  }
}

void sub_2589DE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F96D2A8)
  {
    sub_2589DE234(255, a2, a3, a4);
    sub_258B017D4();
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96D2A8);
    }
  }
}

void sub_2589DE234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F96D2B0)
  {
    sub_2589DE338(255, a2, a3, a4);
    sub_2589D5AFC(255);
    sub_2589DE390(&qword_27F96D2C0, sub_2589DE338, &unk_258B347F8);
    sub_2589DE390(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D2B0);
    }
  }
}

void sub_2589DE338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F96D2B8)
  {
    v4 = type metadata accessor for ActionButton(0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27F96D2B8);
    }
  }
}

uint64_t sub_2589DE390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2589DE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_27F96D2C8;
  if (!qword_27F96D2C8)
  {
    sub_2589DE1CC(255, a2, a3, a4);
    sub_2589DE338(255, v5, v6, v7);
    sub_2589D5AFC(255);
    sub_2589DE390(&qword_27F96D2C0, sub_2589DE338, &unk_258B347F8);
    sub_2589DE390(&qword_27F96D030, sub_2589D5AFC, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_2589DE390(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2C8);
  }

  return result;
}

unint64_t sub_2589DE538()
{
  result = qword_27F96D2D0;
  if (!qword_27F96D2D0)
  {
    sub_2589DE104(255, &qword_27F96D298, sub_2589DE168, MEMORY[0x277D83D88]);
    sub_2589DE390(&qword_27F96D2D8, sub_2589DE168, &unk_258B2F290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D2D0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2589DE704(uint64_t a1)
{
  sub_2589DE924(0, &qword_27F96D288, &type metadata for StateOfMindEntryPhaseButtonConfiguration, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_2589DE868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2589DE924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for CustomReminderRow(uint64_t a1)
{
  result = qword_27F96D2F0;
  if (!qword_27F96D2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589DEA18(uint64_t a1)
{
  sub_2589DEB08(319);
  if (v1 <= 0x3F)
  {
    sub_2589E16B0(319, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2589E1660(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2589DEB08(uint64_t a1)
{
  if (!qword_27F96D300)
  {
    type metadata accessor for NotificationSettingsModel(255);
    sub_2589E0FA8(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
    v1 = sub_258B00A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D300);
    }
  }
}

uint64_t sub_2589DEBB8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for CustomReminderModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_258B00C14();
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CustomReminderRow(0);
  v6 = *(v5 - 8);
  v51 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2589E05A8(0);
  v41 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E0FF0(0);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E1180(0);
  v46 = v13;
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E1A2C(v1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderRow);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_2589E1384(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v53 = v1;
  sub_2589E060C(0);
  sub_2589E0E68();
  sub_258B02174();
  v17 = v1 + *(v51 + 32);
  v39 = v1;
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v58) = v18;
  v59 = v19;
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  sub_2589E1A2C(v1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomReminderRow);
  v20 = swift_allocObject();
  sub_2589E1384(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v15);
  type metadata accessor for CustomReminderView(0);
  sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8, MEMORY[0x277CDF028]);
  sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
  v21 = v40;
  v22 = v41;
  sub_258B01E94();

  (*(v42 + 8))(v10, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  LOBYTE(v10) = v54;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  v25 = (v21 + v49[9]);
  *v25 = KeyPath;
  v25[1] = sub_2589E1658;
  v25[2] = v24;
  v26 = v43;
  sub_258B00C04();
  v42 = sub_2589E1254();
  v41 = sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v27 = v50;
  sub_258B01BD4();
  (*(v44 + 8))(v26, v27);
  sub_2589E1938(v21, sub_2589E0FF0);
  sub_2589E1660(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000258B36130;
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v29 = v45;
  sub_258B02124();
  v30 = *v29;
  sub_2589E1A94(v29, type metadata accessor for CustomReminderModel);
  v58 = v30;
  v54 = sub_258B03414();
  v55 = v31;
  MEMORY[0x259C931B0](58, 0xE100000000000000);
  sub_258B02124();
  v32 = *v29;
  sub_2589E1A94(v29, type metadata accessor for CustomReminderModel);
  v58 = v32;
  v33 = sub_258B03414();
  MEMORY[0x259C931B0](v33);

  v34 = v55;
  *(inited + 48) = v54;
  *(inited + 56) = v34;
  v54 = &unk_2869D4670;
  v35 = sub_258B003E4();
  sub_2589FC8C8(v35);
  sub_2589E1660(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_setDeallocating();
  swift_arrayDestroy();
  v54 = v49;
  v55 = v50;
  v56 = v42;
  v57 = v41;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  v37 = v52;
  sub_258B01DD4();

  return (*(v47 + 8))(v37, v36);
}

uint64_t sub_2589DF4DC(uint64_t a1)
{
  type metadata accessor for CustomReminderRow(0);
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

void sub_2589DF5A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_2589E1714(0);
  sub_2589DF600(a1, (a2 + *(v4 + 44)));
  sub_2589E060C(0);
  *(a2 + *(v5 + 36)) = 0;
}

uint64_t sub_2589DF600@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  sub_2589E0B98(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E0A80(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v25[-v12];
  v27 = sub_258B01004();
  v30 = 1;
  sub_2589DF9A0(a1, v34);
  memcpy(v31, v34, 0x141uLL);
  memcpy(v32, v34, 0x141uLL);
  sub_2589E17AC(v31, v33, &qword_27F96D348, sub_2589E07E4);
  sub_2589E182C(v32, &qword_27F96D348, sub_2589E07E4);
  memcpy(&v29[7], v31, 0x141uLL);
  v26 = v30;
  v14 = sub_258B02084();
  v15 = (v6 + *(v4 + 36));
  sub_2589E16B0(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v17 = *(v16 + 28);
  v18 = *MEMORY[0x277CE1050];
  v19 = sub_258B020B4();
  (*(*(v19 - 8) + 104))(v15 + v17, v18, v19);
  *v15 = swift_getKeyPath();
  *v6 = v14;
  sub_258B01994();
  sub_2589E0C28();
  sub_258B01BB4();
  sub_2589E1A94(v6, sub_2589E0B98);
  v20 = [objc_opt_self() tertiaryLabelColor];
  *&v13[*(v8 + 44)] = sub_258B01F94();
  sub_2589A6130(v13, v11);
  v21 = v27;
  v33[0] = v27;
  v33[1] = 0;
  LOBYTE(v8) = v26;
  LOBYTE(v33[2]) = v26;
  memcpy(&v33[2] + 1, v29, 0x148uLL);
  v22 = v28;
  memcpy(v28, v33, 0x159uLL);
  v22[44] = 0;
  *(v22 + 360) = 1;
  sub_2589E06AC(0);
  sub_2589A6130(v11, v22 + *(v23 + 64));
  sub_2589E189C(v33, v34);
  sub_2589E1938(v13, sub_2589E0A80);
  sub_2589E1938(v11, sub_2589E0A80);
  v34[0] = v21;
  v34[1] = 0;
  LOBYTE(v34[2]) = v8;
  memcpy(&v34[2] + 1, v29, 0x148uLL);
  return sub_2589E1998(v34);
}

uint64_t sub_2589DF9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B01194();
  v6[0] = 1;
  sub_2589DFB10(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_2589E17AC(__dst, v10, &qword_27F96D360, sub_2589E08E0);
  sub_2589E182C(v9, &qword_27F96D360, sub_2589E08E0);
  memcpy(&v7[7], __dst, 0x120uLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v7, 0x127uLL);
  v6[312] = 1;
  memcpy(a2, v10, 0x138uLL);
  *(a2 + 312) = 0;
  *(a2 + 320) = 1;
  *__src = v4;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v7, 0x127uLL);
  sub_2589E1A2C(v10, v6, sub_2589E084C);
  return sub_2589E1A94(__src, sub_2589E084C);
}

uint64_t sub_2589DFB10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  v52 = sub_258AFFE84();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_258AFFEA4();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_258B00084();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustomReminderModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = *(type metadata accessor for CustomReminderRow(0) + 20);
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v46[0] = v14;
  sub_258B02124();
  sub_258A29A78(v10);
  sub_258AFFE94();
  sub_258AFFE74();
  v15 = sub_258B00054();
  v17 = v16;
  (*(v2 + 8))(v4, v52);
  (*(v5 + 8))(v7, v49);
  (*(v8 + 8))(v10, v48);
  v18 = sub_2589E1A94(v13, type metadata accessor for CustomReminderModel);
  v90 = v15;
  v91 = v17;
  sub_2589BFF58(v18, v19, v20);
  v21 = sub_258B01B44();
  v47 = v22;
  v48 = v21;
  LOBYTE(v15) = v23;
  v49 = v24;
  sub_258B02504();
  sub_258B00C94();
  LODWORD(v52) = v15 & 1;
  v112 = v15 & 1;
  sub_258B02124();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v25 = sub_258A29974(v90);
  v27 = v26;
  sub_2589E1A94(v13, type metadata accessor for CustomReminderModel);
  v90 = v25;
  v91 = v27;
  v28 = sub_258B01B44();
  v30 = v29;
  LOBYTE(v17) = v31;
  sub_258B018F4();
  v32 = sub_258B01AE4();
  v34 = v33;
  LOBYTE(v2) = v35;

  sub_2589BFFAC(v28, v30, v17 & 1);

  LODWORD(v90) = sub_258B014B4();
  v36 = sub_258B01AB4();
  v38 = v37;
  LOBYTE(v30) = v39;
  v41 = v40;
  sub_2589BFFAC(v32, v34, v2 & 1);

  sub_258B02504();
  sub_258B00C94();
  LOBYTE(v30) = v30 & 1;
  v42 = v47;
  v43 = v48;
  *&v61 = v48;
  *(&v61 + 1) = v47;
  LOBYTE(v62) = v52;
  *(&v62 + 1) = *v111;
  DWORD1(v62) = *&v111[3];
  v44 = v49;
  *(&v62 + 1) = v49;
  v67 = v108;
  v68 = v109;
  v69 = v110;
  v63 = v104;
  v64 = v105;
  v65 = v106;
  v66 = v107;
  v53[6] = v108;
  v53[7] = v109;
  v53[2] = v104;
  v53[3] = v105;
  v53[4] = v106;
  v53[5] = v107;
  v53[0] = v61;
  v53[1] = v62;
  *&v70 = v36;
  *(&v70 + 1) = v38;
  LOBYTE(v71) = v30;
  *(&v71 + 1) = *v102;
  DWORD1(v71) = *&v102[3];
  *(&v71 + 1) = v41;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v72 = v54;
  v73 = v55;
  v74 = v56;
  v75 = v57;
  v53[12] = v55;
  v53[13] = v56;
  v53[10] = v71;
  v53[11] = v54;
  v53[14] = v57;
  v53[15] = v58;
  v53[16] = v59;
  v53[17] = v60;
  v103 = v30;
  v53[8] = v110;
  v53[9] = v70;
  memcpy(v50, v53, 0x120uLL);
  v79[0] = v36;
  v79[1] = v38;
  v80 = v30;
  *v81 = *v102;
  *&v81[3] = *&v102[3];
  v82 = v41;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  v86 = v57;
  sub_2589E1AF4(&v61, &v90);
  sub_2589E1AF4(&v70, &v90);
  sub_2589E1B84(v79);
  v90 = v43;
  v91 = v42;
  v92 = v52;
  *v93 = *v111;
  *&v93[3] = *&v111[3];
  v94 = v44;
  v99 = v108;
  v100 = v109;
  v101 = v110;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  v98 = v107;
  return sub_2589E1B84(&v90);
}

uint64_t sub_2589E01E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = sub_258B00084();
  v4 = *(v33 - 8);
  v5 = MEMORY[0x28223BE20](v33);
  v32 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-v7];
  v31 = type metadata accessor for CustomReminderModel(0);
  v9 = MEMORY[0x28223BE20](v31);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  v14 = *(a1 + 8);
  v15 = type metadata accessor for CustomReminderRow(0);
  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);
  v30 = v14;
  sub_258B02124();
  sub_258B02124();
  sub_258A29A78(v8);
  sub_2589E1A94(v11, type metadata accessor for CustomReminderModel);
  v16 = (a1 + *(v15 + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  v37 = v17;
  v38 = v18;
  sub_2589E1660(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v19 = v34;
  v29 = v35;
  v28 = v36;
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for CustomReminderView(0);
  *(a2 + *(v21 + 32)) = KeyPath;
  sub_2589E16B0(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NotificationSettingsModel(0);
  sub_2589E0FA8(&qword_27F96D308, type metadata accessor for NotificationSettingsModel, &protocol conformance descriptor for NotificationSettingsModel);
  *a2 = sub_258B00A24();
  a2[1] = v22;
  sub_2589E1A2C(v13, v11, type metadata accessor for CustomReminderModel);
  sub_258B02114();
  sub_2589E1A94(v13, type metadata accessor for CustomReminderModel);
  v23 = v33;
  (*(v4 + 16))(v32, v8, v33);
  sub_258B02114();
  result = (*(v4 + 8))(v8, v23);
  v25 = a2 + *(v21 + 28);
  v26 = v29;
  *v25 = v19;
  *(v25 + 1) = v26;
  v25[16] = v28;
  return result;
}

void sub_2589E05A8(uint64_t a1)
{
  if (!qword_27F96D318)
  {
    sub_2589E060C(255);
    sub_2589E0E68();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D318);
    }
  }
}

void sub_2589E060C(uint64_t a1)
{
  if (!qword_27F96D320)
  {
    sub_2589E075C(255, &qword_27F96D328, &qword_27F96D330, sub_2589E06AC, sub_2589E0D30);
    sub_2589E0DB8(255, v1, v2);
    v3 = sub_258B00B04();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96D320);
    }
  }
}

void sub_2589E06AC(uint64_t a1)
{
  if (!qword_27F96D338)
  {
    sub_2589E075C(255, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
    sub_2589E0A80(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96D338);
    }
  }
}

void sub_2589E075C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_2589E16B0(255, a3, a4, MEMORY[0x277CE14B8]);
    a5();
    v7 = sub_258B021D4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2589E07E4(uint64_t a1)
{
  if (!qword_27F96D350)
  {
    sub_2589E084C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D350);
    }
  }
}

void sub_2589E084C(uint64_t a1)
{
  if (!qword_27F96D358)
  {
    sub_2589E16B0(255, &qword_27F96D360, sub_2589E08E0, MEMORY[0x277CE14B8]);
    sub_2589E0970();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D358);
    }
  }
}

void sub_2589E08E0(uint64_t a1)
{
  if (!qword_27F96D368)
  {
    sub_2589BF7E8(255, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D368);
    }
  }
}

unint64_t sub_2589E0970()
{
  result = qword_27F96D370;
  if (!qword_27F96D370)
  {
    sub_2589E16B0(255, &qword_27F96D360, sub_2589E08E0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D370);
  }

  return result;
}

unint64_t sub_2589E09F8()
{
  result = qword_27F96D378;
  if (!qword_27F96D378)
  {
    sub_2589E16B0(255, &qword_27F96D348, sub_2589E07E4, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D378);
  }

  return result;
}

void sub_2589E0A80(uint64_t a1)
{
  if (!qword_27F96D380)
  {
    sub_2589E0B14(255);
    sub_2589BF7E8(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D380);
    }
  }
}

void sub_2589E0B14(uint64_t a1)
{
  if (!qword_27F96D388)
  {
    sub_2589E0B98(255);
    sub_2589E0C28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D388);
    }
  }
}

void sub_2589E0B98(uint64_t a1)
{
  if (!qword_27F96D390)
  {
    sub_2589E16B0(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D390);
    }
  }
}

unint64_t sub_2589E0C28()
{
  result = qword_27F96D3A0;
  if (!qword_27F96D3A0)
  {
    sub_2589E0B98(255);
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3A0);
  }

  return result;
}

unint64_t sub_2589E0CA8()
{
  result = qword_27F96D3A8;
  if (!qword_27F96D3A8)
  {
    sub_2589E16B0(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3A8);
  }

  return result;
}

unint64_t sub_2589E0D30()
{
  result = qword_27F96D3B0;
  if (!qword_27F96D3B0)
  {
    sub_2589E16B0(255, &qword_27F96D330, sub_2589E06AC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3B0);
  }

  return result;
}

void sub_2589E0DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96D3B8)
  {
    sub_2589E0E14(0, a2, a3);
    v3 = sub_258B01444();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96D3B8);
    }
  }
}

unint64_t sub_2589E0E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D3C0;
  if (!qword_27F96D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3C0);
  }

  return result;
}

unint64_t sub_2589E0E68()
{
  result = qword_27F96D3C8;
  if (!qword_27F96D3C8)
  {
    sub_2589E060C(255);
    sub_2589E0F18();
    sub_2589E0FA8(&qword_27F96D3D8, sub_2589E0DB8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3C8);
  }

  return result;
}

unint64_t sub_2589E0F18()
{
  result = qword_27F96D3D0;
  if (!qword_27F96D3D0)
  {
    sub_2589E075C(255, &qword_27F96D328, &qword_27F96D330, sub_2589E06AC, sub_2589E0D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D3D0);
  }

  return result;
}

uint64_t sub_2589E0FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2589E0FF0(uint64_t a1)
{
  if (!qword_27F96D3E0)
  {
    sub_2589E107C(255);
    sub_2589E1660(255, &qword_27F96CDD0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D3E0);
    }
  }
}

void sub_2589E107C(uint64_t a1)
{
  if (!qword_27F96D3E8)
  {
    sub_2589E05A8(255);
    type metadata accessor for CustomReminderView(255);
    sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8, MEMORY[0x277CDF028]);
    sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D3E8);
    }
  }
}

void sub_2589E1180(uint64_t a1)
{
  if (!qword_27F96D400)
  {
    sub_2589E0FF0(255);
    sub_258B00C14();
    sub_2589E1254();
    sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D400);
    }
  }
}

unint64_t sub_2589E1254()
{
  result = qword_27F96D408;
  if (!qword_27F96D408)
  {
    sub_2589E0FF0(255);
    sub_2589E05A8(255);
    type metadata accessor for CustomReminderView(255);
    sub_2589E0FA8(&qword_27F96D3F0, sub_2589E05A8, MEMORY[0x277CDF028]);
    sub_2589E0FA8(&qword_27F96D3F8, type metadata accessor for CustomReminderView, &unk_258B2F2F4);
    swift_getOpaqueTypeConformance2();
    sub_2589D2560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D408);
  }

  return result;
}

uint64_t sub_2589E1384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomReminderRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E13E8()
{
  v1 = *(type metadata accessor for CustomReminderRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2589DF4DC(v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for CustomReminderRow(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = *(type metadata accessor for CustomReminderModel(0) + 32);
  v5 = sub_258AFFD44();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  sub_2589E16B0(0, &qword_27F96D2E8, type metadata accessor for CustomReminderModel, MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_2589E15E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CustomReminderRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2589E01E4(v4, a1);
}

void sub_2589E1660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2589E16B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2589E1714(uint64_t a1)
{
  if (!qword_27F96D418)
  {
    sub_2589E16B0(255, &qword_27F96D330, sub_2589E06AC, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D418);
    }
  }
}

uint64_t sub_2589E17AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2589E16B0(0, a3, a4, MEMORY[0x277CE14B8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2589E182C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2589E16B0(0, a2, a3, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2589E189C(uint64_t a1, uint64_t a2)
{
  sub_2589E075C(0, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E1938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589E1998(uint64_t a1)
{
  sub_2589E075C(0, &qword_27F96D340, &qword_27F96D348, sub_2589E07E4, sub_2589E09F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2589E1A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589E1A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589E1AF4(uint64_t a1, uint64_t a2)
{
  sub_2589BF7E8(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E1B84(uint64_t a1)
{
  sub_2589BF7E8(0, &qword_27F96CF28, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2589E1C0C()
{
  result = qword_27F96D420;
  if (!qword_27F96D420)
  {
    sub_2589E1D3C(255);
    sub_2589E0FF0(255);
    sub_258B00C14();
    sub_2589E1254();
    sub_2589E0FA8(&qword_27F96D410, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_2589E0FA8(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D420);
  }

  return result;
}

void sub_2589E1D3C(uint64_t a1)
{
  if (!qword_27F96D428)
  {
    sub_2589E1180(255);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D428);
    }
  }
}

uint64_t sub_2589E1DA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2589E1E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2589E1E7C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v67 = sub_258B01534();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2BC8(0);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2B44(0);
  v68 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v61 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589E2A88(0);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v69 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v73 = &v56[-v14];
  v15 = type metadata accessor for StateOfMindCalendarTip(0);
  v16 = swift_allocBox();
  v18 = v17;
  LOBYTE(v77) = 0;
  sub_2589E3604(0, &qword_27F96D4A0, MEMORY[0x277CE19F8], MEMORY[0x277D84560]);
  sub_258B00404();
  *(swift_allocObject() + 16) = xmmword_258B2C470;
  sub_258B003F4();
  sub_258B00454();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v77 = sub_258AFFD94();
  v78 = v19;
  sub_2589BFF58(v77, v19, v20);
  v21 = sub_258B01B44();
  v23 = v22;
  v25 = v24;
  v60 = sub_258B01AD4();
  v58 = v26;
  v57 = v27;
  v59 = v28;
  sub_2589BFFAC(v21, v23, v25 & 1);

  v29 = swift_allocObject();
  *(v29 + 16) = v16;
  *(v29 + 24) = a1 & 1;
  *(v29 + 32) = a2;
  sub_2589E2C94(0);
  sub_2589E2DAC();

  sub_258B02174();
  LODWORD(v21) = sub_258B014A4();
  v30 = sub_258B01494();
  v72 = v16;
  v31 = v64;
  v32 = &v8[*(v64 + 36)];
  *v32 = v21;
  v32[1] = v30;
  swift_beginAccess();
  v79 = v15;
  v80 = sub_2589E2FA8(&qword_27F96D4A8, type metadata accessor for StateOfMindCalendarTip, &unk_258B2CAB0);
  v33 = __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_2589E3514(v18, v33);
  v75 = a1 & 1;
  v76 = a2;
  sub_2589E3A34(0, &qword_27F96D310, MEMORY[0x277CE10B8]);
  sub_258B02144();
  v34 = sub_258B02164();
  v35 = v62;
  *v62 = v34;
  v36 = v65;
  v37 = v67;
  (*(v65 + 104))(v35, *MEMORY[0x277CDE248], v67);
  v55 = sub_2589E2EC8();
  v38 = v61;
  sub_258B01B74();

  (*(v36 + 8))(v35, v37);
  sub_2589A61DC(v8);
  sub_2589E3578(&v77);

  v77 = v31;
  v78 = v55;
  swift_getOpaqueTypeConformance2();
  v39 = v73;
  v40 = v68;
  sub_258B01B64();

  (*(v66 + 8))(v38, v40);
  LOBYTE(v77) = v57 & 1;
  LOBYTE(v74) = 1;
  v75 = 0;
  v42 = v69;
  v41 = v70;
  v43 = *(v70 + 16);
  v44 = v39;
  v45 = v71;
  v43(v69, v44, v71);
  v46 = v77;
  v47 = v74;
  v48 = v75;
  v49 = v63;
  v50 = v60;
  v51 = v58;
  *v63 = v60;
  v49[1] = v51;
  *(v49 + 16) = v46;
  v49[3] = v59;
  *(v49 + 32) = v47;
  *(v49 + 33) = v48;
  sub_2589E29C0(0);
  v43(v49 + *(v52 + 48), v42, v45);
  sub_2589E36D4(v50, v51, v46);
  v53 = *(v41 + 8);
  sub_258B003E4();
  v53(v73, v45);
  v53(v42, v45);
  sub_2589BFFAC(v50, v51, v77);
}

uint64_t sub_2589E2680(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for StateOfMindCalendarTip(0);
  swift_projectBox();
  swift_beginAccess();
  sub_2589E36E4();
  sub_258B00434();
  swift_endAccess();
  sub_2589E3A34(0, &qword_27F96D310, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_2589E2740@<X0>(uint64_t a1@<X8>)
{
  sub_258B02084();
  sub_258B01E44();

  sub_2589E2C94(0);
  v3 = (a1 + *(v2 + 36));
  sub_2589E3604(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v5 = *(v4 + 28);
  v6 = *MEMORY[0x277CE1048];
  v7 = sub_258B020B4();
  (*(*(v7 - 8) + 104))(&v3[v5], v6, v7);
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

uint64_t sub_2589E2860(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StateOfMindCalendarTip(0);
  swift_projectBox();
  swift_beginAccess();
  sub_2589E36E4();
  sub_258B00434();
  return swift_endAccess();
}

uint64_t sub_2589E28CC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = sub_258B01004();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  sub_2589E2928(0);
  return sub_2589E1E7C(v4, v5, (a2 + *(v6 + 44)));
}

void sub_2589E2928(uint64_t a1)
{
  if (!qword_27F96D430)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D430);
    }
  }
}

void sub_2589E29C0(uint64_t a1)
{
  if (!qword_27F96D440)
  {
    sub_2589E2A30();
    sub_2589E2A88(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D440);
    }
  }
}

void sub_2589E2A30()
{
  if (!qword_27F96D1F8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D1F8);
    }
  }
}

void sub_2589E2A88(uint64_t a1)
{
  if (!qword_27F96D448)
  {
    sub_2589E2B44(255);
    sub_2589E2BC8(255);
    sub_2589E2EC8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D448);
    }
  }
}

void sub_2589E2B44(uint64_t a1)
{
  if (!qword_27F96D450)
  {
    sub_2589E2BC8(255);
    sub_2589E2EC8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D450);
    }
  }
}

void sub_2589E2BC8(uint64_t a1)
{
  if (!qword_27F96D458)
  {
    sub_2589E2C30(255);
    sub_2589E2E5C();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D458);
    }
  }
}

void sub_2589E2C30(uint64_t a1)
{
  if (!qword_27F96D460)
  {
    sub_2589E2C94(255);
    sub_2589E2DAC();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D460);
    }
  }
}

void sub_2589E2C94(uint64_t a1)
{
  if (!qword_27F96D468)
  {
    sub_2589E2D2C();
    sub_2589E3604(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D468);
    }
  }
}

void sub_2589E2D2C()
{
  if (!qword_27F96D470)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D470);
    }
  }
}

unint64_t sub_2589E2DAC()
{
  result = qword_27F96D478;
  if (!qword_27F96D478)
  {
    sub_2589E2C94(255);
    swift_getOpaqueTypeConformance2();
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D478);
  }

  return result;
}

void sub_2589E2E5C()
{
  if (!qword_27F96D480)
  {
    v0 = sub_258B015F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D480);
    }
  }
}

unint64_t sub_2589E2EC8()
{
  result = qword_27F96D488;
  if (!qword_27F96D488)
  {
    sub_2589E2BC8(255);
    sub_2589E2FA8(&qword_27F96D490, sub_2589E2C30, MEMORY[0x277CDF028]);
    sub_2589E2FA8(&qword_27F96D498, sub_2589E2E5C, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D488);
  }

  return result;
}

uint64_t sub_2589E2FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StateOfMindCalendarTip(uint64_t a1)
{
  result = qword_27F96D4C8;
  if (!qword_27F96D4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2589E303C@<X0>(uint64_t *a2@<X8>)
{
  sub_2589E3A34(0, &qword_27F96D4F8, MEMORY[0x277CC90E8]);
  a2[3] = v3;
  a2[4] = sub_2589E3A88(&qword_27F96D500, MEMORY[0x277CC90F0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_2589E3A88(&qword_27F96D508, MEMORY[0x277CC90F8]);
  return sub_258AFFDA4();
}

uint64_t sub_2589E30FC()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v3 = sub_258AFFD94();
  sub_2589BFF58(v3, v0, v1);
  return sub_258B01B44();
}

uint64_t sub_2589E31A8()
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v3 = sub_258AFFD94();
  sub_2589BFF58(v3, v0, v1);
  return sub_258B01B44();
}

uint64_t sub_2589E3254()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return sub_258B020D4();
}

uint64_t sub_2589E32D4()
{
  sub_2589E36E4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B00414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v0, v2);
  sub_258B00424();
  sub_258B003D4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_258B003E4();

  return v10;
}

uint64_t sub_2589E3494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2589E2FA8(&qword_27F96D4A8, type metadata accessor for StateOfMindCalendarTip, &unk_258B2CAB0);
  result = MEMORY[0x259C909A0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2589E3514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindCalendarTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589E3578(uint64_t a1)
{
  sub_2589E3604(0, &qword_27F96D4B0, sub_2589E3668, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2589E3604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589E3668()
{
  result = qword_27F96D4B8;
  if (!qword_27F96D4B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96D4B8);
  }

  return result;
}

uint64_t sub_2589E36D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_258B003E4();
  }
}

void sub_2589E36E4()
{
  if (!qword_27F96D4C0)
  {
    v0 = sub_258B00444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D4C0);
    }
  }
}

uint64_t sub_2589E3768(uint64_t a1)
{
  v2 = sub_258B020B4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00D04();
}

void sub_2589E3858(uint64_t a1)
{
  sub_2589E36E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2589E38C4(uint64_t a1)
{
  if (!qword_27F96D4E0)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    sub_2589E3958();
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D4E0);
    }
  }
}

unint64_t sub_2589E3958()
{
  result = qword_27F96D4E8;
  if (!qword_27F96D4E8)
  {
    sub_2589E3604(255, &qword_27F96D438, sub_2589E29C0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D4E8);
  }

  return result;
}

void sub_2589E3A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2589E3A88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2589E3A34(255, &qword_27F96D4F8, MEMORY[0x277CC90E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindEntryView_iOS(uint64_t a1)
{
  result = qword_27F96D510;
  if (!qword_27F96D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589E3B5C(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_2589E3DB8(319);
      if (v3 <= 0x3F)
      {
        sub_2589EE73C(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2589EF00C(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2589EF00C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2589EF00C(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
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

void sub_2589E3D24(uint64_t a1)
{
  if (!qword_27F96D520)
  {
    type metadata accessor for StateOfMindEntryModel(255);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
    v1 = sub_258B00A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D520);
    }
  }
}

void sub_2589E3DB8(uint64_t a1)
{
  if (!qword_27F96D528)
  {
    sub_2589EE73C(255, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
    v1 = sub_258B02154();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D528);
    }
  }
}

uint64_t _s14MentalHealthUI24StateOfMindVisualizationV20ValenceImageProviderV0I5ScaleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t sub_2589E3EA8(uint64_t a1)
{
  v2 = *v1;
  sub_258B03514();
  MEMORY[0x259C93B20](v2);
  return sub_258B03554();
}

unint64_t sub_2589E3EEC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2589EF28C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2589E3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D530;
  if (!qword_27F96D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D530);
  }

  return result;
}

uint64_t sub_2589E3F98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StateOfMindEntryView_iOS(0);
  sub_2589EE78C(v1 + *(v10 + 44), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B008A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2589E41AC()
{
  sub_2589E3DB8(0);
  sub_258B02124();
  v1 = *(v4 + 16);
  if (v1)
  {
    v2 = *(v4 + v1 + 31);
  }

  else
  {

    return *(v0 + *(type metadata accessor for StateOfMindEntryView_iOS(0) + 56));
  }

  return v2;
}

uint64_t sub_2589E4224@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_2589EB894();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EB84C(0);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  v68 = *(v1 + 40);
  *&v69 = v7;
  sub_2589E3DB8(0);
  sub_258B02144();
  v68 = v63;
  v69 = v64;
  v62 = v1;
  sub_2589EE73C(0, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
  v57 = v8;
  sub_2589EBBA0();
  v56 = v9;
  v55 = sub_2589EE5F0(&qword_27F96D758, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83960]);
  v54 = sub_2589EE5F0(&qword_27F96D760, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83980]);
  v53 = sub_2589EE5F0(&qword_27F96D768, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83990]);
  sub_2589EBE64(255);
  v11 = v10;
  sub_2589EC0DC(255);
  v51 = v12;
  sub_2589EC324(255);
  v50 = v13;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v15 = v14;
  sub_2589EC484(255);
  v17 = v16;
  sub_2589EC5AC(255);
  v19 = v18;
  sub_2589EC7FC();
  v21 = v20;
  sub_2589EC87C(255);
  v23 = v22;
  v24 = sub_2589EC920();
  v63 = MEMORY[0x277CE1350];
  *&v64 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_258B024B4();
  v63 = v19;
  *&v64 = v26;
  *(&v64 + 1) = v24;
  v65 = MEMORY[0x277CE1320];
  v27 = swift_getOpaqueTypeConformance2();
  v63 = v19;
  *&v64 = v21;
  v28 = v52;
  *(&v64 + 1) = v23;
  v65 = v24;
  v66 = OpaqueTypeConformance2;
  v67 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v63 = v17;
  *&v64 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v32 = v31;
  sub_2589ECDD0(255);
  v34 = v33;
  v35 = sub_2589EDA24();
  v63 = v34;
  *&v64 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v63 = v32;
  *&v64 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v63 = v50;
  *&v64 = v15;
  *(&v64 + 1) = v30;
  v65 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v63 = v51;
  *&v64 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v42 = sub_2589EDB48(v39, v40, v41);
  v63 = v11;
  *&v64 = &type metadata for StateOfMindEntryPhaseType;
  *(&v64 + 1) = v11;
  v65 = v39;
  v66 = v42;
  v67 = v39;
  swift_getOpaqueTypeConformance2();
  sub_258B00B14();
  v43 = sub_2589E50FC();
  KeyPath = swift_getKeyPath();
  if (v43)
  {
    v63 = v43;

    v45 = sub_258B00864();
  }

  else
  {
    v45 = 0;
  }

  v47 = v59;
  v46 = v60;
  (*(v59 + 16))(v6, v28, v60);

  v48 = &v6[*(v58 + 36)];
  *v48 = KeyPath;
  v48[1] = v45;
  (*(v47 + 8))(v28, v46);
  sub_2589EDC18();
  sub_258B01E04();
  return sub_2589EF0D8(v6, sub_2589EB84C);
}

uint64_t sub_2589E47C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2589EBE64(0);
  v8 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E4BE4(*(a1 + *(v4 + 64)), v10);
  sub_2589EF1C4(a1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_2589EDD50(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2589EC0DC(255);
  v44 = v13;
  sub_2589EC324(255);
  v43 = v14;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v16 = v15;
  sub_2589EC484(255);
  v18 = v17;
  sub_2589EC5AC(255);
  v20 = v19;
  sub_2589EC7FC();
  v22 = v21;
  sub_2589EC87C(255);
  v24 = v23;
  v25 = sub_2589EC920();
  v47 = MEMORY[0x277CE1350];
  v48 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_258B024B4();
  v47 = v20;
  v48 = v27;
  v49 = v25;
  v50 = MEMORY[0x277CE1320];
  v28 = swift_getOpaqueTypeConformance2();
  v47 = v20;
  v48 = v22;
  v49 = v24;
  v50 = v25;
  v51 = OpaqueTypeConformance2;
  v52 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v47 = v18;
  v48 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v32 = v31;
  sub_2589ECDD0(255);
  v34 = v33;
  v35 = sub_2589EDA24();
  v47 = v34;
  v48 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v47 = v32;
  v48 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v47 = v43;
  v48 = v16;
  v49 = v30;
  v50 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v47 = v44;
  v48 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  sub_2589EDB48(v39, v40, v41);
  sub_258B01DA4();

  return (*(v45 + 8))(v10, v8);
}

uint64_t sub_2589E4BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v48 = a2;
  v47 = a1;
  sub_2589ECCFC(0);
  v5 = v4;
  v44 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC5AC(0);
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC0DC(0);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589E5A9C(v3, v2, v12);
  v17 = *(v2 + 80);
  LOBYTE(v49) = *(v2 + 72);
  v50 = v17;
  sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  sub_2589E849C(v3, (v55 & 1) == 0, v8);
  sub_2589E89DC(v8, v16);
  (*(v6 + 8))(v8, v5);
  sub_2589EF0D8(v12, sub_2589EC5AC);
  sub_2589EF00C(0, &qword_27F96D770, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  sub_258B00C74();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_258B2C470;
  sub_258B00C64();
  sub_2589EC324(255);
  v20 = v19;
  sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v22 = v21;
  sub_2589EC484(255);
  v24 = v23;
  sub_2589EC7FC();
  v26 = v25;
  sub_2589EC87C(255);
  v28 = v27;
  v29 = sub_2589EC920();
  v49 = MEMORY[0x277CE1350];
  v50 = MEMORY[0x277CE1340];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_258B024B4();
  v49 = v10;
  v50 = v31;
  v51 = v29;
  v52 = MEMORY[0x277CE1320];
  v32 = swift_getOpaqueTypeConformance2();
  v49 = v10;
  v50 = v26;
  v51 = v28;
  v52 = v29;
  v53 = OpaqueTypeConformance2;
  v54 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v49 = v24;
  v50 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  sub_2589ECDD0(255);
  v36 = v35;
  v37 = sub_2589EDA24();
  v49 = v36;
  v50 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v49 = v44;
  v50 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v49 = v20;
  v50 = v22;
  v51 = v34;
  v52 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  if (v47 == 5)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v42 = v45;
  MEMORY[0x259C92310](v41, v18, v45, v40);

  return (*(v46 + 8))(v16, v42);
}

uint64_t sub_2589E50FC()
{
  v0 = sub_258B006A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2589E41AC();
  if (!v4)
  {
    return v4;
  }

  if (v4 == 1)
  {
    type metadata accessor for StateOfMindEntryView_iOS(0);
    v5 = 0.0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v5 = *&v8[1];
    type metadata accessor for StateOfMindEntryView_iOS(0);
  }

  sub_258AC14E8(v3);
  v6 = sub_258A82B60(v3, v5);
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_2589E529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v31 = a2;
  v5 = type metadata accessor for IntroPhaseSpecs(0);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258B008E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_258B00384();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  (*(v8 + 16))(v10, a1, v7);
  v14 = sub_258B00374();
  v15 = sub_258B02E74();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = a1;
    v19 = v18;
    v32 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_2589F1F78(0xD000000000000018, 0x8000000258B2CB00, &v32);
    *(v17 + 12) = 2048;
    sub_258B008C4();
    v21 = v20;
    (*(v8 + 8))(v10, v7);
    *(v17 + 14) = v21;
    _os_log_impl(&dword_2589A1000, v14, v15, "[%s] Height: %f", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x259C945C0](v19, -1, -1);
    v22 = v17;
    a3 = v28;
    MEMORY[0x259C945C0](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 8))(v13, v29);
  type metadata accessor for StateOfMindEntryView_iOS(0);
  v23 = v30;
  sub_258AC151C(v30);
  sub_258B008C4();
  v25 = v24;
  result = sub_2589EF22C(v23, type metadata accessor for IntroPhaseSpecs);
  *a3 = v25 <= 600.0;
  return result;
}

uint64_t sub_2589E5668@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2589EB7BC(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D740, sub_2589EB804, sub_2589EB7BC, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  sub_2589EB804(0);
  v31 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    sub_2589E4224(v8);
    sub_2589EF1C4(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v29[1] = a1;
    v16 = *(v30 + 80);
    v30 = v6;
    v17 = (v16 + 16) & ~v16;
    v18 = swift_allocObject();
    sub_2589EDD50(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_2589EF1C4(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v19 = swift_allocObject();
    sub_2589EDD50(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
    v20 = &v8[*(v30 + 36)];
    *v20 = sub_2589EDDB4;
    v20[1] = v18;
    v20[2] = sub_2589EE170;
    v20[3] = v19;
    sub_2589EF070(v8, v11, sub_2589EB7BC);
    swift_storeEnumTagMultiPayload();
    sub_2589EB84C(255);
    v22 = v21;
    v23 = sub_2589EDC18();
    v32 = v22;
    v33 = v23;
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    sub_258B012A4();
    return sub_2589EF0D8(v8, sub_2589EB7BC);
  }

  else
  {
    sub_2589E4224(v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v31;
    (*(v13 + 16))(v11, v15, v31);
    swift_storeEnumTagMultiPayload();
    sub_2589EB84C(255);
    v27 = v26;
    v28 = sub_2589EDC18();
    v32 = v27;
    v33 = v28;
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    sub_258B012A4();
    return (*(v13 + 8))(v15, v25);
  }
}

uint64_t sub_2589E5A9C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v164) = a1;
  v163 = a3;
  v152 = type metadata accessor for NotificationsSetupPhase_iOS(0);
  MEMORY[0x28223BE20](v152);
  v5 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x277CE0330];
  sub_2589EF390(0, &qword_27F96D788, type metadata accessor for DomainsSelectionPhase_iOS, type metadata accessor for NotificationsSetupPhase_iOS, MEMORY[0x277CE0330]);
  v147 = v7;
  MEMORY[0x28223BE20](v7);
  v151 = &v131 - v8;
  sub_2589EC7B4(0);
  v162 = v9;
  MEMORY[0x28223BE20](v9);
  v153 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  MEMORY[0x28223BE20](v149);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for LabelsSelectionPhase_iOS(0);
  MEMORY[0x28223BE20](v146);
  v136 = (&v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2589EF390(0, &qword_27F96D790, type metadata accessor for ValenceSelectionPhase_iOS, type metadata accessor for LabelsSelectionPhase_iOS, v6);
  v141 = v14;
  MEMORY[0x28223BE20](v14);
  v145 = &v131 - v15;
  sub_2589EC76C(0);
  v158 = v16;
  MEMORY[0x28223BE20](v16);
  v148 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ValenceSelectionPhase_iOS(0);
  MEMORY[0x28223BE20](v143);
  v19 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_258B00084();
  v134 = *(v135 - 8);
  v20 = MEMORY[0x28223BE20](v135);
  v133 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v132 = &v131 - v22;
  v144 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(0);
  MEMORY[0x28223BE20](v144);
  v24 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC6B8(0);
  v150 = v25;
  v138 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v137 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D798, sub_2589EC628, sub_2589EC7B4, v6);
  v160 = v27;
  MEMORY[0x28223BE20](v27);
  v161 = &v131 - v28;
  sub_2589EF390(0, &qword_27F96D7A0, sub_2589EC670, sub_2589EC76C, v6);
  v154 = v29;
  MEMORY[0x28223BE20](v29);
  v156 = &v131 - v30;
  sub_2589EF390(0, &qword_27F96D7A8, type metadata accessor for IntroPhase_iOS, sub_2589EC6B8, v6);
  v139 = v31;
  MEMORY[0x28223BE20](v31);
  v140 = &v131 - v32;
  sub_2589EC670(0);
  v155 = v33;
  MEMORY[0x28223BE20](v33);
  v142 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC628(0);
  v159 = v35;
  MEMORY[0x28223BE20](v35);
  v157 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = type metadata accessor for IntroPhase_iOS(0);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v164 > 2u)
  {
    if (v164 == 3)
    {
      v97 = *(a2 + 96);
      LOBYTE(v165) = *(a2 + 88);
      *(&v165 + 1) = v97;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02124();
      v98 = v167;
      v99 = *(a2 + 32);
      sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v100 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v101 = swift_allocObject();
      sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v101 + v100);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
      v102 = sub_258B00A24();
      v103 = v136;
      *v136 = v102;
      *(v103 + 8) = v104;
      *(v103 + 16) = v98;
      *(v103 + 17) = v99;
      *(v103 + 24) = sub_2589EEF44;
      *(v103 + 32) = v101;
      v105 = v146;
      v106 = *(v146 + 32);
      *(v103 + v106) = swift_getKeyPath();
      v107 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v108 = *(v105 + 36);
      *(v103 + v108) = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v107);
      swift_storeEnumTagMultiPayload();
      sub_2589EF1C4(v103, v145, type metadata accessor for LabelsSelectionPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS, &unk_258B3257C);
      sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS, &unk_258B2D9EC);
      v109 = v148;
      sub_258B012A4();
      sub_2589EF1C4(v109, v156, sub_2589EC76C);
      swift_storeEnumTagMultiPayload();
      sub_2589ECA24();
      sub_2589ECB3C();
      v110 = v157;
      sub_258B012A4();
      sub_2589EF22C(v109, sub_2589EC76C);
      sub_2589EF070(v110, v161, sub_2589EC628);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF0D8(v110, sub_2589EC628);
      v85 = type metadata accessor for LabelsSelectionPhase_iOS;
      v86 = v103;
    }

    else if (v164 == 4)
    {
      v68 = *(a2 + 80);
      LOBYTE(v167) = *(a2 + 72);
      v168 = v68;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02144();
      v158 = *(&v165 + 1);
      v164 = v165;
      LODWORD(v157) = v166;
      v69 = *(a2 + 96);
      LOBYTE(v165) = *(a2 + 88);
      *(&v165 + 1) = v69;
      sub_258B02124();
      v70 = v167;
      v71 = *(a2 + 32);
      sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v72 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v73 = swift_allocObject();
      sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v72);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
      *v12 = sub_258B00A24();
      *(v12 + 1) = v74;
      v75 = v158;
      *(v12 + 2) = v164;
      *(v12 + 3) = v75;
      v12[32] = v157;
      v12[33] = v70;
      v12[34] = v71;
      *(v12 + 5) = sub_2589EEF3C;
      *(v12 + 6) = v73;
      v76 = v149;
      v77 = *(v149 + 36);
      *&v12[v77] = swift_getKeyPath();
      v78 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v79 = v76[10];
      *&v12[v79] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v78);
      swift_storeEnumTagMultiPayload();
      v80 = &v12[v76[11]];
      v167 = 0;
      sub_258B02114();
      v81 = *(&v165 + 1);
      *v80 = v165;
      *(v80 + 1) = v81;
      v82 = &v12[v76[12]];
      v167 = 0;
      sub_258B02114();
      v83 = *(&v165 + 1);
      *v82 = v165;
      *(v82 + 1) = v83;
      sub_2589EF1C4(v12, v151, type metadata accessor for DomainsSelectionPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS, &unk_258B3133C);
      sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS, &unk_258B2DB9C);
      v84 = v153;
      sub_258B012A4();
      sub_2589EF1C4(v84, v161, sub_2589EC7B4);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF22C(v84, sub_2589EC7B4);
      v85 = type metadata accessor for DomainsSelectionPhase_iOS;
      v86 = v12;
    }

    else
    {
      sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v123 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v124 = swift_allocObject();
      sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v124 + v123);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

      *v5 = sub_258B00A24();
      v5[1] = v125;
      v5[2] = sub_2589EEF24;
      v5[3] = v124;
      v126 = v152;
      v127 = *(v152 + 24);
      *(v5 + v127) = swift_getKeyPath();
      v128 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v129 = *(v126 + 28);
      *(v5 + v129) = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v128);
      swift_storeEnumTagMultiPayload();
      sub_2589EF1C4(v5, v151, type metadata accessor for NotificationsSetupPhase_iOS);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS, &unk_258B3133C);
      sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS, &unk_258B2DB9C);
      v130 = v153;
      sub_258B012A4();
      sub_2589EF1C4(v130, v161, sub_2589EC7B4);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF22C(v130, sub_2589EC7B4);
      v85 = type metadata accessor for NotificationsSetupPhase_iOS;
      v86 = v5;
    }
  }

  else if (v164)
  {
    if (v164 == 1)
    {
      v44 = *(a2 + 64);
      LOBYTE(v167) = *(a2 + 56);
      v168 = v44;
      v164 = v41;
      sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

      sub_258B02144();
      v45 = v165;
      v46 = v166;
      LODWORD(v153) = *(a2 + 32);
      sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v47 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v48 = swift_allocObject();
      sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
      type metadata accessor for StateOfMindEntryModel(0);
      sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
      *v24 = sub_258B00A24();
      *(v24 + 1) = v49;
      *(v24 + 1) = v45;
      v24[32] = v46;
      v24[33] = (v153 & 1) == 0;
      *(v24 + 5) = sub_2589EEF54;
      *(v24 + 6) = v48;
      v50 = v144;
      v51 = *(v144 + 32);
      *&v24[v51] = swift_getKeyPath();
      v52 = MEMORY[0x277CDF458];
      sub_2589EF00C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v53 = v50[9];
      *&v24[v53] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v52);
      swift_storeEnumTagMultiPayload();
      v54 = v50[10];
      *&v24[v54] = swift_getKeyPath();
      sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v52);
      swift_storeEnumTagMultiPayload();
      v55 = v50[11];
      v167 = 1;
      type metadata accessor for __HKStateOfMindReflectiveInterval(0);
      sub_258B02114();
      *&v24[v55] = v165;
      v56 = v132;
      sub_258AFFFE4();
      v57 = v134;
      v58 = v135;
      (*(v134 + 16))(v133, v56, v135);
      sub_258B02114();
      (*(v57 + 8))(v56, v58);
      v59 = &v24[v50[13]];
      LOBYTE(v167) = 1;
      sub_258B02114();
      v60 = *(&v165 + 1);
      *v59 = v165;
      *(v59 + 1) = v60;
      v61 = sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS, &unk_258B302E8);
      v62 = v137;
      sub_258B01E14();
      sub_2589EF22C(v24, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
      v63 = v138;
      v64 = v150;
      (*(v138 + 16))(v140, v62, v150);
      swift_storeEnumTagMultiPayload();
      sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS, &unk_258B2D680);
      *&v165 = v50;
      *(&v165 + 1) = v61;
      swift_getOpaqueTypeConformance2();
      v65 = v142;
      sub_258B012A4();
      sub_2589EF070(v65, v156, sub_2589EC670);
      swift_storeEnumTagMultiPayload();
      sub_2589ECA24();
      sub_2589ECB3C();
      v66 = v157;
      sub_258B012A4();
      sub_2589EF0D8(v65, sub_2589EC670);
      sub_2589EF070(v66, v161, sub_2589EC628);
      swift_storeEnumTagMultiPayload();
      sub_2589EC9DC();
      sub_2589ECC1C();
      sub_258B012A4();
      sub_2589EF0D8(v66, sub_2589EC628);
      return (*(v63 + 8))(v62, v64);
    }

    v111 = *(a2 + 64);
    LOBYTE(v167) = *(a2 + 56);
    v168 = v111;
    sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

    sub_258B02144();
    v153 = *(&v165 + 1);
    v164 = v165;
    v112 = v166;
    v113 = *(a2 + 96);
    LOBYTE(v165) = *(a2 + 88);
    *(&v165 + 1) = v113;
    sub_258B02124();
    v114 = v167;
    v115 = *(a2 + 32);
    sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v116 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v117 = swift_allocObject();
    sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v117 + v116);
    type metadata accessor for StateOfMindEntryModel(0);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);
    *v19 = sub_258B00A24();
    *(v19 + 1) = v118;
    v119 = v153;
    *(v19 + 2) = v164;
    *(v19 + 3) = v119;
    v19[32] = v112;
    v19[33] = v114;
    v19[34] = v115;
    *(v19 + 5) = sub_2589EEF4C;
    *(v19 + 6) = v117;
    v120 = *(v143 + 36);
    *&v19[v120] = swift_getKeyPath();
    sub_2589EF00C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_2589EF1C4(v19, v145, type metadata accessor for ValenceSelectionPhase_iOS);
    swift_storeEnumTagMultiPayload();
    sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS, &unk_258B3257C);
    sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS, &unk_258B2D9EC);
    v121 = v148;
    sub_258B012A4();
    sub_2589EF1C4(v121, v156, sub_2589EC76C);
    swift_storeEnumTagMultiPayload();
    sub_2589ECA24();
    sub_2589ECB3C();
    v122 = v157;
    sub_258B012A4();
    sub_2589EF22C(v121, sub_2589EC76C);
    sub_2589EF070(v122, v161, sub_2589EC628);
    swift_storeEnumTagMultiPayload();
    sub_2589EC9DC();
    sub_2589ECC1C();
    sub_258B012A4();
    sub_2589EF0D8(v122, sub_2589EC628);
    v85 = type metadata accessor for ValenceSelectionPhase_iOS;
    v86 = v19;
  }

  else
  {
    v87 = *(a2 + 32);
    v88 = v41;
    sub_2589EF1C4(a2, &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v89 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v90 = swift_allocObject();
    sub_2589EDD50(&v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v90 + v89);
    *v43 = swift_getKeyPath();
    sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v91 = (v43 + v88[5]);
    type metadata accessor for StateOfMindEntryModel(0);
    sub_2589EECE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

    *v91 = sub_258B00A24();
    v91[1] = v92;
    *(v43 + v88[6]) = (v87 & 1) == 0;
    v93 = (v43 + v88[7]);
    *v93 = sub_2589EF138;
    v93[1] = v90;
    sub_2589EF1C4(v43, v140, type metadata accessor for IntroPhase_iOS);
    swift_storeEnumTagMultiPayload();
    sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS, &unk_258B2D680);
    v94 = sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS, &unk_258B302E8);
    *&v165 = v144;
    *(&v165 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v95 = v142;
    sub_258B012A4();
    sub_2589EF070(v95, v156, sub_2589EC670);
    swift_storeEnumTagMultiPayload();
    sub_2589ECA24();
    sub_2589ECB3C();
    v96 = v157;
    sub_258B012A4();
    sub_2589EF0D8(v95, sub_2589EC670);
    sub_2589EF070(v96, v161, sub_2589EC628);
    swift_storeEnumTagMultiPayload();
    sub_2589EC9DC();
    sub_2589ECC1C();
    sub_258B012A4();
    sub_2589EF0D8(v96, sub_2589EC628);
    v85 = type metadata accessor for IntroPhase_iOS;
    v86 = v43;
  }

  return sub_2589EF22C(v86, v85);
}

uint64_t sub_2589E78F8(uint64_t a1)
{
  result = sub_2589E41AC();
  if (!result)
  {
    sub_258A16CF4(1, 0);
    sub_2589E3DB8(0);
    sub_258B003E4();

    sub_258B02124();
    v2 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_258A74B6C(0, *(v5 + 16) + 1, 1, v5);
    }

    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_258A74B6C((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = 1;
    sub_258B02134();
  }

  return result;
}

uint64_t sub_2589E7A1C(unsigned __int8 a1)
{
  v3 = sub_258B02624();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_258B02654();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_258B02614();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_258B02674();
  v42 = *(v49 - 8);
  v13 = MEMORY[0x28223BE20](v49);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  result = sub_2589E41AC();
  if (result == a1)
  {
    v41 = v7;
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          sub_258A16CF4(2, 0);
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = 0;
          swift_retain_n();
          sub_258B00574();
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = 0;
          sub_258B00574();
          v20 = *(v1 + 40);
          v19 = *(v1 + 48);
          aBlock = v20;
          v55 = v19;
          sub_2589E3DB8(0);
          sub_258B003E4();

          sub_258B02124();
          v21 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_258A74B6C(0, *(v21 + 2) + 1, 1, v21);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v21 = sub_258A74B6C((v22 > 1), v23 + 1, 1, v21);
          }

          *(v21 + 2) = v23 + 1;
          v24 = &v21[v23];
          v25 = 2;
        }

        else
        {
          sub_258A16CF4(3, 0);
          swift_getKeyPath();
          swift_getKeyPath();
          aBlock = MEMORY[0x277D84F90];

          sub_258B00574();
          v20 = *(v1 + 40);
          v19 = *(v1 + 48);
          aBlock = v20;
          v55 = v19;
          sub_2589E3DB8(0);
          sub_258B003E4();

          sub_258B02124();
          v21 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_258A74B6C(0, *(v21 + 2) + 1, 1, v21);
          }

          v38 = *(v21 + 2);
          v37 = *(v21 + 3);
          if (v38 >= v37 >> 1)
          {
            v21 = sub_258A74B6C((v37 > 1), v38 + 1, 1, v21);
          }

          *(v21 + 2) = v38 + 1;
          v24 = &v21[v38];
          v25 = 3;
        }
      }

      else
      {
        sub_258A16CF4(1, 0);
        v20 = *(v1 + 40);
        v19 = *(v1 + 48);
        aBlock = v20;
        v55 = v19;
        sub_2589E3DB8(0);
        sub_258B003E4();

        sub_258B02124();
        v21 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_258A74B6C(0, *(v21 + 2) + 1, 1, v21);
        }

        v34 = *(v21 + 2);
        v33 = *(v21 + 3);
        if (v34 >= v33 >> 1)
        {
          v21 = sub_258A74B6C((v33 > 1), v34 + 1, 1, v21);
        }

        *(v21 + 2) = v34 + 1;
        v24 = &v21[v34];
        v25 = 1;
      }

LABEL_28:
      v24[32] = v25;
      v51 = v20;
      v52 = v19;
      v50 = v21;
      sub_258B02134();
    }

    if (a1 == 3)
    {
      sub_258A16CF4(4, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = MEMORY[0x277D84F90];

      sub_258B00574();
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0;
      v55 = 0xE000000000000000;

      sub_258B00574();
      sub_258A1A924();
      v20 = *(v1 + 40);
      v19 = *(v1 + 48);
      aBlock = v20;
      v55 = v19;
      sub_2589E3DB8(0);
      sub_258B003E4();

      sub_258B02124();
      v21 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_258A74B6C(0, *(v21 + 2) + 1, 1, v21);
      }

      v36 = *(v21 + 2);
      v35 = *(v21 + 3);
      if (v36 >= v35 >> 1)
      {
        v21 = sub_258A74B6C((v35 > 1), v36 + 1, 1, v21);
      }

      *(v21 + 2) = v36 + 1;
      v24 = &v21[v36];
      v25 = 4;
      goto LABEL_28;
    }

    if (a1 == 4)
    {
      sub_258A16CF4(5, 0);
      sub_2589E8EFC();
      sub_2589EEBEC();
      v40 = sub_258B02F54();
      sub_258B02664();
      *v12 = 2200;
      (*(v10 + 104))(v12, *MEMORY[0x277D85178], v9);
      MEMORY[0x259C92C80](v15, v12);
      (*(v10 + 8))(v12, v9);
      v42 = *(v42 + 8);
      (v42)(v15, v49);
      sub_2589EF1C4(v1, &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
      v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v27 = swift_allocObject();
      sub_2589EDD50(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
      v58 = sub_2589EEC38;
      v59 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = sub_2589E92FC;
      v57 = &block_descriptor_0;
      v28 = _Block_copy(&aBlock);

      v29 = v43;
      sub_258B02644();
      aBlock = MEMORY[0x277D84F90];
      sub_2589EECE0(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_2589EECAC(0);
      sub_2589EECE0(&qword_27F96EBE0, sub_2589EECAC, MEMORY[0x277D83970]);
      v30 = v45;
      v31 = v48;
      sub_258B03114();
      v32 = v40;
      MEMORY[0x259C93530](v17, v29, v30, v28);
      _Block_release(v28);

      (*(v47 + 8))(v30, v31);
      (*(v44 + 8))(v29, v46);
      return (v42)(v17, v49);
    }

    else
    {
      sub_258A16CF4(9, 0);

      return sub_2589E9340();
    }
  }

  return result;
}

uint64_t sub_2589E8450()
{
  result = sub_2589E41AC();
  if (result == 5)
  {
    sub_258A16CF4(9, 0);
    return sub_2589E9340();
  }

  return result;
}

uint64_t sub_2589E849C@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v48 = a1;
  v55 = a3;
  sub_2589ED110(0, &qword_27F96D660, sub_2589ED1D4, sub_2589ED21C, sub_2589ED94C);
  v54 = v4;
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47[-v5];
  sub_2589ED1D4(0);
  v8 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589ED110(0, &qword_27F96D640, sub_2589ECEC0, sub_2589ECF08, sub_2589ED038);
  v53 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47[-v13];
  sub_2589ECEC0(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589ECDD0(0);
  v52 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v47[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v3 + 32))
  {
    sub_2589EA4FC(v48, v51 & 1, v10);
    sub_2589ED21C(255);
    v24 = v23;
    v25 = sub_2589ED94C();
    v56 = v24;
    v57 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A00](v10, v8, OpaqueTypeConformance2);
    sub_2589ECF08(255);
    v28 = v27;
    v29 = sub_2589ED038();
    v56 = v28;
    v57 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v56 = v16;
    v57 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v56 = v8;
    v57 = OpaqueTypeConformance2;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = v54;
    MEMORY[0x259C91A20](v6, v53, v54, v31, v32);
    (*(v50 + 8))(v6, v33);
    (*(v49 + 8))(v10, v8);
  }

  else
  {
    sub_2589EA094(v51 & 1, v19);
    sub_2589ECF08(255);
    v35 = v34;
    v36 = sub_2589ED038();
    v56 = v35;
    v57 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A00](v19, v16, v37);
    v56 = v16;
    v57 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    sub_2589ED21C(255);
    v40 = v39;
    v41 = sub_2589ED94C();
    v56 = v40;
    v57 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v56 = v8;
    v57 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v53;
    MEMORY[0x259C91A10](v14, v53, v54, v38, v43);
    (*(v12 + 8))(v14, v44);
    (*(v17 + 8))(v19, v16);
  }

  v45 = sub_2589EDA24();
  MEMORY[0x259C91A00](v22, v52, v45);
  return sub_2589EF0D8(v22, sub_2589ECDD0);
}

uint64_t sub_2589E89DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v48 = a2;
  v44 = sub_258B00FB4();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC7FC();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC484(0);
  v40 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EC324(0);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  MEMORY[0x28223BE20](v11);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024C4();
  v14 = MEMORY[0x277CE1340];
  v15 = MEMORY[0x277CE1350];
  sub_258B010D4();
  sub_2589EC5AC(0);
  v17 = v16;
  sub_2589EC87C(0);
  v19 = v18;
  v20 = sub_2589EC920();
  v50 = v15;
  v51 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_258B024B4();
  v50 = v17;
  v51 = v22;
  v52 = v20;
  v53 = MEMORY[0x277CE1320];
  v37 = swift_getOpaqueTypeConformance2();
  sub_258B01F14();
  (*(v5 + 8))(v7, v4);
  v23 = v43;
  v24 = v41;
  v25 = v44;
  (*(v43 + 104))(v41, *MEMORY[0x277CDDDC0], v44);
  v50 = v17;
  v51 = v4;
  v52 = v19;
  v53 = v20;
  v54 = OpaqueTypeConformance2;
  v55 = v37;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v39;
  v28 = v40;
  sub_258B01E24();
  (*(v23 + 8))(v24, v25);
  (*(v42 + 8))(v10, v28);
  v49 = v45;
  sub_2589ED110(0, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
  v50 = v28;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  sub_2589ECCFC(255);
  v30 = v29;
  sub_2589ECDD0(255);
  v32 = v31;
  v33 = sub_2589EDA24();
  v50 = v32;
  v51 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v50 = v30;
  v51 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v46;
  sub_258B01EE4();
  return (*(v47 + 8))(v27, v35);
}

uint64_t sub_2589E8EFC()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2589EF00C(0, &qword_280DF8930, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  v8 = *(v0 + 80);
  v15[16] = *(v0 + 72);
  v16 = v8;
  v15[15] = 1;
  sub_2589EE73C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_2589EF1C4(v0, v4, type metadata accessor for StateOfMindEntryView_iOS);
  sub_258B02D24();
  v10 = sub_258B02D14();
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2589EDD50(v4, v12 + v11);
  sub_258A8F090(0, 0, v7, &unk_258B2CE28, v12);
}

void sub_2589E9144()
{
  v12 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  if ([v12 hasEverEnabledAStateOfMindReminderNotification])
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 isiPad];

  if ((v3 & 1) != 0 || *(v0 + 32) == 1)
  {
LABEL_5:
    sub_2589E9340();
  }

  else
  {
    sub_2589E3DB8(0);
    sub_258B003E4();

    sub_258B02124();
    v4 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_258A74B6C(0, *(v13 + 16) + 1, 1, v13);
    }

    v5 = *(v4 + 2);
    v6 = *(v4 + 3);
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v11 = v5 + 1;
      v8 = v4;
      v9 = *(v4 + 2);
      v10 = sub_258A74B6C((v6 > 1), v5 + 1, 1, v8);
      v5 = v9;
      v7 = v11;
      v4 = v10;
    }

    *(v4 + 2) = v7;
    v4[v5 + 32] = 5;
    sub_258B02134();
  }
}

uint64_t sub_2589E92FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2589E9340()
{
  v1 = sub_258B02624();
  v20 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B02654();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(v0 + 16);
  v11 = sub_258A16BE4();
  result = v10(v11 & 1);
  if ((result & 1) == 0)
  {
    sub_2589EEBEC();
    v13 = sub_258B02F54();
    sub_2589EF1C4(v0, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    sub_2589EDD50(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    aBlock[4] = sub_2589EEF0C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_80;
    v16 = _Block_copy(aBlock);

    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2589EECE0(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2589EECAC(0);
    sub_2589EECE0(&qword_27F96EBE0, sub_2589EECAC, MEMORY[0x277D83970]);
    sub_258B03114();
    MEMORY[0x259C93560](0, v6, v3, v16);
    _Block_release(v16);

    (*(v20 + 8))(v3, v1);
    return (*(v18 + 8))(v6, v19);
  }

  return result;
}

uint64_t sub_2589E96D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_258B02D24();
  v4[4] = sub_258B02D14();
  v6 = sub_258B02CE4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_2589E9774, v6, v5);
}

uint64_t sub_2589E9774()
{
  v0[7] = *(v0[2] + 8);
  v0[8] = sub_258B02D14();
  v2 = sub_258B02CE4();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x2822009F8](sub_2589E9808, v2, v1);
}

uint64_t sub_2589E9808()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave;
  if (*(v1 + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_hasInitiatedSampleSave) == 1)
  {

    v3 = v0[5];
    v4 = v0[6];

    return MEMORY[0x2822009F8](sub_2589E9D9C, v3, v4);
  }

  else
  {
    v5 = sub_258A1BB58();
    v0[11] = v5;
    *(v1 + v2) = 1;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_2589E9910;

    return sub_258A1BE40(v5);
  }
}

uint64_t sub_2589E9910()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2589E9A30, v3, v2);
}

uint64_t sub_2589E9A30()
{
  sub_258A16CF4(7, 0);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2589E9AD0;

  return sub_258A1CEB0();
}

uint64_t sub_2589E9AD0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_2589E9C10;

  return sub_258A1D7C4();
}

uint64_t sub_2589E9C10()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_2589E9D30, v3, v2);
}

uint64_t sub_2589E9D30()
{
  v1 = v0[11];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_2589E9D9C, v2, v3);
}

uint64_t sub_2589E9D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2589E9DFC(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_258B008A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StateOfMindEntryView_iOS(0);
  sub_2589EE78C(a1 + *(v13 + 44), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_258B02E94();
    v14 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_258B00894();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2589EA094@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_2589C60B0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258B01384();
  MEMORY[0x28223BE20](v9 - 8);
  sub_2589C6164(0);
  v11 = v10;
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ECF08(0);
  v31 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  if (a1)
  {
    v20 = sub_258B01334();
    v28 = a2;
    MEMORY[0x28223BE20](v20);
    *(&v28 - 2) = v2;
    sub_2589ECFF0(0);
    sub_2589C6218();
    sub_258B00784();
    v21 = sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    v22 = v30;
    MEMORY[0x259C91A00](v13, v11, v21);
    (*(v7 + 16))(v17, v22, v6);
    (*(v7 + 56))(v17, 0, 1, v6);
    v32 = v11;
    v33 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v17, v6, OpaqueTypeConformance2);
    sub_2589EF0D8(v17, sub_2589ECF08);
    (*(v7 + 8))(v22, v6);
    (*(v29 + 8))(v13, v11);
  }

  else
  {
    (*(v7 + 56))(v17, 1, 1, v6);
    v24 = sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    v32 = v11;
    v33 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v17, v6, v25);
    sub_2589EF0D8(v17, sub_2589ECF08);
  }

  v26 = sub_2589ED038();
  MEMORY[0x259C91A00](v19, v31, v26);
  return sub_2589EF0D8(v19, sub_2589ECF08);
}

uint64_t sub_2589EA4FC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2589ED250(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B01384();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2589ED28C(0);
  v12 = v11;
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED21C(0);
  v32 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  if (a2)
  {
    v21 = sub_258B01334();
    v29[1] = a3;
    MEMORY[0x28223BE20](v21);
    LOBYTE(v29[-2]) = a1;
    v29[-1] = v29[2];
    sub_2589ED33C(0);
    sub_2589ED6B8();
    sub_258B00784();
    v22 = sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C, MEMORY[0x277CDD7A8]);
    v23 = v31;
    MEMORY[0x259C91A00](v14, v12, v22);
    (*(v8 + 16))(v18, v23, v7);
    (*(v8 + 56))(v18, 0, 1, v7);
    v33 = v12;
    v34 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v18, v7, OpaqueTypeConformance2);
    sub_2589EF0D8(v18, sub_2589ED21C);
    (*(v8 + 8))(v23, v7);
    (*(v30 + 8))(v14, v12);
  }

  else
  {
    (*(v8 + 56))(v18, 1, 1, v7);
    v25 = sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C, MEMORY[0x277CDD7A8]);
    v33 = v12;
    v34 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x259C91A30](v18, v7, v26);
    sub_2589EF0D8(v18, sub_2589ED21C);
  }

  v27 = sub_2589ED94C();
  MEMORY[0x259C91A00](v20, v32, v27);
  return sub_2589EF0D8(v20, sub_2589ED21C);
}

uint64_t sub_2589EA974(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF1C4(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_2589EDD50(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_258B026A4();
  v13[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D4BF8);
  v11 = MEMORY[0x277D837D0];
  sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v11, MEMORY[0x277D83958]);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D4C18);
  sub_2589EECE0(&qword_27F96CBA0, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_258B01DD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2589EAC40()
{
  v0 = sub_258B008A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2589E41AC();
  sub_258A16CF4(0x90504030201uLL >> (8 * v4), 1);
  sub_2589E3F98(v3);
  sub_258B00894();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2589EAD44@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = a1;
  sub_2589ED414(0);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED3CC(0);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF390(0, &qword_27F96D778, sub_2589ED384, sub_2589ED3CC, MEMORY[0x277CE0330]);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v44 = &v37 - v11;
  v12 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = sub_258B026B4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED384(0);
  v42 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589EF1C4(a2, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StateOfMindEntryView_iOS);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = v22 + v14;
  if (v5 == 4)
  {
    v24 = swift_allocObject();
    sub_2589EDD50(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
    *(v24 + v23) = 4;
    sub_258B026A4();
    v47 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D4C28);
    v25 = MEMORY[0x277D837D0];
    sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v25, MEMORY[0x277D83958]);
    sub_258B02A34();

    sub_2589C68A0(&unk_2869D4C48);
    sub_2589EECE0(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
    sub_258B01DD4();

    (*(v16 + 8))(v18, v15);
    sub_2589EF1C4(v21, v44, sub_2589ED384);
    swift_storeEnumTagMultiPayload();
    sub_2589ED78C();
    sub_2589ED86C();
    sub_258B012A4();
    return sub_2589EF22C(v21, sub_2589ED384);
  }

  else
  {
    v27 = swift_allocObject();
    sub_2589EDD50(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v22);
    *(v27 + v23) = a1;
    sub_2589ED538(0);
    sub_2589ED63C();
    v29 = v28;
    v30 = sub_258B01034();
    v31 = sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
    v32 = sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    v47 = v29;
    v48 = v30;
    v49 = v31;
    v50 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v38;
    sub_258B02174();
    v47 = &unk_2869D4670;
    sub_2589FC8C8(&unk_2869D4C58);
    v34 = MEMORY[0x277D837D0];
    sub_2589EE73C(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2589EE5F0(&qword_280DF8940, &qword_280DF8948, v34, MEMORY[0x277D83958]);
    sub_258B02A34();

    sub_2589C68A0(&unk_2869D4C78);
    sub_2589EECE0(&qword_27F96D6E8, sub_2589ED414, MEMORY[0x277CDF028]);
    v35 = v40;
    v36 = v41;
    sub_258B01DD4();

    (*(v39 + 8))(v33, v35);
    sub_2589EF070(v36, v44, sub_2589ED3CC);
    swift_storeEnumTagMultiPayload();
    sub_2589ED78C();
    sub_2589ED86C();
    sub_258B012A4();
    return sub_2589EF0D8(v36, sub_2589ED3CC);
  }
}

uint64_t sub_2589EB510()
{
  v0 = sub_258B01034();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v12[0] = sub_258AFFD94();
  v12[1] = v9;
  sub_2589BFF58(v12[0], v9, v10);
  sub_258B020F4();
  sub_258B01024();
  sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
  sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_258B01BC4();
  (*(v1 + 8))(v3, v0);
  return (*(v6 + 8))(v8, v5);
}

void sub_2589EB894()
{
  if (!qword_27F96D550)
  {
    sub_2589EE73C(255, &qword_27F96C960, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D83940]);
    sub_2589EBBA0();
    sub_2589EBE64(255);
    sub_2589EC0DC(255);
    sub_2589EC324(255);
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484(255);
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0(255);
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589EDB48(OpaqueTypeConformance2, v0, v1);
    swift_getOpaqueTypeConformance2();
    v2 = sub_258B00B34();
    if (!v3)
    {
      atomic_store(v2, &qword_27F96D550);
    }
  }
}

void sub_2589EBBA0()
{
  if (!qword_27F96D558)
  {
    sub_2589EBE64(255);
    sub_2589EC0DC(255);
    sub_2589EC324(255);
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484(255);
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0(255);
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2589EDB48(OpaqueTypeConformance2, v0, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D558);
    }
  }
}

void sub_2589EBE64(uint64_t a1)
{
  if (!qword_27F96D560)
  {
    sub_2589EC0DC(255);
    sub_2589EC324(255);
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484(255);
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0(255);
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D560);
    }
  }
}

void sub_2589EC0DC(uint64_t a1)
{
  if (!qword_27F96D568)
  {
    sub_2589EC324(255);
    sub_2589ED110(255, &qword_27F96D628, sub_2589ECCFC, sub_2589ECDD0, sub_2589EDA24);
    sub_2589EC484(255);
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ECCFC(255);
    sub_2589ECDD0(255);
    sub_2589EDA24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D568);
    }
  }
}

void sub_2589EC324(uint64_t a1)
{
  if (!qword_27F96D570)
  {
    sub_2589EC484(255);
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D570);
    }
  }
}

void sub_2589EC484(uint64_t a1)
{
  if (!qword_27F96D578)
  {
    sub_2589EC5AC(255);
    sub_2589EC7FC();
    sub_2589EC87C(255);
    sub_2589EC920();
    swift_getOpaqueTypeConformance2();
    sub_258B024B4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D578);
    }
  }
}

void sub_2589EC6B8(uint64_t a1)
{
  if (!qword_27F96D5A0)
  {
    type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(255);
    sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS, &unk_258B302E8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5A0);
    }
  }
}

void sub_2589EC7FC()
{
  if (!qword_27F96D5C0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5C0);
    }
  }
}

void sub_2589EC87C(uint64_t a1)
{
  if (!qword_27F96D5C8)
  {
    sub_2589EC5AC(255);
    sub_258B024B4();
    sub_2589EC920();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D5C8);
    }
  }
}

unint64_t sub_2589EC920()
{
  result = qword_27F96D5D0;
  if (!qword_27F96D5D0)
  {
    sub_2589EC5AC(255);
    sub_2589ED700(&qword_27F96D5D8, sub_2589EC5E0, sub_2589EC9DC, sub_2589ECC1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5D0);
  }

  return result;
}

unint64_t sub_2589ECA24()
{
  result = qword_27F96D5E8;
  if (!qword_27F96D5E8)
  {
    sub_2589EC670(255);
    sub_2589EECE0(&qword_27F96D5F0, type metadata accessor for IntroPhase_iOS, &unk_258B2D680);
    type metadata accessor for ReflectiveIntervalSelectionPhase_iOS(255);
    sub_2589EECE0(&qword_27F96D5A8, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS, &unk_258B302E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5E8);
  }

  return result;
}

unint64_t sub_2589ECB3C()
{
  result = qword_27F96D5F8;
  if (!qword_27F96D5F8)
  {
    sub_2589EC76C(255);
    sub_2589EECE0(&qword_27F96D600, type metadata accessor for ValenceSelectionPhase_iOS, &unk_258B3257C);
    sub_2589EECE0(&qword_27F96D608, type metadata accessor for LabelsSelectionPhase_iOS, &unk_258B2D9EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D5F8);
  }

  return result;
}

unint64_t sub_2589ECC1C()
{
  result = qword_27F96D610;
  if (!qword_27F96D610)
  {
    sub_2589EC7B4(255);
    sub_2589EECE0(&qword_27F96D618, type metadata accessor for DomainsSelectionPhase_iOS, &unk_258B3133C);
    sub_2589EECE0(&qword_27F96D620, type metadata accessor for NotificationsSetupPhase_iOS, &unk_258B2DB9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D610);
  }

  return result;
}

void sub_2589ECD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2589ECDD0(uint64_t a1)
{
  if (!qword_27F96D638)
  {
    sub_2589ED110(255, &qword_27F96D640, sub_2589ECEC0, sub_2589ECF08, sub_2589ED038);
    sub_2589ED110(255, &qword_27F96D660, sub_2589ED1D4, sub_2589ED21C, sub_2589ED94C);
    v1 = sub_258B012B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D638);
    }
  }
}

void sub_2589ECF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2589EECE0(a4, a5, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2589ED038()
{
  result = qword_27F96D658;
  if (!qword_27F96D658)
  {
    sub_2589ECF08(255);
    sub_2589C6164(255);
    sub_2589EECE0(&qword_27F96CBA8, sub_2589C6164, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D658);
  }

  return result;
}

void sub_2589ED110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_2589ED2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_258B00794();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589ED414(uint64_t a1)
{
  if (!qword_27F96D6A0)
  {
    sub_2589ED538(255);
    sub_2589ED63C();
    sub_258B01034();
    sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
    sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D6A0);
    }
  }
}

void sub_2589ED538(uint64_t a1)
{
  if (!qword_27F96D6A8)
  {
    sub_2589ED63C();
    sub_258B01034();
    sub_2589EECE0(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
    sub_2589EECE0(&qword_27F96D6C0, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96D6A8);
    }
  }
}

void sub_2589ED63C()
{
  if (!qword_27F96D6B0)
  {
    v0 = sub_258B02104();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D6B0);
    }
  }
}

uint64_t sub_2589ED700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2589ED78C()
{
  result = qword_27F96D6D0;
  if (!qword_27F96D6D0)
  {
    sub_2589ED384(255);
    sub_2589EECE0(&qword_27F96D6D8, MEMORY[0x277D12688], MEMORY[0x277D12678]);
    sub_2589EECE0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6D0);
  }

  return result;
}

unint64_t sub_2589ED86C()
{
  result = qword_27F96D6E0;
  if (!qword_27F96D6E0)
  {
    sub_2589ED3CC(255);
    sub_2589EECE0(&qword_27F96D6E8, sub_2589ED414, MEMORY[0x277CDF028]);
    sub_2589EECE0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6E0);
  }

  return result;
}

unint64_t sub_2589ED94C()
{
  result = qword_27F96D6F8;
  if (!qword_27F96D6F8)
  {
    sub_2589ED21C(255);
    sub_2589ED28C(255);
    sub_2589EECE0(&qword_27F96D6F0, sub_2589ED28C, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D6F8);
  }

  return result;
}

unint64_t sub_2589EDA24()
{
  result = qword_27F96D700;
  if (!qword_27F96D700)
  {
    sub_2589ECDD0(255);
    sub_2589ECEC0(255);
    sub_2589ECF08(255);
    sub_2589ED038();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2589ED1D4(255);
    sub_2589ED21C(255);
    sub_2589ED94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D700);
  }

  return result;
}

unint64_t sub_2589EDB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D708;
  if (!qword_27F96D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D708);
  }

  return result;
}

void sub_2589EDB9C(uint64_t a1)
{
  if (!qword_27F96D710)
  {
    sub_2589EE73C(255, &qword_27F96D718, MEMORY[0x277CDF6A8], MEMORY[0x277D83D88]);
    v1 = sub_258B017C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D710);
    }
  }
}

unint64_t sub_2589EDC18()
{
  result = qword_27F96D720;
  if (!qword_27F96D720)
  {
    sub_2589EB84C(255);
    sub_2589EECE0(&qword_27F96D728, sub_2589EB894, MEMORY[0x277CDDA18]);
    sub_2589EECE0(&qword_27F96D730, sub_2589EDB9C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D720);
  }

  return result;
}

void sub_2589EDCF8()
{
  if (!qword_27F96D738)
  {
    v0 = sub_258B01584();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D738);
    }
  }
}

uint64_t sub_2589EDD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindEntryView_iOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589EDDB4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(type metadata accessor for StateOfMindEntryView_iOS(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2589E529C(a1, v6, a2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B008A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B006A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[13];
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B01504();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1, v8))
    {
      (*(v9 + 8))(v7, v8);
    }

    v10 = *(type metadata accessor for IntroPhaseSpecs(0) + 20);
    v11 = sub_258B00AA4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2589EE170(char *a1)
{
  v3 = *(type metadata accessor for StateOfMindEntryView_iOS(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2589E55F0(a1, v4);
}

unint64_t sub_2589EE1E0()
{
  result = qword_27F96D748;
  if (!qword_27F96D748)
  {
    sub_2589EB7BC(255);
    sub_2589EB84C(255);
    sub_2589EDC18();
    swift_getOpaqueTypeConformance2();
    sub_2589EECE0(&qword_27F96D750, sub_2589EDCF8, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D748);
  }

  return result;
}

uint64_t sub_2589EE32C(uint64_t a1)
{
  v2 = sub_258B00224();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00EE4();
}

uint64_t sub_2589EE40C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_258B00E34();
  a4(0);
  return sub_258B00D84();
}

uint64_t sub_2589EE458()
{
  v0 = sub_258B024B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B024A4();
  sub_2589EC5AC(0);
  v5 = v4;
  v6 = sub_2589EC920();
  MEMORY[0x259C92300](v3, MEMORY[0x277D84F90], v5, v0, v6, MEMORY[0x277CE1320]);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2589EE560(uint64_t a1)
{
  sub_2589ECCFC(0);
  v3 = v2;
  sub_2589ECDD0(255);
  sub_2589EDA24();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return MEMORY[0x259C91A00](a1, v3, OpaqueTypeConformance2);
}

uint64_t sub_2589EE5F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2589EE73C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2589EE648@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C914A0]();
  *a1 = result;
  return result;
}

void sub_2589EE73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589EE78C(uint64_t a1, uint64_t a2)
{
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for StateOfMindEntryView_iOS(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_2589EF00C(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B008A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_2589EF00C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_258B006A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[13];
  sub_2589EF00C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B01504();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v7, 1, v8))
    {
      (*(v9 + 8))(v7, v8);
    }

    v10 = *(type metadata accessor for IntroPhaseSpecs(0) + 20);
    v11 = sub_258B00AA4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2589EEBEC()
{
  result = qword_280DF8F98;
  if (!qword_280DF8F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF8F98);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589EECE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2589EED28(uint64_t a1)
{
  v4 = *(type metadata accessor for StateOfMindEntryView_iOS(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2589EEE18;

  return sub_2589E96D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_2589EEE18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t keypath_get_85Tm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_258B00E34();
  a4(0);
  return sub_258B00D84();
}

void sub_2589EF00C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2589EF070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589EF0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2589EF150(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for StateOfMindEntryView_iOS(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2589EF1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2589EF22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2589EF28C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_2589EF29C()
{
  result = qword_27F96D7D0;
  if (!qword_27F96D7D0)
  {
    sub_2589EF390(255, &qword_27F96D7D8, sub_2589EB804, sub_2589EB7BC, MEMORY[0x277CE0338]);
    sub_2589EB84C(255);
    sub_2589EDC18();
    swift_getOpaqueTypeConformance2();
    sub_2589EE1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D7D0);
  }

  return result;
}

void sub_2589EF390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t NotificationSettingsModel.areNotificationsDisabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_2589EF494@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v4;
  return result;
}

uint64_t sub_2589EF514(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_258B00574();
}

uint64_t NotificationSettingsModel.areNotificationsDisabled.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_258B00574();
}

uint64_t (*NotificationSettingsModel.areNotificationsDisabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_2589EF694;
}

void sub_2589EF694(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t NotificationSettingsModel.$areNotificationsDisabled.getter()
{
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_2589EF788(void *a1)
{
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_2589EF818(char *a1, uint64_t *a2)
{
  v3 = MEMORY[0x277D839B0];
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(v6 + 16);
  v12(&v14 - v10, a1, v5);
  v12(v9, v11, v5);
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, v3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v6 + 8))(v11, v5);
}

uint64_t NotificationSettingsModel.$areNotificationsDisabled.setter(uint64_t a1)
{
  v2 = MEMORY[0x277D839B0];
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - v6, a1, v4);
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, v2, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*NotificationSettingsModel.$areNotificationsDisabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2589F452C(0, &qword_27F96D7E0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel__areNotificationsDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_2589EFCE4;
}

void sub_2589EFCE4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_258B00544();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_258B00544();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id NotificationSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *NotificationSettingsModel.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v3 = objc_allocWithZone(ObjectType);
  v4 = NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(v1, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *NotificationSettingsModel.init(settingsManager:userNotificationCenter:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_2589F452C(0, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel__areNotificationsDisabled;
  v27 = 0;
  sub_258B00524();
  (*(v9 + 32))(&v3[v12], v11, v8);
  *&v3[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager] = a1;
  *&v3[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter] = a2;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v13 = a1;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter];
  v17 = v15;
  v18 = [v16 notificationSettings];
  v19 = [v18 authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v19 != 2;
  v20 = v17;
  sub_258B00574();
  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v20 selector:sel_updateNotificationAuthorizationStatus name:*MEMORY[0x277D76758] object:0];

  sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
  v22 = v20;
  v23 = sub_258B02F54();
  [v13 addObserver:v22 queue:v23];

  return v22;
}

Swift::Void __swiftcall NotificationSettingsModel.updateNotificationAuthorizationStatus()()
{
  v1 = [*&v0[OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_userNotificationCenter] notificationSettings];
  [v1 authorizationStatus];

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_258B00574();
}

id NotificationSettingsModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76758] object:0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id (*NotificationSettingsModel.middayNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 middayNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F07AC;
}

id (*NotificationSettingsModel.endOfDayNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 endOfDayNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F08EC;
}

unint64_t NotificationSettingsModel.customReminderSchedule.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v2 = sub_258B003E4();
  v4 = sub_2589F3C90(v2, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v4);

  return v4;
}

uint64_t sub_2589F09E8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v4 = sub_258B003E4();
  v6 = sub_2589F3C90(v4, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v6);

  *a2 = v6;
  return result;
}

void sub_2589F0AD8(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  v3 = sub_258B02C64();
  [v2 setCustomReminderSchedule_];
}

void NotificationSettingsModel.customReminderSchedule.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  v3 = sub_258B02C64();

  [v2 setCustomReminderSchedule_];
}

uint64_t sub_2589F0BEC(void **a1, void **a2)
{
  v4 = sub_258AFFD44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = *a1;
  v17 = *a2;
  v35 = [v16 dateComponents];
  sub_258AFFCD4();
  v36 = sub_258AFFCE4();
  LOBYTE(a2) = v18;
  v19 = *(v5 + 8);
  result = v19(v15, v4);
  if (a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = [v16 dateComponents];
  sub_258AFFCD4();
  v34 = sub_258AFFD04();
  v23 = v22;
  result = v19(v13, v4);
  if (v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = [v17 dateComponents];
  sub_258AFFCD4();
  v33 = sub_258AFFCE4();
  v26 = v25;
  result = v19(v10, v4);
  if (v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = [v17 dateComponents];
  v28 = v37;
  sub_258AFFCD4();
  v29 = sub_258AFFD04();
  v31 = v30;
  result = v19(v28, v4);
  if (v31)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v36 == v33)
  {
    return v34 < v29;
  }

  else
  {
    return v36 < v33;
  }
}

void (*NotificationSettingsModel.customReminderSchedule.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  a1[1] = v3;
  v4 = [v3 customReminderSchedule];
  a1[2] = sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v5 = sub_258B003E4();
  v7 = sub_2589F3C90(v5, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v7);

  *a1 = v7;
  return sub_2589F0F9C;
}

void sub_2589F0F9C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    sub_258B003E4();
    v3 = sub_258B02C64();

    [v2 setCustomReminderSchedule_];
  }

  else
  {
    v3 = sub_258B02C64();

    [v2 setCustomReminderSchedule_];
  }
}

void sub_2589F104C(uint64_t a1, int a2)
{
  v25 = a2;
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  v9 = [v8 customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v10 = sub_258B003E4();
  v26 = sub_2589F3C90(v10, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v26);

  v12 = v26;
  MEMORY[0x28223BE20](v11);
  *&v24[-16] = a1;
  v13 = sub_258A7953C(sub_2589F45D0, &v24[-32], v12);

  if (v13)
  {
    sub_258B00364();
    v14 = sub_258B00374();
    v15 = sub_258B02EA4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2589A1000, v14, v15, "Attempting to add a reminder time that already exists in the schedule.", v16, 2u);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D280B0]);
    v18 = sub_258AFFCB4();
    v19 = [v17 initWithDateComponents:v18 isEnabled:v25 & 1];

    v20 = [v8 customReminderSchedule];
    sub_258B02C74();

    v21 = sub_258B003E4();
    v26 = sub_2589F3C90(v21, sub_258AEAF90, sub_2589F3D60);
    sub_2589F2550(&v26);

    v22 = v19;
    MEMORY[0x259C93250]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258B02C94();
    }

    sub_258B02CB4();
    v23 = sub_258B02C64();

    [v8 setCustomReminderSchedule_];
  }
}

void sub_2589F1408(uint64_t a1)
{
  v3 = sub_258B00384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  v8 = [v7 customReminderSchedule];
  sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
  sub_258B02C74();

  v9 = sub_258B003E4();
  v23 = sub_2589F3C90(v9, sub_258AEAF90, sub_2589F3D60);
  sub_2589F2550(&v23);

  v11 = v23;
  MEMORY[0x28223BE20](v10);
  *(&v22 - 2) = a1;
  sub_258AB3620(sub_2589F45F0, (&v22 - 4), v11);
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    sub_258B00364();
    v16 = sub_258B00374();
    v17 = sub_258B02E84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2589A1000, v16, v17, "trying to remove a component not found in the array", v18, 2u);
      MEMORY[0x259C945C0](v18, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v19 = [v7 customReminderSchedule];
    sub_258B02C74();

    v20 = sub_258B003E4();
    v23 = sub_2589F3C90(v20, sub_258AEAF90, sub_2589F3D60);
    sub_2589F2550(&v23);

    v21 = sub_258B02C64();

    [v7 setCustomReminderSchedule_];
  }
}

uint64_t sub_2589F173C(id *a1, uint64_t a2)
{
  v4 = sub_258AFFD44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 dateComponents];
  sub_258AFFCD4();

  LOBYTE(a2) = MEMORY[0x259C902C0](v7, a2);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

unint64_t sub_2589F1848(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2589F39C8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2589F18E4(SEL *a1)
{
  if ([*(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) *a1])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_2589F1990@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager) *a2];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v5 = v6 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5 & 1;
  return result;
}

id (*NotificationSettingsModel.periodicPromptedAssessmentNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14MentalHealthUI25NotificationSettingsModel_settingsManager);
  *a1 = v3;
  if ([v3 periodicPromptedAssessmentNotificationsEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v4 = *(a1 + 9) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_2589F1B48;
}

uint64_t NotificationSettingsModel.settingsManagerDidUpdateNotificationSettings(_:)()
{
  swift_getObjectType();
  sub_2589F3A58();
  sub_258B004E4();
  sub_258B00504();
}

Swift::Bool __swiftcall NotificationSettingsModel.shouldShowMindfulnessSettingsButton()()
{
  v27[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCD778]) initWithBundleIdentifier_];
  v27[0] = 0;
  v5 = [v4 isWatchAppInstalledWithError_];
  if (v5)
  {
    v6 = v5;
    v7 = v27[0];
    v8 = [v6 BOOLValue];
  }

  else
  {
    v9 = v27[0];
    v10 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v11 = v10;
    v12 = sub_258B00374();
    v13 = sub_258B02E84();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v14 = 136446466;
      v15 = sub_258B035A4();
      v17 = sub_2589F1F78(v15, v16, v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v26 = v10;
      v18 = v10;
      sub_2589F3AFC();
      v19 = sub_258B02B34();
      v21 = sub_2589F1F78(v19, v20, v27);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Could not determine if Mindfulness app is installed with error: %s", v14, 0x16u);
      v22 = v25;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v22, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v8;
}

uint64_t sub_2589F1F38@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_258B004E4();
  *a2 = result;
  return result;
}

unint64_t sub_2589F1F78(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_258B003E4();
  v6 = sub_2589F2044(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2589F44D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2589F2044(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2589F2150(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_258B03214();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2589F2150(uint64_t a1, unint64_t a2)
{
  v3 = sub_2589F219C(a1, a2);
  sub_2589F22CC(&unk_2869D4648);
  return v3;
}

void *sub_2589F219C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2589F23B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_258B03214();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_258B02BC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2589F23B8(v10, 0);
        result = sub_258B031A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2589F22CC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2589F2444(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2589F23B8(uint64_t a1, uint64_t a2)
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

  sub_2589F452C(0, &qword_27F96D8B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2589F2444(char *result, int64_t a2, char a3, char *a4)
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
    sub_2589F452C(0, &qword_27F96D8B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2589F2550(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2589F25CC(v6);
  return sub_258B03234();
}

void sub_2589F25CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2589F2A70(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2589F26E0(0, v2, 1, a1);
  }
}

void sub_2589F26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_258AFFD44();
  v9 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v16;
  v54 = a2;
  if (a3 != a2)
  {
    v17 = (v15 + 8);
    v62 = *a4;
    v18 = (v62 + 8 * a3 - 8);
    v19 = a1 - a3;
    v20 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_5:
    v56 = v18;
    v57 = a3;
    v21 = *(v62 + 8 * a3);
    v55 = v19;
    v22 = v19;
    while (1)
    {
      v70 = v18;
      v23 = *v18;
      v24 = v21;
      v25 = v23;
      v26 = [v24 v20[162]];
      v27 = v61;
      v68 = v26;
      sub_258AFFCD4();
      v69 = sub_258AFFCE4();
      v29 = v28;
      v30 = *v17;
      (*v17)(v27, v8);
      if (v29)
      {
        break;
      }

      v31 = [v24 v20[162]];
      v32 = v60;
      v66 = v31;
      sub_258AFFCD4();
      v67 = sub_258AFFD04();
      v34 = v33;
      v30(v32, v8);
      if (v34)
      {
        goto LABEL_20;
      }

      v65 = v24;
      v35 = [v25 v20[162]];
      v36 = v59;
      sub_258AFFCD4();
      v64 = sub_258AFFCE4();
      v38 = v37;
      v30(v36, v8);
      if (v38)
      {
        goto LABEL_19;
      }

      v63 = v22;
      v39 = [v25 v20[162]];
      v40 = v17;
      v41 = v58;
      sub_258AFFCD4();
      v42 = sub_258AFFD04();
      v43 = v8;
      v45 = v44;
      v46 = v41;
      v47 = v43;
      v17 = v40;
      v30(v46, v43);
      if (v45)
      {
        __break(1u);
        break;
      }

      v48 = v67 < v42;
      if (v69 != v64)
      {
        v48 = v69 < v64;
      }

      v8 = v47;
      v20 = &property descriptor for StateOfMindEntryModel.valence;
      v49 = v63;
      v50 = v70;
      if (v48)
      {
        if (!v62)
        {
          goto LABEL_21;
        }

        v51 = *v70;
        v21 = v70[1];
        *v70 = v21;
        v50[1] = v51;
        v18 = v50 - 1;
        v52 = __CFADD__(v49, 1);
        v22 = v49 + 1;
        if (!v52)
        {
          continue;
        }
      }

      a3 = v57 + 1;
      v18 = v56 + 1;
      v19 = v55 - 1;
      if (v57 + 1 == v54)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_2589F2A70(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v8 = sub_258AFFD44();
  v9 = MEMORY[0x28223BE20](v8);
  v162 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v163 = &v148 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v164 = &v148 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v165 = &v148 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v153 = &v148 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v154 = &v148 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v155 = &v148 - v22;
  MEMORY[0x28223BE20](v21);
  v156 = &v148 - v24;
  v160 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_103:
    a3 = *v150;
    if (!*v150)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v179 = v28;
      v144 = *(v28 + 2);
      if (v144 >= 2)
      {
        while (*v160)
        {
          v145 = *&v28[16 * v144];
          v146 = *&v28[16 * v144 + 24];
          sub_2589F362C((*v160 + 8 * v145), (*v160 + 8 * *&v28[16 * v144 + 16]), (*v160 + 8 * v146), a3);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v146 < v145)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_258AE8CC8(v28);
          }

          if (v144 - 2 >= *(v28 + 2))
          {
            goto LABEL_130;
          }

          v147 = &v28[16 * v144];
          *v147 = v145;
          *(v147 + 1) = v146;
          v179 = v28;
          sub_258AE8C3C(v144 - 1);
          v28 = v179;
          v144 = *(v179 + 2);
          if (v144 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_148;
      }

LABEL_113:

      return;
    }

LABEL_136:
    v28 = sub_258AE8CC8(v28);
    goto LABEL_105;
  }

  v149 = a4;
  v26 = 0;
  v27 = (v23 + 8);
  v28 = MEMORY[0x277D84F90];
  v168 = v8;
  v169 = (v23 + 8);
  while (1)
  {
    v159 = v28;
    v151 = v26;
    if (v26 + 1 >= v25)
    {
      v25 = v26 + 1;
    }

    else
    {
      v29 = *v160;
      v30 = *(*v160 + 8 * (v26 + 1));
      v177 = *(*v160 + 8 * v26);
      v31 = v177;
      v178 = v30;
      v32 = v30;
      a3 = v31;
      LODWORD(v158) = sub_2589F0BEC(&v178, &v177);
      if (v5)
      {

        return;
      }

      v33 = (v26 + 2);
      v166 = 8 * v26;
      v34 = (v29 + 8 * v26 + 16);
      v157 = 0;
      v161 = v25;
      while (v25 != v33)
      {
        v176 = v33;
        v35 = *(v34 - 1);
        v36 = *v34;
        v37 = v35;
        v38 = [v36 dateComponents];
        v39 = v156;
        v174 = v38;
        sub_258AFFCD4();
        v175 = sub_258AFFCE4();
        v41 = v40;
        a3 = *v27;
        (*v27)(v39, v8);
        if (v41)
        {
          goto LABEL_143;
        }

        v172 = v36;
        v173 = v34;
        v42 = [v36 dateComponents];
        v43 = v155;
        v171 = v42;
        sub_258AFFCD4();
        v44 = sub_258AFFD04();
        v46 = v45;
        (a3)(v43, v8);
        if (v46)
        {
          goto LABEL_145;
        }

        v170 = v44;
        v47 = [v37 dateComponents];
        v48 = v154;
        sub_258AFFCD4();
        v167 = sub_258AFFCE4();
        v50 = v49;
        (a3)(v48, v8);
        if (v50)
        {
          goto LABEL_144;
        }

        v51 = [v37 dateComponents];
        v52 = v153;
        sub_258AFFCD4();
        v53 = sub_258AFFD04();
        v55 = v54;
        (a3)(v52, v8);
        if (v55)
        {
          goto LABEL_142;
        }

        v56 = v170 >= v53;
        v8 = v168;
        if (v175 != v167)
        {
          v56 = v175 >= v167;
        }

        v33 = v176 + 1;
        v34 = (v173 + 8);
        v5 = v157;
        v28 = v159;
        v27 = v169;
        v25 = v161;
        if ((v158 & 1) == v56)
        {
          v25 = v176;
          break;
        }
      }

      if (v158)
      {
        v57 = v151;
        if (v25 < v151)
        {
          goto LABEL_135;
        }

        if (v151 < v25)
        {
          v58 = 8 * v25 - 8;
          v59 = v25;
          do
          {
            if (v57 != --v59)
            {
              v61 = *v160;
              if (!*v160)
              {
                goto LABEL_147;
              }

              v60 = *(v61 + v166);
              *(v61 + v166) = *(v61 + v58);
              *(v61 + v58) = v60;
            }

            ++v57;
            v58 -= 8;
            v166 += 8;
          }

          while (v57 < v59);
        }
      }
    }

    v62 = v160[1];
    if (v25 >= v62)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v25, v151))
    {
      goto LABEL_132;
    }

    if (v25 - v151 >= v149)
    {
LABEL_49:
      v64 = v151;
LABEL_50:
      if (v25 < v64)
      {
        goto LABEL_131;
      }

      goto LABEL_51;
    }

    v63 = v151 + v149;
    if (__OFADD__(v151, v149))
    {
      goto LABEL_133;
    }

    if (v63 >= v62)
    {
      v63 = v160[1];
    }

    if (v63 < v151)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v64 = v151;
    v152 = v63;
    if (v25 == v63)
    {
      goto LABEL_50;
    }

    v65 = v27;
    v157 = v5;
    v166 = *v160;
    v66 = (v151 - v25);
    v67 = v166 + 8 * v25 - 8;
    v68 = &property descriptor for StateOfMindEntryModel.valence;
LABEL_37:
    v161 = v25;
    v70 = *(v166 + 8 * v25);
    v71 = v66;
    v158 = v67;
    v72 = v67;
    v167 = v66;
LABEL_38:
    v170 = v71;
    v73 = *v72;
    v74 = v70;
    v75 = v73;
    v76 = [v74 v68[162]];
    v77 = v165;
    v175 = v76;
    sub_258AFFCD4();
    v176 = sub_258AFFCE4();
    v79 = v78;
    a3 = *v65;
    (*v65)(v77, v8);
    if (v79)
    {
      goto LABEL_140;
    }

    v80 = v68[162];
    v174 = v74;
    v81 = [v74 v80];
    v82 = v164;
    v172 = v81;
    sub_258AFFCD4();
    v173 = sub_258AFFD04();
    v84 = v83;
    (a3)(v82, v8);
    if (v84)
    {
      goto LABEL_139;
    }

    v85 = [v75 v68[162]];
    v86 = v163;
    sub_258AFFCD4();
    v171 = sub_258AFFCE4();
    v88 = v87;
    (a3)(v86, v8);
    if (v88)
    {
      goto LABEL_138;
    }

    v89 = [v75 v68[162]];
    v90 = v162;
    sub_258AFFCD4();
    v91 = sub_258AFFD04();
    v92 = v8;
    v94 = v93;
    (a3)(v90, v92);
    if (v94)
    {
      break;
    }

    v95 = v173 < v91;
    if (v176 != v171)
    {
      v95 = v176 < v171;
    }

    if (v95)
    {
      v8 = v168;
      v65 = v169;
      v68 = &property descriptor for StateOfMindEntryModel.valence;
      v69 = v167;
      v96 = v170;
      if (!v166)
      {
        goto LABEL_141;
      }

      v97 = *v72;
      v70 = *(v72 + 8);
      *v72 = v70;
      *(v72 + 8) = v97;
      v72 -= 8;
      v98 = __CFADD__(v96, 1);
      v71 = v96 + 1;
      if (v98)
      {
        goto LABEL_36;
      }

      goto LABEL_38;
    }

    v8 = v168;
    v65 = v169;
    v68 = &property descriptor for StateOfMindEntryModel.valence;
    v69 = v167;
LABEL_36:
    v25 = v161 + 1;
    v67 = v158 + 8;
    v66 = v69 - 1;
    if (v161 + 1 != v152)
    {
      goto LABEL_37;
    }

    v5 = v157;
    v28 = v159;
    v25 = v152;
    v27 = v65;
    if (v152 < v151)
    {
      goto LABEL_131;
    }

LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_258A74C78(0, *(v28 + 2) + 1, 1, v28);
    }

    a3 = *(v28 + 2);
    v99 = *(v28 + 3);
    v100 = a3 + 1;
    if (a3 >= v99 >> 1)
    {
      v28 = sub_258A74C78((v99 > 1), a3 + 1, 1, v28);
    }

    *(v28 + 2) = v100;
    v101 = &v28[16 * a3];
    *(v101 + 4) = v151;
    *(v101 + 5) = v25;
    v102 = *v150;
    if (!*v150)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v100 - 1;
        if (v100 >= 4)
        {
          break;
        }

        if (v100 == 3)
        {
          v103 = *(v28 + 4);
          v104 = *(v28 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_70:
          if (v106)
          {
            goto LABEL_120;
          }

          v119 = &v28[16 * v100];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_123;
          }

          v125 = &v28[16 * a3 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_127;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              a3 = v100 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v129 = &v28[16 * v100];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_84:
        if (v124)
        {
          goto LABEL_122;
        }

        v132 = &v28[16 * a3];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_125;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_91:
        v140 = a3 - 1;
        if (a3 - 1 >= v100)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v160)
        {
          goto LABEL_146;
        }

        v141 = *&v28[16 * v140 + 32];
        v142 = *&v28[16 * a3 + 40];
        sub_2589F362C((*v160 + 8 * v141), (*v160 + 8 * *&v28[16 * a3 + 32]), (*v160 + 8 * v142), v102);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v142 < v141)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_258AE8CC8(v28);
        }

        if (v140 >= *(v28 + 2))
        {
          goto LABEL_117;
        }

        v143 = &v28[16 * v140];
        *(v143 + 4) = v141;
        *(v143 + 5) = v142;
        v179 = v28;
        sub_258AE8C3C(a3);
        v28 = v179;
        v100 = *(v179 + 2);
        v27 = v169;
        if (v100 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v28[16 * v100 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_118;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_119;
      }

      v114 = &v28[16 * v100];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_121;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_124;
      }

      if (v118 >= v110)
      {
        v136 = &v28[16 * a3 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_128;
        }

        if (v105 < v139)
        {
          a3 = v100 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v26 = v25;
    v25 = v160[1];
    if (v26 >= v25)
    {
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_2589F362C(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_2589F0BEC(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_2589F0BEC(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_2589F39C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_258B032B4();
  }

  return sub_258B031D4();
}

unint64_t sub_2589F3A58()
{
  result = qword_27F96D308;
  if (!qword_27F96D308)
  {
    type metadata accessor for NotificationSettingsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D308);
  }

  return result;
}

uint64_t type metadata accessor for NotificationSettingsModel(uint64_t a1)
{
  result = qword_280DF8BF0;
  if (!qword_280DF8BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2589F3AFC()
{
  result = qword_27F96D800;
  if (!qword_27F96D800)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96D800);
  }

  return result;
}

void sub_2589F3B74(uint64_t a1)
{
  sub_2589F452C(319, &qword_280DF8968, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2589F3C90(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_258B032B4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2589F3D60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D8C0, &qword_280DF8920, 0x277D280B0);
          sub_2589F4580(&qword_27F96D8C8, &qword_27F96D8C0, &qword_280DF8920, 0x277D280B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D89C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_280DF8920, 0x277D280B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F3F14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D8A8, &qword_27F96D8A0, 0x277CCDA30);
          sub_2589F4580(&qword_27F96D8B0, &qword_27F96D8A8, &qword_27F96D8A0, 0x277CCDA30);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F40C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D878, &qword_27F96D870, 0x277D12830);
          sub_2589F4580(&qword_27F96D880, &qword_27F96D878, &qword_27F96D870, 0x277D12830);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2589F427C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258B032B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_258B032B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2589F4430(0, &qword_27F96D890, &qword_27F96D888, 0x277D12A00);
          sub_2589F4580(&qword_27F96D898, &qword_27F96D890, &qword_27F96D888, 0x277D12A00);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_258A8D924(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2589F4430(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2589F4488(255, a3, a4);
    v5 = sub_258B02CD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2589F4488(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2589F44D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2589F452C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2589F4580(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2589F4430(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s22DaySummaryGradientViewVMa(uint64_t a1)
{
  result = qword_27F96D8D0;
  if (!qword_27F96D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F4680(uint64_t a1)
{
  sub_2589F5748(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2589F5748(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StateOfMindTimeline.DaySummary(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2589F4798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF3E0];
  v8 = MEMORY[0x277CDF458];
  sub_2589F5748(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = _s22DaySummaryGradientViewVMa(0);
  sub_2589F5618(v1 + *(v12 + 20), v11, &qword_27F96C908, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_2589F49CC@<X0>(uint64_t a1@<X8>)
{
  v30 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  sub_2589F54EC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_258B2BE60;
  *(v11 + 32) = sub_2589F4DB8();
  sub_258AC1060(v10);
  sub_2589F553C(v10, type metadata accessor for StateOfMindTimeline.Styles);
  v12 = objc_opt_self();
  v13 = [v12 secondarySystemGroupedBackgroundColor];
  v14 = [v12 tertiarySystemGroupedBackgroundColor];
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v14;
  v15[4] = 0;
  v15[5] = v13;
  v16 = objc_allocWithZone(MEMORY[0x277D75348]);
  v37 = sub_2589C69C4;
  v38 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_258A52B54;
  v36 = &block_descriptor_1;
  v17 = _Block_copy(&aBlock);
  [v16 initWithDynamicProvider_];
  _Block_release(v17);

  *(v11 + 40) = sub_258B01F94();
  v18 = MEMORY[0x259C92A80](v11);
  sub_258AC1060(v8);
  sub_2589F553C(v8, type metadata accessor for StateOfMindTimeline.Styles);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v20 = result;
    [result isiPad];

    sub_258AC1060(v5);
    v21 = v29;
    sub_2589F55B4(&v5[*(v28 + 48)], v29);
    sub_2589F553C(v5, type metadata accessor for StateOfMindTimeline.Styles);
    sub_2589F553C(v21, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258B024F4();
    sub_258B00854();
    v22 = aBlock;
    LOBYTE(v21) = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    result = sub_258B02004();
    v32 = v21;
    v31 = v24;
    *a1 = v18;
    *(a1 + 8) = v22;
    *(a1 + 16) = v21;
    *(a1 + 24) = v23;
    *(a1 + 32) = v24;
    *(a1 + 40) = v25;
    *(a1 + 48) = v26;
    *(a1 + 56) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2589F4DB8()
{
  v1 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_258B006A4();
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v31 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_2589F5748(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = _s5EntryVMa(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0 + *(_s22DaySummaryGradientViewVMa(0) + 24);
  v19 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  sub_2589F5618(v18 + *(v19 + 28), v13, &qword_27F96D908, _s5EntryVMa, v10);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2589F5688(v13, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
    v20 = v29;
    sub_258AC1060(v29);
    sub_2589F553C(v20, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FE4();
    v21 = sub_258B02024();
  }

  else
  {
    sub_2589F56E4(v13, v17);
    v22 = v30;
    sub_2589F4798(v30);
    v23 = *&v17[*(v14 + 36)];
    v25 = v31;
    v24 = v32;
    (*(v3 + 16))(v31, v22, v32);
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v24);
    sub_258B00694();
    v26 = *(v3 + 8);
    v26(v6, v24);
    KeyPath = swift_getKeyPath();
    sub_258A84538(KeyPath, fmax(fmin(v23, 1.0), -1.0));

    v21 = sub_258B01F74();
    v26(v25, v24);
    v26(v22, v24);
    sub_2589F553C(v17, _s5EntryVMa);
  }

  return v21;
}

double sub_2589F520C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_258B01194();
  v15 = 1;
  sub_2589F49CC(&v10);
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v4 = MEMORY[0x277CE14B8];
  sub_2589F5618(&v16, &v9, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
  sub_2589F5688(v20, &qword_27F96D8E0, sub_2589F5328, v4);
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  *&v14[7] = v16;
  v5 = *v14;
  *(a2 + 33) = *&v14[16];
  result = *&v14[32];
  v7 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v7;
  v8 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 80) = *&v14[63];
  *(a2 + 17) = v5;
  return result;
}

void sub_2589F5328(uint64_t a1)
{
  if (!qword_27F96D8E8)
  {
    sub_2589F53B8(255);
    sub_2589F5438(255, &qword_27F96D900, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96D8E8);
    }
  }
}

void sub_2589F53B8(uint64_t a1)
{
  if (!qword_27F96D8F0)
  {
    sub_2589F5438(255, &qword_27F96D8F8, &qword_27F96CA78, MEMORY[0x277CE1318], MEMORY[0x277CE1310]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D8F0);
    }
  }
}

void sub_2589F5438(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_2589F549C(255, a3, a4, a5);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2589F549C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_258B015C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2589F54EC()
{
  if (!qword_27F96CC10)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CC10);
    }
  }
}

uint64_t sub_2589F553C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589F55B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2589F5618(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_2589F5748(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2589F5688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_2589F5748(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2589F56E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2589F5748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2589F57AC()
{
  result = qword_27F96D910;
  if (!qword_27F96D910)
  {
    sub_2589F5804(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D910);
  }

  return result;
}

void sub_2589F5804(uint64_t a1)
{
  if (!qword_27F96D918)
  {
    sub_2589F5748(255, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
    sub_2589F5898();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96D918);
    }
  }
}

unint64_t sub_2589F5898()
{
  result = qword_27F96D920;
  if (!qword_27F96D920)
  {
    sub_2589F5748(255, &qword_27F96D8E0, sub_2589F5328, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D920);
  }

  return result;
}

uint64_t sub_2589F592C(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2589F5990(uint64_t a1)
{
  if (!qword_280DF8998)
  {
    sub_258B002E4();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF8998);
    }
  }
}

uint64_t sub_2589F59F0(uint64_t a1, uint64_t a2)
{
  sub_2589F5990(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PeriodicAssessmentPromptsFeatureStatus.init(featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B002E4();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_2589F59F0(a1, a2);
}

uint64_t sub_2589F5AF0()
{
  v1 = v0;
  sub_2589F61D0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B002D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F592C(v1, v9);
  v14 = sub_258B002E4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_2589F6220(v9, sub_2589F5990);
    return *MEMORY[0x277D27FE0];
  }

  if ((*(v15 + 88))(v9, v14) != *MEMORY[0x277D11288])
  {
    (*(v15 + 8))(v9, v14);
    return *MEMORY[0x277D27FE0];
  }

  (*(v15 + 96))(v9, v14);
  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_258B002C4();
  sub_258B02B14();
  sub_258B02EE4();
  sub_258B02F14();

  (*(v4 + 8))(v6, v3);
  if (v20)
  {
    v17 = *MEMORY[0x277D27FE0];
  }

  else
  {
    v17 = v19;
  }

  (*(v11 + 8))(v13, v10);
  return v17;
}

Swift::Bool __swiftcall PeriodicAssessmentPromptsFeatureStatus.isSetToRecommendedPregnancySettings()()
{
  v1 = v0;
  v2 = type metadata accessor for AssessmentFeatureStatus(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F61D0();
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258B002D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F592C(v1, v11);
  v16 = sub_258B002E4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_2589F6220(v11, sub_2589F5990);
  }

  else
  {
    if ((*(v17 + 88))(v11, v16) == *MEMORY[0x277D11288])
    {
      (*(v17 + 96))(v11, v16);
      (*(v13 + 32))(v15, v11, v12);
      v18 = sub_258B002C4();
      sub_258B02B14();
      sub_258B02EE4();
      sub_258B02F14();

      (*(v23 + 8))(v8, v6);
      if (v25)
      {
        v19 = *MEMORY[0x277D27FE0];
      }

      else
      {
        v19 = v24;
      }

      (*(v13 + 8))(v15, v12);
      if (v19 == 30)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    (*(v17 + 8))(v11, v16);
  }

  if (*MEMORY[0x277D27FE0] == 30)
  {
LABEL_11:
    sub_2589F592C(v1, v4);
    v20 = sub_258A8D334();
    sub_2589F6220(v4, type metadata accessor for AssessmentFeatureStatus);
    return v20 & 1;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

void sub_2589F61D0()
{
  if (!qword_280DF8910)
  {
    v0 = sub_258B02F04();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8910);
    }
  }
}

uint64_t sub_2589F6220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PeriodicAssessmentPromptsFeatureStatus(uint64_t a1)
{
  result = qword_280DF8A08;
  if (!qword_280DF8A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2589F62F4(uint64_t a1)
{
  sub_2589F5990(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsStepType_optional __swiftcall MentalHealthAssessmentsAnalyticsStepType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsStepType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574614720656741;
  v3 = 0x6F72746E49;
  v4 = 0x6E6F697473657551;
  if (v1 != 3)
  {
    v4 = 0x746C75736552;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2589F6470()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F6560(uint64_t a1)
{
  sub_258B02B74();
}

uint64_t sub_2589F663C(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

void sub_2589F6734(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6F72746E492064;
  v4 = 0x6574614720656741;
  v5 = 0xE500000000000000;
  v6 = 0x6F72746E49;
  v7 = 0xE900000000000073;
  v8 = 0x6E6F697473657551;
  if (v2 != 3)
  {
    v8 = 0x746C75736552;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000258B35DF0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsActionType_optional __swiftcall MentalHealthAssessmentsAnalyticsActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsActionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6E69676542;
    v7 = 1954047310;
    v8 = 1701736260;
    if (v1 != 3)
    {
      v8 = 0x74726F707845;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x65736F6C43;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD000000000000025;
    if (v1 == 9)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (v1 == 8)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x20656C6369747241;
    v4 = 0x696C43206F666E49;
    if (v1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2589F69A4()
{
  v1 = *v0;
  sub_258B03514();
  sub_2589C81AC(v3, v1);
  return sub_258B03554();
}

uint64_t sub_2589F69F4(uint64_t a1)
{
  v2 = *v1;
  sub_258B03514();
  sub_2589C81AC(v4, v2);
  return sub_258B03554();
}

unint64_t sub_2589F6A44@<X0>(unint64_t *a1@<X8>)
{
  result = MentalHealthAssessmentsAnalyticsActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsAssessmentType_optional __swiftcall MentalHealthAssessmentsAnalyticsAssessmentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MentalHealthAssessmentsAnalyticsAssessmentType.rawValue.getter()
{
  v1 = 927220039;
  if (*v0 != 1)
  {
    v1 = 0x50646E6137444147;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 961628240;
  }
}

uint64_t sub_2589F6B1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 927220039;
  if (v2 != 1)
  {
    v5 = 0x50646E6137444147;
    v4 = 0xEB00000000395148;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 961628240;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 927220039;
  if (*a2 != 1)
  {
    v8 = 0x50646E6137444147;
    v3 = 0xEB00000000395148;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 961628240;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258B03454();
  }

  return v11 & 1;
}

uint64_t sub_2589F6C14()
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F6CB0(uint64_t a1)
{
  sub_258B02B74();
}

uint64_t sub_2589F6D38(uint64_t a1)
{
  sub_258B03514();
  sub_258B02B74();

  return sub_258B03554();
}

void sub_2589F6DDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 927220039;
  if (v2 != 1)
  {
    v5 = 0x50646E6137444147;
    v4 = 0xEB00000000395148;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 961628240;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsEntryPoint_optional __swiftcall MentalHealthAssessmentsAnalyticsEntryPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter()
{
  result = 0x6565442039514850;
  switch(*v0)
  {
    case 1:
    case 6:
      result = 0xD000000000000021;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xB:
      return result;
    case 0xC:
      result = 0x6565442037444147;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_2589F7004()
{
  v0 = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  v2 = v1;
  if (v0 == MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258B03454();
  }

  return v5 & 1;
}

uint64_t sub_2589F70A0()
{
  sub_258B03514();
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

uint64_t sub_2589F7108(uint64_t a1)
{
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();
}

uint64_t sub_2589F716C(uint64_t a1)
{
  sub_258B03514();
  MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  sub_258B02B74();

  return sub_258B03554();
}

unint64_t sub_2589F71DC@<X0>(unint64_t *a1@<X8>)
{
  result = MentalHealthAssessmentsAnalyticsEntryPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MentalHealthUI::MentalHealthAssessmentsAnalyticsProvenance_optional __swiftcall MentalHealthAssessmentsAnalyticsProvenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258B03324();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MentalHealthAssessmentsAnalyticsProvenance.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D6D7553;
  v3 = 0xD000000000000012;
  v4 = 0x6163696669746F4ELL;
  if (v1 != 4)
  {
    v4 = 0x6E694C2070656544;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079542065746144;
  if (v1 != 1)
  {
    v5 = 0x656C6369747241;
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

unint64_t sub_2589F733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D928;
  if (!qword_27F96D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D928);
  }

  return result;
}

unint64_t sub_2589F7394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D930;
  if (!qword_27F96D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D930);
  }

  return result;
}

unint64_t sub_2589F73EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D938;
  if (!qword_27F96D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D938);
  }

  return result;
}

unint64_t sub_2589F7444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D940;
  if (!qword_27F96D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D940);
  }

  return result;
}

unint64_t sub_2589F74A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96D948;
  if (!qword_27F96D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D948);
  }

  return result;
}

uint64_t sub_2589F7504(uint64_t a1)
{
  sub_258B02B74();
}

void sub_2589F7624(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7553;
  v5 = 0x8000000258B360E0;
  v6 = 0xD000000000000012;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x6163696669746F4ELL;
  if (v2 != 4)
  {
    v8 = 0x6E694C2070656544;
    v7 = 0xE90000000000006BLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE006D6F6F522065;
  v10 = 0x7079542065746144;
  if (v2 != 1)
  {
    v10 = 0x656C6369747241;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsStepType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsStepType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsAssessmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MentalHealthAssessmentsAnalyticsAssessmentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2589F7B10(void *a1, uint64_t a2)
{
  sub_2589F7DCC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00084();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  sub_2589F84F8(a2, v7, sub_2589F7DCC);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2589F85F4(v7, sub_2589F7DCC);
  }

  v16 = *(v9 + 32);
  v16(v14, v7, v8);
  (*(v9 + 16))(v12, v14, v8);
  v17 = *(v9 + 80);
  v23 = a1;
  v18 = (v17 + 24) & ~v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v16((v19 + v18), v12, v8);
  aBlock[4] = sub_2589F7E24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2589F7EA0;
  aBlock[3] = &block_descriptor_2;
  v20 = _Block_copy(aBlock);
  v21 = v2;

  [v23 setTitleTapOutBlock_];
  _Block_release(v20);
  return (*(v9 + 8))(v14, v8);
}

void sub_2589F7DCC(uint64_t a1)
{
  if (!qword_27F96EBF0)
  {
    sub_258B00084();
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96EBF0);
    }
  }
}

void sub_2589F7EA0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2589F7F3C(uint64_t a1, void *a2, void *a3)
{
  v41 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - v8);
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_258B00384();
  v14 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v17 = *(v11 + 16);
  v40 = a1;
  v17(v13, a1, v10);
  v18 = sub_258B00374();
  v19 = sub_258B02EA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a3;
    v21 = v20;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v21 = 136446466;
    v22 = sub_258B035A4();
    v24 = sub_2589F1F78(v22, v23, &v43);
    ObjectType = v9;
    v25 = v24;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_2589F8654(&qword_27F96D970, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_258B03414();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_2589F1F78(v26, v28, &v43);
    v9 = ObjectType;

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2589A1000, v18, v19, "[%{public}s] Presenting timeline for date: %{public}s", v21, 0x16u);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v30, -1, -1);
    v31 = v21;
    a3 = v37;
    MEMORY[0x259C945C0](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 8))(v16, v39);
  _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(v40, v41);

  StateOfMindTimeline.EntryFullView.init(model:)(v9);
  sub_2589F84F8(v9, v42, type metadata accessor for StateOfMindTimeline.EntryFullView);
  sub_2589F8560(0);
  v33 = objc_allocWithZone(v32);
  v34 = sub_258B011C4();
  [a3 hk:v34 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

  return sub_2589F85F4(v9, type metadata accessor for StateOfMindTimeline.EntryFullView);
}