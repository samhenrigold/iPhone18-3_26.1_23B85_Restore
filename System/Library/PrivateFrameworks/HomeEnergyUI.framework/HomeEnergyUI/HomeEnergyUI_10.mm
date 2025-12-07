uint64_t sub_20D8ECDE4@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB18, &qword_20D97C928);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  type metadata accessor for RectangularLockUtilityInfoView(0);
  v8 = UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v39);
  v9 = v42;
  if (v42 != 1)
  {
    v28 = v8;
    v11 = v40;
    v10 = v41;
    v12 = v39;
    v34 = v39;
    v35 = v40 & 1;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    PeakPeriodAttributes.variableValue.getter();
    sub_20D8EE800(v12, v11, v10, v9);
  }

  v13 = sub_20D9749A8();
  v14 = UtilityRateInfoSnapshot.peakName.getter();
  if (v15)
  {
    v39 = v14;
    v40 = v15;
    sub_20D7E1EF8();
    v16 = sub_20D9745C8();
    v18 = v17;
    v39 = v16;
    v40 = v17;
    v20 = v19 & 1;
    LOBYTE(v41) = v19 & 1;
    v42 = v21;
    v22 = v29;
    sub_20D9747D8();
    sub_20D7EADC0(v16, v18, v20);

    sub_20D8EE790(v22, v7);
    (*(v30 + 56))(v7, 0, 1, v31);
  }

  else
  {
    (*(v30 + 56))(v7, 1, 1, v31);
  }

  v23 = v32;
  sub_20D7EB7E8(v7, v32, &qword_27C83AB18, &qword_20D97C928);
  v24 = v33;
  *v33 = v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB28, &qword_20D97C940);
  sub_20D7EB7E8(v23, v24 + *(v25 + 48), &qword_27C83AB18, &qword_20D97C928);
  v26 = v24 + *(v25 + 64);
  *v26 = 0;
  v26[8] = 1;

  sub_20D7E3944(v7, &qword_27C83AB18, &qword_20D97C928);
  sub_20D7E3944(v23, &qword_27C83AB18, &qword_20D97C928);
}

uint64_t sub_20D8ED144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_20D972188();
  MEMORY[0x28223BE20](v3 - 8);
  v76 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20D972838();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D9727D8();
  MEMORY[0x28223BE20](v6 - 8);
  v69 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = v63 - v11;
  v12 = sub_20D972408();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9726E8();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D975058();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v71 = v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v63 - v23;
  v25 = sub_20D972628();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB18, &qword_20D97C928);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v63 - v33;
  v35 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView(0) + 24);
  UtilityRateInfoSnapshot.peakUntil.getter(v24);
  v78 = v26;
  v79 = v25;
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_20D7E3944(v24, &qword_27C8389E8, &qword_20D9768D0);
    v36 = 1;
  }

  else
  {
    v64 = v34;
    v65 = v32;
    v66 = v20;
    (*(v78 + 32))(v28, v24, v79);
    v37 = *(type metadata accessor for UtilityRateInfoSnapshot(0) + 36);
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v38 = qword_28112ABE8;
    sub_20D88F060(v28, v35 + v37);
    sub_20D975068();
    sub_20D9726B8();
    v39 = v38;
    v63[1] = sub_20D975108(v19, 0x617A696C61636F4CLL, 0xEB00000000656C62, v38, v16, "", 0, 2);
    v63[0] = v40;
    v41 = sub_20D972248();
    (*(*(v41 - 8) + 56))(v67, 1, 1, v41);
    v42 = v68;
    sub_20D9721F8();
    v43 = sub_20D972208();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_20D9726A8();
    v44 = v28;
    sub_20D972738();
    v45 = v70;
    sub_20D972818();
    sub_20D972178();
    v46 = v72;
    sub_20D972268();
    (*(v75 + 16))(v45, v35 + v37, v77);
    sub_20D9723F8();
    v47 = sub_20D9723C8();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D979110;
    *(inited + 32) = v47;
    *(inited + 40) = v49;
    v82 = inited;
    sub_20D95AEB8(MEMORY[0x277D84F90]);
    sub_20D9678F8(v82);

    v51 = sub_20D9750B8();
    v53 = v52;

    (*(v73 + 8))(v46, v74);
    v82 = v51;
    v83 = v53;
    sub_20D7E1EF8();
    v54 = sub_20D9745C8();
    v56 = v55;
    v82 = v54;
    v83 = v55;
    LOBYTE(v45) = v57 & 1;
    v84 = v57 & 1;
    v85 = v58;
    v59 = v71;
    sub_20D9747D8();
    sub_20D7EADC0(v54, v56, v45);

    (*(v78 + 8))(v44, v79);
    v34 = v64;
    sub_20D8EE790(v59, v64);
    v36 = 0;
    v20 = v66;
    v32 = v65;
  }

  (*(v80 + 56))(v34, v36, 1, v20);
  sub_20D7EB7E8(v34, v32, &qword_27C83AB18, &qword_20D97C928);
  v60 = v81;
  sub_20D7EB7E8(v32, v81, &qword_27C83AB18, &qword_20D97C928);
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB20, &unk_20D97C930) + 48);
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_20D7E3944(v34, &qword_27C83AB18, &qword_20D97C928);
  return sub_20D7E3944(v32, &qword_27C83AB18, &qword_20D97C928);
}

uint64_t sub_20D8EDAB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20D9726E8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D975058();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  type metadata accessor for RectangularLockUtilityInfoView(0);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v40);
  v13 = v43;
  if (v43 != 1)
  {
    v32 = v12;
    v33 = a1;
    v14 = v4;
    v16 = v41;
    v15 = v42;
    v17 = v40;
    v35 = v40;
    v36 = v41 & 1;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    PeakPeriodAttributes.variableValue.getter();
    v18 = v16;
    v4 = v14;
    v12 = v32;
    a1 = v33;
    sub_20D8EE800(v17, v18, v15, v13);
  }

  v19 = sub_20D9749A8();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v20 = qword_28112ABE8;
  v21 = qword_28112ABE8;
  sub_20D9726B8();
  v40 = sub_20D975108(v7, 0, 0, v20, v4, "Tiered Rate widget title", 24, 2);
  v41 = v22;
  sub_20D7E1EF8();
  v23 = sub_20D9745C8();
  v25 = v24;
  v40 = v23;
  v41 = v24;
  v27 = v26 & 1;
  LOBYTE(v42) = v26 & 1;
  v43 = v28;
  sub_20D9747D8();
  sub_20D7EADC0(v23, v25, v27);

  v29 = v34;
  sub_20D7EB7E8(v12, v34, &qword_27C838F18, &unk_20D977860);
  *a1 = v19;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB30, &qword_20D97C948);
  sub_20D7EB7E8(v29, a1 + *(v30 + 48), &qword_27C838F18, &unk_20D977860);

  sub_20D7E3944(v12, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v29, &qword_27C838F18, &unk_20D977860);
}

void sub_20D8EDE48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView(0) + 24);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v18);
  v4 = v21;
  if (v21 != 1)
  {
    v6 = v19;
    v5 = v20;
    v7 = v18;
    PeakPeriodAttributes.variableValue.getter();
    sub_20D8EE800(v7, v6, v5, v4);
  }

  v8 = sub_20D9749A8();
  v9 = type metadata accessor for UtilityRateInfoSnapshot(0);
  if (*(v3 + *(v9 + 40)) == 7)
  {
    v10 = 0xE200000000000000;
    v11 = 11565;
  }

  else
  {
    LOBYTE(v18) = *(v3 + *(v9 + 40));
    v11 = sub_20D967D64();
  }

  v18 = v11;
  v19 = v10;
  sub_20D7E1EF8();
  v12 = sub_20D9745C8();
  v14 = v13;
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  v16 = v15 & 1;
  *(a2 + 24) = v15 & 1;
  *(a2 + 32) = v17;

  sub_20D7DDC4C(v12, v14, v16);

  sub_20D7EADC0(v12, v14, v16);
}

uint64_t sub_20D8EDFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C8, &qword_20D97C750);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  *v5 = sub_20D974168();
  *(v5 + 1) = 0x3FE0000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9D0, &qword_20D97C758);
  sub_20D8EB818(v1, &v5[*(v6 + 44)]);
  *&v5[*(v3 + 36)] = 0;
  sub_20D8EE150();
  sub_20D974718();
  sub_20D7E3944(v5, &qword_27C83A9C8, &qword_20D97C750);
  v7 = sub_20D973DC8();
  v8 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9F0, &qword_20D97C770);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t type metadata accessor for RectangularLockUtilityInfoView(uint64_t a1)
{
  result = qword_27C83A9F8;
  if (!qword_27C83A9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D8EE150()
{
  result = qword_27C83A9D8;
  if (!qword_27C83A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9C8, &qword_20D97C750);
    sub_20D7EBC4C(&qword_27C83A9E0, &qword_27C83A9E8, &unk_20D97C760, MEMORY[0x277CE1198]);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9D8);
  }

  return result;
}

void sub_20D8EE278(uint64_t a1)
{
  sub_20D8EE31C();
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

void sub_20D8EE31C()
{
  if (!qword_281125000)
  {
    v0 = sub_20D973B28();
    if (!v1)
    {
      atomic_store(v0, &qword_281125000);
    }
  }
}

unint64_t sub_20D8EE36C()
{
  result = qword_27C83AA08;
  if (!qword_27C83AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9F0, &qword_20D97C770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9C8, &qword_20D97C750);
    sub_20D8EE150();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA08);
  }

  return result;
}

unint64_t sub_20D8EE434()
{
  result = qword_27C83AA90;
  if (!qword_27C83AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA10, &qword_20D97C7F0);
    sub_20D7EBC4C(&qword_27C83AA80, &qword_27C83AA78, &qword_20D97C858, MEMORY[0x277CE1138]);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA90);
  }

  return result;
}

unint64_t sub_20D8EE4EC()
{
  result = qword_27C83AA98;
  if (!qword_27C83AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA58, &qword_20D97C838);
    v1 = MEMORY[0x277CE14C0];
    sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840, MEMORY[0x277CE14C0]);
    sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA98);
  }

  return result;
}

unint64_t sub_20D8EE5CC()
{
  result = qword_27C83AAB0;
  if (!qword_27C83AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA20, &qword_20D97C800);
    sub_20D7EBC4C(&qword_27C83AA88, &qword_27C83AA28, &qword_20D97C808, MEMORY[0x277CE1138]);
    sub_20D8EE434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AAB0);
  }

  return result;
}

uint64_t sub_20D8EE684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973F28();
  *a1 = result;
  return result;
}

unint64_t sub_20D8EE6D8()
{
  result = qword_27C83AAF8;
  if (!qword_27C83AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F00, &qword_20D9777E8);
    sub_20D7FF1F4();
    sub_20D7EBC4C(&qword_27C83AB00, &qword_27C83AB08, &qword_20D97D780, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AAF8);
  }

  return result;
}

uint64_t sub_20D8EE790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_20D8EE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for HistoricalUsageChart(uint64_t a1)
{
  result = qword_27C83ABA0;
  if (!qword_27C83ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D8EE888(uint64_t a1)
{
  type metadata accessor for HistoricalUsageSnapshot(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_20D8EEAEC();
      if (v3 <= 0x3F)
      {
        sub_20D8EEBA0(319, &qword_27C83ABB0, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_20D8EEB3C(319);
          if (v5 <= 0x3F)
          {
            sub_20D972628();
            if (v6 <= 0x3F)
            {
              sub_20D8EEBA0(319, &qword_27C83ABC0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_20D8EEBA0(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_20D8EEBA0(319, &qword_281127058, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_20D8EEBA0(319, &qword_27C83ABC8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_20D7E63C4(319);
                      if (v11 <= 0x3F)
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

void sub_20D8EEAEC()
{
  if (!qword_281124BD8)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BD8);
    }
  }
}

void sub_20D8EEB3C(uint64_t a1)
{
  if (!qword_27C83ABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389E8, &qword_20D9768D0);
    v1 = sub_20D974B58();
    if (!v2)
    {
      atomic_store(v1, &qword_27C83ABB8);
    }
  }
}

void sub_20D8EEBA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D8EEC20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B128, &unk_20D97D130);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A130, &qword_20D97B288);
  sub_20D973648();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F78, &qword_20D97AF78);
  sub_20D8AB914();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  sub_20D973978();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

uint64_t sub_20D8EEE5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B020, &qword_20D97CEA0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  sub_20D909D58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v7, *a1, v8);
  v11 = *(v5 + 56);
  v10(&v7[v11], a1[1], v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B018, &qword_20D97CE98);
  v13 = *(v5 + 72);
  v14 = a1[2];
  v15 = *(v12 - 8);
  (*(v15 + 16))(&v7[v13], v14, v12);
  v16 = *(v9 + 32);
  v16(a2, v7, v8);
  v16(a2 + *(v5 + 56), &v7[v11], v8);
  return (*(v15 + 32))(a2 + *(v5 + 72), &v7[v13], v12);
}

uint64_t sub_20D8EF030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B010, &qword_20D97CE90);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  sub_20D909D58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v7, *a1, v8);
  v11 = *(v5 + 56);
  v10(&v7[v11], a1[1], v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE8, &qword_20D97CDB0);
  sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8, MEMORY[0x277CE01D8]);
  v13 = *(v5 + 72);
  v14 = a1[2];
  v15 = *(v12 - 8);
  (*(v15 + 16))(&v7[v13], v14, v12);
  v16 = *(v9 + 32);
  v16(a2, v7, v8);
  v16(a2 + *(v5 + 56), &v7[v11], v8);
  return (*(v15 + 32))(a2 + *(v5 + 72), &v7[v13], v12);
}

uint64_t sub_20D8EF234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B068, &qword_20D97CF20);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_20D9099DC();
  sub_20D7EB7E8(*a1, v7, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D90AE28();
  v8 = *(v5 + 56);
  sub_20D7EB7E8(a1[1], &v7[v8], &qword_27C83AE28, &qword_20D97CB70);
  v9 = *(v5 + 72);
  sub_20D7EB7E8(a1[2], &v7[v9], &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7EAF18(v7, a2, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D7EAF18(&v7[v8], a2 + *(v5 + 56), &qword_27C83AE28, &qword_20D97CB70);
  return sub_20D7EAF18(&v7[v9], a2 + *(v5 + 72), &qword_27C83AE28, &qword_20D97CB70);
}

uint64_t sub_20D8EF37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C8, &qword_20D97D0A8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D0, &unk_20D97D0B0);
  sub_20D9102F0();
  sub_20D910610();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_20D910724();
  v10 = *(v5 + 56);
  sub_20D7EB7E8(a1[1], &v7[v10], &qword_27C83B110, &unk_20D97D0F0);
  sub_20D910828();
  v11 = *(v5 + 72);
  sub_20D7EB7E8(a1[2], &v7[v11], &qword_27C83B118, &unk_20D97D100);
  (*(v9 + 32))(a2, v7, v8);
  sub_20D7EAF18(&v7[v10], a2 + *(v5 + 56), &qword_27C83B110, &unk_20D97D0F0);
  return sub_20D7EAF18(&v7[v11], a2 + *(v5 + 72), &qword_27C83B118, &unk_20D97D100);
}

uint64_t sub_20D8EF520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFB8, &qword_20D97CCB0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFB0, &qword_20D97CCA8);
  sub_20D973578();
  v9 = *a1;
  v20 = v8;
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA8, &qword_20D97CCA0);
  sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150, MEMORY[0x277CBB338]);
  v12 = *(v5 + 56);
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v7[v12], a1[1], v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D0, &qword_20D97B1F8);
  sub_20D973938();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  (*(v10 + 32))(a2, v7, v20);
  (*(v13 + 32))(a2 + *(v5 + 56), &v7[v12], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_20D8EF784@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HistoricalUsageChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 60), v9, &qword_27C838FA0, &qword_20D977960);
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

uint64_t sub_20D8EF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HistoricalUsageChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 64), v9, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973B18();
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

uint64_t sub_20D8EFB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HistoricalUsageChart(0);
  sub_20D7EB7E8(v1 + *(v10 + 68), v9, &qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D973D78();
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

uint64_t sub_20D8EFD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  type metadata accessor for HistoricalUsageChart(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  v24 = v1;
  MEMORY[0x20F322CD0](v16);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20D7E3944(v5, &qword_27C8389E8, &qword_20D9768D0);
    v17 = 1;
  }

  else
  {
    v23 = a1;
    (*(v7 + 32))(v15, v5, v6);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
    MEMORY[0x20F322CD0]();
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v19 = sub_20D974FA8();
    v20 = *(v7 + 8);
    v20(v13, v6);
    if ((v19 & 1) != 0 || (MEMORY[0x20F322CD0](v18), type metadata accessor for HistoricalUsageSnapshot(0), type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0), sub_20D972558(), v20(v10, v6), v21 = sub_20D972548(), v20(v13, v6), (v21 & 1) == 0))
    {
      v20(v15, v6);
      v17 = 1;
      a1 = v23;
    }

    else
    {
      a1 = v23;
      sub_20D972D38();
      v20(v15, v6);
      v17 = 0;
    }
  }

  return (*(v7 + 56))(a1, v17, 1, v6);
}

void sub_20D8F0118(uint64_t a1@<X8>)
{
  v2 = v1;
  v273 = a1;
  v272 = sub_20D973D58();
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v270 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_20D973818();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v260 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD0, &qword_20D97C9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v259 = &v215 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v251 = &v215 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v9 - 8);
  v247 = &v215 - v10;
  v255 = sub_20D971EA8();
  v253 = *(v255 - 8);
  v11 = MEMORY[0x28223BE20](v255);
  v246 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v252 = &v215 - v13;
  v262 = sub_20D973868();
  v257 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v254 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD8, &qword_20D97C9F8);
  MEMORY[0x28223BE20](v15 - 8);
  v284 = &v215 - v16;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  MEMORY[0x28223BE20](v235);
  v236 = &v215 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  MEMORY[0x28223BE20](v18);
  v231 = &v215 - v19;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABE0, &qword_20D97CA00);
  v221 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v220 = &v215 - v20;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABE8, &qword_20D97CA08);
  v224 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v222 = &v215 - v21;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABF0, &qword_20D97CA10);
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v225 = &v215 - v22;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABF8, &qword_20D97CA18);
  v230 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v228 = &v215 - v23;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC00, &qword_20D97CA20);
  v234 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v233 = &v215 - v24;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC08, &qword_20D97CA28);
  v238 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v278 = &v215 - v25;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC10, &qword_20D97CA30);
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v241 = &v215 - v26;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC18, &qword_20D97CA38);
  v245 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v279 = &v215 - v27;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC20, &qword_20D97CA40);
  v250 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v248 = &v215 - v28;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC28, &qword_20D97CA48);
  v258 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v282 = &v215 - v29;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC30, &qword_20D97CA50);
  v266 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v283 = &v215 - v30;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC38, &qword_20D97CA58);
  v267 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v265 = &v215 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v290 = &v215 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v304 = &v215 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v313 = (&v215 - v38);
  MEMORY[0x28223BE20](v37);
  v314 = (&v215 - v39);
  v40 = type metadata accessor for HistoricalUsageChart(0);
  v239 = *(v40 - 8);
  v41 = MEMORY[0x28223BE20](v40);
  v244 = &v215 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v42;
  MEMORY[0x28223BE20](v41);
  v274 = &v215 - v43;
  v312 = sub_20D972C58();
  isa = v312[-1].isa;
  v45 = MEMORY[0x28223BE20](v312);
  v289 = &v215 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v311 = &v215 - v47;
  v48 = sub_20D972628();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v215 = &v215 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v216 = &v215 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v288 = &v215 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v303 = &v215 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v215 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v215 - v61;
  v63 = v1 + *(v40 + 32);
  v281 = v18;
  v275 = v63;
  MEMORY[0x20F322CD0](v18);
  v64 = type metadata accessor for HistoricalUsageSnapshot(0);
  v65 = (v2 + *(v64 + 52));
  v66 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v67 = v66[7];
  v218 = v40;
  v68 = (v2 + *(v40 + 48));
  v69 = v66[11];
  v276 = v66;
  v70 = &v65[v66[16]];
  v219 = v68;
  v285 = v65;
  v71 = sub_20D8F2858(v62, &v65[v67], v68, &v65[v69], v65, v70);
  v309 = *(v49 + 8);
  v306 = v49 + 8;
  v277 = v62;
  v309(v62, v48);
  v217 = v64;
  v286 = v2;
  v72 = sub_20D972E38();
  v73 = *(v72 + 16);
  v305 = v71;
  v294 = v49;
  v302 = v73;
  if (v73)
  {
    v74 = 0;
    v299 = isa + 16;
    v293 = v49 + 16;
    v298 = (v49 + 56);
    v75 = (v49 + 48);
    v296 = (v49 + 32);
    v287 = (isa + 32);
    v301 = isa;
    v295 = (isa + 8);
    v291 = MEMORY[0x277D84F90];
    v76 = v314;
    v300 = v72;
    v297 = v60;
    v292 = v75;
    while (1)
    {
      if (v74 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v308 = (*(v301 + 80) + 32) & ~*(v301 + 80);
      v77 = *(v301 + 9);
      v310 = v74;
      v307 = v77;
      v78 = (*(v301 + 2))(v311, v72 + v308 + v77 * v74, v312);
      MEMORY[0x20F320D90](v78);
      v79 = *(v71 + 16);
      if (v79)
      {
        v80 = v294;
        v81 = v71 + ((*(v294 + 80) + 32) & ~*(v294 + 80));
        v82 = *(v294 + 16);
        v82(v314, v81, v48);
        v83 = *(v80 + 56);
        v83(v314, 0, 1, v48);
        v84 = v81 + *(v80 + 72) * (v79 - 1);
        v85 = v313;
        v82(v313, v84, v48);
        v75 = v292;
        v76 = v314;
        v83(v85, 0, 1, v48);
      }

      else
      {
        v86 = *v298;
        (*v298)(v76, 1, 1, v48);
        v86(v313, 1, 1, v48);
      }

      v87 = v304;
      sub_20D7EB7E8(v76, v304, &qword_27C8389E8, &qword_20D9768D0);
      v88 = *v75;
      v89 = (*v75)(v87, 1, v48);
      v90 = v303;
      if (v89 == 1)
      {
        sub_20D972428();
        v91 = v88(v87, 1, v48);
        v92 = v297;
        if (v91 != 1)
        {
          sub_20D7E3944(v87, &qword_27C8389E8, &qword_20D9768D0);
        }
      }

      else
      {
        (*v296)(v303, v87, v48);
        v92 = v297;
      }

      sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v93 = v90;
      v94 = sub_20D974FA8();
      v95 = v93;
      v96 = v309;
      v309(v95, v48);
      if (v94)
      {
        sub_20D7E3944(v313, &qword_27C8389E8, &qword_20D9768D0);
        v76 = v314;
        sub_20D7E3944(v314, &qword_27C8389E8, &qword_20D9768D0);
        v96(v92, v48);
      }

      else
      {
        v97 = v290;
        sub_20D7EB7E8(v313, v290, &qword_27C8389E8, &qword_20D9768D0);
        if (v88(v97, 1, v48) == 1)
        {
          v98 = v288;
          sub_20D972448();
          if (v88(v97, 1, v48) != 1)
          {
            sub_20D7E3944(v97, &qword_27C8389E8, &qword_20D9768D0);
          }
        }

        else
        {
          v98 = v288;
          (*v296)(v288, v97, v48);
        }

        v99 = v98;
        v100 = sub_20D974FA8();
        v101 = v99;
        v102 = v309;
        v309(v101, v48);
        sub_20D7E3944(v313, &qword_27C8389E8, &qword_20D9768D0);
        v76 = v314;
        sub_20D7E3944(v314, &qword_27C8389E8, &qword_20D9768D0);
        v102(v92, v48);
        if ((v100 & 1) == 0)
        {
          v103 = *v287;
          (*v287)(v289, v311, v312);
          v104 = v291;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v316 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20D95D484(0, *(v104 + 16) + 1, 1);
            v104 = v316;
          }

          v107 = *(v104 + 16);
          v106 = *(v104 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_20D95D484((v106 > 1), v107 + 1, 1);
            v104 = v316;
          }

          *(v104 + 16) = v107 + 1;
          v291 = v104;
          v103(v104 + v308 + v107 * v307, v289, v312);
          v71 = v305;
          v76 = v314;
          goto LABEL_5;
        }
      }

      (*v295)(v311, v312);
      v71 = v305;
LABEL_5:
      v74 = (v310 + 1);
      v72 = v300;
      if (v302 == (v310 + 1))
      {
        goto LABEL_26;
      }
    }
  }

  v291 = MEMORY[0x277D84F90];
LABEL_26:

  if (qword_281125088 != -1)
  {
LABEL_36:
    swift_once();
  }

  v108 = sub_20D9734F8();
  __swift_project_value_buffer(v108, qword_28112AB78);
  v109 = v274;
  sub_20D91092C(v286, v274, type metadata accessor for HistoricalUsageChart);
  swift_retain_n();

  v110 = sub_20D9734D8();
  v111 = sub_20D975448();

  v112 = os_log_type_enabled(v110, v111);
  v113 = v294;
  if (!v112)
  {

    v134 = sub_20D9098E0(v109);
LABEL_34:
    v314 = &v215;
    MEMORY[0x28223BE20](v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC40, &qword_20D97CA60);
    sub_20D909948();
    v139 = v220;
    sub_20D973878();

    sub_20D9742D8();
    v140 = sub_20D7EBC4C(&qword_27C83AE38, &qword_27C83ABE0, &qword_20D97CA00, MEMORY[0x277CBB3F8]);
    v141 = v222;
    v142 = v223;
    sub_20D974688();
    (*(v221 + 8))(v139, v142);
    v321 = *&v285[v276[6]];
    v316 = v142;
    v317 = v140;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v144 = MEMORY[0x277D839F8];
    v145 = MEMORY[0x277D83A38];
    v146 = v225;
    v147 = v226;
    v148 = MEMORY[0x277CBB590];
    sub_20D974698();
    (*(v224 + 8))(v141, v147);
    v149 = v231;
    sub_20D974B48();
    v316 = v147;
    v317 = v144;
    v318 = OpaqueTypeConformance2;
    v319 = v148;
    v320 = v145;
    v150 = swift_getOpaqueTypeConformance2();
    v151 = MEMORY[0x277CBB1E8];
    v152 = v228;
    v153 = v229;
    sub_20D974678();
    sub_20D7E3944(v149, &qword_27C83AB88, &unk_20D97C960);
    (*(v227 + 8))(v146, v153);
    v154 = v236;
    sub_20D974B48();
    v316 = v153;
    v317 = v48;
    v318 = v150;
    v319 = v151;
    v155 = swift_getOpaqueTypeConformance2();
    v156 = v233;
    v157 = v232;
    sub_20D974668();
    sub_20D7E3944(v154, &qword_27C83AB90, &unk_20D97D270);
    (*(v230 + 8))(v152, v157);
    v311 = sub_20D9739E8();
    v158 = *(v311 - 1);
    v310 = *(v158 + 56);
    v312 = (v158 + 56);
    v159 = v284;
    (v310)();
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
    v316 = v157;
    v317 = v48;
    v318 = v155;
    v319 = v151;
    v308 = swift_getOpaqueTypeConformance2();
    v160 = sub_20D90AF8C(&qword_281124C38, &qword_27C83A698, &qword_20D97CB80);
    v161 = v237;
    sub_20D974618();
    sub_20D7E3944(v159, &qword_27C83ABD8, &qword_20D97C9F8);
    (*(v234 + 8))(v156, v161);
    v162 = sub_20D9727D8();
    (*(*(v162 - 8) + 56))(v247, 1, 1, v162);
    v163 = sub_20D972838();
    (*(*(v163 - 8) + 56))(v251, 1, 1, v163);
    v164 = v252;
    sub_20D971E98();
    v165 = v246;
    sub_20D8F93B8();
    v166 = v259;
    sub_20D973798();
    v167 = *(v253 + 8);
    v168 = v165;
    v169 = v255;
    v167(v168, v255);
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE40, &qword_20D97CB88);
    (*(*(v170 - 8) + 56))(v166, 0, 1, v170);
    v171 = v260;
    sub_20D973808();
    v172 = v254;
    sub_20D9737F8();
    (*(v263 + 8))(v171, v264);
    sub_20D7E3944(v166, &qword_27C83ABD0, &qword_20D97C9F0);
    v167(v164, v169);
    v316 = v161;
    v317 = v313;
    v318 = v308;
    v319 = v160;
    v308 = swift_getOpaqueTypeConformance2();
    v173 = sub_20D911038(&qword_27C83AE48, MEMORY[0x277CBB3E8], MEMORY[0x277CBB3E0]);
    v174 = v241;
    v175 = v240;
    v176 = v262;
    v177 = v278;
    sub_20D9746A8();
    (*(v257 + 8))(v172, v176);
    (*(v238 + 8))(v177, v175);
    MEMORY[0x20F322CD0](v281);
    v178 = v270;
    v179 = sub_20D8EF784(v270);
    v313 = &v215;
    MEMORY[0x28223BE20](v179);
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE50, &qword_20D97CB90);
    v316 = v175;
    v317 = v176;
    v318 = v308;
    v319 = v173;
    v181 = swift_getOpaqueTypeConformance2();
    v182 = sub_20D7EBC4C(&qword_27C83AE58, &qword_27C83AE50, &qword_20D97CB90, MEMORY[0x277CBB460]);
    v183 = v243;
    sub_20D9745E8();

    v309(v277, v48);
    (*(v271 + 8))(v178, v272);
    (*(v242 + 8))(v174, v183);
    v315 = *&v285[v276[14]];
    v184 = v284;
    (v310)(v284, 1, 1, v311);
    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE60, &qword_20D97CB98);
    v316 = v183;
    v317 = v180;
    v318 = v181;
    v319 = v182;
    v186 = swift_getOpaqueTypeConformance2();
    v187 = sub_20D90AF8C(&qword_281124C30, &qword_27C83AE60, &qword_20D97CB98);
    v188 = v248;
    v189 = v249;
    v190 = v279;
    sub_20D974628();
    sub_20D7E3944(v184, &qword_27C83ABD8, &qword_20D97C9F8);
    v191 = (*(v245 + 8))(v190, v189);
    v312 = &v215;
    MEMORY[0x28223BE20](v191);
    v192 = v286;
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE68, &qword_20D97CBA0);
    v316 = v189;
    v317 = v185;
    v318 = v186;
    v319 = v187;
    v193 = swift_getOpaqueTypeConformance2();
    v194 = sub_20D90AFFC();
    v195 = v256;
    sub_20D9745F8();
    (*(v250 + 8))(v188, v195);
    v311 = type metadata accessor for HistoricalUsageChart;
    v196 = v244;
    sub_20D91092C(v192, v244, type metadata accessor for HistoricalUsageChart);
    v197 = (*(v239 + 80) + 16) & ~*(v239 + 80);
    v198 = swift_allocObject();
    v310 = type metadata accessor for HistoricalUsageChart;
    sub_20D910994(v196, v198 + v197, type metadata accessor for HistoricalUsageChart);
    sub_20D974C48();
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEB0, &qword_20D97CBC0);
    v316 = v195;
    v317 = v309;
    v318 = v193;
    v319 = v194;
    v200 = swift_getOpaqueTypeConformance2();
    v201 = sub_20D90B1EC();
    v202 = v261;
    v203 = v282;
    sub_20D974658();

    (*(v258 + 8))(v203, v202);
    sub_20D974C38();
    v309 = v204;
    sub_20D91092C(v286, v196, v311);
    v205 = swift_allocObject();
    sub_20D910994(v196, v205 + v197, v310);
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AED0, &qword_20D97CBD0);
    v316 = v202;
    v317 = v199;
    v318 = v200;
    v319 = v201;
    v207 = swift_getOpaqueTypeConformance2();
    v208 = sub_20D7EBC4C(&qword_27C83AED8, &qword_27C83AED0, &qword_20D97CBD0, MEMORY[0x277CE14C0]);
    v209 = v265;
    v210 = v268;
    v211 = v283;
    sub_20D974638();

    (*(v266 + 8))(v211, v210);
    v316 = v210;
    v317 = v206;
    v318 = v207;
    v319 = v208;
    swift_getOpaqueTypeConformance2();
    v212 = v273;
    v213 = v269;
    sub_20D9747D8();
    (*(v267 + 8))(v209, v213);
    v214 = v212 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEE0, &qword_20D97CBD8) + 36);
    *v214 = 0x4004000000000000;
    *(v214 + 8) = 0;
    return;
  }

  LODWORD(v314) = v111;
  v114 = swift_slowAlloc();
  v313 = swift_slowAlloc();
  v316 = v313;
  *v114 = 136315906;
  v115 = sub_20D972AE8();
  v117 = v116;
  sub_20D9098E0(v109);
  v118 = sub_20D7F4DC8(v115, v117, &v316);

  *(v114 + 4) = v118;
  *(v114 + 12) = 2080;
  v119 = *(v71 + 16);
  if (!v119)
  {
    v131 = 7104878;
    v133 = 0xE300000000000000;
    v135 = sub_20D7F4DC8(7104878, 0xE300000000000000, &v316);

    *(v114 + 14) = v135;
    *(v114 + 22) = 2080;
    goto LABEL_33;
  }

  v312 = v110;
  v120 = *(v113 + 16);
  v121 = v71 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  v122 = v216;
  v311 = v120;
  (v120)(v216, v121, v48);
  v123 = sub_20D972418();
  v125 = v124;
  v126 = v122;
  v127 = v309;
  v309(v126, v48);
  v128 = sub_20D7F4DC8(v123, v125, &v316);

  *(v114 + 14) = v128;
  *(v114 + 22) = 2080;
  if (v119 <= *(v71 + 16))
  {
    v129 = v121 + *(v294 + 72) * (v119 - 1);
    v130 = v215;
    (v311)(v215, v129, v48);
    v131 = sub_20D972418();
    v133 = v132;
    v127(v130, v48);
    v110 = v312;
LABEL_33:
    v136 = sub_20D7F4DC8(v131, v133, &v316);

    *(v114 + 24) = v136;
    *(v114 + 32) = 2048;
    v137 = *(v291 + 16);

    *(v114 + 34) = v137;

    _os_log_impl(&dword_20D7C9000, v110, v314, "BODY: %s: viewport range: %s...%s containing %ld usages", v114, 0x2Au);
    v138 = v313;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v138, -1, -1);
    MEMORY[0x20F324260](v114, -1, -1);

    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_20D8F2858(char *a1, char *a2, char *a3, uint64_t a4, unsigned int (*a5)(void, void, void), uint64_t a6)
{
  v265 = a6;
  v243 = a4;
  v234 = a3;
  v249 = a2;
  v258 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v240 = (&v224 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v253 = &v224 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v250 = (&v224 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v227 = &v224 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v233 = &v224 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v237 = &v224 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v247 = &v224 - v21;
  MEMORY[0x28223BE20](v20);
  v257 = &v224 - v22;
  v23 = sub_20D972AF8();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v235 = &v224 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v224 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v224 - v30;
  v260 = sub_20D972628();
  v262 = *(v260 - 8);
  v32 = MEMORY[0x28223BE20](v260);
  v238 = (&v224 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v239 = &v224 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v248 = &v224 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v251 = &v224 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v252 = (&v224 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v228 = &v224 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v225 = &v224 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v226 = &v224 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v232 = &v224 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v236 = &v224 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v230 = &v224 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v229 = &v224 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v241 = &v224 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v246 = &v224 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v245 = &v224 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v244 = &v224 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v254 = &v224 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v224 - v66;
  v68 = sub_20D9727B8();
  v69 = *(v68 - 8);
  v70 = MEMORY[0x28223BE20](v68);
  v256 = &v224 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v74 = &v224 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v224 - v75;
  v77 = *(v24 + 16);
  v259 = a5;
  v77(v31, a5, v23);
  v78 = (*(v24 + 88))(v31, v23);
  v79 = *MEMORY[0x277D075B0];
  v261 = v68;
  v263 = v76;
  v264 = v69;
  v231 = v79;
  if (v78 == v79)
  {
    v80 = MEMORY[0x277D075D0];
    v81 = *(v69 + 104);
    v81(v76, *MEMORY[0x277CC9980], v68);
    v82 = *MEMORY[0x277CC9968];
    v255 = v81;
    v81(v74, v82, v68);
    sub_20D972718();
    v242 = sub_20D90D470;
    v83 = v67;
  }

  else
  {
    if (v78 == *MEMORY[0x277D075B8])
    {
      v80 = MEMORY[0x277D075D0];
      v84 = *(v264 + 104);
      v84(v263, *MEMORY[0x277CC9968], v68);
      v85 = *MEMORY[0x277CC9940];
      v255 = v84;
      v84(v74, v85, v68);
      v83 = v67;
      sub_20D973098();
      v86 = sub_20D90D450;
    }

    else if (v78 == *MEMORY[0x277D075C8])
    {
      v80 = MEMORY[0x277D075D0];
      v87 = *(v264 + 104);
      v87(v263, *MEMORY[0x277CC9968], v68);
      v88 = *MEMORY[0x277CC9998];
      v255 = v87;
      v87(v74, v88, v68);
      v83 = v67;
      sub_20D972FF8();
      v86 = sub_20D9110D8;
    }

    else if (v78 == *MEMORY[0x277D075D0])
    {
      v80 = MEMORY[0x277D075D0];
      v89 = *(v264 + 104);
      v89(v263, *MEMORY[0x277CC9940], v68);
      v90 = *MEMORY[0x277CC99A0];
      v255 = v89;
      v89(v74, v90, v68);
      v83 = v67;
      sub_20D972718();
      v86 = sub_20D9110D8;
    }

    else
    {
      if (v78 != *MEMORY[0x277D075C0])
      {
        sub_20D972718();
        (*(v262 + 8))(v67, v260);
        (*(v24 + 8))(v31, v23);
        return MEMORY[0x277D84F90];
      }

      v80 = MEMORY[0x277D075D0];
      v91 = *(v264 + 104);
      v91(v263, *MEMORY[0x277CC9998], v68);
      v92 = *MEMORY[0x277CC9988];
      v255 = v91;
      v91(v74, v92, v68);
      v83 = v67;
      sub_20D972FC8();
      v86 = sub_20D90D44C;
    }

    v242 = v86;
  }

  v93 = *(v24 + 104);
  (v93)(v29, *v80, v23);
  sub_20D911038(&qword_2811250F8, MEMORY[0x277D075D8], MEMORY[0x277D075E8]);
  v94 = sub_20D974FD8();
  v97 = *(v24 + 8);
  v96 = (v24 + 8);
  v95 = v97;
  (v97)(v29, v23);
  v98 = v257;
  if ((v94 & 1) == 0)
  {
    v224 = v23;
    v251 = v93;
    v252 = v95;
    v253 = v96;
    sub_20D972758();
    v109 = v262;
    v110 = v74;
    v112 = (v262 + 48);
    v111 = *(v262 + 48);
    v113 = v260;
    if (v111(v98, 1, v260) == 1)
    {
      sub_20D7E3944(v98, &qword_27C8389E8, &qword_20D9768D0);
      (*(v109 + 8))(v83, v113);
LABEL_21:
      v124 = *(v264 + 8);
      v125 = v261;
      v124(v110, v261);
      v126 = v263;
LABEL_22:
      v124(v126, v125);
      return MEMORY[0x277D84F90];
    }

    v121 = (v109 + 32);
    v250 = *(v109 + 32);
    v250(v254, v98, v113);
    v122 = v247;
    sub_20D972758();
    if (v111(v122, 1, v113) == 1)
    {
      sub_20D7E3944(v122, &qword_27C8389E8, &qword_20D9768D0);
      v123 = *(v109 + 8);
      v123(v254, v113);
      v123(v83, v113);
      goto LABEL_21;
    }

    v257 = v83;
    v258 = v110;
    v136 = v244;
    v250(v244, v122, v113);
    v137 = v237;
    v138 = v112;
    v139 = v263;
    sub_20D972758();
    v248 = v138;
    if (v111(v137, 1, v113) == 1)
    {
      sub_20D7E3944(v137, &qword_27C8389E8, &qword_20D9768D0);
      v140 = *(v262 + 8);
      v140(v136, v113);
      v140(v254, v113);
      v140(v257, v113);
      v124 = *(v264 + 8);
      v125 = v261;
      v124(v258, v261);
      v126 = v139;
      goto LABEL_22;
    }

    v239 = v121;
    v148 = v250;
    v250(v245, v137, v113);
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v149 = v249;
    v150 = v254;
    v151 = sub_20D974FB8();
    v152 = *(v262 + 16);
    v247 = (v262 + 16);
    v240 = v152;
    if (v151)
    {
      v153 = v246;
      v154 = v149;
    }

    else
    {
      v153 = v246;
      v154 = v150;
    }

    (v152)(v153, v154, v113);
    v163 = v234;
    v164 = v233;
    sub_20D7EB7E8(v243, v233, &qword_27C8389E8, &qword_20D9768D0);
    v165 = v111(v164, 1, v113);
    v238 = v111;
    if (v165 == 1)
    {
      sub_20D7E3944(v164, &qword_27C8389E8, &qword_20D9768D0);
      v166 = v245;
      if (sub_20D974FA8())
      {
        v167 = v241;
        v168 = v241;
        v169 = v163;
      }

      else
      {
        v169 = v166;
        v167 = v241;
        v168 = v241;
      }

      (v240)(v168, v169, v113);
    }

    else
    {
      v170 = v229;
      v148(v229, v164, v113);
      if (sub_20D974FB8())
      {
        v171 = v230;
        v172 = v230;
        v173 = v170;
      }

      else
      {
        v171 = v230;
        v172 = v230;
        v173 = v163;
      }

      (v240)(v172, v173, v113);
      v174 = v262;
      v175 = v245;
      v176 = sub_20D974FA8();
      v177 = *(v174 + 8);
      v177(v170, v113);
      if (v176)
      {
        v167 = v241;
        v148 = v250;
        v250(v241, v171, v113);
      }

      else
      {
        v177(v171, v113);
        v167 = v241;
        (v240)(v241, v175, v113);
        v148 = v250;
      }
    }

    v178 = v236;
    v179 = v232;
    sub_20D972498();
    if (sub_20D974FB8())
    {
      v148(v178, v179, v113);
    }

    else
    {
      (*(v262 + 8))(v179, v113);
      (v240)(v178, v167, v113);
    }

    v180 = v245;
    v181 = v224;
    v182 = v235;
    (v251)(v235, v231, v224);
    sub_20D911038(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
    sub_20D975208();
    sub_20D975208();
    v183 = v246;
    if (v268[0] == v266 && v268[1] == v267)
    {
      v252(v182, v181);

      v184 = v262;
      v186 = v264;
      v185 = v265;
      v187 = v241;
    }

    else
    {
      v188 = sub_20D9757C8();
      v252(v182, v181);

      v184 = v262;
      v186 = v264;
      v185 = v265;
      v187 = v241;
      if ((v188 & 1) == 0)
      {
LABEL_69:
        swift_beginAccess();
        v219 = v242(v183, v178, v185);
        v220 = *(v184 + 8);
        v221 = v260;
        v220(v178, v260);
        v220(v187, v221);
        v220(v180, v221);
        v220(v244, v221);
        v220(v254, v221);
        v220(v257, v221);
        v222 = *(v186 + 8);
        v223 = v261;
        v222(v258, v261);
        v222(v263, v223);
        v220(v183, v221);
        return v219;
      }
    }

    if (sub_20D972538())
    {
      v189 = v256;
      v190 = v261;
      v255(v256, *MEMORY[0x277CC9968], v261);
      v191 = v227;
      sub_20D972758();
      (*(v186 + 8))(v189, v190);
      v192 = v260;
      if (v238(v191, 1, v260) == 1)
      {
        sub_20D7E3944(v191, &qword_27C8389E8, &qword_20D9768D0);
        v183 = v246;
      }

      else
      {
        v193 = v191;
        v194 = v226;
        v250(v226, v193, v192);
        if (qword_281125088 != -1)
        {
          swift_once();
        }

        v195 = sub_20D9734F8();
        __swift_project_value_buffer(v195, qword_28112AB78);
        v196 = v225;
        v197 = v240;
        (v240)(v225, v236, v192);
        v197(v228, v194, v192);
        v198 = sub_20D9734D8();
        v199 = sub_20D975478();
        v200 = os_log_type_enabled(v198, v199);
        v183 = v246;
        if (v200)
        {
          v201 = swift_slowAlloc();
          v259 = swift_slowAlloc();
          v268[0] = v259;
          *v201 = 136315650;
          swift_beginAccess();
          sub_20D911038(&qword_281127730, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          LODWORD(v256) = v199;
          v202 = sub_20D9757A8();
          v204 = v186;
          v205 = sub_20D7F4DC8(v202, v203, v268);

          *(v201 + 4) = v205;
          *(v201 + 12) = 2080;
          v206 = sub_20D9757A8();
          v208 = v207;
          v209 = v228;
          v210 = *(v262 + 8);
          v210(v196, v260);
          v211 = sub_20D7F4DC8(v206, v208, v268);
          v186 = v204;
          v185 = v265;

          *(v201 + 14) = v211;
          *(v201 + 22) = 2080;
          v212 = sub_20D9757A8();
          v214 = v213;
          v210(v209, v260);
          v187 = v241;
          v183 = v246;
          v215 = sub_20D7F4DC8(v212, v214, v268);
          v194 = v226;
          v192 = v260;

          *(v201 + 24) = v215;
          _os_log_impl(&dword_20D7C9000, v198, v256, "generateViewPortDatesForScrollDate: startDate > stopDate, resetting startDate %s to 3 days before stopDate %s -> %s", v201, 0x20u);
          v216 = v259;
          swift_arrayDestroy();
          MEMORY[0x20F324260](v216, -1, -1);
          v217 = v201;
          v184 = v262;
          MEMORY[0x20F324260](v217, -1, -1);
        }

        else
        {

          v218 = *(v184 + 8);
          v218(v228, v192);
          v218(v196, v192);
        }

        v180 = v245;
        swift_beginAccess();
        (*(v184 + 40))(v183, v194, v192);
      }

      v178 = v236;
    }

    goto LABEL_69;
  }

  v258 = v74;
  v99 = *MEMORY[0x277CC9940];
  v100 = v264;
  v101 = v256;
  v102 = v261;
  v255(v256, v99, v261);
  v103 = v250;
  sub_20D972758();
  v106 = *(v100 + 8);
  v104 = v100 + 8;
  v105 = v106;
  (v106)(v101, v102);
  v107 = v262;
  v108 = v260;
  v259 = *(v262 + 48);
  if (v259(v103, 1, v260) == 1)
  {
    sub_20D7E3944(v103, &qword_27C8389E8, &qword_20D9768D0);
    (*(v107 + 8))(v83, v108);
    (v105)(v258, v102);
    (v105)(v263, v102);
    return MEMORY[0x277D84F90];
  }

  v254 = v105;
  v257 = v83;
  v264 = v104;
  v114 = v252;
  v250 = *(v107 + 32);
  v250(v252, v103, v108);
  v115 = sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v116 = v249;
  v247 = v115;
  v117 = sub_20D974FB8();
  v118 = *(v107 + 16);
  v246 = (v107 + 16);
  v245 = v118;
  if (v117)
  {
    v119 = v251;
    v120 = v116;
  }

  else
  {
    v119 = v251;
    v120 = v114;
  }

  (v118)(v119, v120, v108);
  v127 = v254;
  v128 = v256;
  v129 = v99;
  v130 = v261;
  v255(v256, v129, v261);
  v131 = v257;
  sub_20D972758();
  v132 = v253;
  v127(v128, v130);
  v133 = v259;
  v134 = v108;
  if (v259(v132, 1, v108) == 1)
  {
    sub_20D7E3944(v132, &qword_27C8389E8, &qword_20D9768D0);
    v135 = *(v262 + 8);
    v135(v251, v108);
    v135(v252, v108);
    v135(v131, v108);
    v127(v258, v130);
    v127(v263, v130);
    return MEMORY[0x277D84F90];
  }

  v141 = v250;
  v250(v248, v132, v108);
  v142 = v240;
  sub_20D7EB7E8(v243, v240, &qword_27C8389E8, &qword_20D9768D0);
  if (v133(v142, 1, v108) == 1)
  {
    v143 = v238;
    sub_20D972428();
    v144 = v133(v142, 1, v134);
    v145 = v265;
    v146 = v252;
    v147 = v239;
    if (v144 != 1)
    {
      sub_20D7E3944(v142, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    v143 = v238;
    v141(v238, v142, v134);
    v145 = v265;
    v146 = v252;
    v147 = v239;
  }

  v155 = v248;
  if (sub_20D974FB8())
  {
    v250(v147, v143, v134);
    v156 = v262;
  }

  else
  {
    v156 = v262;
    (*(v262 + 8))(v143, v134);
    (v245)(v147, v155, v134);
  }

  v157 = v251;
  v158 = v242(v251, v147, v145);
  v159 = *(v156 + 8);
  v159(v147, v134);
  v159(v155, v134);
  v159(v157, v134);
  v159(v146, v134);
  v159(v257, v134);
  v160 = v261;
  v161 = v254;
  (v254)(v258, v261);
  v161(v263, v160);
  return v158;
}

uint64_t sub_20D8F44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v136 = a4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFC0, &qword_20D97CCB8);
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v137 = &v113 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE28, &qword_20D97CB70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v135 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v134 = &v113 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v113 - v13;
  MEMORY[0x28223BE20](v12);
  v131 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD98, &qword_20D97CB20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v113 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFC8, &qword_20D97CCC0);
  MEMORY[0x28223BE20](v120);
  v119 = &v113 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACF0, &qword_20D97CAC0);
  MEMORY[0x28223BE20](v19 - 8);
  v121 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD10, &qword_20D97CAD0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v118 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &v113 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD00, &qword_20D97CAC8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v116 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v115 = &v113 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACD8, &qword_20D97CAB0);
  MEMORY[0x28223BE20](v29 - 8);
  v114 = &v113 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC78, &qword_20D97CA78);
  MEMORY[0x28223BE20](v31 - 8);
  v125 = &v113 - v32;
  v123 = sub_20D973D58();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20D973B18();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v113 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC88, &qword_20D97CA80);
  MEMORY[0x28223BE20](v42 - 8);
  v124 = &v113 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC68, &qword_20D97CA70);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v127 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v126 = &v113 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC58, &qword_20D97CA68);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v129 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v113 - v51;
  v53 = type metadata accessor for HistoricalUsageChart(0);
  v54 = v53;
  v55 = *(a1 + v53[11]);
  v138 = v52;
  if (v55 != 1)
  {
    v69 = a1 + v53[7];
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = a1 + v53[6];
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = (a1 + v53[13]);
    v76 = *(v75 + 2);
    v139 = *v75;
    v140 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
    sub_20D974A48();
    v77 = a1;
    sub_20D8F5E8C(v70, v71, v73, v74, v17);
    sub_20D7EAF18(v17, v52, &qword_27C83AD98, &qword_20D97CB20);
    v79 = v132;
    v78 = v133;
    v80 = v130;
    v81 = v131;
    goto LABEL_11;
  }

  v56 = sub_20D8F5360(a2);
  v57 = (a1 + v54[7]);
  v58 = (a1 + v54[6]);
  v59 = *v58;
  if ((v57[1] & 1) == 0)
  {
    v60 = *v57;
    if (*v57 <= 2)
    {

      MEMORY[0x28223BE20](v61);
      *(&v113 - 2) = v60;
      KeyPath = swift_getKeyPath();
      sub_20D8EF98C(v41);
      (*(v36 + 104))(v39, *MEMORY[0x277CDF3C0], v35);
      v63 = sub_20D973B08();
      v64 = *(v36 + 8);
      v64(v39, v35);
      v64(v41, v35);
      sub_20D8EF784(v34);
      LOBYTE(v64) = sub_20D973D38();
      (*(v122 + 8))(v34, v123);
      v65 = sub_20D8E5420(v63 & 1, v64 & 1, v60);
      *&v139 = 0;
      *(&v139 + 1) = 0xE000000000000000;
      sub_20D975678();
      MEMORY[0x20F323340](0xD000000000000043, 0x800000020D989F90);
      v66 = sub_20D8E52A0(v60);
      MEMORY[0x20F323340](v66);

      MEMORY[0x20F323340](0x657463656C65532ELL, 0xE900000000000064);
      v67 = v124;
      sub_20D8FE204(v128, KeyPath, v65, v139, *(&v139 + 1), v124, 0.8);

      v68 = v125;
      sub_20D7EAF18(v67, v125, &qword_27C83AC88, &qword_20D97CA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE0, &qword_20D97CD40);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v90 = v127;
      sub_20D7EAF18(v68, v127, &qword_27C83AC78, &qword_20D97CA78);
      goto LABEL_10;
    }
  }

  if ((v58[1] & 1) == 0)
  {

    MEMORY[0x28223BE20](v91);
    *(&v113 - 2) = v59;
    v92 = swift_getKeyPath();
    v93 = *(a1 + v54[10] + 16);
    v94 = sub_20D87746C();
    v95 = v114;
    sub_20D8FF500(v128, v92, v93, v94, v96, v114);

    v68 = v125;
    sub_20D7EAF18(v95, v125, &qword_27C83ACD8, &qword_20D97CAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE0, &qword_20D97CD40);
    goto LABEL_9;
  }

  v82 = v115;
  sub_20D9007DC(v128, v115);
  v83 = v117;
  sub_20D90167C(v56, v117);

  v84 = v116;
  sub_20D7EB7E8(v82, v116, &qword_27C83AD00, &qword_20D97CAC8);
  v85 = v118;
  sub_20D7EB7E8(v83, v118, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D90A034();
  v86 = v119;
  sub_20D7EB7E8(v84, v119, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D90A154();
  v87 = v120;
  v88 = *(v120 + 48);
  sub_20D7EB7E8(v85, v86 + v88, &qword_27C83AD10, &qword_20D97CAD0);
  v89 = v121;
  sub_20D7EAF18(v86, v121, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D7EAF18(v86 + v88, v89 + *(v87 + 48), &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v83, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v82, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D7E3944(v85, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v84, &qword_27C83AD00, &qword_20D97CAC8);
  v90 = v127;
  sub_20D7EAF18(v89, v127, &qword_27C83ACF0, &qword_20D97CAC0);
LABEL_10:
  v79 = v132;
  v78 = v133;
  v81 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFD8, &qword_20D97CCD0);
  swift_storeEnumTagMultiPayload();
  v97 = v90;
  v98 = v126;
  sub_20D7EAF18(v97, v126, &qword_27C83AC68, &qword_20D97CA70);
  sub_20D7EAF18(v98, v138, &qword_27C83AC68, &qword_20D97CA70);
  v80 = v130;
  v77 = a1;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFD0, &qword_20D97CCC8);
  swift_storeEnumTagMultiPayload();
  v99 = v77 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v100 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v101 = *(v99 + *(v100 + 36));
  if (v101)
  {
    v102 = v137;
    sub_20D8F8BA8(v101, 1, v137);
    (*(v80 + 32))(v81, v102, v78);
    v103 = 0;
  }

  else
  {
    v103 = 1;
  }

  v104 = *(v80 + 56);
  v105 = 1;
  v104(v81, v103, 1, v78);
  v106 = *(v99 + *(v100 + 40));
  if (v106)
  {
    v107 = v137;
    sub_20D8F8BA8(v106, 0, v137);
    (*(v80 + 32))(v79, v107, v78);
    v105 = 0;
  }

  v104(v79, v105, 1, v78);
  v108 = v138;
  v109 = v129;
  sub_20D7EB7E8(v138, v129, &qword_27C83AC58, &qword_20D97CA68);
  *&v139 = v109;
  v110 = v134;
  sub_20D7EB7E8(v81, v134, &qword_27C83AE28, &qword_20D97CB70);
  *(&v139 + 1) = v110;
  v111 = v135;
  sub_20D7EB7E8(v79, v135, &qword_27C83AE28, &qword_20D97CB70);
  v140 = v111;
  sub_20D8EF234(&v139, v136);
  sub_20D7E3944(v79, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v81, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v108, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D7E3944(v111, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v110, &qword_27C83AE28, &qword_20D97CB70);
  return sub_20D7E3944(v109, &qword_27C83AC58, &qword_20D97CA68);
}

uint64_t sub_20D8F5360(uint64_t a1)
{
  v97 = sub_20D972AF8();
  v92 = *(v97 - 1);
  v2 = MEMORY[0x28223BE20](v97);
  v87 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v91 = v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v78 - v9;
  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v88 = v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v86 = v78 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v95 = v78 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v93 = v78 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v94 = v78 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v96 = v78 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v30 = v78 - v29;
  v31 = *(a1 + 16);
  v99 = v12;
  v100 = v32;
  v98 = v78 - v29;
  v89 = v33;
  if (v31)
  {
    v34 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v84 = *(v12 + 16);
    v84(v10, v34, v11);
    v35 = v99[7];
    v35(v10, 0, 1, v11);
    v37 = v99 + 4;
    v36 = v99[4];
    v36(v98, v10, v11);
    v84(v8, v34 + v37[5] * (v31 - 1), v11);
    v35(v8, 0, 1, v11);
    v30 = v98;
    v38 = v99;
    v36(v100, v8, v11);
  }

  else
  {
    v39 = *(v12 + 56);
    v39(v10, 1, 1, v11);
    sub_20D972428();
    v40 = *(v12 + 48);
    if (v40(v10, 1, v11) != 1)
    {
      sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
    }

    v39(v8, 1, 1, v11);
    sub_20D972448();
    v41 = v40(v8, 1, v11);
    v38 = v12;
    if (v41 != 1)
    {
      sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  v42 = v85 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v43 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v78[0] = *(v43 + 20);
  v85 = v43;
  v78[1] = *(v43 + 64);
  v44 = v38[2];
  v45 = v94;
  v44(v94, v30, v11);
  v46 = v93;
  v84 = v44;
  v44(v93, v45, v11);
  v48 = v91;
  v47 = v92;
  v49 = v97;
  v82 = *(v92 + 16);
  v83 = v92 + 16;
  (v82)(v91, v42, v97);
  v81 = *(v47 + 88);
  v50 = v81(v48, v49);
  v80 = *MEMORY[0x277D075B0];
  v79 = v42;
  if (v50 == v80)
  {
    sub_20D9730E8();
    v51 = v95;
    sub_20D972498();
    v52 = v38[1];
    v52(v46, v11);
LABEL_15:
    v52(v45, v11);
    v55 = v38[4];
    v55(v46, v51, v11);
    goto LABEL_16;
  }

  if (v50 == *MEMORY[0x277D075B8] || v50 == *MEMORY[0x277D075C8])
  {
    goto LABEL_14;
  }

  if (v50 == *MEMORY[0x277D075D0])
  {
    v54 = v94;
    v53 = v95;
    sub_20D972F98();
    sub_20D973018();
    sub_20D972498();
    v52 = v38[1];
    v52(v53, v11);
    v52(v46, v11);
    v52(v54, v11);
    v55 = v38[4];
    v55(v46, v86, v11);
    goto LABEL_16;
  }

  if (v50 == *MEMORY[0x277D075C0])
  {
LABEL_14:
    v45 = v94;
    v56 = v95;
    sub_20D9730D8();
    sub_20D972458();
    v51 = v86;
    sub_20D972498();
    v52 = v38[1];
    v57 = v56;
    v46 = v93;
    v52(v57, v11);
    v52(v46, v11);
    goto LABEL_15;
  }

  v52 = v38[1];
  v52(v46, v11);
  v55 = v38[4];
  v55(v46, v94, v11);
  (*(v92 + 8))(v91, v97);
LABEL_16:
  v55(v96, v46, v11);
  v58 = v88;
  v59 = v84;
  v84(v88, v100, v11);
  v60 = v89;
  v59(v89, v58, v11);
  v61 = v87;
  v62 = v79;
  v63 = v97;
  v82(v87);
  v64 = v81(v61, v63);
  if (v64 != v80)
  {
    if (v64 != *MEMORY[0x277D075B8] && v64 != *MEMORY[0x277D075C8])
    {
      if (v64 == *MEMORY[0x277D075D0])
      {
        v68 = v95;
        sub_20D972F98();
        sub_20D973018();
        v97 = v55;
        v69 = v86;
        v70 = v58;
LABEL_24:
        sub_20D972498();
        v52(v68, v11);
        v52(v60, v11);
        v52(v70, v11);
        v71 = v69;
        v55 = v97;
        (v97)(v60, v71, v11);
        goto LABEL_25;
      }

      if (v64 != *MEMORY[0x277D075C0])
      {
        v52(v60, v11);
        v55(v60, v58, v11);
        (*(v92 + 8))(v61, v97);
        goto LABEL_25;
      }
    }

    v68 = v95;
    sub_20D9730D8();
    v70 = v58;
    sub_20D972458();
    v97 = v55;
    v69 = v86;
    goto LABEL_24;
  }

  sub_20D9730E8();
  v65 = v55;
  v66 = v95;
  sub_20D972498();
  v52(v60, v11);
  v52(v58, v11);
  v67 = v66;
  v55 = v65;
  v65(v60, v67, v11);
LABEL_25:
  v72 = v90;
  v73 = (v55)(v90, v60, v11);
  v74 = *(v62 + *(v85 + 48));
  MEMORY[0x28223BE20](v73);
  v75 = v96;
  v78[-2] = v96;
  v78[-1] = v72;

  v76 = sub_20D8A3BFC(sub_20D90D42C, &v78[-4], v74);
  v52(v100, v11);
  v52(v98, v11);
  v52(v72, v11);
  v52(v75, v11);
  return v76;
}

uint64_t sub_20D8F5E8C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a6@<X8>)
{
  LODWORD(v278) = a4;
  v246 = a3;
  LODWORD(v297) = a2;
  v306 = a1;
  v305 = a6;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B070, &qword_20D97CF28);
  MEMORY[0x28223BE20](v304);
  v303 = &v243 - v7;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B078, &qword_20D97CF30);
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v285 = &v243 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE18, &qword_20D97CB68);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v302 = &v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v301 = &v243 - v12;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B080, &qword_20D97CF38);
  MEMORY[0x28223BE20](v282);
  v281 = &v243 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADF8, &qword_20D97CB58);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v243 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE08, &qword_20D97CB60);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v280 = &v243 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v279 = &v243 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v287 = &v243 - v23;
  MEMORY[0x28223BE20](v22);
  KeyPath = &v243 - v24;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B088, &qword_20D97CF40);
  MEMORY[0x28223BE20](v254);
  v253 = &v243 - v25;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v248 = *(v249 - 1);
  MEMORY[0x28223BE20](v249);
  v247 = &v243 - v26;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADE8, &qword_20D97CB50);
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v286 = &v243 - v27;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B090, &qword_20D97CF48);
  v251 = *(v252 - 8);
  v28 = MEMORY[0x28223BE20](v252);
  v264 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v263 = &v243 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADE0, &qword_20D97CB48);
  MEMORY[0x28223BE20](v31 - 8);
  v250 = &v243 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADB8, &qword_20D97CB30);
  MEMORY[0x28223BE20](v33 - 8);
  v277 = &v243 - v34;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B098, &qword_20D97CF50);
  MEMORY[0x28223BE20](v268);
  v267 = &v243 - v35;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACB8, &qword_20D97CAA0);
  v259 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v257 = &v243 - v36;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADD0, &qword_20D97CB40);
  v260 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v258 = (&v243 - v37);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A0, &qword_20D97CF58);
  v265 = *(v266 - 8);
  v38 = MEMORY[0x28223BE20](v266);
  v284 = &v243 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v283 = &v243 - v40;
  v295 = sub_20D974118();
  v310 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v274 = &v243 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v42 - 8);
  v294 = &v243 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v293 = &v243 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v292 = &v243 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v48 - 8);
  v288 = &v243 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v50 - 8);
  v308 = &v243 - v51;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v309 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v291 = &v243 - v52;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v270 = &v243 - v53;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  v275 = *(v276 - 8);
  v54 = MEMORY[0x28223BE20](v276);
  v296 = &v243 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v311 = &v243 - v56;
  v57 = sub_20D973D58();
  v255 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v243 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20D973B18();
  v61 = *(v60 - 8);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v243 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v66 = &v243 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADC8, &qword_20D97CB38);
  MEMORY[0x28223BE20](v67 - 8);
  v256 = &v243 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADA8, &qword_20D97CB28);
  v70 = MEMORY[0x28223BE20](v69 - 8);
  v298 = &v243 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v314 = &v243 - v72;
  v269 = type metadata accessor for HistoricalUsageChart(0);
  v73 = *(v269 + 52);
  v313 = v6;
  v74 = v6 + v73;
  v75 = *(v74 + 16);
  v315 = *v74;
  v316 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  sub_20D974A48();

  v77 = sub_20D90C230(v76);

  if (!v77[2])
  {
    v82 = 0;
    v312 = 0;
    goto LABEL_13;
  }

  v78 = sub_20D8D4C18(2);
  if (v79)
  {
    v312 = *(v77[7] + 8 * v78);

    if (v77[2])
    {
      goto LABEL_4;
    }

LABEL_9:
    v82 = 0;
    goto LABEL_13;
  }

  v312 = 0;
  if (!v77[2])
  {
    goto LABEL_9;
  }

LABEL_4:
  v80 = sub_20D8D4C18(0);
  if ((v81 & 1) == 0)
  {
    v82 = 0;
    if (v77[2])
    {
      goto LABEL_11;
    }

LABEL_13:
    v85 = 0;
    goto LABEL_14;
  }

  v82 = *(v77[7] + 8 * v80);

  if (!v77[2])
  {
    goto LABEL_13;
  }

LABEL_11:
  v83 = sub_20D8D4C18(1);
  if ((v84 & 1) == 0)
  {
    goto LABEL_13;
  }

  v85 = *(v77[7] + 8 * v83);

LABEL_14:

  if ((v297 & 1) != 0 || v306 > 2)
  {
    v306 = v16;
    v153 = v290;
    v154 = v289;
    if (v278)
    {
      v155 = v287;
      if (v82)
      {
        v156 = v286;
        sub_20D8FCC14(v82, v286);

        (*(v154 + 32))(KeyPath, v156, v153);
        v157 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v155 = v287;
      if (v82)
      {

        if (v312)
        {
          v158 = v312;
        }

        else
        {
          v158 = MEMORY[0x277D84F90];
        }

        *&v315 = v82;

        sub_20D95B09C(v158);
        v159 = v315;
        MEMORY[0x28223BE20](v160);
        KeyPath = swift_getKeyPath();
        v306 = swift_getKeyPath();
        v161 = v313;
        v266 = v313 + *(v269 + 40);
        v162 = *(v266 + 16);
        v287 = sub_20D87746C();
        v297 = v163;
        v319 = v162;
        v318 = v159;
        v164 = qword_27C8386D8;
        v284 = v159;

        if (v164 != -1)
        {
          swift_once();
        }

        v165 = *(&xmmword_27C83AB58 + 1);
        v281 = xmmword_27C83AB58;
        v315 = xmmword_27C83AB58;
        swift_getKeyPath();
        v166 = v161 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
        v167 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
        v168 = v166 + *(v167 + 20);
        v169 = v166 + *(v167 + 64);
        v170 = sub_20D9727D8();
        v171 = *(v170 - 8);
        v172 = *(v171 + 16);
        v173 = v288;
        v279 = v169;
        v269 = v171 + 16;
        v268 = v172;
        v172(v288, v169, v170);
        v174 = *(v171 + 56);
        v280 = v170;
        v278 = v171 + 56;
        v267 = v174;
        (v174)(v173, 0, 1, v170);
        v175 = sub_20D7E1EF8();
        swift_bridgeObjectRetain_n();
        v282 = v168;
        sub_20D9737C8();

        sub_20D7E3944(v173, &qword_27C839548, &unk_20D979C20);
        v283 = v165;

        if (qword_27C8386E0 != -1)
        {
          swift_once();
        }

        v176 = *(&xmmword_27C83AB68 + 1);
        v315 = xmmword_27C83AB68;
        v177 = xmmword_27C83AB68;
        v262 = xmmword_27C83AB68;
        swift_getKeyPath();
        swift_bridgeObjectRetain_n();
        sub_20D9737B8();

        *&v315 = v177;
        *(&v315 + 1) = v176;

        sub_20D9737B8();

        v265 = sub_20D972C58();
        sub_20D9736E8();
        v255 = v175;
        v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
        v259 = sub_20D972628();
        v261 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
        v178 = v291;
        sub_20D973668();
        v179 = [objc_opt_self() secondarySystemFillColor];
        *&v315 = sub_20D974888();
        v180 = sub_20D909D58();
        v181 = MEMORY[0x277CE0F78];
        v182 = v270;
        v183 = v273;
        v184 = v180;
        v244 = v180;
        sub_20D9735B8();
        v185 = *(v309 + 8);
        v309 += 8;
        v258 = v185;
        v185(v178, v183);

        sub_20D9741C8();
        LODWORD(v266) = *MEMORY[0x277CE0118];
        v186 = v310;
        v187 = *(v310 + 104);
        v256 = (v310 + 104);
        v257 = v187;
        v188 = v274;
        v189 = v295;
        (v187)(v274);
        *&v315 = v183;
        *(&v315 + 1) = v181;
        v316 = v184;
        v317 = MEMORY[0x277CE0F60];
        v246 = MEMORY[0x277CBB260];
        swift_getOpaqueTypeConformance2();
        v190 = v272;
        sub_20D9735D8();
        v191 = *(v186 + 8);
        v310 = v186 + 8;
        v245 = v191;
        v191(v188, v189);
        (*(v271 + 8))(v182, v190);
        v318 = v284;
        *&v315 = v281;
        *(&v315 + 1) = v283;
        swift_getKeyPath();
        v192 = v280;
        (v268)(v173, v279, v280);
        (v267)(v173, 0, 1, v192);
        sub_20D9737C8();

        sub_20D7E3944(v173, &qword_27C839548, &unk_20D979C20);

        v193 = v262;
        *&v315 = v262;
        *(&v315 + 1) = v176;
        swift_getKeyPath();
        sub_20D9737B8();

        *&v315 = v193;
        *(&v315 + 1) = v176;
        sub_20D9737B8();

        sub_20D9736E8();
        v194 = v291;
        sub_20D973668();
        v195 = MEMORY[0x277CE1318];
        v196 = MEMORY[0x277CE1310];
        v197 = v247;
        v198 = v244;
        sub_20D9735B8();
        v258(v194, v183);
        sub_20D9741C8();
        v199 = v295;
        (v257)(v188, v266, v295);
        *&v315 = v183;
        *(&v315 + 1) = v195;
        v316 = v198;
        v317 = v196;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v201 = v286;
        v202 = v249;
        sub_20D9735D8();
        v245(v188, v199);
        (*(v248 + 1))(v197, v202);
        *&v315 = v202;
        *(&v315 + 1) = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v203 = v263;
        v204 = v290;
        sub_20D9735E8();

        (*(v289 + 8))(v201, v204);
        v205 = v275;
        v206 = *(v275 + 16);
        v207 = v296;
        v208 = v276;
        v206(v296, v311, v276);
        v209 = v251;
        v210 = *(v251 + 16);
        v211 = v252;
        v210(v264, v203, v252);
        v212 = v253;
        v206(v253, v207, v208);
        v213 = v254;
        v214 = *(v254 + 48);
        v215 = v264;
        v210(&v212[v214], v264, v211);
        v216 = v250;
        (*(v205 + 32))(v250, v212, v208);
        (*(v209 + 32))(v216 + *(v213 + 48), &v212[v214], v211);

        v217 = *(v209 + 8);
        v217(v263, v211);
        v218 = *(v205 + 8);
        v218(v311, v208);
        v217(v215, v211);
        v218(v296, v208);
        v152 = v277;
        sub_20D7EAF18(v216, v277, &qword_27C83ADE0, &qword_20D97CB48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0B0, &qword_20D97D000);
        goto LABEL_37;
      }
    }

    v157 = 1;
    goto LABEL_40;
  }

  if (v82)
  {

    if (v312)
    {
      v86 = v312;
    }

    else
    {
      v86 = MEMORY[0x277D84F90];
    }

    *&v315 = v82;

    sub_20D95B09C(v86);
    v290 = v315;
    MEMORY[0x28223BE20](v87);
    v88 = v306;
    KeyPath = swift_getKeyPath();
    v297 = swift_getKeyPath();
    v89 = v61;
    v90 = v57;
    v91 = v313;
    sub_20D8EF98C(v66);
    (*(v89 + 104))(v64, *MEMORY[0x277CDF3C0], v60);
    v92 = sub_20D973B08();
    v93 = *(v89 + 8);
    v93(v64, v60);
    v93(v66, v60);
    sub_20D8EF784(v59);
    v94 = sub_20D973D38();
    v255[1](v59, v90);
    v95 = sub_20D8E5420(v92 & 1, v94 & 1, v88);
    *&v315 = 0;
    *(&v315 + 1) = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD000000000000043, 0x800000020D989F90);
    v96 = sub_20D8E52A0(v88);
    MEMORY[0x20F323340](v96);

    MEMORY[0x20F323340](0x657463656C65532ELL, 0xE900000000000064);
    v306 = *(&v315 + 1);
    v289 = v315;
    v287 = v95;
    v319 = v95;
    v320 = 1061997773;
    v318 = v290;
    v97 = qword_27C8386D8;

    if (v97 != -1)
    {
      swift_once();
    }

    v98 = *(&xmmword_27C83AB58 + 1);
    v281 = xmmword_27C83AB58;
    v315 = xmmword_27C83AB58;
    swift_getKeyPath();
    v99 = v91 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
    v100 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v101 = v99 + *(v100 + 20);
    v102 = v99 + *(v100 + 64);
    v103 = sub_20D9727D8();
    v104 = *(v103 - 8);
    v105 = *(v104 + 16);
    v106 = v288;
    v279 = v102;
    v264 = (v104 + 16);
    v263 = v105;
    (v105)(v288, v102, v103);
    v107 = *(v104 + 56);
    v280 = v103;
    v278 = v104 + 56;
    v255 = v107;
    (v107)(v106, 0, 1, v103);
    v108 = sub_20D7E1EF8();
    swift_bridgeObjectRetain_n();
    v282 = v101;
    sub_20D9737C8();

    sub_20D7E3944(v106, &qword_27C839548, &unk_20D979C20);
    v286 = v98;

    if (qword_27C8386E0 != -1)
    {
      swift_once();
    }

    v109 = *(&xmmword_27C83AB68 + 1);
    v315 = xmmword_27C83AB68;
    v110 = xmmword_27C83AB68;
    v253 = xmmword_27C83AB68;
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    v243 = v108;
    sub_20D9737B8();

    *&v315 = v110;
    *(&v315 + 1) = v109;

    sub_20D9737B8();

    v254 = sub_20D972C58();
    sub_20D9736E8();
    v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
    v250 = sub_20D972628();
    v252 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
    v111 = v291;
    sub_20D973668();
    v112 = [objc_opt_self() secondarySystemFillColor];
    *&v315 = sub_20D974888();
    v113 = sub_20D909D58();
    v114 = MEMORY[0x277CE0F78];
    v115 = v270;
    v116 = v273;
    v244 = v113;
    sub_20D9735B8();
    v117 = *(v309 + 8);
    v309 += 8;
    v249 = v117;
    (v117)(v111, v116);

    sub_20D9741C8();
    LODWORD(v269) = *MEMORY[0x277CE0118];
    v118 = v310;
    v119 = *(v310 + 104);
    v247 = (v310 + 104);
    v248 = v119;
    v120 = v274;
    v121 = v295;
    v119(v274);
    *&v315 = v116;
    *(&v315 + 1) = v114;
    v316 = v113;
    v317 = MEMORY[0x277CE0F60];
    v246 = MEMORY[0x277CBB260];
    swift_getOpaqueTypeConformance2();
    v122 = v272;
    sub_20D9735D8();
    v123 = *(v118 + 8);
    v310 = v118 + 8;
    v245 = v123;
    v123(v120, v121);
    (*(v271 + 8))(v115, v122);
    v318 = v290;
    *&v315 = v281;
    *(&v315 + 1) = v286;
    swift_getKeyPath();
    v124 = v288;
    v125 = v280;
    (v263)(v288, v279, v280);
    (v255)(v124, 0, 1, v125);
    sub_20D9737C8();

    sub_20D7E3944(v124, &qword_27C839548, &unk_20D979C20);

    v126 = v253;
    *&v315 = v253;
    *(&v315 + 1) = v109;
    swift_getKeyPath();
    sub_20D9737B8();

    *&v315 = v126;
    *(&v315 + 1) = v109;
    sub_20D9737B8();

    sub_20D9736E8();
    v127 = v291;
    sub_20D973668();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACC0, &qword_20D97CAA8);
    v129 = sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8, MEMORY[0x277CE01D8]);
    v130 = v257;
    v131 = v244;
    sub_20D9735B8();
    (v249)(v127, v116);

    sub_20D9741C8();
    v132 = v295;
    (v248)(v120, v269, v295);
    *&v315 = v116;
    *(&v315 + 1) = v128;
    v316 = v131;
    v317 = v129;
    v133 = swift_getOpaqueTypeConformance2();
    v134 = v258;
    v135 = v261;
    sub_20D9735D8();
    v245(v120, v132);
    (*(v259 + 8))(v130, v135);
    *&v315 = v135;
    *(&v315 + 1) = v133;
    swift_getOpaqueTypeConformance2();
    v136 = v283;
    v137 = v262;
    sub_20D9735E8();

    (*(v260 + 8))(v134, v137);
    v138 = v275;
    v139 = *(v275 + 16);
    v140 = v296;
    v141 = v276;
    v139(v296, v311, v276);
    v142 = v265;
    v143 = *(v265 + 16);
    v144 = v266;
    v143(v284, v136, v266);
    v145 = v267;
    v139(v267, v140, v141);
    v146 = v268;
    v147 = *(v268 + 48);
    v148 = v284;
    v143(&v145[v147], v284, v144);
    v149 = v256;
    (*(v138 + 32))(v256, v145, v141);
    (*(v142 + 32))(v149 + *(v146 + 48), &v145[v147], v144);

    v150 = *(v142 + 8);
    v150(v283, v144);
    v151 = *(v138 + 8);
    v151(v311, v141);
    v150(v148, v144);
    v151(v296, v141);
    v152 = v277;
    sub_20D7EAF18(v149, v277, &qword_27C83ADC8, &qword_20D97CB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0B0, &qword_20D97D000);
LABEL_37:
    swift_storeEnumTagMultiPayload();
    sub_20D7EAF18(v152, v314, &qword_27C83ADB8, &qword_20D97CB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A8, &qword_20D97CF60);
    goto LABEL_43;
  }

  v306 = v16;
  v157 = 1;
  v153 = v290;
  v154 = v289;
  v155 = v287;
LABEL_40:
  v219 = *(v154 + 56);
  v220 = 1;
  v219(KeyPath, v157, 1, v153);
  if (v85)
  {
    v221 = v286;
    sub_20D8FD388(v85, v286);

    (*(v154 + 32))(v155, v221, v153);
    v220 = 0;
  }

  v219(v155, v220, 1, v153);
  v222 = KeyPath;
  v223 = v279;
  sub_20D7EB7E8(KeyPath, v279, &qword_27C83AE08, &qword_20D97CB60);
  v224 = v280;
  sub_20D7EB7E8(v155, v280, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D90ABF8();
  v225 = v281;
  sub_20D7EB7E8(v223, v281, &qword_27C83AE08, &qword_20D97CB60);
  v226 = v282;
  v227 = *(v282 + 48);
  sub_20D7EB7E8(v224, v225 + v227, &qword_27C83AE08, &qword_20D97CB60);
  v228 = v306;
  sub_20D7EAF18(v225, v306, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7EAF18(v225 + v227, v228 + *(v226 + 48), &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v155, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v222, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v224, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v223, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7EAF18(v228, v314, &qword_27C83ADF8, &qword_20D97CB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A8, &qword_20D97CF60);
LABEL_43:
  swift_storeEnumTagMultiPayload();
  v229 = v301;
  v230 = v300;
  if (v312)
  {
    v231 = v285;
    sub_20D8FDB00(v312, v285);

    v232 = v299;
    (*(v299 + 32))(v229, v231, v230);
    v233 = 0;
  }

  else
  {
    v233 = 1;
    v232 = v299;
  }

  (*(v232 + 56))(v229, v233, 1, v230);
  v234 = v314;
  v235 = v298;
  sub_20D7EB7E8(v314, v298, &qword_27C83ADA8, &qword_20D97CB28);
  v236 = v302;
  sub_20D7EB7E8(v229, v302, &qword_27C83AE18, &qword_20D97CB68);
  sub_20D90A674();
  v237 = v303;
  sub_20D7EB7E8(v235, v303, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D90AD10();
  v238 = v229;
  v239 = v304;
  v240 = *(v304 + 48);
  sub_20D7EB7E8(v236, v237 + v240, &qword_27C83AE18, &qword_20D97CB68);
  v241 = v305;
  sub_20D7EAF18(v237, v305, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D7EAF18(v237 + v240, v241 + *(v239 + 48), &qword_27C83AE18, &qword_20D97CB68);
  sub_20D7E3944(v238, &qword_27C83AE18, &qword_20D97CB68);
  sub_20D7E3944(v234, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D7E3944(v236, &qword_27C83AE18, &qword_20D97CB68);
  return sub_20D7E3944(v235, &qword_27C83ADA8, &qword_20D97CB28);
}

uint64_t sub_20D8F8BA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v55 = a3;
  v56 = sub_20D974118();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v14 - 8);
  v57 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v41 = &v41 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v42 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE30, &qword_20D97CB78);
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x28223BE20](v19);
  v46 = &v41 - v20;
  v62 = a1;
  v21 = qword_27C8386D8;

  if (v21 != -1)
  {
    swift_once();
  }

  v58 = xmmword_27C83AB58;
  swift_getKeyPath();
  v22 = v3 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v23 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
  v24 = sub_20D9727D8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, v22 + v23, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v13, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v58 = xmmword_27C83AB68;
  v61 = 0;
  sub_20D972C58();
  sub_20D9737A8();
  sub_20D9736D8();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  v26 = v41;
  sub_20D973658();
  v27 = [objc_opt_self() systemOrangeColor];
  *&v58 = sub_20D974888();
  v28 = sub_20D909D58();
  v29 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CE0F60];
  v31 = v42;
  v32 = v44;
  sub_20D9735B8();

  (*(v43 + 8))(v26, v32);
  *&v58 = v32;
  *(&v58 + 1) = v29;
  v59 = v28;
  v60 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v49;
  sub_20D973618();
  (*(v45 + 8))(v31, v35);
  v37 = v53;
  v36 = v54;
  v38 = v56;
  (*(v54 + 104))(v53, *MEMORY[0x277CE0118], v56);
  *&v58 = v35;
  *(&v58 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  sub_20D9735A8();
  (*(v36 + 8))(v37, v38);
  return (*(v51 + 8))(v34, v39);
}

uint64_t sub_20D8F93B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E58();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D075B0] || v10 == *MEMORY[0x277D075B8] || v10 == *MEMORY[0x277D075C8] || v10 == *MEMORY[0x277D075D0])
  {
    v11 = sub_20D9727D8();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = sub_20D972838();
    (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
    return sub_20D971E98();
  }

  v14 = *MEMORY[0x277D075C0];
  v15 = v10;
  v16 = sub_20D9727D8();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_20D972838();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  if (v15 == v14)
  {
    return sub_20D971E98();
  }

  sub_20D971E98();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_20D8F9A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF50, &qword_20D97CC50);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA0, &qword_20D97CBB8);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE90, &qword_20D97CBB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - v9;
  v10 = sub_20D973738();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20D973688();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for HistoricalUsageChart(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE80, &qword_20D97CBA8);
  v45 = *(v47 - 8);
  v16 = MEMORY[0x28223BE20](v47);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  type metadata accessor for HistoricalUsageSnapshot(0);
  v44 = a1;
  type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  sub_20D91092C(a1, &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoricalUsageChart);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  sub_20D910994(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for HistoricalUsageChart);

  sub_20D973678();
  sub_20D973728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF58, &qword_20D97CC58);
  sub_20D7EBC4C(&qword_27C83AF60, &qword_27C83AF58, &qword_20D97CC58, MEMORY[0x277CBB338]);
  sub_20D973998();
  if (*(v44 + *(v13 + 52)) == 1)
  {
    sub_20D973678();
    sub_20D973728();
    sub_20D973578();
    v23 = v43;
    sub_20D9739A8();
    v25 = v48;
    v24 = v49;
    v26 = v46;
    (*(v48 + 32))(v46, v23, v49);
    v27 = 0;
    v28 = v24;
    v29 = v25;
  }

  else
  {
    v27 = 1;
    v26 = v46;
    v29 = v48;
    v28 = v49;
  }

  (*(v29 + 56))(v26, v27, 1, v28);
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v20;
  v33 = v20;
  v34 = v47;
  v31(v18, v33, v47);
  v35 = v50;
  sub_20D7EB7E8(v26, v50, &qword_27C83AE90, &qword_20D97CBB0);
  sub_20D7EBC4C(&qword_27C83AE78, &qword_27C83AE80, &qword_20D97CBA8, MEMORY[0x277CBB460]);
  v36 = v51;
  v31(v51, v18, v34);
  sub_20D90B0BC();
  v37 = v52;
  v38 = *(v52 + 48);
  sub_20D7EB7E8(v35, &v36[v38], &qword_27C83AE90, &qword_20D97CBB0);
  v39 = v53;
  (*(v30 + 32))(v53, v36, v34);
  sub_20D7EAF18(&v36[v38], v39 + *(v37 + 48), &qword_27C83AE90, &qword_20D97CBB0);
  sub_20D7E3944(v26, &qword_27C83AE90, &qword_20D97CBB0);
  v40 = *(v30 + 8);
  v40(v32, v34);
  sub_20D7E3944(v35, &qword_27C83AE90, &qword_20D97CBB0);
  return (v40)(v18, v34);
}

unint64_t sub_20D8FA0B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D9737E8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_20D973858();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a2 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v6 = *(v5 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 56) + 16);
  result = sub_20D9739C8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v6 + 16))
  {
    v8 = sub_20D974C68();
    MEMORY[0x28223BE20](v8);
    sub_20D973848();
    sub_20D9737D8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF68, &unk_20D97CC60);
    v14 = sub_20D90BE64();
    v11 = sub_20D90BE18;
    v12 = &v9;
    LOBYTE(v10) = 1;
    v9 = 0;
    return sub_20D9736B8();
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8FA2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v5 = sub_20D973548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoricalUsageChart(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_20D9748F8();
  sub_20D91092C(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoricalUsageChart);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_20D910994(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for HistoricalUsageChart);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  *(a3 + 8) = 256;
  *(a3 + 16) = sub_20D90B598;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_20D8FA4E4(uint64_t a1)
{
  sub_20D973508();
  type metadata accessor for HistoricalUsageChart(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  return sub_20D974A58();
}

uint64_t sub_20D8FA56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v88 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEE8, &qword_20D97CBE0);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF0, &qword_20D97CBE8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v101 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v76 - v9;
  v93 = type metadata accessor for HistoricalUsageChart(0);
  v85 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v86 = v10;
  v92 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20D973548();
  v87 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = v11;
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_20D972C58();
  v95 = *(v96 - 8);
  v12 = *(v95 + 64);
  v13 = MEMORY[0x28223BE20](v96);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF8, &qword_20D97CBF0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v76 - v22;
  v24 = sub_20D972628();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v97 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v76 - v28;
  sub_20D8EFD9C(v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_20D7E3944(v23, &qword_27C8389E8, &qword_20D9768D0);
    v30 = 0;
    v31 = 1;
    v32 = a2;
  }

  else
  {
    v82 = a3;
    v81 = *(v25 + 32);
    v81(v29, v23, v24);
    v79 = sub_20D8FB0AC(v20);
    sub_20D7EAF18(v20, v18, &qword_27C83AEF8, &qword_20D97CBF0);
    v32 = a2;
    if ((*(v95 + 48))(v18, 1, v96) == 1)
    {
      (*(v25 + 8))(v29, v24);
      sub_20D7E3944(v18, &qword_27C83AEF8, &qword_20D97CBF0);
      v31 = 0;
      v30 = 0;
    }

    else
    {
      v80 = v25;
      v34 = v95 + 32;
      v33 = *(v95 + 32);
      v35 = v83;
      v78 = v24;
      v36 = v96;
      v33(v83, v18);
      v37 = v33;
      v77 = v33;
      v38 = v87;
      (*(v87 + 16))(v90, v88, v91);
      sub_20D91092C(v32, v92, type metadata accessor for HistoricalUsageChart);
      v39 = v36;
      v24 = v78;
      v37(v89, v35, v39);
      v81(v97, v29, v24);
      v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v41 = (v84 + *(v85 + 80) + v40) & ~*(v85 + 80);
      v42 = *(v34 + 48);
      v95 = v32;
      v43 = (v86 + v42 + v41) & ~v42;
      v44 = (v12 + *(v80 + 80) + v43) & ~*(v80 + 80);
      v30 = swift_allocObject();
      (*(v38 + 32))(v30 + v40, v90, v91);
      sub_20D910994(v92, v30 + v41, type metadata accessor for HistoricalUsageChart);
      v45 = v30 + v43;
      v32 = v95;
      v77(v45, v89, v96);
      v25 = v80;
      v81((v30 + v44), v97, v24);
      *(v30 + v44 + v26) = v79 & 1;

      v31 = sub_20D90B3B4;
    }

    a3 = v82;
  }

  v46 = v32 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  if (*(v46 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 60)) == 1)
  {
    *&v108[0] = 0x203A4453434CLL;
    *(&v108[0] + 1) = 0xE600000000000000;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
    v48 = v97;
    MEMORY[0x20F322CD0](v47);
    v49 = sub_20D9725F8();
    v51 = v50;
    (*(v25 + 8))(v48, v24);
    MEMORY[0x20F323340](v49, v51);

    sub_20D974488();
    v52 = sub_20D974558();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v59 = sub_20D974338();
    sub_20D973AD8();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    LOBYTE(v108[0]) = v56 & 1;
    LOBYTE(v102) = 0;
    v68 = sub_20D9748B8();
    *&v102 = v52;
    *(&v102 + 1) = v54;
    LOBYTE(v103) = v56 & 1;
    *(&v103 + 1) = v58;
    LOBYTE(v104) = v59;
    *(&v104 + 1) = v61;
    *&v105 = v63;
    *(&v105 + 1) = v65;
    *&v106 = v67;
    BYTE8(v106) = 0;
    v107 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF08, &unk_20D97CC00);
    sub_20D90B2DC();
    v69 = v94;
    sub_20D9747F8();
    v108[2] = v104;
    v108[3] = v105;
    v108[4] = v106;
    v109 = v107;
    v108[0] = v102;
    v108[1] = v103;
    sub_20D7E3944(v108, &qword_27C83AF08, &unk_20D97CC00);
    v70 = v98;
    v71 = v100;
    v72 = v99;
    (*(v98 + 32))(v100, v69, v99);
    (*(v70 + 56))(v71, 0, 1, v72);
  }

  else
  {
    v71 = v100;
    (*(v98 + 56))(v100, 1, 1, v99);
  }

  v73 = v101;
  sub_20D7EB7E8(v71, v101, &qword_27C83AEF0, &qword_20D97CBE8);
  *a3 = v31;
  a3[1] = v30;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF00, &qword_20D97CBF8);
  sub_20D7EB7E8(v73, a3 + *(v74 + 48), &qword_27C83AEF0, &qword_20D97CBE8);
  sub_20D90B2BC(v31, v30);
  sub_20D90B2CC(v31, v30);
  sub_20D7E3944(v71, &qword_27C83AEF0, &qword_20D97CBE8);
  sub_20D7E3944(v73, &qword_27C83AEF0, &qword_20D97CBE8);
  return sub_20D90B2CC(v31, v30);
}

uint64_t sub_20D8FB0AC(uint64_t a1)
{
  v54 = a1;
  v2 = sub_20D972C58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v47 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF8, &qword_20D97CBF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = v3[7];
  v18(&v47 - v16, 1, 1, v2);
  v19 = type metadata accessor for HistoricalUsageSnapshot(0);
  v20 = sub_20D972E38();
  v51 = v1;
  v55 = v1;
  sub_20D8711C0(sub_20D9110DC, v20, v15);

  v53 = v3[6];
  v21 = v53(v15, 1, v2);
  v52 = v3 + 6;
  if (v21 == 1)
  {
    v22 = v17;
    sub_20D7E3944(v15, &qword_27C83AEF8, &qword_20D97CBF0);
    v23 = v51;
    v24 = v51 + *(v19 + 52);
    v25 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    if (*(v24 + *(v25 + 36)))
    {
      MEMORY[0x28223BE20](v25);
      *(&v47 - 2) = v23;
      v26 = v50;
      sub_20D8711C0(sub_20D90B578, v27, v50);
      v28 = v2;
      v29 = v3;
      if (v53(v26, 1, v2) != 1)
      {
        v30 = v3[4];
        v31 = v48;
        v30(v48, v26, v2);
        v17 = v22;
        sub_20D7E3944(v22, &qword_27C83AEF8, &qword_20D97CBF0);
        v30(v22, v31, v2);
        v28 = v2;
        v32 = 1;
        v18(v22, 0, 1, v2);
        goto LABEL_8;
      }
    }

    else
    {
      v26 = v50;
      v28 = v2;
      v18(v50, 1, 1, v2);
      v29 = v3;
    }

    sub_20D7E3944(v26, &qword_27C83AEF8, &qword_20D97CBF0);
    v32 = 0;
    v17 = v22;
  }

  else
  {
    v33 = v3[4];
    v33(v9, v15, v2);
    sub_20D7E3944(v17, &qword_27C83AEF8, &qword_20D97CBF0);
    v33(v17, v9, v2);
    v18(v17, 0, 1, v2);
    v32 = 0;
    v29 = v3;
    v28 = v2;
  }

LABEL_8:
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v34 = sub_20D9734F8();
  __swift_project_value_buffer(v34, qword_28112AB78);
  v35 = sub_20D9734D8();
  v36 = sub_20D975448();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56[0] = v38;
    *v37 = 136315138;
    swift_beginAccess();
    if (v53(v17, 1, v28))
    {
      v39 = 0xE500000000000000;
      v40 = 0x3E4C494E3CLL;
    }

    else
    {
      v41 = v49;
      (v29[2])(v49, v17, v28);
      v42 = sub_20D972B08();
      v43 = v28;
      v39 = v44;
      (v29[1])(v41, v43);
      v40 = v42;
    }

    v45 = sub_20D7F4DC8(v40, v39, v56);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_20D7C9000, v35, v36, "Lollipop selected usage: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F324260](v38, -1, -1);
    MEMORY[0x20F324260](v37, -1, -1);
  }

  swift_beginAccess();
  sub_20D7EB7E8(v17, v54, &qword_27C83AEF8, &qword_20D97CBF0);
  sub_20D7E3944(v17, &qword_27C83AEF8, &qword_20D97CBF0);
  return v32;
}

uint64_t sub_20D8FB6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v109 = a5;
  v116 = a4;
  v117 = a3;
  v120 = a6;
  v121 = a2;
  v108 = type metadata accessor for LollipopSelectionView(0);
  MEMORY[0x28223BE20](v108);
  v112 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF18, &qword_20D97CC18);
  v8 = MEMORY[0x28223BE20](v111);
  v113 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v110 = &v105 - v11;
  MEMORY[0x28223BE20](v10);
  v114 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF20, &unk_20D97CC20);
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = (&v105 - v14);
  v15 = sub_20D973D78();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v105 - v19;
  v21 = sub_20D972628();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20D973538();
  if (result)
  {
    type metadata accessor for CGRect(0);
    v105 = a1;
    sub_20D973C58();

    v26 = v136;
    v27 = v137;
    v28 = v117;
    sub_20D8FC110();
    *&v136 = v29;
    *&v30 = COERCE_DOUBLE(sub_20D973518());
    v116 = v31;
    if (v32)
    {
      return (*(v118 + 56))(v120, 1, 1, v119);
    }

    v33 = *&v30;
    sub_20D8FC268(v24);
    sub_20D972BC8();
    *&v136 = v34;
    v35 = COERCE_DOUBLE(sub_20D973518());
    v37 = v36;
    (*(v22 + 8))(v24, v21);
    if (v37)
    {
      return (*(v118 + 56))(v120, 1, 1, v119);
    }

    else
    {
      v38 = v33;
      v39 = v121;
      sub_20D8EFB94(v20);
      v41 = v106;
      v40 = v107;
      (*(v106 + 104))(v18, *MEMORY[0x277CDFA88], v107);
      v42 = sub_20D973D68();
      v43 = *(v41 + 8);
      v43(v18, v40);
      v43(v20, v40);
      v44 = v28;
      if (v42)
      {
        v155.origin = v26;
        v155.size = v27;
        v45 = (v35 - v38) * 0.5 + CGRectGetMinX(v155) + v38;
      }

      else
      {
        sub_20D973C38();
        v48 = v47;
        v156.origin = v26;
        v156.size = v27;
        v45 = v48 - (CGRectGetMinX(v156) + v38);
      }

      v46 = v112;
      v49 = type metadata accessor for HistoricalUsageChart(0);
      v50 = *(v39 + v49[5] + 8);
      v51 = *(v39 + v49[10] + 184);
      v52 = v39 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
      v53 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
      v54 = -70.0;
      if (!*(v52 + *(v53 + 60)))
      {
        v54 = 0.0;
      }

      v55 = -v50 - v51 + v54;
      v56 = (v39 + v49[14]);
      v58 = v56[1];
      v59 = v56[2];
      *&v136 = *v56;
      v57 = v136;
      *(&v136 + 1) = v58;
      *&v137 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
      sub_20D974A48();
      v60 = sub_20D974158();
      v61 = v115;
      *v115 = v60;
      v61[1] = 0;
      *(v61 + 16) = 0;
      sub_20D91092C(v39, v46, type metadata accessor for HistoricalUsageChart);
      v62 = v108;
      v63 = *(v108 + 20);
      v64 = sub_20D972C58();
      (*(*(v64 - 8) + 16))(v46 + v63, v44, v64);
      v127 = v57;
      v128 = v58;
      v129 = v59;
      sub_20D974A68();
      v65 = v136;
      v66 = v137;
      *(v46 + v62[6]) = v109 & 1;
      v67 = (v46 + v62[7]);
      *v67 = v65;
      v67[1] = v66;
      v68 = (v46 + v62[8]);
      if (qword_27C838450 != -1)
      {
        swift_once();
      }

      v69 = unk_27C839870;
      v146 = xmmword_27C839880;
      v147 = xmmword_27C839890;
      v70 = xmmword_27C839890;
      v148 = xmmword_27C8398A0;
      v71 = xmmword_27C839830;
      v72 = xmmword_27C839840;
      v142 = xmmword_27C839840;
      v143 = xmmword_27C839850;
      v73 = xmmword_27C839850;
      v74 = xmmword_27C839860;
      v144 = xmmword_27C839860;
      v145 = unk_27C839870;
      v75 = xmmword_27C8397F0;
      v76 = xmmword_27C839800;
      v138 = xmmword_27C839800;
      v139 = xmmword_27C839810;
      v77 = xmmword_27C839810;
      v78 = xmmword_27C839820;
      v140 = xmmword_27C839820;
      v141 = xmmword_27C839830;
      v79 = xmmword_27C8397E0;
      v136 = xmmword_27C8397E0;
      v137 = xmmword_27C8397F0;
      v68[10] = xmmword_27C839880;
      v68[11] = v70;
      v68[12] = xmmword_27C8398A0;
      v68[6] = v72;
      v68[7] = v73;
      v68[8] = v74;
      v68[9] = v69;
      v68[2] = v76;
      v68[3] = v77;
      v68[4] = v78;
      v68[5] = v71;
      *v68 = v79;
      v68[1] = v75;
      sub_20D85D690(&v136, &v127);
      sub_20D973C38();
      v81 = v80;
      v127 = v57;
      v128 = v58;
      v129 = v59;
      sub_20D974A48();
      v82 = v81 - *&v122;
      v127 = v57;
      v128 = v58;
      v129 = v59;
      sub_20D974A48();
      v83 = v45 - *&v122 * 0.5;
      if (v83 >= v82)
      {
        v83 = v82;
      }

      if (v83 < 0.0)
      {
        v84 = 0.0;
      }

      else
      {
        v84 = v83;
      }

      v85 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF30, &qword_20D97CC30) + 44);
      v86 = v110;
      sub_20D910994(v46, v110, type metadata accessor for LollipopSelectionView);
      v87 = (v86 + *(v111 + 36));
      *v87 = v84;
      v87[1] = v55;
      v88 = v114;
      sub_20D7EAF18(v86, v114, &qword_27C83AF18, &qword_20D97CC18);
      sub_20D974C48();
      sub_20D973C18();
      v89 = v59;
      v90 = v149;
      v91 = v150;
      v121 = v151;
      v92 = v152;
      v116 = v154;
      v117 = v153;
      v93 = [objc_opt_self() lightGrayColor];
      v112 = sub_20D974888();
      v127 = v57;
      v128 = v58;
      v129 = v89;
      sub_20D974A48();
      v94 = v45 - *&v122 * 0.5;
      LODWORD(v111) = v91;
      LOBYTE(v127) = v91;
      LOBYTE(v122) = v92;
      v95 = v113;
      sub_20D7EB7E8(v88, v113, &qword_27C83AF18, &qword_20D97CC18);
      sub_20D7EB7E8(v95, v85, &qword_27C83AF18, &qword_20D97CC18);
      v96 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF38, &qword_20D97CC38) + 48);
      *&v122 = v90;
      v97 = v90;
      BYTE8(v122) = v91;
      v98 = v121;
      *&v123 = v121;
      BYTE8(v123) = v92;
      v99 = v116;
      v100 = v117;
      *&v124 = v117;
      *(&v124 + 1) = v116;
      v101 = v112;
      *&v125 = v112;
      *(&v125 + 1) = v94;
      v126 = v55;
      v102 = v123;
      *v96 = v122;
      *(v96 + 16) = v102;
      v103 = v125;
      *(v96 + 32) = v124;
      *(v96 + 48) = v103;
      *(v96 + 64) = v126;
      sub_20D7EB7E8(&v122, &v127, &qword_27C83AF40, &qword_20D97CC40);
      sub_20D7E3944(v114, &qword_27C83AF18, &qword_20D97CC18);
      v127 = v97;
      LOBYTE(v128) = v111;
      v129 = v98;
      v130 = v92;
      v131 = v100;
      v132 = v99;
      v133 = v101;
      v134 = v94;
      v135 = v55;
      sub_20D7E3944(&v127, &qword_27C83AF40, &qword_20D97CC40);
      sub_20D7E3944(v95, &qword_27C83AF18, &qword_20D97CC18);
      v104 = v120;
      sub_20D7EAF18(v115, v120, &qword_27C83AF20, &unk_20D97CC20);
      return (*(v118 + 56))(v104, 0, 1, v119);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20D8FC110()
{
  v1 = type metadata accessor for HistoricalUsageChart(0);
  v2 = v1;
  if (*(v0 + v1[11]) == 1)
  {
    v3 = (v0 + v1[6]);
    v4 = (v0 + v1[7]);
    if (*(v3 + 8) != 1)
    {
      if (v4[1])
      {
        v8 = *v3;
        v9 = sub_20D972B78();
        if ((v8 & 0x8000000000000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v4 = *(v9 + 16);
        if (v8 < v4)
        {
LABEL_15:

          return;
        }

        __break(1u);
      }

LABEL_13:
      v10 = *v4;
      v11 = sub_20D972B58();
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(v11 + 16))
      {
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_25;
    }

    if (!*(v4 + 8))
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_20D972BC8();
    return;
  }

  sub_20D972BC8();
  if (v5 >= 0.0)
  {
    v6 = (v0 + v2[7]);
    if (*(v6 + 8) == 1)
    {
      v7 = (v0 + v2[6]);
      if (v7[1])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *v6;
      v13 = sub_20D972B28();
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v7 = *(v13 + 16);
      if (v12 < v7)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v14 = *v7;
    v15 = sub_20D972B38();
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= *(v15 + 16))
    {
LABEL_28:
      __break(1u);
      return;
    }

LABEL_21:
  }
}

uint64_t sub_20D8FC268@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_20D9727B8();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v31[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_20D972AF8();
  v39 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = sub_20D9727D8();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31[-v13];
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D8EFD9C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20D7E3944(v14, &qword_27C8389E8, &qword_20D9768D0);
    return sub_20D9725C8();
  }

  v20 = *(v16 + 32);
  v34 = v18;
  v20(v18, v14, v15);
  v33 = type metadata accessor for HistoricalUsageSnapshot(0);
  v35 = v11;
  sub_20D972E48();
  sub_20D972E58();
  v21 = v39;
  (*(v39 + 104))(v6, *MEMORY[0x277D075D0], v3);
  sub_20D911038(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v45 == v43 && v46 == v44)
  {
    v22 = *(v21 + 8);
    v22(v6, v3);
    v22(v8, v3);

LABEL_7:
    v25 = v36;
    v24 = v37;
    v26 = v38;
    (*(v37 + 104))(v36, *MEMORY[0x277CC9968], v38);
    v28 = v34;
    v27 = v35;
    sub_20D9730D8();
    (*(v24 + 8))(v25, v26);
    (*(v40 + 8))(v27, v41);
    return (*(v16 + 8))(v28, v15);
  }

  v32 = sub_20D9757C8();
  v23 = *(v21 + 8);
  v23(v6, v3);
  v23(v8, v3);

  if (v32)
  {
    goto LABEL_7;
  }

  type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = v34;
  v29 = v35;
  sub_20D9730D8();
  (*(v40 + 8))(v29, v41);
  return (*(v16 + 8))(v30, v15);
}

uint64_t sub_20D8FC7C8()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF48, &qword_20D97CC48);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x20F320DF0](v13);
  (*(v1 + 56))(v15, 0, 1, v0);
  sub_20D8EFD9C(v12);
  v16 = *(v4 + 56);
  sub_20D7EB7E8(v15, v6, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7EB7E8(v12, &v6[v16], &qword_27C8389E8, &qword_20D9768D0);
  v17 = v1;
  v18 = *(v1 + 48);
  if (v18(v6, 1, v0) != 1)
  {
    sub_20D7EB7E8(v6, v25, &qword_27C8389E8, &qword_20D9768D0);
    if (v18(&v6[v16], 1, v0) != 1)
    {
      v20 = v1;
      v21 = v24;
      (*(v17 + 32))(v24, &v6[v16], v0);
      sub_20D911038(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v19 = sub_20D974FD8();
      v22 = *(v20 + 8);
      v22(v21, v0);
      sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
      v22(v25, v0);
      sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
      return v19 & 1;
    }

    sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
    (*(v1 + 8))(v25, v0);
    goto LABEL_6;
  }

  sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
  if (v18(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_20D7E3944(v6, &qword_27C83AF48, &qword_20D97CC48);
    v19 = 0;
    return v19 & 1;
  }

  sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_20D8FCC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_20D974118();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v15 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v42 = &v37 - v19;
  v54 = a1;
  v20 = qword_27C8386D8;

  if (v20 != -1)
  {
    swift_once();
  }

  v51 = xmmword_27C83AB58;
  swift_getKeyPath();
  v21 = v2 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v22 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v38 = v2;
  v23 = *(v22 + 64);
  v24 = sub_20D9727D8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14, v21 + v23, v24);
  (*(v25 + 56))(v14, 0, 1, v24);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v14, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v26 = xmmword_27C83AB68;
  v51 = xmmword_27C83AB68;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  v51 = v26;
  swift_getKeyPath();
  sub_20D9737B8();

  sub_20D972C58();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  sub_20D973668();
  *&v51 = *(v38 + *(type metadata accessor for HistoricalUsageChart(0) + 40) + 16);
  v27 = sub_20D909D58();
  v28 = MEMORY[0x277CE1318];
  v29 = MEMORY[0x277CE1310];
  v31 = v42;
  v30 = v43;
  sub_20D9735B8();
  (*(v39 + 8))(v17, v30);
  sub_20D9741C8();
  v33 = v49;
  v32 = v50;
  v34 = v47;
  (*(v49 + 104))(v47, *MEMORY[0x277CE0118], v50);
  *&v51 = v30;
  *(&v51 + 1) = v28;
  v52 = v27;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  sub_20D9735D8();
  (*(v33 + 8))(v34, v32);
  return (*(v44 + 8))(v31, v35);
}

uint64_t sub_20D8FD388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_20D974118();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v15 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v41 = &v37 - v19;
  v54 = a1;
  v20 = qword_27C8386D8;

  if (v20 != -1)
  {
    swift_once();
  }

  v51 = xmmword_27C83AB58;
  swift_getKeyPath();
  v21 = v2 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v22 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v38 = v2;
  v23 = *(v22 + 64);
  v24 = sub_20D9727D8();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14, v21 + v23, v24);
  (*(v25 + 56))(v14, 0, 1, v24);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v14, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v26 = xmmword_27C83AB68;
  v51 = xmmword_27C83AB68;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  v51 = v26;
  swift_getKeyPath();
  sub_20D9737B8();

  sub_20D972C58();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  sub_20D973668();
  *&v51 = *(v38 + *(type metadata accessor for HistoricalUsageChart(0) + 40) + 24);
  v27 = sub_20D909D58();
  v28 = MEMORY[0x277CE1318];
  v29 = MEMORY[0x277CE1310];
  v30 = v41;
  v31 = v43;
  sub_20D9735B8();
  (*(v39 + 8))(v17, v31);
  sub_20D9741C8();
  v33 = v49;
  v32 = v50;
  v34 = v47;
  (*(v49 + 104))(v47, *MEMORY[0x277CE0118], v50);
  *&v51 = v31;
  *(&v51 + 1) = v28;
  v52 = v27;
  v53 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  sub_20D9735D8();
  (*(v33 + 8))(v34, v32);
  return (*(v44 + 8))(v30, v35);
}

uint64_t sub_20D8FDB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v46 = sub_20D974118();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v36 - v19;
  v52 = a1;
  v20 = qword_27C8386D8;

  if (v20 != -1)
  {
    swift_once();
  }

  v48 = xmmword_27C83AB58;
  swift_getKeyPath();
  v21 = v3 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v22 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
  v23 = sub_20D9727D8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v13, v21 + v22, v23);
  (*(v24 + 56))(v13, 0, 1, v23);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v13, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v48 = xmmword_27C83AB68;
  v51 = 0;
  sub_20D972C58();
  sub_20D9737A8();
  sub_20D9736D8();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  sub_20D973658();
  v25 = [objc_opt_self() secondarySystemFillColor];
  *&v48 = sub_20D974888();
  v26 = sub_20D909D58();
  v27 = MEMORY[0x277CE0F78];
  v28 = MEMORY[0x277CE0F60];
  v29 = v36;
  v30 = v38;
  sub_20D9735B8();

  (*(v37 + 8))(v18, v30);
  v32 = v43;
  v31 = v44;
  v33 = v46;
  (*(v44 + 104))(v43, *MEMORY[0x277CE0118], v46);
  *&v48 = v30;
  *(&v48 + 1) = v27;
  v49 = v26;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_20D9735A8();
  (*(v31 + 8))(v32, v33);
  return (*(v40 + 8))(v29, v34);
}

uint64_t sub_20D8FE204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v118 = a5;
  v117 = a4;
  v145 = a2;
  v122 = a6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACB8, &qword_20D97CAA0);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v113 = v100 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE8, &qword_20D97CDB0);
  v120 = *(v121 - 8);
  v12 = MEMORY[0x28223BE20](v121);
  v119 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v114 = v100 - v14;
  v143 = sub_20D974118();
  v154 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v109 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v16 - 8);
  v148 = v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v149 = v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = v100 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v100 - v26;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v156 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v100 - v28;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v153 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v151 = v100 - v29;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  v111 = *(v112 - 8);
  v30 = MEMORY[0x28223BE20](v112);
  v110 = v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v146 = v100 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v144 = v100 - v35;
  MEMORY[0x28223BE20](v34);
  v155 = v100 - v36;
  v160 = a1;
  v161 = a3;
  v162 = a7;
  v37 = qword_27C8386D8;
  v147 = a1;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = *(&xmmword_27C83AB58 + 1);
  v139 = xmmword_27C83AB58;
  v157 = xmmword_27C83AB58;
  swift_getKeyPath();
  v39 = v7 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v40 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v41 = v39 + *(v40 + 20);
  v42 = v39 + *(v40 + 64);
  v43 = sub_20D9727D8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 16);
  v46 = v141;
  v137 = v42;
  v135 = v44 + 16;
  v134 = v45;
  v45(v141, v42, v43);
  v47 = *(v44 + 56);
  v138 = v43;
  v136 = v44 + 56;
  v133 = v47;
  v47(v46, 0, 1, v43);
  v48 = sub_20D7E1EF8();
  swift_bridgeObjectRetain_n();
  v140 = v41;
  sub_20D9737C8();

  sub_20D7E3944(v46, &qword_27C839548, &unk_20D979C20);
  v108 = v7;
  v132 = v38;

  v49 = v27;
  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v50 = *(&xmmword_27C83AB68 + 1);
  v157 = xmmword_27C83AB68;
  v51 = xmmword_27C83AB68;
  v125 = xmmword_27C83AB68;
  swift_bridgeObjectRetain_n();
  v124 = v48;
  sub_20D9737B8();

  *&v157 = v51;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  v131 = sub_20D972C58();
  sub_20D9736E8();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  v128 = sub_20D972628();
  v130 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  v52 = v150;
  sub_20D973668();
  v107 = objc_opt_self();
  v53 = [v107 secondarySystemFillColor];
  v54 = sub_20D974888();
  v100[1] = v21;
  *&v157 = v54;
  v55 = sub_20D909D58();
  v56 = v152;
  v57 = MEMORY[0x277CE0F78];
  v58 = v55;
  v126 = v55;
  v59 = MEMORY[0x277CE0F60];
  sub_20D9735B8();

  v60 = *(v156 + 8);
  v156 += 8;
  v127 = v60;
  v60(v52, v56);
  type metadata accessor for HistoricalUsageChart(0);
  sub_20D9741C8();
  v106 = *MEMORY[0x277CE0118];
  v61 = v154;
  v62 = *(v154 + 104);
  v104 = v154 + 104;
  v105 = v62;
  v63 = v109;
  v64 = v143;
  v62(v109);
  *&v157 = v56;
  *(&v157 + 1) = v57;
  v158 = v58;
  v159 = v59;
  v108 = MEMORY[0x277CBB260];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v123 = v49;
  v65 = v142;
  v66 = v151;
  sub_20D9735D8();
  v67 = *(v61 + 8);
  v154 = v61 + 8;
  v102 = v67;
  v67(v63, v64);
  v68 = *(v153 + 8);
  v153 += 8;
  v101 = v68;
  v68(v66, v65);
  v160 = v147;
  *&v157 = v139;
  *(&v157 + 1) = v132;
  swift_getKeyPath();
  v69 = v141;
  v70 = v138;
  v134(v141, v137, v138);
  v133(v69, 0, 1, v70);

  sub_20D9737C8();

  sub_20D7E3944(v69, &qword_27C839548, &unk_20D979C20);

  v71 = v125;
  *&v157 = v125;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  *&v157 = v71;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  sub_20D9736E8();
  v72 = v150;
  sub_20D973668();
  v73 = [v107 secondarySystemFillColor];
  *&v157 = sub_20D974888();
  v74 = v151;
  v75 = v152;
  sub_20D9735B8();

  v127(v72, v75);
  sub_20D9741C8();
  v76 = v143;
  v105(v63, v106, v143);
  v77 = v142;
  sub_20D9735D8();
  v102(v63, v76);
  v101(v74, v77);
  v160 = v147;
  *&v157 = v139;
  *(&v157 + 1) = v132;
  swift_getKeyPath();
  v78 = v138;
  v134(v69, v137, v138);
  v133(v69, 0, 1, v78);

  sub_20D9737C8();

  sub_20D7E3944(v69, &qword_27C839548, &unk_20D979C20);

  v79 = v125;
  *&v157 = v125;
  *(&v157 + 1) = v50;
  swift_getKeyPath();
  sub_20D9737B8();

  *&v157 = v79;
  *(&v157 + 1) = v50;
  sub_20D9737B8();

  sub_20D9736E8();
  v80 = v150;
  sub_20D973668();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACC0, &qword_20D97CAA8);
  v82 = sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8, MEMORY[0x277CE01D8]);
  v83 = v113;
  v84 = v152;
  v85 = v126;
  sub_20D9735B8();
  v127(v80, v84);
  *&v157 = v84;
  *(&v157 + 1) = v81;
  v158 = v85;
  v159 = v82;
  swift_getOpaqueTypeConformance2();
  v86 = v114;
  v87 = v116;
  sub_20D9735E8();
  (*(v115 + 8))(v83, v87);
  v88 = v111;
  v89 = *(v111 + 16);
  v90 = v146;
  v91 = v112;
  v89(v146, v155, v112);
  *&v157 = v90;
  v92 = v110;
  v93 = v144;
  v89(v110, v144, v91);
  *(&v157 + 1) = v92;
  v94 = v120;
  v95 = v119;
  v96 = v121;
  (*(v120 + 16))(v119, v86, v121);
  v158 = v95;
  sub_20D8EF030(&v157, v122);
  v97 = *(v94 + 8);
  v97(v86, v96);
  v98 = *(v88 + 8);
  v98(v93, v91);
  v98(v155, v91);
  v97(v95, v96);
  v98(v92, v91);
  return (v98)(v146, v91);
}

uint64_t sub_20D8FF500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v119 = a5;
  v118 = a4;
  v148 = a2;
  v123 = a6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v100 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B018, &qword_20D97CE98);
  v121 = *(v122 - 8);
  v9 = MEMORY[0x28223BE20](v122);
  v120 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = &v100 - v11;
  v145 = sub_20D974118();
  v153 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v100 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v151 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v100 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v100 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v28 = *(v27 - 8);
  v155 = v27;
  v156 = v28;
  MEMORY[0x28223BE20](v27);
  v150 = &v100 - v29;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v152 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v100 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  v112 = *(v113 - 8);
  v31 = MEMORY[0x28223BE20](v113);
  v111 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v100 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v146 = &v100 - v36;
  MEMORY[0x28223BE20](v35);
  v154 = &v100 - v37;
  v160 = a1;
  v161 = a3;
  v38 = qword_27C8386D8;
  v149 = a1;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = *(&xmmword_27C83AB58 + 1);
  v139 = xmmword_27C83AB58;
  v157 = xmmword_27C83AB58;
  swift_getKeyPath();
  v40 = v142 + *(type metadata accessor for HistoricalUsageSnapshot(0) + 52);
  v41 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v42 = v40 + *(v41 + 20);
  v43 = v40 + *(v41 + 64);
  v44 = sub_20D9727D8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  v137 = v43;
  v135 = v45 + 16;
  v134 = v46;
  v46(v23, v43, v44);
  v47 = *(v45 + 56);
  v138 = v44;
  v136 = v45 + 56;
  v133 = v47;
  v47(v23, 0, 1, v44);
  v48 = sub_20D7E1EF8();
  swift_bridgeObjectRetain_n();
  v140 = v42;
  sub_20D9737C8();

  sub_20D7E3944(v23, &qword_27C839548, &unk_20D979C20);
  v143 = v39;

  v49 = v26;
  v109 = v23;
  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v50 = *(&xmmword_27C83AB68 + 1);
  v157 = xmmword_27C83AB68;
  v51 = xmmword_27C83AB68;
  v127 = xmmword_27C83AB68;
  swift_bridgeObjectRetain_n();
  v124 = v20;
  sub_20D9737B8();

  *&v157 = v51;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  v132 = sub_20D972C58();
  sub_20D9736E8();
  v125 = v48;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  v130 = sub_20D972628();
  v129 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  v52 = v150;
  v53 = v49;
  sub_20D973668();
  v108 = objc_opt_self();
  v54 = [v108 secondarySystemFillColor];
  v55 = sub_20D974888();
  v126 = v15;
  *&v157 = v55;
  v56 = sub_20D909D58();
  v57 = MEMORY[0x277CE0F78];
  v58 = v141;
  v59 = v155;
  v60 = v56;
  v128 = v56;
  sub_20D9735B8();

  v107 = *(v156 + 8);
  v156 += 8;
  v107(v52, v59);
  type metadata accessor for HistoricalUsageChart(0);
  sub_20D9741C8();
  v106 = *MEMORY[0x277CE0118];
  v61 = v153;
  v62 = *(v153 + 104);
  v104 = v153 + 104;
  v105 = v62;
  v63 = v110;
  v64 = v145;
  v62(v110);
  *&v157 = v59;
  *(&v157 + 1) = v57;
  v158 = v60;
  v159 = MEMORY[0x277CE0F60];
  v142 = MEMORY[0x277CBB260];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v53;
  v65 = v144;
  sub_20D9735D8();
  v66 = *(v61 + 8);
  v153 = v61 + 8;
  v102 = v66;
  v66(v63, v64);
  v67 = *(v152 + 8);
  v152 += 8;
  v101 = v67;
  v67(v58, v65);
  v160 = v149;
  *&v157 = v139;
  *(&v157 + 1) = v143;
  swift_getKeyPath();
  v68 = v109;
  v69 = v138;
  v134(v109, v137, v138);
  v133(v68, 0, 1, v69);

  sub_20D9737C8();

  sub_20D7E3944(v68, &qword_27C839548, &unk_20D979C20);

  v70 = v127;
  *&v157 = v127;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  *&v157 = v70;
  *(&v157 + 1) = v50;
  swift_getKeyPath();

  sub_20D9737B8();

  sub_20D9736E8();
  v71 = v150;
  sub_20D973668();
  v72 = [v108 secondarySystemFillColor];
  *&v157 = sub_20D974888();
  v73 = v141;
  v74 = v155;
  sub_20D9735B8();

  v75 = v107;
  v107(v71, v74);
  sub_20D9741C8();
  v76 = v145;
  v105(v63, v106, v145);
  v77 = v144;
  sub_20D9735D8();
  v102(v63, v76);
  v101(v73, v77);
  v160 = v149;
  *&v157 = v139;
  *(&v157 + 1) = v143;
  swift_getKeyPath();
  v78 = v138;
  v134(v68, v137, v138);
  v133(v68, 0, 1, v78);

  sub_20D9737C8();

  sub_20D7E3944(v68, &qword_27C839548, &unk_20D979C20);

  v79 = v127;
  *&v157 = v127;
  *(&v157 + 1) = v50;
  swift_getKeyPath();
  sub_20D9737B8();

  *&v157 = v79;
  *(&v157 + 1) = v50;
  sub_20D9737B8();

  sub_20D9736E8();
  v80 = v150;
  sub_20D973668();
  v81 = MEMORY[0x277CE1318];
  v82 = MEMORY[0x277CE1310];
  v83 = v114;
  v84 = v155;
  v85 = v128;
  sub_20D9735B8();
  v75(v80, v84);
  *&v157 = v84;
  *(&v157 + 1) = v81;
  v158 = v85;
  v159 = v82;
  swift_getOpaqueTypeConformance2();
  v86 = v115;
  v87 = v117;
  sub_20D9735E8();
  (*(v116 + 8))(v83, v87);
  v88 = v112;
  v89 = *(v112 + 16);
  v90 = v147;
  v91 = v113;
  v89(v147, v154, v113);
  *&v157 = v90;
  v92 = v111;
  v93 = v146;
  v89(v111, v146, v91);
  *(&v157 + 1) = v92;
  v94 = v121;
  v95 = v120;
  v96 = v122;
  (*(v121 + 16))(v120, v86, v122);
  v158 = v95;
  sub_20D8EEE5C(&v157, v123);
  v97 = *(v94 + 8);
  v97(v86, v96);
  v98 = *(v88 + 8);
  v98(v93, v91);
  v98(v154, v91);
  v97(v95, v96);
  v98(v92, v91);
  return (v98)(v147, v91);
}

uint64_t sub_20D9007DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B060, &qword_20D97CF18);
  MEMORY[0x28223BE20](v111);
  v110 = v78 - v4;
  v120 = sub_20D974118();
  v124 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v108 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v116 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v114 = v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v12 - 8);
  v115 = v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v78 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v102 = v78 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v123 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v103 = v78 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADE8, &qword_20D97CB50);
  v109 = *(v105 - 8);
  v19 = MEMORY[0x28223BE20](v105);
  v107 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v106 = v78 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v119 = v78 - v24;
  MEMORY[0x28223BE20](v23);
  v121 = v78 - v25;
  v128 = a1;
  v26 = qword_27C8386D8;
  v104 = a1;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *(&xmmword_27C83AB58 + 1);
  v100 = xmmword_27C83AB58;
  v125 = xmmword_27C83AB58;
  swift_getKeyPath();
  v28 = &v2[*(type metadata accessor for HistoricalUsageSnapshot(0) + 52)];
  v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = &v28[*(v29 + 20)];
  v31 = &v28[*(v29 + 64)];
  v32 = sub_20D9727D8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v35 = v115;
  v98 = v31;
  v96 = v33 + 16;
  v95 = v34;
  v34(v115, v31, v32);
  v36 = *(v33 + 56);
  v99 = v32;
  v97 = v33 + 56;
  v94 = v36;
  v36(v35, 0, 1, v32);
  v37 = sub_20D7E1EF8();
  swift_bridgeObjectRetain_n();
  v101 = v30;
  v87 = v2;
  sub_20D9737C8();

  sub_20D7E3944(v35, &qword_27C839548, &unk_20D979C20);
  v93 = v27;

  v38 = v16;
  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v39 = *(&xmmword_27C83AB68 + 1);
  v125 = xmmword_27C83AB68;
  v40 = xmmword_27C83AB68;
  v91 = xmmword_27C83AB68;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  v83 = v37;
  sub_20D9737B8();

  *&v125 = v40;
  *(&v125 + 1) = v39;
  swift_getKeyPath();

  sub_20D9737B8();

  v92 = sub_20D972C58();
  sub_20D9736E8();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  v88 = sub_20D972628();
  v90 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0, MEMORY[0x277D83980]);
  v41 = v102;
  sub_20D973668();
  v42 = type metadata accessor for HistoricalUsageChart(0);
  v43 = *&v87[*(v42 + 40) + 16];
  v82 = &v87[*(v42 + 40)];
  *&v125 = v43;
  v44 = sub_20D909D58();
  v45 = v103;
  v78[0] = v38;
  v46 = v117;
  v47 = MEMORY[0x277CE1318];
  v48 = v44;
  v78[1] = v44;
  v49 = MEMORY[0x277CE1310];
  sub_20D9735B8();
  v50 = *(v122 + 8);
  v122 += 8;
  v87 = v50;
  v51 = v46;
  (v50)(v41, v46);
  sub_20D9741C8();
  v86 = *MEMORY[0x277CE0118];
  v52 = v124;
  v53 = *(v124 + 104);
  v84 = v124 + 104;
  v85 = v53;
  v54 = v108;
  v55 = v120;
  v53(v108);
  *&v125 = v51;
  *(&v125 + 1) = v47;
  v126 = v48;
  v127 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v118;
  sub_20D9735D8();
  v57 = *(v52 + 8);
  v124 = v52 + 8;
  v80 = v57;
  v57(v54, v55);
  v58 = *(v123 + 8);
  v123 += 8;
  v79 = v58;
  v58(v45, v56);
  v128 = v104;
  *&v125 = v100;
  *(&v125 + 1) = v93;
  swift_getKeyPath();
  v59 = v115;
  v60 = v99;
  v95(v115, v98, v99);
  v94(v59, 0, 1, v60);

  sub_20D9737C8();

  sub_20D7E3944(v59, &qword_27C839548, &unk_20D979C20);

  v61 = v91;
  *&v125 = v91;
  *(&v125 + 1) = v39;
  swift_getKeyPath();
  sub_20D9737B8();

  *&v125 = v61;
  *(&v125 + 1) = v39;
  swift_getKeyPath();
  sub_20D9737B8();

  sub_20D9736E8();
  sub_20D973668();
  *&v125 = *(v82 + 3);
  v62 = v117;
  sub_20D9735B8();
  (v87)(v41, v62);
  sub_20D9741C8();
  v63 = v120;
  v85(v54, v86, v120);
  v64 = v118;
  v65 = v119;
  sub_20D9735D8();
  v80(v54, v63);
  v79(v45, v64);
  v66 = v109;
  v67 = *(v109 + 16);
  v68 = v106;
  v69 = v105;
  v67(v106, v121, v105);
  v70 = v107;
  v67(v107, v65, v69);
  v71 = v110;
  v67(v110, v68, v69);
  v72 = v111;
  v73 = *(v111 + 48);
  v67(&v71[v73], v70, v69);
  v74 = *(v66 + 32);
  v75 = v112;
  v74(v112, v71, v69);
  v74(v75 + *(v72 + 48), &v71[v73], v69);
  v76 = *(v66 + 8);
  v76(v119, v69);
  v76(v121, v69);
  v76(v70, v69);
  return (v76)(v68, v69);
}

uint64_t sub_20D90167C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B028, &qword_20D97CEA8);
  MEMORY[0x28223BE20](v97);
  v96 = v68 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD60, &qword_20D97CB10);
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = v68 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD58, &qword_20D97CB08);
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = v68 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD50, &qword_20D97CB00);
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = v68 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD48, &qword_20D97CAF8);
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v86 = v68 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD40, &qword_20D97CAF0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B030, &qword_20D97CEB0);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v101 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B038, &qword_20D97CEB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B040, &qword_20D97CEC0);
  MEMORY[0x28223BE20](v16 - 8);
  v102 = (v68 - v17);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD20, &qword_20D97CAE0);
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v19 = v68 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD18, &qword_20D97CAD8);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = v68 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B048, &qword_20D97CEC8);
  v77 = *(v78 - 8);
  v21 = MEMORY[0x28223BE20](v78);
  v99 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = v68 - v23;
  v105 = a1;
  v24 = qword_27C8386D8;
  v76 = a1;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = *(&xmmword_27C83AB58 + 1);
  v71 = xmmword_27C83AB58;
  v109 = xmmword_27C83AB58;
  swift_getKeyPath();
  sub_20D7E1EF8();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v26 = *(&xmmword_27C83AB68 + 1);
  v70 = xmmword_27C83AB68;
  v109 = xmmword_27C83AB68;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  v68[0] = v15;
  v68[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B050, &qword_20D97CF10);
  v68[2] = sub_20D972628();
  v68[1] = sub_20D7EBC4C(&qword_27C83B058, &qword_27C83B050, &qword_20D97CF10, MEMORY[0x277D83980]);
  sub_20D9739D8();
  *&v109 = sub_20D974918();
  v27 = sub_20D90A3D8();
  v28 = MEMORY[0x277CE0F78];
  v29 = v69;
  v30 = v72;
  v31 = MEMORY[0x277CE0F60];
  sub_20D9735B8();

  (*(v73 + 8))(v19, v30);
  *&v109 = v30;
  *(&v109 + 1) = v28;
  v110 = v27;
  v111 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v75;
  sub_20D973598();
  (*(v74 + 8))(v29, v32);
  v105 = v76;
  *&v109 = v71;
  *(&v109 + 1) = v25;
  swift_getKeyPath();

  sub_20D9737B8();

  *&v109 = v70;
  *(&v109 + 1) = v26;
  swift_getKeyPath();
  sub_20D9737B8();

  v33 = v79;
  sub_20D973948();
  v34 = sub_20D90A538();
  v35 = sub_20D90A58C();
  v36 = MEMORY[0x277CE1120];
  v37 = v81;
  sub_20D973758();
  v38 = sub_20D90A488();
  *&v109 = v36;
  *(&v109 + 1) = v34;
  v110 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v82;
  v41 = v84;
  v42 = v89;
  sub_20D973608();
  (*(v83 + 8))(v37, v42);
  (*(v80 + 8))(v33, v41);
  sub_20D973B38();
  v105 = v41;
  v106 = v42;
  v107 = v38;
  v108 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v86;
  v45 = v88;
  sub_20D973628();
  sub_20D90D3D8(&v109);
  (*(v85 + 8))(v40, v45);
  sub_20D9748E8();
  v46 = sub_20D974948();

  v104 = v46;
  v105 = v45;
  v106 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v87;
  v49 = v93;
  v50 = MEMORY[0x277CE0F78];
  v51 = MEMORY[0x277CE0F60];
  sub_20D9735B8();

  (*(v90 + 8))(v44, v49);
  v105 = v49;
  v106 = v50;
  v107 = v47;
  v108 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v100;
  v53 = v92;
  sub_20D9735C8();
  (*(v91 + 8))(v48, v53);
  v54 = v77;
  v102 = *(v77 + 16);
  v55 = v99;
  v56 = v78;
  v102(v99, v103, v78);
  v58 = v94;
  v57 = v95;
  v59 = *(v94 + 16);
  v60 = v101;
  v59(v101, v52, v95);
  v61 = v96;
  v102(v96, v55, v56);
  v62 = v97;
  v63 = *(v97 + 48);
  v59(&v61[v63], v60, v57);
  v64 = v98;
  (*(v54 + 32))(v98, v61, v56);
  (*(v58 + 32))(v64 + *(v62 + 48), &v61[v63], v57);
  v65 = *(v58 + 8);
  v65(v100, v57);
  v66 = *(v54 + 8);
  v66(v103, v56);
  v65(v101, v57);
  return (v66)(v99, v56);
}

uint64_t sub_20D9024E4@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 8 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D902514(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_20D908558(v6);
  v6 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v6 + 16))
  {
    *(v6 + 8 * v4 + 32) = v5;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20D902590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v11, a2, v12);
  v15 = *(v13 + 56);
  v15(v11, 0, 1, v12);
  v14(v9, a3, v12);
  v15(v9, 0, 1, v12);
  LOBYTE(a1) = sub_20D90BEE0(a1, v11, v9);
  sub_20D7E3944(v9, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v11, &qword_27C8389E8, &qword_20D9768D0);
  return a1 & 1;
}

uint64_t sub_20D902768()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](qword_20D97D208[v1]);
  return sub_20D9758A8();
}

uint64_t sub_20D9027F0()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](qword_20D97D208[v1]);
  return sub_20D9758A8();
}

void *sub_20D90283C@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result + 1;
  v3 = v2 >= 3;
  v4 = 0x201u >> (8 * v2);
  if (v3)
  {
    LOBYTE(v4) = 3;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_20D90287C()
{
  v162 = sub_20D9722C8();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v149 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_20D972348();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v149 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_20D972408();
  v163 = *(v164 - 8);
  v2 = MEMORY[0x28223BE20](v164);
  v153 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v154 = &v149 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v157 = &v149 - v7;
  MEMORY[0x28223BE20](v6);
  v159 = &v149 - v8;
  v9 = sub_20D972378();
  v187 = *(v9 - 8);
  v188 = v9;
  MEMORY[0x28223BE20](v9);
  v186 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_20D972308();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v178 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_20D972318();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v177 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9726E8();
  MEMORY[0x28223BE20](v13 - 8);
  v173 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v15 - 8);
  v171 = &v149 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v17 - 8);
  v168 = &v149 - v18;
  v176 = sub_20D972518();
  v175 = *(v176 - 8);
  v19 = MEMORY[0x28223BE20](v176);
  v169 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v149 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v149 - v24;
  MEMORY[0x28223BE20](v23);
  v174 = &v149 - v25;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v26 = MEMORY[0x28223BE20](v192);
  v193 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v190 = &v149 - v28;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  MEMORY[0x28223BE20](v191);
  v195 = &v149 - v29;
  v185 = sub_20D9727B8();
  v184 = *(v185 - 1);
  MEMORY[0x28223BE20](v185);
  v183 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v31 - 8);
  v200 = &v149 - v32;
  v201 = sub_20D972628();
  v203 = *(v201 - 8);
  v33 = MEMORY[0x28223BE20](v201);
  v194 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v196 = &v149 - v36;
  MEMORY[0x28223BE20](v35);
  v197 = &v149 - v37;
  v38 = sub_20D9727D8();
  v199 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v166 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v149 - v41;
  v198 = sub_20D972838();
  v43 = *(v198 - 8);
  v44 = MEMORY[0x28223BE20](v198);
  v167 = &v149 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v149 - v46;
  v202 = sub_20D972AF8();
  v48 = *(v202 - 8);
  v49 = MEMORY[0x28223BE20](v202);
  v165 = &v149 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v149 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v149 - v54;
  type metadata accessor for HistoricalUsageSnapshot(0);
  sub_20D972E58();
  sub_20D972E68();
  sub_20D972E48();
  v56 = v200;
  sub_20D8EFD9C(v200);
  v57 = v56;
  v58 = v203;
  v59 = v56;
  v60 = v201;
  if ((*(v203 + 48))(v59, 1) == 1)
  {
    (*(v199 + 8))(v42, v38);
    (*(v43 + 8))(v47, v198);
    (*(v48 + 8))(v55, v202);
    sub_20D7E3944(v57, &qword_27C8389E8, &qword_20D9768D0);
    return 0;
  }

  v189 = v42;
  v150 = v47;
  v151 = v38;
  v152 = v43;
  v62 = v58;
  v63 = *(v58 + 32);
  v64 = v197;
  v65 = v60;
  v63(v197, v57, v60);
  v66 = v202;
  (*(v48 + 16))(v53, v55, v202);
  v67 = *(v48 + 88);
  v149 = v53;
  v68 = v67(v53, v66);
  v69 = v48;
  v70 = v65;
  v71 = v64;
  if (v68 == *MEMORY[0x277D075B0])
  {
    v164 = v48;
    v165 = v63;
    v200 = v55;
    v72 = v196;
    sub_20D972FA8();
    v73 = v184;
    v74 = v183;
    v75 = v185;
    (*(v184 + 104))(v183, *MEMORY[0x277CC9980], v185);
    v76 = v194;
    sub_20D9730D8();
    (*(v73 + 8))(v74, v75);
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_20D974FC8();
    if (result)
    {
      v77 = v62;
      v78 = *(v62 + 16);
      v79 = v76;
      v80 = v190;
      v78(v190, v72, v70);
      v81 = v192;
      v78((v80 + *(v192 + 48)), v79, v70);
      v82 = v193;
      sub_20D7EB7E8(v80, v193, &unk_27C83C750, &unk_20D978DD0);
      v83 = *(v81 + 48);
      v84 = v195;
      v85 = v165;
      (v165)(v195, v82, v70);
      v86 = *(v77 + 8);
      v86(v82 + v83, v70);
      v185 = v86;
      v203 = v77 + 8;
      sub_20D7EAF18(v80, v82, &unk_27C83C750, &unk_20D978DD0);
      (v85)(&v84[*(v191 + 36)], v82 + *(v81 + 48), v70);
      v86(v82, v70);
      v87 = sub_20D972248();
      (*(*(v87 - 8) + 56))(v168, 1, 1, v87);
      v88 = sub_20D972208();
      (*(*(v88 - 8) + 56))(v171, 1, 1, v88);
      sub_20D9726A8();
      sub_20D972738();
      v89 = v70;
      v90 = v167;
      sub_20D972818();
      v91 = v169;
      sub_20D9724B8();
      v92 = v178;
      sub_20D9722E8();
      v93 = v177;
      sub_20D9722D8();
      (*(v181 + 8))(v92, v182);
      v94 = v170;
      sub_20D9724C8();
      (*(v179 + 8))(v93, v180);
      v95 = *(v175 + 8);
      v96 = v176;
      v95(v91, v176);
      v97 = v172;
      sub_20D9724A8();
      v95(v94, v96);
      v98 = v186;
      sub_20D972358();
      v99 = v174;
      sub_20D9724E8();
      (*(v187 + 8))(v98, v188);
      v95(v97, v96);
      v100 = v152;
      v101 = v150;
      v102 = v198;
      (*(v152 + 16))(v90, v150, v198);
      sub_20D972508();
      v103 = v195;
      v193 = sub_20D9724F8();
      v95(v99, v96);
      sub_20D7E3944(v103, &qword_27C839550, &qword_20D979C30);
      v104 = v185;
      (v185)(v194, v89);
      v104(v196, v89);
      v104(v197, v89);
      (*(v199 + 8))(v189, v151);
      (*(v100 + 8))(v101, v102);
      (*(v164 + 8))(v200, v202);
      return v193;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v105 = v196;
  if (v68 == *MEMORY[0x277D075B8] || v68 == *MEMORY[0x277D075C8])
  {
    v200 = v55;
    v164 = v69;
    sub_20D973108();
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_20D974FC8();
    if (result)
    {
      v111 = v190;
      (*(v62 + 16))(v190, v64, v70);
      v112 = v192;
      v113 = v63;
      v63((v111 + *(v192 + 48)), v105, v70);
      v114 = v193;
      sub_20D7EB7E8(v111, v193, &unk_27C83C750, &unk_20D978DD0);
      v115 = *(v112 + 48);
      v116 = v195;
      v113(v195, v114, v70);
      v117 = *(v62 + 8);
      v117(v114 + v115, v70);
      sub_20D7EAF18(v111, v114, &unk_27C83C750, &unk_20D978DD0);
      v113((v116 + *(v191 + 36)), v114 + *(v112 + 48), v70);
      v117(v114, v70);
      v118 = v200;
      v119 = v189;
      v120 = sub_20D90D490(v116, v200, v189);
      sub_20D7E3944(v116, &qword_27C839550, &qword_20D979C30);
      v117(v197, v70);
      (*(v199 + 8))(v119, v151);
      (*(v152 + 8))(v150, v198);
      (*(v164 + 8))(v118, v202);
      return v120;
    }

    goto LABEL_18;
  }

  if (v68 == *MEMORY[0x277D075D0])
  {
    v106 = v165;
    (*(v69 + 104))(v165);
    v107 = v62;
    v108 = v195;
    v109 = v189;
    sub_20D972DD8();
    v110 = *(v69 + 8);
    v110(v106, v66);
    v193 = sub_20D90D490(v108, v55, v109);
    sub_20D7E3944(v108, &qword_27C839550, &qword_20D979C30);
    (*(v107 + 8))(v71, v70);
    (*(v199 + 8))(v109, v151);
    (*(v152 + 8))(v150, v198);
    v110(v55, v66);
    return v193;
  }

  v200 = v55;
  if (v68 == *MEMORY[0x277D075C0])
  {
    v121 = v70;
    v164 = v69;
    LODWORD(v194) = v68;
    sub_20D972F78();
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    result = sub_20D974FC8();
    if (result)
    {
      v122 = *(v62 + 16);
      v123 = v62;
      v124 = v190;
      v122(v190, v64, v121);
      v125 = v192;
      v63((v124 + *(v192 + 48)), v105, v121);
      v126 = v123;
      v127 = v193;
      sub_20D7EB7E8(v124, v193, &unk_27C83C750, &unk_20D978DD0);
      v128 = *(v125 + 48);
      v129 = v195;
      v63(v195, v127, v121);
      v130 = *(v126 + 8);
      v130(v127 + v128, v121);
      sub_20D7EAF18(v124, v127, &unk_27C83C750, &unk_20D978DD0);
      v63((v129 + *(v191 + 36)), v127 + *(v125 + 48), v121);
      v130(v127, v121);
      v131 = v164;
      v132 = v165;
      v133 = v202;
      (*(v164 + 104))(v165, v194, v202);
      v134 = v189;
      v193 = sub_20D90D490(v129, v132, v189);
      v135 = *(v131 + 8);
      v135(v132, v133);
      sub_20D7E3944(v129, &qword_27C839550, &qword_20D979C30);
      v130(v197, v121);
      (*(v199 + 8))(v134, v151);
      (*(v152 + 8))(v150, v198);
      v135(v200, v133);
      return v193;
    }

    goto LABEL_19;
  }

  v136 = v153;
  MEMORY[0x20F31FDE0]();
  v137 = v155;
  sub_20D972328();
  v138 = v154;
  sub_20D972288();
  (*(v156 + 8))(v137, v158);
  v139 = *(v163 + 8);
  v140 = v164;
  v139(v136, v164);
  v141 = v160;
  sub_20D9722A8();
  v142 = v157;
  sub_20D972258();
  (*(v161 + 8))(v141, v162);
  v139(v138, v140);
  v143 = v186;
  sub_20D972358();
  v144 = v159;
  sub_20D972298();
  (*(v187 + 8))(v143, v188);
  v139(v142, v140);
  sub_20D911038(&unk_281127750, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  v145 = v197;
  sub_20D972608();
  v139(v144, v140);
  (*(v62 + 8))(v145, v70);
  (*(v199 + 8))(v189, v151);
  (*(v152 + 8))(v150, v198);
  v146 = *(v69 + 8);
  v147 = v202;
  v146(v200, v202);
  v148 = v204;
  v146(v149, v147);
  return v148;
}

uint64_t sub_20D90419C(uint64_t a1)
{
  v1 = sub_20D9740E8();
  MEMORY[0x28223BE20](v1 - 8);
  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D9749D8();
  sub_20D9740A8();

  sub_20D9740C8();
  sub_20D974108();
  v2 = sub_20D9745A8();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() tertiaryLabelColor];
  sub_20D974888();
  v8 = sub_20D974508();
  v10 = v9;
  v17 = v11;

  sub_20D7EADC0(v2, v4, v6 & 1);

  sub_20D9740D8();
  sub_20D9740C8();
  sub_20D974098();
  sub_20D9740C8();
  sub_20D974108();
  v12 = sub_20D9745A8();
  v14 = v13;
  LOBYTE(v2) = v15;
  v18 = sub_20D974528();
  sub_20D7EADC0(v12, v14, v2 & 1);

  sub_20D7EADC0(v8, v10, v17 & 1);

  return v18;
}

uint64_t sub_20D904440()
{
  v1 = type metadata accessor for HistoricalUsageChart(0);
  v2 = v0 + *(v1 + 28);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = *v2;
    if (v3 <= 2)
    {
      return sub_20D8E5710(v3);
    }
  }

  if (*(v0 + *(v1 + 24) + 8))
  {
    if (qword_27C8386D0 != -1)
    {
      swift_once();
    }

    v5 = &qword_27C83AB48;
  }

  else
  {
    if (qword_27C8386C8 != -1)
    {
      swift_once();
    }

    v5 = &qword_27C83AB38;
  }

  v4 = *v5;

  return v4;
}

double sub_20D90452C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a5;
  v109 = a6;
  v110 = a4;
  v90 = a3;
  v94 = a2;
  v7 = sub_20D973738();
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D973688();
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_20D972628();
  v106 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = v11;
  v104 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = v12;
  v101 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D972838();
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D973D58();
  v89 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D972408();
  v96 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v87 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v87 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC10, &qword_20D97CA30);
  v22 = *(v93 - 8);
  v91 = *(v22 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v87 - v23;
  v24 = sub_20D972AF8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v18;
  v98 = swift_allocBox();
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v111 = v31;
  if (qword_27C838450 != -1)
  {
    swift_once();
  }

  v124 = xmmword_27C839880;
  v125 = xmmword_27C839890;
  v126 = xmmword_27C8398A0;
  v120 = xmmword_27C839840;
  v121 = xmmword_27C839850;
  v122 = xmmword_27C839860;
  v123 = unk_27C839870;
  v116 = xmmword_27C839800;
  v117 = xmmword_27C839810;
  v118 = xmmword_27C839820;
  v119 = xmmword_27C839830;
  v114 = xmmword_27C8397E0;
  v115 = xmmword_27C8397F0;
  v32 = *(v25 + 16);
  v103 = a1;
  v32(v27, a1, v24);
  v33 = (*(v25 + 88))(v27, v24);
  if (v33 == *MEMORY[0x277D075B0])
  {
    if (qword_27C838688 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v28, qword_27C840D40);
    v35 = v96;
    v96[2](v30, v34, v28);
    v37 = v92;
    v36 = v93;
    (*(v22 + 16))(v92, v94, v93);
    v38 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v39 = swift_allocObject();
    (*(v22 + 32))(v39 + v38, v37, v36);
    v40 = v111;
    v41 = *(v111 + 16);
    v42 = *(v111 + 24);
    v43 = sub_20D90D2CC;
LABEL_7:
    *(v40 + 16) = v43;
    *(v40 + 24) = v39;
    sub_20D7DD774(v41, v42);
LABEL_8:
    LODWORD(v94) = 0;
    v44 = v103;
    goto LABEL_22;
  }

  if (v33 == *MEMORY[0x277D075B8])
  {
    v45 = v89;
    (*(v89 + 104))(v17, *MEMORY[0x277CDF998], v15);
    sub_20D911038(&qword_281127038, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v46 = sub_20D974FA8();
    (*(v45 + 8))(v17, v15);
    if (v46)
    {
      v44 = v103;
      v35 = v96;
      if (qword_27C838690 != -1)
      {
        swift_once();
      }

      v47 = qword_27C840D58;
    }

    else
    {
      v44 = v103;
      v35 = v96;
      if (qword_27C838698 != -1)
      {
        swift_once();
      }

      v47 = qword_27C840D70;
    }

    v52 = __swift_project_value_buffer(v28, v47);
    v53 = v88;
    (v35)[2](v88, v52, v28);
    (v35)[4](v30, v53, v28);
    LODWORD(v94) = 1;
  }

  else
  {
    v35 = v96;
    if (v33 == *MEMORY[0x277D075C8])
    {
      if (qword_27C8386A8 != -1)
      {
        swift_once();
      }

      v48 = __swift_project_value_buffer(v28, qword_27C840DA0);
      v35[2](v30, v48, v28);
      v50 = v92;
      v49 = v93;
      (*(v22 + 16))(v92, v94, v93);
      v51 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v39 = swift_allocObject();
      (*(v22 + 32))(v39 + v51, v50, v49);
      v40 = v111;
      v41 = *(v111 + 16);
      v42 = *(v111 + 24);
      v43 = sub_20D90D220;
      goto LABEL_7;
    }

    if (v33 != *MEMORY[0x277D075D0])
    {
      if (v33 == *MEMORY[0x277D075C0])
      {
        if (qword_27C8386C0 != -1)
        {
          swift_once();
        }

        v76 = __swift_project_value_buffer(v28, qword_27C840DE8);
        v35[2](v30, v76, v28);
      }

      else
      {
        if (qword_27C8386A8 != -1)
        {
          swift_once();
        }

        v86 = __swift_project_value_buffer(v28, qword_27C840DA0);
        v35[2](v30, v86, v28);
        (*(v25 + 8))(v27, v24);
      }

      goto LABEL_8;
    }

    v73 = v89;
    (*(v89 + 104))(v17, *MEMORY[0x277CDF9A8], v15);
    sub_20D911038(&qword_281127038, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v74 = sub_20D974FA8();
    (*(v73 + 8))(v17, v15);
    if (v74)
    {
      v44 = v103;
      if (qword_27C8386B0 != -1)
      {
        swift_once();
      }

      v75 = qword_27C840DB8;
    }

    else
    {
      v44 = v103;
      if (qword_27C8386B8 != -1)
      {
        swift_once();
      }

      v75 = qword_27C840DD0;
    }

    v77 = __swift_project_value_buffer(v28, v75);
    v78 = v87;
    (v35)[2](v87, v77, v28);
    (v35)[4](v30, v78, v28);
    v80 = v92;
    v79 = v93;
    (*(v22 + 16))(v92, v94, v93);
    v81 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v82 = swift_allocObject();
    (*(v22 + 32))(v82 + v81, v80, v79);
    v83 = v111;
    v84 = *(v111 + 16);
    v85 = *(v111 + 24);
    *(v111 + 16) = sub_20D90D208;
    *(v83 + 24) = v82;
    sub_20D7DD774(v84, v85);
    LODWORD(v94) = 0;
  }

LABEL_22:
  v54 = v97;
  sub_20D972788();
  sub_20D9723F8();
  if (*(v44 + *(v54 + 60)) == 1)
  {
    if (qword_27C8386A0 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v28, qword_27C840D88);
    v35[3](v30, v55, v28);
  }

  v56 = v101;
  sub_20D91092C(v44, v101, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v57 = v106;
  v58 = v104;
  (*(v106 + 16))(v104, v105, v112);
  v59 = (*(v99 + 80) + 24) & ~*(v99 + 80);
  v60 = (v100 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v57 + 80) + v60 + 209) & ~*(v57 + 80);
  v62 = (v102 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v111;
  sub_20D910994(v56, v63 + v59, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v64 = v63 + v60;
  v65 = v125;
  *(v64 + 160) = v124;
  *(v64 + 176) = v65;
  *(v64 + 192) = v126;
  v66 = v121;
  *(v64 + 96) = v120;
  *(v64 + 112) = v66;
  v67 = v123;
  *(v64 + 128) = v122;
  *(v64 + 144) = v67;
  v68 = v117;
  *(v64 + 32) = v116;
  *(v64 + 48) = v68;
  v69 = v119;
  *(v64 + 64) = v118;
  *(v64 + 80) = v69;
  v70 = v115;
  *v64 = v114;
  *(v64 + 16) = v70;
  LOBYTE(v56) = v94;
  *(v64 + 208) = v94;
  (*(v57 + 32))(v63 + v61, v58, v112);
  v71 = v63 + v62;
  *v71 = v98;
  *(v71 + 8) = v56;

  sub_20D85D690(&v114, &v113);

  sub_20D973678();
  sub_20D973728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF78, &qword_20D97CC70);
  sub_20D90CFCC();
  sub_20D973998();

  return result;
}

BOOL sub_20D905354()
{
  v0 = sub_20D971EA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CA70, &unk_20D97CC90);
  v4 = sub_20D9727B8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20D979110;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CC9980], v4);
  sub_20D84CE2C(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  sub_20D972728();

  v8 = sub_20D971E78();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  return (v10 & 1) == 0 && __ROR8__(0xAAAAAAAAAAAAAAABLL * v8 + 0x2AAAAAAAAAAAAAAALL, 1) < 0x2AAAAAAAAAAAAAABuLL;
}

uint64_t sub_20D905580()
{
  v0 = sub_20D971EA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CA70, &unk_20D97CC90);
  v4 = sub_20D9727B8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20D979110;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CC99B8], v4);
  sub_20D84CE2C(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  sub_20D972728();

  v8 = sub_20D971E88();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  return (v8 == 2) & ~v10;
}

uint64_t sub_20D905784(uint64_t a1, uint64_t a2)
{
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972FF8();
  v6 = sub_20D972598();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_20D905870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v103) = a8;
  v84 = a6;
  v100 = a5;
  v115 = a1;
  v116 = a4;
  v86 = a3;
  v114 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF90, &qword_20D97CC78);
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x28223BE20](v10);
  v121 = &v84 - v11;
  v12 = sub_20D973918();
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D973938();
  v108 = *(v14 - 8);
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  v106 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D0, &qword_20D97B1F8);
  v110 = *(v16 - 8);
  v111 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v107 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v84 - v19;
  v20 = sub_20D9737E8();
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20D973858();
  MEMORY[0x28223BE20](v22 - 8);
  v92 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20D972408();
  v89 = *(v24 - 8);
  v90 = v24;
  MEMORY[0x28223BE20](v24);
  v88 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA0, &unk_20D97E150);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF98, &unk_20D97CC80);
  v98 = *(v27 - 8);
  v99 = v27;
  MEMORY[0x28223BE20](v27);
  v94 = &v84 - v28;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA8, &qword_20D97CCA0);
  v102 = *(v120 - 8);
  v29 = MEMORY[0x28223BE20](v120);
  v119 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v97 = &v84 - v31;
  v32 = sub_20D973578();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFB0, &qword_20D97CCA8);
  v101 = *(v118 - 8);
  v36 = MEMORY[0x28223BE20](v118);
  v117 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v122 = &v84 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v84 - v40;
  v42 = sub_20D972628();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v84 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = swift_projectBox();
  sub_20D9739B8();
  result = (*(v43 + 48))(v41, 1, v42);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v47 = *(v43 + 32);
    v115 = v42;
    v47(v45, v41, v42);
    swift_beginAccess();
    v48 = *(a2 + 16);
    if (v48 && (v49 = *(a2 + 24), v50 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64), , LOBYTE(v50) = v48(v45, v86 + v50), sub_20D7DD774(v48, v49), (v50 & 1) == 0))
    {
      (*(v43 + 8))(v45, v115);
      return (*(v112 + 56))(v114, 1, 1, v113);
    }

    else
    {
      v51 = v116;
      sub_20D973B38();
      v134 = v124;
      v135 = v125;
      v136 = v126;
      sub_20D973568();
      v130 = *(v51 + 64);
      *&v131 = v130;

      sub_20D9738C8();
      (*(v33 + 8))(v35, v32);
      v85 = v43;
      if (v100)
      {
        if (sub_20D972598())
        {
          v52 = 56;
        }

        else
        {
          v52 = 48;
        }
      }

      else
      {
        v52 = 48;
      }

      v53 = v87;
      swift_beginAccess();
      v55 = v88;
      v54 = v89;
      v56 = v90;
      (*(v89 + 16))(v88, v53, v90);
      v57 = sub_20D9723C8();
      v59 = v58;
      (*(v54 + 8))(v55, v56);
      *&v131 = v57;
      *(&v131 + 1) = v59;
      sub_20D973838();
      sub_20D9737D8();
      sub_20D7E1EF8();
      v60 = v91;
      sub_20D9736C8();
      v61 = v116;
      v62 = sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150, MEMORY[0x277CBB338]);
      v63 = v94;
      v103 = v45;
      v64 = v95;
      sub_20D9738D8();
      (*(v93 + 8))(v60, v64);
      v65 = *(v61 + v52);

      *&v127 = v65;
      *&v131 = v64;
      *(&v131 + 1) = v62;
      swift_getOpaqueTypeConformance2();
      v66 = v97;
      v67 = v99;
      sub_20D9738C8();

      (*(v98 + 8))(v63, v67);
      sub_20D973B38();
      v131 = v127;
      v132 = v128;
      v133 = v129;
      sub_20D973908();
      v68 = v106;
      sub_20D973928();
      v123[0] = v130;
      v69 = v104;
      v70 = v109;
      sub_20D9738C8();
      sub_20D90D384(&v130);
      (*(v108 + 8))(v68, v70);
      v71 = v101;
      v72 = v117;
      (*(v101 + 16))(v117, v122, v118);
      v123[0] = v72;
      v73 = v102;
      v74 = v119;
      v75 = v120;
      (*(v102 + 16))(v119, v66, v120);
      v123[1] = v74;
      v77 = v110;
      v76 = v111;
      v78 = v107;
      (*(v110 + 16))(v107, v69, v111);
      v123[2] = v78;
      sub_20D8EF520(v123, v121);
      v79 = *(v77 + 8);
      v79(v69, v76);
      v80 = *(v73 + 8);
      v80(v66, v75);
      v81 = *(v71 + 8);
      v82 = v118;
      v81(v122, v118);
      (*(v85 + 8))(v103, v115);
      v79(v78, v76);
      v80(v119, v120);
      v81(v117, v82);
      v83 = v114;
      sub_20D7EAF18(v121, v114, &qword_27C83AF90, &qword_20D97CC78);
      return (*(v112 + 56))(v83, 0, 1, v113);
    }
  }

  return result;
}

uint64_t sub_20D90655C()
{
  v0 = sub_20D972308();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20D972318();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972188();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20D972838();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20D9727D8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20D9726E8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_20D972408();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v16, qword_27C840D40);
  __swift_project_value_buffer(v14, qword_27C840D40);
  v19 = sub_20D972248();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_20D972208();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  v21 = v25;
  sub_20D9722E8();
  v22 = v24;
  sub_20D9722D8();
  (*(v28 + 8))(v21, v29);
  sub_20D972278();
  (*(v26 + 8))(v22, v27);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_20D906A90()
{
  v0 = sub_20D9722C8();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x28223BE20](v0);
  v47 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20D972378();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972348();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972188();
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972838();
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D9727D8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20D9726E8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v18 = sub_20D972408();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v36 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v37 = &v36 - v27;
  __swift_allocate_value_buffer(v26, qword_27C840D88);
  v38 = __swift_project_value_buffer(v18, qword_27C840D88);
  v28 = sub_20D972248();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = sub_20D972208();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  v30 = v41;
  sub_20D972338();
  sub_20D972288();
  (*(v42 + 8))(v30, v43);
  v31 = *(v19 + 8);
  v31(v22, v18);
  v32 = v44;
  sub_20D972368();
  v33 = v37;
  sub_20D972298();
  (*(v45 + 8))(v32, v46);
  v31(v25, v18);
  v34 = v47;
  sub_20D9722B8();
  sub_20D972258();
  (*(v48 + 8))(v34, v49);
  return (v31)(v33, v18);
}

uint64_t sub_20D907198(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void (*a4)(uint64_t), void (*a5)(char *))
{
  v32 = a5;
  v30 = a4;
  v31 = a2(0);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - v6;
  v7 = sub_20D972188();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20D972838();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_20D9727D8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20D9726E8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_20D972408();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v19, a3);
  __swift_project_value_buffer(v17, a3);
  v22 = sub_20D972248();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = sub_20D972208();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v24 = sub_20D972268();
  v25 = v28;
  v30(v24);
  v32(v25);
  (*(v29 + 8))(v25, v31);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_20D9075B8()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "title on selected usage view", 28, 2);
  qword_27C83AB38 = result;
  unk_27C83AB40 = v9;
  return result;
}

uint64_t sub_20D9076FC()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Title for usage selection view", 30, 2);
  qword_27C83AB48 = result;
  unk_27C83AB50 = v9;
  return result;
}

uint64_t sub_20D907844()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Accessibility string used to describe the horizontal date axis", 62, 2);
  *&xmmword_27C83AB58 = result;
  *(&xmmword_27C83AB58 + 1) = v9;
  return result;
}

uint64_t sub_20D907984()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Accessibility string used to describe the vertical Kilowatt Hours axis", 70, 2);
  *&xmmword_27C83AB68 = result;
  *(&xmmword_27C83AB68 + 1) = v9;
  return result;
}

uint64_t sub_20D907AC4()
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
  qword_27C840E00 = result;
  *algn_27C840E08 = v9;
  return result;
}

uint64_t sub_20D907C18()
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
  qword_27C840E10 = result;
  *algn_27C840E18 = v9;
  return result;
}

uint64_t sub_20D907D64()
{
  v0 = sub_20D9726E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_20D975058();
  MEMORY[0x28223BE20](v1 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D9750F8();
  qword_27C840E20 = result;
  *algn_27C840E28 = v4;
  return result;
}

uint64_t sub_20D907ECC()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Title for usage selection view", 30, 2);
  qword_27C83AB78 = result;
  unk_27C83AB80 = v9;
  return result;
}

uint64_t sub_20D908010()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Title for the net usage selection view.", 39, 2);
  qword_27C840E30 = result;
  *algn_27C840E38 = v9;
  return result;
}

uint64_t sub_20D90815C()
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
  result = sub_20D975108(v5, 0, 0, v6, v2, "Title for usage selection view describing energy exported to the grid.", 70, 2);
  qword_27C840E40 = result;
  *algn_27C840E48 = v9;
  return result;
}

uint64_t sub_20D9082F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_20D974048();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_20D7EB7E8(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_20D975468();
    v19 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_20D90856C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
  v34 = v4;
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_20D7E39A4(v24, v35);
      }

      else
      {
        sub_20D7EB630(v24, v35);
      }

      sub_20D975888();
      sub_20D975158();
      v25 = sub_20D9758A8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_20D7E39A4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_20D908824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A340, &qword_20D97B428);
  v36 = v4;
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_20D975888();
      sub_20D975158();
      v26 = sub_20D9758A8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20D908AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_20D975878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_20D908D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A380, &unk_20D97B490);
  v40 = v4;
  v9 = sub_20D975768();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v38 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_20D910994(v25, v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        v41 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_20D91092C(v25, v7, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        v41 = *(*(v10 + 56) + 8 * v23);
      }

      sub_20D975888();
      sub_20D972698();
      sub_20D911038(&unk_281127720, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_20D974F88();
      sub_20D975158();
      v26 = sub_20D9758A8();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v10 = v37;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v10 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_20D910994(v7, *(v11 + 48) + v24 * v19, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_20D909114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A378, &unk_20D97B470);
  v38 = v4;
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_20D975888();
      sub_20D975158();
      v28 = sub_20D9758A8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20D9093D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0B8, &qword_20D97D078);
  v31 = v4;
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_20D975888();
      MEMORY[0x20F323A50](qword_20D97D208[v20]);
      v22 = sub_20D9758A8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_20D909670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A350, &unk_20D97D120);
  v6 = sub_20D975768();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_20D975878();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_20D9098E0(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D909948()
{
  result = qword_27C83AC48;
  if (!qword_27C83AC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC40, &qword_20D97CA60);
    sub_20D9099DC();
    sub_20D90AE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AC48);
  }

  return result;
}

unint64_t sub_20D9099DC()
{
  result = qword_27C83AC50;
  if (!qword_27C83AC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC58, &qword_20D97CA68);
    sub_20D909A68();
    sub_20D90A5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AC50);
  }

  return result;
}

unint64_t sub_20D909A68()
{
  result = qword_27C83AC60;
  if (!qword_27C83AC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC68, &qword_20D97CA70);
    sub_20D909AF4();
    sub_20D909FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AC60);
  }

  return result;
}

unint64_t sub_20D909AF4()
{
  result = qword_27C83AC70;
  if (!qword_27C83AC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC78, &qword_20D97CA78);
    sub_20D909B80();
    sub_20D909E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AC70);
  }

  return result;
}

unint64_t sub_20D909B80()
{
  result = qword_27C83AC80;
  if (!qword_27C83AC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC88, &qword_20D97CA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACB8, &qword_20D97CAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACC0, &qword_20D97CAA8);
    sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8, MEMORY[0x277CE01D8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AC80);
  }

  return result;
}

unint64_t sub_20D909D58()
{
  result = qword_27C83ACA0;
  if (!qword_27C83ACA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D7EBC4C(&qword_27C83ACA8, &qword_27C83ACB0, &qword_20D97CA98, MEMORY[0x277CBB3D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ACA0);
  }

  return result;
}

unint64_t sub_20D909E08()
{
  result = qword_27C83ACD0;
  if (!qword_27C83ACD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACD8, &qword_20D97CAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACE0, &qword_20D97CAB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ACD0);
  }

  return result;
}

unint64_t sub_20D909FA0()
{
  result = qword_27C83ACE8;
  if (!qword_27C83ACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACF0, &qword_20D97CAC0);
    sub_20D90A034();
    sub_20D90A154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ACE8);
  }

  return result;
}

unint64_t sub_20D90A034()
{
  result = qword_27C83ACF8;
  if (!qword_27C83ACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD00, &qword_20D97CAC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACE0, &qword_20D97CAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ACF8);
  }

  return result;
}

unint64_t sub_20D90A154()
{
  result = qword_27C83AD08;
  if (!qword_27C83AD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD10, &qword_20D97CAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD18, &qword_20D97CAD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD20, &qword_20D97CAE0);
    sub_20D90A3D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD40, &qword_20D97CAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD48, &qword_20D97CAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD50, &qword_20D97CB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD58, &qword_20D97CB08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD60, &qword_20D97CB10);
    sub_20D90A488();
    sub_20D90A538();
    sub_20D90A58C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD08);
  }

  return result;
}

unint64_t sub_20D90A3D8()
{
  result = qword_27C83AD28;
  if (!qword_27C83AD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD20, &qword_20D97CAE0);
    sub_20D7EBC4C(&qword_27C83AD30, &qword_27C83AD38, &qword_20D97CAE8, MEMORY[0x277CBB3D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD28);
  }

  return result;
}

unint64_t sub_20D90A488()
{
  result = qword_27C83AD68;
  if (!qword_27C83AD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD58, &qword_20D97CB08);
    sub_20D7EBC4C(&qword_27C83AD70, &qword_27C83AD78, &qword_20D97CB18, MEMORY[0x277CBB3C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD68);
  }

  return result;
}

unint64_t sub_20D90A538()
{
  result = qword_27C83AD80;
  if (!qword_27C83AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD80);
  }

  return result;
}

unint64_t sub_20D90A58C()
{
  result = qword_27C83AD88;
  if (!qword_27C83AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD88);
  }

  return result;
}

unint64_t sub_20D90A5E0()
{
  result = qword_27C83AD90;
  if (!qword_27C83AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AD98, &qword_20D97CB20);
    sub_20D90A674();
    sub_20D90AD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AD90);
  }

  return result;
}

unint64_t sub_20D90A674()
{
  result = qword_27C83ADA0;
  if (!qword_27C83ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADA8, &qword_20D97CB28);
    sub_20D90A700();
    sub_20D90AB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ADA0);
  }

  return result;
}

unint64_t sub_20D90A700()
{
  result = qword_27C83ADB0;
  if (!qword_27C83ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADB8, &qword_20D97CB30);
    sub_20D90A78C();
    sub_20D90A99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ADB0);
  }

  return result;
}

unint64_t sub_20D90A78C()
{
  result = qword_27C83ADC0;
  if (!qword_27C83ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADC8, &qword_20D97CB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADD0, &qword_20D97CB40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACB8, &qword_20D97CAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACC0, &qword_20D97CAA8);
    sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8, MEMORY[0x277CE01D8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ADC0);
  }

  return result;
}

unint64_t sub_20D90A99C()
{
  result = qword_27C83ADD8;
  if (!qword_27C83ADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADE0, &qword_20D97CB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADE8, &qword_20D97CB50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACE0, &qword_20D97CAB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ADD8);
  }

  return result;
}

unint64_t sub_20D90AB6C()
{
  result = qword_27C83ADF0;
  if (!qword_27C83ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ADF8, &qword_20D97CB58);
    sub_20D90ABF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83ADF0);
  }

  return result;
}

unint64_t sub_20D90ABF8()
{
  result = qword_27C83AE00;
  if (!qword_27C83AE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE08, &qword_20D97CB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83ACE0, &qword_20D97CAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AE00);
  }

  return result;
}

unint64_t sub_20D90AD10()
{
  result = qword_27C83AE10;
  if (!qword_27C83AE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE18, &qword_20D97CB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AE10);
  }

  return result;
}

unint64_t sub_20D90AE28()
{
  result = qword_27C83AE20;
  if (!qword_27C83AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE28, &qword_20D97CB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE30, &qword_20D97CB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC90, &qword_20D97CA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AC98, &qword_20D97CA90);
    sub_20D909D58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AE20);
  }

  return result;
}

uint64_t sub_20D90AF8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_20D90AFFC()
{
  result = qword_27C83AE70;
  if (!qword_27C83AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE68, &qword_20D97CBA0);
    sub_20D7EBC4C(&qword_27C83AE78, &qword_27C83AE80, &qword_20D97CBA8, MEMORY[0x277CBB460]);
    sub_20D90B0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AE70);
  }

  return result;
}

unint64_t sub_20D90B0BC()
{
  result = qword_27C83AE88;
  if (!qword_27C83AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AE90, &qword_20D97CBB0);
    sub_20D7EBC4C(&qword_27C83AE98, &qword_27C83AEA0, &qword_20D97CBB8, MEMORY[0x277CBB460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AE88);
  }

  return result;
}

uint64_t sub_20D90B16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HistoricalUsageChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D8FA2CC(a1, v6, a2);
}

unint64_t sub_20D90B1EC()
{
  result = qword_27C83AEB8;
  if (!qword_27C83AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AEB0, &qword_20D97CBC0);
    sub_20D7EBC4C(&qword_27C83AEC0, &qword_27C83AEC8, &qword_20D97CBC8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AEB8);
  }

  return result;
}

uint64_t sub_20D90B2BC(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_20D7DD75C(result, a2);
  }

  return result;
}

uint64_t sub_20D90B2CC(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_20D7DD774(result, a2);
  }

  return result;
}

unint64_t sub_20D90B2DC()
{
  result = qword_27C83AF10;
  if (!qword_27C83AF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AF08, &unk_20D97CC00);
    sub_20D9106B4(&qword_27C838D20, &qword_27C838D18, &qword_20D9775B0);
    sub_20D7EBC4C(&qword_281126F60, &qword_27C83A110, &qword_20D97CC10, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AF10);
  }

  return result;
}

uint64_t sub_20D90B3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20D973548() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HistoricalUsageChart(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20D972C58() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_20D972628() - 8);
  v15 = v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));
  v16 = *(v15 + *(v14 + 64));

  return sub_20D8FB6D8(a1, v2 + v9, v2 + v12, v15, v16, a2);
}

uint64_t sub_20D90B598()
{
  v1 = *(type metadata accessor for HistoricalUsageChart(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_20D973548();

  return sub_20D8FA4E4(v0 + v2);
}

uint64_t objectdestroyTm_4()
{
  v39 = type metadata accessor for HistoricalUsageChart(0);
  v42 = *(*(v39 - 1) + 80);
  v40 = *(*(v39 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v1 = v0 + v41;

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
  v38 = *(v5 + 48);
  if (!v38(v12 + v21, 1, v4))
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

  v25 = v1 + v39[8];

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v6(v25 + *(v26 + 32), v4);
  v27 = v1 + v39[9];

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v38(v27 + v28, 1, v4))
  {
    v6(v27 + v28, v4);
  }

  v6(v1 + v39[12], v4);

  v29 = v39[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_20D973D58();
    (*(*(v30 - 8) + 8))(v1 + v29, v30);
  }

  else
  {
  }

  v31 = v39[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_20D973B18();
    (*(*(v32 - 8) + 8))(v1 + v31, v32);
  }

  else
  {
  }

  v33 = v39[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_20D973D78();
    (*(*(v34 - 8) + 8))(v1 + v33, v34);
  }

  else
  {
  }

  v35 = v39[18];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v36 - 8) + 8))(v1 + v35, v36);

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_20D90BD84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HistoricalUsageChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20D90BE18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_20D9739C8();
  result = sub_20D90C5A0(v4, v3);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

unint64_t sub_20D90BE64()
{
  result = qword_27C83AF70;
  if (!qword_27C83AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AF68, &unk_20D97CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AF70);
  }

  return result;
}

uint64_t sub_20D90BEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_20D7EB7E8(a2, v9, &qword_27C8389E8, &qword_20D9768D0);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_20D972428();
    if (v17(v9, 1, v10) != 1)
    {
      sub_20D7E3944(v9, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v27 = a1;
  v18 = sub_20D974FA8();
  v19 = *(v11 + 8);
  v19(v16, v10);
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v21 = v26;
    sub_20D7EB7E8(v25, v26, &qword_27C8389E8, &qword_20D9768D0);
    if (v17(v21, 1, v10) == 1)
    {
      sub_20D972448();
      if (v17(v21, 1, v10) != 1)
      {
        sub_20D7E3944(v21, &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      (*(v11 + 32))(v14, v21, v10);
    }

    v22 = sub_20D974FA8();
    v19(v14, v10);
    v20 = v22 ^ 1;
  }

  return v20 & 1;
}

void *sub_20D90C230(uint64_t a1)
{
  v2 = sub_20D972C58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v43 - v6;
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v45 = *(v9 + 64);
  v11 = *(v9 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v10;
  v12 = a1 + v48;
  v52 = (v9 + 16);
  v44 = xmmword_20D979110;
  v46 = v2;
  v47 = v9;
  v51 = v11;
  while (1)
  {
    v16 = v2;
    v17 = v2;
    v18 = v9;
    v49(v53, v12, v17);
    sub_20D972BC8();
    v20 = v19 < 0.0 ? 1 : 2;
    v21 = v19 <= 0.0 ? v20 : 0;
    v23 = sub_20D8D4C18(v21);
    v24 = v7[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v7[3] < v26)
    {
      sub_20D9093D4(v26, 1);
      v7 = v54;
      v28 = sub_20D8D4C18(v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v7[7];
      v31 = v16;
      v32 = *v52;
      (*v52)(v50, v53, v31);
      v33 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_20D8D428C(0, v33[2] + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_20D8D428C((v35 > 1), v36 + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v9 = v47;
      v13 = v48;
      v33[2] = v36 + 1;
      v14 = v51;
      v15 = v33 + v13 + v36 * v51;
      v2 = v46;
      v32(v15, v50, v46);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A328, &qword_20D97B3D0);
      v37 = v48;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v52)((v38 + v37), v53, v16);
      v7[(v23 >> 6) + 8] |= 1 << v23;
      *(v7[6] + v23) = v21;
      *(v7[7] + 8 * v23) = v38;
      v39 = v7[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_24;
      }

      v7[2] = v41;
      v14 = v51;
      v9 = v18;
      v2 = v16;
    }

    v12 += v14;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

uint64_t sub_20D90C5A0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v54 - v6;
  v54 = sub_20D973D58();
  v7 = *(v54 - 8);
  v8 = MEMORY[0x28223BE20](v54);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  result = type metadata accessor for HistoricalUsageChart(0);
  if (*(v2 + *(result + 44)) != 1)
  {
    if (!a2)
    {
      return 0;
    }

    v56 = a2;
    sub_20D9757A8();
    sub_20D8EF784(v13);
    v34 = v54;
    (*(v7 + 16))(v10, v13, v54);
    v35 = (*(v7 + 88))(v10, v34);
    v38 = v35 == *MEMORY[0x277CDF9F8] || v35 == *MEMORY[0x277CDF9E0] || v35 == *MEMORY[0x277CDF9E8] || v35 == *MEMORY[0x277CDF9D8];
    if (!v38 && v35 != *MEMORY[0x277CDF9F0] && v35 != *MEMORY[0x277CDFA00] && v35 != *MEMORY[0x277CDFA10] && v35 != *MEMORY[0x277CDF988] && v35 != *MEMORY[0x277CDF998] && v35 != *MEMORY[0x277CDF9A8] && v35 != *MEMORY[0x277CDF9B8] && v35 != *MEMORY[0x277CDF9D0])
    {
      (*(v7 + 8))(v10, v34);
    }

    (*(v7 + 8))(v13, v34);
    v39 = sub_20D9743C8();
    v40 = v55;
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    sub_20D974418();
    sub_20D7E3944(v40, &qword_27C838C08, &qword_20D977450);
    v33 = sub_20D974558();

LABEL_44:

    return v33;
  }

  if (a1)
  {
    v56 = a2;
    sub_20D9757A8();
    sub_20D8EF784(v19);
    v26 = v54;
    (*(v7 + 16))(v16, v19, v54);
    v27 = (*(v7 + 88))(v16, v26);
    v30 = v27 == *MEMORY[0x277CDF9F8] || v27 == *MEMORY[0x277CDF9E0] || v27 == *MEMORY[0x277CDF9E8] || v27 == *MEMORY[0x277CDF9D8];
    if (!v30 && v27 != *MEMORY[0x277CDF9F0] && v27 != *MEMORY[0x277CDFA00] && v27 != *MEMORY[0x277CDFA10] && v27 != *MEMORY[0x277CDF988] && v27 != *MEMORY[0x277CDF998] && v27 != *MEMORY[0x277CDF9A8] && v27 != *MEMORY[0x277CDF9B8] && v27 != *MEMORY[0x277CDF9D0])
    {
      (*(v7 + 8))(v16, v26);
    }

    (*(v7 + 8))(v19, v26);
    v31 = sub_20D9743C8();
    v32 = v55;
    (*(*(v31 - 8) + 56))(v55, 1, 1, v31);
    sub_20D974418();
    sub_20D7E3944(v32, &qword_27C838C08, &qword_20D977450);
    v33 = sub_20D974558();

    goto LABEL_44;
  }

  if ((a2 & 0x8000000000000000) == 0 || (v41 = __OFSUB__(0, a2), a2 = -a2, !v41))
  {
    v42 = sub_20D90419C(a2);
    v44 = v43;
    v46 = v45;
    sub_20D8EF784(v24);
    v47 = v54;
    (*(v7 + 16))(v22, v24, v54);
    v48 = (*(v7 + 88))(v22, v47);
    v51 = v48 == *MEMORY[0x277CDF9F8] || v48 == *MEMORY[0x277CDF9E0] || v48 == *MEMORY[0x277CDF9E8] || v48 == *MEMORY[0x277CDF9D8];
    if (!v51 && v48 != *MEMORY[0x277CDF9F0] && v48 != *MEMORY[0x277CDFA00] && v48 != *MEMORY[0x277CDFA10] && v48 != *MEMORY[0x277CDF988] && v48 != *MEMORY[0x277CDF998] && v48 != *MEMORY[0x277CDF9A8] && v48 != *MEMORY[0x277CDF9B8] && v48 != *MEMORY[0x277CDF9D0])
    {
      (*(v7 + 8))(v22, v47);
    }

    (*(v7 + 8))(v24, v47);
    v52 = sub_20D9743C8();
    v53 = v55;
    (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
    sub_20D974418();
    sub_20D7E3944(v53, &qword_27C838C08, &qword_20D977450);
    v33 = sub_20D974558();

    sub_20D7EADC0(v42, v44, v46 & 1);

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D90CE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20D972628() - 8);
  v9 = (v7 + *(v8 + 80) + 209) & ~*(v8 + 80);
  v10 = *(v2 + 16);
  v11 = *(v2 + v7 + 208);
  v12 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_20D905870(a1, v10, v2 + v6, v2 + v7, v11, v2 + v9, v12, a2);
}

unint64_t sub_20D90CFCC()
{
  result = qword_27C83AF80;
  if (!qword_27C83AF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AF78, &qword_20D97CC70);
    sub_20D90D050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AF80);
  }

  return result;
}

unint64_t sub_20D90D050()
{
  result = qword_27C83AF88;
  if (!qword_27C83AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AF90, &qword_20D97CC78);
    sub_20D973578();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AF98, &unk_20D97CC80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AFA0, &unk_20D97E150);
    sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150, MEMORY[0x277CBB338]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20D973938();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AF88);
  }

  return result;
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC10, &qword_20D97CA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D90D2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC10, &qword_20D97CA30) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_20D90D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v167 = a3;
  v168 = a1;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v4 = MEMORY[0x28223BE20](v155);
  v154 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v153 = &v123 - v6;
  v166 = sub_20D972628();
  v158 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v169 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20D972308();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v144 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_20D972318();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_20D972518();
  v172 = *(v170 - 8);
  v10 = MEMORY[0x28223BE20](v170);
  v151 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v156 = &v123 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v157 = &v123 - v15;
  MEMORY[0x28223BE20](v14);
  v173 = &v123 - v16;
  v134 = sub_20D972348();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_20D9722C8();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D972378();
  v160 = *(v19 - 8);
  v161 = v19;
  MEMORY[0x28223BE20](v19);
  v159 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20D9723B8();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20D972188();
  MEMORY[0x28223BE20](v22 - 8);
  v136 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20D972838();
  MEMORY[0x28223BE20](v24 - 8);
  v165 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20D9727D8();
  MEMORY[0x28223BE20](v26 - 8);
  v164 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20D9726E8();
  MEMORY[0x28223BE20](v28 - 8);
  v163 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v30 - 8);
  v162 = &v123 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v123 - v33;
  v139 = sub_20D972408();
  v138 = *(v139 - 8);
  v35 = MEMORY[0x28223BE20](v139);
  v123 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v124 = &v123 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v131 = &v123 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v137 = &v123 - v42;
  MEMORY[0x28223BE20](v41);
  v140 = &v123 - v43;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v44 = MEMORY[0x28223BE20](v171);
  v152 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v141 = &v123 - v46;
  v47 = sub_20D972AF8();
  v48 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v123 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v135 = &v123 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v123 - v54;
  v56 = *(v48 + 104);
  v142 = *MEMORY[0x277D075B8];
  v56(&v123 - v54);
  sub_20D911038(&qword_2811250F8, MEMORY[0x277D075D8], MEMORY[0x277D075E8]);
  v57 = a2;
  LOBYTE(a2) = sub_20D974FD8();
  v58 = *(v48 + 8);
  v150 = v48 + 8;
  v149 = v58;
  v58(v55, v47);
  if ((a2 & 1) == 0)
  {
    (v56)(v55, *MEMORY[0x277D075D0], v47);
    v59 = sub_20D974FD8();
    v149(v55, v47);
    if ((v59 & 1) == 0)
    {
      v60 = v141;
      sub_20D972DD8();
      sub_20D911038(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      if (sub_20D974FD8() & 1) != 0 && (sub_20D974FD8())
      {
        v61 = sub_20D972248();
        (*(*(v61 - 8) + 56))(v34, 1, 1, v61);
        v62 = sub_20D972208();
        (*(*(v62 - 8) + 56))(v162, 1, 1, v62);
        sub_20D9726A8();
        sub_20D972738();
        sub_20D972818();
        sub_20D972178();
        v63 = v140;
        sub_20D972268();
        sub_20D972788();
        sub_20D9723F8();
        v64 = v135;
        (*(v48 + 16))(v135, v57, v47);
        v65 = (*(v48 + 88))(v64, v47);
        if (v65 == *MEMORY[0x277D075B0])
        {
          v66 = v125;
          sub_20D972388();
          v67 = v123;
          sub_20D9723E8();
          (*(v126 + 8))(v66, v127);
          v68 = v159;
          sub_20D972358();
          v69 = v124;
          sub_20D972298();
          (*(v160 + 8))(v68, v161);
          v70 = v138;
          v71 = *(v138 + 8);
          v72 = v139;
          v71(v67, v139);
          v73 = v128;
          sub_20D9722A8();
          v74 = v131;
          sub_20D972258();
          (*(v129 + 8))(v73, v130);
          v75 = v69;
          v63 = v140;
          v71(v75, v72);
          v76 = v132;
          sub_20D972328();
          v77 = v137;
          sub_20D972288();
          (*(v133 + 8))(v76, v134);
          v78 = v74;
          v79 = v77;
LABEL_27:
          v71(v78, v72);
          v71(v63, v72);
LABEL_28:
          (*(v70 + 32))(v63, v79, v72);
          v117 = sub_20D9723C8();
          v71(v63, v72);
          sub_20D7E3944(v141, &qword_27C839550, &qword_20D979C30);
          return v117;
        }

        v72 = v139;
        v70 = v138;
        v79 = v137;
        if (v65 == *MEMORY[0x277D075C8])
        {
          v119 = v159;
          sub_20D972358();
          v120 = v131;
          sub_20D972298();
          (*(v160 + 8))(v119, v161);
          v121 = v132;
          sub_20D972328();
          sub_20D972288();
          (*(v133 + 8))(v121, v134);
          v71 = *(v70 + 8);
          v78 = v120;
          goto LABEL_27;
        }

        if (v65 == *MEMORY[0x277D075C0])
        {
          v122 = v132;
          sub_20D972328();
          sub_20D972288();
          (*(v133 + 8))(v122, v134);
          v71 = *(v70 + 8);
          v71(v63, v72);
          goto LABEL_28;
        }

        (*(v138 + 8))(v63, v139);
        sub_20D7E3944(v141, &qword_27C839550, &qword_20D979C30);
        v118 = v64;
        goto LABEL_24;
      }

      sub_20D7E3944(v60, &qword_27C839550, &qword_20D979C30);
    }
  }

  v80 = sub_20D972248();
  (*(*(v80 - 8) + 56))(v34, 1, 1, v80);
  v81 = sub_20D972208();
  (*(*(v81 - 8) + 56))(v162, 1, 1, v81);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  v82 = v173;
  sub_20D9724B8();
  sub_20D972788();
  sub_20D972508();
  (*(v48 + 16))(v51, v57, v47);
  v83 = (*(v48 + 88))(v51, v47);
  v84 = v83;
  if (v83 == *MEMORY[0x277D075B0])
  {
    LODWORD(v167) = *MEMORY[0x277D075B0];
    v85 = v159;
    sub_20D972358();
    v86 = v151;
    sub_20D9724E8();
    (*(v160 + 8))(v85, v161);
    v87 = v156;
    sub_20D9724A8();
    v88 = v172;
    v89 = *(v172 + 8);
    v90 = v170;
    v89(v86, v170);
    v91 = v144;
    sub_20D9722E8();
    v92 = v143;
    sub_20D9722D8();
    (*(v147 + 8))(v91, v148);
    v93 = v157;
    sub_20D9724C8();
    (*(v145 + 8))(v92, v146);
    v89(v87, v90);
    v165 = v89;
    v89(v82, v90);
    v94 = v168;
    v95 = v166;
    v96 = v158;
  }

  else
  {
    v94 = v168;
    v95 = v166;
    v90 = v170;
    v97 = v172;
    if (v83 == v142 || v83 == *MEMORY[0x277D075C8] || v83 == *MEMORY[0x277D075D0])
    {
      LODWORD(v167) = *MEMORY[0x277D075B0];
      v101 = v159;
      sub_20D972358();
      v102 = v151;
      v82 = v173;
      sub_20D9724E8();
      (*(v160 + 8))(v101, v161);
      v103 = v156;
      sub_20D9724A8();
      v100 = *(v97 + 8);
      v100(v102, v90);
      v93 = v157;
      sub_20D9724D8();
      v96 = v158;
      v100(v103, v90);
    }

    else
    {
      if (v83 != *MEMORY[0x277D075C0])
      {
        (*(v172 + 8))(v173, v170);
        v118 = v51;
LABEL_24:
        v149(v118, v47);
        return 0;
      }

      LODWORD(v167) = *MEMORY[0x277D075B0];
      v98 = v159;
      sub_20D972358();
      v99 = v156;
      v82 = v173;
      sub_20D9724E8();
      (*(v160 + 8))(v98, v161);
      v93 = v157;
      sub_20D9724D8();
      v96 = v158;
      v100 = *(v97 + 8);
      v100(v99, v90);
    }

    v165 = v100;
    v100(v82, v90);
    v88 = v172;
  }

  (*(v88 + 32))(v82, v93, v90);
  v104 = *(v96 + 16);
  v105 = v169;
  v104(v169, v94 + *(v171 + 36), v95);
  v106 = v95;
  if (v84 != v167)
  {
    sub_20D9725A8();
    if (sub_20D972548())
    {
      (*(v96 + 8))(v105, v95);
      v104(v105, v94, v95);
    }
  }

  v107 = v96;
  sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v109 = v153;
    v104(v153, v94, v106);
    v110 = v155;
    v104((v109 + *(v155 + 48)), v105, v106);
    v111 = v154;
    sub_20D7EB7E8(v109, v154, &unk_27C83C750, &unk_20D978DD0);
    v112 = *(v110 + 48);
    v113 = *(v96 + 32);
    v114 = v152;
    v113(v152, v111, v106);
    v115 = *(v107 + 8);
    v115(v111 + v112, v106);
    sub_20D7EAF18(v109, v111, &unk_27C83C750, &unk_20D978DD0);
    v113((v114 + *(v171 + 36)), v111 + *(v110 + 48), v106);
    v115(v111, v106);
    v116 = v173;
    v117 = sub_20D9724F8();
    sub_20D7E3944(v114, &qword_27C839550, &qword_20D979C30);
    v115(v169, v106);
    v165(v116, v170);
    return v117;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D90EB2C()
{
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  sub_20D972BC8();
  v15 = v14;
  if (*(v0 + *(type metadata accessor for HistoricalUsageChart(0) + 44)) == 1)
  {
    if (qword_27C838708 != -1)
    {
      swift_once();
    }

    v16 = &qword_27C840E30;
    return *v16;
  }

  v28 = v5;
  v29 = v8;
  v17 = type metadata accessor for HistoricalUsageSnapshot(0);
  v18 = *(v17 + 48);
  v30 = v0;
  v26[0] = v17;
  v26[1] = v18;
  sub_20D972E58();
  v19 = *MEMORY[0x277D075D0];
  v27 = *(v2 + 104);
  v27(v11, v19, v1);
  sub_20D911038(&qword_2811250F0, MEMORY[0x277D075D8], MEMORY[0x277D075F0]);
  sub_20D975208();
  sub_20D975208();
  if (v33 == v31 && v34 == v32)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_20D9757C8();
  }

  v21 = *(v2 + 8);
  v21(v11, v1);
  v21(v13, v1);

  if (v20)
  {
    goto LABEL_14;
  }

  v22 = v29;
  sub_20D972E58();
  v23 = v28;
  v27(v28, *MEMORY[0x277D075C0], v1);
  sub_20D975208();
  sub_20D975208();
  if (v33 == v31 && v34 == v32)
  {
    v21(v23, v1);
    v21(v22, v1);

    goto LABEL_14;
  }

  v24 = sub_20D9757C8();
  v21(v23, v1);
  v21(v22, v1);

  if (v24)
  {
LABEL_14:
    if (v15 >= 0.0)
    {
      if (qword_27C8386E8 != -1)
      {
        swift_once();
      }

      v16 = &qword_27C840E00;
    }

    else
    {
      if (qword_27C8386F0 != -1)
      {
        swift_once();
      }

      v16 = &qword_27C840E10;
    }

    return *v16;
  }

  if (*(v30 + *(v26[0] + 44)) == 1)
  {
    if (v15 >= 0.0)
    {
      if (qword_27C838700 != -1)
      {
        swift_once();
      }

      v16 = &qword_27C83AB78;
    }

    else
    {
      if (qword_27C8386F8 != -1)
      {
        swift_once();
      }

      v16 = &qword_27C840E20;
    }
  }

  else
  {
    if (qword_27C8386C8 != -1)
    {
      swift_once();
    }

    v16 = &qword_27C83AB38;
  }

  return *v16;
}

uint64_t sub_20D90F030(uint64_t a1, char *a2, uint64_t a3, unsigned int *a4)
{
  v77 = a4;
  v78 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = v61 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C810, &unk_20D97D080);
  v73 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C0, &qword_20D980270);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v61 - v9;
  v71 = sub_20D9727B8();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C760, &unk_20D97D090);
  v76 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v72 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = v61 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v15 = MEMORY[0x28223BE20](v66);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x28223BE20](v20);
  v74 = v61 - v21;
  v22 = sub_20D972628();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v61 - v26;
  v28 = a2;
  if ((sub_20D972548() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_20D972718();
  sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if (result)
  {
    v30 = v23[2];
    v61[1] = v23 + 2;
    v62 = v30;
    v30(v19, v27, v22);
    v31 = v66;
    v30(&v19[*(v66 + 48)], v28, v22);
    sub_20D7EB7E8(v19, v17, &unk_27C83C750, &unk_20D978DD0);
    v79 = v27;
    v32 = *(v31 + 48);
    v64 = v11;
    v61[0] = v23;
    v33 = v23[4];
    v34 = v74;
    v33(v74, v17, v22);
    v35 = v19;
    v37 = v23 + 1;
    v36 = v23[1];
    v38 = &v17[v32];
    v39 = v79;
    v36(v38, v22);
    sub_20D7EAF18(v35, v17, &unk_27C83C750, &unk_20D978DD0);
    v40 = *(v31 + 48);
    v41 = v68;
    v33(v34 + *(v68 + 36), &v17[v40], v22);
    v66 = v37;
    v63 = v36;
    v36(v17, v22);
    v42 = v69;
    v43 = v65;
    v44 = v71;
    (*(v69 + 104))(v65, *v77, v71);
    v45 = v34;
    v46 = v70;
    sub_20D7EB7E8(v45, v70, &qword_27C839550, &qword_20D979C30);
    (*(v67 + 56))(v46, 0, 1, v41);
    v47 = v75;
    sub_20D972768();
    sub_20D7E3944(v46, &qword_27C83B0C0, &qword_20D980270);
    (*(v42 + 8))(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A028, &qword_20D97D0A0);
    v48 = v61[0];
    v49 = (*(v61[0] + 80) + 32) & ~*(v61[0] + 80);
    v78 = *(v61[0] + 72);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_20D979110;
    v71 = v50;
    v77 = v49;
    v62(v50 + v49, v39, v22);
    (*(v76 + 16))(v72, v47, v64);
    swift_getOpaqueTypeConformance2();
    sub_20D9751D8();
    swift_getAssociatedConformanceWitness();
    v51 = v81;
    sub_20D975518();
    v52 = v51;
    v53 = *(v48 + 48);
    v54 = v53(v51, 1, v22);
    v55 = MEMORY[0x277D84F90];
    if (v54 != 1)
    {
      v56 = v80;
      do
      {
        v33(v56, v52, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_20D8D4264(0, v55[2] + 1, 1, v55);
        }

        v58 = v55[2];
        v57 = v55[3];
        if (v58 >= v57 >> 1)
        {
          v55 = sub_20D8D4264((v57 > 1), v58 + 1, 1, v55);
        }

        v55[2] = v58 + 1;
        v56 = v80;
        v33(v77 + v55 + v58 * v78, v80, v22);
        v59 = v81;
        sub_20D975518();
        v52 = v59;
        v60 = v53(v59, 1, v22);
        v39 = v79;
      }

      while (v60 != 1);
    }

    (*(v73 + 8))(v82, v83);
    v84 = v71;
    sub_20D95B0C8(v55);
    (*(v76 + 8))(v75, v64);
    sub_20D7E3944(v74, &qword_27C839550, &qword_20D979C30);
    v63(v39, v22);
    return v84;
  }

  else
  {
    __break(1u);
  }

  return result;
}