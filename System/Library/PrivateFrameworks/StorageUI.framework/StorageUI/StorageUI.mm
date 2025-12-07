id STMGestaltTotalDiskCapacity(uint64_t a1)
{
  if (STMGestaltTotalDiskCapacity_onceToken[0] != -1)
  {
    STMGestaltTotalDiskCapacity_cold_1();
  }

  v2 = STMGestaltTotalDiskCapacity_totalDiskCapacity;

  return v2;
}

void __STMGestaltTotalDiskCapacity_block_invoke()
{
  v2 = MGCopyAnswer();
  v0 = [v2 objectForKeyedSubscript:*MEMORY[0x277D823C8]];
  v1 = STMGestaltTotalDiskCapacity_totalDiskCapacity;
  STMGestaltTotalDiskCapacity_totalDiskCapacity = v0;
}

uint64_t Array<A>.winingIdentifier.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
  sub_26BC00170(v1, *(a1 + 40), *(a1 + 48));
  return v1;
}

uint64_t sub_26BC00170(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26BC00198@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26BC1370C();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_26BC133DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26BC00338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x26D6904D0](a5, a2, a3, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441AC8, &qword_26BC15130);
  v10 = sub_26BC00468();
  sub_26BC00610(v10, v7, v8);
  return sub_26BC1354C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26BC00468()
{
  result = qword_280441AD0;
  if (!qword_280441AD0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441AC8, &qword_26BC15130);
    sub_26BC00568(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26BC005BC(OpaqueTypeConformance2, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AD0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26BC00568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441AD8;
  if (!qword_280441AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AD8);
  }

  return result;
}

unint64_t sub_26BC005BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441AE0;
  if (!qword_280441AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AE0);
  }

  return result;
}

unint64_t sub_26BC00610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441AE8;
  if (!qword_280441AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441AE8);
  }

  return result;
}

id variable initialization expression of FollowupMonitor.controller()
{
  v0 = objc_allocWithZone(MEMORY[0x277CFE500]);

  return [v0 init];
}

uint64_t sub_26BC006A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BC137CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280441AF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280441AF0);
    }
  }
}

uint64_t sub_26BC0076C(uint64_t a1, id *a2)
{
  result = sub_26BC137EC();
  *a2 = 0;
  return result;
}

uint64_t sub_26BC007E4(uint64_t a1, id *a2)
{
  v3 = sub_26BC137FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26BC00864@<X0>(uint64_t *a1@<X8>)
{
  sub_26BC1380C();
  v2 = sub_26BC137DC();

  *a1 = v2;
  return result;
}

uint64_t sub_26BC008A8()
{
  v0 = sub_26BC1380C();
  v1 = MEMORY[0x26D6908A0](v0);

  return v1;
}

uint64_t sub_26BC008E4(uint64_t a1)
{
  sub_26BC1380C();
  sub_26BC1381C();
}

uint64_t sub_26BC00938(uint64_t a1)
{
  sub_26BC1380C();
  sub_26BC13A7C();
  sub_26BC1381C();
  v1 = sub_26BC13AAC();

  return v1;
}

uint64_t sub_26BC009AC(void *a1, uint64_t *a2)
{
  v2 = sub_26BC1380C();
  v4 = v3;
  if (v2 == sub_26BC1380C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26BC13A4C();
  }

  return v7 & 1;
}

uint64_t sub_26BC00A34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26BC137DC();

  *a2 = v3;
  return result;
}

uint64_t sub_26BC00A7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BC1380C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BC00AA8(uint64_t a1)
{
  v2 = sub_26BC00BDC(&qword_280441B10, &unk_26BC14328);
  v3 = sub_26BC00BDC(&qword_280441B18, &unk_26BC142C8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26BC00BDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC00C40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC00D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for StorageGaugeLegendItemView(uint64_t a1)
{
  result = qword_280441B28;
  if (!qword_280441B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BC00E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BC00E90(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BC00E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280441B38)
  {
    sub_26BC00EEC(0, a2, a3);
    v3 = sub_26BC1321C();
    if (!v4)
    {
      atomic_store(v3, &qword_280441B38);
    }
  }
}

unint64_t sub_26BC00EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441B40;
  if (!qword_280441B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B40);
  }

  return result;
}

uint64_t sub_26BC00F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v42 - v5;
  v44 = sub_26BC134BC();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v9;
  v54 = *(a1 + 64);
  v55 = *(a1 + 80);
  v10 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v10;
  v46 = *(&v52 + 1);
  v11 = *(&v10 + 1);
  v43 = v10;
  LOBYTE(v61) = v55;
  v59 = v9;
  v60 = v54;
  v57 = v10;
  v58 = v52;
  v56 = v51[0];
  v47 = sub_26BC1343C();
  type metadata accessor for StorageGaugeLegendItemView(0);
  sub_26BC01758(v51, &v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1320C();
  sub_26BC1378C();
  v12 = sub_26BC1322C();
  *(v50 + 5) = *&v50[7];
  *(&v50[2] + 5) = *&v50[9];
  *(&v50[4] + 5) = *&v50[11];
  *&v67 = v43;
  *(&v67 + 1) = v11;
  sub_26BC017B4(v12, v13, v14);

  v15 = sub_26BC1351C();
  v17 = v16;
  v19 = v18;
  v43 = v20;
  v21 = v8;
  v22 = v8;
  v23 = v44;
  (*(v6 + 104))(v22, *MEMORY[0x277CE0AA0], v44);
  v24 = sub_26BC1348C();
  v25 = v45;
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  sub_26BC1349C();
  sub_26BC018F4(v25, &qword_280441B50, &qword_26BC14740);
  (*(v6 + 8))(v21, v23);
  v26 = sub_26BC1350C();
  v28 = v27;
  LODWORD(v45) = v29;
  v31 = v30;

  sub_26BC01808(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v62[2] = v58;
  v62[3] = v59;
  v62[4] = v60;
  v62[0] = v56;
  v62[1] = v57;
  v33 = v46;
  *&v63 = v61;
  *(&v63 + 1) = v46;
  LOBYTE(v25) = v47;
  v64[0] = v47;
  *&v64[1] = 256;
  *&v64[3] = *v50;
  *&v64[19] = *&v50[2];
  *&v64[35] = *&v50[4];
  *&v64[48] = *(&v50[5] + 5);
  v65 = 0;
  v66 = 1;
  LOWORD(v77) = 1;
  v67 = v56;
  v68 = v57;
  v71 = v60;
  v72 = v63;
  v69 = v58;
  v70 = v59;
  v73 = *v64;
  v74 = *&v64[16];
  v75 = *&v64[32];
  v76 = *(&v50[5] + 5);
  v34 = v45 & 1;
  v49 = v45 & 1;
  v48 = 0;
  v35 = *(&v50[5] + 5);
  *(a2 + 128) = *&v64[32];
  *(a2 + 144) = v35;
  v36 = v77;
  v37 = v72;
  *(a2 + 64) = v71;
  *(a2 + 80) = v37;
  v38 = v74;
  *(a2 + 96) = v73;
  *(a2 + 112) = v38;
  v39 = v68;
  *a2 = v67;
  *(a2 + 16) = v39;
  v40 = v70;
  *(a2 + 32) = v69;
  *(a2 + 48) = v40;
  *(a2 + 160) = v36;
  *(a2 + 168) = v26;
  *(a2 + 176) = v28;
  *(a2 + 184) = v34;
  *(a2 + 192) = v31;
  *(a2 + 200) = KeyPath;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  sub_26BC0187C(v62, v78, &qword_280441B60, &qword_26BC14490);
  sub_26BC018E4(v26, v28, v34);

  sub_26BC01808(v26, v28, v34);

  v78[2] = v58;
  v78[3] = v59;
  v78[4] = v60;
  v78[0] = v56;
  v78[1] = v57;
  v79 = v61;
  v80 = v33;
  v81 = v25;
  v82 = 256;
  *&v85[13] = *(&v50[5] + 5);
  *v85 = *&v50[4];
  v84 = *&v50[2];
  v83 = *v50;
  v86 = 0;
  v87 = 1;
  return sub_26BC018F4(v78, &qword_280441B60, &qword_26BC14490);
}

double sub_26BC0149C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26BC1338C();
  v29 = 0;
  sub_26BC00F5C(v2, &v15);
  v40 = v25;
  v41 = v26;
  v42[0] = v27[0];
  *(v42 + 9) = *(v27 + 9);
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v44[0] = v27[0];
  *(v44 + 9) = *(v27 + 9);
  v43[6] = v21;
  v43[7] = v22;
  v43[8] = v23;
  v43[9] = v24;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_26BC0187C(&v30, &v14, &qword_280441B48, &unk_26BC14450);
  sub_26BC018F4(v43, &qword_280441B48, &unk_26BC14450);
  *(&v28[10] + 7) = v40;
  *(&v28[11] + 7) = v41;
  *(&v28[12] + 7) = v42[0];
  v28[13] = *(v42 + 9);
  *(&v28[6] + 7) = v36;
  *(&v28[7] + 7) = v37;
  *(&v28[8] + 7) = v38;
  *(&v28[9] + 7) = v39;
  *(&v28[2] + 7) = v32;
  *(&v28[3] + 7) = v33;
  *(&v28[4] + 7) = v34;
  *(&v28[5] + 7) = v35;
  *(v28 + 7) = v30;
  *(&v28[1] + 7) = v31;
  v5 = v28[11];
  *(a1 + 177) = v28[10];
  *(a1 + 193) = v5;
  v6 = v28[13];
  *(a1 + 209) = v28[12];
  *(a1 + 225) = v6;
  v7 = v28[7];
  *(a1 + 113) = v28[6];
  *(a1 + 129) = v7;
  v8 = v28[9];
  *(a1 + 145) = v28[8];
  *(a1 + 161) = v8;
  v9 = v28[3];
  *(a1 + 49) = v28[2];
  *(a1 + 65) = v9;
  v10 = v28[5];
  *(a1 + 81) = v28[4];
  *(a1 + 97) = v10;
  result = *v28;
  v12 = v28[1];
  *(a1 + 17) = v28[0];
  v13 = v29;
  *a1 = v4;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v13;
  *(a1 + 33) = v12;
  return result;
}

unint64_t sub_26BC017B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441B58;
  if (!qword_280441B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B58);
  }

  return result;
}

uint64_t sub_26BC01808(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26BC01818@<X0>(uint64_t a1@<X8>)
{
  result = sub_26BC1334C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26BC0187C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BC018E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26BC018F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26BC01958()
{
  result = qword_280441B68;
  if (!qword_280441B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441B70, &qword_26BC14498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441B68);
  }

  return result;
}

uint64_t sub_26BC019BC()
{
  if (qword_280441A70 != -1)
  {
    swift_once();
  }

  qword_2804431A8 = qword_2804431B8;
}

uint64_t sub_26BC01A20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B80, &qword_26BC144E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26BC144B0;
  *(v0 + 32) = sub_26BC135DC();
  *(v0 + 40) = sub_26BC1368C();
  *(v0 + 48) = sub_26BC136AC();
  *(v0 + 56) = sub_26BC1365C();
  *(v0 + 64) = sub_26BC1361C();
  *(v0 + 72) = sub_26BC1363C();
  *(v0 + 80) = sub_26BC135FC();
  *(v0 + 88) = sub_26BC135EC();
  *(v0 + 96) = sub_26BC1367C();
  *(v0 + 104) = sub_26BC1369C();
  result = sub_26BC1362C();
  *(v0 + 112) = result;
  qword_2804431B0 = v0;
  return result;
}

uint64_t sub_26BC01ACC(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (qword_280441A68 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = qword_2804431B0;
    v2 = *(qword_2804431B0 + 16);
    if (!v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    v3 = a1 % v2;
    v4 = qword_2804431B0 + 8 * (a1 % v2);
    if (a1 / v2 >= 1)
    {
      break;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (v3 < v2)
    {
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v5 = sub_26BC1359C();

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
    v11 = 0;
    v12[0] = 0;
    v10 = 0;
    [v6 getHue:&v10 saturation:&v11 brightness:v12 alpha:0];
    v7 = sub_26BC135CC();

    return v7;
  }

  if (v3 >= *(v1 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v4 + 32);

  return v7;
}

uint64_t sub_26BC01C6C()
{
  if (qword_280441A88 != -1)
  {
    swift_once();
  }

  v0 = qword_280441B78;
  result = sub_26BC135AC();
  qword_2804431B8 = result;
  return result;
}

uint64_t sub_26BC01CC8()
{
  v0 = [objc_opt_self() opaqueSeparatorColor];
  result = sub_26BC135AC();
  qword_2804431C0 = result;
  return result;
}

uint64_t sub_26BC01D08()
{
  CGColorCreateGenericGray(0.312, 0.739);
  result = sub_26BC1358C();
  qword_2804431C8 = result;
  return result;
}

uint64_t sub_26BC01D3C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_26BC01E04;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26BC01F04;
  v4[3] = &block_descriptor;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_280441B78 = v2;
  return result;
}

id sub_26BC01E04(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 && v1 != 2)
  {
    if (v1 == 1)
    {
      v4 = objc_allocWithZone(MEMORY[0x277D75348]);

      return [v4 initWithWhite:0.99 alpha:1.0];
    }

    else
    {
      result = sub_26BC139EC();
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_opt_self() systemGroupedBackgroundColor];

    return v2;
  }

  return result;
}

id sub_26BC01F04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t StorageGaugeView.init(capacity:categories:available:onSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for StorageGaugeView(0);
  v13 = *(v12 + 32);
  sub_26BC00EEC(v12, v14, v15);
  sub_26BC131FC();
  *a6 = a1;
  a6[2] = a4;
  a6[3] = a5;
  *&v40[0] = a2;

  sub_26BC03698(v40);

  v16 = sub_26BC07DA8(*&v40[0]);

  v17 = 0;
  v18 = v16[2] + 1;
  v19 = 8;
  while (--v18)
  {
    v20 = v16[v19];
    v19 += 11;
    v21 = __OFADD__(v17, v20);
    v17 += v20;
    if (v21)
    {
      __break(1u);
      break;
    }
  }

  v22 = v17 + a3;
  if (__OFADD__(v17, a3))
  {
    __break(1u);
    goto LABEL_29;
  }

  v23 = a1 - v22;
  if (__OFSUB__(a1, v22))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v23)
  {
    if (qword_280441A98 != -1)
    {
      swift_once();
    }

    v24 = sub_26BC1317C();
    __swift_project_value_buffer(v24, qword_2804431E8);
    v25 = sub_26BC1315C();
    v26 = sub_26BC1390C();
    if (os_log_type_enabled(v25, v26))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218752;
      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = a3;
      *(v13 + 22) = 2048;
      *(v13 + 24) = a1;
      *(v13 + 32) = 2048;
      *(v13 + 34) = v23;
      _os_log_impl(&dword_26BBFE000, v25, v26, "Sum of all categories and available space doe not match capacity of the volume, the proportions of the gauge will be adjusted. Sum of categories: %lld, available: %lld, capacity: %lld. Difference is %lld", v13, 0x2Au);
      MEMORY[0x26D691130](v13, -1, -1);
    }

    a3 = a1 - v17;
    if (__OFSUB__(a1, v17))
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_21;
    }

    if (v23 < 0)
    {
      v27 = -v23;
      if (__OFSUB__(0, v23))
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
      v27 = v23;
    }
  }

  else
  {
    v27 = 0;
  }

  v17 = a1 / 999;
  v13 = a1 / 999 - v27;
  if (__OFSUB__(a1 / 999, v27))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13 < 1)
  {
    goto LABEL_24;
  }

  if (qword_280441A98 != -1)
  {
    goto LABEL_33;
  }

LABEL_21:
  v28 = sub_26BC1317C();
  __swift_project_value_buffer(v28, qword_2804431E8);
  v29 = sub_26BC1315C();
  v30 = sub_26BC1390C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = v23;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v17;
    _os_log_impl(&dword_26BBFE000, v29, v30, "As the diff %lld is superior to the threshold (%lld), the available space will not be displayed in the gauge to prevent displaying a wrong value", v31, 0x16u);
    MEMORY[0x26D691130](v31, -1, -1);
  }

LABEL_24:
  sub_26BC088F0(a3, v13 > 0, v40);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_31:
    result = sub_26BC0330C(0, v16[2] + 1, 1, v16);
    v16 = result;
  }

  v34 = v16[2];
  v33 = v16[3];
  if (v34 >= v33 >> 1)
  {
    result = sub_26BC0330C((v33 > 1), v34 + 1, 1, v16);
    v16 = result;
  }

  v16[2] = v34 + 1;
  v35 = &v16[11 * v34];
  v36 = v40[1];
  *(v35 + 2) = v40[0];
  *(v35 + 3) = v36;
  v37 = v40[2];
  v38 = v40[3];
  v39 = v40[4];
  *(v35 + 112) = v41;
  *(v35 + 5) = v38;
  *(v35 + 6) = v39;
  *(v35 + 4) = v37;
  a6[1] = v16;
  a6[4] = a3;
  return result;
}

uint64_t type metadata accessor for StorageGaugeView(uint64_t a1)
{
  result = qword_280441B88;
  if (!qword_280441B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StorageGaugeView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StorageGaugeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_26BC04C40(v1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StorageGaugeView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26BC04D3C(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StorageGaugeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = sub_26BC04250;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  result = *&v17;
  *(a1 + 48) = v17;
  return result;
}

double sub_26BC0259C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v62 = sub_26BC1330C();
  MEMORY[0x28223BE20](v62);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BC1324C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = type metadata accessor for StorageGaugeView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_26BC1338C();
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = 0;
  *&v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE8, &qword_26BC145A8) + 44);
  v61 = *(a2 + 8);
  sub_26BC0BF1C(v61);
  *&v64 = v14;
  KeyPath = swift_getKeyPath();
  sub_26BC04C40(a2, v13, type metadata accessor for StorageGaugeView);
  (*(v8 + 16))(&KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v7);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_26BC04D3C(v13, v17 + v15, type metadata accessor for StorageGaugeView);
  (*(v8 + 32))(v17 + v16, &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26BC04940;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF0, &qword_26BC145D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF8, &qword_26BC145D8);
  v19 = sub_26BC04AC8(&qword_280441C00, &qword_280441BF0, &qword_26BC145D0, MEMORY[0x277D83980]);
  sub_26BC04B10(v19, v20, v21);
  sub_26BC04B64();
  sub_26BC1377C();
  if (qword_280441A60 != -1)
  {
    swift_once();
  }

  v22 = qword_2804431A8;
  v23 = sub_26BC1343C();
  v24 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C20, &qword_26BC145E0) + 36);
  *v24 = v22;
  *(v24 + 8) = v23;

  v25 = sub_26BC1379C();
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C28, &qword_26BC145E8) + 36));
  v27 = v61;
  *v26 = v25;
  v26[1] = v27;
  v28 = sub_26BC1331C();
  v29 = *(v28 + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_26BC133AC();
  v32 = *(*(v31 - 8) + 104);
  v32(&v6[v29], v30, v31);
  __asm { FMOV            V0.2D, #3.0 }

  v63 = _Q0;
  *v6 = _Q0;
  *&v6[*(v62 + 20)] = 0xBFF0000000000000;
  v38 = qword_280441A70;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_26BC136BC();
  sub_26BC131EC();
  v40 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C30, &qword_26BC145F0) + 36);
  sub_26BC04C40(v6, v40, MEMORY[0x277CDFBC8]);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C38, &qword_26BC145F8) + 36);
  v42 = v65;
  *v41 = v64;
  *(v41 + 16) = v42;
  *(v41 + 32) = v66;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C40, &qword_26BC14600);
  *(v40 + *(v43 + 52)) = v39;
  *(v40 + *(v43 + 56)) = 256;
  v44 = sub_26BC1378C();
  v46 = v45;
  sub_26BC04CA8(v6);
  v47 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C48, &qword_26BC14608) + 36));
  *v47 = v44;
  v47[1] = v46;
  if (qword_280441A80 != -1)
  {
    swift_once();
  }

  v48 = qword_2804431C8;
  v49 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C50, &qword_26BC14610) + 36);
  *v49 = v48;
  __asm { FMOV            V0.2D, #1.0 }

  *(v49 + 8) = _Q0;
  *(v49 + 24) = 0x3FF0000000000000;
  v51 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C58, &qword_26BC14618) + 36));
  v32(&v51[*(v28 + 20)], v30, v31);
  *v51 = v63;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C60, &qword_26BC14620);
  *&v51[*(v52 + 36)] = 256;

  v53 = sub_26BC1378C();
  v55 = v54;
  v56 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C68, &qword_26BC14628) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C70, &qword_26BC14630) + 36));
  v32(&v57[*(v28 + 20)], v30, v31);
  result = *&v63;
  *v57 = v63;
  *&v57[*(v52 + 36)] = 256;
  return result;
}

uint64_t sub_26BC02C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StorageGaugeItemView(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v29[-1] - v13;
  v15 = *(a2 + 32) / *a3;
  if (v15 <= 0.001)
  {
    v27 = *(v12 + 56);

    return v27(a4, 1, 1, v8);
  }

  else
  {
    v28 = v12;
    sub_26BC1323C();
    v17 = fmax(v16 * v15 + -1.0, 1.0);
    v18 = a3[2];
    v19 = a3[3];
    *&v11[*(v8 + 36)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
    swift_storeEnumTagMultiPayload();
    v20 = *(a2 + 48);
    *(v11 + 2) = *(a2 + 32);
    *(v11 + 3) = v20;
    *(v11 + 4) = *(a2 + 64);
    v11[80] = *(a2 + 80);
    v21 = *(a2 + 16);
    *v11 = *a2;
    *(v11 + 1) = v21;
    *(v11 + 11) = a1;
    *(v11 + 12) = v17;
    *(v11 + 13) = v18;
    *(v11 + 14) = v19;
    v30 = 0;
    sub_26BC04D2C(v18, v19);
    sub_26BC01758(a2, v29);
    v22 = sub_26BC136CC();
    v23 = v29[1];
    v11[120] = v29[0];
    *(v11 + 16) = v23;
    v29[0] = 0x4035000000000000;
    sub_26BC00EEC(v22, v24, v25);
    sub_26BC131FC();
    sub_26BC04D3C(v11, v14, type metadata accessor for StorageGaugeItemView);
    sub_26BC04D3C(v14, a4, type metadata accessor for StorageGaugeItemView);
    return (*(v28 + 56))(a4, 0, 1, v8);
  }
}

double sub_26BC02F54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  sub_26BC04C40(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StorageGaugeView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26BC04D3C(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StorageGaugeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = sub_26BC04DA8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  result = *&v17;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_26BC030F4(uint64_t a1)
{
  v2 = sub_26BC131CC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26BC1333C();
}

uint64_t sub_26BC031BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_26BC03208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD0, &unk_26BC14590);
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

char *sub_26BC0330C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C80, &unk_26BC14670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BC03430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD8, &qword_26BC14880);
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

char *sub_26BC03534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE0, &qword_26BC145A0);
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

uint64_t sub_26BC03638@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26BC03668(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_26BC03688(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26BC03698(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07B9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BC0373C(v5);
  *a1 = v2;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BC0373C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BC13A2C();
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
        v5 = sub_26BC1388C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BC03924(v7, v8, a1, v4);
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
    return sub_26BC03834(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BC03834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      v10 = *(v8 - 32);
      v11 = *(v8 - 56) < *(v8 + 32);
      if (v9 != v10)
      {
        v11 = v10 < v9;
      }

      if (!v11)
      {
LABEL_4:
        ++a3;
        v5 += 88;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = v8 - 88;
      v18 = *(v8 + 32);
      v19 = *(v8 + 48);
      v20 = *(v8 + 64);
      v21 = *(v8 + 80);
      v16 = *v8;
      v17 = *(v8 + 16);
      v13 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v13;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v14 = *(v8 - 72);
      *v8 = *(v8 - 88);
      *(v8 + 16) = v14;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      *(v12 + 64) = v20;
      *(v12 + 80) = v21;
      v8 -= 88;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC03924(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26BC07750(v8);
      v8 = result;
    }

    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v8[16 * v85];
        v87 = *&v8[16 * v85 + 24];
        sub_26BC03F98((*a3 + 88 * v86), (*a3 + 88 * *&v8[16 * v85 + 16]), (*a3 + 88 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BC07750(v8);
        }

        if (v85 - 2 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v88 = &v8[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_26BC076C4(v85 - 1);
        v85 = *(v8 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3 + 88 * v7;
      v11 = *(v10 + 32);
      v12 = *(v10 + 56);
      v13 = 88 * v9;
      v14 = *a3 + 88 * v9;
      v15 = *(v14 + 56);
      v16 = *(v14 + 32) < v11;
      if (v12 != v15)
      {
        v16 = v15 < v12;
      }

      v17 = v9 + 2;
      v18 = (v14 + 120);
      while (v6 != v17)
      {
        v19 = v18[14];
        v20 = *v18;
        v21 = v18[3];
        v22 = v18[11];
        v18 += 11;
        v23 = v20 >= v22;
        if (v19 == v21)
        {
          v24 = v23;
        }

        else
        {
          v24 = v21 >= v19;
        }

        ++v17;
        if (v16 == v24)
        {
          v7 = v17 - 1;
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }
      }

      v7 = v6;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v7 < v9)
      {
        goto LABEL_124;
      }

      if (v9 < v7)
      {
        v5 = 88 * v7 - 88;
        v25 = v7;
        v89 = v9;
        do
        {
          if (v9 != --v25)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v26 = (v27 + v5);
            v97 = *(v27 + v13 + 32);
            v99 = *(v27 + v13 + 48);
            v101 = *(v27 + v13 + 64);
            v103 = *(v27 + v13 + 80);
            v93 = *(v27 + v13);
            v95 = *(v27 + v13 + 16);
            result = memmove((v27 + v13), (v27 + v5), 0x58uLL);
            *(v26 + 2) = v97;
            *(v26 + 3) = v99;
            *(v26 + 4) = v101;
            v26[80] = v103;
            *v26 = v93;
            *(v26 + 1) = v95;
          }

          ++v9;
          v5 -= 88;
          v13 += 88;
        }

        while (v9 < v25);
        v6 = a3[1];
        v9 = v89;
      }
    }

LABEL_25:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_123;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_125;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_44:
    if (v7 < v9)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_26BC03208((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v5];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v91;
    if (!*v91)
    {
      goto LABEL_132;
    }

    if (v5)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_64:
          if (v48)
          {
            goto LABEL_111;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_114;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_118;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_78:
        if (v66)
        {
          goto LABEL_113;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_85:
        v5 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v82 = *&v8[16 * v5 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26BC03F98((*a3 + 88 * v82), (*a3 + 88 * *&v8[16 * v44 + 32]), (*a3 + 88 * v83), v43);
        if (v4)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26BC07750(v8);
        }

        if (v5 >= *(v8 + 2))
        {
          goto LABEL_108;
        }

        v84 = &v8[16 * v5];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26BC076C4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_95;
    }
  }

  v28 = *a3;
  v29 = *a3 + 88 * v7;
  v30 = v9 - v7;
LABEL_35:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 56);
    v34 = *(v32 - 32);
    v35 = *(v32 - 56) < *(v32 + 32);
    if (v33 != v34)
    {
      v35 = v34 < v33;
    }

    if (!v35)
    {
LABEL_34:
      ++v7;
      v29 += 88;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_35;
      }

      v7 = v6;
      goto LABEL_44;
    }

    if (!v28)
    {
      break;
    }

    v36 = v32 - 88;
    v98 = *(v32 + 32);
    v100 = *(v32 + 48);
    v102 = *(v32 + 64);
    v104 = *(v32 + 80);
    v94 = *v32;
    v96 = *(v32 + 16);
    v37 = *(v32 - 40);
    *(v32 + 32) = *(v32 - 56);
    *(v32 + 48) = v37;
    *(v32 + 64) = *(v32 - 24);
    *(v32 + 80) = *(v32 - 8);
    v38 = *(v32 - 72);
    *v32 = *(v32 - 88);
    *(v32 + 16) = v38;
    *(v36 + 32) = v98;
    *(v36 + 48) = v100;
    *(v36 + 64) = v102;
    *(v36 + 80) = v104;
    v32 -= 88;
    *v36 = v94;
    *(v36 + 16) = v96;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_34;
    }
  }

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
  return result;
}

uint64_t sub_26BC03F98(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    v12 = 88 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      v14 = *(v6 + 7);
      v15 = *(v4 + 7);
      v16 = *(v4 + 4) < *(v6 + 4);
      if (v14 != v15)
      {
        v16 = v15 < v14;
      }

      if (!v16)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 88;
      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 88;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_37;
      }
    }

    v17 = v4;
    v18 = v7 == v4;
    v4 += 88;
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_14:
    memmove(v7, v17, 0x58uLL);
    goto LABEL_15;
  }

  v19 = 88 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 88 && v6 > v7)
  {
    do
    {
      v5 -= 88;
      while (1)
      {
        v20 = v5 + 88;
        v21 = *(v13 - 4);
        v22 = *(v6 - 4);
        v23 = *(v6 - 7) < *(v13 - 7);
        if (v21 != v22)
        {
          v23 = v22 < v21;
        }

        if (v23)
        {
          break;
        }

        v24 = (v13 - 88);
        if (v20 != v13)
        {
          memmove(v5, v13 - 88, 0x58uLL);
        }

        v5 -= 88;
        v13 -= 88;
        if (v24 <= v4)
        {
          v13 = v24;
          goto LABEL_37;
        }
      }

      v25 = v6 - 88;
      if (v20 != v6)
      {
        memmove(v5, v6 - 88, 0x58uLL);
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 88;
    }

    while (v25 > v7);
    v6 = v25;
  }

LABEL_37:
  v26 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_26BC04284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC04354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BC04404(uint64_t a1)
{
  sub_26BC044B0();
  if (v1 <= 0x3F)
  {
    sub_26BC04500(319);
    if (v2 <= 0x3F)
    {
      sub_26BC00E90(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BC044B0()
{
  if (!qword_280441B98)
  {
    v0 = sub_26BC138AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280441B98);
    }
  }
}

void sub_26BC04500(uint64_t a1)
{
  if (!qword_280441BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BA8, &qword_26BC14578);
    v1 = sub_26BC1393C();
    if (!v2)
    {
      atomic_store(v1, &qword_280441BA0);
    }
  }
}

unint64_t sub_26BC04568()
{
  result = qword_280441BB0;
  if (!qword_280441BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BB8, &qword_26BC14580);
    sub_26BC04AC8(&qword_280441BC0, &qword_280441BC8, &qword_26BC14588, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441BB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for StorageGaugeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 16))
  {
  }

  v5 = *(v1 + 32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_26BC0472C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StorageGaugeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26BC0259C(a1, v6, a2);
}

uint64_t sub_26BC047AC()
{
  v1 = type metadata accessor for StorageGaugeView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_26BC1324C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;

  if (*(v0 + v3 + 16))
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;
  v11 = *(v1 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_26BC04940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for StorageGaugeView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_26BC1324C();

  return sub_26BC02C9C(a1, a2, (v3 + v8), a3);
}

uint64_t sub_26BC04A2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BC04A64(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 7);
  v7[2] = *(a1 + 5);
  v7[3] = v4;
  v7[4] = *(a1 + 9);
  v8 = *(a1 + 88);
  v5 = *(a1 + 3);
  v7[0] = *(a1 + 1);
  v7[1] = v5;
  return v2(v3, v7);
}

uint64_t sub_26BC04AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BC04B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441C08;
  if (!qword_280441C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C08);
  }

  return result;
}

unint64_t sub_26BC04B64()
{
  result = qword_280441C10;
  if (!qword_280441C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441BF8, &qword_26BC145D8);
    sub_26BC04BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C10);
  }

  return result;
}

unint64_t sub_26BC04BE8()
{
  result = qword_280441C18;
  if (!qword_280441C18)
  {
    type metadata accessor for StorageGaugeItemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C18);
  }

  return result;
}

uint64_t sub_26BC04C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BC04CA8(uint64_t a1)
{
  v2 = sub_26BC1330C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC04D2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26BC04D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BC04DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_26BC04E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BC04E9C(uint64_t a1@<X8>)
{
  v3 = sub_26BC133BC();
  sub_26BC04F54(v1, v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v10[2];
  *&v9[55] = v10[3];
  v4 = sub_26BC1343C();
  sub_26BC131AC();
  *(a1 + 33) = *&v9[16];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = 0;
}

uint64_t sub_26BC04F54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41[-v5];
  v7 = sub_26BC134BC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[3];
  v13 = a1[4];
  v47 = a1[2];
  v48 = v12;
  sub_26BC017B4(v9, v14, v15);

  v16 = sub_26BC1351C();
  v43 = v17;
  v44 = v16;
  v42 = v18;
  v45 = v19;
  v20 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v20 setCountStyle_];
  v21 = [v20 stringFromByteCount_];
  v22 = sub_26BC1380C();
  v24 = v23;

  v47 = v22;
  v48 = v24;
  v25 = sub_26BC1351C();
  v27 = v26;
  LOBYTE(v22) = v28;
  (*(v8 + 104))(v11, *MEMORY[0x277CE0AB0], v7);
  v29 = sub_26BC1348C();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  sub_26BC1349C();
  sub_26BC052F0(v6);
  (*(v8 + 8))(v11, v7);
  v30 = sub_26BC1350C();
  v32 = v31;
  LOBYTE(v11) = v33;
  v35 = v34;

  sub_26BC01808(v25, v27, v22 & 1);

  v36 = v42 & 1;
  v46 = v42 & 1;
  LOBYTE(v47) = v42 & 1;
  v49 = v11 & 1;
  v38 = v43;
  v37 = v44;
  *a2 = v44;
  *(a2 + 8) = v38;
  *(a2 + 16) = v36;
  *(a2 + 24) = v45;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v11 & 1;
  *(a2 + 56) = v35;
  v39 = v37;
  sub_26BC018E4(v37, v38, v36);

  sub_26BC018E4(v30, v32, v11 & 1);

  sub_26BC01808(v30, v32, v11 & 1);

  sub_26BC01808(v39, v38, v46);
}

uint64_t sub_26BC052F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B50, &qword_26BC14740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BC0535C()
{
  result = qword_280441C88;
  if (!qword_280441C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441C90, &qword_26BC14748);
    sub_26BC053E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C88);
  }

  return result;
}

unint64_t sub_26BC053E8()
{
  result = qword_280441C98;
  if (!qword_280441C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441CA0, &unk_26BC14750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441C98);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StorageGaugeLegendLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StorageGaugeLegendLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_26BC054C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441CA8;
  if (!qword_280441CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CA8);
  }

  return result;
}

void *sub_26BC05518(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v12 = sub_26BC1328C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC8, &qword_26BC14898);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = sub_26BC1329C();
  sub_26BC063D0();
  sub_26BC138CC();
  result = sub_26BC138DC();
  if (v40[0] != v41 && (a2 & 1) == 0)
  {
    v21 = *&a1;
    (*(*(v19 - 8) + 16))(v18, a6, v19);
    v22 = *(v16 + 36);
    sub_26BC138CC();
    sub_26BC138DC();
    if (*&v18[v22] == v40[0])
    {
      return sub_26BC07BD8(v18);
    }

    else
    {
      v23 = v13;
      v24 = (v13 + 16);
      v25 = (v23 + 8);
      v26 = 0.0;
      v27 = 1;
      v28 = 0.0;
      while (1)
      {
        v38 = v27;
        while (1)
        {
          v29 = sub_26BC138FC();
          (*v24)(v15);
          v29(v40, 0);
          sub_26BC138EC();
          sub_26BC132FC();
          LOBYTE(v40[0]) = v30 & 1;
          LOBYTE(v41) = v31 & 1;
          sub_26BC1325C();
          v33 = v32;
          v35 = v34;
          result = (*v25)(v15, v12);
          if (v28 < v35)
          {
            v28 = v35;
          }

          if (v26 + v33 >= v21)
          {
            break;
          }

          v26 = v26 + v33 + a3;
          sub_26BC138DC();
          if (*&v18[v22] == v40[0])
          {
            return sub_26BC07BD8(v18);
          }
        }

        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v36 <= v39)
        {
          v26 = v33 + a3;
          sub_26BC138DC();
          v27 = v36;
          if (*&v18[v22] != v40[0])
          {
            continue;
          }
        }

        return sub_26BC07BD8(v18);
      }

      __break(1u);
    }
  }

  return result;
}

void sub_26BC0589C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13)
{
  v104 = a13;
  v103 = a1;
  v23 = sub_26BC1328C();
  v105 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v97 - v27;
  sub_26BC1329C();
  sub_26BC063D0();
  sub_26BC138CC();
  sub_26BC138DC();
  if (v115[0] != v114)
  {
    v99 = a2;
    v112 = v23;
    v116.origin.x = a6;
    v116.origin.y = a7;
    v116.size.width = a8;
    v116.size.height = a9;
    MinX = CGRectGetMinX(v116);
    v117.origin.x = a6;
    v117.origin.y = a7;
    v117.size.width = a8;
    v117.size.height = a9;
    Width = CGRectGetWidth(v117);
    v118.origin.x = a6;
    v118.origin.y = a7;
    v102 = a8;
    v118.size.width = a8;
    v118.size.height = a9;
    CGRectGetMinY(v118);
    sub_26BC138CC();
    sub_26BC138DC();
    v31 = v114;
    v32 = v115[0];
    if (v114 < v115[0])
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v98 = a4;
    if (v115[0] == v114)
    {
      v33 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v115[0] >= v114)
      {
LABEL_64:
        __break(1u);
LABEL_65:

        __break(1u);
        return;
      }

      v64 = (v105 + 8);
      v33 = MEMORY[0x277D84F90];
      do
      {
        sub_26BC132AC();
        sub_26BC1327C();
        v66 = v65;
        (*v64)(v28, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_26BC03534(0, *(v33 + 2) + 1, 1, v33);
        }

        v68 = *(v33 + 2);
        v67 = *(v33 + 3);
        if (v68 >= v67 >> 1)
        {
          v33 = sub_26BC03534((v67 > 1), v68 + 1, 1, v33);
        }

        v69 = &v33[16 * v68];
        *(v69 + 5) = v32;
        *(v33 + 2) = v68 + 1;
        *(v69 + 4) = v66;
        ++v32;
      }

      while (v31 != v32);
    }

    v111 = a3;
    v115[0] = v33;

    v28 = 0;
    sub_26BC0655C(v115);
    v100 = 0;
    v101 = a9;
    v34 = MinX + Width;

    v35 = v115[0];
    v36 = *(v115[0] + 2);
    v113 = a5;
    v110 = v36;
    if (v36 != 0.0)
    {
      v37 = 0;
      v106 = v115[0] + 32;
      v109 = (v105 + 8);
      v97 = v115[0] + 56;
      v38 = MEMORY[0x277D84F90];
      v107 = 1;
      v39 = MinX;
      v40 = MEMORY[0x277D84F90];
      while (1)
      {
        v108 = v38;
        v41 = v40;
        v42 = v107 + 1;
        v43 = __OFADD__(v107, 1);
        if (v37 >= *(v35 + 2))
        {
          break;
        }

        v28 = v35;
        v44 = *&v106[16 * v37 + 8];
        v45 = v37 + 1;
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v115[0]) = v46 & 1;
        LOBYTE(v114) = v47 & 1;
        sub_26BC1325C();
        v49 = v48;
        v50 = *v109;
        (*v109)(v26, v112);
        v51 = v49 + a10;
        if (v34 <= v39 + v51)
        {
          if (v43)
          {
            goto LABEL_62;
          }

          if (v42 > v104)
          {
            v40 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_26BC03430(0, *(v41 + 2) + 1, 1, v41);
            }

            v53 = *(v40 + 2);
            v52 = *(v40 + 3);
            if (v53 >= v52 >> 1)
            {
              v40 = sub_26BC03430((v52 > 1), v53 + 1, 1, v40);
            }

            *(v40 + 2) = v53 + 1;
            *&v40[8 * v53 + 32] = v44;
            if (v45 == *&v110)
            {
              v38 = v108;
              goto LABEL_46;
            }

            v54 = &v97[16 * v37];
            v55 = v28;
            while (v45 < *(v55 + 2))
            {
              v44 = *v54;
              ++v45;
              sub_26BC132AC();
              sub_26BC132FC();
              LOBYTE(v115[0]) = v56 & 1;
              LOBYTE(v114) = v57 & 1;
              sub_26BC1325C();
              v59 = v58;
              v50(v26, v112);
              v51 = v59 + a10;
              if (v34 > v51 + 1.79769313e308)
              {
                v39 = 1.79769313e308;
                v37 = v45;
                goto LABEL_31;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_26BC03430(0, *(v40 + 2) + 1, 1, v40);
              }

              v61 = *(v40 + 2);
              v60 = *(v40 + 3);
              if (v61 >= v60 >> 1)
              {
                v40 = sub_26BC03430((v60 > 1), v61 + 1, 1, v40);
              }

              *(v40 + 2) = v61 + 1;
              *&v40[8 * v61 + 32] = v44;
              v54 += 16;
              v55 = v28;
              if (*&v110 == v45)
              {
                v38 = v108;
                goto LABEL_46;
              }
            }

            break;
          }

          ++v37;
          v39 = MinX;
          v107 = v42;
          v40 = v41;
        }

        else
        {
          ++v37;
          v40 = v41;
        }

LABEL_31:
        v38 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_26BC03430(0, *(v38 + 2) + 1, 1, v38);
        }

        v63 = *(v38 + 2);
        v62 = *(v38 + 3);
        if (v63 >= v62 >> 1)
        {
          v38 = sub_26BC03430((v62 > 1), v63 + 1, 1, v38);
        }

        *(v38 + 2) = v63 + 1;
        *&v38[8 * v63 + 32] = v44;
        v39 = v51 + v39;
        v35 = v28;
        if (v37 == *&v110)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v38 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
LABEL_46:
    v70 = v34;
    v109 = v40;
    v71 = a10;
    v72 = MinX;

    v119.origin.x = a6;
    v119.origin.y = a7;
    v119.size.width = v102;
    v119.size.height = v101;
    MinY = CGRectGetMinY(v119);
    v115[0] = v38;

    v28 = v100;
    sub_26BC06428(v115);
    if (v28)
    {
      goto LABEL_65;
    }

    v108 = v115[0];
    v74 = *(v115[0] + 2);
    v75 = v112;
    v110 = v70;
    if (v74)
    {
      v76 = a11;
      v77 = v108 + 32;
      v78 = (v105 + 8);
      v79 = MinY + a11;
      v80 = v72;
      do
      {
        v77 += 8;
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v115[0]) = v81 & 1;
        LOBYTE(v114) = v82 & 1;
        sub_26BC1325C();
        v83 = *v78;
        (*v78)(v26, v75);
        sub_26BC132AC();
        sub_26BC132FC();
        LOBYTE(v115[0]) = v84 & 1;
        LOBYTE(v114) = v85 & 1;
        sub_26BC1325C();
        v87 = v86;
        v89 = v88;
        v83(v26, v75);
        v90 = v79 + v89 + v76;
        if (v110 > v80 + v87)
        {
          v91 = v80;
        }

        else
        {
          v91 = v72;
        }

        if (v110 <= v80 + v87)
        {
          v79 = v90;
        }

        sub_26BC132AC();
        sub_26BC137AC();
        LOBYTE(v115[0]) = 0;
        LOBYTE(v114) = 0;
        sub_26BC1326C();
        v83(v26, v75);
        v80 = v87 + v71 + v91;
        --v74;
      }

      while (v74);
    }

    v92 = *(v109 + 2);
    if (v92)
    {
      v93 = v109 + 32;
      v94 = (v105 + 8);
      v95 = v99 & 1;
      v96 = v98 & 1;
      do
      {
        v93 += 8;
        sub_26BC132AC();
        sub_26BC137AC();
        LOBYTE(v115[0]) = v95;
        LOBYTE(v114) = v96;
        sub_26BC1326C();
        (*v94)(v26, v75);
        --v92;
      }

      while (v92);
    }
  }
}

uint64_t (*sub_26BC062A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_26BC1318C();
  return sub_26BC0632C;
}

void sub_26BC0632C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_26BC0637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441CB0;
  if (!qword_280441CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CB0);
  }

  return result;
}

unint64_t sub_26BC063D0()
{
  result = qword_280441CB8;
  if (!qword_280441CB8)
  {
    sub_26BC1329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CB8);
  }

  return result;
}

uint64_t sub_26BC06428(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07BB0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26BC13A2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26BC1388C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26BC06768(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26BC0655C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26BC07BC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26BC065C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26BC065C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26BC13A2C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC0, &unk_26BC14888);
        v5 = sub_26BC1388C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BC06CB4(v7, v8, a1, v4);
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
    return sub_26BC066D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BC066D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = v9 < *(v11 + 8);
      if (v8 != *v11)
      {
        v12 = *v11 < v8;
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC06768(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26BC07750(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26BC0728C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26BC03208((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26BC0728C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_26BC06CB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_26BC07750(v10);
      v10 = result;
    }

    v88 = *(v10 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = *&v10[16 * v88];
        v90 = *&v10[16 * v88 + 24];
        sub_26BC07480((*a3 + 16 * v89), (*a3 + 16 * *&v10[16 * v88 + 16]), (*a3 + 16 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BC07750(v10);
        }

        if (v88 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v91 = &v10[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_26BC076C4(v88 - 1);
        v88 = *(v10 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 16 * v9;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = 16 * v11;
      v16 = *a3 + 16 * v11;
      v17 = *&v14 < *(v16 + 8);
      if (v13 != *v16)
      {
        v17 = *v16 < v13;
      }

      v18 = v11 + 2;
      v19 = (v16 + 40);
      while (v7 != v18)
      {
        v20 = *(v19 - 1);
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v23 = *&v22 >= *&v14;
        v24 = v13 >= v20;
        if (v20 == v13)
        {
          v24 = v23;
        }

        ++v18;
        v14 = v21;
        v13 = v20;
        if (v17 == v24)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v25 = 0;
        v26 = 16 * v9;
        v27 = v11;
        do
        {
          if (v27 != v9 + v25 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v28 = (v32 + v15);
            v29 = v32 + v26;
            v30 = *v28;
            v31 = v28[1];
            *v28 = *(v29 - 16);
            *(v29 - 16) = v30;
            *(v29 - 8) = v31;
          }

          ++v27;
          --v25;
          v26 -= 16;
          v15 += 16;
        }

        while (v27 < v9 + v25);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BC03208(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v43 = *(v10 + 3);
    v44 = v5 + 1;
    if (v5 >= v43 >> 1)
    {
      result = sub_26BC03208((v43 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v44;
    v45 = &v10[16 * v5];
    *(v45 + 4) = v11;
    *(v45 + 5) = v9;
    v46 = *v93;
    if (!*v93)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v10 + 4);
          v49 = *(v10 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_63:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v10[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v10[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v74 = &v10[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_77:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v10[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_84:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v86 = *&v10[16 * v85 + 32];
        v5 = *&v10[16 * v47 + 40];
        sub_26BC07480((*a3 + 16 * v86), (*a3 + 16 * *&v10[16 * v47 + 32]), (*a3 + 16 * v5), v46);
        if (v4)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26BC07750(v10);
        }

        if (v85 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v10[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        result = sub_26BC076C4(v47);
        v44 = *(v10 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v10[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v10[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v10[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 16 * v9 - 16;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 16 * v9;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v38 < *(v40 + 8);
    if (v37 != *v40)
    {
      v41 = *v40 < v37;
    }

    if (!v41)
    {
LABEL_33:
      ++v9;
      v34 += 16;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    *(v40 + 16) = *v40;
    *v40 = v37;
    *(v40 + 8) = v38;
    v40 -= 16;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

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
  return result;
}

uint64_t sub_26BC0728C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_26BC07480(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 1) < *(v4 + 1);
      if (*v6 != *v4)
      {
        v17 = *v4 < *v6;
      }

      if (v17)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_26:
    v18 = v6 - 16;
    v5 -= 16;
    v19 = v14;
    do
    {
      v20 = *(v19 - 16);
      v19 -= 16;
      v21 = v5 + 16;
      v22 = *(v6 - 2);
      v23 = v22 < v20;
      v24 = *(v19 + 8) < *(v6 - 1);
      if (v20 != v22)
      {
        v24 = v23;
      }

      if (v24)
      {
        if (v21 != v6)
        {
          *v5 = *v18;
        }

        if (v14 <= v4 || (v6 -= 16, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v21 != v14)
      {
        *v5 = *v19;
      }

      v5 -= 16;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_39:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v25 >> 4));
  }

  return 1;
}

uint64_t sub_26BC076C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BC07750(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26BC07764(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C80, &unk_26BC14670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BC07888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BD8, &qword_26BC14880);
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

char *sub_26BC0798C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BE0, &qword_26BC145A0);
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

char *sub_26BC07A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CD0, &qword_26BC148A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26BC07BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CC8, &qword_26BC14898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Int64.formattedSize.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v2 setCountStyle_];
  v3 = [v2 stringFromByteCount_];
  v4 = sub_26BC1380C();

  return v4;
}

Swift::Int64_optional __swiftcall Int64.init(_:)(Swift::Int64 a1)
{
  v1 = a1 >> 63;
  v2 = a1 & ~(a1 >> 63);
  result.is_nil = v1;
  result.value = v2;
  return result;
}

uint64_t Int64.roundedToGB.getter(uint64_t result)
{
  v1 = ceil(result / 1000000000.0) * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Int64.optionalSize.getter(uint64_t result)
{
  if (result == 0x8000000000000000)
  {
    return 0;
  }

  return result;
}

uint64_t Array<A>.total.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  while (1)
  {
    v5 = *v4++;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC07DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v56 = MEMORY[0x277D84F90];
    sub_26BC0F2F0(0, v1, 0);
    v4 = 0;
    v5 = (a1 + 32);
    v2 = v56;
    v25 = v1 - 1;
    while (1)
    {
      v6 = v5[1];
      v36 = v5[2];
      v7 = v5[4];
      v8 = v5[2];
      v37 = v5[3];
      v38 = v7;
      v39 = *(v5 + 80);
      v54 = v7;
      v9 = *v5;
      v52 = v36;
      v53 = v37;
      v50 = v9;
      v11 = *v5;
      v10 = v5[1];
      v35[0] = v9;
      v35[1] = v10;
      v55 = v39;
      v51 = v10;
      v41 = *(v5 + 80);
      v12 = v5[4];
      v40[3] = v37;
      v40[4] = v12;
      v40[1] = v6;
      v40[2] = v8;
      v40[0] = v11;
      v48 = v41;
      v45 = v8;
      v46 = v37;
      v47 = v12;
      v44 = v6;
      v43 = v11;
      v42 = v4;
      v32 = v4;
      v49 = v4;
      sub_26BC01758(v35, &v33);
      sub_26BC01758(v40, &v33);
      sub_26BC08A8C(&v49);
      v13 = *(&v47 + 1) ? *(&v47 + 1) : sub_26BC01ACC(v42);
      v14 = *(&v43 + 1);
      v15 = *(&v44 + 1);
      v28 = v44;
      v29 = v43;
      v27 = v45;
      v31 = v48;
      v16 = v46;
      v26 = BYTE1(v46);
      v30 = *(&v46 + 1);
      v17 = v47;
      if (v46)
      {
        v18 = v13;
        v19 = qword_280441A70;

        if (v19 != -1)
        {
          swift_once();
        }

        v13 = qword_2804431B8;
      }

      else
      {

        v18 = v13;
      }

      sub_26BC08A8C(&v42);
      v56 = v2;
      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26BC0F2F0((v20 > 1), v21 + 1, 1);
        v2 = v56;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 88 * v21;
      *(v22 + 32) = v29;
      *(v22 + 40) = v14;
      *(v22 + 48) = v28;
      *(v22 + 56) = v15;
      *(v22 + 64) = v27;
      *(v22 + 72) = v13;
      *(v22 + 80) = v16;
      *(v22 + 81) = v26;
      v23 = v34;
      *(v22 + 82) = v33;
      *(v22 + 86) = v23;
      *(v22 + 88) = v30;
      *(v22 + 96) = v17;
      *(v22 + 104) = v18;
      *(v22 + 112) = v31;
      if (v25 == v32)
      {
        break;
      }

      v5 = (v5 + 88);
      v4 = v32 + 1;
    }
  }

  return v2;
}

uint64_t GaugeCategory.init(id:localizedName:size:color:fillType:isSelectable:showSizeOverlay:sortOrderPriority:displayOrderPriority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12)
{
  if (a6)
  {
    v21 = a6;
  }

  else
  {
    v23 = a5;
    v21 = sub_26BC1360C();
    a5 = v23;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v21;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = a11 & 1;
  *(a9 + 56) = a12;
  *(a9 + 64) = a10;
  *(a9 + 72) = a6;
  *(a9 + 80) = a8 & 1;
}

uint64_t StorageGaugeItemFillType.hashValue.getter(char a1)
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](a1 & 1);
  return sub_26BC13AAC();
}

uint64_t sub_26BC081C8()
{
  v1 = *v0;
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](v1);
  return sub_26BC13AAC();
}

uint64_t sub_26BC0823C(uint64_t a1)
{
  v2 = *v1;
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](v2);
  return sub_26BC13AAC();
}

uint64_t GaugeCategory.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GaugeCategory.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GaugeCategory.init(identifier:size:color:fillType:isSelectable:showSizeOverlay:sortOrderPriority:displayOrderPriority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v15 = a1;
  v17 = StorageCategoryIdentifier.rawValue.getter(a1);
  v19 = v18;
  v20 = StorageCategoryIdentifier.localizedName.getter(v15);
  v22 = v21;
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v23 = sub_26BC1360C();
  }

  *a8 = v17;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20;
  *(a8 + 24) = v22;
  *(a8 + 32) = a2;
  *(a8 + 40) = v23;
  *(a8 + 48) = a4 & 1;
  *(a8 + 49) = a6 & 1;
  *(a8 + 56) = a7;
  *(a8 + 64) = a9;
  *(a8 + 72) = a3;
  *(a8 + 80) = a5 & 1;
}

uint64_t static GaugeCategory.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26BC13A4C() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return MEMORY[0x2821333C8](v5, v6);
}

uint64_t GaugeCategory.hashValue.getter()
{
  sub_26BC13A7C();
  sub_26BC1381C();
  MEMORY[0x26D690AF0](*(v0 + 32));
  return sub_26BC13AAC();
}

uint64_t sub_26BC08520@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26BC0852C()
{
  v1 = *(v0 + 32);
  sub_26BC13A7C();
  sub_26BC1381C();
  MEMORY[0x26D690AF0](v1);
  return sub_26BC13AAC();
}

uint64_t sub_26BC08590(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_26BC1381C();
  return MEMORY[0x26D690AF0](v2);
}

uint64_t sub_26BC085C8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_26BC13A7C();
  sub_26BC1381C();
  MEMORY[0x26D690AF0](v2);
  return sub_26BC13AAC();
}

unint64_t sub_26BC0862C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441CD8;
  if (!qword_280441CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CD8);
  }

  return result;
}

unint64_t sub_26BC08690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441CE0;
  if (!qword_280441CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441CE0);
  }

  return result;
}

uint64_t sub_26BC086E4(uint64_t *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5 = a2[4];
  v4 = a2[5];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_26BC13A4C() & 1) == 0 || v3 != v5)
  {
    return 0;
  }

  return MEMORY[0x2821333C8](v2, v4);
}

uint64_t getEnumTagSinglePayload for StorageGaugeItemFillType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorageGaugeItemFillType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26BC088F0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (qword_280441AA0 != -1)
  {
    result = swift_once();
  }

  if (qword_280443200)
  {
    v6 = qword_280443200;
    v7 = sub_26BC137DC();
    v8 = sub_26BC137DC();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v10 = sub_26BC1380C();
    v12 = v11;

    if (qword_280441A70 != -1)
    {
      swift_once();
    }

    v13 = qword_2804431B8;

    v14 = _s9StorageUI11DeviceClassO7currentACvgZ_0();
    *a3 = 1162170950;
    *(a3 + 8) = 0xE400000000000000;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12;
    *(a3 + 32) = v4;
    *(a3 + 40) = v13;
    *(a3 + 48) = 0;
    *(a3 + 49) = a2 & 1;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = v13;
    *(a3 + 80) = v14 == 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BC08A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CE8, &qword_26BC14A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26BC08B20@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441CF0, &unk_26BC14B10);
  v3 = sub_26BC04AC8(&qword_280441CF8, &qword_280441CF0, &unk_26BC14B10, MEMORY[0x277CDF3A0]);
  sub_26BC08C10(v3, v4, v5);
  result = sub_26BC133CC();
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 10) = v9;
  return result;
}

unint64_t sub_26BC08C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441D00;
  if (!qword_280441D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D00);
  }

  return result;
}

unint64_t sub_26BC08C78()
{
  result = qword_280441D08;
  if (!qword_280441D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D10, &qword_26BC14B40);
    v3 = sub_26BC04AC8(&qword_280441CF8, &qword_280441CF0, &unk_26BC14B10, MEMORY[0x277CDF3A0]);
    sub_26BC08C10(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D08);
  }

  return result;
}

uint64_t sub_26BC08D4C(uint64_t *a1, double a2, double a3)
{
  v5 = sub_26BC132DC();
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (a2 != -3)
  {
    v11 = 0;
    v12 = (v7 + 8);
    do
    {
      sub_26BC134EC();
      sub_26BC134CC();
      sub_26BC134DC();
      v16[0] = *&v13[8];
      v16[1] = v14;
      v17 = v15;
      if (qword_280441A78 != -1)
      {
        swift_once();
      }

      ++v11;
      sub_26BC132CC();
      sub_26BC132BC();
      (*v12)(v9, v5);
      result = sub_26BC090D4(v16);
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t sub_26BC08F78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26BC1339C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE00F0]);
  sub_26BC1371C();
  if (qword_280441A70 != -1)
  {
    swift_once();
  }

  v5 = qword_2804431B8;
  v6 = sub_26BC1343C();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D18, &qword_26BC14B98) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
}

unint64_t sub_26BC0912C()
{
  result = qword_280441D20;
  if (!qword_280441D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D18, &qword_26BC14B98);
    sub_26BC04AC8(&qword_280441D28, &qword_280441D30, &qword_26BC14BA0, MEMORY[0x277CE10D0]);
    sub_26BC04AC8(&qword_280441D38, &qword_280441D40, &qword_26BC14BA8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D20);
  }

  return result;
}

uint64_t Logger.storageUI.unsafeMutableAddressor()
{
  if (qword_280441A90 != -1)
  {
    swift_once();
  }

  v0 = sub_26BC1317C();

  return __swift_project_value_buffer(v0, static Logger.storageUI);
}

uint64_t static Logger.storageUI.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280441A90 != -1)
  {
    swift_once();
  }

  v2 = sub_26BC1317C();
  v3 = __swift_project_value_buffer(v2, static Logger.storageUI);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26BC093DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26BC1317C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26BC1316C();
}

uint64_t StorageManagementFeature.hashValue.getter()
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

uint64_t sub_26BC094F8()
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

uint64_t sub_26BC09564(uint64_t a1)
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](0);
  return sub_26BC13AAC();
}

unint64_t sub_26BC095A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441D48;
  if (!qword_280441D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageManagementFeature(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for StorageManagementFeature(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t StorageCategoryIdentifier.rawValue.getter(char a1)
{
  result = 0x4C41435F4B534944;
  switch(a1)
  {
    case 1:
      result = 0x4552465F4B534944;
      break;
    case 2:
      result = 0x4553555F4B534944;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x4341425F4B534944;
      break;
    case 6:
      result = 0x48544F5F4B534944;
      break;
    case 7:
      result = 0x53494D5F4B534944;
      break;
    case 9:
      result = 0x746163696C707041;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
    case 20:
    case 21:
      result = 0x6C7070612E6D6F63;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t StorageCategoryIdentifier.localizedName.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_109;
    case 2:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_104;
    case 3:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_107;
    case 4:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_101;
    case 5:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_112;
    case 6:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_115;
    case 7:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_108;
    case 8:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_118;
    case 9:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_103;
    case 10:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_117;
    case 11:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_100;
    case 12:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_102;
    case 13:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_114;
    case 14:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_99;
    case 15:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_105;
    case 16:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
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
      goto LABEL_106;
    case 17:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_110;
    case 18:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_116;
    case 19:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_120;
    case 20:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_111;
    case 21:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_113;
    case 22:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_119;
    case 23:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (qword_280443200)
      {
        goto LABEL_97;
      }

      goto LABEL_121;
    default:
      if (qword_280441AA0 != -1)
      {
        swift_once();
      }

      if (!qword_280443200)
      {
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
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        JUMPOUT(0x26BC0A4C0);
      }

LABEL_97:
      v1 = qword_280443200;
      v2 = sub_26BC137DC();
      v3 = sub_26BC137DC();
      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = sub_26BC1380C();
      return v5;
  }
}

uint64_t StorageIdentifier.init(rawValue:)(uint64_t a1, uint64_t a2)
{

  v4 = _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0(a1, a2);
  if (v4 != 24)
  {

    return v4;
  }

  return a1;
}

uint64_t StorageIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    MEMORY[0x26D690AE0](1);

    return sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0, a2, a3);
    StorageCategoryIdentifier.rawValue.getter(v4);
    sub_26BC1381C();
  }
}

uint64_t StorageIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_26BC13A7C();
  if (a3)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v4);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

uint64_t sub_26BC0A718()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_26BC13A7C();
  if (v2)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v1);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

uint64_t sub_26BC0A7B8(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x26D690AE0](1);

    return sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v2);
    sub_26BC1381C();
  }
}

uint64_t sub_26BC0A868(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_26BC13A7C();
  if (v3)
  {
    MEMORY[0x26D690AE0](1);
    sub_26BC1381C();
  }

  else
  {
    MEMORY[0x26D690AE0](0);
    StorageCategoryIdentifier.rawValue.getter(v2);
    sub_26BC1381C();
  }

  return sub_26BC13AAC();
}

unint64_t sub_26BC0A910@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26BC0A940@<X0>(unint64_t *a1@<X8>)
{
  result = StorageCategoryIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26BC0A97C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = StorageCategoryIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == StorageCategoryIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26BC13A4C();
  }

  return v8 & 1;
}

uint64_t sub_26BC0AA04()
{
  v1 = *v0;
  sub_26BC13A7C();
  StorageCategoryIdentifier.rawValue.getter(v1);
  sub_26BC1381C();

  return sub_26BC13AAC();
}

uint64_t sub_26BC0AA68(uint64_t a1)
{
  StorageCategoryIdentifier.rawValue.getter(*v1);
  sub_26BC1381C();
}

uint64_t sub_26BC0AABC(uint64_t a1)
{
  v2 = *v1;
  sub_26BC13A7C();
  StorageCategoryIdentifier.rawValue.getter(v2);
  sub_26BC1381C();

  return sub_26BC13AAC();
}

uint64_t sub_26BC0AB1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_26BC13A4C();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = a4;
  v8 = StorageCategoryIdentifier.rawValue.getter(a1);
  v10 = v9;
  if (v8 == StorageCategoryIdentifier.rawValue.getter(v7) && v10 == v11)
  {

    return 1;
  }

  else
  {
    v12 = sub_26BC13A4C();

    return v12 & 1;
  }
}

unint64_t _s9StorageUI0A18CategoryIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BC13A5C();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26BC0AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441D50;
  if (!qword_280441D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D50);
  }

  return result;
}

unint64_t sub_26BC0ACBC()
{
  result = qword_280441D58;
  if (!qword_280441D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D60, &qword_26BC14D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D58);
  }

  return result;
}

unint64_t sub_26BC0AD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441D68;
  if (!qword_280441D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D68);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BC0AD98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26BC0ADE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageCategoryIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageCategoryIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Followup.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Followup.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Followup.bundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Followup.explanation.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t static Followup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26BC13A4C();
  }
}

uint64_t Followup.hashValue.getter()
{
  sub_26BC13A7C();
  sub_26BC1381C();
  return sub_26BC13AAC();
}

uint64_t sub_26BC0B0D4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26BC13A4C();
  }
}

uint64_t sub_26BC0B104()
{
  sub_26BC13A7C();
  sub_26BC1381C();
  return sub_26BC13AAC();
}

uint64_t sub_26BC0B158(uint64_t a1)
{
  sub_26BC13A7C();
  sub_26BC1381C();
  return sub_26BC13AAC();
}

unint64_t sub_26BC0B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441D70;
  if (!qword_280441D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D70);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BC0B20C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BC0B254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BC0B2B4()
{
  v0 = sub_26BC137DC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_280443200 = v1;
}

uint64_t StorageGaugeLegendView.init(capacity:categories:maxLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for StorageGaugeLegendView(0);
  sub_26BC00EEC(v8, v9, v10);
  sub_26BC131FC();
  result = sub_26BC131FC();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t type metadata accessor for StorageGaugeLegendView(uint64_t a1)
{
  result = qword_280441D80;
  if (!qword_280441D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StorageGaugeLegendView.body.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for StorageGaugeLegendView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1320C();
  v3 = *(v1 + 16);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D78, &qword_26BC14F88);
  return sub_26BC0B534(v1);
}

uint64_t sub_26BC0B534(uint64_t a1)
{
  v2 = type metadata accessor for StorageGaugeLegendView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v16 = *(a1 + 8);

  sub_26BC03698(&v16);
  v5 = sub_26BC07DA8(v16);

  sub_26BC0BF1C(v5);
  v7 = v6;

  v16 = v7;
  swift_getKeyPath();
  sub_26BC0C16C(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_26BC0C2F0(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26BC0C354;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441BF0, &qword_26BC145D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DC0, &qword_26BC15018);
  v11 = sub_26BC04AC8(&qword_280441C00, &qword_280441BF0, &qword_26BC145D0, MEMORY[0x277D83980]);
  sub_26BC04B10(v11, v12, v13);
  sub_26BC0BD88();
  return sub_26BC1377C();
}

uint64_t sub_26BC0B78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DD0, &qword_26BC15020);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  if ((*(a2 + 32) / *a3) <= 0.001)
  {
    v18 = *(v9 + 56);

    return v18(a4, 1, 1, v8);
  }

  else
  {
    v12 = *(a2 + 48);
    *(v11 + 2) = *(a2 + 32);
    *(v11 + 3) = v12;
    *(v11 + 4) = *(a2 + 64);
    v11[80] = *(a2 + 80);
    v13 = *(a2 + 16);
    *v11 = *a2;
    *(v11 + 1) = v13;
    *(v11 + 11) = a1;
    v20 = v9;
    type metadata accessor for StorageGaugeLegendItemView(0);
    v22 = 0x4020000000000000;
    v14 = sub_26BC01758(a2, v21);
    sub_26BC00EEC(v14, v15, v16);
    sub_26BC131FC();
    *&v11[*(v8 + 36)] = *(a2 + 64);
    sub_26BC0C414(v11, a4);
    return (*(v20 + 56))(a4, 0, 1, v8);
  }
}

uint64_t sub_26BC0B95C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1320C();
  v3 = *(v1 + 16);
  *a1 = v5;
  a1[1] = v5;
  a1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441D78, &qword_26BC14F88);
  return sub_26BC0B534(v1);
}

uint64_t sub_26BC0BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BC0BAFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BC0BBAC(uint64_t a1)
{
  sub_26BC044B0();
  if (v1 <= 0x3F)
  {
    sub_26BC00E90(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26BC0BC4C()
{
  result = qword_280441D90;
  if (!qword_280441D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441D78, &qword_26BC14F88);
    sub_26BC04AC8(&qword_280441D98, &qword_280441DA0, &qword_26BC15008, MEMORY[0x277CDF510]);
    sub_26BC0BD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441D90);
  }

  return result;
}

unint64_t sub_26BC0BD04()
{
  result = qword_280441DA8;
  if (!qword_280441DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DB0, &qword_26BC15010);
    sub_26BC0BD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DA8);
  }

  return result;
}

unint64_t sub_26BC0BD88()
{
  result = qword_280441DB8;
  if (!qword_280441DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DC0, &qword_26BC15018);
    sub_26BC0BE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DB8);
  }

  return result;
}

unint64_t sub_26BC0BE0C()
{
  result = qword_280441DC8;
  if (!qword_280441DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441DD0, &qword_26BC15020);
    sub_26BC0BEC4();
    sub_26BC04AC8(&qword_280441DE0, &qword_280441DE8, &qword_26BC15028, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DC8);
  }

  return result;
}

unint64_t sub_26BC0BEC4()
{
  result = qword_280441DD8;
  if (!qword_280441DD8)
  {
    type metadata accessor for StorageGaugeLegendItemView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441DD8);
  }

  return result;
}

void sub_26BC0BF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = a1 + 32;
    v27 = *(a1 + 16);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      v30 = *(v6 + 48);
      v31 = v9;
      v32 = *(v6 + 80);
      v10 = *(v6 + 16);
      v29[0] = *v6;
      v29[1] = v10;
      v29[2] = v8;
      v36 = v30;
      v37 = v9;
      v34 = v10;
      v35 = v8;
      v38 = v32;
      v33 = v29[0];
      if (v4)
      {
        sub_26BC01758(v29, v28);
        v2 = v7;
        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v7[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF0, &qword_26BC15058);
        v2 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v2) - 32) / 96;
        v2[2] = v14;
        v2[3] = 2 * v15;
        v16 = v7[3] >> 1;
        v17 = 12 * v16;
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        v5 = &v2[12 * v16 + 4];
        if (v7[2])
        {
          v19 = v2 < v7 || v2 + 4 >= &v7[v17 + 4];
          if (!v19 && v2 == v7)
          {
            sub_26BC01758(v29, v28);
          }

          else
          {
            sub_26BC01758(v29, v28);
            memmove(v2 + 4, v7 + 4, v17 * 8);
          }

          v7[2] = 0;

          v1 = v27;
          v11 = __OFSUB__(v18, 1);
          v4 = v18 - 1;
          if (v11)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          sub_26BC01758(v29, v28);

          v11 = __OFSUB__(v18, 1);
          v4 = v18 - 1;
          if (v11)
          {
            goto LABEL_30;
          }
        }
      }

      *v5 = v3;
      v20 = v35;
      v21 = v36;
      v22 = v37;
      *(v5 + 88) = v38;
      v23 = v33;
      *(v5 + 24) = v34;
      *(v5 + 8) = v23;
      *(v5 + 72) = v22;
      *(v5 + 56) = v21;
      *(v5 + 40) = v20;
      v5 += 96;
      v6 += 88;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v24 = v2[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v11 = __OFSUB__(v25, v4);
    v26 = v25 - v4;
    if (v11)
    {
      goto LABEL_32;
    }

    v2[2] = v26;
  }
}

uint64_t sub_26BC0C16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeLegendView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C1D0()
{
  v1 = (type metadata accessor for StorageGaugeLegendView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[10], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BC0C2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeLegendView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for StorageGaugeLegendView(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_26BC0B78C(a1, a2, v8, a3);
}

uint64_t sub_26BC0C3DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BC0C414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DD0, &qword_26BC15020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0C49C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF8, qword_26BC15080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26BC0C5EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441DF8, qword_26BC15080);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for StorageGaugeItemView(uint64_t a1)
{
  result = qword_280441E00;
  if (!qword_280441E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BC0C774(uint64_t a1)
{
  sub_26BC04500(319);
  if (v1 <= 0x3F)
  {
    sub_26BC0C850();
    if (v2 <= 0x3F)
    {
      sub_26BC0C8A0(319);
      if (v3 <= 0x3F)
      {
        sub_26BC00E90(319, v3, v4);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BC0C850()
{
  if (!qword_280441E10)
  {
    v0 = sub_26BC136FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280441E10);
    }
  }
}

void sub_26BC0C8A0(uint64_t a1)
{
  if (!qword_280441E18)
  {
    sub_26BC131CC();
    v1 = sub_26BC131DC();
    if (!v2)
    {
      atomic_store(v1, &qword_280441E18);
    }
  }
}

uint64_t sub_26BC0C914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1337C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StorageGaugeItemView(0);
  sub_26BC0187C(v1 + *(v10 + 36), v9, &qword_280441C78, &qword_26BC15140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26BC131CC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26BC1391C();
    v13 = sub_26BC133FC();
    sub_26BC1314C();

    sub_26BC1336C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26BC0CB1C()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26BC131CC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v14 = 1.0;
  v15[0] = 1.0;
  v12 = 1.0;
  v13 = 1.0;
  sub_26BC0E0B8();

  v7 = sub_26BC1392C();
  [v7 getRed:v15 green:&v14 blue:&v13 alpha:&v12];

  sub_26BC0C914(v6);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3D0], v0);
  LOBYTE(v7) = sub_26BC131BC();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  v9 = 1.0 / v12;
  if ((v7 & 1) == 0)
  {
    v9 = -v9;
  }

  if (v15[0] * 0.2 + v14 * 0.7 + v13 * 0.07 + v9 <= 0.5)
  {
    return sub_26BC1366C();
  }

  else
  {
    return sub_26BC1364C();
  }
}

double sub_26BC0CD40@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E20, &qword_26BC15110);
  MEMORY[0x28223BE20](v3);
  v5 = (&v25 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E28, &qword_26BC15118);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  *v5 = sub_26BC1378C();
  v5[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E30, &qword_26BC15120);
  sub_26BC0CFE0(v2, v5 + *(v10 + 44));
  v11 = v2[3];
  *&v27 = v2[2];
  *(&v27 + 1) = v11;
  v12 = sub_26BC0DBA8();
  sub_26BC017B4(v12, v13, v14);
  sub_26BC1357C();
  sub_26BC018F4(v5, &qword_280441E20, &qword_26BC15110);
  v15 = v2[4];
  v16 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v16 setCountStyle_];
  v17 = [v16 stringFromByteCount_];
  v18 = sub_26BC1380C();
  v20 = v19;

  *&v27 = v18;
  *(&v27 + 1) = v20;
  v21 = v26;
  sub_26BC132EC();

  sub_26BC018F4(v8, &qword_280441E28, &qword_26BC15118);
  type metadata accessor for StorageGaugeItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  sub_26BC1320C();
  sub_26BC1378C();
  sub_26BC1322C();
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E40, &qword_26BC15128) + 36));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  result = *&v29;
  v22[2] = v29;
  return result;
}

uint64_t sub_26BC0CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_26BC133DC();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = (v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for StorageGaugeItemView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441AC8, &qword_26BC15130);
  v64[1] = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v64 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E48, &qword_26BC15138) - 8;
  v11 = MEMORY[0x28223BE20](v70);
  v74 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = v64 - v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v94 = *(a1 + 32);
  v95 = v14;
  v16 = *(a1 + 48);
  v96 = *(a1 + 64);
  v17 = *(a1 + 16);
  v93[0] = *a1;
  v93[1] = v17;
  v89 = v94;
  v90 = v16;
  v91[0] = *(a1 + 64);
  v97 = *(a1 + 80);
  v66 = *(&v94 + 1);
  LODWORD(v67) = BYTE1(v14);
  LOBYTE(v91[1]) = *(a1 + 80);
  v87 = v93[0];
  v88 = v15;
  sub_26BC0DC0C(a1, v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_26BC0DC74(v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = sub_26BC01758(v93, &v81);
  sub_26BC00568(v20, v21, v22);
  v65 = v10;
  sub_26BC1355C();

  v98[2] = v89;
  v98[3] = v90;
  v98[4] = v91[0];
  v99 = v91[1];
  v98[0] = v87;
  v98[1] = v88;
  sub_26BC0DD38(v98);
  sub_26BC0DC0C(a1, v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_26BC0DC74(v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v18);
  v24 = &v10[*(v8 + 36)];
  *v24 = sub_26BC0DD8C;
  v24[1] = v23;
  v25 = *(a1 + 128);
  LOBYTE(v81) = *(a1 + 120);
  *(&v81 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E50, &qword_26BC15148);
  sub_26BC136EC();
  sub_26BC0DC0C(a1, v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_26BC0DC74(v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v18);
  v27 = sub_26BC1370C();
  v28 = v68;
  *v68 = v27;
  v30 = v71;
  v29 = v72;
  (*(v71 + 104))(v28, *MEMORY[0x277CDE248], v72);
  v63 = sub_26BC00468();
  sub_26BC00610(v63, v31, v32);
  v33 = v73;
  v34 = v65;
  sub_26BC1354C();

  (*(v30 + 8))(v28, v29);
  v35 = v34;
  v36 = v66;
  sub_26BC018F4(v35, &qword_280441AC8, &qword_26BC15130);
  v37 = sub_26BC1343C();
  v38 = v33;
  v39 = v33 + *(v70 + 44);
  *v39 = v36;
  *(v39 + 8) = v37;
  if (v67 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E68, &qword_26BC15160);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26BC15070;

    v41 = sub_26BC1340C();
    *(v40 + 32) = v41;
    v42 = sub_26BC1342C();
    *(v40 + 33) = v42;
    v43 = sub_26BC1341C();
    sub_26BC1341C();
    if (sub_26BC1341C() != v41)
    {
      v43 = sub_26BC1341C();
    }

    sub_26BC1341C();
    if (sub_26BC1341C() != v42)
    {
      v43 = sub_26BC1341C();
    }

    sub_26BC0D874(a1, &v76);
    v83 = v78;
    v84 = v79;
    v85[0] = v80[0];
    *(v85 + 9) = *(v80 + 9);
    v81 = v76;
    v82 = v77;
    *(v91 + 9) = *(v80 + 9);
    v89 = v78;
    v90 = v79;
    v91[0] = v80[0];
    v87 = v76;
    v88 = v77;
    sub_26BC0187C(&v81, &v75, &qword_280441E70, &qword_26BC15168);
    sub_26BC018F4(&v87, &qword_280441E70, &qword_26BC15168);
    v44 = *(&v81 + 1);
    v45 = v81;
    v47 = *(&v82 + 1);
    v46 = v82;
    v48 = v83;
    v67 = *(&v84 + 1);
    v68 = v84;
    v71 = *(&v85[0] + 1);
    v66 = *&v85[0];
    v72 = *(&v83 + 1);
    v70 = *&v85[1];
    v49 = v43;
    v50 = BYTE8(v85[1]);
  }

  else
  {

    v45 = 0;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v70 = 0;
    v50 = 0;
    v49 = 0;
  }

  v65 = v49;
  v51 = v74;
  sub_26BC0E048(v38, v74);
  v52 = v51;
  v53 = v69;
  sub_26BC0E048(v52, v69);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E58, &qword_26BC15150) + 48);
  *&v81 = v49;
  *(&v81 + 1) = v45;
  v55 = v45;
  *&v82 = v44;
  *(&v82 + 1) = v46;
  *&v83 = v47;
  *(&v83 + 1) = v48;
  v57 = v67;
  v56 = v68;
  *&v84 = v72;
  *(&v84 + 1) = v68;
  v58 = v66;
  *&v85[0] = v67;
  *(&v85[0] + 1) = v66;
  *&v85[1] = v71;
  *(&v85[1] + 1) = v70;
  v86 = v50;
  *(v54 + 96) = v50;
  v59 = v82;
  *v54 = v81;
  *(v54 + 16) = v59;
  v60 = v84;
  *(v54 + 32) = v83;
  *(v54 + 48) = v60;
  v61 = v85[1];
  *(v54 + 64) = v85[0];
  *(v54 + 80) = v61;
  sub_26BC0187C(&v81, &v87, &qword_280441E60, &qword_26BC15158);
  sub_26BC018F4(v73, &qword_280441E48, &qword_26BC15138);
  *&v87 = v65;
  *(&v87 + 1) = v55;
  *&v88 = v44;
  *(&v88 + 1) = v46;
  *&v89 = v47;
  *(&v89 + 1) = v48;
  *&v90 = v72;
  *(&v90 + 1) = v56;
  *&v91[0] = v57;
  *(&v91[0] + 1) = v58;
  *&v91[1] = v71;
  *(&v91[1] + 1) = v70;
  v92 = v50;
  sub_26BC018F4(&v87, &qword_280441E60, &qword_26BC15158);
  return sub_26BC018F4(v74, &qword_280441E48, &qword_26BC15138);
}

double sub_26BC0D76C(uint64_t result)
{
  v1 = *(result + 104);
  if (v1 && *(result + 80) == 1)
  {
    v2 = *(result + 112);
    v3 = *(result + 48);
    v6[2] = *(result + 32);
    v6[3] = v3;
    v6[4] = *(result + 64);
    v7 = *(result + 80);
    v4 = *(result + 16);
    v6[0] = *result;
    v6[1] = v4;

    v1(v6);

    return sub_26BC0E104(v1, v2);
  }

  return v5;
}

uint64_t sub_26BC0D804(uint64_t result, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E50, &qword_26BC15148);
    return sub_26BC136DC();
  }

  return v2;
}

uint64_t sub_26BC0D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v3 setCountStyle_];
  v4 = [v3 stringFromByteCount_];
  v5 = sub_26BC1380C();
  v7 = v6;

  *&v40 = v5;
  *(&v40 + 1) = v7;
  sub_26BC017B4(v8, v9, v10);
  v11 = sub_26BC1351C();
  v13 = v12;
  LOBYTE(v5) = v14;
  sub_26BC134AC();
  v15 = sub_26BC1350C();
  v17 = v16;
  v19 = v18;

  sub_26BC01808(v11, v13, v5 & 1);

  sub_26BC0CB1C();
  v20 = sub_26BC134FC();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_26BC01808(v15, v17, v19 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E78, &qword_26BC15170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BC15070;
  LOBYTE(v17) = sub_26BC1344C();
  *(inited + 32) = v17;
  v28 = sub_26BC1346C();
  *(inited + 33) = v28;
  v29 = sub_26BC1345C();
  sub_26BC1345C();
  if (sub_26BC1345C() != v17)
  {
    v29 = sub_26BC1345C();
  }

  sub_26BC1345C();
  if (sub_26BC1345C() != v28)
  {
    v29 = sub_26BC1345C();
  }

  v57 = v24 & 1;
  v54 = 1;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  LOBYTE(v38) = v24 & 1;
  *(&v38 + 1) = *v56;
  DWORD1(v38) = *&v56[3];
  *(&v38 + 1) = v26;
  v39[0] = v29;
  *&v39[4] = *&v55[3];
  *&v39[1] = *v55;
  memset(&v39[8], 0, 32);
  v39[40] = 1;
  *&v39[41] = 257;
  *(v43 + 11) = *&v39[27];
  v42 = *v39;
  v43[0] = *&v39[16];
  v40 = v37;
  v41 = v38;
  v36[80] = 1;
  v30 = v37;
  v31 = v38;
  v32 = v43[1];
  *(a2 + 48) = *&v39[16];
  *(a2 + 64) = v32;
  v33 = v42;
  *(a2 + 16) = v31;
  *(a2 + 32) = v33;
  *a2 = v30;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v44[0] = v20;
  v44[1] = v22;
  v45 = v24 & 1;
  *&v46[3] = *&v56[3];
  *v46 = *v56;
  v47 = v26;
  v48 = v29;
  *&v49[3] = *&v55[3];
  *v49 = *v55;
  v51 = 0u;
  v50 = 0u;
  v52 = 1;
  v53 = 257;
  sub_26BC0187C(&v37, v36, &qword_280441E80, &qword_26BC15178);
  return sub_26BC018F4(v44, &qword_280441E80, &qword_26BC15178);
}

unint64_t sub_26BC0DBA8()
{
  result = qword_280441E38;
  if (!qword_280441E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E20, &qword_26BC15110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E38);
  }

  return result;
}

uint64_t sub_26BC0DC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC0DC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageGaugeItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26BC0DCD8()
{
  v1 = *(type metadata accessor for StorageGaugeItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26BC0D76C(v2);
}

uint64_t sub_26BC0DD8C(uint64_t a1)
{
  v3 = *(type metadata accessor for StorageGaugeItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26BC0D804(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for StorageGaugeItemView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 104))
  {
  }

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441C78, &qword_26BC15140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26BC131CC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441B20, &qword_26BC143C0);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26BC0DF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StorageGaugeItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 32);
  v7 = *(v4 + 64);
  v13 = *(v4 + 48);
  v6 = v13;
  v14 = v7;
  v15 = *(v4 + 80);
  v9 = *(v4 + 16);
  v12[0] = *v4;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v5;
  *(a1 + 80) = v15;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_26BC01758(v12, v11);
}

uint64_t sub_26BC0E048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441E48, &qword_26BC15138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BC0E0B8()
{
  result = qword_280441E88;
  if (!qword_280441E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280441E88);
  }

  return result;
}

double sub_26BC0E104(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_26BC0E118()
{
  result = qword_280441E90;
  if (!qword_280441E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E40, &qword_26BC15128);
    sub_26BC0E1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E90);
  }

  return result;
}

unint64_t sub_26BC0E1A4()
{
  result = qword_280441E98;
  if (!qword_280441E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280441E28, &qword_26BC15118);
    sub_26BC0DBA8();
    sub_26BC0E230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441E98);
  }

  return result;
}

unint64_t sub_26BC0E230()
{
  result = qword_280441EA0;
  if (!qword_280441EA0)
  {
    sub_26BC133EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441EA0);
  }

  return result;
}

id sub_26BC0E290()
{
  type metadata accessor for FollowupMonitor();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277CFE500]) init];
  *(v0 + 16) = result;
  static FollowupMonitor.shared = v0;
  return result;
}

uint64_t *FollowupMonitor.shared.unsafeMutableAddressor()
{
  if (qword_280441AA8 != -1)
  {
    swift_once();
  }

  return &static FollowupMonitor.shared;
}

uint64_t static FollowupMonitor.shared.getter()
{
  if (qword_280441AA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26BC0E3B0()
{
  v1 = *(v0[23] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26BC0E4D0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EA8, &qword_26BC15188);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26BC0F090;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 pendingFollowUpItemsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26BC0E4D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_26BC0EB3C;
  }

  else
  {
    v2 = sub_26BC0E5E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26BC0E5E0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26BC0F18C(v4, v0 + 80);
      sub_26BC0F23C((v0 + 80), (v0 + 144));
      sub_26BC0F24C();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 176))
      {
        MEMORY[0x26D6908B0]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26BC1387C();
        }

        sub_26BC1389C();
        v5 = v57;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v58 = v2;
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v55 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = 0x800000026BC15980;
    while (1)
    {
      if (v55)
      {
        v11 = MEMORY[0x26D6909E0](v8, v5);
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_55;
        }

        v11 = *(v5 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v6 = sub_26BC139FC();
        goto LABEL_15;
      }

      v14 = [v11 uniqueIdentifier];
      if (v14)
      {
        v15 = v5;
        v16 = v14;
        v17 = v10;
        v18 = sub_26BC1380C();
        v20 = v19;

        v21 = v18;
        v10 = v17;
        if (v21 == 0xD000000000000027 && v17 == v20)
        {

LABEL_31:
          sub_26BC139AC();
          sub_26BC139CC();
          sub_26BC139DC();
          sub_26BC139BC();
          v5 = v15;
          goto LABEL_18;
        }

        v23 = sub_26BC13A4C();

        if (v23)
        {
          goto LABEL_31;
        }

        v5 = v15;
      }

      else
      {
      }

LABEL_18:
      ++v8;
      if (v13 == v6)
      {
        v24 = v58;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_35:

  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    v25 = sub_26BC139FC();
    if (v25)
    {
      goto LABEL_38;
    }

LABEL_60:

    v5 = MEMORY[0x277D84F90];
LABEL_61:
    v50 = *(v51 + 8);

    v50(v5);
    return;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_60;
  }

LABEL_38:
  v58 = v7;
  sub_26BC0F310(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v5 = v7;
    v53 = v24 & 0xC000000000000001;
    v52 = v25;
    while (!__OFADD__(v26, 1))
    {
      if (v53)
      {
        v27 = MEMORY[0x26D6909E0](v26, v24);
      }

      else
      {
        if (v26 >= *(v24 + 16))
        {
          goto LABEL_57;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = [v27 uniqueIdentifier];
      if (!v29)
      {
        goto LABEL_67;
      }

      v30 = v29;
      v31 = sub_26BC1380C();
      v33 = v32;

      v34 = [v28 notification];
      if (!v34)
      {
        goto LABEL_68;
      }

      v35 = v34;
      v54 = v33;
      v56 = v26 + 1;
      v36 = [v34 title];

      if (!v36)
      {
        goto LABEL_66;
      }

      v37 = v24;
      v38 = sub_26BC1380C();
      v40 = v39;

      v41 = [v28 notification];
      if (!v41)
      {
        goto LABEL_65;
      }

      v42 = v41;
      v43 = [v41 informativeText];

      if (!v43)
      {
        goto LABEL_69;
      }

      v44 = sub_26BC1380C();
      v46 = v45;

      v58 = v5;
      v48 = *(v5 + 16);
      v47 = *(v5 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_26BC0F310((v47 > 1), v48 + 1, 1);
      }

      *(v5 + 16) = v48 + 1;
      v49 = (v5 + (v48 << 6));
      v49[4] = v31;
      v49[5] = v54;
      v49[6] = v38;
      v49[7] = v40;
      v49[8] = 0xD000000000000015;
      v49[9] = 0x800000026BC15960;
      ++v26;
      v49[10] = v44;
      v49[11] = v46;
      v24 = v37;
      if (v56 == v52)
      {

        goto LABEL_61;
      }
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

void sub_26BC0EB3C()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v3 = *(MEMORY[0x277D84F90] + 16);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90] + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26BC0F18C(v4, v0 + 80);
      sub_26BC0F23C((v0 + 80), (v0 + 144));
      sub_26BC0F24C();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 176))
      {
        MEMORY[0x26D6908B0]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26BC1387C();
        }

        sub_26BC1389C();
        v5 = v57;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v58 = v2;
  if (v5 >> 62)
  {
    goto LABEL_55;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v7 = MEMORY[0x277D84F90];
  v53 = v0;
  if (v6)
  {
    v8 = 0;
    v55 = v5 & 0xC000000000000001;
    v0 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = 0x800000026BC15980;
    while (1)
    {
      if (v55)
      {
        v10 = MEMORY[0x26D6909E0](v8, v5);
      }

      else
      {
        if (v8 >= *(v0 + 16))
        {
          goto LABEL_52;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v6 = sub_26BC139FC();
        goto LABEL_12;
      }

      v13 = [v10 uniqueIdentifier];
      if (v13)
      {
        v14 = v5;
        v15 = v13;
        v16 = v9;
        v17 = sub_26BC1380C();
        v19 = v18;

        v20 = v17;
        v9 = v16;
        if (v20 == 0xD000000000000027 && v16 == v19)
        {

LABEL_28:
          sub_26BC139AC();
          sub_26BC139CC();
          sub_26BC139DC();
          sub_26BC139BC();
          v5 = v14;
          goto LABEL_15;
        }

        v22 = sub_26BC13A4C();

        if (v22)
        {
          goto LABEL_28;
        }

        v5 = v14;
      }

      else
      {
      }

LABEL_15:
      ++v8;
      if (v12 == v6)
      {
        v23 = v58;
        v0 = v53;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_32;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_32:

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_26BC139FC();
    if (v24)
    {
      goto LABEL_35;
    }

LABEL_57:

    v5 = MEMORY[0x277D84F90];
LABEL_58:
    v50 = *(v0 + 8);

    v50(v5);
    return;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    goto LABEL_57;
  }

LABEL_35:
  v58 = v7;
  sub_26BC0F310(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v5 = v58;
    v52 = v23 & 0xC000000000000001;
    v51 = v23;
    while (!__OFADD__(v25, 1))
    {
      if (v52)
      {
        v26 = v5;
        v27 = MEMORY[0x26D6909E0](v25, v23);
      }

      else
      {
        if (v25 >= *(v23 + 16))
        {
          goto LABEL_54;
        }

        v26 = v5;
        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 uniqueIdentifier];
      if (!v29)
      {
        goto LABEL_64;
      }

      v30 = v29;
      v31 = sub_26BC1380C();
      v33 = v32;

      v34 = [v28 notification];
      if (!v34)
      {
        goto LABEL_65;
      }

      v35 = v34;
      v54 = v33;
      v56 = v25 + 1;
      v36 = v24;
      v37 = [v34 title];

      if (!v37)
      {
        goto LABEL_63;
      }

      v38 = sub_26BC1380C();
      v40 = v39;

      v41 = [v28 notification];
      if (!v41)
      {
        goto LABEL_62;
      }

      v42 = v41;
      v43 = [v41 informativeText];

      if (!v43)
      {
        goto LABEL_66;
      }

      v44 = sub_26BC1380C();
      v46 = v45;

      v5 = v26;
      v58 = v26;
      v47 = *(v26 + 16);
      v48 = *(v5 + 24);
      if (v47 >= v48 >> 1)
      {
        sub_26BC0F310((v48 > 1), v47 + 1, 1);
        v5 = v58;
      }

      *(v5 + 16) = v47 + 1;
      v49 = (v5 + (v47 << 6));
      v0 = v53;
      v49[4] = v31;
      v49[5] = v54;
      v49[6] = v38;
      v49[7] = v40;
      v49[8] = 0xD000000000000015;
      v49[9] = 0x800000026BC15960;
      ++v25;
      v49[10] = v44;
      v49[11] = v46;
      v24 = v36;
      v23 = v51;
      if (v56 == v36)
      {

        goto LABEL_58;
      }
    }

    goto LABEL_53;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_26BC0F090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EB8, &qword_26BC151C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_26BC1386C();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26BC0F18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

_OWORD *sub_26BC0F23C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_26BC0F24C()
{
  result = qword_280441EB0;
  if (!qword_280441EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280441EB0);
  }

  return result;
}

uint64_t FollowupMonitor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_26BC0F2F0(char *a1, int64_t a2, char a3)
{
  result = sub_26BC07764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BC0F310(char *a1, int64_t a2, char a3)
{
  result = sub_26BC07A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t Date.lastUsedDateFormatted.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  [v0 setDoesRelativeDateFormatting_];
  [v0 setFormattingContext_];
  v1 = sub_26BC1312C();
  v2 = [v0 stringFromDate_];

  v3 = sub_26BC1380C();
  return v3;
}

uint64_t static Volume.defaultUserVolumePlaceholder.getter@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v1 = type metadata accessor for Volume(0);
  v98 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v91 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v95 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v91 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v97 = &v91 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v91 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v92 = &v91 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v91 - v17;
  v19 = sub_26BC1310C();
  v100 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - v22;
  sub_26BC130DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC8, &qword_26BC15200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BC151D0;
  v25 = *MEMORY[0x277CBE9F0];
  *(inited + 32) = *MEMORY[0x277CBE9F0];
  v26 = *MEMORY[0x277CBEA50];
  v27 = *MEMORY[0x277CBEA38];
  *(inited + 40) = *MEMORY[0x277CBEA50];
  *(inited + 48) = v27;
  v28 = v25;
  v29 = v26;
  v30 = v27;
  sub_26BC10CC0(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey();
  swift_arrayDestroy();
  v104 = v23;
  sub_26BC130CC();

  v31 = sub_26BC130BC();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 56))(v18, 0, 1, v31);
  v34 = STMGestaltTotalDiskCapacity(v33);
  v35 = v34;
  v102 = v1;
  if (v34)
  {
    v36 = [v34 integerValue];
  }

  else
  {
    v36 = 0;
  }

  v101 = v19;
  v105 = v18;
  sub_26BC10EB4(v18, v16);
  v37 = v32 + 48;
  v38 = *(v32 + 48);
  v39 = (v38)(v16, 1, v31);
  v93 = v32;
  if (v39 != 1)
  {
    v50 = sub_26BC130AC();
    v52 = v51;
    v53 = *(v32 + 8);
    v53(v16, v31);
    if (!v35 || (v52 & 1) != 0)
    {
      goto LABEL_6;
    }

    v54 = &v36[-v50];
    if (__OFSUB__(v36, v50))
    {
      __break(1u);
    }

    else
    {
      v55 = v92;
      sub_26BC10EB4(v105, v92);
      if ((v38)(v55, 1, v31) == 1)
      {
        sub_26BC10F24(v55);
        v56 = 0xE100000000000000;
        v57 = 47;
      }

      else
      {
        v37 = sub_26BC1308C();
        v56 = v66;
        v53(v55, v31);
        if (v56)
        {
          v57 = v37;
        }

        else
        {
          v57 = 47;
        }

        if (!v56)
        {
          v56 = 0xE100000000000000;
        }
      }

      v52 = v101;
      v38 = v102;
      v16 = v100;
      v67 = *(v100 + 2);
      v67(v96, v104, v101);
      v68 = ceil(v36 / 1000000000.0) * 1000000000.0;
      if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v68 > -9.22337204e18)
        {
          if (v68 < 9.22337204e18)
          {
            v37 = v68;
            v36 = v91;
            *&v91[*(v38 + 36)] = 0;
            v67(v36, v96, v52);
            v69 = &v36[*(v38 + 20)];
            *v69 = v57;
            v69[1] = v56;
            *&v36[*(v38 + 28)] = v37;
            *&v36[*(v38 + 32)] = v54;
            v36[*(v38 + 24)] = 1;
            if (!__OFSUB__(v37, v54))
            {
              if (((v37 - v54) & 0x8000000000000000) == 0)
              {
LABEL_33:
                v74 = *(v16 + 1);
                v74(v96, v52);
                sub_26BC10F24(v105);
                v74(v104, v52);
                v75 = v99;
                sub_26BC11034(v36, v99);
                v59 = v75;
                v58 = 0;
                return (*(v98 + 56))(v59, v58, 1, v38);
              }

              if (qword_280441A98 == -1)
              {
LABEL_30:
                v70 = sub_26BC1317C();
                __swift_project_value_buffer(v70, qword_2804431E8);
                v71 = sub_26BC1315C();
                v72 = sub_26BC1390C();
                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  *v73 = 134218240;
                  *(v73 + 4) = v54;
                  *(v73 + 12) = 2048;
                  *(v73 + 14) = v37;
                  _os_log_impl(&dword_26BBFE000, v71, v72, "availableSpace is negative - used: %lld - capacity: %lld", v73, 0x16u);
                  MEMORY[0x26D691130](v73, -1, -1);
                }

                goto LABEL_33;
              }

LABEL_49:
              swift_once();
              goto LABEL_30;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_26BC10F24(v16);
LABEL_6:
  if (qword_280441A98 != -1)
  {
    swift_once();
  }

  v40 = sub_26BC1317C();
  __swift_project_value_buffer(v40, qword_2804431E8);
  v41 = v105;
  v42 = v103;
  sub_26BC10EB4(v105, v103);
  v43 = v97;
  sub_26BC10EB4(v41, v97);
  v44 = sub_26BC1315C();
  v45 = sub_26BC1390C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v107[0] = v96;
    *v46 = 136315394;
    v47 = v94;
    sub_26BC10EB4(v42, v94);
    if ((v38)(v47, 1, v31) == 1)
    {
      sub_26BC10F24(v47);
      v48 = 0xE300000000000000;
      v49 = 7104878;
    }

    else
    {
      v60 = sub_26BC130AC();
      v62 = v61;
      v63 = (*(v93 + 8))(v47, v31);
      if (v62)
      {
        v48 = 0xE300000000000000;
        v49 = 7104878;
      }

      else
      {
        v106 = v60;
        sub_26BC10FE0(v63, v64, v65);
        v49 = sub_26BC1394C();
        v48 = v76;
      }

      v43 = v97;
    }

    sub_26BC10F24(v103);
    v77 = sub_26BC10654(v49, v48, v107);

    *(v46 + 4) = v77;
    *(v46 + 12) = 2080;
    v78 = v95;
    sub_26BC10EB4(v43, v95);
    if ((v38)(v78, 1, v31) == 1)
    {
      sub_26BC10F24(v78);
      v79 = 0xE300000000000000;
      v38 = v102;
    }

    else
    {
      v80 = sub_26BC1309C();
      v82 = v81;
      v83 = (*(v93 + 8))(v78, v31);
      v38 = v102;
      if ((v82 & 1) == 0)
      {
        v106 = v80;
        sub_26BC10F8C(v83, v84, v85);
        v86 = sub_26BC1394C();
        v79 = v87;
        goto LABEL_42;
      }

      v79 = 0xE300000000000000;
    }

    v86 = 7104878;
LABEL_42:
    sub_26BC10F24(v43);
    v88 = sub_26BC10654(v86, v79, v107);

    *(v46 + 14) = v88;
    _os_log_impl(&dword_26BBFE000, v44, v45, "Unable to retreive used size and capacity for the volume. Returned available %s, returned capacity %s", v46, 0x16u);
    v89 = v96;
    swift_arrayDestroy();
    MEMORY[0x26D691130](v89, -1, -1);
    MEMORY[0x26D691130](v46, -1, -1);

    sub_26BC10F24(v105);
    (*(v100 + 1))(v104, v101);
    v58 = 1;
    v59 = v99;
    return (*(v98 + 56))(v59, v58, 1, v38);
  }

  sub_26BC10F24(v43);
  sub_26BC10F24(v42);
  sub_26BC10F24(v41);
  (*(v100 + 1))(v104, v101);
  v58 = 1;
  v59 = v99;
  v38 = v102;
  return (*(v98 + 56))(v59, v58, 1, v38);
}

uint64_t Volume.init(mountURL:name:isUserVolume:capacity:used:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Volume(0);
  *(a7 + v14[9]) = 0;
  v15 = sub_26BC1310C();
  v23 = *(v15 - 8);
  (*(v23 + 16))(a7, a1, v15);
  v16 = (a7 + v14[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + v14[7]) = a5;
  *(a7 + v14[8]) = a6;
  *(a7 + v14[6]) = a4;
  if (__OFSUB__(a5, a6))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (((a5 - a6) & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  if (qword_280441A98 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v17 = sub_26BC1317C();
  __swift_project_value_buffer(v17, qword_2804431E8);
  v18 = sub_26BC1315C();
  v19 = sub_26BC1390C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    *(v20 + 4) = a6;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    _os_log_impl(&dword_26BBFE000, v18, v19, "availableSpace is negative - used: %lld - capacity: %lld", v20, 0x16u);
    MEMORY[0x26D691130](v20, -1, -1);
  }

LABEL_7:
  v21 = *(v23 + 8);

  return v21(a1, v15);
}

uint64_t Volume.mountURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1310C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Volume.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Volume(0) + 20));

  return v1;
}

uint64_t Volume.capacity.setter(uint64_t a1)
{
  result = type metadata accessor for Volume(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Volume.otherVolumesInContainer.setter(uint64_t a1)
{
  result = type metadata accessor for Volume(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

int *Volume.available.getter()
{
  result = type metadata accessor for Volume(0);
  v2 = *(v0 + result[7]);
  v3 = *(v0 + result[8]);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *(v0 + result[9]);
  result = (v5 - v6);
  if (__OFSUB__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Volume.description.getter()
{
  sub_26BC1397C();
  MEMORY[0x26D690880](0xD000000000000013, 0x800000026BC159E0);
  sub_26BC1310C();
  sub_26BC11098();
  v1 = sub_26BC13A3C();
  MEMORY[0x26D690880](v1);

  MEMORY[0x26D690880](0x203A656D616E202CLL, 0xE800000000000000);
  v2 = type metadata accessor for Volume(0);
  MEMORY[0x26D690880](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x26D690880](0x696361706163202CLL, 0xEC000000203A7974);
  v3 = sub_26BC13A3C();
  MEMORY[0x26D690880](v3);

  MEMORY[0x26D690880](0x203A64657375202CLL, 0xE800000000000000);
  v4 = sub_26BC13A3C();
  MEMORY[0x26D690880](v4);

  MEMORY[0x26D690880](0xD000000000000010, 0x800000026BC15A00);
  if (*(v0 + *(v2 + 24)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D690880](v5, v6);

  MEMORY[0x26D690880](0xD00000000000001BLL, 0x800000026BC15A20);
  v7 = sub_26BC13A3C();
  MEMORY[0x26D690880](v7);

  return 0;
}

uint64_t sub_26BC105D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BC130FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}