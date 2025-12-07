void sub_2587DFBD0(uint64_t a1)
{
  if (!qword_27F95E3B0)
  {
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E3B0);
    }
  }
}

unint64_t sub_2587DFC30()
{
  result = qword_27F95D9D8;
  if (!qword_27F95D9D8)
  {
    sub_2588BCA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9D8);
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

uint64_t sub_2587DFCA4(uint64_t a1, int a2)
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

uint64_t sub_2587DFCEC(uint64_t result, int a2, int a3)
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

uint64_t sub_2587DFD70(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  return result;
}

uint64_t sub_2587DFDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for MedicationsConfiguration;
  v12[4] = &off_2869C1908;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_2587DFE70(v13, v11);
  return sub_25884E278(v12, sub_2587DFD70, 0, a1);
}

unint64_t sub_2587DFECC()
{
  result = qword_27F95E3B8;
  if (!qword_27F95E3B8)
  {
    type metadata accessor for MedicalIDEditFreeformTextModalView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3B8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2587DFF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2587DFF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2587DFFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2587E0620(0, &qword_27F95E3C0, MEMORY[0x277CE0330]);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  sub_2587E04CC();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v16 = result;
    v17 = [result isAppleInternalInstall];

    if (v17)
    {
      v29 = a3;
      LODWORD(v30) = sub_2588BC8D8();
      v18 = sub_2588BCD98();
      v28 = v11;
      v20 = v19;
      v30 = v18;
      v31 = v19;
      v22 = v21 & 1;
      v32 = v21 & 1;
      v33 = v23;
      v24 = swift_allocObject();
      v27 = v7;
      *(v24 + 16) = a1;
      *(v24 + 24) = a2;

      v25 = MEMORY[0x277CE0BD8];
      sub_2588BCED8();

      sub_2587B1CF8(v18, v20, v22);

      v26 = v28;
      (*(v12 + 16))(v9, v14, v28);
      swift_storeEnumTagMultiPayload();
      v30 = v25;
      v31 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      sub_2588BC778();
      return (*(v12 + 8))(v14, v26);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v30 = MEMORY[0x277CE0BD8];
      v31 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      return sub_2588BC778();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2587E0348(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2588BB8E8();
    v7 = *(v6 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2587AEACC(a1, a2);
    v10 = sub_2588BB8B8();
    (*(v7 + 8))(v9, v6);
    sub_25886369C(MEMORY[0x277D84F90]);
    v11 = sub_2588BD758();

    [v5 openSensitiveURL:v10 withOptions:v11];
  }
}

void sub_2587E04CC()
{
  if (!qword_27F95E3C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E3C8);
    }
  }
}

unint64_t sub_2587E0554()
{
  result = qword_27F95E3D0;
  if (!qword_27F95E3D0)
  {
    sub_2587E0620(255, &qword_27F95E3D8, MEMORY[0x277CE0338]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3D0);
  }

  return result;
}

void sub_2587E0620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_2587E04CC();
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2587E0688()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for EditOrganDonationCellView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_2587E07D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EditOrganDonationCellView(0);
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = v5;
  v50 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F95D078 != -1)
  {
    swift_once();
  }

  v6 = *algn_27F95E3E8;
  v52 = qword_27F95E3E0;
  v7 = (v2 + *(v4 + 20));
  v9 = v7[1];
  v60 = *v7;
  v8 = v60;
  v61 = v9;
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  v53 = v6;

  sub_2588BD2C8();
  v51 = sub_2587F5888();

  v57 = v8;
  v58 = v9;
  sub_2588BD2E8();
  v11 = v60;
  v10 = v61;
  v12 = v62;
  swift_getKeyPath(byte_2588C1A40);
  v60 = v11;
  v61 = v10;
  v62 = v12;
  sub_2587E1ACC(0, &qword_27F95E418, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v13 = v57;
  v45 = v58;
  v44 = v59;

  sub_25878F1E0(0, &qword_280C0DDD0, MEMORY[0x277D837D0]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2588BFF50;
  v15 = (v2 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v16 = v15[1];
  *(v14 + 32) = *v15;
  *(v14 + 40) = v16;
  strcpy((v14 + 48), "OrganDonation");
  *(v14 + 62) = -4864;

  v17 = sub_2588BD9A8();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    v19 = sub_2588BD8A8();
    v47 = v20;
    v48 = v19;
  }

  else
  {
    v47 = 0xED00006E6F697461;
    v48 = 0x6E6F446E6167724FLL;
  }

  v21 = (v2 + *(v4 + 24));
  v23 = v21[1];
  v43 = *v21;
  v22 = v43;
  v24 = v50;
  sub_2587E1B30(v2, v50);
  v25 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v49 = swift_allocObject();
  sub_2587E1B94(v24, v49 + v25);
  v26 = v45;
  *(a1 + 40) = v13;
  *(a1 + 48) = v26;
  *(a1 + 56) = v44;
  *(a1 + 57) = 1028;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2587E1C6C(0);
  v28 = v27;
  v29 = sub_2588BB9F8();
  v50 = &v42;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2587B2344(v22);
  v33 = sub_2588BB9E8();
  MEMORY[0x28223BE20](v33);
  (*(v30 + 16))(&v42 - v32, &v42 - v32, v29);
  sub_2588BD2B8();
  (*(v30 + 8))(&v42 - v32, v29);
  v34 = a1 + v28[21];
  v54 = 0;
  result = sub_2588BD2B8();
  v36 = v56;
  *v34 = v55;
  *(v34 + 8) = v36;
  v37 = v53;
  *a1 = v52;
  *(a1 + 8) = v37;
  v38 = v51;
  *(a1 + 57) = 4;
  v39 = v47;
  *(a1 + 16) = v48;
  *(a1 + 24) = v39;
  *(a1 + 32) = v38;
  *(a1 + v28[23]) = 0;
  *(a1 + 88) = v43;
  *(a1 + 96) = v23;
  v40 = (a1 + v28[22]);
  v41 = v49;
  *v40 = sub_2587E1BF8;
  v40[1] = v41;
  return result;
}

uint64_t sub_2587E0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15 = a2;
  v5 = type metadata accessor for EditOrganDonationCellView(0);
  v14 = *(v5 - 8);
  v6 = *(v14 + 64);
  v18 = a1;
  v7 = (v3 + *(MEMORY[0x28223BE20](v5 - 8) + 28));
  v9 = *v7;
  v8 = v7[1];
  v16 = v9;
  v17 = v8;
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath("@*\n'");
  sub_2587E1ACC(0, &qword_27F95E418, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2587E1B30(v3, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v11 = swift_allocObject();
  sub_2587E1B94(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_2587E1E30(0);
  sub_2587E2764(&qword_27F95E470, sub_2587E1E30, MEMORY[0x277CDDA18]);
  sub_2588BD068();
}

uint64_t sub_2587E0F7C()
{
  sub_2587E1F6C(0);
  sub_2587E2078();
  sub_2587E20D0(255);
  sub_2587E2224();
  sub_2587E2184(255);
  sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2588BC1F8();
}

void sub_2587E1098(uint64_t a1)
{
  v1 = sub_2587E0688();
  swift_beginAccess();
  v2 = *(v1 + 16);

  type metadata accessor for EditOrganDonationCellView(0);
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BC228();
  sub_25878F1E0(0, &qword_27F95E480, MEMORY[0x277CE0910]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588BFF50;
  v4 = sub_2588BCB98();
  *(inited + 32) = v4;
  v5 = sub_2588BCBA8();
  *(inited + 33) = v5;
  sub_2588BCBC8();
  sub_2588BCBC8();
  if (sub_2588BCBC8() != v4)
  {
    sub_2588BCBC8();
  }

  sub_2588BCBC8();
  v6 = sub_2588BCBC8();
  if (v6 != v5)
  {
    v6 = sub_2588BCBC8();
  }

  MEMORY[0x28223BE20](v6);
  sub_2587E2078();
  sub_2587E20D0(0);
  sub_2587E2224();
  sub_2587E2184(255);
  sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
}

uint64_t sub_2587E1334(uint64_t a1)
{
  v2 = sub_2588BC828();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2587E2184(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7F8();
  v11 = a1;
  sub_2588BD748();
  sub_2587E2764(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_2588BBF88();
  v8 = sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C8B9F0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2587E1504(uint64_t a1)
{
  type metadata accessor for EditOrganDonationCellView(0);
  sub_2587E1ACC(0, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  return sub_2588BD718();
}

uint64_t sub_2587E15B4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    KeyPath = swift_getKeyPath("@*\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587E2764(&qword_27F95E488, type metadata accessor for EditOrganDonationCellViewModel, &protocol conformance descriptor for EditOrganDonationCellViewModel);
    sub_2588BBB88();
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_2587E16C8()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95E3E0 = result;
  *algn_27F95E3E8 = v5;
  return result;
}

unint64_t sub_2587E1820(uint64_t a1)
{
  *(a1 + 8) = sub_2587E1850();
  result = sub_2587E18A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2587E1850()
{
  result = qword_27F95E3F0;
  if (!qword_27F95E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3F0);
  }

  return result;
}

unint64_t sub_2587E18A4()
{
  result = qword_27F95E3F8;
  if (!qword_27F95E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E3F8);
  }

  return result;
}

uint64_t type metadata accessor for EditOrganDonationCellView(uint64_t a1)
{
  result = qword_27F95E400;
  if (!qword_27F95E400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587E196C(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587E1ACC(319, &qword_27F95E410, type metadata accessor for EditOrganDonationCellViewModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2587E1ACC(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2587E1ACC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2587E1ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587E1B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditOrganDonationCellView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587E1B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditOrganDonationCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2587E1C6C(uint64_t a1)
{
  if (!qword_27F95E420)
  {
    sub_2587E1D68(255);
    v3 = v2;
    v4 = sub_2587E22A4();
    sub_2587E1E30(255);
    sub_2587E2764(&qword_27F95E470, sub_2587E1E30, MEMORY[0x277CDDA18]);
    v7[0] = &type metadata for OrganDonationStatus;
    v7[1] = v3;
    v7[2] = v4;
    v7[3] = swift_getOpaqueTypeConformance2();
    v5 = type metadata accessor for ExpandableWheelPickerView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95E420);
    }
  }
}

void sub_2587E1D68(uint64_t a1)
{
  if (!qword_27F95E428)
  {
    sub_2587E1E30(255);
    sub_2587E2764(&qword_27F95E470, sub_2587E1E30, MEMORY[0x277CDDA18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E428);
    }
  }
}

void sub_2587E1E30(uint64_t a1)
{
  if (!qword_27F95E430)
  {
    sub_2588BC138();
    sub_2587E1F6C(255);
    sub_2587E2078();
    sub_2587E20D0(255);
    sub_2587E2224();
    sub_2587E2184(255);
    sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BC208();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E430);
    }
  }
}

void sub_2587E1F6C(uint64_t a1)
{
  if (!qword_27F95E438)
  {
    sub_2587E2078();
    sub_2587E20D0(255);
    sub_2587E2224();
    sub_2587E2184(255);
    sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E438);
    }
  }
}

void sub_2587E2078()
{
  if (!qword_27F95E440)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E440);
    }
  }
}

void sub_2587E20D0(uint64_t a1)
{
  if (!qword_27F95E448)
  {
    sub_2587E2184(255);
    sub_2587E2764(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E448);
    }
  }
}

void sub_2587E2184(uint64_t a1)
{
  if (!qword_27F95E450)
  {
    sub_2588BD748();
    sub_2587E2764(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
    v1 = sub_2588BBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E450);
    }
  }
}

unint64_t sub_2587E2224()
{
  result = qword_27F95E468;
  if (!qword_27F95E468)
  {
    sub_2587E2078();
    sub_2587D1C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E468);
  }

  return result;
}

unint64_t sub_2587E22A4()
{
  result = qword_27F95E478;
  if (!qword_27F95E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E478);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for EditOrganDonationCellView(0);
  v21 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v21 + 16) & ~v21);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587E26B0()
{
  type metadata accessor for EditOrganDonationCellView(0);

  return sub_2587E0F7C();
}

uint64_t sub_2587E2764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2587E27F8(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2587BC234(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *sub_2587E28B0@<X0>(void *a1@<X8>)
{
  v64 = a1;
  sub_2587E5C64(0, &qword_27F95E4A8, sub_2587E3A04, &type metadata for MedicalIDPlaceholderCell, MEMORY[0x277CE0330]);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = (v60 - v3);
  v4 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v60 - v9;
  sub_2587E3A04(0);
  v12 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v60 - v16;
  if (MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter())
  {
    v61 = v17;
    sub_2587E3030(v67);
    v18 = *(v1 + *(v4 + 24));
    if (v18)
    {
      v19 = [v18 isLockScreen];
      v20 = v67[2];
      *(v15 + 1) = v67[1];
      *(v15 + 2) = v20;
      v21 = v68;
      *v15 = v67[0];
      *(v15 + 6) = v21;
      *(v15 + 7) = 0x4038000000000000;
      v15[64] = v19 ^ 1;
      v22 = &v15[*(v12 + 44)];
      sub_2587E5A60(v1, v10, type metadata accessor for MedicalIDPersonalInformationCellView);
      v23 = *(v5 + 80);
      v60[1] = v12;
      v24 = (v23 + 16) & ~v23;
      v60[0] = swift_allocObject();
      sub_2587E59F8(v10, v60[0] + v24, type metadata accessor for MedicalIDPersonalInformationCellView);
      sub_2587E5A60(v1, v8, type metadata accessor for MedicalIDPersonalInformationCellView);
      v25 = swift_allocObject();
      sub_2587E59F8(v8, v25 + v24, type metadata accessor for MedicalIDPersonalInformationCellView);
      *v22 = swift_getKeyPath("(*\n'");
      sub_2587E615C(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      sub_2587E3AA0(0);
      v27 = v26;
      v28 = *(v26 + 52);
      v29 = *MEMORY[0x277CDF988];
      v30 = sub_2588BC1C8();
      (*(*(v30 - 8) + 104))(&v22[v28], v29, v30);
      v31 = &v22[*(v27 + 56)];
      v32 = v60[0];
      *v31 = sub_2587E40CC;
      v31[1] = v32;
      v33 = &v22[*(v27 + 60)];
      *v33 = sub_2587E44D4;
      v33[1] = v25;
      LOBYTE(v25) = sub_2588BCBA8();
      sub_2588BBE38();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      sub_2587E5C64(0, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      v43 = &v22[*(v42 + 36)];
      *v43 = v25;
      *(v43 + 1) = v35;
      *(v43 + 2) = v37;
      *(v43 + 3) = v39;
      *(v43 + 4) = v41;
      v43[40] = 0;
      v44 = v61;
      sub_2587E59F8(v15, v61, sub_2587E3A04);
      sub_2587E5A60(v44, v63, sub_2587E3A04);
      swift_storeEnumTagMultiPayload();
      sub_2587E675C(&qword_27F95E548, sub_2587E3A04, &unk_2588C4EA8);
      sub_2587E4078();
      sub_2588BC778();
      return sub_2587E6568(v44, sub_2587E3A04);
    }

    else
    {
      sub_2587CEE98();
      sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
      result = sub_2588BC348();
      __break(1u);
    }
  }

  else
  {
    sub_2587E3030(v65);
    v46 = sub_2588BD858();
    MEMORY[0x28223BE20](v46 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v47 = qword_27F95DA88;
    v48 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v48 - 8);
    v49 = v47;
    sub_2588BBAB8();
    v50 = sub_2588BD8B8();
    v52 = v51;
    v53 = (v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
    v54 = *v53;
    v55 = v53[1];
    v56 = v66;
    v57 = v65[2];
    v58 = v63;
    v59 = v65[1];
    *v63 = v65[0];
    v58[1] = v59;
    v58[2] = v57;
    *(v58 + 6) = v56;
    *(v58 + 7) = v50;
    *(v58 + 8) = v52;
    *(v58 + 9) = v54;
    *(v58 + 10) = v55;
    swift_storeEnumTagMultiPayload();
    sub_2587E675C(&qword_27F95E548, sub_2587E3A04, &unk_2588C4EA8);
    sub_2587E4078();

    return sub_2588BC778();
  }

  return result;
}

uint64_t sub_2587E3030@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BD858();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = v4;
  sub_2588BBAB8();
  v7 = sub_2588BD8B8();
  v9 = v8;
  v10 = MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter();
  v11 = (v1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v13 = *v11;
  v12 = v11[1];
  v14 = (v1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 17) = 2;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v13;
  *(a1 + 48) = v12;
}

uint64_t sub_2587E31EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  sub_2587E598C(0, &qword_27F95E560, sub_2587E3C28, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  return sub_2587E3404(a1, a2 + *(v4 + 44));
}

__n128 sub_2587E3264@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587E3D4C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_2588BC6E8();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  sub_2587E598C(0, &qword_27F95E558, sub_2587E3DE0, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_2587E3778(v2, &v6[*(v7 + 44)]);
  sub_2588BD5C8();
  sub_2588BC328();
  sub_2587E59F8(v6, a1, sub_2587E3D4C);
  sub_2587E5C64(0, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
  v9 = a1 + *(v8 + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_2587E3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for PersonInfoView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E3CF0(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  sub_2587E5A60(a1, v6, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v17 = sub_2588BC6F8();
  sub_2587CEE98();
  sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
  v18 = sub_2588BC358();
  *&v6[*(v4 + 28)] = v17;
  v19 = &v6[*(v4 + 32)];
  *v19 = v18;
  v19[1] = v20;
  sub_2588BD5D8();
  sub_2588BC328();
  sub_2587E59F8(v6, v14, type metadata accessor for PersonInfoView);
  v21 = &v14[*(v8 + 44)];
  v22 = v40;
  *(v21 + 4) = v39;
  *(v21 + 5) = v22;
  *(v21 + 6) = v41;
  v23 = v36;
  *v21 = v35;
  *(v21 + 1) = v23;
  v24 = v38;
  *(v21 + 2) = v37;
  *(v21 + 3) = v24;
  sub_2587E59F8(v14, v16, sub_2587E3CF0);
  v25 = *(a1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 24));
  if (v25)
  {
    if (([v25 isLockScreen] & 1) != 0 && *(a1 + *(type metadata accessor for MedicalIDData(0) + 72) + 8) >> 60 == 15)
    {
      v26 = 0;
      v27 = 0xB000000000000000;
    }

    else
    {
      v28 = (a1 + *(type metadata accessor for MedicalIDData(0) + 72));
      v26 = *v28;
      v27 = v28[1];
      sub_2587CC620(*v28, v27);
    }

    sub_2587E5A60(v16, v11, sub_2587E3CF0);
    v29 = v34;
    sub_2587E5A60(v11, v34, sub_2587E3CF0);
    sub_2587E3C5C(0);
    v31 = (v29 + *(v30 + 48));
    *v31 = v26;
    v31[1] = v27;
    sub_2587E5964(v26, v27);
    sub_2587E6568(v16, sub_2587E3CF0);
    sub_2587E5978(v26, v27);
    return sub_2587E6568(v11, sub_2587E3CF0);
  }

  else
  {
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587E3778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PersonInfoView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a1 + *(type metadata accessor for MedicalIDPersonalInformationCellView(0) + 24));
  if (v10)
  {
    if (([v10 isLockScreen] & 1) != 0 && *(a1 + *(type metadata accessor for MedicalIDData(0) + 72) + 8) >> 60 == 15)
    {
      v11 = 0;
      v12 = 0xB000000000000000;
    }

    else
    {
      v13 = (a1 + *(type metadata accessor for MedicalIDData(0) + 72));
      v11 = *v13;
      v12 = v13[1];
      sub_2587CC620(*v13, v12);
    }

    sub_2587E5A60(a1, v9, type metadata accessor for MedicalIDPersonalInfoViewModel);
    v14 = sub_2588BC6E8();
    sub_2587CEE98();
    sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v15 = sub_2588BC358();
    *&v9[*(v4 + 20)] = v14;
    v16 = &v9[*(v4 + 24)];
    *v16 = v15;
    v16[1] = v17;
    sub_2587E5A60(v9, v7, type metadata accessor for PersonInfoView);
    *a2 = v11;
    a2[1] = v12;
    sub_2587E3E14(0);
    sub_2587E5A60(v7, a2 + *(v18 + 48), type metadata accessor for PersonInfoView);
    sub_2587E5964(v11, v12);
    sub_2587E6568(v9, type metadata accessor for PersonInfoView);
    sub_2587E6568(v7, type metadata accessor for PersonInfoView);
    return sub_2587E5978(v11, v12);
  }

  else
  {
    sub_2587CEE98();
    sub_2587E675C(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

void sub_2587E3A04(uint64_t a1)
{
  if (!qword_27F95E4B0)
  {
    sub_2587E5C64(255, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v3 = v2;
    v4 = sub_2587E3F90();
    v6 = type metadata accessor for MedicalIDCellView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95E4B0);
    }
  }
}

void sub_2587E3AA0(uint64_t a1)
{
  if (!qword_27F95E4C0)
  {
    sub_2587E3B94(255);
    v3 = v2;
    sub_2587E5C64(255, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = sub_2587E675C(&qword_27F95E520, sub_2587E3B94, MEMORY[0x277CE1138]);
    v7[3] = sub_2587E3EA8();
    v5 = type metadata accessor for MedicalIDAXLayoutView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_27F95E4C0);
    }
  }
}

void sub_2587E3B94(uint64_t a1)
{
  if (!qword_27F95E4C8)
  {
    sub_2587E3C28(255);
    sub_2587E675C(&qword_27F95E4F0, sub_2587E3C28, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E4C8);
    }
  }
}

void sub_2587E3C5C(uint64_t a1)
{
  if (!qword_27F95E4D8)
  {
    sub_2587E3CF0(255);
    sub_2587E628C(255, &qword_27F95E4E8, &type metadata for ProfileImageView, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E4D8);
    }
  }
}

void sub_2587E3D4C(uint64_t a1)
{
  if (!qword_27F95E500)
  {
    sub_2587E3DE0(255);
    sub_2587E675C(&qword_27F95E518, sub_2587E3DE0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E500);
    }
  }
}

void sub_2587E3E14(uint64_t a1)
{
  if (!qword_27F95E510)
  {
    sub_2587E628C(255, &qword_27F95E4E8, &type metadata for ProfileImageView, MEMORY[0x277D83D88]);
    type metadata accessor for PersonInfoView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E510);
    }
  }
}

unint64_t sub_2587E3EA8()
{
  result = qword_27F95E528;
  if (!qword_27F95E528)
  {
    sub_2587E5C64(255, &qword_27F95E4F8, sub_2587E3D4C, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_2587E675C(&qword_27F95E530, sub_2587E3D4C, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E528);
  }

  return result;
}

unint64_t sub_2587E3F90()
{
  result = qword_27F95E538;
  if (!qword_27F95E538)
  {
    sub_2587E5C64(255, &qword_27F95E4B8, sub_2587E3AA0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E675C(&qword_27F95E540, sub_2587E3AA0, &unk_2588C55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E538);
  }

  return result;
}

unint64_t sub_2587E4078()
{
  result = qword_27F95E550;
  if (!qword_27F95E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E550);
  }

  return result;
}

uint64_t sub_2587E40CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MedicalIDPersonalInformationCellView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2587E31EC(v4, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MedicalIDPersonalInformationCellView(0);
  v21 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v21 + 16) & ~v21);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  return swift_deallocObject();
}

double sub_2587E44D4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for MedicalIDPersonalInformationCellView(0);
  *&result = sub_2587E3264(a1).n128_u64[0];
  return result;
}

void sub_2587E4538(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  sub_2587E5F4C(0);
  v168 = v3;
  MEMORY[0x28223BE20](v3);
  v169 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CDE470];
  sub_2587E5ED8(0, &qword_27F95E5C8, sub_2587E5F4C, MEMORY[0x277CDE470]);
  v174 = v6;
  v173 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v166 = &v163 - v7;
  sub_2587E5E6C(0, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v175 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v185 = &v163 - v11;
  v12 = sub_2588BCC88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E6128(0);
  MEMORY[0x28223BE20](v16 - 8);
  v181 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2588BCCE8();
  v179 = *(v18 - 8);
  v180 = v18;
  MEMORY[0x28223BE20](v18);
  v178 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E5ED8(0, &qword_27F95E5A8, sub_2587E5DE8, v5);
  v21 = v20;
  v22 = *(v20 - 1);
  v23 = MEMORY[0x28223BE20](v20);
  v167 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v170 = &v163 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v163 - v27;
  sub_2587E5E6C(0, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v172 = &v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v171 = &v163 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v184 = &v163 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v186 = &v163 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v163 - v39;
  MEMORY[0x28223BE20](v38);
  v40 = a1[1];
  v187 = &v163 - v41;
  v188 = a1;
  object = v21;
  v177 = v22;
  if (!v40)
  {
    goto LABEL_7;
  }

  v42 = *a1;
  v43 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v43 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
LABEL_7:
    v71 = *(v22 + 56);
    v71();
LABEL_8:
    v72 = MedicalIDPersonalInfoViewModel.localizedAgeDescription()();
    v182 = v71;
    if (v72.value._object)
    {
      v190 = v72;
      sub_25878F648();

      v73 = sub_2588BCDF8();
      v75 = v74;
      v77 = v76;
      sub_2588BCC08();
      v78 = sub_2588BCDD8();
      v80 = v79;
      v82 = v81;
      v84 = v83;

      sub_2587B1CF8(v73, v75, v77 & 1);
      a1 = v188;

      KeyPath = swift_getKeyPath(byte_2588C1BF8);
      v190.value._countAndFlagsBits = v78;
      v190.value._object = v80;
      v86 = v82 & 1;
      v191 = v82 & 1;
      v165 = v84;
      v192 = v84;
      v193 = KeyPath;
      v194 = 0;
      sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_2588BFF50;
      v88 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
      v89 = v88[1];
      *(v87 + 32) = *v88;
      *(v87 + 40) = v89;
      *(v87 + 48) = 6645569;
      *(v87 + 56) = 0xE300000000000000;

      v90 = sub_2588BD9A8();

      v91 = HKUIJoinStringsForAutomationIdentifier();

      if (!v91)
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_2588BD8A8();

      sub_2587E5DE8(0);
      sub_2587E65C8();
      v92 = v170;
      sub_2588BCFB8();

      sub_2587B1CF8(v78, v80, v86);

      v93 = v92;
      v94 = v189;
      sub_2587E6648(v93, v189, &qword_27F95E5A8, sub_2587E5DE8);
      v95 = 0;
      v71 = v182;
      v21 = object;
      v22 = v177;
    }

    else
    {
      v95 = 1;
      v94 = v189;
    }

    v96 = 1;
    (v71)(v94, v95, 1, v21);
    v97 = MedicalIDPersonalInfoViewModel.spokenLanguageDescription()();
    if (!v97.value._object)
    {
      v118 = v186;
      goto LABEL_16;
    }

    v165 = v22 + 56;
    v190 = v97;
    sub_25878F648();

    v98 = sub_2588BCDF8();
    v100 = v99;
    v102 = v101;
    sub_2588BCC08();
    v103 = sub_2588BCDD8();
    v105 = v104;
    v107 = v106;
    v109 = v108;

    sub_2587B1CF8(v98, v100, v102 & 1);

    v110 = swift_getKeyPath(byte_2588C1BF8);
    v170 = v103;
    v190.value._countAndFlagsBits = v103;
    v190.value._object = v105;
    v177 = v105;
    v111 = v107 & 1;
    v191 = v107 & 1;
    v192 = v109;
    v193 = v110;
    v194 = 0;
    sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_2588BFF50;
    v113 = (a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
    v114 = v113[1];
    *(v112 + 32) = *v113;
    *(v112 + 40) = v114;
    *(v112 + 48) = 0x65676175676E614CLL;
    *(v112 + 56) = 0xE800000000000000;

    v115 = sub_2588BD9A8();

    v116 = HKUIJoinStringsForAutomationIdentifier();

    if (v116)
    {

      sub_2588BD8A8();

      sub_2587E5DE8(0);
      sub_2587E65C8();
      v117 = v167;
      sub_2588BCFB8();

      sub_2587B1CF8(v170, v177, v111);

      v118 = v186;
      sub_2587E6648(v117, v186, &qword_27F95E5A8, sub_2587E5DE8);
      v96 = 0;
      v71 = v182;
      v21 = object;
LABEL_16:
      v119 = 1;
      (v71)(v118, v96, 1, v21);
      v120 = MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()();
      if (!v120.value._object)
      {
        v154 = v185;
        goto LABEL_20;
      }

      v190 = v120;
      sub_25878F648();
      object = v120.value._object;

      v121 = sub_2588BCDF8();
      v123 = v122;
      v125 = v124;
      v127 = v179;
      v126 = v180;
      v128 = v178;
      (*(v179 + 104))(v178, *MEMORY[0x277CE0AB0], v180);
      v129 = sub_2588BCC18();
      v130 = v181;
      (*(*(v129 - 8) + 56))(v181, 1, 1, v129);
      sub_2588BCC28();
      sub_2588BCC48();
      sub_2587E6568(v130, sub_2587E6128);
      (*(v127 + 8))(v128, v126);
      v131 = sub_2588BCDD8();
      v133 = v132;
      LOBYTE(v130) = v134;
      v136 = v135;

      sub_2587B1CF8(v121, v123, v125 & 1);

      sub_2587E6008(0);
      v138 = v169;
      v139 = &v169[*(v137 + 36)];
      sub_2587E6068(0);
      v141 = *(v140 + 28);
      v142 = *MEMORY[0x277CE0B48];
      v143 = sub_2588BCDB8();
      v144 = *(v143 - 8);
      (*(v144 + 104))(&v139[v141], v142, v143);
      (*(v144 + 56))(&v139[v141], 0, 1, v143);
      *v139 = swift_getKeyPath("(*\n'");
      *v138 = v131;
      *(v138 + 8) = v133;
      *(v138 + 16) = v130 & 1;
      *(v138 + 24) = v136;
      LODWORD(v130) = sub_2588BC8D8();
      sub_2587E5ED8(0, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
      *(v138 + *(v145 + 36)) = v130;
      v146 = swift_getKeyPath(byte_2588C1BF8);
      v147 = v138 + *(v168 + 36);
      *v147 = v146;
      *(v147 + 8) = 0;
      sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_2588BFF50;
      v149 = (v188 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
      v150 = v149[1];
      *(v148 + 32) = *v149;
      *(v148 + 40) = v150;
      *(v148 + 48) = 0xD000000000000010;
      *(v148 + 56) = 0x80000002588C9870;

      v151 = sub_2588BD9A8();

      v152 = HKUIJoinStringsForAutomationIdentifier();

      if (v152)
      {

        sub_2588BD8A8();

        sub_2587E62DC();
        v153 = v166;
        sub_2588BCFB8();

        sub_2587E6568(v138, sub_2587E5F4C);
        v154 = v185;
        sub_2587E6648(v153, v185, &qword_27F95E5C8, sub_2587E5F4C);
        v119 = 0;
LABEL_20:
        (*(v173 + 56))(v154, v119, 1, v174);
        v155 = v184;
        sub_2587E61C0(v187, v184, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v156 = v171;
        sub_2587E61C0(v189, v171, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v157 = v186;
        v158 = v172;
        sub_2587E61C0(v186, v172, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        v159 = v175;
        sub_2587E61C0(v154, v175, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        v160 = v176;
        sub_2587E61C0(v155, v176, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E5D20(0);
        v162 = v161;
        sub_2587E61C0(v156, v160 + *(v161 + 48), &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E61C0(v158, v160 + *(v162 + 64), &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E61C0(v159, v160 + *(v162 + 80), &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v185, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v157, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v189, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v187, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v159, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
        sub_2587E6230(v158, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v156, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        sub_2587E6230(v184, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v164 = v28;
  v190.value._countAndFlagsBits = v42;
  v190.value._object = v40;
  sub_25878F648();

  v182 = sub_2588BCDF8();
  v45 = v44;
  v47 = v46;
  v165 = v48;
  v50 = v179;
  v49 = v180;
  v51 = v178;
  (*(v179 + 104))(v178, *MEMORY[0x277CE0A80], v180);
  v52 = sub_2588BCC18();
  v53 = v181;
  (*(*(v52 - 8) + 56))(v181, 1, 1, v52);
  sub_2588BCC28();
  sub_2588BCC48();
  sub_2587E6568(v53, sub_2587E6128);
  (*(v50 + 8))(v51, v49);
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A10], v12);
  sub_2588BCCA8();

  (*(v13 + 8))(v15, v12);
  v54 = v182;
  v55 = sub_2588BCDD8();
  v57 = v56;
  v59 = v58;
  v61 = v60;

  sub_2587B1CF8(v54, v45, v47 & 1);

  v62 = swift_getKeyPath(byte_2588C1BF8);
  v190.value._countAndFlagsBits = v55;
  v190.value._object = v57;
  v63 = v59 & 1;
  v191 = v59 & 1;
  v192 = v61;
  v193 = v62;
  v194 = 0;
  sub_2587E628C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2588BFF50;
  v65 = (v188 + *(type metadata accessor for MedicalIDPersonalInfoViewModel(0) + 36));
  v66 = v65[1];
  *(v64 + 32) = *v65;
  *(v64 + 40) = v66;
  *(v64 + 48) = 1701667150;
  *(v64 + 56) = 0xE400000000000000;

  v67 = sub_2588BD9A8();

  v68 = HKUIJoinStringsForAutomationIdentifier();

  if (v68)
  {
    sub_2588BD8A8();

    sub_2587E5DE8(0);
    sub_2587E65C8();
    v69 = v164;
    sub_2588BCFB8();

    sub_2587B1CF8(v55, v57, v63);

    v70 = v187;
    sub_2587E6648(v69, v187, &qword_27F95E5A8, sub_2587E5DE8);
    v22 = v177;
    v71 = *(v177 + 56);
    v21 = object;
    (v71)(v70, 0, 1, object);
    a1 = v188;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
}

void sub_2587E58EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 20));
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_2587E598C(0, &qword_27F95E588, sub_2587E5CEC, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_2587E4538(v2, a2 + *(v4 + 44));
}

uint64_t sub_2587E5964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_2587CC620(a1, a2);
  }

  return a1;
}

uint64_t sub_2587E5978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_2587C4E98(a1, a2);
  }

  return a1;
}

void sub_2587E598C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_2588BC0B8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2587E59F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587E5A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2587E5AF0(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587BC234(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2587E5B7C()
{
  result = qword_27F95E578;
  if (!qword_27F95E578)
  {
    sub_2587E5C64(255, &qword_27F95E580, sub_2587E3A04, &type metadata for MedicalIDPlaceholderCell, MEMORY[0x277CE0338]);
    sub_2587E675C(&qword_27F95E548, sub_2587E3A04, &unk_2588C4EA8);
    sub_2587E4078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E578);
  }

  return result;
}

void sub_2587E5C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2587E5D20(uint64_t a1)
{
  if (!qword_27F95E598)
  {
    sub_2587E5E6C(255, &qword_27F95E5A0, &qword_27F95E5A8, sub_2587E5DE8);
    sub_2587E5E6C(255, &qword_27F95E5C0, &qword_27F95E5C8, sub_2587E5F4C);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95E598);
    }
  }
}

void sub_2587E5DE8(uint64_t a1)
{
  if (!qword_27F95E5B0)
  {
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E5B0);
    }
  }
}

void sub_2587E5E6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2587E5ED8(255, a3, a4, MEMORY[0x277CDE470]);
    v5 = sub_2588BDCE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587E5ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587E5F4C(uint64_t a1)
{
  if (!qword_27F95E5D0)
  {
    sub_2587E5ED8(255, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E5D0);
    }
  }
}

void sub_2587E6008(uint64_t a1)
{
  if (!qword_27F95E5E0)
  {
    sub_2587E6068(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E5E0);
    }
  }
}

void sub_2587E60D0()
{
  if (!qword_27F95E5F8)
  {
    v0 = sub_2588BC918();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E5F8);
    }
  }
}

void sub_2587E615C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587E61C0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_2587E5E6C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2587E6230(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587E5E6C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2587E628C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587E62DC()
{
  result = qword_27F95E608;
  if (!qword_27F95E608)
  {
    sub_2587E5F4C(255);
    sub_2587E635C();
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E608);
  }

  return result;
}

unint64_t sub_2587E635C()
{
  result = qword_27F95E610;
  if (!qword_27F95E610)
  {
    sub_2587E5ED8(255, &qword_27F95E5D8, sub_2587E6008, sub_2587E60D0);
    sub_2587E643C();
    sub_2587E675C(&qword_27F95E628, sub_2587E60D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E610);
  }

  return result;
}

unint64_t sub_2587E643C()
{
  result = qword_27F95E618;
  if (!qword_27F95E618)
  {
    sub_2587E6008(255);
    sub_2587E675C(&qword_27F95E620, sub_2587E6068, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E618);
  }

  return result;
}

unint64_t sub_2587E64EC()
{
  result = qword_27F95E630;
  if (!qword_27F95E630)
  {
    sub_2587E628C(255, &qword_27F95E5B8, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E630);
  }

  return result;
}

uint64_t sub_2587E6568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2587E65C8()
{
  result = qword_27F95E638;
  if (!qword_27F95E638)
  {
    sub_2587E5DE8(255);
    sub_2587E64EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E638);
  }

  return result;
}

uint64_t sub_2587E6648(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587E5ED8(0, a3, a4, MEMORY[0x277CDE470]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2587E66C8(uint64_t a1)
{
  if (!qword_27F95E648)
  {
    sub_2587E5CEC(255);
    sub_2587E675C(&qword_27F95E650, sub_2587E5CEC, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E648);
    }
  }
}

uint64_t sub_2587E675C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MedicalIDEmergencyContactsCellView(uint64_t a1)
{
  result = qword_27F95E670;
  if (!qword_27F95E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587E6818(uint64_t a1)
{
  sub_2587E89C8(319, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2587E8520(319, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2587B2F78();
      if (v3 <= 0x3F)
      {
        sub_2587E8520(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2587E6968(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDEmergencyContactsCellView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  if (qword_27F95D0F8 != -1)
  {
    v19 = v6;
    swift_once();
    v6 = v19;
  }

  v7 = unk_27F969850;
  v8 = *(*(v1 + v6[5]) + 16) != 0;
  v9 = (v1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v1 + v6[7]);
  v13 = *v12;
  v14 = v12[1];
  *a1 = qword_27F969848;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = 2;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  sub_2587E7D34(0);

  sub_2587E6BAC(v1);
  sub_2587E84B8(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEmergencyContactsCellView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2587E88B0(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MedicalIDEmergencyContactsCellView);
  sub_2587E8148(0, &qword_27F95E6F8, sub_2587E7D34, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
  v18 = (a1 + *(v17 + 36));
  *v18 = sub_2587E83C0;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
}

void *sub_2587E6BAC(uint64_t a1)
{
  sub_2587E8148(0, &qword_27F95E700, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v3);
  v5 = (&v17 - v4);
  sub_2587E7DD0(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MedicalIDEmergencyContactsCellView(0);
  if (*(*(a1 + *(v9 + 20)) + 16))
  {
    *v8 = sub_2588BC6F8();
    *(v8 + 1) = 0x4030000000000000;
    v8[16] = 0;
    sub_2587E8420(0);
    sub_2587E6E80(a1, &v8[*(v10 + 44)]);
    sub_2587E84B8(v8, v5, sub_2587E7DD0);
    swift_storeEnumTagMultiPayload();
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0, MEMORY[0x277CE1198]);
    sub_2587E836C();
    sub_2588BC778();
    return sub_2587E8918(v8, sub_2587E7DD0);
  }

  else
  {
    if (qword_27F95D080 != -1)
    {
      v16 = v9;
      swift_once();
      v9 = v16;
    }

    v12 = unk_27F95E660;
    v13 = (a1 + *(v9 + 24));
    v14 = *v13;
    v15 = v13[1];
    *v5 = qword_27F95E658;
    v5[1] = v12;
    v5[2] = v14;
    v5[3] = v15;
    swift_storeEnumTagMultiPayload();
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0, MEMORY[0x277CE1198]);
    sub_2587E836C();

    return sub_2588BC778();
  }
}

void sub_2587E6E80(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a1;
  v77 = a2;
  v3 = type metadata accessor for MedicalIDEmergencyContactsCellView(0);
  v4 = v3 - 8;
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v67 = v5;
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E80A8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587E8010(0);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v76 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v73 = &v65 - v13;
  sub_2587E7ED4(0);
  v75 = v14;
  v74 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v72 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - v17;
  *&v81 = *(a1 + *(v4 + 28));
  swift_getKeyPath(byte_2588C1CB0);
  sub_2587E8520(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  type metadata accessor for ContactLabelView(0);
  sub_2587E7F94();
  sub_258791374();
  sub_2587E8324(&qword_27F95E710, type metadata accessor for ContactLabelView, &unk_2588C57D4);

  v70 = v18;
  sub_2588BD4B8();
  sub_2587E77D4();
  sub_2588BC688();
  v19 = sub_2588BCDE8();
  v21 = v20;
  v23 = v22;
  sub_2588BCCC8();
  v24 = sub_2588BCDD8();
  v26 = v25;
  v28 = v27;

  sub_2587B1CF8(v19, v21, v23 & 1);

  LODWORD(v81) = sub_2588BC8D8();
  v29 = sub_2588BCD98();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_2587B1CF8(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath(byte_2588C1CC8);
  v37 = sub_2588BCB98();
  sub_2588BBE38();
  v87 = v33 & 1;
  v86 = 0;
  *&v81 = v29;
  *(&v81 + 1) = v31;
  LOBYTE(v82) = v33 & 1;
  *(&v82 + 1) = v35;
  *&v83 = KeyPath;
  v38 = v78;
  BYTE8(v83) = 0;
  LOBYTE(v84) = v37;
  *(&v84 + 1) = v39;
  *v85 = v40;
  *&v85[8] = v41;
  *&v85[16] = v42;
  v85[24] = 0;
  sub_2587E8520(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2588BFF50;
  v44 = (v38 + *(v4 + 32));
  v45 = v44[1];
  *(v43 + 32) = *v44;
  *(v43 + 40) = v45;
  *(v43 + 48) = 0x7265746F6F46;
  *(v43 + 56) = 0xE600000000000000;

  v46 = sub_2588BD9A8();

  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    sub_2588BD8A8();

    sub_2587E8148(0, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E8570();
    v48 = v71;
    sub_2588BCFB8();

    v79[2] = v83;
    v79[3] = v84;
    v80[0] = *v85;
    *(v80 + 9) = *&v85[9];
    v79[0] = v81;
    v79[1] = v82;
    sub_2587E8628(v79);
    v49 = swift_getKeyPath(byte_2588C1CF8);
    v50 = v68;
    sub_2587E84B8(v38, v68, type metadata accessor for MedicalIDEmergencyContactsCellView);
    v51 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v52 = swift_allocObject();
    sub_2587E88B0(v50, v52 + v51, type metadata accessor for MedicalIDEmergencyContactsCellView);
    v53 = v69;
    v54 = &v69[*(v65 + 36)];
    sub_2587E89C8(0, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    sub_2588BC078();
    *v54 = v49;
    sub_2587E88B0(v48, v53, sub_2587E80A8);
    v55 = v73;
    sub_2587E88B0(v53, v73, sub_2587E8010);
    v56 = v74;
    v57 = *(v74 + 16);
    v58 = v72;
    v59 = v70;
    v60 = v75;
    v57(v72, v70, v75);
    v61 = v76;
    sub_2587E84B8(v55, v76, sub_2587E8010);
    v62 = v77;
    v57(v77, v58, v60);
    sub_2587E7E64(0);
    sub_2587E84B8(v61, &v62[*(v63 + 48)], sub_2587E8010);
    sub_2587E8918(v55, sub_2587E8010);
    v64 = *(v56 + 8);
    v64(v59, v60);
    sub_2587E8918(v61, sub_2587E8010);
    v64(v58, v60);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587E76F0@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v4 = a1[7];
  v20 = a1[6];
  v21 = v4;
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v17 = v6;
  KeyPath = swift_getKeyPath("p)\n'");
  *(a2 + *(type metadata accessor for ContactLabelView(0) + 20)) = KeyPath;
  sub_2587E89C8(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = v19;
  a2[4] = v18;
  a2[5] = v8;
  v9 = v21;
  a2[6] = v20;
  a2[7] = v9;
  v10 = v15;
  *a2 = v14;
  a2[1] = v10;
  v11 = v17;
  a2[2] = v16;
  a2[3] = v11;
  return sub_2587914E8(&v14, &v13);
}

id sub_2587E77D4()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_2588BD868();
    [v1 applicationIsInstalled_];

    v3 = sub_2588BD858();
    MEMORY[0x28223BE20](v3 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v4 = qword_27F95DA88;
    v5 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v5 - 8);
    v6 = v4;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2587E79A0()
{
  v0 = sub_2588BCB28();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2588BD868();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  sub_258852750(v3);
  v7 = v5;
  sub_2588BCB18();
  (*(v1 + 8))(v3, v0);
  sub_2588BC068();
}

void *sub_2587E7AF8(uint64_t a1)
{
  type metadata accessor for MedicalIDEmergencyContactsCellView(0);
  sub_2587E8520(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v3 == 1)
  {
    v2 = objc_opt_self();
    if (([v2 isAllowedToMessageSOSContacts] & 1) == 0)
    {
      [v2 setAllowedToMessageSOSContacts_];
    }

    return sub_2588BD2D8();
  }

  return result;
}

uint64_t sub_2587E7BE4()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95E658 = result;
  unk_27F95E660 = v5;
  return result;
}

void sub_2587E7D34(uint64_t a1)
{
  if (!qword_27F95E680)
  {
    sub_2587E8148(255, &qword_27F95E688, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0338]);
    v3 = v2;
    v4 = sub_2587E823C();
    v6 = type metadata accessor for MedicalIDCellView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95E680);
    }
  }
}

void sub_2587E7DD0(uint64_t a1)
{
  if (!qword_27F95E690)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    sub_2587E81B4();
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E690);
    }
  }
}

void sub_2587E7E64(uint64_t a1)
{
  if (!qword_27F95E6A0)
  {
    sub_2587E7ED4(255);
    sub_2587E8010(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E6A0);
    }
  }
}

void sub_2587E7ED4(uint64_t a1)
{
  if (!qword_27F95E6A8)
  {
    sub_2587E8520(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    type metadata accessor for ContactLabelView(255);
    sub_2587E7F94();
    sub_258791374();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E6A8);
    }
  }
}

unint64_t sub_2587E7F94()
{
  result = qword_27F95E150;
  if (!qword_27F95E150)
  {
    sub_2587E8520(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E150);
  }

  return result;
}

void sub_2587E8010(uint64_t a1)
{
  if (!qword_27F95E6B0)
  {
    sub_2587E80A8(255);
    sub_2587E89C8(255, &qword_27F95E6C8, MEMORY[0x277CDF708], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E6B0);
    }
  }
}

void sub_2587E80A8(uint64_t a1)
{
  if (!qword_27F95E6B8)
  {
    sub_2587E8148(255, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E6B8);
    }
  }
}

void sub_2587E8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2587E81B4()
{
  result = qword_27F95E6D0;
  if (!qword_27F95E6D0)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6D0);
  }

  return result;
}

unint64_t sub_2587E823C()
{
  result = qword_27F95E6D8;
  if (!qword_27F95E6D8)
  {
    sub_2587E8148(255, &qword_27F95E688, sub_2587E7DD0, &type metadata for MedicalIDCellPlaceholderText, MEMORY[0x277CE0338]);
    sub_2587E8324(&qword_27F95E6E0, sub_2587E7DD0, MEMORY[0x277CE1198]);
    sub_2587E836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6D8);
  }

  return result;
}

uint64_t sub_2587E8324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587E836C()
{
  result = qword_27F95E6E8;
  if (!qword_27F95E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E6E8);
  }

  return result;
}

void *sub_2587E83C0()
{
  v1 = *(type metadata accessor for MedicalIDEmergencyContactsCellView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587E7AF8(v2);
}

void sub_2587E8420(uint64_t a1)
{
  if (!qword_27F95E708)
  {
    sub_2587E89C8(255, &qword_27F95E698, sub_2587E7E64, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E708);
    }
  }
}

uint64_t sub_2587E84B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2587E8520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587E8570()
{
  result = qword_27F95E718;
  if (!qword_27F95E718)
  {
    sub_2587E8148(255, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2587E65C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E718);
  }

  return result;
}

uint64_t sub_2587E8628(uint64_t a1)
{
  sub_2587E8148(0, &qword_27F95E6C0, sub_2587E5DE8, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for MedicalIDEmergencyContactsCellView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2587E89C8(0, &qword_27F95E6F0, MEMORY[0x277CDE530], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_2588BCB28();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_2587E8830()
{
  type metadata accessor for MedicalIDEmergencyContactsCellView(0);

  sub_2587E79A0();
}

uint64_t sub_2587E88B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587E8918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2587E8978(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

void sub_2587E89C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587E8A2C()
{
  result = qword_27F95E720;
  if (!qword_27F95E720)
  {
    sub_2587E8148(255, &qword_27F95E6F8, sub_2587E7D34, MEMORY[0x277CE07A0], MEMORY[0x277CDFAB8]);
    sub_2587E8324(&qword_27F95E728, sub_2587E7D34, &unk_2588C4EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E720);
  }

  return result;
}

uint64_t MedicalIDData.displayName.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t MedicalIDData.init(name:emergencyContacts:medicalConditions:allergyInfo:medicalNotes:medicationInfo:bloodType:height:weight:pregnancyStartDate:pregnancyEstimatedDueDate:primaryLanguageCode:isDisabled:shareDuringEmergency:pictureData:gregorianBirthday:isOrganDonor:dateSaved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = type metadata accessor for MedicalIDData(0);
  v26 = v25[13];
  v27 = sub_2588BB9B8();
  v28 = *(*(v27 - 8) + 56);
  v28(a9 + v26, 1, 1, v27);
  v29 = v25[14];
  v28(a9 + v29, 1, 1, v27);
  v30 = (a9 + v25[15]);
  v31 = a9 + v25[18];
  *v31 = xmmword_2588C0670;
  v32 = v25[19];
  v33 = sub_2588BB818();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  v34 = v25[20];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  v35 = MEMORY[0x28220BF30];
  sub_2587E8E28(a14, a9 + v26, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E8E28(a15, a9 + v29, &qword_27F95D880, v35);
  *v30 = a16;
  v30[1] = a17;
  *(a9 + v25[16]) = a18;
  *(a9 + v25[17]) = a19;
  sub_2587C4E98(*v31, *(v31 + 8));
  *v31 = a20;
  *(v31 + 8) = a21;
  sub_2587E8E28(a22, a9 + v32, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  *(a9 + v34) = a23;
  v36 = a9 + v25[21];

  return sub_2587E8EE8(a24, v36);
}

uint64_t type metadata accessor for MedicalIDData(uint64_t a1)
{
  result = qword_27F95E730;
  if (!qword_27F95E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587E8E28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587E8E94(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_2587E8E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587E8EE8(uint64_t a1, uint64_t a2)
{
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MedicalIDData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicalIDData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDData.emergencyContacts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MedicalIDData.medicalConditions.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MedicalIDData.medicalConditions.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MedicalIDData.allergyInfo.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MedicalIDData.allergyInfo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MedicalIDData.medicalNotes.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MedicalIDData.medicalNotes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t MedicalIDData.medicationInfo.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MedicalIDData.medicationInfo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void *MedicalIDData.height.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void *MedicalIDData.weight.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t MedicalIDData.primaryLanguageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDData(0) + 60));

  return v1;
}

uint64_t MedicalIDData.primaryLanguageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicalIDData(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicalIDData.isDisabled.setter(char a1)
{
  result = type metadata accessor for MedicalIDData(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t MedicalIDData.shareDuringEmergency.setter(char a1)
{
  result = type metadata accessor for MedicalIDData(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t MedicalIDData.pictureData.getter()
{
  v1 = v0 + *(type metadata accessor for MedicalIDData(0) + 72);
  v2 = *v1;
  sub_2587CC620(*v1, *(v1 + 8));
  return v2;
}

uint64_t MedicalIDData.pictureData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MedicalIDData(0) + 72);
  result = sub_2587C4E98(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2587E9844(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587E8E94(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *MedicalIDData.isOrganDonor.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDData(0) + 80));
  v2 = v1;
  return v1;
}

void MedicalIDData.isOrganDonor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicalIDData(0) + 80);

  *(v1 + v3) = a1;
}

BOOL _s11MedicalIDUI0A6IDDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_2587C544C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[6];
  v10 = a2[6];
  if (v9)
  {
    if (!v10 || (a1[5] != a2[5] || v9 != v10) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[8];
  v12 = a2[8];
  if (v11)
  {
    if (!v12 || (a1[7] != a2[7] || v11 != v12) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[10];
  v14 = a2[10];
  if (v13)
  {
    if (!v14 || (a1[9] != a2[9] || v13 != v14) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (a1[11] != a2[11])
  {
    return 0;
  }

  v15 = a1[12];
  v16 = a2[12];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_25878E130(0, &qword_27F95E748, 0x277CCD7E8);
    v17 = v16;
    v18 = v15;
    v19 = sub_2588BDCD8();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v20 = a1[13];
  v21 = a2[13];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    sub_25878E130(0, &qword_27F95E748, 0x277CCD7E8);
    v22 = v21;
    v23 = v20;
    v24 = sub_2588BDCD8();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v135 = type metadata accessor for MedicalIDData(0);
  v25 = v135[13];
  v26 = MEMORY[0x28220BF30];
  sub_2587EABE4(0, &qword_27F95E758, &qword_27F95D880, MEMORY[0x28220BF30]);
  v28 = v27;
  v136 = v125;
  v134 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v125[-v30];
  v32 = *(v29 + 48);
  sub_2587E9844(a1 + v25, &v125[-v30], &qword_27F95D880, v26);
  sub_2587E9844(a2 + v25, &v31[v32], &qword_27F95D880, v26);
  v33 = sub_2588BB9B8();
  v34 = *(v33 - 8);
  v35 = v34 + 48;
  v36 = *(v34 + 48);
  if (v36(v31, 1, v33) == 1)
  {
    if (v36(&v31[v32], 1, v33) != 1)
    {
      goto LABEL_61;
    }

    v129 = v34;
    v37 = sub_2587EACA4(v31, &qword_27F95D880, MEMORY[0x28220BF30]);
  }

  else
  {
    v131 = v28;
    v38 = MEMORY[0x28220BF30];
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v130 = v125;
    MEMORY[0x28223BE20](v39 - 8);
    v41 = &v125[-v40];
    sub_2587E9844(v31, &v125[-v40], &qword_27F95D880, v38);
    v132 = v36;
    v133 = v34 + 48;
    v42 = (v36)(&v31[v32], 1, v33);
    if (v42 == 1)
    {
      (*(v34 + 8))(v41, v33);
      goto LABEL_61;
    }

    v128 = v125;
    MEMORY[0x28223BE20](v42);
    v44 = &v125[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v34 + 32))(v44, &v31[v32], v33);
    v45 = MEMORY[0x28220BF30];
    sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30], MEMORY[0x28220C000]);
    v46 = v41;
    v47 = sub_2588BD7D8();
    v129 = v34;
    v48 = *(v34 + 8);
    v48(v44, v33);
    v48(v46, v33);
    v37 = sub_2587EACA4(v31, &qword_27F95D880, v45);
    v36 = v132;
    v35 = v133;
    v28 = v131;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v136 = v125;
  v49 = v135[14];
  MEMORY[0x28223BE20](v37);
  v31 = &v125[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = v28;
  v51 = *(v28 + 48);
  v52 = MEMORY[0x28220BF30];
  sub_2587E9844(a1 + v49, v31, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E9844(a2 + v49, &v31[v51], &qword_27F95D880, v52);
  v53 = v36(v31, 1, v33);
  v132 = v36;
  v133 = v35;
  if (v53 == 1)
  {
    v54 = v33;
    if (v36(&v31[v51], 1, v33) == 1)
    {
      sub_2587EACA4(v31, &qword_27F95D880, MEMORY[0x28220BF30]);
      goto LABEL_65;
    }

LABEL_61:
    v61 = &qword_27F95E758;
    v62 = &qword_27F95D880;
    v63 = MEMORY[0x28220BF30];
LABEL_62:
    sub_2587EAC48(v31, v61, v62, v63);
    return 0;
  }

  v55 = v36;
  v56 = MEMORY[0x28220BF30];
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  v130 = v125;
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v125[-v58];
  sub_2587E9844(v31, &v125[-v58], &qword_27F95D880, v56);
  v60 = v55(&v31[v51], 1, v33);
  if (v60 == 1)
  {
    (*(v129 + 8))(v59, v33);
    goto LABEL_61;
  }

  v128 = v125;
  v65 = v129;
  MEMORY[0x28223BE20](v60);
  v67 = &v125[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v65 + 32))(v67, &v31[v51], v33);
  v68 = MEMORY[0x28220BF30];
  sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30], MEMORY[0x28220C000]);
  v69 = v59;
  v70 = sub_2588BD7D8();
  v71 = *(v65 + 8);
  v71(v67, v33);
  v54 = v33;
  v71(v69, v33);
  sub_2587EACA4(v31, &qword_27F95D880, v68);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v72 = v135[15];
  v73 = (a1 + v72);
  v74 = *(a1 + v72 + 8);
  v75 = (a2 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  if (*(a1 + v135[16]) != *(a2 + v135[16]) || *(a1 + v135[17]) != *(a2 + v135[17]))
  {
    return 0;
  }

  v77 = v135[18];
  v79 = *(a1 + v77);
  v78 = *(a1 + v77 + 8);
  v80 = (a2 + v77);
  v82 = *v80;
  v81 = v80[1];
  if (v78 >> 60 == 15)
  {
    if (v81 >> 60 == 15)
    {
      sub_2587CC620(v79, v78);
      sub_2587CC620(v82, v81);
      sub_2587C4E98(v79, v78);
      goto LABEL_80;
    }

LABEL_78:
    sub_2587CC620(v79, v78);
    sub_2587CC620(v82, v81);
    sub_2587C4E98(v79, v78);
    sub_2587C4E98(v82, v81);
    return 0;
  }

  if (v81 >> 60 == 15)
  {
    goto LABEL_78;
  }

  sub_2587CC620(v79, v78);
  sub_2587CC620(v82, v81);
  v83 = sub_258830544(v79, v78, v82, v81);
  sub_2587C4E98(v82, v81);
  sub_2587C4E98(v79, v78);
  if (!v83)
  {
    return 0;
  }

LABEL_80:
  v84 = v135[19];
  v85 = MEMORY[0x28220B6D0];
  sub_2587EABE4(0, &qword_27F95E760, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  v136 = v125;
  v87 = MEMORY[0x28223BE20](v86 - 8);
  v31 = &v125[-v88];
  v89 = *(v87 + 56);
  sub_2587E9844(a1 + v84, &v125[-v88], &qword_27F95DA80, v85);
  sub_2587E9844(a2 + v84, &v31[v89], &qword_27F95DA80, v85);
  v90 = sub_2588BB818();
  v91 = *(v90 - 8);
  v92 = *(v91 + 48);
  if (v92(v31, 1, v90) == 1)
  {
    if (v92(&v31[v89], 1, v90) == 1)
    {
      v93 = sub_2587EACA4(v31, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v94 = MEMORY[0x28220B6D0];
  sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
  v130 = v125;
  MEMORY[0x28223BE20](v95 - 8);
  v128 = &v125[-v96];
  sub_2587E9844(v31, &v125[-v96], &qword_27F95DA80, v94);
  v97 = (v92)(&v31[v89], 1, v90);
  if (v97 == 1)
  {
    (*(v91 + 8))(v128, v90);
LABEL_85:
    v61 = &qword_27F95E760;
    v62 = &qword_27F95DA80;
    v63 = MEMORY[0x28220B6D0];
    goto LABEL_62;
  }

  v127 = v125;
  MEMORY[0x28223BE20](v97);
  v99 = &v125[-((v98 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v91 + 32))(v99, &v31[v89], v90);
  v100 = MEMORY[0x28220B6D0];
  sub_2587EAD00(&qword_27F95E770, MEMORY[0x28220B6D0], MEMORY[0x28220B708]);
  v101 = v128;
  v126 = sub_2588BD7D8();
  v102 = *(v91 + 8);
  v102(v99, v90);
  v102(v101, v90);
  v93 = sub_2587EACA4(v31, &qword_27F95DA80, v100);
  if ((v126 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  v103 = v135[20];
  v104 = *(a1 + v103);
  v105 = *(a2 + v103);
  if (!v104)
  {
    if (!v105)
    {
      goto LABEL_92;
    }

    return 0;
  }

  if (!v105)
  {
    return 0;
  }

  sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
  v106 = v105;
  v107 = v104;
  v108 = sub_2588BDCD8();

  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  v109 = v135[21];
  MEMORY[0x28223BE20](v93);
  v111 = &v125[-((v110 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = *(v131 + 48);
  v113 = MEMORY[0x28220BF30];
  sub_2587E9844(a1 + v109, v111, &qword_27F95D880, MEMORY[0x28220BF30]);
  sub_2587E9844(a2 + v109, &v111[v112], &qword_27F95D880, v113);
  if (v132(v111, 1, v54) == 1)
  {
    if (v132(&v111[v112], 1, v54) == 1)
    {
      sub_2587EACA4(v111, &qword_27F95D880, MEMORY[0x28220BF30]);
      return 1;
    }

    goto LABEL_97;
  }

  v114 = MEMORY[0x28220BF30];
  sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
  MEMORY[0x28223BE20](v115 - 8);
  v117 = &v125[-v116];
  sub_2587E9844(v111, &v125[-v116], &qword_27F95D880, v114);
  v118 = (v132)(&v111[v112], 1, v54);
  if (v118 == 1)
  {
    (*(v129 + 8))(v117, v54);
LABEL_97:
    sub_2587EAC48(v111, &qword_27F95E758, &qword_27F95D880, MEMORY[0x28220BF30]);
    return 0;
  }

  v136 = v125;
  v119 = v129;
  MEMORY[0x28223BE20](v118);
  v121 = &v125[-((v120 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v119 + 32))(v121, &v111[v112], v54);
  v122 = MEMORY[0x28220BF30];
  sub_2587EAD00(&qword_27F95E768, MEMORY[0x28220BF30], MEMORY[0x28220C000]);
  v123 = sub_2588BD7D8();
  v124 = *(v119 + 8);
  v124(v121, v54);
  v124(v117, v54);
  sub_2587EACA4(v111, &qword_27F95D880, v122);
  return (v123 & 1) != 0;
}

void sub_2587EAA04(uint64_t a1)
{
  sub_25878E290(319, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25878E290(319, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKBloodType(319);
      if (v3 <= 0x3F)
      {
        sub_2587AE90C(319, &qword_27F95E740, &qword_27F95E748, 0x277CCD7E8);
        if (v4 <= 0x3F)
        {
          sub_2587E8E94(319, &qword_27F95D880, MEMORY[0x28220BF30]);
          if (v5 <= 0x3F)
          {
            sub_2587CC4B0();
            if (v6 <= 0x3F)
            {
              sub_2587E8E94(319, &qword_27F95DA80, MEMORY[0x28220B6D0]);
              if (v7 <= 0x3F)
              {
                sub_2587AE90C(319, &qword_27F95E750, &qword_27F95D898, 0x277CCABB0);
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

void sub_2587EABE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2587E8E94(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2587EAC48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2587EABE4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2587EACA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2587E8E94(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587EAD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MIUIMedicalIDLearnMoreNavigationViewControllerFactory.makeViewController()()
{
  v0 = type metadata accessor for MedicalIDLearnMoreNavigationView(0);
  MEMORY[0x28223BE20](v0 - 8);
  *(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0)) = swift_getKeyPath(")\n'");
  sub_2587EAE10(0);
  swift_storeEnumTagMultiPayload();
  sub_2587EAE68(0);
  v3 = objc_allocWithZone(v2);
  return sub_2588BC738();
}

void sub_2587EAE10(uint64_t a1)
{
  if (!qword_27F95DB30)
  {
    sub_2588BC038();
    v1 = sub_2588BBF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DB30);
    }
  }
}

void sub_2587EAE68(uint64_t a1)
{
  if (!qword_27F95E778)
  {
    type metadata accessor for MedicalIDLearnMoreNavigationView(255);
    sub_2587EAECC();
    v1 = sub_2588BC748();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E778);
    }
  }
}

unint64_t sub_2587EAECC()
{
  result = qword_27F95E780;
  if (!qword_27F95E780)
  {
    type metadata accessor for MedicalIDLearnMoreNavigationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E780);
  }

  return result;
}

MIUIMedicalIDLearnMoreNavigationViewControllerFactory __swiftcall MIUIMedicalIDLearnMoreNavigationViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MIUIMedicalIDLearnMoreNavigationViewControllerFactory()
{
  result = qword_27F95E788;
  if (!qword_27F95E788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95E788);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2587EB0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2587EB138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587EB1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v2;
  v12 = *(v1 + 32);
  v3 = v12;
  v5 = *(v1 + 56);
  v13 = *(v1 + 48);
  v4 = v13;
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *a1 = v11[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0x4018000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  sub_2587EB238(v11, v10);
}

unint64_t sub_2587EB294()
{
  result = qword_27F95E790;
  if (!qword_27F95E790)
  {
    sub_2587EB2EC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E790);
  }

  return result;
}

void sub_2587EB2EC(uint64_t a1)
{
  if (!qword_27F95E798)
  {
    v2 = sub_2587E836C();
    v4 = type metadata accessor for MedicalIDCellView(a1, &type metadata for MedicalIDCellPlaceholderText, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27F95E798);
    }
  }
}

uint64_t sub_2587EB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v33 = v4[6];
  sub_2587AFFC8(0);
  v35 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = (*(v9 + 56))(&v31 - v7, 1, 1, v8);
  MEMORY[0x28223BE20](v10);
  sub_2587ED620(&v31 - v7, &v31 - v7, sub_2587AFFC8);
  sub_2588BD2B8();
  v34 = sub_2587AFFC8;
  sub_2587ED688(&v31 - v7, sub_2587AFFC8);
  v11 = (a2 + v4[7]);
  sub_2587ED8CC(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  sub_2588BD2B8();
  v12 = v44;
  *v11 = v43;
  v11[1] = v12;
  v13 = v46;
  v11[2] = v45;
  v11[3] = v13;
  v14 = a2 + v4[8];
  type metadata accessor for MedicalIDDataManager(0);
  sub_2587ED5D8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v14 = sub_2588BBF58();
  *(v14 + 8) = v15 & 1;
  v16 = v4[9];
  *(a2 + v16) = swift_getKeyPath(byte_2588C1EE0);
  v17 = MEMORY[0x277CDF458];
  sub_2587ED574(0, &qword_27F95DB18, MEMORY[0x28220C250], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v18 = v4[10];
  *(a2 + v18) = swift_getKeyPath(byte_2588C1F10);
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], v17);
  swift_storeEnumTagMultiPayload();
  v19 = (a2 + v4[11]);
  sub_2587CEE98();
  sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
  *v19 = sub_2588BC358();
  v19[1] = v20;
  v32 = a1;
  sub_2587ED620(a1, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  v21 = a1 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v22 = type metadata accessor for MedicalIDData(0);
  v23 = *(v22 + 56);
  MEMORY[0x28223BE20](v22);
  sub_2587ED620(v21 + v23, &v31 - v7, sub_2587AFFC8);
  v24 = sub_2587ED688(a2 + v33, sub_2587CC6E8);
  MEMORY[0x28223BE20](v24);
  sub_2587ED620(&v31 - v7, &v31 - v7, sub_2587AFFC8);
  sub_2588BD2B8();
  v25 = v34;
  v26 = sub_2587ED688(&v31 - v7, v34);
  MEMORY[0x28223BE20](v26);
  v27 = &v31 - v7;
  sub_2587ED620(v21 + v23, &v31 - v7, sub_2587AFFC8);
  LOBYTE(v7) = (*(v37 + 48))(&v31 - v7, 1, v36) != 1;
  sub_2587ED688(v27, v25);
  v28 = a2 + v4[5];
  v38 = v7;
  sub_2588BD2B8();
  result = sub_2587ED688(v32, type metadata accessor for MedicalIDPregnancyViewModel);
  v30 = *(&v39 + 1);
  *v28 = v39;
  *(v28 + 8) = v30;
  return result;
}

uint64_t type metadata accessor for MedicalIDEditPregnancyModalView(uint64_t a1)
{
  result = qword_27F95E7B0;
  if (!qword_27F95E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587EB868()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MedicalIDEditPregnancyModalView(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_2587EB9B8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F95D088 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95E7A0;
  v8 = *algn_27F95E7A8;
  sub_2587ED620(v2, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MedicalIDEditPregnancyModalView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_2587ED938(v7, v11 + v10);
  v12 = (v2 + *(v4 + 28));
  v13 = v12[1];
  v35 = *v12;
  v36 = v13;
  v14 = v12[3];
  v37 = v12[2];
  v38 = v14;
  sub_2587D2DD4(0);

  sub_2588BD2E8();
  v38 = v33;
  v39 = v34;
  v36 = v31;
  v37 = v32;
  v35 = v30;
  *a1 = swift_getKeyPath(byte_2588C1F10);
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587EDA68(0, v15, v16, v17);
  v19 = v18;
  v20 = (a1 + v18[9]);
  *v20 = v9;
  v20[1] = v8;
  v21 = (a1 + v18[10]);
  *v21 = &unk_2588C1FC8;
  v21[1] = v11;
  v22 = a1 + v18[11];
  v23 = v36;
  v24 = v38;
  *(v22 + 2) = v37;
  *(v22 + 3) = v24;
  *(v22 + 8) = v39;
  *v22 = v35;
  *(v22 + 1) = v23;
  sub_2587EC740(v2, a1 + v18[12]);
  v25 = a1 + v19[13];
  v28[7] = 0;
  result = sub_2588BD2B8();
  v27 = v29;
  *v25 = v28[8];
  *(v25 + 1) = v27;
  return result;
}

uint64_t sub_2587EBC60()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587EBD0C();
}

uint64_t sub_2587EBD0C()
{
  v1[14] = v0;
  v2 = sub_2588BC038();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_2587B63B8(0);
  v1[18] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = sub_2588BDA78();
  v1[22] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x2822009F8](sub_2587EBE68, v4, v3);
}

uint64_t sub_2587EBE68()
{
  v21 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_2587EB868();
  swift_getKeyPath("h(\n'");
  v0[11] = v3;
  v0[25] = sub_2587ED5D8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587ED620(v3 + v4, v2, sub_2587B63B8);

  LoadState<>.loadedValue.getter(v1);
  sub_2587ED688(v2, sub_2587B63B8);
  sub_2587AFFC8(0);
  v5 = swift_task_alloc();
  v0[26] = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  sub_2587CC6E8(0);
  sub_2588BD2C8();
  MedicalIDPregnancyViewModel.update(_:with:)(v1, v5);
  sub_2587ED688(v5, sub_2587AFFC8);

  MedicalIDPregnancyViewModel.validationResult(for:)(v1, &v16);
  v6 = v17;
  if (v17)
  {
    v7 = v20;
    v14 = v18;
    v15 = v19;
    v8 = v16;

    sub_2587B2CD4();
    swift_allocError();
    *v9 = v8;
    *(v9 + 8) = v6;
    *(v9 + 16) = v14;
    *(v9 + 32) = v15;
    *(v9 + 48) = v7;
    swift_willThrow();
    sub_2587ED688(v0[20], type metadata accessor for MedicalIDData);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v0[27] = sub_2587EB868();
    v0[28] = sub_2588BDA68();
    v13 = sub_2588BDA28();
    v0[29] = v13;
    v0[30] = v12;

    return MEMORY[0x2822009F8](sub_2587EC188, v13, v12);
  }
}

uint64_t sub_2587EC188()
{
  v1 = v0[27];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  swift_getKeyPath("h(\n'");
  v0[12] = v1;
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587ED620(v1 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v3);
  sub_2587ED688(v4, sub_2587B63B8);
  sub_2587ED688(v3, type metadata accessor for MedicalIDData);
  swift_beginAccess();
  sub_2587ED620(v2, v3, type metadata accessor for MedicalIDData);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_2587EC338;
  v7 = v0[19];

  return sub_258880280(v7, (v0 + 13));
}

uint64_t sub_2587EC338()
{
  v2 = *v1;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_2587EC5D0;
  }

  else
  {
    v5 = sub_2587EC448;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2587EC448()
{
  v1 = v0[19];

  sub_2587ED688(v1, type metadata accessor for MedicalIDData);
  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x2822009F8](sub_2587EC4D4, v2, v3);
}

uint64_t sub_2587EC4D4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];

  sub_25885269C(v2);
  sub_2588BC028();
  (*(v4 + 8))(v2, v3);
  sub_2587ED688(v1, type metadata accessor for MedicalIDData);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2587EC5D0()
{
  v1 = v0[19];

  sub_2587ED688(v1, type metadata accessor for MedicalIDData);
  v0[32] = v0[13];
  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x2822009F8](sub_2587EC664, v2, v3);
}

uint64_t sub_2587EC664()
{
  v1 = v0[32];

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;
  sub_2587ED688(v0[20], type metadata accessor for MedicalIDData);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2587EC740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v9 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - v10;
  sub_2587ED620(a1, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_2587ED620(a1, v11, type metadata accessor for MedicalIDEditPregnancyModalView);
  sub_2587ED620(a1, v9, type metadata accessor for MedicalIDEditPregnancyModalView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_2587ED938(v9, v13 + v12);
  v14 = (a1 + *(v5 + 28));
  v15 = *v14;
  v16 = *(v14 + 1);
  v30 = v15;
  v31 = v16;
  sub_2587ED8CC(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v17 = v28[1];
  v18 = v28[2];
  v19 = v29;
  sub_2587EDAFC(0, v20, v21, v22);
  v24 = v23;
  sub_2587CC6E8(0);
  sub_2588BD2E8();
  sub_2587EC97C(a2 + v24[9]);
  result = sub_2587ED688(v11, type metadata accessor for MedicalIDEditPregnancyModalView);
  v26 = (a2 + v24[10]);
  *v26 = sub_2587EE14C;
  v26[1] = v13;
  v27 = a2 + v24[11];
  *v27 = v17;
  *(v27 + 8) = v18;
  *(v27 + 16) = v19;
  return result;
}

uint64_t sub_2587EC97C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587EE1A8(0);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  sub_2587CC6E8(0);
  v63 = v6;
  sub_2588BD2E8();
  v8 = sub_2588BD858();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95DA88;
  v10 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = v9;
  sub_2588BBAB8();
  v55 = sub_2588BD8B8();
  v52 = v12;
  v13 = sub_2588BB9B8();
  v61 = &v51;
  v56 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v15;
  v16 = &v51 - v53;
  v17 = *(v2 + *(v7 + 44));
  if (v17)
  {
    v18 = v17;
    v64 = v16;
    MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)(v18, v16);

    sub_2587AFFC8(0);
    v60 = &v51;
    v20 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v19 - 8);
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = MedicalIDPregnancyViewModel.minimumSelectableDueDate.getter(&v51 - v21);
    v59 = &v51;
    MEMORY[0x28223BE20](v22);
    _s11MedicalIDUI0A20IDPregnancyViewModelV24maximumSelectableDueDate10Foundation0I0VSgvg_0(&v51 - v21);
    v23 = *v2;
    v24 = v2[1];
    v57 = v23;
    sub_2587EDB90(0, v25, v26, v27);
    v29 = v28;
    v30 = a1 + v28[18];
    v65 = 0;
    v58 = v24;

    sub_2588BD2B8();
    v31 = v67;
    *v30 = v66;
    *(v30 + 8) = v31;
    v32 = v63;
    sub_2587ED620(v63, a1, sub_2587EE1A8);
    v33 = (a1 + v29[9]);
    v34 = v56;
    v35 = v52;
    *v33 = v55;
    v33[1] = v35;
    (*(v14 + 16))(a1 + v29[10], v64, v34);
    sub_2587ED620(&v51 - v21, a1 + v29[11], sub_2587AFFC8);
    v36 = sub_2587ED620(&v51 - v21, a1 + v29[12], sub_2587AFFC8);
    v52 = &v51;
    *(a1 + v29[13]) = 0;
    v37 = (a1 + v29[14]);
    *v37 = 0;
    v37[1] = 0;
    v38 = v29[15];
    v55 = a1;
    v39 = (a1 + v38);
    *v39 = nullsub_1;
    v39[1] = 0;
    v40 = MEMORY[0x28223BE20](v36);
    v41 = &v51 - v53;
    v54 = &v51;
    MEMORY[0x28223BE20](v40);
    v42 = &v51 - v21;
    MEMORY[0x259C8C5A0](v62);
    sub_2587ED688(&v51 - v21, sub_2587AFFC8);
    sub_2587ED688(&v51 - v21, sub_2587AFFC8);
    sub_2587ED688(v32, sub_2587EE1A8);
    v43 = *(v14 + 48);
    if (v43(&v51 - v21, 1, v34) == 1)
    {
      v44 = *(v14 + 32);
      v44(v41, v64, v34);
      if (v43(v42, 1, v34) != 1)
      {
        sub_2587ED688(v42, sub_2587AFFC8);
      }
    }

    else
    {
      (*(v14 + 8))(v64, v34);
      v44 = *(v14 + 32);
      v44(v41, v42, v34);
    }

    v45 = v55;
    v46 = v55 + v29[17];
    sub_2587ED574(0, &qword_27F95E7E8, MEMORY[0x28220BF18], MEMORY[0x277CE10B8]);
    *(v46 + *(v47 + 28)) = 0;
    result = (v44)(v46, v41, v34);
    v49 = (v45 + v29[16]);
    v50 = v58;
    *v49 = v57;
    v49[1] = v50;
  }

  else
  {
    sub_2587CEE98();
    sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587ED018()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v3 = (v0 + *(v2 + 20));
  v4 = *v3;
  v5 = *(v3 + 1);
  v25 = v4;
  v26 = v5;
  sub_2587ED8CC(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v23 - v8;
  if (v24 != 1)
  {
    v19 = sub_2588BB9B8();
    v20 = (*(*(v19 - 8) + 56))(&v23 - v8, 1, 1, v19);
    MEMORY[0x28223BE20](v20);
    sub_2587ED620(&v23 - v8, &v23 - v8, sub_2587AFFC8);
    sub_2587CC6E8(0);
LABEL_9:
    sub_2588BD2D8();
    return sub_2587ED688(v9, sub_2587AFFC8);
  }

  v10 = v1 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v11 = type metadata accessor for MedicalIDData(0);
  v23 = &v23;
  MEMORY[0x28223BE20](v11);
  v12 = &v23 - v8;
  sub_2587ED620(v10 + v13, &v23 - v8, sub_2587AFFC8);
  v14 = sub_2588BB9B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(&v23 - v8, 1, v14) != 1)
  {
    (*(v15 + 32))(&v23 - v8, &v23 - v8, v14);
LABEL_8:
    v21 = (*(v15 + 56))(v9, 0, 1, v14);
    MEMORY[0x28223BE20](v21);
    sub_2587ED620(v9, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    sub_2587CC6E8(0);
    goto LABEL_9;
  }

  v17 = *(v1 + *(v2 + 44));
  if (v17)
  {
    v18 = v17;
    MedicalIDPregnancyViewModel.defaultPregnancyDueDate(with:)(v18, v9);

    if (v16(v12, 1, v14) != 1)
    {
      sub_2587ED688(v12, sub_2587AFFC8);
    }

    goto LABEL_8;
  }

  sub_2587CEE98();
  sub_2587ED5D8(&qword_27F95DAE8, sub_2587CEE98, &protocol conformance descriptor for MIUIDisplayConfiguration);
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_2587ED404()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95E7A0 = result;
  *algn_27F95E7A8 = v5;
  return result;
}

void sub_2587ED574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587ED5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587ED620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587ED688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587ED710(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587ED8CC(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2587CC6E8(319);
      if (v3 <= 0x3F)
      {
        sub_2587D2DD4(319);
        if (v4 <= 0x3F)
        {
          sub_2587ED574(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2587ED574(319, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2587ED574(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_2587BC234(319);
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

void sub_2587ED8CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587ED938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587ED99C()
{
  type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_2587EBC60();
}

void sub_2587EDA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F95E7C0)
  {
    sub_2587EDAFC(255, a2, a3, a4);
    v6 = v5;
    v7 = sub_2587ED5D8(&qword_27F95E7E0, sub_2587EDAFC, &unk_2588C7E88);
    v9 = type metadata accessor for MedicalIDEditModal(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, &qword_27F95E7C0);
    }
  }
}

void sub_2587EDAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F95E7C8)
  {
    sub_2587EDB90(255, a2, a3, a4);
    v6 = v5;
    v7 = sub_2587ED5D8(&qword_27F95E7D8, sub_2587EDB90, &unk_2588C4DE8);
    v9 = type metadata accessor for SharedPregnancyEditView(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, &qword_27F95E7C8);
    }
  }
}

void sub_2587EDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F95E7D0)
  {
    v4 = type metadata accessor for DatePickerEditView(0, MEMORY[0x277CE1428], MEMORY[0x277CE1410], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27F95E7D0);
    }
  }
}

uint64_t objectdestroyTm_6()
{
  v28 = type metadata accessor for MedicalIDEditPregnancyModalView(0);
  v26 = *(*(v28 - 1) + 80);
  v1 = v0 + ((v26 + 16) & ~v26);

  v2 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v3 = v1 + v2[5];

  v4 = type metadata accessor for MedicalIDData(0);
  v5 = v4[13];
  v6 = sub_2588BB9B8();
  v27 = *(v6 - 8);
  v7 = *(v27 + 48);
  if (!v7(v3 + v5, 1, v6))
  {
    (*(v27 + 8))(v3 + v5, v6);
  }

  v8 = v4[14];
  if (!v7(v3 + v8, 1, v6))
  {
    (*(v27 + 8))(v3 + v8, v6);
  }

  v9 = (v3 + v4[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v4[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v4[21];
  if (!v7(v3 + v14, 1, v6))
  {
    (*(v27 + 8))(v3 + v14, v6);
  }

  v15 = v2[6];
  v16 = sub_2588BBB48();
  v17 = *(*(v16 - 8) + 8);
  v17(v1 + v15, v16);
  v18 = v2[7];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  v20 = v2[9];
  if (!v7(v1 + v20, 1, v6))
  {
    (*(v27 + 8))(v1 + v20, v6);
  }

  v21 = v1 + v28[6];
  if (!v7(v21, 1, v6))
  {
    (*(v27 + 8))(v21, v6);
  }

  sub_2587CC6E8(0);

  if (*(v1 + v28[7] + 8))
  {
  }

  v22 = v28[9];
  sub_2587ED574(0, &qword_27F95DB18, MEMORY[0x28220C250], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17(v1 + v22, v16);
  }

  else
  {
  }

  v23 = v28[10];
  sub_2587ED574(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2588BC038();
    (*(*(v24 - 8) + 8))(v1 + v23, v24);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_2587EE1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v37 = MEMORY[0x277D84F90];
    sub_2587F06B4(0, v1, 0);
    v3 = v37;
    v4 = a1 + 56;
    v5 = sub_2588BDD58();
    v6 = 0;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v34 = v6;
      v35 = *(a1 + 36);
      v9 = (*(a1 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      MedicalIDSpokenLanguage.init(id:)(&v36, v12);
      countAndFlagsBits = v36.id._countAndFlagsBits;
      object = v36.id._object;
      v15 = v36.languageInCurrentLocale._countAndFlagsBits;
      v16 = v36.languageInCurrentLocale._object;
      v17 = v36.languageInLanguageLocale._countAndFlagsBits;
      v18 = v36.languageInLanguageLocale._object;
      v37 = v3;
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      if (v20 >= v19 >> 1)
      {
        v31 = v36.languageInCurrentLocale._countAndFlagsBits;
        v32 = v36.id._countAndFlagsBits;
        v29 = v36.languageInLanguageLocale._object;
        v30 = v36.languageInLanguageLocale._countAndFlagsBits;
        sub_2587F06B4((v19 > 1), v20 + 1, 1);
        v18 = v29;
        v17 = v30;
        v15 = v31;
        countAndFlagsBits = v32;
        v3 = v37;
      }

      *(v3 + 16) = v20 + 1;
      v21 = (v3 + 48 * v20);
      v21[4] = countAndFlagsBits;
      v21[5] = object;
      v21[6] = v15;
      v21[7] = v16;
      v21[8] = v17;
      v21[9] = v18;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 56;
      v22 = *(a1 + 56 + 8 * v8);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v7 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (a1 + 64 + 8 * v8);
        while (v25 < (v7 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2587F1B84(v5, v35, 0);
            v7 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_2587F1B84(v5, v35, 0);
      }

LABEL_4:
      v6 = v34 + 1;
      v5 = v7;
      if (v34 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_2587EE430(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v27 = *(a3 + 16);
  if (v27)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 72);
    v9 = MEMORY[0x277D84F90];
    v22 = result;
    while (v7 < *(v5 + 16))
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 3);
      v13 = *(v8 - 2);
      v14 = *(v8 - 4);
      v28 = *(v8 - 5);
      v29 = v14;
      v30 = v12;
      v31 = v13;
      v32 = v10;
      v33 = v11;

      v15 = v6(&v28);
      if (v4)
      {

        goto LABEL_16;
      }

      if (v15)
      {
        v16 = v28;
        v17 = v29;
        v18 = v30;
        v25 = v32;
        v26 = v31;
        v24 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        v34 = v9;
        if ((result & 1) == 0)
        {
          result = sub_2587F06B4(0, *(v9 + 16) + 1, 1);
          v9 = v34;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_2587F06B4((v19 > 1), v20 + 1, 1);
          v9 = v34;
        }

        *(v9 + 16) = v20 + 1;
        v21 = (v9 + 48 * v20);
        v21[4] = v16;
        v21[5] = v17;
        v21[6] = v18;
        v21[7] = v26;
        v5 = a3;
        v21[8] = v25;
        v21[9] = v24;
        v6 = v22;
      }

      else
      {
      }

      ++v7;
      v8 += 6;
      if (v27 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_16:

    return v9;
  }

  return result;
}

uint64_t sub_2587EE62C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NanoMedicalIDGridItemsView(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_2587F0F3C(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_2587F0FA0(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_2587C51A4(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2587F06F4(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2587F06F4((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_2587C51A4(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_2587F0FA0(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t MedicalIDSpokenLanguagePickerViewModel.__allocating_init(primaryLanguageCode:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(a1, a2);
  return v4;
}

uint64_t sub_2587EE8FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("P(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2587EE98C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587EEA60(v1, v2);
}

uint64_t sub_2587EE9CC()
{
  swift_getKeyPath("P(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2587EEA60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_2588BDF98() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath("P(\n'");
  MEMORY[0x28223BE20](KeyPath);
  sub_2587EF3D0();
  sub_2588BBB88();
}

uint64_t sub_2587EEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t (*sub_2587EEC00(uint64_t *a1))()
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
  swift_getKeyPath("P(\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587EF3D0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("P(\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587EE8AC(v4);
  return sub_2587EED08;
}

uint64_t sub_2587EED64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("0(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_2587EEDF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587EEEC8(v1, v2);
}

uint64_t sub_2587EEE34()
{
  swift_getKeyPath("0(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2587EEEC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_2588BDF98() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath("0(\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587EF3D0();
    sub_2588BBB88();
  }
}

uint64_t sub_2587EEFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t (*sub_2587EF058(uint64_t *a1))()
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
  swift_getKeyPath("0(\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587EF3D0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("0(\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587EED14(v4);
  return sub_2587EF160;
}

void sub_2587EF16C(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath("P(\n'");
  v13.id._countAndFlagsBits = v1;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v2 + 24);

    v6._countAndFlagsBits = v5;
    v6._object = v4;
    MedicalIDSpokenLanguage.init(id:)(&v13, v6);
    countAndFlagsBits = v13.id._countAndFlagsBits;
    object = v13.id._object;
    v9 = v13.languageInCurrentLocale._countAndFlagsBits;
    v10 = v13.languageInCurrentLocale._object;
    v11 = v13.languageInLanguageLocale._countAndFlagsBits;
    v12 = v13.languageInLanguageLocale._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a1 = countAndFlagsBits;
  a1[1] = object;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
}

void *MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0xE000000000000000;
  sub_2588BBBC8();

  v2[3] = a1;
  v2[4] = a2;
  v5 = [objc_opt_self() availableSpokenLanguages];
  v6 = sub_2588BDAD8();

  sub_2587EE1DC(v6);
  v8 = v7;

  v10 = v8;

  sub_2587F0C5C(&v10);

  v2[2] = v10;
  return v2;
}

unint64_t sub_2587EF3D0()
{
  result = qword_27F95DDA0;
  if (!qword_27F95DDA0)
  {
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDA0);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(uint64_t a1)
{
  result = qword_27F95E800;
  if (!qword_27F95E800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2587EF4B4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_2588BBA78();
  v3 = sub_2588BD9A8();

  v4 = [v2 spokenLanguagesForLanguages:v3 includeLanguagesForRegion:1];

  v5 = sub_2588BD9B8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v48 = v0;
    v50 = MEMORY[0x277D84F90];
    sub_2587F06B4(0, v6, 0);
    v7 = v50;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11._countAndFlagsBits = v9;
      v11._object = v10;
      MedicalIDSpokenLanguage.init(id:)(&v52, v11);
      countAndFlagsBits = v52.id._countAndFlagsBits;
      object = v52.id._object;
      v14 = v52.languageInCurrentLocale._countAndFlagsBits;
      v15 = v52.languageInCurrentLocale._object;
      v17 = v52.languageInLanguageLocale._countAndFlagsBits;
      v16 = v52.languageInLanguageLocale._object;
      v51 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        v45 = v52.languageInCurrentLocale._countAndFlagsBits;
        v21 = v52.languageInLanguageLocale._object;
        sub_2587F06B4((v18 > 1), v19 + 1, 1);
        v16 = v21;
        v14 = v45;
        v7 = v51;
      }

      *(v7 + 16) = v19 + 1;
      v20 = (v7 + 48 * v19);
      v20[4] = countAndFlagsBits;
      v20[5] = object;
      v20[6] = v14;
      v20[7] = v15;
      v20[8] = v17;
      v20[9] = v16;
      v8 += 2;
      --v6;
    }

    while (v6);
    v46 = v7;

    v1 = v48;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath("P(\n'");
  v52.id._countAndFlagsBits = v1;
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v22 = *(v1 + 32);
  if (!v22)
  {
    return v46;
  }

  v23 = *(v1 + 24);

  v24._countAndFlagsBits = v23;
  v24._object = v22;
  MedicalIDSpokenLanguage.init(id:)(&v52, v24);
  v26 = v52.id._countAndFlagsBits;
  v25 = v52.id._object;
  v27 = v52.languageInCurrentLocale._object;
  v28 = v52.languageInLanguageLocale._object;
  v47 = v52.languageInLanguageLocale._countAndFlagsBits;
  v49 = v52.languageInCurrentLocale._countAndFlagsBits;
  v44 = *(v46 + 16);
  if (v44)
  {
    v29 = *(v46 + 16);
    v30 = (v46 + 72);
    while (1)
    {
      v32 = *(v30 - 3);
      v31 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v35 = *(v30 - 5) == v26 && *(v30 - 4) == v25;
      if (v35 || (sub_2588BDF98() & 1) != 0)
      {
        v36 = v32 == v49 && v31 == v27;
        if (v36 || (sub_2588BDF98() & 1) != 0)
        {
          v37 = v33 == v47 && v34 == v28;
          if (v37 || (sub_2588BDF98() & 1) != 0)
          {
            break;
          }
        }
      }

      v30 += 6;
      if (!--v29)
      {
        goto LABEL_29;
      }
    }

    return v46;
  }

LABEL_29:
  v39 = v27;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v38 = v46;
  }

  else
  {
    v38 = sub_2587F0410(0, v44 + 1, 1, v46);
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    v38 = sub_2587F0410((v40 > 1), v41 + 1, 1, v38);
  }

  *(v38 + 2) = v41 + 1;
  v42 = &v38[48 * v41];
  *(v42 + 4) = v26;
  *(v42 + 5) = v25;
  *(v42 + 6) = v49;
  *(v42 + 7) = v39;
  *(v42 + 8) = v47;
  *(v42 + 9) = v28;
  return v38;
}

char *sub_2587EF828()
{
  swift_getKeyPath("0(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 48);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 40) & 0xFFFFFFFFFFFFLL;
  }

  result = sub_2587EF4B4();
  if (v2)
  {
    v19 = *(result + 2);
    if (v19)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      v6 = result + 72;
      v21 = result;
      v18 = result + 72;
      do
      {
        v20 = v5;
        v7 = v19 - v4;
        v8 = &v6[48 * v4];
        while (1)
        {
          if (v4 >= *(result + 2))
          {
            __break(1u);
            return result;
          }

          v24 = v7;
          v9 = *(v8 - 4);
          v22 = *(v8 - 5);
          v10 = *(v8 - 3);
          v11 = *(v8 - 2);
          v12 = *(v8 - 1);
          v13 = *v8;
          swift_getKeyPath("0(\n'");
          v23 = v9;

          sub_2588BBB98();

          sub_25878F648();

          if (sub_2588BDD28())
          {
            break;
          }

          v14 = sub_2588BDD28();

          if (v14)
          {
            goto LABEL_14;
          }

          v8 += 48;
          ++v4;
          v7 = v24 - 1;
          result = v21;
          if (v24 == 1)
          {
            v5 = v20;
            goto LABEL_21;
          }
        }

LABEL_14:
        v5 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2587F06B4(0, *(v20 + 16) + 1, 1);
          v5 = v20;
        }

        v6 = v18;
        v16 = *(v5 + 16);
        v15 = *(v5 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2587F06B4((v15 > 1), v16 + 1, 1);
          v5 = v20;
        }

        ++v4;
        *(v5 + 16) = v16 + 1;
        v17 = (v5 + 48 * v16);
        v17[4] = v22;
        v17[5] = v23;
        result = v21;
        v17[6] = v10;
        v17[7] = v11;
        v17[8] = v12;
        v17[9] = v13;
      }

      while (v24 != 1);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

LABEL_21:

    return v5;
  }

  return result;
}

uint64_t sub_2587EFB14()
{
  v1 = v0;
  swift_getKeyPath("0(\n'");
  sub_2587EF3D0();
  sub_2588BBB98();

  swift_beginAccess();
  v2 = v0[6];
  v3 = v0[5] & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  result = v0[2];
  if (!v3)
  {
  }

  v20 = *(result + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = result + 72;
  v22 = v1[2];
  v19 = result + 72;
LABEL_6:
  v21 = v6;
  v8 = v20 - v5;
  v9 = (v7 + 48 * v5);
  while (v5 < *(result + 16))
  {
    v25 = v8;
    v10 = *(v9 - 4);
    v23 = *(v9 - 5);
    v11 = *(v9 - 3);
    v12 = *(v9 - 2);
    v13 = *(v9 - 1);
    v14 = *v9;
    swift_getKeyPath("0(\n'");
    v24 = v10;

    sub_2588BBB98();

    sub_25878F648();

    if (sub_2588BDD28())
    {

LABEL_13:
      v6 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2587F06B4(0, *(v21 + 16) + 1, 1);
        v6 = v21;
      }

      v7 = v19;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2587F06B4((v16 > 1), v17 + 1, 1);
        v6 = v21;
      }

      ++v5;
      *(v6 + 16) = v17 + 1;
      v18 = (v6 + 48 * v17);
      v18[4] = v23;
      v18[5] = v24;
      result = v22;
      v18[6] = v11;
      v18[7] = v12;
      v18[8] = v13;
      v18[9] = v14;
      if (v25 == 1)
      {
        return v6;
      }

      goto LABEL_6;
    }

    v15 = sub_2588BDD28();

    if (v15)
    {
      goto LABEL_13;
    }

    v9 += 6;
    ++v5;
    v8 = v25 - 1;
    result = v22;
    if (v25 == 1)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587EFE04(void *a1, uint64_t a2, uint64_t a3)
{
  sub_25878F648();
  if (sub_2588BDD28())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_2588BDD28();
  }

  return v3 & 1;
}

char *MedicalIDSpokenLanguagePickerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicalIDSpokenLanguagePickerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI38MedicalIDSpokenLanguagePickerViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_2587EFFDC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258791310(0, &qword_27F95E828, sub_2587BBA90, MEMORY[0x277D84560]);
  sub_2587BBA90(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2587BBA90(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2587F01D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_258791310(0, &qword_27F95E830, sub_2587D6188, MEMORY[0x277D84560]);
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

char *sub_2587F0300(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_280C0DDD8, &type metadata for MedicalIDEmergencyContact);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0410(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E840, &type metadata for MedicalIDSpokenLanguage);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0534(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_280C0DDD0, MEMORY[0x277D837D0]);
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

char *sub_2587F0644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2587F0744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2587F0664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2587F0A68(a1, a2, a3, *v3, &qword_27F95E810, _s15SectionGridItemVMa, _s15SectionGridItemVMa);
  *v3 = result;
  return result;
}

char *sub_2587F06B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2587F084C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2587F06D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2587F0970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2587F06F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2587F0A68(a1, a2, a3, *v3, &qword_27F95E818, type metadata accessor for NanoMedicalIDGridItemsView, type metadata accessor for NanoMedicalIDGridItemsView);
  *v3 = result;
  return result;
}

char *sub_2587F0744(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E820, MEMORY[0x277D839F8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2587F084C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E840, &type metadata for MedicalIDSpokenLanguage);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2587F0970(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_27F95E838, &type metadata for OrganDonationStatus);
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

void *sub_2587F0A68(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_258791310(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_2587F0C5C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25883FA20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2587F0FFC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2587F0CD0(uint64_t a1)
{
  result = sub_2588BBBD8();
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

uint64_t sub_2587F0F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDGridItemsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587F0FA0(uint64_t a1)
{
  v2 = type metadata accessor for NanoMedicalIDGridItemsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587F0FFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2588BDF68();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2588BD9E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2587F1214(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2587F10F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2587F10F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_25878F648();
    v7 = v6 + 48 * v4 - 48;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_2588BDD18();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 64);
      v14 = *(v10 + 72);
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = *(v10 + 16);
      *(v10 + 48) = *v10;
      *(v10 + 64) = v17;
      *(v10 + 80) = *(v10 + 32);
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      *(v10 + 32) = v15;
      *(v10 + 40) = v16;
      v10 -= 48;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2587F1214(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v95 = v5;
        v10 = *a3 + 48 * v7;
        sub_25878F648();
        result = sub_2588BDD18();
        v11 = result;
        v12 = v7 + 2;
        v13 = v10 + 120;
        while (v6 != v12)
        {
          result = sub_2588BDD18();
          ++v12;
          v13 += 48;
          if ((v11 == -1) == (result != -1))
          {
            v6 = v12 - 1;
            break;
          }
        }

        v5 = v95;
        if (v11 == -1)
        {
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v14 = 48 * v6 - 24;
            v15 = 48 * v7 + 40;
            v16 = v6;
            v17 = v7;
            do
            {
              if (v17 != --v16)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v18 = (v26 + v15);
                v19 = *(v26 + v15 - 40);
                v20 = v26 + v14;
                v21 = *(v18 - 3);
                v22 = *(v18 - 1);
                v23 = *v18;
                v24 = *(v20 + 8);
                v25 = *(v20 - 8);
                *(v18 - 5) = *(v20 - 24);
                *(v18 - 3) = v25;
                *(v18 - 1) = v24;
                *(v20 - 24) = v19;
                *(v20 - 8) = v21;
                *(v20 + 8) = v22;
                *(v20 + 16) = v23;
              }

              ++v17;
              v14 -= 48;
              v15 += 48;
            }

            while (v17 < v16);
          }
        }
      }

      v27 = a3[1];
      if (v6 >= v27)
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (v6 - v7 >= a4)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_118;
      }

      if (v7 + a4 < v27)
      {
        v27 = v7 + a4;
      }

      if (v27 < v7)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v6 == v27)
      {
LABEL_27:
        v7 = v6;
      }

      else
      {
        v98 = v27;
        v96 = v5;
        v75 = *a3;
        sub_25878F648();
        v76 = v75 + 48 * v6 - 48;
        v93 = v9;
        v77 = v9 - v6;
        do
        {
          v78 = v77;
          v79 = v76;
          do
          {
            result = sub_2588BDD18();
            if (result != -1)
            {
              break;
            }

            if (!v75)
            {
              goto LABEL_122;
            }

            v80 = *(v79 + 48);
            v81 = *(v79 + 56);
            v82 = *(v79 + 64);
            v83 = *(v79 + 72);
            v84 = *(v79 + 80);
            v85 = *(v79 + 88);
            v86 = *(v79 + 16);
            *(v79 + 48) = *v79;
            *(v79 + 64) = v86;
            *(v79 + 80) = *(v79 + 32);
            *v79 = v80;
            *(v79 + 8) = v81;
            *(v79 + 16) = v82;
            *(v79 + 24) = v83;
            *(v79 + 32) = v84;
            *(v79 + 40) = v85;
            v79 -= 48;
          }

          while (!__CFADD__(v78++, 1));
          ++v6;
          v76 += 48;
          --v77;
        }

        while (v6 != v98);
        v5 = v96;
        v7 = v98;
        v9 = v93;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2587F01D8(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v29 = *(v8 + 2);
      v28 = *(v8 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = sub_2587F01D8((v28 > 1), v29 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v30;
      v31 = &v8[16 * v29];
      *(v31 + 4) = v9;
      *(v31 + 5) = v7;
      v32 = *v97;
      if (!*v97)
      {
        goto LABEL_126;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v8 + 4);
            v35 = *(v8 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_48:
            if (v37)
            {
              goto LABEL_105;
            }

            v50 = &v8[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_108;
            }

            v56 = &v8[16 * v33 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_112;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v60 = &v8[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_62:
          if (v55)
          {
            goto LABEL_107;
          }

          v63 = &v8[16 * v33];
          v65 = *(v63 + 4);
          v64 = *(v63 + 5);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_110;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_69:
          v71 = v33 - 1;
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v72 = *&v8[16 * v71 + 32];
          v73 = *&v8[16 * v33 + 40];
          sub_2587F18D0((*a3 + 48 * v72), (*a3 + 48 * *&v8[16 * v33 + 32]), (*a3 + 48 * v73), v32);
          if (v5)
          {
          }

          if (v73 < v72)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_25883E0C8(v8);
          }

          if (v71 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v74 = &v8[16 * v71];
          *(v74 + 4) = v72;
          *(v74 + 5) = v73;
          result = sub_25883E03C(v33);
          v30 = *(v8 + 2);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v38 = &v8[16 * v30 + 32];
        v39 = *(v38 - 64);
        v40 = *(v38 - 56);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_103;
        }

        v43 = *(v38 - 48);
        v42 = *(v38 - 40);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_104;
        }

        v45 = &v8[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_106;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_109;
        }

        if (v49 >= v41)
        {
          v67 = &v8[16 * v33 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_113;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_88:
  v6 = *v97;
  if (!*v97)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_25883E0C8(v8);
    v8 = result;
  }

  v88 = v5;
  v89 = *(v8 + 2);
  if (v89 >= 2)
  {
    while (*a3)
    {
      v5 = v89 - 1;
      v90 = *&v8[16 * v89];
      v91 = *&v8[16 * v89 + 24];
      sub_2587F18D0((*a3 + 48 * v90), (*a3 + 48 * *&v8[16 * v89 + 16]), (*a3 + 48 * v91), v6);
      if (v88)
      {
      }

      if (v91 < v90)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_25883E0C8(v8);
      }

      if (v89 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v92 = &v8[16 * v89];
      *v92 = v90;
      *(v92 + 1) = v91;
      result = sub_25883E03C(v5);
      v89 = *(v8 + 2);
      if (v89 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_2587F18D0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      sub_25878F648();
LABEL_23:
      v5 -= 48;
      do
      {
        v17 = v5 + 48;
        if (sub_2588BDD18() == -1)
        {
          v21 = v6 - 48;
          if (v17 != v6)
          {
            v22 = *v21;
            v23 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v23;
            *v5 = v22;
          }

          if (v12 <= v4 || (v6 -= 48, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v18 = v12 - 48;
        if (v17 != v12)
        {
          v19 = *v18;
          v20 = *(v12 - 1);
          *(v5 + 1) = *(v12 - 2);
          *(v5 + 2) = v20;
          *v5 = v19;
        }

        v5 -= 48;
        v12 -= 48;
      }

      while (v18 > v4);
      v12 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_25878F648();
      while (sub_2588BDD18() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_2587F1B84(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t MedicalIDHeightFormatter.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BBAC8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = sub_2587F28D4(a1, 2);
  (*(v5 + 8))(a1, v4);
  result = type metadata accessor for MedicalIDHeightFormatter(0);
  *(a2 + *(result + 20)) = v6;
  return result;
}

Swift::String __swiftcall MedicalIDHeightFormatter.localizedUnitDescription()()
{
  v1 = sub_2587F28D4(v0, 1);
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587F2AD8(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCE0]);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BB8A8();
  v6 = sub_2588BDBA8();
  v7 = [v1 stringFromUnit_];

  v8 = sub_2588BD8A8();
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

void sub_2587F1E14(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v5 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2587F2AD8(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCE0]);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2588BB8A8();
  v9 = sub_2588BDBA8();
  sub_25884CDDC(a1, v9, a2);
}

uint64_t sub_2587F21C4(uint64_t a1)
{
  v38 = a1;
  v1 = sub_2588BBA58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = sub_2588BBA68();
  MEMORY[0x28223BE20](v5);
  sub_2588BBA38();
  sub_2587BBA44();
  v6 = sub_2588BD7D8();
  v7 = *(v2 + 8);
  v8 = v7(v37 - v4, v1);
  if (v6)
  {
    v7(v37 - v4, v1);
  }

  else
  {
    MEMORY[0x28223BE20](v8);
    sub_2588BBA28();
    v9 = sub_2588BD7D8();
    v7(v37 - v4, v1);
    v7(v37 - v4, v1);
    if ((v9 & 1) == 0)
    {
      sub_2587F2AD8(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B530]);
      v31 = v30;
      v32 = *(v30 - 8);
      MEMORY[0x28223BE20](v30);
      v34 = v37 - v33;
      v35 = [objc_opt_self() centimeters];
      sub_2588BB6B8();

      type metadata accessor for MedicalIDHeightFormatter(0);
      sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
      v36 = sub_2588BDC68();
      (*(v32 + 8))(v34, v31);
      return v36;
    }
  }

  sub_2587F2AD8(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B530]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = objc_opt_self();
  v16 = [v15 inches];
  sub_2588BB6B8();

  sub_2588BB688();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v37 - v14, v11);
  v20 = type metadata accessor for MedicalIDHeightFormatter(0);
  v37[1] = v37;
  MEMORY[0x28223BE20](v20);
  v21 = [v15 feet];
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB678();
  v38 = sub_2588BDC68();
  v19(v37 - v14, v11);
  fmod(v18, 12.0);
  MEMORY[0x28223BE20](v22);
  v23 = [v15 inches];
  sub_2588BB678();
  sub_2588BDC68();
  v19(v37 - v14, v11);
  v24 = sub_2588BD838();
  MEMORY[0x28223BE20](v24 - 8);
  sub_2588BD828();
  sub_2588BD818();
  sub_2588BD808();

  sub_2588BD818();
  sub_2588BD808();

  sub_2588BD818();
  v25 = sub_2588BD858();
  MEMORY[0x28223BE20](v25 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v26 = qword_27F95DA88;
  v27 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v27 - 8);
  v28 = v26;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

id sub_2587F28D4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v4 = sub_2588BBA88();
  [v3 setLocale_];

  [v3 setUnitStyle_];
  [v3 setUnitOptions_];
  result = [v3 numberFormatter];
  if (result)
  {
    v6 = result;
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v7 = sub_2588BDCC8();
    [v6 setRoundingIncrement_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDHeightFormatter(uint64_t a1)
{
  result = qword_27F95E850;
  if (!qword_27F95E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587F2A44(uint64_t a1)
{
  result = sub_2588BBAC8();
  if (v2 <= 0x3F)
  {
    result = sub_25878E130(319, &qword_27F95E860, 0x277CCAB18);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2587F2AD8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2587F2B40(uint64_t a1)
{
  sub_2587F2AD8(0, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall MedicalIDSpokenLanguage.init(id:)(MedicalIDUI::MedicalIDSpokenLanguage *__return_ptr retstr, Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v5 = sub_2588BBAC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);

  sub_2588BBAB8();
  v8 = sub_2588BBA88();
  v9 = *(v6 + 8);
  v9(v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v43 = countAndFlagsBits;
  v10 = sub_2588BD868();
  v11 = [v8 localizedStringForLanguage:v10 context:3];

  if (v11)
  {
    v12 = sub_2588BD8A8();
    v14 = v13;
  }

  else
  {
    v42 = v9;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v15 = sub_2588BBC98();
    __swift_project_value_buffer(v15, qword_27F969938);

    v16 = sub_2588BBC78();
    v17 = sub_2588BDBE8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v18 = 136315650;
      *(v18 + 4) = sub_258790224(0xD000000000000017, 0x80000002588C2110, &v44);
      *(v18 + 12) = 2080;
      v19 = sub_258790224(v43, object, &v44);
      v40[1] = v40;
      *(v18 + 14) = v19;
      *(v18 + 22) = 2080;
      MEMORY[0x28223BE20](v19);
      v20 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2588BBAB8();
      v21 = sub_2588BBA08();
      v23 = v22;
      v42(v20, v5);
      v24 = sub_258790224(v21, v23, &v44);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_25878B000, v16, v17, "%s spoken language for %s returned nil for localizing in current locale %s.", v18, 0x20u);
      v25 = v41;
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v25, -1, -1);
      MEMORY[0x259C8DBE0](v18, -1, -1);
    }

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v26 = objc_allocWithZone(MEMORY[0x277CBEAF8]);
  v27 = sub_2588BD868();
  v28 = [v26 initWithLocaleIdentifier_];

  v29 = sub_2588BD868();
  v30 = [v28 localizedStringForLanguage:v29 context:3];

  if (v30)
  {
    v31 = sub_2588BD8A8();
    v33 = v32;
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v34 = sub_2588BBC98();
    __swift_project_value_buffer(v34, qword_27F969938);

    v35 = sub_2588BBC78();
    v36 = sub_2588BDBE8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_258790224(0xD000000000000017, 0x80000002588C2110, &v44);
      *(v37 + 12) = 2080;
      v39 = sub_258790224(v43, object, &v44);

      *(v37 + 14) = v39;
      _os_log_impl(&dword_25878B000, v35, v36, "%s spoken language for %s returned nil for localizing in that languages locale.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v38, -1, -1);
      MEMORY[0x259C8DBE0](v37, -1, -1);
    }

    else
    {
    }

    v31 = 0;
    v33 = 0xE000000000000000;
  }

  retstr->id._countAndFlagsBits = v43;
  retstr->id._object = object;
  retstr->languageInCurrentLocale._countAndFlagsBits = v12;
  retstr->languageInCurrentLocale._object = v14;
  retstr->languageInLanguageLocale._countAndFlagsBits = v31;
  retstr->languageInLanguageLocale._object = v33;
}

uint64_t static MedicalIDSpokenLanguage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2588BDF98();
}

uint64_t MedicalIDSpokenLanguage.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicalIDSpokenLanguage.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.languageInCurrentLocale.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MedicalIDSpokenLanguage.languageInCurrentLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.languageInLanguageLocale.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MedicalIDSpokenLanguage.languageInLanguageLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MedicalIDSpokenLanguage.hash(into:)(uint64_t a1)
{
  sub_2588BD908();
  sub_2588BD908();

  return sub_2588BD908();
}

uint64_t MedicalIDSpokenLanguage.hashValue.getter()
{
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3498@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2587F34A4()
{
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3528(uint64_t a1)
{
  sub_2588BD908();
  sub_2588BD908();

  return sub_2588BD908();
}

uint64_t sub_2587F3594(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD908();
  sub_2588BD908();
  sub_2588BD908();
  return sub_2588BE078();
}

uint64_t sub_2587F3614(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2588BDF98();
}

unint64_t sub_2587F371C()
{
  result = qword_27F95E868;
  if (!qword_27F95E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E868);
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

uint64_t sub_2587F3784(uint64_t a1, int a2)
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

uint64_t sub_2587F37CC(uint64_t result, int a2, int a3)
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

uint64_t EditOrganDonationCellViewModel.__allocating_init(outOrganDonationStatus:hasStoredRegistrant:medicalIDDonorStatusProvider:organDonationRegistrationAvailable:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *a1;
  v16 = a1[1];
  LOBYTE(a1) = *(a1 + 16);
  *(v14 + 16) = 0;
  *(v14 + 41) = 0;
  *(v14 + 65) = 3;
  sub_2588BBBC8();
  *(v14 + 24) = v15;
  *(v14 + 32) = v16;
  *(v14 + 40) = a1;
  v19 = v15;
  v20 = v16;
  v21 = a1;
  sub_2587F4F80();
  MEMORY[0x259C8C5A0](&v18);
  *(v14 + 64) = v18;
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 88) = a6;
  *(v14 + 96) = a7;
  return v14;
}

uint64_t sub_2587F3900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C2258);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_2587F39B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("0(\n'");
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 16);
  return result;
}

void (*sub_2587F3A50(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(v1 + 16);
  return sub_2587F3A7C;
}

void sub_2587F3A7C(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v2 + 16);
  *(v2 + 16) = *(result + 16);
  if (v3)
  {
    swift_getKeyPath("0(\n'");
    *result = v2;
    sub_2587F4FD0();
    sub_2588BBB98();

    if ((*(v2 + 16) & 1) == 0)
    {
      sub_2587F563C();
    }
  }
}

uint64_t sub_2587F3B04()
{
  swift_getKeyPath("0(\n'");
  sub_2587F4FD0();
  sub_2588BBB98();

  return *(v0 + 16);
}

void sub_2587F3B74(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 == (result & 1))
  {
    *(v1 + 16) = result & 1;
    if (v2)
    {
      swift_getKeyPath("0(\n'");
      sub_2587F4FD0();
      sub_2588BBB98();

      if ((*(v1 + 16) & 1) == 0)
      {
        sub_2587F563C();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath("0(\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

void sub_2587F3CA8(uint64_t result, char a2)
{
  v2 = *(result + 16);
  *(result + 16) = a2;
  if (v2 == 1)
  {
    swift_getKeyPath("0(\n'");
    sub_2587F4FD0();
    sub_2588BBB98();

    if ((*(result + 16) & 1) == 0)
    {
      sub_2587F563C();
    }
  }
}

uint64_t (*sub_2587F3D3C(uint64_t *a1))()
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
  swift_getKeyPath("0(\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587F4FD0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("0(\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587F3A50(v4);
  return sub_2587F3E44;
}

uint64_t sub_2587F3E50@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_2588C22A8);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 41);
  return result;
}

uint64_t sub_2587F3EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C22A8);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_2587F3F40(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_2587B80A4(*(v1 + 41), *a1);
  if (result)
  {
    *(v1 + 41) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C22A8);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587F4024(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath(byte_2588C2258);
  sub_2587F4FD0();
  sub_2588BBB98();

  result = sub_2587B80A4(v3, *(v1 + 64));
  if ((result & 1) == 0)
  {
    swift_getKeyPath(byte_2588C2258);
    sub_2588BBB98();

    v5 = *(v1 + 64);
    result = sub_2587B80A4(*(v2 + 41), *(v2 + 64));
    if (result)
    {
      *(v2 + 41) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_2588C22A8);
      MEMORY[0x28223BE20](KeyPath);
      sub_2588BBB88();
    }
  }

  return result;
}

void sub_2587F4180(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath(byte_2588C2258);
  sub_2587F4FD0();
  sub_2588BBB98();

  if ((sub_2587B80A4(*(v1 + 64), v2) & 1) == 0)
  {
    swift_getKeyPath(byte_2588C2258);

    sub_2588BBB98();

    sub_2587F4F80();
    sub_2588BD438();

    swift_getKeyPath(byte_2588C2258);
    sub_2588BBB98();

    if (*(v1 + 64) > 2u)
    {
    }

    else
    {
      v3 = sub_2588BDF98();

      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    swift_getKeyPath(byte_2588C22A8);
    sub_2588BBB98();

    if (*(v1 + 41) > 2u)
    {
    }

    else
    {
      v4 = sub_2588BDF98();

      if ((v4 & 1) == 0)
      {
        sub_2587F5074();
      }
    }
  }
}

uint64_t (*sub_2587F4448(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_2587F4474;
}

void sub_2587F4474(_BYTE *a1, char a2)
{
  v2 = *a1;
  v3 = a1[8];
  v4 = *(*a1 + 64);
  if (a2)
  {
    v6 = a1[8];
    sub_2587F4024(&v6);
    *(v2 + 64) = v3;
    v7 = v4;
    v5 = &v7;
  }

  else
  {
    v8 = a1[8];
    sub_2587F4024(&v8);
    *(v2 + 64) = v3;
    v9 = v4;
    v5 = &v9;
  }

  sub_2587F4180(v5);
}

uint64_t sub_2587F44E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_2588C2258);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 64);
  return result;
}

void sub_2587F4560(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_2587B80A4(*(v1 + 64), *a1))
  {
    v3 = *(v1 + 64);
    LOBYTE(v5) = v2;
    sub_2587F4024(&v5);
    *(v1 + 64) = v2;
    LOBYTE(v5) = v3;
    sub_2587F4180(&v5);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C2258);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

uint64_t (*sub_2587F4660(uint64_t *a1))()
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
  swift_getKeyPath(byte_2588C2258);
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587F4FD0();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath(byte_2588C2258);
  sub_2588BBBB8();

  v4[7] = sub_2587F4448(v4);
  return sub_2587F4768;
}

uint64_t sub_2587F4774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C2280);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_2587F4824@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_2588C2280);
  sub_2587F4FD0();
  sub_2588BBB98();

  *a1 = *(v1 + 65);
  return result;
}

uint64_t sub_2587F489C(unsigned __int8 *a1)
{
  v2 = *a1;
  result = sub_2587F5F80(*(v1 + 65), *a1);
  if (result)
  {
    KeyPath = swift_getKeyPath(byte_2588C2280);
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  else
  {
    *(v1 + 65) = v2;
  }

  return result;
}

MedicalIDUI::EditOrganDonationCellViewModel::DonateLifeFlowState_optional __swiftcall EditOrganDonationCellViewModel.DonateLifeFlowState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditOrganDonationCellViewModel.DonateLifeFlowState.rawValue.getter()
{
  v1 = 0x7369676552646964;
  if (*v0 != 1)
  {
    v1 = 0x6552746F4E646964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696F676E6FLL;
  }
}

uint64_t sub_2587F4A58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7369676552646964;
  v4 = 0xEB00000000726574;
  if (v2 != 1)
  {
    v3 = 0x6552746F4E646964;
    v4 = 0xEE00726574736967;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E696F676E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7369676552646964;
  v8 = 0xEB00000000726574;
  if (*a2 != 1)
  {
    v7 = 0x6552746F4E646964;
    v8 = 0xEE00726574736967;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E696F676E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2588BDF98();
  }

  return v11 & 1;
}

uint64_t sub_2587F4B84()
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2587F4C3C(uint64_t a1)
{
  sub_2588BD908();
}

uint64_t sub_2587F4CE0(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587F4DA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726574;
  v5 = 0x7369676552646964;
  if (v2 != 1)
  {
    v5 = 0x6552746F4E646964;
    v4 = 0xEE00726574736967;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696F676E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_2587F4E40(uint64_t a1)
{
  v1 = [objc_opt_self() medicalIDOrganDonorStatus_];

  return v1;
}

uint64_t EditOrganDonationCellViewModel.init(outOrganDonationStatus:hasStoredRegistrant:medicalIDDonorStatusProvider:organDonationRegistrationAvailable:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  *(v8 + 16) = 0;
  *(v8 + 41) = 0;
  *(v8 + 65) = 3;
  sub_2588BBBC8();
  *(v8 + 24) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  sub_2587F4F80();
  MEMORY[0x259C8C5A0](&v19);
  *(v8 + 64) = v19;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  return v8;
}

void sub_2587F4F80()
{
  if (!qword_27F95DD98)
  {
    v0 = sub_2588BD488();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DD98);
    }
  }
}

unint64_t sub_2587F4FD0()
{
  result = qword_27F95E488;
  if (!qword_27F95E488)
  {
    type metadata accessor for EditOrganDonationCellViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E488);
  }

  return result;
}

uint64_t type metadata accessor for EditOrganDonationCellViewModel(uint64_t a1)
{
  result = qword_27F95E888;
  if (!qword_27F95E888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587F5074()
{
  v1 = v0;
  if ((*(v0 + 88))())
  {
    if ((*(v0 + 72))())
    {

      sub_2587F5380();
    }

    else
    {
      if (sub_2587F5F80(*(v0 + 65), 0))
      {
        KeyPath = swift_getKeyPath(byte_2588C2280);
        MEMORY[0x28223BE20](KeyPath);
        v11 = v0;
        sub_2587F4FD0();
        sub_2588BBB88();
      }

      else
      {
        *(v0 + 65) = 0;
      }

      sub_2587F3B74(1);
    }
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v2 = sub_2588BBC98();
    __swift_project_value_buffer(v2, qword_27F969938);
    v3 = sub_2588BBC78();
    v4 = sub_2588BDBF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      v7 = sub_2588BE0E8();
      v9 = sub_258790224(v7, v8, &v11);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_258790224(0xD00000000000001BLL, 0x80000002588C9C20, &v11);
      _os_log_impl(&dword_25878B000, v3, v4, "[%s] %s Organ donation registration is not available.", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v6, -1, -1);
      MEMORY[0x259C8DBE0](v5, -1, -1);
    }

    swift_getKeyPath(byte_2588C22A8);
    v11 = v1;
    sub_2587F4FD0();
    sub_2588BBB98();

    LOBYTE(v11) = *(v1 + 41);
    sub_2587F4560(&v11);
  }
}

void sub_2587F5380()
{
  v1 = v0;
  v2 = (*(v0 + 48))(3);
  v3 = v2;
  if (!v2)
  {
    LOBYTE(v5) = 0;
    goto LABEL_5;
  }

  v4 = [v2 integerValue];
  if (v4 <= 2)
  {
    v5 = 0x30102u >> (8 * v4);
LABEL_5:
    LOBYTE(v19) = v5;
    sub_2587F4560(&v19);

    return;
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v6 = sub_2588BBC98();
  __swift_project_value_buffer(v6, qword_27F969938);
  v7 = v3;
  v8 = sub_2588BBC78();
  v9 = sub_2588BDBD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    v12 = sub_2588BE0E8();
    v14 = sub_258790224(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258790224(0xD000000000000023, 0x80000002588C9BF0, &v19);
    *(v10 + 22) = 2080;
    sub_2587F6450(0);
    v15 = v7;
    v16 = sub_2588BD8C8();
    v18 = sub_258790224(v16, v17, &v19);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_25878B000, v8, v9, "[%s] %s Could not create organ donation status from %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v11, -1, -1);
    MEMORY[0x259C8DBE0](v10, -1, -1);
  }

  swift_getKeyPath(byte_2588C22A8);
  v19 = v1;
  sub_2587F4FD0();
  sub_2588BBB98();

  LOBYTE(v19) = *(v1 + 41);
  sub_2587F4560(&v19);
}

void sub_2587F563C()
{
  swift_getKeyPath(byte_2588C2280);
  v4 = v0;
  sub_2587F4FD0();
  sub_2588BBB98();

  v1 = v0[65];
  if (v1 <= 1)
  {
    if (v0[65])
    {
      goto LABEL_3;
    }

LABEL_6:
    swift_getKeyPath(byte_2588C2258);
    v4 = v0;
    sub_2588BBB98();

    if (v0[64] > 2u)
    {
    }

    else
    {
      v2 = sub_2588BDF98();

      if ((v2 & 1) == 0)
      {
LABEL_11:
        v1 = v0[65];
        if (v1 == 3)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }

    swift_getKeyPath(byte_2588C22A8);
    v4 = v0;
    sub_2588BBB98();

    LOBYTE(v4) = v0[41];
    sub_2587F4560(&v4);
    goto LABEL_11;
  }

  if (v1 == 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v1 == 3)
  {
LABEL_4:
    v0[65] = v1;
    return;
  }

LABEL_12:
  KeyPath = swift_getKeyPath(byte_2588C2280);
  MEMORY[0x28223BE20](KeyPath);
  v4 = v0;
  sub_2588BBB88();
}

uint64_t sub_2587F5888()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  sub_2587F06D4(0, 1, 1);
  v2 = v13;
  v4 = *(v13 + 16);
  v3 = *(v13 + 24);
  if (v4 >= v3 >> 1)
  {
    sub_2587F06D4((v3 > 1), v4 + 1, 1);
    v2 = v13;
  }

  *(v2 + 16) = v4 + 1;
  *(v2 + v4 + 32) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2587F06D4(0, *(v2 + 16) + 1, 1);
    v2 = v13;
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_2587F06D4((v5 > 1), v6 + 1, 1);
    v2 = v13;
  }

  *(v2 + 16) = v6 + 1;
  *(v2 + v6 + 32) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2587F06D4(0, *(v2 + 16) + 1, 1);
  }

  v7 = v13;
  v9 = *(v13 + 16);
  v8 = *(v13 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_2587F06D4((v8 > 1), v9 + 1, 1);
    v7 = v13;
  }

  *(v7 + 16) = v9 + 1;
  *(v7 + v9 + 32) = 2;
  if ((*(v1 + 88))())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2587F06D4(0, *(v7 + 16) + 1, 1);
      v7 = v13;
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2587F06D4((v10 > 1), v11 + 1, 1);
      v7 = v13;
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + v11 + 32) = 3;
  }

  return v7;
}

void sub_2587F5A6C(char a1)
{
  v3 = *(v1 + 65);
  if (a1)
  {
    if (sub_2587F5F80(v3, 1u))
    {
      KeyPath = swift_getKeyPath(byte_2588C2280);
      MEMORY[0x28223BE20](KeyPath);
      v8 = v1;
      sub_2587F4FD0();
      sub_2588BBB88();
    }

    else
    {
      *(v1 + 65) = 1;
    }

    v5 = 3;
  }

  else
  {
    if (sub_2587F5F80(v3, 2u))
    {
      v6 = swift_getKeyPath(byte_2588C2280);
      MEMORY[0x28223BE20](v6);
      v8 = v1;
      sub_2587F4FD0();
      sub_2588BBB88();
    }

    else
    {
      *(v1 + 65) = 2;
    }

    swift_getKeyPath(byte_2588C22A8);
    v8 = v1;
    sub_2587F4FD0();
    sub_2588BBB98();

    v5 = *(v1 + 41);
  }

  LOBYTE(v8) = v5;
  sub_2587F4560(&v8);
  if (*(v1 + 65) != 3)
  {
    v7 = swift_getKeyPath(byte_2588C2280);
    MEMORY[0x28223BE20](v7);
    v8 = v1;
    sub_2587F4FD0();
    sub_2588BBB88();
  }
}

void sub_2587F5CFC()
{
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath("0(\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587F4FD0();
    sub_2588BBB88();
  }

  else
  {
    *(v0 + 16) = 0;
  }
}

uint64_t EditOrganDonationCellViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EditOrganDonationCellViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MedicalIDUI30EditOrganDonationCellViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_2587F5F20()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 64);
  v5 = *(v0 + 24);
  v2 = v5;
  sub_2587F4024(&v5);
  *(v1 + 64) = v2;
  v4 = v3;
  sub_2587F4180(&v4);
}

BOOL sub_2587F5F80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2 == 3 && a1 == 3;
  if (a1 != 3 && a2 != 3)
  {
    v3 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 0x7369676552646964;
      }

      else
      {
        v4 = 0x6552746F4E646964;
      }

      if (v3 == 1)
      {
        v5 = 0xEB00000000726574;
      }

      else
      {
        v5 = 0xEE00726574736967;
      }

      v6 = a2;
      if (a2)
      {
LABEL_14:
        if (v6 == 1)
        {
          v7 = 0xEB00000000726574;
          if (v4 != 0x7369676552646964)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v7 = 0xEE00726574736967;
          if (v4 != 0x6552746F4E646964)
          {
            goto LABEL_23;
          }
        }

LABEL_21:
        if (v5 == v7)
        {
          v2 = 1;
LABEL_24:

          return (v2 & 1) == 0;
        }

LABEL_23:
        v2 = sub_2588BDF98();
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v4 = 0x676E696F676E6FLL;
      v6 = a2;
      if (a2)
      {
        goto LABEL_14;
      }
    }

    v7 = 0xE700000000000000;
    if (v4 != 0x676E696F676E6FLL)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  return (v2 & 1) == 0;
}

unint64_t sub_2587F60FC()
{
  result = qword_27F95E878;
  if (!qword_27F95E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E878);
  }

  return result;
}

unint64_t sub_2587F6154()
{
  result = qword_27F95E880;
  if (!qword_27F95E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E880);
  }

  return result;
}

uint64_t sub_2587F61B0(uint64_t a1)
{
  result = sub_2588BBBD8();
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

void sub_2587F6450(uint64_t a1)
{
  if (!qword_27F95E750)
  {
    sub_2587AEC74();
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E750);
    }
  }
}

uint64_t sub_2587F6500@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("P(\n'");
  *&v17[0] = v3;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v17[2] = v3[3];
  v17[3] = v6;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v17[6] = v3[7];
  v17[7] = v9;
  v17[4] = v7;
  v17[5] = v8;
  v17[0] = v4;
  v17[1] = v5;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  a2[2] = v3[3];
  a2[3] = v12;
  *a2 = v10;
  a2[1] = v11;
  v13 = v3[5];
  v14 = v3[6];
  a2[6] = v3[7];
  a2[7] = v9;
  a2[4] = v13;
  a2[5] = v14;
  return sub_2587914E8(v17, v16);
}

uint64_t sub_2587F660C(__int128 *a1)
{
  v2 = a1[5];
  v8[4] = a1[4];
  v8[5] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  sub_2587914E8(v8, &v7);
  return sub_2587F6790(a1);
}

uint64_t sub_2587F6674@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath("P(\n'");
  *&v12[0] = v1;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v4 = v1[6];
  v15 = v1[5];
  v3 = v15;
  v16 = v4;
  v6 = v1[8];
  v17 = v1[7];
  v5 = v17;
  v18 = v6;
  v7 = v1[2];
  v12[0] = v1[1];
  v12[1] = v7;
  v9 = v1[4];
  v13 = v1[3];
  v8 = v13;
  v14 = v9;
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  a1[7] = v6;
  return sub_2587914E8(v12, v11);
}

uint64_t sub_2587F6790(__int128 *a1)
{
  v2 = a1[5];
  v35 = a1[4];
  v36 = v2;
  v3 = a1[7];
  v37 = a1[6];
  v38 = v3;
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v5 = a1[3];
  v33 = a1[2];
  v34 = v5;
  swift_beginAccess();
  v6 = v1[6];
  v27 = v1[5];
  v28 = v6;
  v7 = v1[8];
  v29 = v1[7];
  v30 = v7;
  v8 = v1[2];
  v23 = v1[1];
  v24 = v8;
  v9 = v1[4];
  v25 = v1[3];
  v26 = v9;
  v22[4] = v35;
  v22[5] = v36;
  v22[6] = v37;
  v22[7] = v38;
  v22[0] = v31;
  v22[1] = v32;
  v22[2] = v33;
  v22[3] = v34;
  if (_s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v23, v22))
  {
    v10 = v1[6];
    v27 = v1[5];
    v28 = v10;
    v11 = v1[8];
    v29 = v1[7];
    v30 = v11;
    v12 = v1[2];
    v23 = v1[1];
    v24 = v12;
    v13 = v1[4];
    v25 = v1[3];
    v26 = v13;
    v14 = v31;
    v15 = v32;
    v16 = v34;
    v1[3] = v33;
    v1[4] = v16;
    v1[1] = v14;
    v1[2] = v15;
    v17 = v35;
    v18 = v36;
    v19 = v38;
    v1[7] = v37;
    v1[8] = v19;
    v1[5] = v17;
    v1[6] = v18;
    return sub_2587C66FC(&v23);
  }

  else
  {
    KeyPath = swift_getKeyPath("P(\n'");
    MEMORY[0x28223BE20](KeyPath);
    *&v23 = v1;
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
    sub_2588BBB88();
    sub_2587C66FC(&v31);
  }
}

uint64_t sub_2587F6970(_OWORD *a1, __int128 *a2)
{
  swift_beginAccess();
  v4 = a1[6];
  v16[4] = a1[5];
  v16[5] = v4;
  v5 = a1[8];
  v16[6] = a1[7];
  v16[7] = v5;
  v6 = a1[2];
  v16[0] = a1[1];
  v16[1] = v6;
  v7 = a1[4];
  v16[2] = a1[3];
  v16[3] = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  a1[3] = a2[2];
  a1[4] = v10;
  a1[1] = v8;
  a1[2] = v9;
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[7];
  a1[7] = a2[6];
  a1[8] = v13;
  a1[5] = v11;
  a1[6] = v12;
  sub_2587914E8(a2, v15);
  return sub_2587C66FC(v16);
}

uint64_t (*sub_2587F6A20(uint64_t *a1))()
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
  swift_getKeyPath("P(\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("P(\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587C5B50(v4);
  return sub_2587F6B58;
}

uint64_t sub_2587F6BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("0(\n'");
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_2587F6C98()
{
  swift_getKeyPath("0(\n'");
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  return *(v0 + 144);
}

uint64_t sub_2587F6D4C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 144) == v2)
  {
    *(v1 + 144) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath("0(\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
    sub_2588BBB88();
  }

  return result;
}

uint64_t (*sub_2587F6E70(uint64_t *a1))()
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
  swift_getKeyPath("0(\n'");
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath("0(\n'");
  sub_2588BBBB8();

  v4[7] = sub_2587F6B64(v4);
  return sub_2587F6FA8;
}

uint64_t ContactLabelEditViewModel.__allocating_init(medicalIDEmergencyContact:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  *(v2 + 144) = 0;
  sub_2588BBBC8();
  v3 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v3;
  v4 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;
  return v2;
}

uint64_t ContactLabelEditViewModel.init(medicalIDEmergencyContact:)(_OWORD *a1)
{
  *(v1 + 144) = 0;
  sub_2588BBBC8();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  v4 = a1[7];
  *(v1 + 112) = a1[6];
  *(v1 + 128) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  v6 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v6;
  return v1;
}

uint64_t sub_2587F7078()
{
  v1 = v0;
  swift_getKeyPath("P(\n'");
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  swift_getKeyPath("P(\n'");

  sub_2588BBB98();

  swift_getKeyPath("P(\n'", v0, v0);
  v9 = v0;

  sub_2588BBB98();

  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    swift_getKeyPath("P(\n'", v0);
    v9 = v0;
    sub_2588BBB98();

    v5 = v0[9];
    if (!v5)
    {
LABEL_12:

LABEL_13:

      goto LABEL_14;
    }

    v4 = v1[8];
    swift_bridgeObjectRetain_n();
  }

  swift_bridgeObjectRetain_n();

  if (!v2)
  {
    goto LABEL_12;
  }

  if (v4 == v3 && v5 == v2)
  {

    goto LABEL_14;
  }

  v6 = sub_2588BDF98();

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  swift_getKeyPath("P(\n'", v9);
  sub_2588BBB98();

  if (v1[3])
  {
    v7 = v1[2];
  }

  else
  {
    swift_getKeyPath("P(\n'", v1);
    sub_2588BBB98();

    v7 = v1[8];
  }

  return v7;
}

uint64_t sub_2587F7348()
{
  swift_getKeyPath("P(\n'");
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    swift_getKeyPath("P(\n'");
    sub_2588BBB98();

    v1 = v0[8];
  }

  return v1;
}

char *ContactLabelEditViewModel.deinit()
{
  v1 = *(v0 + 6);
  v8[4] = *(v0 + 5);
  v8[5] = v1;
  v2 = *(v0 + 8);
  v8[6] = *(v0 + 7);
  v8[7] = v2;
  v3 = *(v0 + 2);
  v8[0] = *(v0 + 1);
  v8[1] = v3;
  v4 = *(v0 + 4);
  v8[2] = *(v0 + 3);
  v8[3] = v4;
  sub_2587C66FC(v8);
  v5 = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t ContactLabelEditViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 6);
  v8[4] = *(v0 + 5);
  v8[5] = v1;
  v2 = *(v0 + 8);
  v8[6] = *(v0 + 7);
  v8[7] = v2;
  v3 = *(v0 + 2);
  v8[0] = *(v0 + 1);
  v8[1] = v3;
  v4 = *(v0 + 4);
  v8[2] = *(v0 + 3);
  v8[3] = v4;
  sub_2587C66FC(v8);
  v5 = OBJC_IVAR____TtC11MedicalIDUI25ContactLabelEditViewModel___observationRegistrar;
  v6 = sub_2588BBBD8();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return swift_deallocClassInstance();
}

uint64_t sub_2587F75B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v17[4] = a1[4];
  v17[5] = v2;
  v3 = a1[7];
  v17[6] = a1[6];
  v17[7] = v3;
  v4 = a1[1];
  v17[0] = *a1;
  v17[1] = v4;
  v5 = a1[3];
  v17[2] = a1[2];
  v17[3] = v5;
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[8];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v8 = *a2;
  v9 = a2[1];
  v6 = MEMORY[0x277CE11F8];
  sub_2587FAD0C(a2, v18, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8], sub_2587FAC5C);
  sub_2587914E8(v17, v18);
  sub_2587FAC5C(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v6);
  sub_2588BD438();
  v18[6] = v14;
  v18[7] = v15;
  v18[8] = v16;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[5] = v13;
  v18[0] = v8;
  v18[1] = v9;
  return sub_2587FAE44(v18, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v6, sub_2587FAC5C);
}

uint64_t sub_2587F771C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for ContactLabelEditView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v4;
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v5;
  sub_2587F9AFC(0);
  v7 = v6;
  v33[0] = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FA5B4(0);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  MEMORY[0x28223BE20](v10);
  v44 = type metadata accessor for ContactLabelEditView;
  v45 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FA768(v1, v5, type metadata accessor for ContactLabelEditView);
  v42 = *(v3 + 80);
  v13 = (v42 + 16) & ~v42;
  v14 = swift_allocObject();
  sub_2587FA7D0(v5, v14 + v13);
  v46 = v1;
  sub_2587F9CEC(0, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
  sub_2587FA454();
  sub_2588BD318();
  *&v9[*(v7 + 36)] = sub_2588BC8C8();
  v15 = *v1;
  v34 = v1[1];
  v35 = v15;
  v37 = v1;
  *&v55 = v15;
  *(&v55 + 1) = v34;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v33[1] = v16;
  sub_2588BD2E8();
  v17 = v63;
  v18 = v64;
  swift_getKeyPath("0(\n'");
  v63 = v17;
  *&v64 = v18;
  sub_2587FAAF8(0, &qword_27F95E9B8, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v19 = v41;
  sub_2587FA768(v1, v41, v44);
  v20 = swift_allocObject();
  sub_2587FA7D0(v19, v20 + v13);
  v36 = type metadata accessor for RelationshipPickerView(0);
  *&v32 = sub_2587FA688();
  *(&v32 + 1) = sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
  v21 = v33[0];
  sub_2588BD068();

  sub_2587FACAC(v9, sub_2587F9AFC);
  *&v63 = v35;
  *(&v63 + 1) = v34;
  sub_2588BD2C8();
  v22 = v55;
  swift_getKeyPath("P(\n'");
  *&v63 = v22;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v23 = v22[6];
  v59 = v22[5];
  v60 = v23;
  v24 = v22[8];
  v61 = v22[7];
  v62 = v24;
  v25 = v22[2];
  v55 = v22[1];
  v56 = v25;
  v26 = v22[4];
  v57 = v22[3];
  v58 = v26;
  sub_2587914E8(&v55, &v63);

  v51 = v59;
  v52 = v60;
  v53 = v61;
  v54 = v62;
  v47 = v55;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  v27 = v41;
  sub_2587FA768(v37, v41, v44);
  v28 = swift_allocObject();
  sub_2587FA7D0(v27, v28 + v13);
  *&v63 = v21;
  *(&v63 + 1) = v36;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  sub_2587913CC();
  v29 = v38;
  v30 = v45;
  sub_2588BD108();

  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  sub_2587C66FC(&v63);
  return (*(v39 + 8))(v30, v29);
}