uint64_t sub_20D90F980(uint64_t a1, char *a2, uint64_t a3)
{
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = v59 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C810, &unk_20D97D080);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C0, &qword_20D980270);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = v59 - v8;
  v76 = sub_20D9727B8();
  v69 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v68 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v71 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = v59 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v14 = MEMORY[0x28223BE20](v65);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v59 - v20;
  v22 = sub_20D972628();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v78 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v59 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v59 - v29;
  v31 = a2;
  if ((sub_20D972548() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_20D972718();
  sub_20D972FF8();
  sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v63 = v30;
    v33 = v23;
    v34 = v23 + 16;
    v35 = *(v23 + 16);
    v59[1] = v34;
    v60 = v35;
    v35(v18, v28, v22);
    v36 = v65;
    v35(&v18[*(v65 + 12)], v31, v22);
    sub_20D7EB7E8(v18, v16, &unk_27C83C750, &unk_20D978DD0);
    v37 = *(v36 + 48);
    v59[0] = v33;
    v64 = v28;
    v38 = *(v33 + 32);
    v38(v21, v16, v22);
    v39 = *(v33 + 8);
    v39(&v16[v37], v22);
    sub_20D7EAF18(v18, v16, &unk_27C83C750, &unk_20D978DD0);
    v40 = *(v36 + 48);
    v41 = v67;
    v38(&v21[*(v67 + 36)], &v16[v40], v22);
    v62 = v33 + 8;
    v61 = v39;
    v39(v16, v22);
    v42 = v68;
    v43 = v69;
    v44 = v76;
    (*(v69 + 104))(v68, *MEMORY[0x277CC9998], v76);
    v65 = v21;
    v45 = v21;
    v46 = v70;
    sub_20D7EB7E8(v45, v70, &qword_27C839550, &qword_20D979C30);
    (*(v66 + 56))(v46, 0, 1, v41);
    v47 = v64;
    sub_20D972768();
    sub_20D7E3944(v46, &qword_27C83B0C0, &qword_20D980270);
    (*(v43 + 8))(v42, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
    v48 = v59[0];
    v49 = (*(v59[0] + 80) + 32) & ~*(v59[0] + 80);
    v77 = *(v59[0] + 72);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20D979110;
    v70 = v50;
    v76 = v49;
    v60(v50 + v49, v47, v22);
    (*(v73 + 16))(v71, v75, v74);
    swift_getOpaqueTypeConformance2();
    sub_20D9751D8();
    swift_getAssociatedConformanceWitness();
    v51 = v79;
    sub_20D975518();
    v52 = *(v48 + 48);
    v53 = v52(v51, 1, v22);
    v54 = MEMORY[0x277D84F90];
    if (v53 != 1)
    {
      v56 = v78;
      do
      {
        v38(v56, v51, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_20D8D4264(0, *(v54 + 2) + 1, 1, v54);
        }

        v58 = *(v54 + 2);
        v57 = *(v54 + 3);
        if (v58 >= v57 >> 1)
        {
          v54 = sub_20D8D4264((v57 > 1), v58 + 1, 1, v54);
        }

        *(v54 + 2) = v58 + 1;
        v56 = v78;
        v38(&v54[v76 + v58 * v77], v78, v22);
        v51 = v79;
        sub_20D975518();
      }

      while (v52(v51, 1, v22) != 1);
    }

    (*(v72 + 8))(v80, v81);
    v82 = v70;
    sub_20D95B0C8(v54);
    (*(v73 + 8))(v75, v74);
    sub_20D7E3944(v65, &qword_27C839550, &qword_20D979C30);
    v55 = v61;
    v61(v64, v22);
    v55(v63, v22);
    return v82;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_20D9102F0()
{
  result = qword_281125040;
  if (!qword_281125040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0D8, &unk_20D97E0D0);
    sub_20D910484();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0F0, &unk_20D97D0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0F8, &unk_20D97E0F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B100, &unk_20D97D0E0);
    sub_20D9738B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125040);
  }

  return result;
}

unint64_t sub_20D910484()
{
  result = qword_281125070;
  if (!qword_281125070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0E8, &unk_20D97E0E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0F0, &unk_20D97D0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0F8, &unk_20D97E0F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B100, &unk_20D97D0E0);
    sub_20D9738B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125070);
  }

  return result;
}

unint64_t sub_20D910610()
{
  result = qword_281124FA8;
  if (!qword_281124FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0E0, &unk_20D97D0C0);
    sub_20D9106B4(&qword_281124FB0, &qword_27C83B108, &unk_20D97E100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FA8);
  }

  return result;
}

uint64_t sub_20D9106B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_20D910724()
{
  result = qword_281125060;
  if (!qword_281125060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B110, &unk_20D97D0F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA8, &unk_20D97E110);
    sub_20D973978();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125060);
  }

  return result;
}

unint64_t sub_20D910828()
{
  result = qword_281125068;
  if (!qword_281125068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B118, &unk_20D97D100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B120, &unk_20D97E120);
    sub_20D973978();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125068);
  }

  return result;
}

uint64_t sub_20D91092C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D910994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D910A0C()
{
  result = qword_27C83B130;
  if (!qword_27C83B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AEE0, &qword_20D97CBD8);
    sub_20D910A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B130);
  }

  return result;
}

unint64_t sub_20D910A98()
{
  result = qword_27C83B138;
  if (!qword_27C83B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B140, qword_20D97D158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC30, &qword_20D97CA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AED0, &qword_20D97CBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC28, &qword_20D97CA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AEB0, &qword_20D97CBC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC20, &qword_20D97CA40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE68, &qword_20D97CBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC18, &qword_20D97CA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE60, &qword_20D97CB98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC10, &qword_20D97CA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE50, &qword_20D97CB90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC08, &qword_20D97CA28);
    sub_20D973868();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC00, &qword_20D97CA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A698, &qword_20D97CB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ABF8, &qword_20D97CA18);
    sub_20D972628();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ABF0, &qword_20D97CA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ABE8, &qword_20D97CA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ABE0, &qword_20D97CA00);
    sub_20D7EBC4C(&qword_27C83AE38, &qword_27C83ABE0, &qword_20D97CA00, MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D90AF8C(&qword_281124C38, &qword_27C83A698, &qword_20D97CB80);
    swift_getOpaqueTypeConformance2();
    sub_20D911038(&qword_27C83AE48, MEMORY[0x277CBB3E8], MEMORY[0x277CBB3E0]);
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_27C83AE58, &qword_27C83AE50, &qword_20D97CB90, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_20D90AF8C(&qword_281124C30, &qword_27C83AE60, &qword_20D97CB98);
    swift_getOpaqueTypeConformance2();
    sub_20D90AFFC();
    swift_getOpaqueTypeConformance2();
    sub_20D90B1EC();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_27C83AED8, &qword_27C83AED0, &qword_20D97CBD0, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    sub_20D911038(&qword_281126F38, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B138);
  }

  return result;
}

uint64_t sub_20D911038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D911084()
{
  result = qword_27C83B148;
  if (!qword_27C83B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B148);
  }

  return result;
}

uint64_t HistoricalUsageIntervalView.init(usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_20D9744B8();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for HistoricalUsageIntervalView(0);
  v12 = v11[5];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v13 = (a2 + v11[6]);
  if (qword_27C8385C8 != -1)
  {
    swift_once();
  }

  v49 = qword_27C840D10;
  type metadata accessor for HistoricalUsageIntervalModel(0);

  sub_20D974A38();
  v14 = *(&v53 + 1);
  v46 = *(&v53 + 1);
  v47 = v53;
  *v13 = v53;
  v13[1] = v14;
  v15 = sub_20D972628();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_20D7EB7E8(v10, v8, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D974A38();
  sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
  v16 = a2 + v11[8];
  LOBYTE(v49) = 1;
  sub_20D974A38();
  v17 = *(&v53 + 1);
  *v16 = v53;
  *(v16 + 8) = v17;
  v18 = a2 + v11[9];
  v49 = 0;
  LOBYTE(v50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B158, &qword_20D97D260);
  sub_20D974A38();
  v19 = BYTE8(v53);
  v20 = v54;
  *v18 = v53;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  v21 = a2 + v11[10];
  v49 = 0;
  LOBYTE(v50) = 1;
  sub_20D974A38();
  v22 = BYTE8(v53);
  v23 = v54;
  *v21 = v53;
  *(v21 + 8) = v22;
  *(v21 + 16) = v23;
  v24 = a2 + v11[11];
  type metadata accessor for CGSize(0);
  v49 = 0;
  v50 = 0;
  sub_20D974A38();
  v25 = v54;
  *v24 = v53;
  *(v24 + 16) = v25;
  *&v53 = 0x3FF0000000000000;
  (*(v44 + 104))(v43, *MEMORY[0x277CE0A68], v45);
  sub_20D7E6420();
  sub_20D973B68();
  v26 = (a2 + v11[13]);
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v27 = unk_27C839870;
  v63 = xmmword_27C839880;
  v64 = xmmword_27C839890;
  v28 = xmmword_27C839890;
  v65 = xmmword_27C8398A0;
  v29 = xmmword_27C839830;
  v30 = xmmword_27C839840;
  v59 = xmmword_27C839840;
  v60 = xmmword_27C839850;
  v31 = xmmword_27C839850;
  v32 = xmmword_27C839860;
  v61 = xmmword_27C839860;
  v62 = unk_27C839870;
  v33 = xmmword_27C8397F0;
  v34 = xmmword_27C839800;
  v55 = xmmword_27C839800;
  v56 = xmmword_27C839810;
  v35 = xmmword_27C839810;
  v36 = xmmword_27C839820;
  v57 = xmmword_27C839820;
  v58 = xmmword_27C839830;
  v37 = xmmword_27C8397E0;
  v53 = xmmword_27C8397E0;
  v54 = xmmword_27C8397F0;
  v26[10] = xmmword_27C839880;
  v26[11] = v28;
  v26[12] = xmmword_27C8398A0;
  v26[6] = v30;
  v26[7] = v31;
  v26[8] = v32;
  v26[9] = v27;
  v26[2] = v34;
  v26[3] = v35;
  v26[4] = v36;
  v26[5] = v29;
  *v26 = v37;
  v26[1] = v33;
  v38 = v48;
  sub_20D913AD0(v48, a2, type metadata accessor for HistoricalUsageSnapshot);
  v40 = v46;
  v39 = v47;
  v51 = v47;
  v52 = v46;
  sub_20D85D690(&v53, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B160, &qword_20D97D268);
  sub_20D974A48();
  v41 = *(v49 + 16);

  v49 = v39;
  v50 = v40;
  sub_20D974A48();
  if (v41)
  {
    sub_20D88C220(v38);
  }

  else
  {
    sub_20D88C8A0(v38);
  }

  return sub_20D913B38(v38, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t type metadata accessor for HistoricalUsageIntervalView(uint64_t a1)
{
  result = qword_27C83B1C0;
  if (!qword_27C83B1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D9116E4(_BYTE *a1, _BYTE *a2, __n128 a3)
{
  if (*a1)
  {
    v3 = 1684632135;
  }

  else
  {
    v3 = 1702125906;
  }

  if (*a2)
  {
    v4 = 1684632135;
  }

  else
  {
    v4 = 1702125906;
  }

  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20D9757C8();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_20D91175C()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

double sub_20D9117C4(uint64_t a1)
{
  sub_20D975158();

  return result;
}

uint64_t sub_20D911810()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

void sub_20D911874(char *a2@<X8>)
{
  v3 = sub_20D975788();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_20D9118D4(uint64_t *a1@<X8>)
{
  v2 = 1702125906;
  if (*v1)
  {
    v2 = 1684632135;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t HistoricalUsageIntervalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v249 = a1;
  v245 = type metadata accessor for FilterButtonsAndPickerView(0);
  v3 = MEMORY[0x28223BE20](v245);
  v250 = &v227 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v263 = (&v227 - v5);
  v242 = sub_20D9744B8();
  v240 = *(v242 - 1);
  MEMORY[0x28223BE20](v242);
  v241 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  MEMORY[0x28223BE20](v7 - 8);
  v243 = &v227 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  MEMORY[0x28223BE20](v9 - 8);
  v258 = &v227 - v10;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B168, &qword_20D97D280);
  MEMORY[0x28223BE20](v260);
  v244 = &v227 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B170, &qword_20D97D288);
  v247 = *(v12 - 8);
  v248 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v246 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v271 = &v227 - v15;
  v16 = type metadata accessor for HistoricalUsageIntervalView(0);
  v252 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v251 = &v227 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v232 = &v227 - v20;
  v253 = v21;
  MEMORY[0x28223BE20](v19);
  v254 = &v227 - v22;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B178, &qword_20D97D290);
  v23 = MEMORY[0x28223BE20](v236);
  v262 = &v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v227 - v25;
  v273 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v273);
  v268 = (&v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20D972628();
  v274 = *(v28 - 8);
  v29 = v274;
  MEMORY[0x28223BE20](v28);
  *&v272 = &v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v32 = *(v31 - 8);
  v239 = (v31 - 8);
  v237 = v32;
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v227 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v227 - v39;
  v41 = *(v16 + 28);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);
  v234 = v41;
  sub_20D974A48();
  LODWORD(v231) = (*(v29 + 48))(v40, 1, v28);
  LODWORD(v230) = v231 != 1;
  v42 = v40;
  v43 = v2;
  sub_20D7E3944(v42, &qword_27C8389E8, &qword_20D9768D0);
  v269 = v16;
  v44 = (v2 + *(v16 + 24));
  v45 = *v44;
  v264 = v44[1];
  v265 = v45;
  *&v284 = v45;
  *(&v284 + 1) = v264;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B160, &qword_20D97D268);
  sub_20D974A48();
  v46 = *&v283[0];
  swift_getKeyPath();
  *&v284 = v46;
  v257 = sub_20D9147F0(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
  sub_20D972858();

  v47 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  v48 = *(v274 + 16);
  v49 = v272;
  v259 = v28;
  v255 = v48;
  v256 = v274 + 16;
  v48(v272, v46 + v47, v28);

  v50 = v268;
  sub_20D913AD0(v2, v268, type metadata accessor for HistoricalUsageSnapshot);
  DynamicEnergyUsagesCalculations.init(currentScrolledDate:snapshot:)(v49, v50, v37);
  sub_20D913AD0(v2, v26, type metadata accessor for HistoricalUsageSnapshot);
  v270 = v37;
  sub_20D913AD0(v37, v35, type metadata accessor for DynamicEnergyUsagesCalculations);
  v51 = type metadata accessor for AverageUsageAndTrendView(0);
  v52 = v51[8];
  *&v26[v52] = swift_getKeyPath();
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v26[v51[5]] = v230;
  sub_20D913AD0(v35, &v26[v51[6]], type metadata accessor for DynamicEnergyUsagesCalculations);
  LOBYTE(v49) = v35[*(v239 + 9)];
  v239 = v35;
  sub_20D913B38(v35, type metadata accessor for DynamicEnergyUsagesCalculations);
  v26[v51[7]] = v49;
  v53 = sub_20D974C48();
  v55 = v54;
  v56 = 0;
  v57 = 0;
  if (v231 != 1)
  {
    v58 = v254;
    sub_20D913AD0(v43, v254, type metadata accessor for HistoricalUsageIntervalView);
    v59 = (*(v252 + 80) + 16) & ~*(v252 + 80);
    v57 = swift_allocObject();
    sub_20D91396C(v58, v57 + v59, type metadata accessor for HistoricalUsageIntervalView);
    v56 = sub_20D913B98;
  }

  v60 = &v26[*(v236 + 36)];
  *v60 = v56;
  v60[1] = v57;
  v60[2] = v53;
  v60[3] = v55;
  v61 = v43 + v273[13];
  v236 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v62 = *(v61 + *(v236 + 60));
  v266 = v43;
  v261 = v26;
  if (v62 == 1)
  {
    *&v284 = 977556291;
    *(&v284 + 1) = 0xE400000000000000;
    *&v283[0] = v265;
    *(&v283[0] + 1) = v264;
    sub_20D974A48();
    v63 = v275;
    swift_getKeyPath();
    *&v283[0] = v63;
    sub_20D972858();

    v64 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
    swift_beginAccess();
    v65 = v272;
    v66 = v259;
    v255(v272, v63 + v64, v259);

    v67 = sub_20D9725F8();
    v69 = v68;
    v70 = *(v274 + 8);
    v70(v65, v66);
    MEMORY[0x20F323340](v67, v69);

    sub_20D974488();
    v231 = sub_20D974558();
    v72 = v71;
    LODWORD(v230) = v73;
    v229 = v74;

    *&v284 = 0;
    *(&v284 + 1) = 0xE000000000000000;
    sub_20D975678();

    *&v284 = 0x4154532050414E53;
    *(&v284 + 1) = 0xEB000000003A5452;
    sub_20D971D78();
    v75 = sub_20D9725F8();
    v77 = v76;
    v70(v65, v66);
    MEMORY[0x20F323340](v75, v77);

    MEMORY[0x20F323340](0x203A444E4520, 0xE600000000000000);
    sub_20D971D48();
    v78 = sub_20D9725F8();
    v80 = v79;
    v70(v65, v66);
    MEMORY[0x20F323340](v78, v80);

    sub_20D974488();
    v81 = sub_20D974558();
    v83 = v82;
    LOBYTE(v66) = v84;
    v86 = v85;

    v87 = v230 & 1;
    LOBYTE(v275) = v230 & 1;
    LOBYTE(v284) = v230 & 1;
    LOBYTE(v80) = v66 & 1;
    LOBYTE(v283[0]) = v66 & 1;
    v88 = v231;
    sub_20D7DDC4C(v231, v72, v230 & 1);
    v89 = v229;

    sub_20D7DDC4C(v81, v83, v66 & 1);

    sub_20D7EADC0(v81, v83, v66 & 1);

    sub_20D7EADC0(v88, v72, v275);

    LOBYTE(v66) = v284;
    LODWORD(v230) = LOBYTE(v283[0]);
    sub_20D7DDC4C(v88, v72, v87);

    sub_20D7DDC4C(v81, v83, v80);
    LOBYTE(v299) = v66;
    LOBYTE(v301) = v230;

    v90 = v88;
  }

  else
  {
    v90 = 0;
    v72 = 0;
    v89 = 0;
    v81 = 0;
    v83 = 0;
    v86 = 0;
    *&v299 = 0;
    *&v301 = 0;
  }

  v91 = v251;
  *&v298 = v90;
  *(&v298 + 1) = v72;
  *(&v299 + 1) = v89;
  *&v300 = v81;
  *(&v300 + 1) = v83;
  *(&v301 + 1) = v86;
  v92 = v269;
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v93 = sub_20D9734F8();
  __swift_project_value_buffer(v93, qword_28112AB78);
  v94 = v266;
  v95 = v232;
  sub_20D913AD0(v266, v232, type metadata accessor for HistoricalUsageIntervalView);
  sub_20D913AD0(v94, v91, type metadata accessor for HistoricalUsageIntervalView);
  v96 = sub_20D9734D8();
  v97 = sub_20D975448();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = v91;
    v99 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    *&v283[0] = v231;
    *v99 = 136315650;
    *(v99 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v283);
    *(v99 + 12) = 2080;
    v100 = HistoricalUsageSnapshotDerivedInfo.description.getter();
    v102 = v101;
    sub_20D913B38(v95, type metadata accessor for HistoricalUsageIntervalView);
    v103 = sub_20D7F4DC8(v100, v102, v283);

    *(v99 + 14) = v103;
    *(v99 + 22) = 2080;
    v104 = (v98 + v92[6]);
    v106 = *v104;
    v105 = v104[1];
    *&v284 = v106;
    *(&v284 + 1) = v105;
    sub_20D974A48();
    v107 = v275;
    swift_getKeyPath();
    *&v284 = v107;
    sub_20D972858();

    v108 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
    swift_beginAccess();
    v109 = v107 + v108;
    v110 = v272;
    v111 = v259;
    v255(v272, v109, v259);

    v112 = sub_20D9725F8();
    v114 = v113;
    (*(v274 + 8))(v110, v111);
    v94 = v266;
    sub_20D913B38(v251, type metadata accessor for HistoricalUsageIntervalView);
    v115 = sub_20D7F4DC8(v112, v114, v283);

    *(v99 + 24) = v115;
    _os_log_impl(&dword_20D7C9000, v96, v97, "%s SDI = %s CSD = %s", v99, 0x20u);
    v116 = v231;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v116, -1, -1);
    MEMORY[0x20F324260](v99, -1, -1);

    v117 = v268;
    v118 = v243;
  }

  else
  {

    sub_20D913B38(v95, type metadata accessor for HistoricalUsageIntervalView);
    sub_20D913B38(v91, type metadata accessor for HistoricalUsageIntervalView);
    v118 = v243;
    v117 = v268;
  }

  v120 = v264;
  v119 = v265;
  sub_20D913AD0(v94, v117, type metadata accessor for HistoricalUsageSnapshot);
  *&v283[0] = v119;
  *(&v283[0] + 1) = v120;
  sub_20D974A68();
  v121 = v284;
  v122 = v285;
  swift_getKeyPath();
  v275 = v121;
  *&v276 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B188, &qword_20D97D2C8);
  sub_20D974B38();

  v123 = v94 + v92[11];
  v124 = *(v123 + 16);
  v284 = *v123;
  *&v285 = v124;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  sub_20D974A48();
  v125 = v283[0];
  sub_20D974A68();
  v126 = v94 + v92[9];
  v127 = *v126;
  v128 = *(v126 + 8);
  v129 = *(v126 + 16);
  v251 = v127;
  *&v284 = v127;
  LODWORD(v243) = v128;
  BYTE8(v284) = v128;
  v234 = v129;
  *&v285 = v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B190, &qword_20D97D2D8);
  sub_20D974A48();
  v228 = BYTE8(v283[0]);
  v131 = v94 + v92[10];
  v132 = *v131;
  v133 = *(v131 + 8);
  v134 = *(v131 + 16);
  v232 = v132;
  v233 = v130;
  *&v284 = v132;
  LODWORD(v231) = v133;
  BYTE8(v284) = v133;
  v229 = *&v283[0];
  v230 = v134;
  *&v285 = v134;
  sub_20D974A48();
  v135 = *&v283[0];
  v227 = BYTE8(v283[0]);
  v136 = type metadata accessor for HistoricalUsageChart(0);
  v137 = v136[10];
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v138 = unk_27C839870;
  v283[10] = xmmword_27C839880;
  v283[11] = xmmword_27C839890;
  v139 = xmmword_27C839890;
  v283[12] = xmmword_27C8398A0;
  v140 = xmmword_27C839830;
  v141 = xmmword_27C839840;
  v283[6] = xmmword_27C839840;
  v283[7] = xmmword_27C839850;
  v142 = xmmword_27C839850;
  v143 = xmmword_27C839860;
  v283[8] = xmmword_27C839860;
  v283[9] = unk_27C839870;
  v144 = xmmword_27C8397F0;
  v145 = xmmword_27C839800;
  v283[2] = xmmword_27C839800;
  v283[3] = xmmword_27C839810;
  v146 = xmmword_27C839810;
  v147 = xmmword_27C839820;
  v283[4] = xmmword_27C839820;
  v283[5] = xmmword_27C839830;
  v148 = xmmword_27C8397E0;
  v283[0] = xmmword_27C8397E0;
  v283[1] = xmmword_27C8397F0;
  v149 = v244;
  v150 = &v244[v137];
  v150[10] = xmmword_27C839880;
  v150[11] = v139;
  v150[12] = xmmword_27C8398A0;
  v150[6] = v141;
  v150[7] = v142;
  v150[8] = v143;
  v150[9] = v138;
  v150[2] = v145;
  v150[3] = v146;
  v150[4] = v147;
  v150[5] = v140;
  *v150 = v148;
  v150[1] = v144;
  v151 = v149 + v136[13];
  v297[0] = 0uLL;
  sub_20D85D690(v283, &v284);
  type metadata accessor for CGSize(0);
  sub_20D974A38();
  v152 = v285;
  *v151 = v284;
  *(v151 + 16) = v152;
  v153 = v149 + v136[14];
  v297[0] = 0uLL;
  sub_20D974A38();
  v154 = v285;
  *v153 = v284;
  *(v153 + 16) = v154;
  v155 = v136[15];
  *(v149 + v155) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v156 = v136[16];
  *(v149 + v156) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  swift_storeEnumTagMultiPayload();
  v157 = v136[17];
  *(v149 + v157) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  swift_storeEnumTagMultiPayload();
  *&v284 = 0x3FF0000000000000;
  (*(v240 + 104))(v241, *MEMORY[0x277CE0A68], v242);
  sub_20D7E6420();
  sub_20D973B68();
  v158 = v268;
  sub_20D913AD0(v268, v149, type metadata accessor for HistoricalUsageSnapshot);
  v159 = v258;
  sub_20D7EB7E8(v258, v149 + v136[8], &qword_27C83AB88, &unk_20D97C960);
  *(v149 + v136[5]) = v125;
  sub_20D7EB7E8(v118, v149 + v136[9], &qword_27C83AB90, &unk_20D97D270);
  v160 = v149 + v136[6];
  *v160 = v229;
  v161 = v227;
  *(v160 + 8) = v228;
  v162 = v149 + v136[7];
  *v162 = v135;
  *(v162 + 8) = v161;
  *(v149 + v136[11]) = *(v158 + v273[11]);
  v163 = v272;
  sub_20D9725C8();
  sub_20D972718();
  v164 = *(v274 + 8);
  v274 += 8;
  v242 = v164;
  v165 = v163;
  v166 = v163;
  v167 = v259;
  v164(v165, v259);
  sub_20D7E3944(v118, &qword_27C83AB90, &unk_20D97D270);
  sub_20D7E3944(v159, &qword_27C83AB88, &unk_20D97C960);
  sub_20D913B38(v158, type metadata accessor for HistoricalUsageSnapshot);
  v168 = sub_20D974338();
  v169 = v266;
  sub_20D973AD8();
  v170 = v149 + *(v260 + 36);
  *v170 = v168;
  *(v170 + 8) = v171;
  *(v170 + 16) = v172;
  *(v170 + 24) = v173;
  *(v170 + 32) = v174;
  *(v170 + 40) = 0;
  *&v284 = v265;
  *(&v284 + 1) = v264;
  sub_20D974A48();
  v175 = v275;
  swift_getKeyPath();
  *&v284 = v175;
  sub_20D972858();

  v176 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  v255(v166, v175 + v176, v167);

  v268 = type metadata accessor for DynamicEnergyUsagesCalculations;
  v177 = v239;
  sub_20D913AD0(v270, v239, type metadata accessor for DynamicEnergyUsagesCalculations);
  v178 = v254;
  sub_20D913AD0(v169, v254, type metadata accessor for HistoricalUsageIntervalView);
  v179 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v180 = (v238 + *(v252 + 80) + v179) & ~*(v252 + 80);
  v181 = swift_allocObject();
  sub_20D91396C(v177, v181 + v179, type metadata accessor for DynamicEnergyUsagesCalculations);
  sub_20D91396C(v178, v181 + v180, type metadata accessor for HistoricalUsageIntervalView);
  sub_20D913A14();
  sub_20D9147F0(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v182 = v272;
  sub_20D974858();

  v242(v182, v167);
  sub_20D7E3944(v149, &qword_27C83B168, &qword_20D97D280);
  v274 = *(v169 + v273[15]);
  v183 = v245;
  v184 = v263;
  sub_20D913AD0(v270, v263 + *(v245 + 20), v268);
  v185 = v169 + v269[8];
  v186 = *v185;
  v187 = *(v185 + 8);
  LOBYTE(v275) = v186;
  *(&v275 + 1) = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B1A8, &qword_20D97D348);
  sub_20D974A68();
  v188 = *(&v284 + 1);
  v273 = v284;
  LOBYTE(v177) = v285;
  *&v275 = v232;
  BYTE8(v275) = v231;
  *&v276 = v230;
  sub_20D974A68();
  v272 = v284;
  v189 = v285;
  LOBYTE(v169) = BYTE8(v285);
  *&v275 = v251;
  BYTE8(v275) = v243;
  *&v276 = v234;
  sub_20D974A68();
  v190 = v284;
  v191 = v285;
  v192 = BYTE8(v285);
  v193 = v183[10];
  v194 = xmmword_27C8397E0;
  v284 = xmmword_27C8397E0;
  v285 = xmmword_27C8397F0;
  v195 = unk_27C839870;
  v294 = xmmword_27C839880;
  v295 = xmmword_27C839890;
  v196 = xmmword_27C839890;
  v296 = xmmword_27C8398A0;
  v197 = xmmword_27C839830;
  v198 = xmmword_27C839840;
  v290 = xmmword_27C839840;
  v291 = xmmword_27C839850;
  v199 = xmmword_27C839850;
  v200 = xmmword_27C839860;
  v293 = unk_27C839870;
  v292 = xmmword_27C839860;
  v201 = xmmword_27C8397F0;
  v202 = xmmword_27C839800;
  v286 = xmmword_27C839800;
  v287 = xmmword_27C839810;
  v203 = xmmword_27C839810;
  v204 = xmmword_27C839820;
  v289 = xmmword_27C839830;
  v288 = xmmword_27C839820;
  v205 = (v184 + v193);
  v205[10] = xmmword_27C839880;
  v205[11] = v196;
  v205[12] = xmmword_27C8398A0;
  v205[6] = v198;
  v205[7] = v199;
  v205[8] = v200;
  v205[9] = v195;
  v205[2] = v202;
  v205[3] = v203;
  v205[4] = v204;
  v205[5] = v197;
  *v205 = v194;
  v205[1] = v201;
  v207 = v273;
  v206 = v274;
  *v184 = v274;
  v208 = v184 + v183[6];
  *v208 = v207;
  *(v208 + 1) = v188;
  v208[16] = v177;
  v209 = v184 + v183[7];
  *v209 = v272;
  *(v209 + 2) = v189;
  v209[24] = v169;
  v210 = v184 + v183[8];
  *v210 = v190;
  *(v210 + 2) = v191;
  v210[24] = v192;
  *(v184 + v183[9]) = *(v206 + 16) != 0;
  v211 = v184;
  v212 = v262;
  sub_20D7D586C(v261, v262);
  v279 = v298;
  v280 = v299;
  v281 = v300;
  v282 = v301;
  v213 = v246;
  v214 = v247;
  v215 = *(v247 + 16);
  v216 = v248;
  v215(v246, v271, v248);
  v217 = v211;
  v218 = v250;
  sub_20D913AD0(v217, v250, type metadata accessor for FilterButtonsAndPickerView);
  v219 = v249;
  sub_20D7D586C(v212, v249);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B1B0, &qword_20D97D350);
  v221 = (v219 + v220[12]);
  v222 = v280;
  v297[0] = v279;
  v297[1] = v280;
  v224 = v281;
  v223 = v282;
  v297[3] = v282;
  v297[2] = v281;
  *v221 = v279;
  v221[1] = v222;
  v221[2] = v224;
  v221[3] = v223;
  v215((v219 + v220[16]), v213, v216);
  sub_20D913AD0(v218, v219 + v220[20], type metadata accessor for FilterButtonsAndPickerView);
  sub_20D85D690(&v284, &v275);

  sub_20D7EB7E8(v297, &v275, &qword_27C83B1B8, &qword_20D97D358);
  sub_20D7E3944(&v298, &qword_27C83B1B8, &qword_20D97D358);
  sub_20D913B38(v263, type metadata accessor for FilterButtonsAndPickerView);
  v225 = *(v214 + 8);
  v225(v271, v216);
  sub_20D7D58DC(v261);
  sub_20D913B38(v270, v268);
  sub_20D913B38(v218, type metadata accessor for FilterButtonsAndPickerView);
  v225(v213, v216);
  v275 = v279;
  v276 = v280;
  v277 = v281;
  v278 = v282;
  sub_20D7E3944(&v275, &qword_27C83B1B8, &qword_20D97D358);
  return sub_20D7D58DC(v262);
}

double sub_20D9133BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v20 = a1;
  v5 = sub_20D973C48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoricalUsageIntervalView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D9748F8();
  v22 = type metadata accessor for HistoricalUsageIntervalView;
  sub_20D913AD0(a2, v12, type metadata accessor for HistoricalUsageIntervalView);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v13 + v11 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_20D91396C(v12, v15 + v13, type metadata accessor for HistoricalUsageIntervalView);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v27 = v21;
  v28 = sub_20D914044;
  v29 = v15;
  v30 = 0;
  v31 = 0;
  sub_20D973C38();
  v25 = v16;
  v26 = v17;
  sub_20D913AD0(v23, v12, v22);
  v18 = swift_allocObject();
  sub_20D91396C(v12, v18 + v13, type metadata accessor for HistoricalUsageIntervalView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FB0, &qword_20D97AFB0);
  type metadata accessor for CGSize(0);
  sub_20D8ABBAC();
  sub_20D9147F0(&qword_27C83B220, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_20D974848();

  return result;
}

uint64_t sub_20D9136C8(uint64_t a1)
{
  sub_20D973C38();
  type metadata accessor for HistoricalUsageIntervalView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  return sub_20D974A58();
}

uint64_t sub_20D913750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for HistoricalUsageIntervalView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  return sub_20D974A58();
}

void *sub_20D9137CC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  if ((*(a1 + *(result + 6)) & 1) == 0)
  {
    type metadata accessor for HistoricalUsageIntervalView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B190, &qword_20D97D2D8);
    result = sub_20D974A48();
    if ((v4 & 1) == 0)
    {
      return sub_20D974A58();
    }
  }

  return result;
}

uint64_t sub_20D91389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_20D91396C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D913A14()
{
  result = qword_27C83B198;
  if (!qword_27C83B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B168, &qword_20D97D280);
    sub_20D9147F0(&qword_27C83B1A0, type metadata accessor for HistoricalUsageChart, &unk_20D97C9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B198);
  }

  return result;
}

uint64_t sub_20D913AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D913B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20D913B98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HistoricalUsageIntervalView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D9133BC(a1, v6, a2);
}

void sub_20D913C5C(uint64_t a1)
{
  type metadata accessor for HistoricalUsageSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_20D913EDC(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_20D913EDC(319, &qword_27C83B1D0, type metadata accessor for HistoricalUsageIntervalModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_20D913E88(319, &qword_27C83B1D8, &qword_27C8389E8, &qword_20D9768D0);
        if (v4 <= 0x3F)
        {
          sub_20D913E38();
          if (v5 <= 0x3F)
          {
            sub_20D913E88(319, &qword_27C83B1E8, &qword_27C83B158, &qword_20D97D260);
            if (v6 <= 0x3F)
            {
              sub_20D913EDC(319, &qword_27C83ABC0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_20D7E63C4(319);
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

void sub_20D913E38()
{
  if (!qword_27C83B1E0)
  {
    v0 = sub_20D974A78();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83B1E0);
    }
  }
}

void sub_20D913E88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20D974A78();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20D913EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_20D913F54()
{
  result = qword_27C83B200;
  if (!qword_27C83B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B200);
  }

  return result;
}

unint64_t sub_20D913FF0()
{
  result = qword_27C83B218;
  if (!qword_27C83B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B218);
  }

  return result;
}

uint64_t sub_20D914084(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t objectdestroy_14Tm_0()
{
  v32 = type metadata accessor for HistoricalUsageIntervalView(0);
  v35 = *(*(v32 - 1) + 80);
  v33 = *(*(v32 - 1) + 64);
  v34 = (v35 + 16) & ~v35;
  v36 = v0;
  v1 = v0 + v34;

  v2 = type metadata accessor for HistoricalUsageSnapshot(0);
  v3 = v2[5];
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v1 + v3, v4);
  v6(v1 + v2[6], v4);
  v6(v1 + v2[7], v4);
  v6(v1 + v2[8], v4);
  v7 = v2[9];
  v8 = sub_20D971D98();
  v9 = *(*(v8 - 8) + 8);
  v9(v1 + v7, v8);
  v9(v1 + v2[10], v8);
  v10 = v2[12];
  v11 = sub_20D972E88();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = v1 + v2[13];
  v13 = sub_20D972AF8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v15 = v14[5];
  v16 = sub_20D9727B8();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);
  v17 = v12 + v14[7];
  v6(v17, v4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v6(v17 + *(v18 + 36), v4);
  v19 = v12 + v14[8];
  v6(v19, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v6(v19 + *(v20 + 36), v4);

  v21 = v14[11];
  v31 = *(v5 + 48);
  if (!v31(v12 + v21, 1, v4))
  {
    v6(v12 + v21, v4);
  }

  v22 = v12 + v14[13];
  v6(v22, v4);
  v6(v22 + *(v18 + 36), v4);

  v23 = v14[16];
  v24 = sub_20D9727D8();
  (*(*(v24 - 8) + 8))(v12 + v23, v24);
  v6(v1 + v2[14], v4);

  v25 = v32[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_20D973D58();
    (*(*(v26 - 8) + 8))(v1 + v25, v26);
  }

  else
  {
  }

  v27 = v1 + v32[7];
  if (!v31(v27, 1, v4))
  {
    v6(v27, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);

  v28 = v32[12];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v29 - 8) + 8))(v1 + v28, v29);

  return MEMORY[0x2821FE8E8](v36, v34 + v33, v35 | 7);
}

uint64_t sub_20D914770(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for HistoricalUsageIntervalView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D913750(a1, a2, v6);
}

uint64_t sub_20D9147F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20D914880(uint64_t a1)
{
  type metadata accessor for HistoricalUsageSnapshot(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v2 <= 0x3F)
    {
      sub_20D7F8490(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20D914940@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AverageUsageAndTrendView(0);
  sub_20D7EB7E8(v1 + *(v10 + 32), v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_20D914B48@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B278, &qword_20D97D590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B280, &qword_20D97D598);
  MEMORY[0x28223BE20](v51);
  v55 = &v47 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B288, &qword_20D97D5A0);
  MEMORY[0x28223BE20](v54);
  v8 = &v47 - v7;
  v53 = type metadata accessor for AverageUsageAndTrendView(0);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = sub_20D973D58();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  sub_20D914940(&v47 - v19);
  (*(v15 + 104))(v18, *MEMORY[0x277CDF988], v14);
  sub_20D91A1DC(&qword_281127038, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v50 = sub_20D974FA8();
  v21 = *(v15 + 8);
  v21(v18, v14);
  v21(v20, v14);
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v22 = sub_20D9734F8();
  __swift_project_value_buffer(v22, qword_28112AB78);
  sub_20D91963C(v1, v13, type metadata accessor for AverageUsageAndTrendView);
  sub_20D91963C(v1, v11, type metadata accessor for AverageUsageAndTrendView);
  v23 = sub_20D9734D8();
  v24 = sub_20D975478();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v56[0] = v48;
    *v25 = 136315650;
    *(v25 + 4) = sub_20D7F4DC8(2036625250, 0xE400000000000000, v56);
    *(v25 + 12) = 1024;
    v26 = v53;
    v27 = *(v53 + 28);
    v49 = v5;
    v28 = v8;
    v29 = v13[v27];
    sub_20D9196A4(v13, type metadata accessor for AverageUsageAndTrendView);
    *(v25 + 14) = v29;
    v8 = v28;
    *(v25 + 18) = 1024;
    v30 = &v11[*(v26 + 24)];
    LODWORD(v30) = v30[*(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 32)];
    sub_20D9196A4(v11, type metadata accessor for AverageUsageAndTrendView);
    *(v25 + 20) = v30;
    v5 = v49;
    _os_log_impl(&dword_20D7C9000, v23, v24, "AverageUsageAndTrendView:%s, showMissingDataView: %{BOOL}d, trendIsUnavailable: %{BOOL}d", v25, 0x18u);
    v31 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x20F324260](v31, -1, -1);
    MEMORY[0x20F324260](v25, -1, -1);
  }

  else
  {
    sub_20D9196A4(v11, type metadata accessor for AverageUsageAndTrendView);
    sub_20D9196A4(v13, type metadata accessor for AverageUsageAndTrendView);

    v26 = v53;
  }

  sub_20D9151D8((v50 & 1) == 0, v2);
  v32 = *(v2 + *(v26 + 20));
  v33 = 1.0;
  if (v32)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  v35 = v5;
  v36 = v55;
  sub_20D7EAF18(v35, v55, &qword_27C83B278, &qword_20D97D590);
  *(v36 + *(v51 + 36)) = v34;
  sub_20D7EAF18(v36, v8, &qword_27C83B280, &qword_20D97D598);
  *&v8[*(v54 + 36)] = 256;
  v37 = sub_20D974C48();
  v39 = v38;
  v40 = v2 + *(v26 + 24);
  if (v32 & 1 | ((*(v40 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 28)) & 1) == 0))
  {
    v33 = 0.0;
  }

  sub_20D974C58();
  sub_20D973E08();
  v41 = v52;
  sub_20D7EAF18(v8, v52, &qword_27C83B288, &qword_20D97D5A0);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B290, &qword_20D97D5A8) + 36);
  *v42 = v33;
  v43 = v56[2];
  *(v42 + 56) = v56[3];
  v44 = v56[5];
  *(v42 + 72) = v56[4];
  *(v42 + 88) = v44;
  *(v42 + 104) = v56[6];
  result = *v56;
  v46 = v56[1];
  *(v42 + 8) = v56[0];
  *(v42 + 24) = v46;
  *(v42 + 40) = v43;
  *(v42 + 120) = v37;
  *(v42 + 128) = v39;
  return result;
}

uint64_t sub_20D9151D8(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B298, &qword_20D97D5B0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2A0, &qword_20D97D5B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2A8, &qword_20D97D5C0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  if (a1)
  {
    *v12 = sub_20D974078();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2C8, &qword_20D97D5D0);
    sub_20D915504(a2, &v12[*(v13 + 44)]);
    sub_20D7EB7E8(v12, v9, &qword_27C83B2A8, &qword_20D97D5C0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83B2B8, &qword_27C83B2A8, &qword_20D97D5C0, MEMORY[0x277CE1138]);
    sub_20D7EBC4C(&qword_27C83B2C0, &qword_27C83B298, &qword_20D97D5B0, MEMORY[0x277CE1198]);
    sub_20D9741B8();
    v14 = v12;
    v15 = &qword_27C83B2A8;
    v16 = &qword_20D97D5C0;
  }

  else
  {
    *v6 = sub_20D974158();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2B0, &qword_20D97D5C8);
    sub_20D915504(a2, &v6[*(v17 + 44)]);
    sub_20D7EB7E8(v6, v9, &qword_27C83B298, &qword_20D97D5B0);
    swift_storeEnumTagMultiPayload();
    sub_20D7EBC4C(&qword_27C83B2B8, &qword_27C83B2A8, &qword_20D97D5C0, MEMORY[0x277CE1138]);
    sub_20D7EBC4C(&qword_27C83B2C0, &qword_27C83B298, &qword_20D97D5B0, MEMORY[0x277CE1198]);
    sub_20D9741B8();
    v14 = v6;
    v15 = &qword_27C83B298;
    v16 = &qword_20D97D5B0;
  }

  return sub_20D7E3944(v14, v15, v16);
}

uint64_t sub_20D915504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = type metadata accessor for AverageUsageAndTrendView.UsageTrendView(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2D0, &qword_20D97D5D8);
  v4 = MEMORY[0x28223BE20](v48);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v46 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - v8;
  v43 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  MEMORY[0x28223BE20](v43);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AverageUsageAndTrendView.AverageUsageView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2D8, &qword_20D97D5E0);
  v17 = MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  sub_20D91963C(a1, v13, type metadata accessor for HistoricalUsageSnapshot);
  v24 = type metadata accessor for AverageUsageAndTrendView(0);
  v25 = a1;
  v26 = a1 + *(v24 + 24);
  sub_20D91963C(v26, v10, type metadata accessor for DynamicEnergyUsagesCalculations);
  sub_20D919704(v13, v16, type metadata accessor for HistoricalUsageSnapshot);
  sub_20D91963C(v10, &v16[*(v14 + 20)], type metadata accessor for DynamicEnergyUsagesCalculations);
  v27 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v28 = &v10[*(v27 + 28)];
  v29 = *(v28 + 1);
  if (v29)
  {
    v30 = (*v28 - *&v10[*(v27 + 24)]) / v29 < 0.0;
  }

  else
  {
    v30 = 0;
  }

  sub_20D9196A4(v10, type metadata accessor for DynamicEnergyUsagesCalculations);
  v16[*(v14 + 24)] = v30;
  v31 = *(v25 + *(v24 + 28));
  v32 = 1.0;
  if (v31)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  sub_20D919704(v16, v21, type metadata accessor for AverageUsageAndTrendView.AverageUsageView);
  *&v21[*(v44 + 36)] = v33;
  sub_20D7EAF18(v21, v23, &qword_27C83B2D8, &qword_20D97D5E0);
  v34 = v25;
  v35 = v49;
  sub_20D91963C(v34, v49, type metadata accessor for HistoricalUsageSnapshot);
  sub_20D91963C(v26, v35 + *(v47 + 20), type metadata accessor for DynamicEnergyUsagesCalculations);
  if ((v31 & 1) != 0 || *(v26 + *(v43 + 32)) == 1)
  {
    v32 = 0.0;
  }

  v36 = v46;
  sub_20D919704(v35, v46, type metadata accessor for AverageUsageAndTrendView.UsageTrendView);
  *(v36 + *(v48 + 36)) = v32;
  v37 = v50;
  sub_20D7EAF18(v36, v50, &qword_27C83B2D0, &qword_20D97D5D8);
  v38 = v45;
  sub_20D7EB7E8(v23, v45, &qword_27C83B2D8, &qword_20D97D5E0);
  v39 = v51;
  sub_20D7EB7E8(v37, v51, &qword_27C83B2D0, &qword_20D97D5D8);
  v40 = v52;
  sub_20D7EB7E8(v38, v52, &qword_27C83B2D8, &qword_20D97D5E0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B2E0, &qword_20D97D5E8);
  sub_20D7EB7E8(v39, v40 + *(v41 + 48), &qword_27C83B2D0, &qword_20D97D5D8);
  sub_20D7E3944(v37, &qword_27C83B2D0, &qword_20D97D5D8);
  sub_20D7E3944(v23, &qword_27C83B2D8, &qword_20D97D5E0);
  sub_20D7E3944(v39, &qword_27C83B2D0, &qword_20D97D5D8);
  return sub_20D7E3944(v38, &qword_27C83B2D8, &qword_20D97D5E0);
}

uint64_t sub_20D915A9C@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v1 = sub_20D974458();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B350, &qword_20D97D740);
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = v48 - v8;
  if (qword_27C838718 != -1)
  {
    swift_once();
  }

  v60 = qword_27C83B228;
  v61 = unk_27C83B230;
  v9 = sub_20D7E1EF8();

  v54 = v9;
  v10 = sub_20D9745C8();
  v12 = v11;
  v14 = v13;
  sub_20D974428();
  v15 = *(v2 + 104);
  v53 = *MEMORY[0x277CE0A10];
  v51 = v15;
  v52 = v2 + 104;
  v15(v4);
  sub_20D974478();

  v16 = *(v2 + 8);
  v48[1] = v2 + 8;
  v50 = v16;
  v16(v4, v1);
  v17 = sub_20D974558();
  v49 = v1;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_20D7EADC0(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v60 = v17;
  v61 = v19;
  v62 = v21 & 1;
  v63 = v23;
  v64 = KeyPath;
  v65 = 0;
  sub_20D9743F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B358, &qword_20D97D778);
  sub_20D919C68();
  v25 = v59;
  sub_20D974708();
  sub_20D7EADC0(v17, v19, v21 & 1);

  if (qword_27C838720 != -1)
  {
    swift_once();
  }

  v60 = qword_27C83B238;
  v61 = unk_27C83B240;

  v26 = sub_20D9745C8();
  v28 = v27;
  v30 = v29;
  sub_20D974388();
  v31 = v49;
  v51(v4, v53, v49);
  sub_20D974478();

  v50(v4, v31);
  v32 = sub_20D974558();
  v34 = v33;
  v53 = v35;
  v54 = v36;

  sub_20D7EADC0(v26, v28, v30 & 1);

  v37 = swift_getKeyPath();
  LODWORD(v26) = sub_20D974258();
  v39 = v57;
  v38 = v58;
  v40 = *(v57 + 16);
  v41 = v55;
  v40(v55, v25, v58);
  v42 = v56;
  v40(v56, v41, v38);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B368, &qword_20D97D788) + 48)];
  *v43 = v32;
  *(v43 + 1) = v34;
  v44 = v53;
  v45 = v53 & 1;
  v43[16] = v53 & 1;
  *(v43 + 3) = v54;
  *(v43 + 4) = v37;
  v43[40] = 0;
  *(v43 + 11) = v26;
  sub_20D7DDC4C(v32, v34, v44 & 1);
  v46 = *(v39 + 8);

  v46(v59, v38);
  sub_20D7EADC0(v32, v34, v45);

  return (v46)(v41, v38);
}

uint64_t sub_20D915FD0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B348, &qword_20D97D738);
  return sub_20D915A9C((a2 + *(v3 + 44)));
}

uint64_t sub_20D916024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3C8, &qword_20D97D8A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  *v9 = sub_20D974168();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3D0, &qword_20D97D8A8);
  sub_20D916174(a1, &v9[*(v10 + 44)]);
  sub_20D7EB7E8(v9, v7, &qword_27C83B3C8, &qword_20D97D8A0);
  sub_20D7EB7E8(v7, a2, &qword_27C83B3C8, &qword_20D97D8A0);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3D8, &unk_20D97D8B0) + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C83B3C8, &qword_20D97D8A0);
  return sub_20D7E3944(v7, &qword_27C83B3C8, &qword_20D97D8A0);
}

uint64_t sub_20D916174@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a1;
  v97 = a2;
  v2 = sub_20D9727D8();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972AF8();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A0, &qword_20D978610);
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v92 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A8, &qword_20D978618);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v94 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E0, &unk_20D97D8C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v93 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = (&v79 - v16);
  v81 = sub_20D974458();
  v100 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B390, &qword_20D97D7D0);
  MEMORY[0x28223BE20](v80);
  v20 = &v79 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E8, &qword_20D97E3E0);
  v98 = *(v87 - 8);
  v21 = MEMORY[0x28223BE20](v87);
  v85 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v79 - v23;
  v103 = sub_20D919E90();
  v104 = v24;
  v83 = sub_20D7E1EF8();

  v25 = sub_20D9745C8();
  v27 = v26;
  v29 = v28;
  v79 = v30;
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v33 = *MEMORY[0x277CE0B48];
  v34 = sub_20D974538();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v31 + v32, v33, v34);
  (*(v35 + 56))(v31 + v32, 0, 1, v34);
  *v31 = swift_getKeyPath();
  *v20 = v25;
  *(v20 + 1) = v27;
  v20[16] = v29 & 1;
  *(v20 + 3) = v79;
  sub_20D974488();
  v36 = *MEMORY[0x277CE0A10];
  v37 = v100;
  v79 = *(v100 + 104);
  v38 = v81;
  v79(v18, v36, v81);
  v39 = sub_20D974478();

  v40 = *(v37 + 8);
  v100 = v37 + 8;
  v40(v18, v38);
  KeyPath = swift_getKeyPath();
  v42 = &v20[*(v80 + 36)];
  *v42 = KeyPath;
  v42[1] = v39;
  sub_20D9743F8();
  sub_20D919D20();
  sub_20D974708();
  sub_20D7E3944(v20, &qword_27C83B390, &qword_20D97D7D0);
  v43 = sub_20D974088();
  v44 = v101;
  *v101 = v43;
  v44[1] = 0x4010000000000000;
  *(v44 + 16) = 0;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3F0, &qword_20D97D8D0);
  v47 = v82;
  sub_20D916B74(v82, v45 + *(v46 + 44));
  v48 = *(type metadata accessor for AverageUsageAndTrendView.AverageUsageView(0) + 20);
  type metadata accessor for HistoricalUsageSnapshot(0);
  v49 = v84;
  sub_20D972E58();
  v50 = v86;
  sub_20D972E48();
  v51 = sub_20D90D490(v47 + v48, v49, v50);
  v53 = v52;
  (*(v90 + 8))(v50, v91);
  (*(v88 + 8))(v49, v89);
  v103 = v51;
  v104 = v53;
  v54 = sub_20D9745C8();
  v56 = v55;
  LOBYTE(v50) = v57;
  sub_20D974388();
  v79(v18, v36, v38);
  sub_20D974478();

  v40(v18, v38);
  v58 = sub_20D974558();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_20D7EADC0(v54, v56, v50 & 1);

  v103 = v58;
  v104 = v60;
  v105 = v62 & 1;
  v106 = v64;
  v65 = MEMORY[0x277CE0BD8];
  v66 = MEMORY[0x277CE0BC8];
  v67 = v92;
  sub_20D974868();
  sub_20D7EADC0(v58, v60, v62 & 1);

  v103 = v65;
  v104 = v66;
  swift_getOpaqueTypeConformance2();
  v68 = v99;
  v69 = v95;
  sub_20D9747D8();
  (*(v96 + 8))(v67, v69);
  v70 = *(v98 + 16);
  v71 = v85;
  v72 = v87;
  v70(v85, v102, v87);
  v73 = v93;
  sub_20D7EB7E8(v101, v93, &qword_27C83B3E0, &unk_20D97D8C0);
  v74 = v94;
  sub_20D7EB7E8(v68, v94, &qword_27C8393A8, &qword_20D978618);
  v75 = v97;
  v70(v97, v71, v72);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3F8, &unk_20D97D8D8);
  sub_20D7EB7E8(v73, &v75[*(v76 + 48)], &qword_27C83B3E0, &unk_20D97D8C0);
  sub_20D7EB7E8(v74, &v75[*(v76 + 64)], &qword_27C8393A8, &qword_20D978618);
  sub_20D7E3944(v99, &qword_27C8393A8, &qword_20D978618);
  sub_20D7E3944(v101, &qword_27C83B3E0, &unk_20D97D8C0);
  v77 = *(v98 + 8);
  v77(v102, v72);
  sub_20D7E3944(v74, &qword_27C8393A8, &qword_20D978618);
  sub_20D7E3944(v73, &qword_27C83B3E0, &unk_20D97D8C0);
  return (v77)(v71, v72);
}

uint64_t sub_20D916B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_20D974458();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D972AF8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - v11;
  v13 = sub_20D971FC8();
  MEMORY[0x28223BE20](v13 - 8);
  v80 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v86 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B400, &qword_20D97D8E8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v76 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B408, &qword_20D97D8F0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v84 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v76 - v26;
  v28 = *(a1 + *(type metadata accessor for AverageUsageAndTrendView.AverageUsageView(0) + 24));
  v88 = v27;
  if (v28 == 1)
  {
    v76 = v6;
    v77 = a1;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v29 = qword_27C840E88;
    v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v32 = *MEMORY[0x277CE1050];
    v33 = sub_20D9749F8();
    (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
    *v30 = swift_getKeyPath();
    *v22 = v29;

    v34 = sub_20D974908();
    KeyPath = swift_getKeyPath();
    v36 = (v22 + *(v19 + 36));
    *v36 = KeyPath;
    v36[1] = v34;
    v37 = v88;
    sub_20D7EAF18(v22, v88, &qword_27C83B400, &qword_20D97D8E8);
    (*(v20 + 56))(v37, 0, 1, v19);
    v6 = v76;
  }

  else
  {
    (*(v20 + 56))(v27, 1, 1, v19);
  }

  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E58();
  v38 = sub_20D8DE378();
  v39 = *(v6 + 8);
  v39(v12, v5);
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v40 = sub_20D9734F8();
  __swift_project_value_buffer(v40, qword_28112AB78);
  v41 = sub_20D9734D8();
  v42 = sub_20D975478();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v79;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v77 = v5;
    v47 = v6;
    v48 = v46;
    v89 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_20D7F4DC8(0xD00000000000005ALL, 0x800000020D984C00, &v89);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v38;
    _os_log_impl(&dword_20D7C9000, v41, v42, "%s kWh: %f", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v49 = v48;
    v6 = v47;
    v5 = v77;
    MEMORY[0x20F324260](v49, -1, -1);
    MEMORY[0x20F324260](v45, -1, -1);
  }

  sub_20D972E58();
  v50 = v78;
  (*(v6 + 104))(v78, *MEMORY[0x277D075B0], v5);
  sub_20D91A1DC(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v89 != v93 || v90 != v94)
  {
    sub_20D9757C8();
  }

  v39(v50, v5);
  v39(v44, v5);

  sub_20D88D380(0, v80, v38, COERCE__INT64(1.0));
  v51 = sub_20D9745B8();
  v53 = v52;
  v55 = v54;
  sub_20D974428();
  v57 = v81;
  v56 = v82;
  v58 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x277CE0A10], v83);
  sub_20D974478();

  (*(v56 + 8))(v57, v58);
  v59 = sub_20D974558();
  v61 = v60;
  LOBYTE(v56) = v62;

  sub_20D7EADC0(v51, v53, v55 & 1);

  sub_20D9743F8();
  v63 = sub_20D9744F8();
  v65 = v64;
  LOBYTE(v51) = v66;
  v68 = v67;
  sub_20D7EADC0(v59, v61, v56 & 1);

  v89 = v63;
  v90 = v65;
  v91 = v51 & 1;
  v92 = v68;
  v69 = v85;
  sub_20D9747D8();
  sub_20D7EADC0(v63, v65, v51 & 1);

  v70 = v88;
  v71 = v84;
  sub_20D7EB7E8(v88, v84, &qword_27C83B408, &qword_20D97D8F0);
  v72 = v86;
  sub_20D7EB7E8(v69, v86, &qword_27C838F18, &unk_20D977860);
  v73 = v87;
  sub_20D7EB7E8(v71, v87, &qword_27C83B408, &qword_20D97D8F0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B410, &qword_20D97D8F8);
  sub_20D7EB7E8(v72, v73 + *(v74 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v69, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v70, &qword_27C83B408, &qword_20D97D8F0);
  sub_20D7E3944(v72, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v71, &qword_27C83B408, &qword_20D97D8F0);
}

uint64_t sub_20D917544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B378, &qword_20D97D798);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  *v9 = sub_20D974168();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B380, &qword_20D97D7A0);
  sub_20D917694(a1, &v9[*(v10 + 44)]);
  sub_20D7EB7E8(v9, v7, &qword_27C83B378, &qword_20D97D798);
  sub_20D7EB7E8(v7, a2, &qword_27C83B378, &qword_20D97D798);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B388, &qword_20D97D7A8) + 48);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C83B378, &qword_20D97D798);
  return sub_20D7E3944(v7, &qword_27C83B378, &qword_20D97D798);
}

uint64_t sub_20D917694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a1;
  v176 = a2;
  v166 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v166);
  v161 = v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D972018();
  MEMORY[0x28223BE20](v3 - 8);
  v159 = v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_20D972168();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v154 = v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D9726E8();
  MEMORY[0x28223BE20](v6 - 8);
  v151[1] = v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v155 = *(v157 - 8);
  v8 = MEMORY[0x28223BE20](v157);
  v152 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v153 = v151 - v10;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393A0, &qword_20D978610);
  v174 = *(v175 - 8);
  v11 = MEMORY[0x28223BE20](v175);
  v173 = v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = v151 - v13;
  v180 = sub_20D972628();
  v179 = *(v180 - 8);
  v14 = MEMORY[0x28223BE20](v180);
  v160 = v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v165 = v151 - v16;
  v169 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v168 = *(v169 - 8);
  v17 = MEMORY[0x28223BE20](v169);
  v163 = v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v164 = v151 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396F0, &unk_20D97D7C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v182 = v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v177 = v151 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v162 = v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v178 = v151 - v27;
  v28 = sub_20D971FC8();
  MEMORY[0x28223BE20](v28 - 8);
  v171 = (v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = sub_20D974458();
  v192 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v181 = v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B390, &qword_20D97D7D0);
  MEMORY[0x28223BE20](v170);
  v32 = v151 - v31;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B398, &qword_20D97D7D8);
  v33 = MEMORY[0x28223BE20](v167);
  v187 = v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v191 = v151 - v35;
  if (qword_27C838730 != -1)
  {
    swift_once();
  }

  v198 = qword_27C83B258;
  v199 = unk_27C83B260;
  v36 = sub_20D7E1EF8();

  v172 = v36;
  v37 = sub_20D9745C8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v46 = *MEMORY[0x277CE0B48];
  v47 = sub_20D974538();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v44 + v45, v46, v47);
  (*(v48 + 56))(v44 + v45, 0, 1, v47);
  *v44 = swift_getKeyPath();
  *v32 = v37;
  *(v32 + 1) = v39;
  v32[16] = v41 & 1;
  *(v32 + 3) = v43;
  sub_20D974488();
  v49 = v192;
  v50 = *(v192 + 104);
  v51 = v181;
  v186 = *MEMORY[0x277CE0A10];
  v52 = v190;
  v185 = v192 + 104;
  v184 = v50;
  (v50)(v181);
  v53 = sub_20D974478();

  v183 = *(v49 + 8);
  v183(v51, v52);
  KeyPath = swift_getKeyPath();
  v55 = &v32[v170[9]];
  *v55 = KeyPath;
  v55[1] = v53;
  sub_20D9743F8();
  sub_20D919D20();
  v56 = v191;
  sub_20D974708();
  sub_20D7E3944(v32, &qword_27C83B390, &qword_20D97D7D0);
  v170 = objc_opt_self();
  v57 = [v170 secondaryLabelColor];
  v58 = sub_20D974888();
  v59 = swift_getKeyPath();
  v60 = (v56 + *(v167 + 36));
  *v60 = v59;
  v60[1] = v58;
  v61 = v179;
  v62 = v178;
  v63 = v180;
  (*(v179 + 56))(v178, 1, 1, v180);
  v64 = type metadata accessor for AverageUsageAndTrendView.UsageTrendView(0);
  v65 = v188;
  v66 = v177;
  sub_20D91963C(v188 + *(v64 + 20), v177, type metadata accessor for DynamicEnergyUsagesCalculations);
  v67 = v168;
  v68 = v169;
  (*(v168 + 56))(v66, 0, 1, v169);
  v69 = v182;
  sub_20D7EB7E8(v66, v182, &qword_27C8396F0, &unk_20D97D7C0);
  v70 = (*(v67 + 48))(v69, 1, v68);
  v71 = v62;
  v192 = v49 + 8;
  if (v70 == 1)
  {
    sub_20D7E3944(v182, &qword_27C8396F0, &unk_20D97D7C0);
    v72 = v162;
    sub_20D7EB7E8(v62, v162, &qword_27C8389E8, &qword_20D9768D0);
    if ((*(v61 + 48))(v72, 1, v63) == 1)
    {
      sub_20D7E3944(v72, &qword_27C8389E8, &qword_20D9768D0);
      v73 = v186;
LABEL_20:
      sub_20D971F28();
      goto LABEL_23;
    }

    v80 = v72;
    v81 = v165;
    (*(v61 + 32))(v165, v80, v63);
    v82 = v160;
    (*(v61 + 16))(v160, v81, v63);
    v83 = v161;
    sub_20D91963C(v65, v161, type metadata accessor for HistoricalUsageSnapshot);
    LODWORD(v182) = *(v83 + *(v166 + 44));
    if (v182)
    {
      if (sub_20D972D68())
      {
        sub_20D972D78();
        v76 = v84;
        v77 = 0;
        v79 = 0;
        v78 = 0.0;
        goto LABEL_15;
      }

      v77 = 1;
      sub_20D972D88();
      v78 = v85;
      v79 = 0;
    }

    else
    {
      v79 = sub_20D972E18();
      v78 = 0.0;
      v77 = 1;
    }

    v76 = 0.0;
LABEL_15:
    sub_20D9196A4(v83, type metadata accessor for HistoricalUsageSnapshot);
    v86 = *(v179 + 8);
    v87 = v180;
    v86(v82, v180);
    v86(v165, v87);
    v73 = v186;
    if (v182)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v74 = v164;
  sub_20D919704(v182, v164, type metadata accessor for DynamicEnergyUsagesCalculations);
  v75 = v163;
  sub_20D91963C(v74, v163, type metadata accessor for DynamicEnergyUsagesCalculations);
  sub_20D85CCF0(v75, *(v65 + *(v166 + 44)), &v198);
  v76 = *&v198;
  v77 = v199;
  v78 = v200;
  LOBYTE(v75) = v201;
  v79 = v202;
  sub_20D9196A4(v74, type metadata accessor for DynamicEnergyUsagesCalculations);
  if (v75)
  {
    v73 = v186;
LABEL_16:
    if (v77)
    {
      v88 = v78;
    }

    else
    {
      v88 = v76;
    }

    sub_20D88D380(1, v171, v88, COERCE__INT64(1.0));
    goto LABEL_23;
  }

  v73 = v186;
LABEL_18:
  if ((v77 & 1) == 0)
  {
    goto LABEL_20;
  }

  v193 = v79;
  sub_20D9726A8();
  sub_20D85CBD0();
  v89 = v152;
  sub_20D972058();
  v90 = v154;
  sub_20D972158();
  v91 = v153;
  v92 = v157;
  MEMORY[0x20F320200](v90, v157);
  (*(v156 + 8))(v90, v158);
  v93 = *(v155 + 8);
  v93(v89, v92);
  sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
  sub_20D975588();
  v94 = v91;
  v71 = v178;
  v66 = v177;
  v93(v94, v92);
  sub_20D972008();
  sub_20D971FD8();
LABEL_23:
  sub_20D7E3944(v66, &qword_27C8396F0, &unk_20D97D7C0);
  sub_20D7E3944(v71, &qword_27C8389E8, &qword_20D9768D0);
  v95 = sub_20D9745B8();
  v97 = v96;
  v99 = v98;
  sub_20D974428();
  v100 = v190;
  v184(v51, v73, v190);
  sub_20D974478();

  v183(v51, v100);
  v101 = sub_20D974558();
  v103 = v102;
  v105 = v104;

  sub_20D7EADC0(v95, v97, v99 & 1);

  sub_20D9743F8();
  v106 = sub_20D9744F8();
  v108 = v107;
  LOBYTE(v95) = v109;
  sub_20D7EADC0(v101, v103, v105 & 1);

  v110 = v170;
  v111 = [v170 secondaryLabelColor];
  sub_20D974888();
  v179 = sub_20D974508();
  v178 = v112;
  LODWORD(v180) = v113;
  v182 = v114;

  sub_20D7EADC0(v106, v108, v95 & 1);

  v194 = sub_20D918B5C();
  v195 = v115;
  v116 = sub_20D9745C8();
  v118 = v117;
  LOBYTE(v106) = v119;
  sub_20D974388();
  v120 = v181;
  v121 = v190;
  v184(v181, v186, v190);
  sub_20D974478();

  v183(v120, v121);
  v122 = sub_20D974558();
  v124 = v123;
  LOBYTE(v103) = v125;

  sub_20D7EADC0(v116, v118, v106 & 1);

  sub_20D9743E8();
  v126 = sub_20D9744F8();
  v128 = v127;
  v130 = v129;
  sub_20D7EADC0(v122, v124, v103 & 1);

  v131 = [v110 secondaryLabelColor];
  sub_20D974888();
  v132 = sub_20D974508();
  v134 = v133;
  LOBYTE(v122) = v135;
  v137 = v136;

  sub_20D7EADC0(v126, v128, v130 & 1);

  v194 = v132;
  v195 = v134;
  v196 = v122 & 1;
  v197 = v137;
  v138 = v189;
  sub_20D974868();
  sub_20D7EADC0(v132, v134, v122 & 1);

  v139 = v187;
  sub_20D7EB7E8(v191, v187, &qword_27C83B398, &qword_20D97D7D8);
  v140 = v174;
  v141 = *(v174 + 16);
  v142 = v173;
  v143 = v175;
  v141(v173, v138, v175);
  v144 = v176;
  sub_20D7EB7E8(v139, v176, &qword_27C83B398, &qword_20D97D7D8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3B8, &unk_20D97D888);
  v146 = v144 + *(v145 + 48);
  v147 = v179;
  v148 = v178;
  *v146 = v179;
  *(v146 + 8) = v148;
  LOBYTE(v126) = v180 & 1;
  *(v146 + 16) = v180 & 1;
  *(v146 + 24) = v182;
  v141((v144 + *(v145 + 64)), v142, v143);
  sub_20D7DDC4C(v147, v148, v126);
  v149 = *(v140 + 8);

  v149(v189, v143);
  sub_20D7E3944(v191, &qword_27C83B398, &qword_20D97D7D8);
  v149(v142, v143);
  sub_20D7EADC0(v147, v148, v126);

  return sub_20D7E3944(v187, &qword_27C83B398, &qword_20D97D7D8);
}

uint64_t sub_20D918B5C()
{
  v23 = sub_20D9727D8();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972AF8();
  v22 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E58();
  v10 = v0 + *(type metadata accessor for AverageUsageAndTrendView.UsageTrendView(0) + 20);
  v11 = *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 20);
  sub_20D972E48();
  v12 = v10 + v11;
  v13 = v4;
  v14 = v22;
  v15 = sub_20D90D490(v12, v9, v3);
  v17 = v16;
  (*(v1 + 8))(v3, v23);
  (*(v14 + 16))(v7, v9, v13);
  v18 = (*(v14 + 88))(v7, v13);
  if (v18 != *MEMORY[0x277D075B0] && v18 != *MEMORY[0x277D075C8] && v18 != *MEMORY[0x277D075C0])
  {
    (*(v14 + 8))(v7, v13);
  }

  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  sub_20D971FF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20D979110;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_20D84E340();
  *(v19 + 32) = v15;
  *(v19 + 40) = v17;
  v20 = sub_20D9750C8();

  (*(v14 + 8))(v9, v13);
  return v20;
}

uint64_t sub_20D918F68@<X0>(uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  *a5 = sub_20D974088();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v5);
}

uint64_t sub_20D918FD4()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "Title shown when utility data is missing due to processing delays", 65, 2);
  qword_27C83B228 = result;
  unk_27C83B230 = v9;
  return result;
}

uint64_t sub_20D919120()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D975038();
  MEMORY[0x28223BE20](v6 - 8);
  sub_20D975028();
  sub_20D975018();
  v12 = 24;
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  v12 = 72;
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v7 = qword_28112ABE8;
  v8 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v7, v2, "%1$@ is 24 and %2$@ is 72", 25, 2);
  qword_27C83B238 = result;
  unk_27C83B240 = v10;
  return result;
}

uint64_t sub_20D919374()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "title on average usage view", 27, 2);
  qword_27C83B248 = result;
  unk_27C83B250 = v9;
  return result;
}

uint64_t sub_20D9194B8()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "title on usage trend", 20, 2);
  qword_27C83B258 = result;
  unk_27C83B260 = v9;
  return result;
}

uint64_t sub_20D91963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D9196A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D919704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D9197A4(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D919850(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DynamicEnergyUsagesCalculations(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D9198DC()
{
  result = qword_27C83B308;
  if (!qword_27C83B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B290, &qword_20D97D5A8);
    sub_20D919994();
    sub_20D7EBC4C(&qword_27C83B338, &qword_27C83B340, qword_20D97D640, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B308);
  }

  return result;
}

unint64_t sub_20D919994()
{
  result = qword_27C83B310;
  if (!qword_27C83B310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B288, &qword_20D97D5A0);
    sub_20D919A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B310);
  }

  return result;
}

unint64_t sub_20D919A20()
{
  result = qword_27C83B318;
  if (!qword_27C83B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B280, &qword_20D97D598);
    sub_20D919AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B318);
  }

  return result;
}

unint64_t sub_20D919AAC()
{
  result = qword_27C83B320;
  if (!qword_27C83B320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B278, &qword_20D97D590);
    sub_20D919B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B320);
  }

  return result;
}

unint64_t sub_20D919B30()
{
  result = qword_27C83B328;
  if (!qword_27C83B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B330, &qword_20D97D638);
    sub_20D7EBC4C(&qword_27C83B2B8, &qword_27C83B2A8, &qword_20D97D5C0, MEMORY[0x277CE1138]);
    sub_20D7EBC4C(&qword_27C83B2C0, &qword_27C83B298, &qword_20D97D5B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B328);
  }

  return result;
}

unint64_t sub_20D919C68()
{
  result = qword_27C83B360;
  if (!qword_27C83B360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B358, &qword_20D97D778);
    sub_20D7EBC4C(&qword_27C83AB00, &qword_27C83AB08, &qword_20D97D780, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B360);
  }

  return result;
}

unint64_t sub_20D919D20()
{
  result = qword_27C83B3A8;
  if (!qword_27C83B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B390, &qword_20D97D7D0);
    sub_20D919DD8();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B3A8);
  }

  return result;
}

unint64_t sub_20D919DD8()
{
  result = qword_27C83B3B0;
  if (!qword_27C83B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B3A0, &unk_20D97D7E0);
    sub_20D7EBC4C(&qword_281126F50, &qword_27C83A108, &unk_20D97B230, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B3B0);
  }

  return result;
}

uint64_t sub_20D919E90()
{
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E58();
  (*(v2 + 104))(v5, *MEMORY[0x277D075B0], v1);
  sub_20D91A1DC(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v8 = *(v2 + 8);
    v8(v5, v1);
    v8(v7, v1);

    goto LABEL_5;
  }

  v9 = sub_20D9757C8();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);

  if (v9)
  {
LABEL_5:
    if (*(v0 + *(type metadata accessor for AverageUsageAndTrendView.AverageUsageView(0) + 24)) == 1)
    {
      if (qword_27C8386F8 != -1)
      {
        swift_once();
      }

      v11 = &qword_27C840E20;
    }

    else
    {
      if (qword_27C838728 != -1)
      {
        swift_once();
      }

      v11 = &qword_27C83B248;
    }

    return *v11;
  }

  if (*(v0 + *(type metadata accessor for AverageUsageAndTrendView.AverageUsageView(0) + 24)) == 1)
  {
    if (qword_27C8386F0 != -1)
    {
      swift_once();
    }

    v11 = &qword_27C840E10;
  }

  else
  {
    if (qword_27C8386E8 != -1)
    {
      swift_once();
    }

    v11 = &qword_27C840E00;
  }

  return *v11;
}

uint64_t sub_20D91A1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CircularHistoricalUsageView.init(widgetStartDate:usageSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v19 = a2;
  v6 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v10 + 16);
  v13(v12, a1, v9);
  sub_20D91C424(a2, v8, type metadata accessor for HistoricalUsageSnapshot);
  v14 = type metadata accessor for CircularHistoricalUsageView(0);
  v15 = &a3[v14[7]];
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v12, v8, v15);
  (*(v10 + 8))(a1, v9);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v13(&a3[v14[5]], &v15[*(v16 + 52)], v9);
  return sub_20D91C968(v19, &a3[v14[6]], type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t CircularHistoricalUsageView.body.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B448, &qword_20D97D988);
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  v10 = type metadata accessor for CircularHistoricalUsageView.BaseView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CircularHistoricalUsageView(0);
  v14 = v0 + *(v13 + 24);
  if (*(v14 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 64)) == 6)
  {
    v15 = *(v13 + 20);
    v16 = sub_20D972628();
    (*(*(v16 - 8) + 16))(v12, v0 + v15, v16);
    sub_20D91C424(v14, &v12[*(v10 + 20)], type metadata accessor for HistoricalUsageSnapshot);
    sub_20D91C424(v12, v9, type metadata accessor for CircularHistoricalUsageView.BaseView);
    swift_storeEnumTagMultiPayload();
    sub_20D91C840(qword_281126040, type metadata accessor for CircularHistoricalUsageView.BaseView, &unk_20D97DA9C);
    sub_20D91C48C();
    sub_20D9741B8();
    return sub_20D91C7E0(v12, type metadata accessor for CircularHistoricalUsageView.BaseView);
  }

  else
  {
    sub_20D974FE8();
    sub_20D9726B8();
    *v9 = sub_20D975108(v6, 0, 0, 0, v3, "Circular Historical Usage widget text when no homes have a utility configured.", 78, 2);
    v9[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_20D91C840(qword_281126040, type metadata accessor for CircularHistoricalUsageView.BaseView, &unk_20D97DA9C);
    sub_20D91C48C();
    return sub_20D9741B8();
  }
}

uint64_t sub_20D91A798@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = type metadata accessor for CircularHistoricalUsageView.BaseView(0);
  sub_20D91C424(v2 + *(v12 + 20), v7, type metadata accessor for HistoricalUsageSnapshot);
  v13 = v7[*(v5 + 52)];
  if (v13 == 1)
  {
    if (sub_20D972D68())
    {
      sub_20D972D78();
    }

    else
    {
      sub_20D972D88();
    }
  }

  else
  {
    sub_20D972E18();
  }

  sub_20D91C7E0(v7, type metadata accessor for HistoricalUsageSnapshot);
  (*(v9 + 8))(v11, v8);
  *a1 = sub_20D974C48();
  a1[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B458, &qword_20D97DAF0);
  return sub_20D91A9C8(v2, v13, a1 + *(v15 + 44));
}

uint64_t sub_20D91A9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B460, &qword_20D97DAF8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_20D974E68();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_20D974E58();
  *v11 = sub_20D974C48();
  *(v11 + 1) = v19;
  *(v11 + 2) = 0;
  v11[24] = 1;
  *(v11 + 4) = 0;
  v11[40] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B468, &qword_20D97DB00);
  sub_20D91AC44(a1, v3, &v11[*(v20 + 44)]);
  v21 = *(v13 + 16);
  v21(v16, v18, v12);
  sub_20D7EB7E8(v11, v9, &qword_27C83B460, &qword_20D97DAF8);
  v21(a3, v16, v12);
  v22 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B470, &qword_20D97DB08) + 48)];
  sub_20D7EB7E8(v9, v22, &qword_27C83B460, &qword_20D97DAF8);
  sub_20D7E3944(v11, &qword_27C83B460, &qword_20D97DAF8);
  v23 = *(v13 + 8);
  v23(v18, v12);
  sub_20D7E3944(v9, &qword_27C83B460, &qword_20D97DAF8);
  return (v23)(v16, v12);
}

uint64_t sub_20D91AC44@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v28 = a1;
  v30 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B478, &qword_20D97DB10);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B480, &qword_20D97DB18);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B488, &qword_20D97DB20);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  *v22 = 0;
  v22[8] = 1;
  sub_20D91AF84();
  *v16 = 0;
  v16[8] = 1;
  sub_20D91B090(v28, &v16[*(v11 + 44)]);
  *v9 = 0;
  v9[8] = 1;
  sub_20D91BB40(v29, &v9[*(v4 + 44)]);
  v27 = v20;
  sub_20D7EB7E8(v22, v20, &qword_27C83B488, &qword_20D97DB20);
  sub_20D7EB7E8(v16, v14, &qword_27C83B480, &qword_20D97DB18);
  sub_20D7EB7E8(v9, v7, &qword_27C83B478, &qword_20D97DB10);
  v23 = v20;
  v24 = v30;
  sub_20D7EB7E8(v23, v30, &qword_27C83B488, &qword_20D97DB20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B490, &qword_20D97DB28);
  sub_20D7EB7E8(v14, v24 + *(v25 + 48), &qword_27C83B480, &qword_20D97DB18);
  sub_20D7EB7E8(v7, v24 + *(v25 + 64), &qword_27C83B478, &qword_20D97DB10);
  sub_20D7E3944(v9, &qword_27C83B478, &qword_20D97DB10);
  sub_20D7E3944(v16, &qword_27C83B480, &qword_20D97DB18);
  sub_20D7E3944(v22, &qword_27C83B488, &qword_20D97DB20);
  sub_20D7E3944(v7, &qword_27C83B478, &qword_20D97DB10);
  sub_20D7E3944(v14, &qword_27C83B480, &qword_20D97DB18);
  return sub_20D7E3944(v27, &qword_27C83B488, &qword_20D97DB20);
}

double sub_20D91AF84()
{
  sub_20D9749B8();
  sub_20D974468();
  swift_getKeyPath();
  sub_20D974918();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B50, &qword_20D977188);
  sub_20D91CA80();
  sub_20D9747D8();

  return result;
}

void sub_20D91B090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v89 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v89);
  v85 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972018();
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20D972168();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D9726E8();
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v77 = *(v79 - 8);
  v9 = MEMORY[0x28223BE20](v79);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v73 - v11;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v83 = &v73 - v16;
  v17 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396F0, &unk_20D97D7C0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v73 - v32;
  v34 = sub_20D971FC8();
  MEMORY[0x28223BE20](v34 - 8);
  v90 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CircularHistoricalUsageView.BaseView(0);
  v37 = a1;
  v38 = a1 + *(v36 + 20);
  v82 = *(v13 + 16);
  v82(v33, v37, v12);
  v88 = v13;
  (*(v13 + 56))(v33, 0, 1, v12);
  (*(v18 + 56))(v27, 1, 1, v17);
  v91 = v27;
  sub_20D7EB7E8(v27, v25, &qword_27C8396F0, &unk_20D97D7C0);
  if ((*(v18 + 48))(v25, 1, v17) == 1)
  {
    v39 = v89;
    sub_20D7E3944(v25, &qword_27C8396F0, &unk_20D97D7C0);
    sub_20D7EB7E8(v33, v31, &qword_27C8389E8, &qword_20D9768D0);
    v40 = v88;
    if ((*(v88 + 48))(v31, 1, v12) == 1)
    {
      sub_20D7E3944(v31, &qword_27C8389E8, &qword_20D9768D0);
LABEL_18:
      sub_20D971F28();
      goto LABEL_19;
    }

    v48 = v12;
    v49 = v83;
    (*(v40 + 32))(v83, v31, v12);
    v50 = v84;
    v82(v84, v49, v12);
    v51 = v85;
    sub_20D91C424(v38, v85, type metadata accessor for HistoricalUsageSnapshot);
    v52 = *(v51 + *(v39 + 44));
    if (v52)
    {
      if (sub_20D972D68())
      {
        sub_20D972D78();
        v43 = v53;
        v44 = 0;
        v46 = 0;
        v45 = 0.0;
        goto LABEL_15;
      }

      v44 = 1;
      sub_20D972D88();
      v45 = v54;
      v46 = 0;
    }

    else
    {
      v46 = sub_20D972E18();
      v45 = 0.0;
      v44 = 1;
    }

    v43 = 0.0;
LABEL_15:
    sub_20D91C7E0(v51, type metadata accessor for HistoricalUsageSnapshot);
    v55 = *(v40 + 8);
    v55(v50, v48);
    v55(v49, v48);
    if ((v52 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_5:
    if (v44)
    {
      v47 = v45;
    }

    else
    {
      v47 = v43;
    }

    sub_20D85B278(1, v90, v47);
    goto LABEL_19;
  }

  v41 = v87;
  sub_20D91C968(v25, v87, type metadata accessor for DynamicEnergyUsagesCalculations);
  v42 = v86;
  sub_20D91C424(v41, v86, type metadata accessor for DynamicEnergyUsagesCalculations);
  sub_20D85CCF0(v42, *(v38 + *(v89 + 44)), &v98);
  v43 = v98;
  v44 = v99;
  v45 = v100;
  LOBYTE(v42) = v101;
  v46 = v102;
  sub_20D91C7E0(v41, type metadata accessor for DynamicEnergyUsagesCalculations);
  if (v42)
  {
    goto LABEL_5;
  }

LABEL_16:
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

  v93 = v46;
  sub_20D9726A8();
  sub_20D85CBD0();
  v56 = v74;
  sub_20D972058();
  v57 = v76;
  sub_20D972158();
  v58 = v75;
  v59 = v79;
  MEMORY[0x20F320200](v57, v79);
  (*(v78 + 8))(v57, v80);
  v60 = *(v77 + 8);
  v60(v56, v59);
  sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
  sub_20D975588();
  v60(v58, v59);
  sub_20D972008();
  sub_20D971FD8();
LABEL_19:
  sub_20D7E3944(v91, &qword_27C8396F0, &unk_20D97D7C0);
  sub_20D7E3944(v33, &qword_27C8389E8, &qword_20D9768D0);
  v61 = sub_20D9745B8();
  v63 = v62;
  v65 = v64;
  sub_20D974918();
  v66 = sub_20D974508();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  sub_20D7EADC0(v61, v63, v65 & 1);

  v94 = v66;
  v95 = v68;
  v96 = v70 & 1;
  v97 = v72;
  sub_20D9747D8();
  sub_20D7EADC0(v66, v68, v70 & 1);
}

uint64_t sub_20D91BB40@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B498, &unk_20D97DB30);
  MEMORY[0x28223BE20](v4);
  v6 = v42 - v5;
  v7 = sub_20D9726E8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D975058();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  if (a1)
  {
    v42[1] = v13;
    v42[2] = v4;
    v43 = v6;
    v44 = a2;
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v16 = qword_28112ABE8;
    v17 = qword_28112ABE8;
    sub_20D9726B8();
    v45 = sub_20D975108(v12, 0, 0, v16, v9, "kWh unit used in watch complications", 36, 2);
    v46 = v18;
    sub_20D7E1EF8();
    v19 = sub_20D9745C8();
    v21 = v20;
    v23 = v22;
    sub_20D974488();
    v24 = sub_20D974558();
    v26 = v25;
    v28 = v27;

    sub_20D7EADC0(v19, v21, v23 & 1);

    sub_20D974918();
    v29 = sub_20D974508();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_20D7EADC0(v24, v26, v28 & 1);

    v45 = v29;
    v46 = v31;
    v47 = v33 & 1;
    v48 = v35;
    sub_20D9747D8();
    sub_20D7EADC0(v29, v31, v33 & 1);

    sub_20D7EB7E8(v15, v43, &qword_27C838F18, &unk_20D977860);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4A8, &unk_20D97DB48);
    sub_20D809130();
    sub_20D91C888();
    sub_20D9741B8();
    return sub_20D7E3944(v15, &qword_27C838F18, &unk_20D977860);
  }

  else
  {
    v37 = sub_20D9748F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4A0, &qword_20D97DB40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D977210;
    v39 = sub_20D9742D8();
    *(inited + 32) = v39;
    v40 = sub_20D9742F8();
    *(inited + 33) = v40;
    v41 = sub_20D9742E8();
    sub_20D9742E8();
    if (sub_20D9742E8() != v39)
    {
      v41 = sub_20D9742E8();
    }

    sub_20D9742E8();
    if (sub_20D9742E8() != v40)
    {
      v41 = sub_20D9742E8();
    }

    *v6 = v37;
    v6[8] = v41;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4A8, &unk_20D97DB48);
    sub_20D809130();
    sub_20D91C888();
    return sub_20D9741B8();
  }
}

uint64_t sub_20D91BFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - v8;
  v44 = sub_20D974E68();
  v40 = *(v44 - 8);
  v9 = v40;
  v10 = MEMORY[0x28223BE20](v44);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v12;
  sub_20D974E58();
  v47 = a1;
  v48 = a2;
  sub_20D7E1EF8();

  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  sub_20D974488();
  v18 = sub_20D974558();
  v20 = v19;
  v22 = v21;

  sub_20D7EADC0(v13, v15, v17 & 1);

  sub_20D974918();
  v23 = sub_20D974508();
  v25 = v24;
  LOBYTE(v13) = v26;
  v28 = v27;

  sub_20D7EADC0(v18, v20, v22 & 1);

  v47 = v23;
  v48 = v25;
  v49 = v13 & 1;
  v50 = v28;
  v29 = v43;
  sub_20D9747D8();
  sub_20D7EADC0(v23, v25, v13 & 1);

  v30 = *(v9 + 16);
  v31 = v41;
  v32 = v42;
  v33 = v44;
  v30(v42, v41, v44);
  v34 = v45;
  sub_20D7EB7E8(v29, v45, &qword_27C838F18, &unk_20D977860);
  v35 = v46;
  v30(v46, v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B8, &qword_20D97DBC0);
  sub_20D7EB7E8(v34, v35 + *(v36 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v29, &qword_27C838F18, &unk_20D977860);
  v37 = *(v40 + 8);
  v37(v31, v33);
  sub_20D7E3944(v34, &qword_27C838F18, &unk_20D977860);
  return (v37)(v32, v33);
}

uint64_t sub_20D91C384@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_20D974C48();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B0, &qword_20D97DFC0);
  return sub_20D91BFFC(v5, v4, a2 + *(v7 + 44));
}

uint64_t sub_20D91C424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D91C48C()
{
  result = qword_281125FA8[0];
  if (!qword_281125FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281125FA8);
  }

  return result;
}

void sub_20D91C524(uint64_t a1)
{
  sub_20D91C5D8(319);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HistoricalUsageSnapshot(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D91C5D8(uint64_t a1)
{
  if (!qword_281127060)
  {
    sub_20D974E98();
    v1 = sub_20D973B28();
    if (!v2)
    {
      atomic_store(v1, &qword_281127060);
    }
  }
}

unint64_t sub_20D91C630()
{
  result = qword_281124E30;
  if (!qword_281124E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B450, &qword_20D97DA10);
    sub_20D91C840(qword_281126040, type metadata accessor for CircularHistoricalUsageView.BaseView, &unk_20D97DA9C);
    sub_20D91C48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124E30);
  }

  return result;
}

uint64_t sub_20D91C724(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshot(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D91C7E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D91C840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D91C888()
{
  result = qword_281124F60;
  if (!qword_281124F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B4A8, &unk_20D97DB48);
    sub_20D91C914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124F60);
  }

  return result;
}

unint64_t sub_20D91C914()
{
  result = qword_281124DE0;
  if (!qword_281124DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124DE0);
  }

  return result;
}

uint64_t sub_20D91C968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D91C9D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973F48();
  *a1 = result;
  return result;
}

uint64_t sub_20D91CA28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973E88();
  *a1 = result;
  return result;
}

unint64_t sub_20D91CA80()
{
  result = qword_281126FC0;
  if (!qword_281126FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B50, &qword_20D977188);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126FC0);
  }

  return result;
}

double UtilityRateInfoSummaryView.init(snapshotManager:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20D9744B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityRateInfoSummaryView(0);
  v13 = 0x3FF0000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A68], v4);
  sub_20D7E6420();
  sub_20D973B68();
  *a2 = a1;
  v9 = *(v8 + 20);
  swift_getKeyPath();
  v13 = a1;
  sub_20D91CD30();

  sub_20D972858();

  v10 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D91DE4C(a1 + v10, a2 + v9, type metadata accessor for UtilityRateInfoSnapshot);

  return result;
}

uint64_t type metadata accessor for UtilityRateInfoSummaryView(uint64_t a1)
{
  result = qword_27C83B540;
  if (!qword_27C83B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D91CD30()
{
  result = qword_27C8394A0;
  if (!qword_27C8394A0)
  {
    type metadata accessor for UtilityRateInfoSnapshotManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8394A0);
  }

  return result;
}

uint64_t UtilityRateInfoSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v2 = type metadata accessor for UtilityRateInfoSummaryView(0);
  v150 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v151 = v3;
  v152 = &v127[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v127[-v5];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4D8, &qword_20D97DC10);
  MEMORY[0x28223BE20](v133);
  v8 = &v127[-v7];
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4E0, &qword_20D97DC18);
  v9 = MEMORY[0x28223BE20](v132);
  v136 = &v127[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v127[-v12];
  MEMORY[0x28223BE20](v11);
  v134 = &v127[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4E8, &qword_20D97DC20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v127[-v16];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4F0, &qword_20D97DC28);
  MEMORY[0x28223BE20](v137);
  v139 = &v127[-v18];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4F8, &qword_20D97DC30);
  MEMORY[0x28223BE20](v138);
  v142 = &v127[-v19];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B500, &qword_20D97DC38);
  MEMORY[0x28223BE20](v140);
  v144 = &v127[-v20];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B508, &qword_20D97DC40);
  MEMORY[0x28223BE20](v143);
  v146 = &v127[-v21];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B510, &qword_20D97DC48);
  MEMORY[0x28223BE20](v145);
  v147 = &v127[-v22];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B518, &qword_20D97DC50);
  MEMORY[0x28223BE20](v141);
  v148 = &v127[-v23];
  v149 = v2;
  v24 = v1;
  UtilityRateInfoSnapshot.statusAndAdviceTextPlusSymbol.getter(&v166);
  v25 = v166;
  v26 = v167;
  v27 = v168;
  v130 = *(&v167 + 1);
  v131 = *(&v166 + 1);
  *v17 = sub_20D974168();
  *(v17 + 1) = 0;
  v17[16] = 0;

  v129 = v27;

  v128 = sub_20D974338();
  if (qword_281125B78 != -1)
  {
    swift_once();
  }

  sub_20D973AD8();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v166) = 0;
  v135 = v24;
  sub_20D91D878(v6);
  if (v25)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B520, &qword_20D97DC58) + 44)];
  sub_20D7EAF18(v6, v8, &qword_27C838F18, &unk_20D977860);
  *&v8[*(v133 + 9)] = v36;
  v38 = sub_20D974348();
  sub_20D973AD8();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_20D7EAF18(v8, v13, &qword_27C83B4D8, &qword_20D97DC10);
  v47 = &v13[*(v132 + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = v134;
  sub_20D7EAF18(v13, v134, &qword_27C83B4E0, &qword_20D97DC18);
  v49 = v136;
  sub_20D7EB7E8(v48, v136, &qword_27C83B4E0, &qword_20D97DC18);
  v132 = v26;
  v133 = v17;
  v50 = v131;
  *&v155 = v131;
  *(&v155 + 1) = v26;
  v51 = v129;
  v52 = v130;
  *&v156 = v130;
  *(&v156 + 1) = v129;
  v53 = v128;
  LOBYTE(v157) = v128;
  *(&v157 + 1) = v29;
  *&v158[0] = v31;
  *(&v158[0] + 1) = v33;
  *&v158[1] = v35;
  BYTE8(v158[1]) = 0;
  v54 = v158[0];
  v37[2] = v157;
  v37[3] = v54;
  *(v37 + 57) = *(v158 + 9);
  v55 = v156;
  *v37 = v155;
  v37[1] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B528, &qword_20D97DC60);
  sub_20D7EB7E8(v49, v37 + *(v56 + 48), &qword_27C83B4E0, &qword_20D97DC18);
  sub_20D7EB7E8(&v155, &v166, &qword_27C83B530, &unk_20D97DC68);
  sub_20D7E3944(v48, &qword_27C83B4E0, &qword_20D97DC18);
  sub_20D7E3944(v49, &qword_27C83B4E0, &qword_20D97DC18);
  v159[0] = v50;
  v159[1] = v132;
  v159[2] = v52;
  v159[3] = v51;
  v160 = v53;
  v161 = v29;
  v162 = v31;
  v163 = v33;
  v164 = v35;
  v165 = 0;
  sub_20D7E3944(v159, &qword_27C83B530, &unk_20D97DC68);

  sub_20D974C28();
  sub_20D973E08();
  v57 = v139;
  sub_20D7EAF18(v133, v139, &qword_27C83B4E8, &qword_20D97DC20);
  v58 = &v57[*(v137 + 36)];
  v59 = v171;
  v58[4] = v170;
  v58[5] = v59;
  v58[6] = v172;
  v60 = v167;
  *v58 = v166;
  v58[1] = v60;
  v61 = v169;
  v58[2] = v168;
  v58[3] = v61;
  v62 = sub_20D974328();
  sub_20D973AD8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v57;
  v72 = v142;
  sub_20D7EAF18(v71, v142, &qword_27C83B4F0, &qword_20D97DC28);
  v73 = &v72[*(v138 + 36)];
  *v73 = v62;
  *(v73 + 1) = v64;
  *(v73 + 2) = v66;
  *(v73 + 3) = v68;
  *(v73 + 4) = v70;
  v73[40] = 0;
  v74 = sub_20D974338();
  sub_20D973AD8();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v72;
  v84 = v144;
  sub_20D7EAF18(v83, v144, &qword_27C83B4F8, &qword_20D97DC30);
  v85 = &v84[*(v140 + 36)];
  *v85 = v74;
  *(v85 + 1) = v76;
  *(v85 + 2) = v78;
  *(v85 + 3) = v80;
  *(v85 + 4) = v82;
  v85[40] = 0;
  v86 = sub_20D974348();
  sub_20D973AD8();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v84;
  v96 = v146;
  sub_20D7EAF18(v95, v146, &qword_27C83B500, &qword_20D97DC38);
  v97 = &v96[*(v143 + 36)];
  *v97 = v86;
  *(v97 + 1) = v88;
  *(v97 + 2) = v90;
  *(v97 + 3) = v92;
  *(v97 + 4) = v94;
  v97[40] = 0;
  v98 = sub_20D974368();
  sub_20D973AD8();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v147;
  sub_20D7EAF18(v96, v147, &qword_27C83B508, &qword_20D97DC40);
  v108 = &v107[*(v145 + 36)];
  *v108 = v98;
  *(v108 + 1) = v100;
  *(v108 + 2) = v102;
  *(v108 + 3) = v104;
  *(v108 + 4) = v106;
  v108[40] = 0;
  v109 = sub_20D974C48();
  v111 = v110;
  v112 = v148;
  v113 = &v148[*(v141 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v114 = v135;
  sub_20D973B78();
  v115 = v154 * 24.0;
  v116 = *(sub_20D973DE8() + 20);
  v117 = *MEMORY[0x277CE0118];
  v118 = sub_20D974118();
  (*(*(v118 - 8) + 104))(v113 + v116, v117, v118);
  *v113 = v115;
  v113[1] = v115;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
  sub_20D974C08();
  *(v113 + *(v119 + 56)) = 256;
  v120 = (v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
  *v120 = v109;
  v120[1] = v111;
  sub_20D7EAF18(v107, v112, &qword_27C83B510, &qword_20D97DC48);
  v121 = v152;
  sub_20D91DE4C(v114, v152, type metadata accessor for UtilityRateInfoSummaryView);
  v122 = (*(v150 + 80) + 16) & ~*(v150 + 80);
  v123 = swift_allocObject();
  sub_20D91DEB4(v121, v123 + v122);
  v124 = v153;
  sub_20D7EAF18(v112, v153, &qword_27C83B518, &qword_20D97DC50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B538, &qword_20D97DC78);
  v126 = (v124 + *(result + 36));
  *v126 = sub_20D91DF18;
  v126[1] = v123;
  v126[2] = 0;
  v126[3] = 0;
  return result;
}

void sub_20D91D878(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_20D9744B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D9740E8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for UtilityRateInfoSummaryView(0);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v41);
  v6 = v44;
  if (v44 != 1)
  {
    v33 = v2;
    v34 = v1;
    v7 = v42;
    v8 = v43;
    v9 = v41;
    v36 = v41;
    v37 = v42 & 1;
    v38 = v43;
    v39 = v44;
    v40 = v45;
    PeakPeriodAttributes.variableValue.getter();
    v10 = v8;
    v2 = v33;
    v1 = v34;
    sub_20D8EE800(v9, v7, v10, v6);
  }

  v34 = sub_20D9749A8();
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9740A8();
  sub_20D9740C8();
  sub_20D974108();
  v11 = sub_20D9745A8();
  v13 = v12;
  v15 = v14;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0A50], v1);
  MEMORY[0x20F3225C0](0x6F72504653, 0xE500000000000000, v4, 44.0);
  (*(v2 + 8))(v4, v1);
  v16 = sub_20D974558();
  v18 = v17;
  v20 = v19;

  sub_20D7EADC0(v11, v13, v15 & 1);

  sub_20D9743D8();
  v21 = sub_20D9744F8();
  v23 = v22;
  v25 = v24;
  sub_20D7EADC0(v16, v18, v20 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20D977210;
  *(v26 + 32) = sub_20D974938();
  *(v26 + 40) = sub_20D974928();
  v41 = MEMORY[0x20F322D80](v26);
  v27 = sub_20D974518();
  v29 = v28;
  LOBYTE(v16) = v30;
  v32 = v31;
  sub_20D7EADC0(v21, v23, v25 & 1);

  v41 = v27;
  v42 = v29;
  LOBYTE(v43) = v16 & 1;
  v44 = v32;
  sub_20D9747D8();

  sub_20D7EADC0(v27, v29, v16 & 1);
}

double sub_20D91DCA0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for UtilityRateInfoSummaryView(0) + 20);
  LODWORD(v2) = *(v1 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 40));
  v3 = v2 == 7;
  __dst[424] = 1;
  if (v2 == 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = v2;
  }

  __dst[416] = 1;
  __dst[408] = 1;
  __dst[400] = 1;
  __dst[392] = 1;
  __dst[384] = 1;
  __dst[376] = 1;
  __dst[368] = 1;
  __dst[360] = 1;
  __dst[352] = 1;
  __dst[344] = 1;
  __dst[336] = 1;
  __dst[328] = 1;
  __dst[320] = 1;
  __dst[312] = 1;
  __dst[304] = v3;
  v6[0] = 0;
  LOWORD(v6[1]) = 513;
  v6[2] = 0;
  LOBYTE(v6[3]) = 1;
  v6[4] = 0;
  LOBYTE(v6[5]) = 1;
  memset(&v6[6], 0, 24);
  LOBYTE(v6[9]) = 1;
  memset(&v6[10], 0, 24);
  LOBYTE(v6[13]) = 1;
  v6[14] = 0;
  LOWORD(v6[15]) = 513;
  v6[16] = 0;
  LOWORD(v6[17]) = 1;
  memset(&v6[18], 0, 24);
  LOBYTE(v6[21]) = 1;
  v6[22] = 0;
  LOBYTE(v6[23]) = 1;
  v6[24] = 0;
  LOBYTE(v6[25]) = 1;
  v6[26] = 0;
  LOWORD(v6[27]) = 513;
  v6[28] = 0;
  LOWORD(v6[29]) = 513;
  v6[30] = 0;
  LOBYTE(v6[31]) = 1;
  v6[32] = 0;
  LOBYTE(v6[33]) = 1;
  v6[34] = 0;
  LOBYTE(v6[35]) = 1;
  v6[36] = v2;
  LOBYTE(v6[37]) = v3;
  nullsub_5();
  type metadata accessor for HEUIFAnalyticsEvent();
  v4 = swift_allocObject();
  sub_20D7E3AF0(__src);
  *(v4 + 16) = 34;
  memcpy(__dst, __src, 0x129uLL);
  memcpy((v4 + 24), v6, 0x129uLL);
  sub_20D7E3944(__dst, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v4);

  return result;
}

uint64_t sub_20D91DE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D91DEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_20D91DF18()
{
  v1 = *(type metadata accessor for UtilityRateInfoSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D91DCA0(v2);
}

uint64_t sub_20D91DF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v110 = a4;
  v109 = a3;
  v107 = a2;
  v106 = a1;
  v114 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B598, &unk_20D97DD90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v115 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = &v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v106 - v10;
  v11 = sub_20D974458();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9726E8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D975058();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v112 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v106 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v106 - v27;
  MEMORY[0x28223BE20](v26);
  v124 = &v106 - v28;
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v29 = qword_28112ABE8;
  v30 = qword_28112ABE8;
  sub_20D9726B8();
  v126 = sub_20D975108(v20, 0, 0, v29, v17, "Text to show electricity rates widget title", 43, 2);
  v127 = v31;
  v123 = sub_20D7E1EF8();
  v32 = sub_20D9745C8();
  v34 = v33;
  v36 = v35;
  sub_20D974388();
  v120 = *MEMORY[0x277CE0A10];
  v37 = *(v12 + 104);
  v121 = v12 + 104;
  v122 = v37;
  v37(v14);
  sub_20D974478();

  v38 = *(v12 + 8);
  v117 = v12 + 8;
  v119 = v38;
  v38(v14, v11);
  v39 = sub_20D974558();
  v41 = v40;
  v116 = v11;
  v43 = v42;

  sub_20D7EADC0(v32, v34, v36 & 1);

  v118 = objc_opt_self();
  v44 = [v118 labelColor];
  sub_20D974888();
  v45 = sub_20D974508();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  sub_20D7EADC0(v39, v41, v43 & 1);

  v126 = v45;
  v127 = v47;
  v128 = v49 & 1;
  v129 = v51;
  sub_20D9747D8();
  sub_20D7EADC0(v45, v47, v49 & 1);

  v126 = v106;
  v127 = v107;

  v52 = sub_20D9745C8();
  v54 = v53;
  LOBYTE(v47) = v55;
  sub_20D974438();
  v56 = v116;
  v122(v14, v120, v116);
  sub_20D974478();

  v119(v14, v56);
  v57 = sub_20D974558();
  v59 = v58;
  LOBYTE(v41) = v60;

  sub_20D7EADC0(v52, v54, v47 & 1);

  v61 = *MEMORY[0x277CE09A0];
  v62 = sub_20D9743C8();
  v63 = *(v62 - 8);
  v64 = v108;
  (*(v63 + 104))(v108, v61, v62);
  (*(v63 + 56))(v64, 0, 1, v62);
  v65 = sub_20D9744E8();
  v67 = v66;
  LOBYTE(v63) = v68;
  sub_20D7EADC0(v57, v59, v41 & 1);

  sub_20D7E3944(v64, &qword_27C838C08, &qword_20D977450);
  sub_20D9743F8();
  v69 = sub_20D9744F8();
  v71 = v70;
  LOBYTE(v41) = v72;
  sub_20D7EADC0(v65, v67, v63 & 1);

  v73 = [v118 labelColor];
  sub_20D974888();
  v74 = sub_20D974508();
  v76 = v75;
  LOBYTE(v51) = v77;
  v79 = v78;

  sub_20D7EADC0(v69, v71, v41 & 1);

  v126 = v74;
  v127 = v76;
  v128 = v51 & 1;
  v129 = v79;
  sub_20D9747D8();
  sub_20D7EADC0(v74, v76, v51 & 1);

  v126 = v109;
  v127 = v110;

  v80 = sub_20D9745C8();
  v82 = v81;
  LOBYTE(v71) = v83;
  sub_20D974388();
  v84 = v116;
  v122(v14, v120, v116);
  sub_20D974478();

  v119(v14, v84);
  v85 = sub_20D974558();
  v87 = v86;
  LOBYTE(v76) = v88;

  sub_20D7EADC0(v80, v82, v71 & 1);

  v89 = [v118 secondaryLabelColor];
  sub_20D974888();
  v90 = sub_20D974508();
  v92 = v91;
  v94 = v93;
  v96 = v95;

  sub_20D7EADC0(v85, v87, v76 & 1);

  v126 = v90;
  v127 = v92;
  LOBYTE(v65) = v94 & 1;
  v128 = v94 & 1;
  v129 = v96;
  v130 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B5A0, &qword_20D97DDA0);
  sub_20D91F06C();
  v97 = v113;
  sub_20D9747D8();
  sub_20D7EADC0(v90, v92, v65);

  v98 = v124;
  v99 = v111;
  sub_20D7EB7E8(v124, v111, &qword_27C838F18, &unk_20D977860);
  v100 = v125;
  v101 = v112;
  sub_20D7EB7E8(v125, v112, &qword_27C838F18, &unk_20D977860);
  v102 = v115;
  sub_20D7EB7E8(v97, v115, &qword_27C83B598, &unk_20D97DD90);
  v103 = v114;
  sub_20D7EB7E8(v99, v114, &qword_27C838F18, &unk_20D977860);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B5A8, &qword_20D97DDA8);
  sub_20D7EB7E8(v101, v103 + *(v104 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v102, v103 + *(v104 + 64), &qword_27C83B598, &unk_20D97DD90);
  sub_20D7E3944(v97, &qword_27C83B598, &unk_20D97DD90);
  sub_20D7E3944(v100, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v98, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v102, &qword_27C83B598, &unk_20D97DD90);
  sub_20D7E3944(v101, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v99, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D91EAD4@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_20D974168();
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B590, &qword_20D97DD88);
  return sub_20D91DF94(v4, v5, v7, v6, a2 + *(v8 + 44));
}

void sub_20D91EB78(uint64_t a1)
{
  type metadata accessor for UtilityRateInfoSnapshotManager(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UtilityRateInfoSnapshot(319);
    if (v2 <= 0x3F)
    {
      sub_20D7E63C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D91EC14()
{
  result = qword_27C83B550;
  if (!qword_27C83B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B538, &qword_20D97DC78);
    sub_20D91ECA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B550);
  }

  return result;
}

unint64_t sub_20D91ECA0()
{
  result = qword_27C83B558;
  if (!qword_27C83B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B518, &qword_20D97DC50);
    sub_20D91ED58();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B558);
  }

  return result;
}

unint64_t sub_20D91ED58()
{
  result = qword_27C83B560;
  if (!qword_27C83B560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B510, &qword_20D97DC48);
    sub_20D91EDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B560);
  }

  return result;
}

unint64_t sub_20D91EDE4()
{
  result = qword_27C83B568;
  if (!qword_27C83B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B508, &qword_20D97DC40);
    sub_20D91EE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B568);
  }

  return result;
}

unint64_t sub_20D91EE70()
{
  result = qword_27C83B570;
  if (!qword_27C83B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B500, &qword_20D97DC38);
    sub_20D91EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B570);
  }

  return result;
}

unint64_t sub_20D91EEFC()
{
  result = qword_27C83B578;
  if (!qword_27C83B578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B4F8, &qword_20D97DC30);
    sub_20D91EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B578);
  }

  return result;
}

unint64_t sub_20D91EF88()
{
  result = qword_27C83B580;
  if (!qword_27C83B580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B4F0, &qword_20D97DC28);
    sub_20D7EBC4C(&qword_27C83B588, &qword_27C83B4E8, &qword_20D97DC20, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B580);
  }

  return result;
}

unint64_t sub_20D91F06C()
{
  result = qword_281124FA0;
  if (!qword_281124FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B5A0, &qword_20D97DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124FA0);
  }

  return result;
}

uint64_t CircularUtilityRateInfoView.init(widgetStartDate:infoSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CircularUtilityRateInfoView(0);
  v7 = *(v6 + 20);
  v8 = sub_20D972628();
  (*(*(v8 - 8) + 32))(&a3[v7], a1, v8);
  v9 = &a3[*(v6 + 24)];

  return sub_20D817AEC(a2, v9);
}

uint64_t CircularUtilityRateInfoView.body.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B5C0, &qword_20D97DDF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CircularUtilityRateInfoView(0);
  v14 = v0 + *(v13 + 24);
  if (*(v14 + *(type metadata accessor for UtilityRateInfoSnapshot(0) + 44)) == 6)
  {
    v15 = *(v13 + 20);
    v16 = sub_20D972628();
    (*(*(v16 - 8) + 16))(v12, v0 + v15, v16);
    sub_20D91FE18(v14, &v12[v10[5]], type metadata accessor for UtilityRateInfoSnapshot);
    *&v12[v10[6]] = 0x4041800000000000;
    *&v12[v10[7]] = 0xC008000000000000;
    sub_20D91FE18(v12, v9, type metadata accessor for CircularUtilityRateInfoView.BaseView);
    swift_storeEnumTagMultiPayload();
    sub_20D91FE80();
    sub_20D91FED8();
    sub_20D9741B8();
    return sub_20D91FF2C(v12);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v18 = qword_28112ABE8;
    v19 = qword_28112ABE8;
    sub_20D9726B8();
    *v9 = sub_20D975108(v6, 0, 0, v18, v3, "Circular Utility Rate widget text when no homes have a utility configured.", 74, 2);
    v9[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_20D91FE80();
    sub_20D91FED8();
    return sub_20D9741B8();
  }
}

uint64_t sub_20D91F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_20D9744B8();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B610, &qword_20D97DF68);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v40 - v10;
  v11 = sub_20D974E68();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - v14;
  sub_20D974E58();
  v15 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v55);
  v16 = v58;
  if (v58 != 1)
  {
    v40 = v3;
    v41 = a1;
    v17 = v56;
    v18 = v57;
    v42 = v9;
    v19 = v55;
    v50 = v55;
    v51 = v56 & 1;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    PeakPeriodAttributes.variableValue.getter();
    v20 = v19;
    v9 = v42;
    v21 = v18;
    a1 = v41;
    v3 = v40;
    sub_20D8EE800(v20, v17, v21, v16);
  }

  v22 = sub_20D9749A8();
  v23 = *(a1 + *(v15 + 24));
  v24 = v43;
  (*(v43 + 104))(v5, *MEMORY[0x277CE0A50], v3);
  v25 = MEMORY[0x20F3225C0](0x6F72504653, 0xE500000000000000, v5, v23);
  (*(v24 + 8))(v5, v3);
  KeyPath = swift_getKeyPath();
  v27 = sub_20D974918();
  v28 = *(a1 + *(v15 + 28));
  v55 = v22;
  v56 = KeyPath;
  v57 = v25;
  v58 = v27;
  v59 = 0;
  v60 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B618, &qword_20D97DFA0);
  sub_20D9201F8();
  v29 = v46;
  sub_20D9747D8();

  v31 = v47;
  v30 = v48;
  v32 = *(v47 + 16);
  v33 = v44;
  v34 = v45;
  v32(v45, v44, v48);
  v35 = v9;
  sub_20D7EB7E8(v29, v9, &qword_27C83B610, &qword_20D97DF68);
  v36 = v49;
  v32(v49, v34, v30);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B638, &qword_20D97DFB8);
  sub_20D7EB7E8(v35, v36 + *(v37 + 48), &qword_27C83B610, &qword_20D97DF68);
  sub_20D7E3944(v29, &qword_27C83B610, &qword_20D97DF68);
  v38 = *(v31 + 8);
  v38(v33, v30);
  sub_20D7E3944(v35, &qword_27C83B610, &qword_20D97DF68);
  return (v38)(v34, v30);
}

uint64_t sub_20D91F9A4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_20D974C48();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B608, &qword_20D97DF60);
  return sub_20D91F510(v2, a2 + *(v5 + 44));
}

uint64_t sub_20D91F9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - v8;
  v44 = sub_20D974E68();
  v40 = *(v44 - 8);
  v9 = v40;
  v10 = MEMORY[0x28223BE20](v44);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v12;
  sub_20D974E58();
  v47 = a1;
  v48 = a2;
  sub_20D7E1EF8();

  v13 = sub_20D9745C8();
  v15 = v14;
  v17 = v16;
  sub_20D974488();
  v18 = sub_20D974558();
  v20 = v19;
  v22 = v21;

  sub_20D7EADC0(v13, v15, v17 & 1);

  sub_20D974918();
  v23 = sub_20D974508();
  v25 = v24;
  LOBYTE(v13) = v26;
  v28 = v27;

  sub_20D7EADC0(v18, v20, v22 & 1);

  v47 = v23;
  v48 = v25;
  v49 = v13 & 1;
  v50 = v28;
  v29 = v43;
  sub_20D9747D8();
  sub_20D7EADC0(v23, v25, v13 & 1);

  v30 = *(v9 + 16);
  v31 = v41;
  v32 = v42;
  v33 = v44;
  v30(v42, v41, v44);
  v34 = v45;
  sub_20D7EB7E8(v29, v45, &qword_27C838F18, &unk_20D977860);
  v35 = v46;
  v30(v46, v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B8, &qword_20D97DBC0);
  sub_20D7EB7E8(v34, v35 + *(v36 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v29, &qword_27C838F18, &unk_20D977860);
  v37 = *(v40 + 8);
  v37(v31, v33);
  sub_20D7E3944(v34, &qword_27C838F18, &unk_20D977860);
  return (v37)(v32, v33);
}

uint64_t sub_20D91FD78@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_20D974C48();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B4B0, &qword_20D97DFC0);
  return sub_20D91F9F0(v5, v4, a2 + *(v7 + 44));
}

uint64_t sub_20D91FE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D91FE80()
{
  result = qword_27C83B5C8;
  if (!qword_27C83B5C8)
  {
    type metadata accessor for CircularUtilityRateInfoView.BaseView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5C8);
  }

  return result;
}

unint64_t sub_20D91FED8()
{
  result = qword_27C83B5D0;
  if (!qword_27C83B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5D0);
  }

  return result;
}

uint64_t sub_20D91FF2C(uint64_t a1)
{
  v2 = type metadata accessor for CircularUtilityRateInfoView.BaseView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20D91FFCC(uint64_t a1)
{
  sub_20D91C5D8(319);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UtilityRateInfoSnapshot(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D920068()
{
  result = qword_27C83B5E8;
  if (!qword_27C83B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B5F0, &qword_20D97DE80);
    sub_20D91FE80();
    sub_20D91FED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B5E8);
  }

  return result;
}

uint64_t sub_20D92012C(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UtilityRateInfoSnapshot(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D9201F8()
{
  result = qword_27C83B620;
  if (!qword_27C83B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B618, &qword_20D97DFA0);
    sub_20D920284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B620);
  }

  return result;
}

unint64_t sub_20D920284()
{
  result = qword_27C83B628;
  if (!qword_27C83B628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B630, &unk_20D97DFA8);
    sub_20D7EB274();
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B628);
  }

  return result;
}

uint64_t type metadata accessor for HistoricalUsageSummaryChart(uint64_t a1)
{
  result = qword_281125B40;
  if (!qword_281125B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D9203B0(uint64_t a1)
{
  result = type metadata accessor for HistoricalUsageSnapshot(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D92046C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v56 = a2;
  v54 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  MEMORY[0x28223BE20](v54);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726E8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D975058();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v18 = (a4 + v17[7]);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v19 = qword_28112ABE8;
  v20 = qword_28112ABE8;
  sub_20D9726B8();
  v21 = v20;
  *v18 = sub_20D975108(v16, 0, 0, v19, v13, "Accessibility string used to describe the horizontal date axis", 62, 2);
  v18[1] = v22;
  v23 = (a4 + v17[8]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v23 = sub_20D975108(v16, 0, 0, v19, v13, "Accessibility string used to describe the vertical Kilowatt Hours axis", 70, 2);
  v23[1] = v24;
  v25 = (a4 + v17[9]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v25 = sub_20D975108(v16, 0, 0, v19, v13, "Accessibility string used to describe the average Kilowatt Hours indicator line", 79, 2);
  v25[1] = v26;
  v27 = (a4 + v17[10]);
  sub_20D974FE8();
  sub_20D9726B8();
  *v27 = sub_20D975108(v16, 0, 0, v19, v13, "Accessibility string used to describe the 0 Kilowatt Hours indicator line", 73, 2);
  v27[1] = v28;
  v29 = v55;
  sub_20D9259AC(v55, a4, type metadata accessor for HistoricalUsageSnapshot);
  v30 = v56;
  sub_20D9259AC(v56, a4 + v17[5], type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v31 = (a4 + v17[6]);
  v32 = a3[11];
  v31[10] = a3[10];
  v31[11] = v32;
  v31[12] = a3[12];
  v33 = a3[7];
  v31[6] = a3[6];
  v31[7] = v33;
  v34 = a3[9];
  v31[8] = a3[8];
  v31[9] = v34;
  v35 = a3[3];
  v31[2] = a3[2];
  v31[3] = v35;
  v36 = a3[5];
  v31[4] = a3[4];
  v31[5] = v36;
  v37 = a3[1];
  *v31 = *a3;
  v31[1] = v37;
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v38 = sub_20D9734F8();
  __swift_project_value_buffer(v38, qword_28112AB78);
  sub_20D9259AC(v29, v10, type metadata accessor for HistoricalUsageSnapshot);
  sub_20D9259AC(v30, v7, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v39 = sub_20D9734D8();
  v40 = sub_20D975478();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57[0] = v42;
    *v41 = 136315394;
    v43 = HistoricalUsageSnapshot.description.getter();
    v45 = v44;
    sub_20D92592C(v10, type metadata accessor for HistoricalUsageSnapshot);
    v46 = sub_20D7F4DC8(v43, v45, v57);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = sub_20D9725F8();
    v49 = v48;
    sub_20D92592C(v7, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v50 = sub_20D7F4DC8(v47, v49, v57);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_20D7C9000, v39, v40, "HistoricalUsageSummaryChart init w/ snapshot: %s containing %s)", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v42, -1, -1);
    MEMORY[0x20F324260](v41, -1, -1);

    sub_20D92592C(v56, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v51 = v29;
  }

  else
  {

    sub_20D92592C(v30, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    sub_20D92592C(v29, type metadata accessor for HistoricalUsageSnapshot);
    sub_20D92592C(v7, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
    v51 = v10;
  }

  return sub_20D92592C(v51, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t sub_20D920A6C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B658, &qword_20D97E048);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_20D920C84(0, &v19 - v13);
  sub_20D920C84(1, v12);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v15(v6, v12, v2);
  v15(a1, v9, v2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B660, &unk_20D97E050);
  v15(&a1[*(v16 + 48)], v6, v2);
  v17 = *(v3 + 8);
  v17(v12, v2);
  v17(v14, v2);
  v17(v6, v2);
  return (v17)(v9, v2);
}

void sub_20D920C84(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v200) = a1;
  v164 = a2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v3 = MEMORY[0x28223BE20](v161);
  v160 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v157 = &v146 - v5;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  MEMORY[0x28223BE20](v163);
  v162 = &v146 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD8, &qword_20D97C9F8);
  MEMORY[0x28223BE20](v7 - 8);
  v199 = &v146 - v8;
  v9 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v10 = v9 - 8;
  v183 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v184 = v11;
  v185 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B668, &qword_20D97E060);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v146 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B670, &qword_20D97E068);
  v190 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v189 = &v146 - v13;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B678, &qword_20D97E070);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v198 = &v146 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B680, &qword_20D97E078);
  v155 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v153 = &v146 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B688, &unk_20D97E080);
  v156 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v154 = &v146 - v16;
  v194 = sub_20D972208();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v148 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_20D972248();
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v147 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_20D9722C8();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_20D972378();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D972188();
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20D972838();
  MEMORY[0x28223BE20](v23 - 8);
  v172 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D9727D8();
  MEMORY[0x28223BE20](v25 - 8);
  v169 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20D9726E8();
  MEMORY[0x28223BE20](v27 - 8);
  v165 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v146 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v146 - v33;
  v35 = sub_20D972408();
  v168 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v166 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v167 = &v146 - v38;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v179 = *(v182 - 8);
  v39 = MEMORY[0x28223BE20](v182);
  v181 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v146 - v41;
  v43 = sub_20D972628();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v175 = &v146 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v196 = &v146 - v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v146 - v49;
  v51 = v2;
  v52 = v2 + *(v10 + 28);
  v206 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v207 = v44;
  v53 = v206[13];
  v54 = *(v44 + 16);
  v205 = v52;
  v202 = v54;
  v203 = (v44 + 16);
  v54(v50, (v52 + v53), v43);
  v150 = v50;
  v195 = v51;
  if (v200)
  {
    sub_20D7EB7E8(v205 + v53, v42, &qword_27C839550, &qword_20D979C30);
  }

  else
  {
    type metadata accessor for HistoricalUsageSnapshot(0);
    sub_20D972D98();
  }

  v55 = v196;
  v204 = v42;
  v201 = v43;
  v202(v196, v42, v43);
  v149 = swift_allocBox();
  (*(v191 + 56))(v34, 1, 1, v192);
  v193[7](v31, 1, 1, v194);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v56 = v166;
  sub_20D972268();
  v57 = v171;
  sub_20D972358();
  v58 = v167;
  sub_20D972298();
  (*(v173 + 8))(v57, v174);
  v59 = *(v168 + 8);
  v59(v56, v35);
  v60 = v176;
  sub_20D9722A8();
  sub_20D972258();
  (*(v177 + 8))(v60, v178);
  v59(v58, v35);
  v61 = v55;
  v62 = v205;
  sub_20D972788();
  sub_20D9723F8();
  v63 = *(type metadata accessor for HistoricalUsageSnapshot(0) + 48);
  v64 = v195;
  LOBYTE(v59) = sub_20D972D68();
  sub_20D972DB8();
  if (v59)
  {
    v66 = -v65;
  }

  else
  {
    v66 = v65;
  }

  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v67 = sub_20D9734F8();
  __swift_project_value_buffer(v67, qword_28112AB78);
  v68 = v175;
  v69 = v201;
  v202(v175, v61, v201);
  v70 = sub_20D9734D8();
  v71 = sub_20D975478();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v178 = v63;
    v74 = v69;
    v177 = v73;
    v208 = v73;
    *v72 = 136315906;
    *(v72 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D98A6F0, &v208);
    *(v72 + 12) = 2080;
    if (v200)
    {
      v75 = 1936287860;
    }

    else
    {
      v75 = 1953718636;
    }

    v76 = sub_20D7F4DC8(v75, 0xE400000000000000, &v208);

    *(v72 + 14) = v76;
    *(v72 + 22) = 2080;
    v77 = v64;
    v78 = v147;
    sub_20D972218();
    v79 = v148;
    sub_20D9721E8();
    v80 = sub_20D9725E8();
    v81 = v68;
    v83 = v82;
    (v193[1])(v79, v194);
    v84 = v78;
    v64 = v77;
    (*(v191 + 8))(v84, v192);
    (*(v207 + 8))(v81, v74);
    v85 = sub_20D7F4DC8(v80, v83, &v208);

    *(v72 + 24) = v85;
    *(v72 + 32) = 2080;
    *&v212 = v66;
    sub_20D7E6420();
    v86 = sub_20D974F18();
    v88 = sub_20D7F4DC8(v86, v87, &v208);

    *(v72 + 34) = v88;
    _os_log_impl(&dword_20D7C9000, v70, v71, "%s drawing %s week, starting on %s with an average of %s kWh", v72, 0x2Au);
    v89 = v177;
    swift_arrayDestroy();
    v62 = v205;
    MEMORY[0x20F324260](v89, -1, -1);
    MEMORY[0x20F324260](v72, -1, -1);
  }

  else
  {

    (*(v207 + 8))(v68, v69);
  }

  v90 = sub_20D972E38();
  if (*(v62 + v206[9]))
  {
    v91 = *(v62 + v206[9]);
  }

  else
  {
    v91 = MEMORY[0x277D84F90];
  }

  v208 = v90;

  sub_20D95B09C(v91);
  MEMORY[0x28223BE20](v92);
  v93 = v204;
  v144 = v204;
  v213 = sub_20D8A392C(sub_20D92598C, (&v146 - 4), v94);
  swift_getKeyPath();
  v95 = v64;
  v96 = v185;
  sub_20D9259AC(v95, v185, type metadata accessor for HistoricalUsageSummaryChart);
  v97 = v181;
  sub_20D7EB7E8(v93, v181, &qword_27C839550, &qword_20D979C30);
  v98 = (*(v183 + 80) + 16) & ~*(v183 + 80);
  v99 = v98 + v184;
  v100 = (*(v179 + 80) + v98 + v184 + 1) & ~*(v179 + 80);
  v101 = (v180 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  sub_20D925A14(v96, v102 + v98);
  *(v102 + v99) = v200 & 1;
  sub_20D7EAF18(v97, v102 + v100, &qword_27C839550, &qword_20D979C30);
  *(v102 + v101) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B690, &qword_20D97E0C8);
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  sub_20D925CA0(&qword_281126E38, MEMORY[0x277CC9588]);
  v144 = sub_20D925B9C();
  v103 = v186;
  sub_20D973888();
  v104 = sub_20D7EBC4C(&qword_281125038, &qword_27C83B668, &qword_20D97E060, MEMORY[0x277CBB3F8]);
  v105 = v189;
  v106 = v188;
  sub_20D974608();
  (*(v187 + 8))(v103, v106);
  v212 = *(v205 + v206[14]);
  v107 = sub_20D9739E8();
  v108 = *(v107 - 8);
  v109 = *(v108 + 56);
  v110 = v199;
  v206 = (v108 + 56);
  (v109)(v199, 1, 1, v107);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE60, &qword_20D97CB98);
  v208 = v106;
  v209 = v104;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = sub_20D90AF8C(&qword_281124C30, &qword_27C83AE60, &qword_20D97CB98);
  v114 = v197;
  v205 = v111;
  v200 = OpaqueTypeConformance2;
  sub_20D974628();
  sub_20D7E3944(v110, &qword_27C83ABD8, &qword_20D97C9F8);
  (*(v190 + 8))(v105, v114);
  v115 = v204;
  v116 = &v204[*(v182 + 36)];
  sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  v117 = v115;
  v118 = v201;
  if (sub_20D974FC8())
  {
    v119 = v157;
    v194 = v113;
    v120 = v202;
    v202(v157, v117, v118);
    v121 = v161;
    v120(v119 + *(v161 + 48), v116, v118);
    v122 = v160;
    sub_20D7EB7E8(v119, v160, &unk_27C83C750, &unk_20D978DD0);
    v202 = v107;
    v123 = *(v121 + 48);
    v124 = v207;
    v193 = v109;
    v125 = *(v207 + 32);
    v126 = v162;
    v125(v162, v122, v118);
    v127 = *(v124 + 8);
    v127(v122 + v123, v118);
    v203 = v127;
    v207 = v124 + 8;
    sub_20D7EAF18(v119, v122, &unk_27C83C750, &unk_20D978DD0);
    v128 = v163;
    v125((v126 + *(v163 + 36)), v122 + *(v121 + 48), v118);
    v127(v122, v118);
    v129 = v199;
    (v193)(v199, 1, 1, v202);
    v208 = v197;
    v209 = v205;
    v210 = v200;
    v211 = v194;
    v130 = swift_getOpaqueTypeConformance2();
    v131 = sub_20D90AF8C(&qword_281124C38, &qword_27C83A698, &qword_20D97CB80);
    v132 = v153;
    v133 = v152;
    v134 = v198;
    sub_20D974618();
    sub_20D7E3944(v129, &qword_27C83ABD8, &qword_20D97C9F8);
    sub_20D7E3944(v126, &qword_27C83A698, &qword_20D97CB80);
    v135 = (*(v151 + 8))(v134, v133);
    v206 = &v146;
    MEMORY[0x28223BE20](v135);
    v144 = v195;
    v145 = v149;
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B698, &unk_20D97E130);
    v208 = v133;
    v209 = v128;
    v210 = v130;
    v211 = v131;
    v137 = swift_getOpaqueTypeConformance2();
    v138 = sub_20D7EBC4C(&qword_281125030, &qword_27C83B698, &unk_20D97E130, MEMORY[0x277CBB460]);
    v139 = v154;
    v140 = v158;
    sub_20D9745E8();
    (*(v155 + 8))(v132, v140);
    v208 = v140;
    v209 = v136;
    v210 = v137;
    v211 = v138;
    swift_getOpaqueTypeConformance2();
    v141 = v159;
    sub_20D9746B8();
    (*(v156 + 8))(v139, v141);
    v142 = v201;
    v143 = v203;
    v203(v196, v201);
    v143(v150, v142);
    sub_20D7E3944(v204, &qword_27C839550, &qword_20D979C30);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20D9225E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F320D90](v4);
  sub_20D925CA0(&qword_281126E30, MEMORY[0x277CC9590]);
  v7 = sub_20D974FA8();
  v8 = *(v3 + 8);
  v9 = v8(v6, v2);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    MEMORY[0x20F320D90](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
    v10 = sub_20D972548();
    v8(v6, v2);
  }

  return v10 & 1;
}

uint64_t sub_20D922760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v127 = a4;
  v7 = a3;
  v139 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6B0, &qword_20D97E160);
  MEMORY[0x28223BE20](v10 - 8);
  v106 = v100 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B120, &unk_20D97E120);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = v100 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6B8, &qword_20D97E168);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v107 = v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B118, &unk_20D97D100);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v138 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C0, &qword_20D97E170);
  MEMORY[0x28223BE20](v18 - 8);
  v100[1] = v100 - v19;
  v132 = sub_20D973978();
  v131 = *(v132 - 8);
  v20 = MEMORY[0x28223BE20](v132);
  v105 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100[0] = v100 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA8, &unk_20D97E110);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = v100 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v101 = v100 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B110, &unk_20D97D0F0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v133 = v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v142 = v100 - v28;
  v122 = sub_20D973788();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_20D972838();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v114 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_20D972AF8();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v32 = v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v100 - v34;
  v140 = sub_20D972628();
  v36 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v112 = v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D8, &unk_20D97E0D0);
  MEMORY[0x28223BE20](v115);
  v39 = v100 - v38;
  v113 = v100 - v38;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D0, &unk_20D97D0B0);
  v129 = *(v130 - 8);
  v40 = MEMORY[0x28223BE20](v130);
  v128 = v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = v100 - v42;
  v126 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v44 = a2;
  v45 = a2 + v126[5];
  v46 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v47 = (fabs(*(v45 + *(v46 + 56))) + fabs(*(v45 + *(v46 + 56) + 8))) / 50.0;
  v134 = v7;
  v48 = v7;
  v49 = v44;
  v50 = sub_20D9238D4(a1, v48, v39, v47);
  v111 = *(v45 + *(v46 + 60));
  v51 = v112;
  MEMORY[0x20F320D90](v50);
  v52 = v140;
  (*(v36 + 16))(v35, v127, v140);
  (*(v36 + 56))(v35, 0, 1, v52);
  v125 = type metadata accessor for HistoricalUsageSnapshot(0);
  v141 = v49;
  sub_20D972E58();
  v53 = v114;
  sub_20D972E68();
  LOBYTE(v52) = sub_20D972B18();
  (*(v118 + 8))(v53, v119);
  (*(v116 + 8))(v32, v117);
  sub_20D7E3944(v35, &qword_27C8389E8, &qword_20D9768D0);
  v54 = v120;
  sub_20D973768();
  v143 = v111;
  v144 = v51;
  v145 = v52 & 1;
  sub_20D974C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E0, &unk_20D97D0C0);
  sub_20D9102F0();
  sub_20D910610();
  v55 = v123;
  v127 = v43;
  v56 = v124;
  v57 = v113;
  sub_20D973588();
  (*(v121 + 8))(v54, v122);
  sub_20D7E3944(v57, &qword_27C83B0D8, &unk_20D97E0D0);
  (*(v36 + 8))(v51, v140);
  v58 = sub_20D972C28();
  v59 = 1;
  v60 = MEMORY[0x277CBB450];
  if (v58)
  {
    v61 = MEMORY[0x277CBB450];
    v62 = MEMORY[0x277CE0F78];
    v63 = MEMORY[0x277CE0F60];
    v64 = (v141 + v126[9]);
    v66 = *v64;
    v65 = v64[1];
    v151 = v66;
    v152 = v65;
    v150 = a6;
    sub_20D7E1EF8();
    sub_20D973708();
    v67 = v100[0];
    sub_20D973968();
    if (v134)
    {
      sub_20D972BC8();
      if (v68 < 0.0)
      {
        if (qword_281126F30 != -1)
        {
          swift_once();
        }

        v69 = qword_28112ABF8;

        goto LABEL_10;
      }

      v70 = [objc_opt_self() systemYellowColor];
    }

    else
    {
      v70 = [objc_opt_self() systemGrayColor];
    }

    v71 = v70;
    v69 = sub_20D974888();
LABEL_10:
    v151 = v69;
    v72 = v102;
    v73 = v132;
    sub_20D9735B8();

    (*(v131 + 8))(v67, v73);
    sub_20D973B38();
    v151 = v73;
    v152 = v62;
    v60 = v61;
    v153 = v61;
    v154 = v63;
    swift_getOpaqueTypeConformance2();
    v74 = v101;
    v75 = v104;
    sub_20D973628();
    sub_20D90D3D8(&v150);
    (*(v103 + 8))(v72, v75);
    (*(v55 + 32))(v142, v74, v56);
    v59 = 0;
  }

  v76 = 1;
  (*(v55 + 56))(v142, v59, 1, v56);
  v77 = v137;
  v78 = v136;
  v79 = v135;
  if (*(v141 + *(v125 + 44)) == 1)
  {
    v80 = (v141 + v126[10]);
    v82 = *v80;
    v81 = v80[1];
    v151 = v82;
    v152 = v81;
    v147 = 0;
    sub_20D7E1EF8();
    sub_20D973708();
    v83 = v105;
    sub_20D973968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C8, &qword_20D97E178);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_20D979110;
    v85 = 0.0;
    if (v134)
    {
      v85 = 5.0;
    }

    *(v84 + 32) = v85;
    sub_20D973B38();
    v86 = v108;
    v87 = v132;
    sub_20D973628();
    sub_20D90D3D8(&v151);
    (*(v131 + 8))(v83, v87);
    v88 = [objc_opt_self() systemGrayColor];
    v146 = sub_20D974888();
    v147 = v87;
    v148 = v60;
    swift_getOpaqueTypeConformance2();
    v89 = v107;
    v90 = v110;
    sub_20D9735B8();

    (*(v109 + 8))(v86, v90);
    (*(v79 + 32))(v78, v89, v77);
    v76 = 0;
  }

  (*(v79 + 56))(v78, v76, 1, v77);
  v91 = v129;
  v92 = v128;
  v93 = v127;
  v94 = v130;
  (*(v129 + 16))(v128, v127, v130);
  v147 = v92;
  v95 = v142;
  v96 = v133;
  sub_20D7EB7E8(v142, v133, &qword_27C83B110, &unk_20D97D0F0);
  v148 = v96;
  v97 = v138;
  sub_20D7EB7E8(v78, v138, &qword_27C83B118, &unk_20D97D100);
  v149 = v97;
  sub_20D8EF37C(&v147, v139);
  sub_20D7E3944(v78, &qword_27C83B118, &unk_20D97D100);
  sub_20D7E3944(v95, &qword_27C83B110, &unk_20D97D0F0);
  v98 = *(v91 + 8);
  v98(v93, v94);
  sub_20D7E3944(v97, &qword_27C83B118, &unk_20D97D100);
  sub_20D7E3944(v96, &qword_27C83B110, &unk_20D97D0F0);
  return (v98)(v92, v94);
}

uint64_t sub_20D9238D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  LODWORD(v203) = a2;
  v210 = a3;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6D0, &unk_20D97E180);
  MEMORY[0x28223BE20](v202);
  v201 = v170 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E8, &unk_20D97E0E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v170 - v10;
  v219 = sub_20D974118();
  v224 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6C0, &qword_20D97E170);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v194 = v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v193 = v170 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v170 - v19;
  MEMORY[0x28223BE20](v18);
  v192 = v170 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v170 - v23;
  v211 = sub_20D972628();
  v25 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v27 = v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v204 = v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v187 = v170 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = (v170 - v33);
  v214 = sub_20D9738B8();
  v221 = *(v214 - 8);
  v35 = MEMORY[0x28223BE20](v214);
  v191 = v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v200 = v170 - v38;
  MEMORY[0x28223BE20](v37);
  v185 = v170 - v39;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B100, &unk_20D97D0E0);
  v222 = *(v215 - 8);
  v40 = MEMORY[0x28223BE20](v215);
  v190 = v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v199 = v170 - v43;
  MEMORY[0x28223BE20](v42);
  v183 = v170 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0F8, &unk_20D97E0F0);
  v223 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45);
  v188 = v170 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v198 = v170 - v49;
  MEMORY[0x28223BE20](v48);
  v182 = v170 - v50;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0F0, &unk_20D97D0D0);
  v207 = *(v217 - 8);
  v51 = MEMORY[0x28223BE20](v217);
  v189 = (v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x28223BE20](v51);
  v195 = v170 - v54;
  MEMORY[0x28223BE20](v53);
  v186 = v170 - v55;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6D8, &qword_20D97E190);
  v208 = *(v209 - 8);
  v56 = MEMORY[0x28223BE20](v209);
  v184 = v170 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v197 = v170 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v196 = v170 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v206 = v170 - v63;
  MEMORY[0x28223BE20](v62);
  v213 = v170 - v64;
  v220 = a1;
  v212 = sub_20D972C28();
  v65 = type metadata accessor for HistoricalUsageSummaryChart(0);
  v66 = (v5 + v65[7]);
  v68 = *v66;
  v67 = v66[1];
  v216 = v45;
  v205 = v67;
  if (v203)
  {
    v203 = v11;
    v193 = v20;
    v188 = v68;
    v225 = v68;
    v226 = v67;

    MEMORY[0x20F320D90](v69);
    v70 = v5 + v65[5];
    v71 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v72 = (v70 + *(v71 + 20));
    v73 = v25;
    v74 = v70 + *(v71 + 64);
    v75 = v34;
    v76 = sub_20D9727D8();
    v77 = *(v76 - 8);
    v78 = *(v77 + 16);
    v181 = v74;
    v178 = v77 + 16;
    v177 = v78;
    v78(v24, v74, v76);
    v79 = *(v77 + 56);
    v180 = v76;
    v179 = v77 + 56;
    v176 = v79;
    v79(v24, 0, 1, v76);
    v80 = sub_20D7E1EF8();
    v189 = v75;
    v184 = v72;
    v204 = v80;
    sub_20D9736F8();
    v191 = v24;
    sub_20D7E3944(v24, &qword_27C839548, &unk_20D979C20);
    v81 = *(v73 + 8);
    v190 = v27;
    v194 = (v73 + 8);
    v175 = v81;
    (v81)(v27);
    v82 = (v5 + v65[8]);
    v83 = v82[1];
    v174 = *v82;
    v225 = v174;
    v226 = v83;

    if (v212)
    {
      sub_20D972C18();
    }

    else
    {
      v84 = a4;
    }

    v98 = v216;
    v229 = v84;
    sub_20D973708();
    v99 = v185;
    sub_20D973898();
    v100 = (v5 + v65[6]);
    v225 = *(v100 + 2);
    v101 = MEMORY[0x277CE1318];
    v102 = MEMORY[0x277CBB400];
    v103 = MEMORY[0x277CE1310];
    v104 = v183;
    v105 = v214;
    sub_20D9735B8();
    v106 = *(v221 + 8);
    v221 += 8;
    v189 = v106;
    v106(v99, v105);
    v225 = v105;
    v226 = v101;
    v227 = v102;
    v228 = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v108 = v182;
    v109 = v215;
    sub_20D973618();
    v110 = *(v222 + 8);
    v222 += 8;
    v183 = v110;
    (v110)(v104, v109);
    v225 = v109;
    v226 = OpaqueTypeConformance2;
    v185 = OpaqueTypeConformance2;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v186;
    sub_20D9735E8();
    v113 = *(v223 + 8);
    v223 += 8;
    v173 = v113;
    v113(v108, v98);
    v192 = v100;
    v114 = v224;
    v115 = *(v224 + 104);
    v116 = v218;
    v172 = *MEMORY[0x277CE0118];
    v117 = v219;
    v171 = v115;
    v115(v218);
    v225 = v98;
    v226 = v111;
    v182 = v111;
    v118 = swift_getOpaqueTypeConformance2();
    v119 = v217;
    v170[1] = v118;
    sub_20D9735A8();
    v120 = *(v114 + 8);
    v224 = v114 + 8;
    v170[0] = v120;
    v120(v116, v117);
    v121 = *(v207 + 8);
    v122 = v121(v112, v119);
    v225 = v188;
    v226 = v205;
    v123 = v190;
    MEMORY[0x20F320D90](v122);
    v124 = v191;
    v125 = v180;
    v177(v191, v181, v180);
    v176(v124, 0, 1, v125);
    sub_20D9736F8();
    v126 = v124;
    v127 = v211;
    sub_20D7E3944(v126, &qword_27C839548, &unk_20D979C20);
    v175(v123, v127);

    v225 = v174;
    v226 = v83;
    if (v212)
    {
      sub_20D972BE8();
      a4 = v128;
    }

    v229 = -a4;
    sub_20D973708();

    v129 = v200;
    sub_20D973898();
    v225 = *(v192 + 3);
    v130 = v199;
    v131 = v214;
    sub_20D9735B8();
    v189(v129, v131);
    v132 = v198;
    v133 = v215;
    sub_20D973618();
    (v183)(v130, v133);
    v134 = v195;
    v135 = v216;
    sub_20D9735E8();
    v173(v132, v135);
    v137 = v218;
    v136 = v219;
    v171(v218, v172, v219);
    v138 = v206;
    v139 = v217;
    sub_20D9735A8();
    (v170[0])(v137, v136);
    v121(v134, v139);
    v140 = v208;
    v141 = *(v208 + 16);
    v142 = v196;
    v143 = v209;
    v141(v196, v213, v209);
    v144 = v197;
    v141(v197, v138, v143);
    v145 = v201;
    v141(v201, v142, v143);
    v146 = v202;
    v147 = *(v202 + 48);
    v141(&v145[v147], v144, v143);
    v148 = *(v140 + 32);
    v149 = v203;
    v148(v203, v145, v143);
    v148(v149 + *(v146 + 48), &v145[v147], v143);
    v150 = *(v140 + 8);
    v150(v206, v143);
    v150(v213, v143);
    v150(v144, v143);
    v150(v142, v143);
    sub_20D7D8584(v149, v210);
  }

  else
  {
    v225 = v68;
    v226 = v67;

    MEMORY[0x20F320D90](v85);
    v86 = v5 + v65[5];
    v87 = v25;
    v88 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
    v89 = sub_20D9727D8();
    v90 = v5;
    v91 = *(v89 - 8);
    (*(v91 + 16))(v24, v86 + v88, v89);
    (*(v91 + 56))(v24, 0, 1, v89);
    sub_20D7E1EF8();
    sub_20D9736F8();
    sub_20D7E3944(v24, &qword_27C839548, &unk_20D979C20);
    (*(v87 + 8))(v27, v211);

    v213 = v65;
    v92 = v90;
    v93 = (v90 + v65[8]);
    v95 = *v93;
    v94 = v93[1];
    v225 = *v93;
    v226 = v94;

    if (v212)
    {
      sub_20D972C18();
      v229 = v96;
      sub_20D973708();
      v225 = v95;
      v226 = v94;
      sub_20D972BE8();
      a4 = v97;
    }

    else
    {
      v229 = a4;
      sub_20D973708();
      v225 = v95;
      v226 = v94;
    }

    v151 = v207;
    v152 = v216;
    v229 = -a4;
    sub_20D973708();

    v153 = v191;
    sub_20D9738A8();
    v154 = v214;
    v225 = *(v92 + *(v213 + 6) + 160);
    v155 = MEMORY[0x277CE1318];
    v156 = MEMORY[0x277CBB400];
    v157 = MEMORY[0x277CE1310];
    v158 = v190;
    sub_20D9735B8();
    (*(v221 + 8))(v153, v154);
    v225 = v154;
    v226 = v155;
    v227 = v156;
    v228 = v157;
    v159 = swift_getOpaqueTypeConformance2();
    v160 = v188;
    v161 = v215;
    sub_20D973618();
    (*(v222 + 8))(v158, v161);
    v225 = v161;
    v226 = v159;
    v162 = swift_getOpaqueTypeConformance2();
    v163 = v189;
    sub_20D9735E8();
    (*(v223 + 8))(v160, v152);
    v164 = v224;
    v166 = v218;
    v165 = v219;
    (*(v224 + 104))(v218, *MEMORY[0x277CE0118], v219);
    v225 = v152;
    v226 = v162;
    swift_getOpaqueTypeConformance2();
    v167 = v184;
    v168 = v217;
    sub_20D9735A8();
    (*(v164 + 8))(v166, v165);
    (*(v151 + 8))(v163, v168);
    (*(v208 + 32))(v210, v167, v209);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6E0, &qword_20D97E198);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20D924FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[2] = a2;
  v20[3] = a3;
  v4 = sub_20D973738();
  MEMORY[0x28223BE20](v4 - 8);
  v20[1] = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D973688();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_20D9727B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9736A8();
  MEMORY[0x28223BE20](v14 - 8);
  (*(v11 + 104))(v13, *MEMORY[0x277CC9968], v10);
  v15 = a1 + *(type metadata accessor for HistoricalUsageSummaryChart(0) + 20);
  v16 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
  v17 = sub_20D9727D8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, v15 + v16, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_20D973698();
  sub_20D7E3944(v9, &qword_27C839548, &unk_20D979C20);
  (*(v11 + 8))(v13, v10);

  sub_20D973678();
  sub_20D973728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6A0, &qword_20D97E140);
  sub_20D925CF4();
  return sub_20D973988();
}

uint64_t sub_20D925334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v50 = a2;
  v2 = sub_20D9737E8();
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D973858();
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972408();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA0, &unk_20D97E150);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_20D972628();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B6A8, &qword_20D97E148);
  v49 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = swift_projectBox();
  if (sub_20D9739C8())
  {
    v22 = v50;
    v23 = *(v49 + 56);

    return v23(v22, 1, 1, v18);
  }

  else
  {
    v40 = v9;
    v41 = v20;
    v25 = v45;
    v48 = v18;
    v39 = v11;
    sub_20D9739B8();
    if ((*(v47 + 48))(v14, 1, v15) == 1)
    {
      sub_20D7E3944(v14, &qword_27C8389E8, &qword_20D9768D0);
      v26 = 1;
      v27 = v50;
      v29 = v40;
      v28 = v41;
      v30 = v46;
    }

    else
    {
      v31 = v47;
      (*(v47 + 32))(v17, v14, v15);
      swift_beginAccess();
      v32 = v44;
      (*(v44 + 16))(v8, v21, v25);
      v33 = sub_20D9723C8();
      v35 = v34;
      (*(v32 + 8))(v8, v25);
      v51 = v33;
      v52 = v35;
      sub_20D973848();
      sub_20D9737D8();
      sub_20D7E1EF8();
      v36 = v39;
      sub_20D9736C8();
      (*(v31 + 8))(v17, v15);
      v30 = v46;
      v29 = v40;
      v28 = v41;
      (*(v46 + 32))(v41, v36, v40);
      v26 = 0;
      v27 = v50;
    }

    v37 = v48;
    (*(v30 + 56))(v28, v26, 1, v29);
    sub_20D7EAF18(v28, v27, &qword_27C83B6A8, &qword_20D97E148);
    return (*(v49 + 56))(v27, 0, 1, v37);
  }
}

uint64_t sub_20D9258DC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20D974088();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B650, &qword_20D97E040);
  return sub_20D920A6C((a2 + *(v3 + 44)));
}

uint64_t sub_20D92592C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D9259AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D925A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSummaryChart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D925A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HistoricalUsageSummaryChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20D922760(a1, v2 + v6, v10, (v2 + v9), a2, v11);
}

unint64_t sub_20D925B9C()
{
  result = qword_281125078;
  if (!qword_281125078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B690, &qword_20D97E0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0D8, &unk_20D97E0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B0E0, &unk_20D97D0C0);
    sub_20D9102F0();
    sub_20D910610();
    swift_getOpaqueTypeConformance2();
    sub_20D910724();
    sub_20D910828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125078);
  }

  return result;
}

uint64_t sub_20D925CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20D972628();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D925CF4()
{
  result = qword_281125050;
  if (!qword_281125050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B6A0, &qword_20D97E140);
    sub_20D925D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125050);
  }

  return result;
}

unint64_t sub_20D925D78()
{
  result = qword_281125048;
  if (!qword_281125048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B6A8, &qword_20D97E148);
    sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150, MEMORY[0x277CBB338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125048);
  }

  return result;
}

uint64_t LollipopSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v56 = type metadata accessor for LollipopSelectionView(0);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = v2;
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B700, &qword_20D97E1B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B708, &qword_20D97E1B8);
  MEMORY[0x28223BE20](v54);
  v7 = &v53 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B710, &qword_20D97E1C0);
  MEMORY[0x28223BE20](v55);
  v60 = &v53 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B718, &qword_20D97E1C8);
  MEMORY[0x28223BE20](v58);
  v10 = &v53 - v9;
  v11 = sub_20D973D58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D90287C();
  v17 = v16;
  v18 = *(v1 + *(type metadata accessor for HistoricalUsageChart(0) + 44));
  v59 = v11;
  v57 = v12;
  if (v18 == 1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x277CDF988], v11);
  }

  else
  {
    sub_20D8EF784(v14);
  }

  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B720, &unk_20D97E1D0);
  sub_20D92640C(v1, v15, v17, v14, &v5[*(v19 + 44)]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D97A6F0;
  v21 = sub_20D974328();
  *(inited + 32) = v21;
  v22 = sub_20D974348();
  *(inited + 33) = v22;
  v23 = sub_20D974368();
  *(inited + 34) = v23;
  v24 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v21)
  {
    v24 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v22)
  {
    v24 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v23)
  {
    v24 = sub_20D974358();
  }

  sub_20D973AD8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_20D7EAF18(v5, v7, &qword_27C83B700, &qword_20D97E1B0);
  v33 = &v7[*(v54 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = sub_20D974338();
  sub_20D973AD8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v60;
  sub_20D7EAF18(v7, v60, &qword_27C83B708, &qword_20D97E1B8);
  v44 = v43 + *(v55 + 36);
  *v44 = v34;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  v45 = sub_20D974C48();
  v47 = v46;
  v48 = v63;
  sub_20D92B140(v1, v63, type metadata accessor for LollipopSelectionView);
  v49 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v50 = swift_allocObject();
  sub_20D92B0D8(v48, v50 + v49, type metadata accessor for LollipopSelectionView);
  sub_20D7EAF18(v43, v10, &qword_27C83B710, &qword_20D97E1C0);
  v51 = &v10[*(v58 + 36)];
  *v51 = sub_20D927904;
  v51[1] = v50;
  v51[2] = v45;
  v51[3] = v47;
  sub_20D7EAF18(v10, v64, &qword_27C83B718, &qword_20D97E1C8);
  return (*(v57 + 8))(v14, v59);
}

uint64_t sub_20D92640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v138 = a3;
  v135 = a5;
  v136 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v133);
  v129 = &v114 - v9;
  v10 = sub_20D974458();
  v139 = *(v10 - 8);
  v140 = v10;
  MEMORY[0x28223BE20](v10);
  v137 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B820, &qword_20D97E4A0);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v128 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B828, &qword_20D97E4A8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v134 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = &v114 - v16;
  v143 = type metadata accessor for LollipopSelectionView.TappedUsageLollipopView(0);
  v17 = MEMORY[0x28223BE20](v143);
  v121 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v114 - v19;
  v126 = sub_20D972C58();
  v125 = *(v126 - 8);
  v20 = MEMORY[0x28223BE20](v126);
  v123 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v124 = &v114 - v22;
  v23 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView(0);
  v24 = MEMORY[0x28223BE20](v23);
  v119 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v120 = &v114 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B830, &qword_20D97E4B0);
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B838, &qword_20D97E4B8);
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B840, &qword_20D97E4C0);
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B848, &qword_20D97E4C8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v127 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v114 - v39;
  v41 = type metadata accessor for LollipopSelectionView(0);
  v42 = *(a1 + *(v41 + 24));
  v141 = a1;
  v144 = v40;
  if (v42 != 1)
  {
    v43 = v41;
    v114 = v30;
    v115 = v32;
    v117 = v27;
    v118 = v33;
    v116 = v29;
    v44 = type metadata accessor for HistoricalUsageChart(0);
    v45 = v125;
    v46 = *(v125 + 16);
    v47 = a1 + *(v43 + 20);
    if (*(a1 + v44[11]) == 1)
    {
      v48 = v126;
      v46(v124, v47, v126);
      v49 = (a1 + v44[6]);
      v50 = (a1 + v44[7]);
      v51 = v35;
      if (*(v49 + 8) == 1)
      {
        if (v50[8])
        {
          sub_20D972BC8();
          v5 = v52;
          sub_20D972C18();
          v7 = fabs(v53);
          sub_20D972BE8();
          v55 = v54;
          v56 = 1;
          goto LABEL_24;
        }

LABEL_19:
        v65 = *v50;
        result = sub_20D972B28();
        if ((v65 & 0x8000000000000000) == 0)
        {
          if (v65 < *(result + 16))
          {
            v5 = *(result + 8 * v65 + 32);

            result = sub_20D972B58();
            if (v65 < *(result + 16))
            {
              v6 = *(result + 8 * v65 + 32);

              result = sub_20D972B48();
              if (v65 < *(result + 16))
              {
                goto LABEL_23;
              }

              goto LABEL_41;
            }

LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (!v50[8])
      {
        goto LABEL_19;
      }

      v65 = *v49;
      result = sub_20D972B38();
      if ((v65 & 0x8000000000000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v65 >= *(result + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v5 = *(result + 8 * v65 + 32);

      result = sub_20D972B78();
      if (v65 >= *(result + 16))
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v6 = *(result + 8 * v65 + 32);

      result = sub_20D972B68();
      v58 = *(result + 16);
      if (v65 < v58)
      {
LABEL_23:
        v7 = fabs(v6);
        v55 = *(result + 8 * v65 + 32);

        v56 = 0;
LABEL_24:
        v6 = fabs(v55);
        v67 = sub_20D904440();
        v69 = v68;
        if (qword_27C838710 != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v35 = v123;
      v51 = v126;
      v46(v123, v47, v126);
      v23 = sub_20D90EB2C();
      v48 = v57;
      v58 = (a1 + v44[7]);
      if (*(v58 + 8) == 1)
      {
        v59 = (a1 + v44[6]);
        v60 = *v59;
        v61 = *(v59 + 8);

        v62 = v45;
        if (v61)
        {
          sub_20D972BC8();
          v5 = v63;
          v64 = v143;
LABEL_29:
          v78 = v121;
          (*(v62 + 32))(v121, v35, v51);
          *(v78 + v64[5]) = 0;
          v79 = (v78 + v64[6]);
          *v79 = v23;
          v79[1] = v48;
          *(v78 + v64[7]) = v5;
          v80 = v122;
          sub_20D92B0D8(v78, v122, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
          sub_20D92B140(v80, v116, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView);
          swift_storeEnumTagMultiPayload();
          sub_20D92B1A8();
          sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView, &unk_20D97E364);
          sub_20D9741B8();
          v76 = type metadata accessor for LollipopSelectionView.TappedUsageLollipopView;
          v77 = v80;
          goto LABEL_30;
        }

        result = sub_20D972B38();
        if ((v60 & 0x8000000000000000) != 0)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v64 = v143;
        if (v60 >= *(result + 16))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_28:
        v5 = *(result + 8 * v60 + 32);

        goto LABEL_29;
      }
    }

    v62 = v45;
    v60 = *v58;

    result = sub_20D972B28();
    if ((v60 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v64 = v143;
    v45 = v118;
    v50 = &v149;
    if (v60 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  swift_storeEnumTagMultiPayload();
  sub_20D92B264();
  sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView, &unk_20D97E314);
  sub_20D9741B8();
  sub_20D7EB7E8(v35, v29, &qword_27C83B840, &qword_20D97E4C0);
  swift_storeEnumTagMultiPayload();
  sub_20D92B1A8();
  sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView, &unk_20D97E364);
  sub_20D9741B8();
  sub_20D7E3944(v35, &qword_27C83B840, &qword_20D97E4C0);
  while (1)
  {
    v145 = v136;
    v146 = v138;
    sub_20D7E1EF8();

    v81 = sub_20D9745C8();
    v83 = v82;
    v85 = v84;
    sub_20D974388();
    v87 = v139;
    v86 = v140;
    v88 = v137;
    (*(v139 + 104))(v137, *MEMORY[0x277CE0A10], v140);
    sub_20D974478();

    (*(v87 + 8))(v88, v86);
    v48 = sub_20D974558();
    v90 = v89;
    v45 = v91;

    sub_20D7EADC0(v81, v83, v85 & 1);

    v92 = *(v141 + *(type metadata accessor for HistoricalUsageChart(0) + 44));
    v93 = objc_opt_self();
    v94 = &selRef_secondaryLabelColor;
    if (!v92)
    {
      v94 = &selRef_labelColor;
    }

    v95 = [v93 *v94];
    v96 = sub_20D974888();
    v56 = v96;
    v145 = v96;
    v23 = sub_20D974518();
    v51 = v97;
    v99 = v98;
    v101 = v100;
    sub_20D7EADC0(v48, v90, v45 & 1);

    v145 = v23;
    v146 = v51;
    v102 = v99 & 1;
    LOBYTE(v147) = v99 & 1;
    v148 = v101;
    v67 = sub_20D973D58();
    sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    v69 = v142;
    if (sub_20D974FD8())
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
LABEL_25:
    v71 = qword_27C840E40;
    v70 = *algn_27C840E48;
    v72 = v119;
    (*(v45 + 32))(v119, v124, v48);
    *(v72 + v23[5]) = v56;
    *(v72 + v23[6]) = v5;
    *(v72 + v23[7]) = v7;
    *(v72 + v23[8]) = v6;
    v73 = (v72 + v23[9]);
    *v73 = v67;
    v73[1] = v69;
    v74 = (v72 + v23[10]);
    *v74 = v71;
    v74[1] = v70;
    v75 = v120;
    sub_20D92B0D8(v72, v120, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
    sub_20D92B140(v75, v115, type metadata accessor for LollipopSelectionView.ImportExportLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_20D92B264();
    sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView, &unk_20D97E314);

    sub_20D9741B8();
    sub_20D7EB7E8(v51, v116, &qword_27C83B840, &qword_20D97E4C0);
    swift_storeEnumTagMultiPayload();
    sub_20D92B1A8();
    sub_20D92B090(&qword_27C83B868, type metadata accessor for LollipopSelectionView.TappedUsageLollipopView, &unk_20D97E364);
    sub_20D9741B8();
    sub_20D7E3944(v51, &qword_27C83B840, &qword_20D97E4C0);
    v76 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView;
    v77 = v75;
LABEL_30:
    sub_20D92B2B8(v77, v76);
  }

  v103 = v129;
  (*(*(v67 - 8) + 16))(v129, v69, v67);
  v104 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
  v105 = v128;
  v106 = v133;
  sub_20D974778();
  sub_20D7E3944(v103, &qword_27C839080, &qword_20D977AC0);
  sub_20D7EADC0(v23, v51, v102);

  v145 = MEMORY[0x277CE0BD8];
  v146 = v106;
  v147 = MEMORY[0x277CE0BC8];
  v148 = v104;
  swift_getOpaqueTypeConformance2();
  v107 = v132;
  v108 = v131;
  sub_20D9747D8();
  (*(v130 + 8))(v105, v108);
  v109 = v144;
  v110 = v127;
  sub_20D7EB7E8(v144, v127, &qword_27C83B848, &qword_20D97E4C8);
  v111 = v134;
  sub_20D7EB7E8(v107, v134, &qword_27C83B828, &qword_20D97E4A8);
  v112 = v135;
  sub_20D7EB7E8(v110, v135, &qword_27C83B848, &qword_20D97E4C8);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B870, &qword_20D97E4D0);
  sub_20D7EB7E8(v111, v112 + *(v113 + 48), &qword_27C83B828, &qword_20D97E4A8);
  sub_20D7E3944(v107, &qword_27C83B828, &qword_20D97E4A8);
  sub_20D7E3944(v109, &qword_27C83B848, &qword_20D97E4C8);
  sub_20D7E3944(v111, &qword_27C83B828, &qword_20D97E4A8);
  return sub_20D7E3944(v110, &qword_27C83B848, &qword_20D97E4C8);
}

uint64_t sub_20D927508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v34 = a3;
  v35 = sub_20D973C48();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LollipopSelectionView(0);
  v7 = v6 - 8;
  v31 = *(v6 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7F8, &qword_20D97E488);
  MEMORY[0x28223BE20](v33);
  v11 = &v29 - v10;
  v12 = a2 + *(v7 + 40);
  v30 = a2;
  v13 = *(v12 + 200);
  v14 = *(sub_20D973DE8() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_20D974118();
  (*(*(v16 - 8) + 104))(&v11[v14], v15, v16);
  *v11 = v13;
  *(v11 + 1) = v13;
  v29 = *(v12 + 168);
  v17 = v29;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *&v11[*(v18 + 52)] = v17;
  *&v11[*(v18 + 56)] = 256;
  sub_20D92B140(a2, v9, type metadata accessor for LollipopSelectionView);
  v19 = v32;
  (*(v4 + 16))(v32, v36, v35);
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = v4;
  v22 = (v20 + v8 + *(v4 + 80)) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_20D92B0D8(v9, v23 + v20, type metadata accessor for LollipopSelectionView);
  (*(v21 + 32))(v23 + v22, v19, v35);
  v24 = &v11[*(v33 + 36)];
  *v24 = sub_20D92A6D8;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;

  sub_20D973C38();
  v37 = v25;
  v38 = v26;
  sub_20D92B140(v30, v9, type metadata accessor for LollipopSelectionView);
  v27 = swift_allocObject();
  sub_20D92B0D8(v9, v27 + v20, type metadata accessor for LollipopSelectionView);
  type metadata accessor for CGSize(0);
  sub_20D92AFD8();
  sub_20D92B090(&qword_27C83B220, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_20D974848();

  return sub_20D7E3944(v11, &qword_27C83B7F8, &qword_20D97E488);
}

uint64_t sub_20D927904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D927508(a1, v6, a2);
}

uint64_t sub_20D9279A0(uint64_t a1)
{
  sub_20D973C38();
  type metadata accessor for LollipopSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B818, &qword_20D97E498);
  return sub_20D974B28();
}

uint64_t sub_20D927A28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for LollipopSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B818, &qword_20D97E498);
  return sub_20D974B28();
}

double sub_20D927AA4@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20D972BC8();
  v6 = v5 < 0.0;
  v7 = (v2 + a1[6]);
  v9 = *v7;
  v8 = v7[1];
  v10 = fabs(*(v2 + a1[7]));
  LOBYTE(v7) = *(v2 + a1[5]);
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0xD000000000000010;
  *(a2 + 32) = 0x800000020D98A7F0;
  *(a2 + 40) = v7;
  *(a2 + 41) = v6 & ~v7;

  return result;
}

uint64_t sub_20D927B38@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_20D972018();
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D971FC8();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v60 - v8;
  v9 = sub_20D974458();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B390, &qword_20D97D7D0);
  MEMORY[0x28223BE20](v63);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E8, &qword_20D97E3E0);
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v60 - v17;
  if (qword_27C838738 != -1)
  {
    swift_once();
  }

  v75 = qword_27C83B6F0;
  v76 = *algn_27C83B6F8;
  sub_20D7E1EF8();

  v18 = sub_20D9745C8();
  v20 = v19;
  v22 = v21;
  v62 = v23;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v26 = *MEMORY[0x277CE0B48];
  v27 = sub_20D974538();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v24 + v25, v26, v27);
  (*(v28 + 56))(v24 + v25, 0, 1, v27);
  *v24 = swift_getKeyPath();
  *v13 = v18;
  *(v13 + 1) = v20;
  v13[16] = v22 & 1;
  *(v13 + 3) = v62;
  sub_20D974488();
  LODWORD(v62) = *MEMORY[0x277CE0A10];
  v29 = v64;
  v30 = v65;
  v61 = *(v64 + 104);
  v61(v11);
  v31 = sub_20D974478();

  v32 = *(v29 + 8);
  v32(v11, v30);
  KeyPath = swift_getKeyPath();
  v34 = &v13[*(v63 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  sub_20D9743F8();
  sub_20D92B524(&qword_27C83B3A8, &qword_27C83B390, &qword_20D97D7D0, sub_20D919DD8);
  sub_20D974708();
  sub_20D7E3944(v13, &qword_27C83B390, &qword_20D97D7D0);
  sub_20D92A060();
  sub_20D972008();
  sub_20D971FD8();
  v35 = sub_20D9745B8();
  v37 = v36;
  LOBYTE(v27) = v38;
  sub_20D974428();
  (v61)(v11, v62, v30);
  sub_20D974478();

  v32(v11, v30);
  v39 = sub_20D974558();
  v41 = v40;
  LOBYTE(v29) = v42;

  sub_20D7EADC0(v35, v37, v27 & 1);

  sub_20D9743F8();
  v43 = sub_20D9744F8();
  v45 = v44;
  LOBYTE(v35) = v46;
  v48 = v47;
  sub_20D7EADC0(v39, v41, v29 & 1);

  v75 = v43;
  v76 = v45;
  v77 = v35 & 1;
  v78 = v48;
  v49 = v71;
  sub_20D9747D8();
  sub_20D7EADC0(v43, v45, v35 & 1);

  v51 = v68;
  v50 = v69;
  v52 = *(v69 + 16);
  v53 = v74;
  v54 = v70;
  v52(v68, v74, v70);
  v55 = v72;
  sub_20D7EB7E8(v49, v72, &qword_27C838F18, &unk_20D977860);
  v56 = v73;
  v52(v73, v51, v54);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7C0, &qword_20D97E450);
  sub_20D7EB7E8(v55, v56 + *(v57 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v49, &qword_27C838F18, &unk_20D977860);
  v58 = *(v50 + 8);
  v58(v53, v54);
  sub_20D7E3944(v55, &qword_27C838F18, &unk_20D977860);
  return (v58)(v51, v54);
}

uint64_t sub_20D9282A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7A8, &qword_20D97E3D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7B0, &qword_20D97E3D8);
  sub_20D927B38(&v5[*(v6 + 44)]);
  v7 = *MEMORY[0x277CDF998];
  v8 = sub_20D973D58();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    sub_20D7EBC4C(&qword_27C83B7B8, &qword_27C83B7A8, &qword_20D97E3D0, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    sub_20D974778();
    sub_20D7E3944(v2, &qword_27C839080, &qword_20D977AC0);
    return sub_20D7E3944(v5, &qword_27C83B7A8, &qword_20D97E3D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D928514@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - v2;
  sub_20D972BE8();
  v5 = v4 > 0.0;
  sub_20D972C18();
  v7 = v6 >= 0.0;
  v8 = sub_20D974088();
  v18 = 0;
  sub_20D9288BC(v1, v7, v5, &v29);
  v24 = v34;
  v25 = v35;
  v26[0] = v36[0];
  *(v26 + 10) = *(v36 + 10);
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v19 = v29;
  v20 = v30;
  v27[5] = v34;
  v27[6] = v35;
  v28[0] = v36[0];
  *(v28 + 10) = *(v36 + 10);
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v27[0] = v29;
  v27[1] = v30;
  sub_20D7EB7E8(&v19, &v15, &qword_27C83B790, &qword_20D97E3C0);
  sub_20D7E3944(v27, &qword_27C83B790, &qword_20D97E3C0);
  *&v17[103] = v25;
  *&v17[87] = v24;
  *&v17[39] = v21;
  *&v17[23] = v20;
  *&v17[119] = v26[0];
  *&v17[129] = *(v26 + 10);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[7] = v19;
  *&v16[97] = *&v17[96];
  *&v16[113] = *&v17[112];
  *&v16[129] = *&v17[128];
  *&v16[33] = *&v17[32];
  *&v16[49] = *&v17[48];
  *&v16[65] = *&v17[64];
  *&v16[81] = *&v17[80];
  *&v16[1] = *v17;
  *&v15 = v8;
  *(&v15 + 1) = 0x402E000000000000;
  v16[0] = v18;
  v16[145] = BYTE9(v26[1]);
  *&v16[17] = *&v17[16];
  v9 = *MEMORY[0x277CDFA10];
  v10 = sub_20D973D58();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_20D92B090(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B798, &qword_20D97E3C8);
    sub_20D7EBC4C(&qword_27C83B7A0, &qword_27C83B798, &qword_20D97E3C8, MEMORY[0x277CE1138]);
    sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    sub_20D974778();
    sub_20D7E3944(v3, &qword_27C839080, &qword_20D977AC0);
    v36[1] = *&v16[112];
    v36[2] = *&v16[128];
    v37 = *&v16[144];
    v33 = *&v16[48];
    v34 = *&v16[64];
    v35 = *&v16[80];
    v36[0] = *&v16[96];
    v29 = v15;
    v30 = *v16;
    v31 = *&v16[16];
    v32 = *&v16[32];
    return sub_20D7E3944(&v29, &qword_27C83B798, &qword_20D97E3C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20D9288BC@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LollipopSelectionView.ImportExportLollipopView(0);
  v8 = *(a1 + v7[5]);
  if (v8 != 1)
  {
    v37 = 0;
    v38 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v10 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = (a1 + v7[9]);
    v39 = *v15;
    v12 = *(a1 + v7[7]);
    v36 = 0x800000020D98A7F0;
    v11 = v15[1];

    v14 = 1;
    v13 = 0xD000000000000010;
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (qword_27C838708 != -1)
  {
    swift_once();
  }

  v37 = *(a1 + v7[6]);
  v38 = qword_27C840E30;
  v41 = 0x800000020D98A830;
  v9 = *algn_27C840E38;

  v40 = 0xD000000000000013;
  v10 = 1;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v39 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v36 = 0;
  v14 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v8)
  {
    v16 = *(a1 + v7[10]);
    v17 = *(a1 + v7[8]);
    v18 = 0x800000020D98A810;
    v19 = v14;
    v20 = v13;

    v22 = v17;
    v23 = v21;
    v24 = v16;
    v13 = v20;
    v14 = v19;
    v25 = 0xD000000000000012;
    v26 = 1;
    goto LABEL_12;
  }

LABEL_11:
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v25 = 0;
  v18 = 0;
  v26 = 0;
LABEL_12:
  *a4 = v38;
  *(a4 + 8) = v9;
  v27 = v9;
  v34 = v9;
  *(a4 + 16) = v37;
  *(a4 + 24) = v40;
  *(a4 + 32) = v41;
  *(a4 + 40) = v10;
  *(a4 + 48) = v39;
  *(a4 + 56) = v11;
  v33 = v11;
  *(a4 + 64) = v12;
  *(a4 + 72) = v13;
  *(a4 + 80) = v36;
  *(a4 + 88) = v14;
  *(a4 + 96) = v24;
  *(a4 + 104) = v23;
  *(a4 + 112) = v22;
  *(a4 + 120) = v25;
  *(a4 + 128) = v18;
  *(a4 + 136) = v26;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v13;
  sub_20D929E8C(v38, v27, v37, v40, v41);
  sub_20D929E8C(v39, v33, v12, v31, v36);
  sub_20D929E8C(v28, v29, v30, v25, v18);
  sub_20D929ED0(v28, v29, v30, v25, v18);
  sub_20D929ED0(v39, v33, v12, v31, v36);

  return sub_20D929ED0(v38, v34, v37, v40, v41);
}

uint64_t sub_20D928BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3E0, &unk_20D97D8C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = (&v50 - v6);
  v56 = sub_20D974458();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B888, &qword_20D97E578);
  MEMORY[0x28223BE20](v55);
  v9 = &v50 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B890, &qword_20D97E580);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v53 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B898, &qword_20D97E588) - 8;
  v11 = MEMORY[0x28223BE20](v59);
  v61 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = &v50 - v15;
  v51 = a1;
  v16 = a1[1];
  v66 = *a1;
  v67 = v16;
  sub_20D7E1EF8();

  v17 = sub_20D9745C8();
  v19 = v18;
  LOBYTE(v16) = v20;
  v22 = v21;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3A0, &unk_20D97D7E0) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A108, &unk_20D97B230) + 28);
  v25 = *MEMORY[0x277CE0B48];
  v26 = sub_20D974538();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23 + v24, v25, v26);
  (*(v27 + 56))(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  *v9 = v17;
  *(v9 + 1) = v19;
  v9[16] = v16 & 1;
  *(v9 + 3) = v22;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8A0, &unk_20D97E590) + 36)] = 256;
  sub_20D974488();
  v28 = v54;
  v29 = v52;
  v30 = v56;
  (*(v54 + 104))(v52, *MEMORY[0x277CE0A10], v56);
  v31 = sub_20D974478();

  (*(v28 + 8))(v29, v30);
  KeyPath = swift_getKeyPath();
  v33 = &v9[*(v55 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_20D9743F8();
  sub_20D92B524(&qword_27C83B8A8, &qword_27C83B888, &qword_20D97E578, sub_20D92B5D4);
  v34 = v53;
  sub_20D974708();
  sub_20D7E3944(v9, &qword_27C83B888, &qword_20D97E578);
  v35 = v51;
  LOBYTE(v25) = *(v51 + 40);
  v36 = objc_opt_self();
  v37 = &selRef_secondaryLabelColor;
  if ((v25 & 1) == 0)
  {
    v37 = &selRef_labelColor;
  }

  v38 = [v36 *v37];
  v39 = sub_20D974888();
  v40 = v57;
  (*(v60 + 32))(v57, v34, v62);
  v41 = v58;
  *(v40 + *(v59 + 44)) = v39;
  sub_20D7EAF18(v40, v41, &qword_27C83B898, &qword_20D97E588);
  v42 = sub_20D974088();
  v43 = v63;
  *v63 = v42;
  *(v43 + 8) = 0x4010000000000000;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B3F0, &qword_20D97D8D0);
  sub_20D92924C(v35, v43 + *(v44 + 44));
  v45 = v61;
  sub_20D7EB7E8(v41, v61, &qword_27C83B898, &qword_20D97E588);
  v46 = v64;
  sub_20D7EB7E8(v43, v64, &qword_27C83B3E0, &unk_20D97D8C0);
  v47 = v65;
  sub_20D7EB7E8(v45, v65, &qword_27C83B898, &qword_20D97E588);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8B8, &unk_20D97E5A0);
  sub_20D7EB7E8(v46, v47 + *(v48 + 48), &qword_27C83B3E0, &unk_20D97D8C0);
  sub_20D7E3944(v43, &qword_27C83B3E0, &unk_20D97D8C0);
  sub_20D7E3944(v41, &qword_27C83B898, &qword_20D97E588);
  sub_20D7E3944(v46, &qword_27C83B3E0, &unk_20D97D8C0);
  return sub_20D7E3944(v45, &qword_27C83B898, &qword_20D97E588);
}

uint64_t sub_20D92924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_20D974458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D971FC8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B400, &qword_20D97D8E8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v59 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B408, &qword_20D97D8F0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v65 = &v59 - v21;
  v66 = a1;
  if (*(a1 + 41))
  {
    v60 = v3;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v22 = qword_27C840E88;
    v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v25 = *MEMORY[0x277CE1050];
    v26 = sub_20D9749F8();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    *v17 = v22;

    v27 = sub_20D974908();
    KeyPath = swift_getKeyPath();
    v29 = (v17 + *(v14 + 36));
    *v29 = KeyPath;
    v29[1] = v27;
    v30 = v17;
    v31 = v65;
    sub_20D92B660(v30, v65);
    (*(v15 + 56))(v31, 0, 1, v14);
    v3 = v60;
  }

  else
  {
    (*(v15 + 56))(&v59 - v21, 1, 1, v14);
  }

  v32 = *(v66 + 16);
  v33 = 0.1;
  if (v32 >= 10.0)
  {
    v33 = 1.0;
  }

  sub_20D88D380(0, v9, v32, *&v33);
  v34 = sub_20D9745B8();
  v36 = v35;
  v38 = v37;
  sub_20D974428();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  sub_20D974478();

  (*(v4 + 8))(v6, v3);
  v39 = sub_20D974558();
  v41 = v40;
  v43 = v42;

  sub_20D7EADC0(v34, v36, v38 & 1);

  sub_20D9743F8();
  v44 = sub_20D9744F8();
  v46 = v45;
  LOBYTE(v36) = v47;
  v49 = v48;
  sub_20D7EADC0(v39, v41, v43 & 1);

  v69 = v44;
  v70 = v46;
  v71 = v36 & 1;
  v72 = v49;
  v50 = *(v66 + 24);
  v51 = *(v66 + 32);
  v67 = 0xD000000000000015;
  v68 = 0x800000020D98A930;
  MEMORY[0x20F323340](v50, v51);

  MEMORY[0x20F323340](0xD000000000000014, 0x800000020D98A950);

  v52 = v62;
  sub_20D9747D8();

  sub_20D7EADC0(v44, v46, v36 & 1);

  v53 = v65;
  v54 = v61;
  sub_20D7EB7E8(v65, v61, &qword_27C83B408, &qword_20D97D8F0);
  v55 = v63;
  sub_20D7EB7E8(v52, v63, &qword_27C838F18, &unk_20D977860);
  v56 = v64;
  sub_20D7EB7E8(v54, v64, &qword_27C83B408, &qword_20D97D8F0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B410, &qword_20D97D8F8);
  sub_20D7EB7E8(v55, v56 + *(v57 + 48), &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v52, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v53, &qword_27C83B408, &qword_20D97D8F0);
  sub_20D7E3944(v55, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v54, &qword_27C83B408, &qword_20D97D8F0);
}

uint64_t sub_20D9298E4@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v7 = *v2;
  v8[0] = v4;
  *(v8 + 10) = *(v2 + 26);
  *a2 = sub_20D974168();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B880, &unk_20D97E568);
  return sub_20D928BD4(&v7, a2 + *(v5 + 44));
}

void sub_20D929978(uint64_t a1)
{
  type metadata accessor for HistoricalUsageChart(319);
  if (v1 <= 0x3F)
  {
    sub_20D972C58();
    if (v2 <= 0x3F)
    {
      sub_20D929A24(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D929A24(uint64_t a1)
{
  if (!qword_27C83B738)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_20D974B58();
    if (!v2)
    {
      atomic_store(v1, &qword_27C83B738);
    }
  }
}

unint64_t sub_20D929A7C()
{
  result = qword_27C83B740;
  if (!qword_27C83B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B718, &qword_20D97E1C8);
    sub_20D929B34();
    sub_20D7EBC4C(&qword_27C83B760, &qword_27C83B768, &qword_20D97E268, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B740);
  }

  return result;
}

unint64_t sub_20D929B34()
{
  result = qword_27C83B748;
  if (!qword_27C83B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B710, &qword_20D97E1C0);
    sub_20D929BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B748);
  }

  return result;
}

unint64_t sub_20D929BC0()
{
  result = qword_27C83B750;
  if (!qword_27C83B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B708, &qword_20D97E1B8);
    sub_20D7EBC4C(&qword_27C83B758, &qword_27C83B700, &qword_20D97E1B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B750);
  }

  return result;
}

uint64_t sub_20D929CC0(uint64_t a1)
{
  result = sub_20D972C58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D929D90(uint64_t a1)
{
  result = sub_20D972C58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_20D929E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

double sub_20D929ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20D929F14()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D975058();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  v7 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108(v5, 0, 0, v6, v2, "title for unavailable (pending) data in chart lollipop", 54, 2);
  qword_27C83B6F0 = result;
  *algn_27C83B6F8 = v9;
  return result;
}

uint64_t sub_20D92A060()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v36 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20D975058();
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7C8, &unk_20D97E458);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839980, &qword_20D97A4D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7D0, &qword_20D97E468);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7D8, &qword_20D97E470);
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = sub_20D975038();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B7E0, &qword_20D97E478);
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = [objc_opt_self() hours];
  sub_20D92A68C();
  sub_20D971CA8();
  sub_20D975028();
  sub_20D975018();
  v37 = 24;
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D971CE8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_20D972138();
  sub_20D971C38();
  (*(v32 + 8))(v5, v34);
  sub_20D7E3944(v8, &qword_27C839980, &qword_20D97A4D0);
  (*(v28 + 8))(v10, v31);
  sub_20D7EBC4C(&qword_27C83B7F0, &qword_27C83B7D8, &qword_20D97E470, MEMORY[0x277CC87C0]);
  v21 = v29;
  sub_20D971CF8();
  (*(v30 + 8))(v14, v21);
  sub_20D975008();
  v22 = v35;

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v23 = qword_28112ABE8;
  v24 = qword_28112ABE8;
  v25 = v36;
  sub_20D9726B8();
  v26 = sub_20D975108(v22, 0, 0, v23, v25, "%1$@ is 24 and %2$@ is 72.", 26, 2);
  (*(v33 + 8))(v18, v16);
  return v26;
}

unint64_t sub_20D92A68C()
{
  result = qword_27C83B7E8;
  if (!qword_27C83B7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C83B7E8);
  }

  return result;
}

uint64_t sub_20D92A6D8()
{
  v1 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_20D973C48();

  return sub_20D9279A0(v0 + v2);
}

uint64_t objectdestroyTm_5()
{
  v41 = type metadata accessor for LollipopSelectionView(0);
  v44 = *(*(v41 - 8) + 80);
  v42 = *(*(v41 - 8) + 64);
  v43 = (v44 + 16) & ~v44;
  v45 = v0;
  v1 = v0 + v43;

  v2 = type metadata accessor for HistoricalUsageSnapshot(0);
  v3 = v2[5];
  v4 = sub_20D972628();
  v46 = *(v4 - 8);
  v5 = *(v46 + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[6], v4);
  v5(v1 + v2[7], v4);
  v5(v1 + v2[8], v4);
  v6 = v2[9];
  v7 = sub_20D971D98();
  v8 = *(*(v7 - 8) + 8);
  v8(v1 + v6, v7);
  v8(v1 + v2[10], v7);
  v9 = v2[12];
  v10 = sub_20D972E88();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = v1 + v2[13];
  v12 = sub_20D972AF8();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v14 = v13[5];
  v15 = sub_20D9727B8();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v11 + v13[7];
  v5(v16, v4);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v5(v16 + *(v17 + 36), v4);
  v18 = v11 + v13[8];
  v5(v18, v4);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v5(v18 + *(v19 + 36), v4);

  v20 = v13[11];
  v21 = *(v46 + 48);
  if (!v21(v11 + v20, 1, v4))
  {
    v5(v11 + v20, v4);
  }

  v22 = v11 + v13[13];
  v5(v22, v4);
  v5(v22 + *(v17 + 36), v4);

  v23 = v13[16];
  v24 = sub_20D9727D8();
  (*(*(v24 - 8) + 8))(v11 + v23, v24);
  v5(v1 + v2[14], v4);

  v25 = type metadata accessor for HistoricalUsageChart(0);
  v26 = v1 + v25[8];

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v5(v26 + *(v27 + 32), v4);
  v28 = v1 + v25[9];

  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v21(v28 + v29, 1, v4))
  {
    v5(v28 + v29, v4);
  }

  v5(v1 + v25[12], v4);

  v30 = v25[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_20D973D58();
    (*(*(v31 - 8) + 8))(v1 + v30, v31);
  }

  else
  {
  }

  v32 = v25[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_20D973B18();
    (*(*(v33 - 8) + 8))(v1 + v32, v33);
  }

  else
  {
  }

  v34 = v25[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_20D973D78();
    (*(*(v35 - 8) + 8))(v1 + v34, v35);
  }

  else
  {
  }

  v36 = v25[18];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v37 - 8) + 8))(v1 + v36, v37);
  v38 = *(v41 + 20);
  v39 = sub_20D972C58();
  (*(*(v39 - 8) + 8))(v1 + v38, v39);

  return MEMORY[0x2821FE8E8](v45, v43 + v42, v44 | 7);
}

uint64_t sub_20D92AF58(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for LollipopSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D927A28(a1, a2, v6);
}

unint64_t sub_20D92AFD8()
{
  result = qword_27C83B808;
  if (!qword_27C83B808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B7F8, &qword_20D97E488);
    sub_20D7EBC4C(&qword_27C83B810, &qword_27C83B800, &qword_20D97E490, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B808);
  }

  return result;
}

uint64_t sub_20D92B090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D92B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D92B140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D92B1A8()
{
  result = qword_27C83B850;
  if (!qword_27C83B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B840, &qword_20D97E4C0);
    sub_20D92B264();
    sub_20D92B090(&qword_27C83B860, type metadata accessor for LollipopSelectionView.ImportExportLollipopView, &unk_20D97E314);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B850);
  }

  return result;
}

unint64_t sub_20D92B264()
{
  result = qword_27C83B858;
  if (!qword_27C83B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B858);
  }

  return result;
}

uint64_t sub_20D92B2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20D92B32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_20D92B374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D92B3D0()
{
  result = qword_27C83B878;
  if (!qword_27C83B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B878);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6HStackVyAA05TupleC0Vy010HomeEnergyB0017LollipopSelectionC0V014SelectedAmountC0VSg_A2RtGG_s19PartialRangeThroughVyAFGQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839080, &qword_20D977AC0);
  sub_20D7EBC4C(a4, a2, a3, a5);
  sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D92B524(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D92B5D4()
{
  result = qword_27C83B8B0;
  if (!qword_27C83B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8A0, &unk_20D97E590);
    sub_20D919DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B8B0);
  }

  return result;
}

uint64_t sub_20D92B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B400, &qword_20D97D8E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20D92B6D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20D92B738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D974048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20D7EB7E8(v2, &v14 - v9, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D58();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20D975468();
    v13 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void UtilityRemoveBanner.init(utilityName:message:imageURL:removeProviderFunction:host:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v31 = a8;
  v32 = a1;
  v35 = a6;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v12 = sub_20D9744B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a3;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for UtilityRemoveBanner(0);
  v17 = a9 + v16[5];
  v37 = 1;
  sub_20D974A38();
  v18 = v39;
  v29 = v38;
  *v17 = v38;
  *(v17 + 1) = v18;
  v19 = v16[7];
  *(a9 + v19) = 2;
  v20 = (a9 + v16[8]);
  *v20 = 0;
  v20[1] = 0;
  swift_unknownObjectWeakInit();
  v38 = 0x3FF0000000000000;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  sub_20D7E6420();
  v21 = v31;
  sub_20D973B68();
  v22 = v32;
  if (!a2)
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (a2)
  {
    v23 = a2;
  }

  v24 = (a9 + v16[9]);
  v25 = (a9 + v16[10]);
  v26 = (a9 + v16[6]);
  *v26 = v22;
  v26[1] = v23;
  *(a9 + v19) = v30;
  v27 = v34;
  *v24 = v33;
  v24[1] = v27;
  v28 = v36;
  *v25 = v35;
  v25[1] = v28;
  swift_unknownObjectWeakAssign();
  if (!a2)
  {
    LOBYTE(v38) = v29;
    v39 = v18;
    v37 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
  }
}

void UtilityRemoveBanner.init(utilityName:stringMessage:imageURL:removeProviderFunction:host:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v37 = a7;
  v38 = a8;
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v31 = a10;
  v32 = a1;
  v12 = sub_20D9744B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for UtilityRemoveBanner(0);
  v17 = a9 + v16[5];
  v39 = 1;
  sub_20D974A38();
  v18 = v40;
  v19 = v41;
  *v17 = v40;
  *(v17 + 1) = v19;
  *(a9 + v16[7]) = 2;
  swift_unknownObjectWeakInit();
  v40 = 0x3FF0000000000000;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  sub_20D7E6420();
  v20 = v31;
  sub_20D973B68();
  v21 = v32;
  if (!a2)
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (a2)
  {
    v22 = a2;
  }

  v23 = (a9 + v16[8]);
  v24 = (a9 + v16[9]);
  v25 = (a9 + v16[10]);
  v26 = (a9 + v16[6]);
  *v26 = v21;
  v26[1] = v22;
  v27 = v34;
  *v23 = v33;
  v23[1] = v27;
  v28 = v36;
  *v24 = v35;
  v24[1] = v28;
  v29 = v38;
  *v25 = v37;
  v25[1] = v29;
  swift_unknownObjectWeakAssign();
  if (!a2)
  {
    LOBYTE(v40) = v18;
    v41 = v19;
    v39 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
  }
}

uint64_t UtilityRemoveBanner.init(utilityName:message:imageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a2;
  v9 = sub_20D9744B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for UtilityRemoveBanner(0);
  v15 = a6 + v14[5];
  v28 = 1;
  sub_20D974A38();
  v16 = v30;
  *v15 = v29;
  *(v15 + 1) = v16;
  v17 = v14[7];
  *(a6 + v17) = 2;
  v18 = (a6 + v14[8]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a6 + v14[9]);
  v20 = (a6 + v14[10]);
  *v20 = 0;
  v20[1] = 0;
  swift_unknownObjectWeakInit();
  v29 = 0x3FF0000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A68], v9);
  sub_20D7E6420();
  result = sub_20D973B68();
  v22 = (a6 + v14[6]);
  v23 = v25;
  *v22 = a1;
  v22[1] = v23;
  *(a6 + v17) = v13;
  v24 = v27;
  *v19 = v26;
  v19[1] = v24;
  return result;
}

uint64_t UtilityRemoveBanner.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8D0, &qword_20D97E650);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8D8, &qword_20D97E658);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8E0, &qword_20D97E660);
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v36 - v9;
  v11 = (v1 + *(type metadata accessor for UtilityRemoveBanner(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v39) = v12;
  *(&v39 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  v14 = 1;
  if (LOBYTE(v38) == 1)
  {
    sub_20D92C3F0(v4);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B8E8, &unk_20D97E668) + 36)] = 256;
    v15 = sub_20D974318();
    sub_20D973AD8();
    v16 = &v4[*(v2 + 36)];
    *v16 = v15;
    *(v16 + 1) = v17;
    *(v16 + 2) = v18;
    *(v16 + 3) = v19;
    *(v16 + 4) = v20;
    v16[40] = 0;
    sub_20D974C48();
    sub_20D973E08();
    sub_20D7EAF18(v4, v7, &qword_27C83B8D0, &qword_20D97E650);
    v21 = &v7[*(v5 + 36)];
    v22 = v44;
    *(v21 + 4) = v43;
    *(v21 + 5) = v22;
    *(v21 + 6) = v45;
    v23 = v40;
    *v21 = v39;
    *(v21 + 1) = v23;
    v24 = v42;
    *(v21 + 2) = v41;
    *(v21 + 3) = v24;
    v25 = sub_20D974C48();
    v27 = v26;
    v28 = &v10[*(v36 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
    v29 = v38 * 24.0;
    v30 = *(sub_20D973DE8() + 20);
    v31 = *MEMORY[0x277CE0118];
    v32 = sub_20D974118();
    (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
    *v28 = v29;
    v28[1] = v29;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
    sub_20D974C08();
    *(v28 + *(v33 + 56)) = 256;
    v34 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
    *v34 = v25;
    v34[1] = v27;
    sub_20D7EAF18(v7, v10, &qword_27C83B8D8, &qword_20D97E658);
    sub_20D7EAF18(v10, v37, &qword_27C83B8E0, &qword_20D97E660);
    v14 = 0;
  }

  return (*(v8 + 56))(v37, v14, 1, v36);
}

uint64_t sub_20D92C3F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B968, &qword_20D97E818);
  MEMORY[0x28223BE20](v25[0]);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B970, &qword_20D97E820);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B958, &qword_20D97E810);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_20D973D58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D92B738(v14);
  v15 = sub_20D973D38();
  (*(v12 + 8))(v14, v11);
  v16 = sub_20D974168();
  if (v15)
  {
    *v10 = v16;
    *(v10 + 1) = 0;
    v10[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B980, &qword_20D97E830);
    sub_20D92EA08(v2, &v10[*(v17 + 44)]);
    v18 = &qword_27C83B958;
    v19 = &qword_20D97E810;
    sub_20D7EB7E8(v10, v7, &qword_27C83B958, &qword_20D97E810);
    swift_storeEnumTagMultiPayload();
    v20 = MEMORY[0x277CE1198];
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818, v20);
    sub_20D9741B8();
    v21 = v10;
  }

  else
  {
    *v4 = v16;
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B978, &qword_20D97E828);
    sub_20D92F01C(v2, &v4[*(v22 + 44)]);
    v18 = &qword_27C83B968;
    v19 = &qword_20D97E818;
    sub_20D7EB7E8(v4, v7, &qword_27C83B968, &qword_20D97E818);
    swift_storeEnumTagMultiPayload();
    v23 = MEMORY[0x277CE1198];
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818, v23);
    sub_20D9741B8();
    v21 = v4;
  }

  return sub_20D7E3944(v21, v18, v19);
}

uint64_t sub_20D92C794@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839080, &qword_20D977AC0);
  MEMORY[0x28223BE20](v53);
  v62 = &v50 - v2;
  v3 = type metadata accessor for UtilityRemoveBanner(0);
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9B8, &qword_20D97E878);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9C0, &qword_20D97E880);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v50 - v7;
  v8 = sub_20D9726E8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D975058();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D975038();
  MEMORY[0x28223BE20](v14 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v15 = qword_28112ABE8;
  v16 = qword_28112ABE8;
  sub_20D9726B8();
  v17 = v16;
  v18 = sub_20D975108(v13, 0, 0, v15, v10, "%@ is the utility name", 22, 2);
  v57 = v19;
  v58 = v18;
  sub_20D974FE8();
  sub_20D9726B8();
  v20 = sub_20D975108(v13, 0, 0, v15, v10, "Remove alert button title", 25, 2);
  v55 = v21;
  v56 = v20;
  sub_20D974FE8();
  sub_20D9726B8();
  v22 = sub_20D975108(v13, 0, 0, v15, v10, "Remove alert confirmation", 25, 2);
  v24 = v23;
  sub_20D974FE8();
  sub_20D9726B8();
  v25 = sub_20D975108(v13, 0, 0, v15, v10, "Remove button title", 19, 2);
  v27 = v26;
  sub_20D9304C0(v1, &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v29 = (v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = sub_20D930524(&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v28);
  v33 = (v31 + v29);
  v34 = v57;
  *v33 = v58;
  v33[1] = v34;
  v35 = (v31 + v30);
  *v35 = v22;
  v35[1] = v24;
  v36 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
  v37 = v55;
  *v36 = v56;
  v36[1] = v37;
  MEMORY[0x28223BE20](v32);
  *(&v50 - 2) = v25;
  *(&v50 - 1) = v27;
  v38 = v60;
  sub_20D974A88();

  v39 = sub_20D9748A8();
  v40 = v61;
  *(v38 + *(v61 + 36)) = v39;
  v41 = *MEMORY[0x277CDFA10];
  v42 = sub_20D973D58();
  v43 = v62;
  (*(*(v42 - 8) + 104))(v62, v41, v42);
  sub_20D9308D4(&qword_281127030, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20D974FD8();
  if (result)
  {
    v45 = sub_20D930640();
    v46 = sub_20D7EBC4C(&qword_281126E88, &qword_27C839080, &qword_20D977AC0, MEMORY[0x277D84470]);
    v47 = v50;
    v48 = v53;
    sub_20D974778();
    sub_20D7E3944(v43, &qword_27C839080, &qword_20D977AC0);
    sub_20D7E3944(v38, &qword_27C83B9B8, &qword_20D97E878);
    v63 = v40;
    v64 = v48;
    v65 = v45;
    v66 = v46;
    swift_getOpaqueTypeConformance2();
    v49 = v52;
    sub_20D9747D8();
    return (*(v51 + 8))(v47, v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20D92CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a2;
  v39 = a3;
  v11 = type metadata accessor for UtilityRemoveBanner(0);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_2811270E0);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v36 = a4;
    v16 = a6;
    v17 = v11;
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20D7C9000, v14, v15, "Tapped 'Remove' button in Remove Provider Panel", v19, 2u);
    v20 = v19;
    a1 = v18;
    v11 = v17;
    a6 = v16;
    MEMORY[0x20F324260](v20, -1, -1);
  }

  if (*(a1 + *(v11 + 40)))
  {
    sub_20D9304C0(a1, &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_20D930524(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v24 = sub_20D975078();
    v25 = sub_20D975078();
    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    v27 = swift_allocObject();
    v27[2] = a6;
    v27[3] = a7;
    v27[4] = &unk_20D97E8A0;
    v27[5] = v23;

    v28 = sub_20D975078();
    aBlock[4] = sub_20D9307F0;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20D92B6D0;
    aBlock[3] = &block_descriptor_3;
    v29 = _Block_copy(aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:2 handler:v29];
    _Block_release(v29);

    [v26 addAction_];
    [v26 setPreferredAction_];
    if (qword_27C8383C8 != -1)
    {
      swift_once();
    }

    v32 = sub_20D975078();
    v33 = [v30 actionWithTitle:v32 style:1 handler:0];

    [v26 addAction_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      [Strong presentViewController:v26 animated:1 completion:0];
    }
  }

  return result;
}

uint64_t sub_20D92D31C()
{
  v0[2] = sub_20D9752E8();
  v0[3] = sub_20D9752D8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20D92D3C8;

  return sub_20D92D504();
}

uint64_t sub_20D92D3C8()
{

  v1 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D930AC8, v1, v0);
}

uint64_t sub_20D92D504()
{
  v1[4] = v0;
  sub_20D9752E8();
  v1[5] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_20D92D59C, v3, v2);
}

uint64_t sub_20D92D59C()
{
  v1 = v0[4];
  v2 = type metadata accessor for UtilityRemoveBanner(0);
  v0[8] = v2;
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  v0[9] = *v3;
  v0[10] = v3[1];
  if (v4)
  {

    v8 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_20D92D6F4;

    return v8();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20D92D6F4(char a1)
{
  v2 = *v1;
  *(*v1 + 97) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_20D92D81C, v4, v3);
}

uint64_t sub_20D92D81C()
{
  v1 = *(v0 + 97);

  if (v1 == 1)
  {
    v2 = *(v0 + 32) + *(*(v0 + 64) + 20);
    v3 = *(v2 + 8);
    *(v0 + 16) = *v2;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    *(v0 + 24) = v3;
    *(v0 + 96) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
    sub_20D974A58();
    sub_20D7DD774(v5, v4);
  }

  else
  {
    sub_20D7DD774(*(v0 + 72), *(v0 + 80));
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20D92D910@<X0>(uint64_t a3@<X8>)
{
  sub_20D7E1EF8();

  result = sub_20D9745C8();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_20D92D97C()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v7 = qword_28112ABE8;
  v8 = qword_28112ABE8;
  sub_20D9726B8();
  sub_20D975108(v6, 0, 0, v7, v3, "<utility name> disconnected title", 33, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20D979110;
  v10 = (v0 + *(type metadata accessor for UtilityRemoveBanner(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_20D84E340();
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;

  v13 = sub_20D9750C8();
  v15 = v14;

  v34 = v13;
  v35 = v15;
  sub_20D7E1EF8();
  v16 = sub_20D9745C8();
  v18 = v17;
  v20 = v19;
  sub_20D974388();
  sub_20D9743A8();

  v21 = sub_20D974558();
  v23 = v22;
  LOBYTE(v9) = v24;

  sub_20D7EADC0(v16, v18, v20 & 1);

  v25 = [objc_opt_self() labelColor];
  v34 = sub_20D974888();
  v26 = sub_20D974518();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_20D7EADC0(v21, v23, v9 & 1);

  v34 = v26;
  v35 = v28;
  v36 = v30 & 1;
  v37 = v32;
  sub_20D9747D8();
  sub_20D7EADC0(v26, v28, v30 & 1);

  return result;
}

uint64_t sub_20D92DCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E0, &qword_20D97E8C8);
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - v4;
  v6 = sub_20D974458();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = type metadata accessor for UtilityRemoveBanner(0);
  v14 = *(v1 + *(v13 + 28));
  if (v14 != 2)
  {
    v67 = v14 & 1;
    v68 = UtilityRemoveString.description.getter();
    v69 = v38;
    sub_20D7E1EF8();
    v39 = sub_20D9745C8();
    v65 = v10;
    v66 = a1;
    v40 = v39;
    v42 = v41;
    v63 = v12;
    v44 = v43;
    sub_20D974388();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
    sub_20D974478();
    v64 = v3;

    (*(v7 + 8))(v9, v6);
    v45 = sub_20D974558();
    v47 = v46;
    v49 = v48;

    sub_20D7EADC0(v40, v42, v44 & 1);

    v50 = [objc_opt_self() secondaryLabelColor];
    v68 = sub_20D974888();
    v51 = sub_20D974518();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_20D7EADC0(v45, v47, v49 & 1);

    v68 = v51;
    v69 = v53;
    LOBYTE(v40) = v55 & 1;
    v70 = v55 & 1;
    v71 = v57;
    v58 = v63;
    sub_20D9747D8();
    sub_20D7EADC0(v51, v53, v40);

    sub_20D7EB7E8(v58, v5, &qword_27C838F18, &unk_20D977860);
    swift_storeEnumTagMultiPayload();
    sub_20D809130();
    v36 = v66;
    sub_20D9741B8();
    v37 = v58;
    goto LABEL_5;
  }

  v15 = (v1 + *(v13 + 32));
  v16 = v15[1];
  if (v16)
  {
    v68 = *v15;
    v69 = v16;
    sub_20D7E1EF8();
    v66 = a1;

    v17 = sub_20D9745C8();
    v63 = v5;
    v64 = v3;
    v19 = v18;
    v65 = v10;
    v21 = v20;
    sub_20D974388();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
    sub_20D974478();
    v22 = v12;

    (*(v7 + 8))(v9, v6);
    v23 = sub_20D974558();
    v25 = v24;
    v27 = v26;

    sub_20D7EADC0(v17, v19, v21 & 1);

    v28 = [objc_opt_self() secondaryLabelColor];
    v68 = sub_20D974888();
    v29 = sub_20D974518();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_20D7EADC0(v23, v25, v27 & 1);

    v68 = v29;
    v69 = v31;
    v70 = v33 & 1;
    v71 = v35;
    sub_20D9747D8();
    sub_20D7EADC0(v29, v31, v33 & 1);

    sub_20D7EB7E8(v22, v63, &qword_27C838F18, &unk_20D977860);
    swift_storeEnumTagMultiPayload();
    sub_20D809130();
    v36 = v66;
    sub_20D9741B8();
    v37 = v22;
LABEL_5:
    sub_20D7E3944(v37, &qword_27C838F18, &unk_20D977860);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E8, &unk_20D97E8D0);
    return (*(*(v59 - 8) + 56))(v36, 0, 1, v59);
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9E8, &unk_20D97E8D0);
  v62 = *(*(v61 - 8) + 56);

  return v62(a1, 1, 1, v61);
}

uint64_t UtilityRemoveString.description.getter()
{
  v1 = sub_20D9726E8();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_20D975058();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v7 = qword_28112ABE8;
    v8 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v7, v3, "multiple meters error message", 29, 2);
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v10 = qword_28112ABE8;
    v11 = qword_28112ABE8;
    sub_20D9726B8();
    return sub_20D975108(v6, 0, 0, v10, v3, "disconnected message", 20, 2);
  }
}

double sub_20D92E564(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v12 = sub_20D9734F8();
  __swift_project_value_buffer(v12, qword_2811270E0);

  v13 = sub_20D9734D8();
  v14 = sub_20D975448();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_20D7F4DC8(a2, a3, &v23);
    _os_log_impl(&dword_20D7C9000, v13, v14, "alert %s tapped...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F324260](v16, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v17 = sub_20D975318();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_20D9752E8();

  v18 = sub_20D9752D8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a4;
  v19[5] = a5;
  sub_20D82D02C(0, 0, v11, &unk_20D97E8B8, v19);

  return result;
}

uint64_t sub_20D92E7BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_20D92E8CC;

  return v8();
}

uint64_t sub_20D92E8CC()
{

  v1 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D803568, v1, v0);
}

uint64_t sub_20D92EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B988, &qword_20D97E838);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B990, &qword_20D97E840);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v54 = sub_20D974B78();
  v12 = *(v54 - 8);
  v13 = MEMORY[0x28223BE20](v54);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B998, &qword_20D97E848);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v60 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A0, &unk_20D97E850);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v59 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v57 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v56 = &v50 - v31;
  sub_20D92D97C();
  v58 = v27;
  sub_20D92DCD4(v27);
  if (*(a1 + *(type metadata accessor for UtilityRemoveBanner(0) + 40)))
  {
    sub_20D974B68();
    sub_20D92C794(v11);
    v53 = v3;
    v32 = *(v12 + 16);
    v33 = v15;
    v34 = v15;
    v35 = v54;
    v32(v34, v17, v54);
    v51 = v4;
    v52 = v22;
    v36 = v55;
    sub_20D7EB7E8(v11, v55, &qword_27C83B990, &qword_20D97E840);
    v32(v6, v33, v35);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9B0, &unk_20D97E868);
    sub_20D7EB7E8(v36, &v6[*(v37 + 48)], &qword_27C83B990, &qword_20D97E840);
    sub_20D7E3944(v11, &qword_27C83B990, &qword_20D97E840);
    v38 = *(v12 + 8);
    v38(v17, v35);
    v39 = v36;
    v4 = v51;
    v22 = v52;
    sub_20D7E3944(v39, &qword_27C83B990, &qword_20D97E840);
    v38(v33, v35);
    v3 = v53;
    sub_20D7EAF18(v6, v22, &qword_27C83B988, &qword_20D97E838);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v4 + 56))(v22, v40, 1, v3);
  v42 = v56;
  v41 = v57;
  sub_20D7EB7E8(v56, v57, &qword_27C838F18, &unk_20D977860);
  v44 = v58;
  v43 = v59;
  sub_20D7EB7E8(v58, v59, &qword_27C83B9A0, &unk_20D97E850);
  v45 = v60;
  sub_20D7EB7E8(v22, v60, &qword_27C83B998, &qword_20D97E848);
  v46 = v22;
  v47 = v61;
  sub_20D7EB7E8(v41, v61, &qword_27C838F18, &unk_20D977860);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A8, &qword_20D97E860);
  sub_20D7EB7E8(v43, v47 + *(v48 + 48), &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7EB7E8(v45, v47 + *(v48 + 64), &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v46, &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v44, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v42, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v45, &qword_27C83B998, &qword_20D97E848);
  sub_20D7E3944(v43, &qword_27C83B9A0, &unk_20D97E850);
  return sub_20D7E3944(v41, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D92F01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9F0, &qword_20D97E8E0);
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v59 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9F8, &unk_20D97E8E8);
  v7 = MEMORY[0x28223BE20](v62);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F0, &unk_20D9783E0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA00, &qword_20D97E8F8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v64 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA08, &qword_20D97E900);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v66 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  *v26 = sub_20D974078();
  *(v26 + 1) = 0x402C000000000000;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA10, &qword_20D97E908);
  sub_20D92F5E0(a1, &v26[*(v27 + 44)], 37.0);
  if (*(a1 + *(type metadata accessor for UtilityRemoveBanner(0) + 40)))
  {
    sub_20D974B68();
    v28 = sub_20D974328();
    v61 = a2;
    v29 = v28;
    sub_20D973AD8();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392F8, &qword_20D9783F0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = sub_20D974348();
    sub_20D973AD8();
    v40 = &v16[*(v11 + 36)];
    *v40 = v39;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_20D92C794(v10);
    v45 = sub_20D974348();
    sub_20D973AD8();
    v46 = &v10[*(v62 + 36)];
    *v46 = v45;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    *(v46 + 3) = v49;
    *(v46 + 4) = v50;
    v46[40] = 0;
    sub_20D7EB7E8(v16, v14, &qword_27C8392F0, &unk_20D9783E0);
    v62 = v20;
    v60 = v4;
    v51 = v63;
    sub_20D7EB7E8(v10, v63, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7EB7E8(v14, v6, &qword_27C8392F0, &unk_20D9783E0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA20, &qword_20D97E920);
    sub_20D7EB7E8(v51, &v6[*(v52 + 48)], &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v10, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v16, &qword_27C8392F0, &unk_20D9783E0);
    v53 = v51;
    v4 = v60;
    a2 = v61;
    v20 = v62;
    sub_20D7E3944(v53, &qword_27C83B9F8, &unk_20D97E8E8);
    sub_20D7E3944(v14, &qword_27C8392F0, &unk_20D9783E0);
    v54 = v64;
    sub_20D7EAF18(v6, v64, &qword_27C83B9F0, &qword_20D97E8E0);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v64;
  }

  (*(v4 + 56))(v54, v55, 1, v65);
  v56 = v66;
  sub_20D7EB7E8(v26, v66, &qword_27C83BA08, &qword_20D97E900);
  sub_20D7EB7E8(v54, v20, &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7EB7E8(v56, a2, &qword_27C83BA08, &qword_20D97E900);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA18, &unk_20D97E910);
  sub_20D7EB7E8(v20, a2 + *(v57 + 48), &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7E3944(v54, &qword_27C83BA00, &qword_20D97E8F8);
  sub_20D7E3944(v26, &qword_27C83BA08, &qword_20D97E900);
  sub_20D7E3944(v20, &qword_27C83BA00, &qword_20D97E8F8);
  return sub_20D7E3944(v56, &qword_27C83BA08, &qword_20D97E900);
}

uint64_t sub_20D92F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA28, &qword_20D97E928);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA30, &unk_20D97E930);
  v11 = MEMORY[0x28223BE20](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  type metadata accessor for UtilityRemoveBanner(0);
  v30 = a1;

  sub_20D9721B8();

  sub_20D7EB7E8(v21, v19, &qword_27C838B78, &qword_20D97A5A0);
  *(swift_allocObject() + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA38, &qword_20D97E940);
  sub_20D930924(&qword_27C83BA40, &qword_27C83BA38, &qword_20D97E940, sub_20D9309A0);
  sub_20D973AA8();
  sub_20D974C48();
  sub_20D973C18();
  v22 = &v15[*(v29 + 36)];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *(v22 + 2) = v34;
  *v10 = sub_20D974168();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA58, &qword_20D97E950);
  sub_20D92FCBC(&v10[*(v24 + 44)]);
  sub_20D7EB7E8(v15, v13, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7EB7E8(v10, v8, &qword_27C83BA28, &qword_20D97E928);
  v25 = v31;
  sub_20D7EB7E8(v13, v31, &qword_27C83BA30, &unk_20D97E930);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA60, &qword_20D97E958);
  sub_20D7EB7E8(v8, v25 + *(v26 + 48), &qword_27C83BA28, &qword_20D97E928);
  sub_20D7E3944(v10, &qword_27C83BA28, &qword_20D97E928);
  sub_20D7E3944(v15, &qword_27C83BA30, &unk_20D97E930);
  sub_20D7E3944(v21, &qword_27C838B78, &qword_20D97A5A0);
  sub_20D7E3944(v8, &qword_27C83BA28, &qword_20D97E928);
  return sub_20D7E3944(v13, &qword_27C83BA30, &unk_20D97E930);
}

uint64_t sub_20D92F9E8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_20D9749C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  if (sub_20D973D28())
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v11 = sub_20D974A08();

    (*(v5 + 8))(v7, v4);
    v12 = a2 * 0.225;
    v13 = &v10[*(v8 + 36)];
    v14 = *(sub_20D973DE8() + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_20D974118();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = v12;
    v13[1] = v12;
    *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)) = 256;
    *v10 = v11;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    sub_20D930A58(v10, a1);
    return (*(v20 + 56))(a1, 0, 1, v8);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a1, 1, 1, v8);
  }
}

uint64_t sub_20D92FCBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B9A0, &unk_20D97E850);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_20D92D97C();
  sub_20D92DCD4(v7);
  sub_20D7EB7E8(v13, v11, &qword_27C838F18, &unk_20D977860);
  sub_20D7EB7E8(v7, v5, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7EB7E8(v11, a1, &qword_27C838F18, &unk_20D977860);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA68, &qword_20D97E960);
  sub_20D7EB7E8(v5, a1 + *(v14 + 48), &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v7, &qword_27C83B9A0, &unk_20D97E850);
  sub_20D7E3944(v13, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v5, &qword_27C83B9A0, &unk_20D97E850);
  return sub_20D7E3944(v11, &qword_27C838F18, &unk_20D977860);
}

HomeEnergyUI::UtilityRemoveString_optional __swiftcall UtilityRemoveString.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t type metadata accessor for UtilityRemoveBanner(uint64_t a1)
{
  result = qword_27C83B8F8;
  if (!qword_27C83B8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D92FF44()
{
  result = qword_27C83B8F0;
  if (!qword_27C83B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B8F0);
  }

  return result;
}

void sub_20D92FFC0(uint64_t a1)
{
  sub_20D7F8490(319);
  if (v1 <= 0x3F)
  {
    sub_20D930124(319, &qword_281124D80, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_20D930124(319, &qword_27C83B908, &type metadata for UtilityRemoveString, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20D930124(319, &qword_281124C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20D7E6360(319);
          if (v5 <= 0x3F)
          {
            sub_20D7E63C4(319);
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

void sub_20D930124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20D930184()
{
  result = qword_27C83B920;
  if (!qword_27C83B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8E0, &qword_20D97E660);
    sub_20D93023C();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B920);
  }

  return result;
}

unint64_t sub_20D93023C()
{
  result = qword_27C83B928;
  if (!qword_27C83B928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8D8, &qword_20D97E658);
    sub_20D9302C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B928);
  }

  return result;
}

unint64_t sub_20D9302C8()
{
  result = qword_27C83B930;
  if (!qword_27C83B930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8D0, &qword_20D97E650);
    sub_20D930354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B930);
  }

  return result;
}

unint64_t sub_20D930354()
{
  result = qword_27C83B938;
  if (!qword_27C83B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B8E8, &unk_20D97E668);
    sub_20D9303E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B938);
  }

  return result;
}

unint64_t sub_20D9303E0()
{
  result = qword_27C83B940;
  if (!qword_27C83B940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B948, &qword_20D97E808);
    v1 = MEMORY[0x277CE1198];
    sub_20D7EBC4C(&qword_27C83B950, &qword_27C83B958, &qword_20D97E810, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_27C83B960, &qword_27C83B968, &qword_20D97E818, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B940);
  }

  return result;
}

uint64_t sub_20D9304C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRemoveBanner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D930524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRemoveBanner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_20D930588()
{
  v1 = *(type metadata accessor for UtilityRemoveBanner(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_20D92CEDC(v0 + v2, v6, v7, v8, v9, v11, v12);
}

unint64_t sub_20D930640()
{
  result = qword_27C83B9C8;
  if (!qword_27C83B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83B9B8, &qword_20D97E878);
    sub_20D7EBC4C(&qword_27C83B9D0, &qword_27C83B9D8, &unk_20D97E888, MEMORY[0x277CDF028]);
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83B9C8);
  }

  return result;
}

uint64_t sub_20D930724()
{
  type metadata accessor for UtilityRemoveBanner(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D805810;

  return sub_20D92D31C();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D930814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D7EB52C;

  return sub_20D92E7BC(a1, v4, v5, v6);
}

uint64_t sub_20D9308D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D930924(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20D9309A0()
{
  result = qword_27C83BA48;
  if (!qword_27C83BA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83BA50, &qword_20D97E948);
    sub_20D7F0198();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83BA48);
  }

  return result;
}

uint64_t sub_20D930A58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA50, &qword_20D97E948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HistoricalUsageEnergyTip.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D87A568();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA70, &qword_20D97E980);
  sub_20D932380(v2, v4, v6, v8, v10, a1 + *(v11 + 44));

  LOBYTE(v4) = sub_20D974328();
  sub_20D973AD8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA78, &qword_20D97E988) + 36);
  *v20 = v4;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  LOBYTE(v4) = sub_20D974338();
  sub_20D973AD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA80, &qword_20D97E990) + 36);
  *v29 = v4;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA88, &qword_20D97E998) + 36)) = 256;
  LOBYTE(v4) = sub_20D974318();
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA90, &qword_20D97E9A0) + 36);
  *v30 = v4;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 1;
  v31 = sub_20D974C48();
  v33 = v32;
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BA98, &qword_20D97E9A8) + 36));
  type metadata accessor for HistoricalUsageEnergyTip(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  sub_20D973B78();
  v35 = *(sub_20D973DE8() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_20D974118();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = v43 * 24.0;
  v34[1] = v43 * 24.0;
  v38 = [objc_opt_self() systemOrangeColor];
  sub_20D974888();
  v39 = sub_20D974948();

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B800, &qword_20D97E490);
  *(v34 + *(v40 + 52)) = v39;
  *(v34 + *(v40 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BAA0, &qword_20D97E9B0);
  v42 = (v34 + *(result + 36));
  *v42 = v31;
  v42[1] = v33;
  return result;
}