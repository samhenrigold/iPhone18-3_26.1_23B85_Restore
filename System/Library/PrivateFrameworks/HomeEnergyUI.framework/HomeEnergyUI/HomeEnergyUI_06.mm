uint64_t sub_20D87732C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20D877388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20D877408()
{
  result = qword_2811267D0;
  if (!qword_2811267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811267D0);
  }

  return result;
}

unint64_t sub_20D87745C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_20D87746C()
{
  v0 = PeakPeriodAttributes.peakName.getter();
  v2 = v1;

  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000003CLL, 0x800000020D986460);
  MEMORY[0x20F323340](v0, v2);

  MEMORY[0x20F323340](0x657463656C65532ELL, 0xE900000000000064);
  return 0;
}

void FeaturedInterval.description.getter()
{
  v1 = sub_20D972628();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for FeaturedInterval(0) + 20));
  sub_20D973028();
  v7 = v5 / v6;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v10 = sub_20D975078();
    [v9 setDateFormat_];

    sub_20D972498();
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_20D975678();

    v23 = 0xD00000000000001BLL;
    v24 = 0x800000020D9864A0;
    v22[1] = v8;
    v11 = sub_20D9757A8();
    MEMORY[0x20F323340](v11);

    MEMORY[0x20F323340](0x6F72662073726820, 0xEA0000000000206DLL);
    v12 = sub_20D972528();
    v13 = [v9 stringFromDate_];

    v14 = sub_20D975098();
    v16 = v15;

    MEMORY[0x20F323340](v14, v16);

    MEMORY[0x20F323340](544175136, 0xE400000000000000);
    v17 = sub_20D972528();
    v18 = [v9 stringFromDate_];

    v19 = sub_20D975098();
    v21 = v20;

    MEMORY[0x20F323340](v19, v21);

    (*(v2 + 8))(v4, v1);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t type metadata accessor for FeaturedInterval(uint64_t a1)
{
  result = qword_281127658;
  if (!qword_281127658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D8778B8(uint64_t a1)
{
  sub_20D972628();
  if (v1 <= 0x3F)
  {
    sub_20D877990();
    if (v2 <= 0x3F)
    {
      sub_20D972698();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D877990()
{
  if (!qword_281126F10)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281126F10);
    }
  }
}

uint64_t type metadata accessor for FeaturedHoursInfo(uint64_t a1)
{
  result = qword_281127598;
  if (!qword_281127598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D877A54(uint64_t a1)
{
  sub_20D972628();
  if (v1 <= 0x3F)
  {
    sub_20D7E3394(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20D877B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_20D7EB7E8(a1, v10, &qword_27C8389E8, &qword_20D9768D0);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
    if (*(a2 + 16))
    {
      v19 = *(type metadata accessor for FeaturedInterval(0) - 8);
      (*(v12 + 16))(v8, a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      return (*(v12 + 32))(v34, v8, v11);
    }

    else
    {
      (*(v12 + 56))(v8, 1, 1, v11);
      sub_20D9725C8();
      result = v18(v8, 1, v11);
      if (result != 1)
      {
        return sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
      }
    }
  }

  else
  {
    v21 = *(v12 + 32);
    v21(v17, v10, v11);
    if (qword_281127108 != -1)
    {
      swift_once();
    }

    v22 = sub_20D9734F8();
    __swift_project_value_buffer(v22, qword_28112AC18);
    (*(v12 + 16))(v15, v17, v11);
    v23 = sub_20D9734D8();
    v24 = sub_20D975478();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v25 = 136315394;
      *(v25 + 4) = sub_20D7F4DC8(0xD000000000000060, 0x800000020D983930, &v35);
      *(v25 + 12) = 2080;
      v26 = sub_20D9725F8();
      v33 = v21;
      v28 = v27;
      (*(v12 + 8))(v15, v11);
      v29 = sub_20D7F4DC8(v26, v28, &v35);
      v30 = v33;

      *(v25 + 14) = v29;
      _os_log_impl(&dword_20D7C9000, v23, v24, "FeaturedHoursInfo:%s starting at given time: %s", v25, 0x16u);
      v31 = v32;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v31, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);

      return v30(v34, v17, v11);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
      return (v21)(v34, v17, v11);
    }
  }

  return result;
}

void sub_20D877FD4()
{
  v1 = v0;
  v2 = type metadata accessor for FeaturedInterval(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v11 = sub_20D975078();
  [v10 setDateFormat_];

  v12 = type metadata accessor for FeaturedHoursInfo(0);
  v13 = *(v1 + *(v12 + 20));
  sub_20D973028();
  v15 = v13 / v14;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v33 = v3;
  v34 = v7;
  v35 = v6;
  v16 = v15;
  sub_20D972498();
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000018, 0x800000020D9864C0);
  v36 = v16;
  v17 = sub_20D9757A8();
  MEMORY[0x20F323340](v17);

  MEMORY[0x20F323340](0x7472616863207268, 0xEE00206D6F726620);
  v18 = sub_20D972528();
  v19 = [v10 stringFromDate_];

  v20 = sub_20D975098();
  v22 = v21;

  MEMORY[0x20F323340](v20, v22);

  MEMORY[0x20F323340](544175136, 0xE400000000000000);
  v23 = sub_20D972528();
  v24 = [v10 stringFromDate_];

  v25 = sub_20D975098();
  v27 = v26;

  MEMORY[0x20F323340](v25, v27);

  MEMORY[0x20F323340](0xD000000000000026, 0x800000020D9864E0);
  v28 = *(v1 + *(v12 + 24));
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v31 = *(v33 + 72);
    do
    {
      sub_20D87840C(v30, v5);
      v36 = 8202;
      v37 = 0xE200000000000000;
      FeaturedInterval.description.getter();
      MEMORY[0x20F323340]();

      MEMORY[0x20F323340](v36, v37);

      sub_20D878470(v5);
      v30 += v31;
      --v29;
    }

    while (v29);
  }

  (*(v34 + 8))(v9, v35);
}

uint64_t sub_20D87840C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D878470(uint64_t a1)
{
  v2 = type metadata accessor for FeaturedInterval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D8784CC@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for FeaturedInterval(0);
  v3 = *(v2 - 8);
  v66 = v2;
  v67 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  sub_20D972988();
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    v22 = 1;
    v23 = v66;
LABEL_3:
    v24 = v68;
    return (*(v67 + 56))(v24, v22, 1, v23);
  }

  v61 = v1;
  v25 = v12;
  v26 = *(v14 + 32);
  v26(v20, v25, v13);
  sub_20D972978();
  if (v21(v10, 1, v13) == 1)
  {
    (*(v14 + 8))(v20, v13);
    sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
    v22 = 1;
    v24 = v68;
    v23 = v66;
    return (*(v67 + 56))(v24, v22, 1, v23);
  }

  v60 = v20;
  v26(v65, v10, v13);
  v27 = EnergyWindow.isCleanEnergy.getter();
  v23 = v66;
  if ((v27 & 1) == 0 && (EnergyWindow.isStrainedEnergy.getter() & 1) == 0)
  {
    v57 = *(v14 + 8);
    v57(v65, v13);
    v57(v60, v13);
    v22 = 1;
    goto LABEL_3;
  }

  v59 = v13;
  v28 = v14;
  if (EnergyWindow.isCleanEnergy.getter())
  {
    v29 = v64;
    if (qword_281126F20 != -1)
    {
      swift_once();
    }

    v30 = &qword_28112ABF0;
  }

  else
  {
    v29 = v64;
    if (qword_27C838750 != -1)
    {
      swift_once();
    }

    v30 = &qword_27C840E70;
  }

  v64 = *v30;

  if (EnergyWindow.isCleanEnergy.getter())
  {
    v31 = v60;
    if (qword_281126F30 != -1)
    {
      swift_once();
    }

    v32 = qword_28112ABF8;
  }

  else
  {
    v31 = v60;
    if (qword_27C838368 != -1)
    {
      swift_once();
    }

    v32 = qword_27C840BC8;
  }

  v69 = v32;

  v33 = sub_20D973C28();
  v34 = *(v28 + 16);
  v35 = v62;
  v36 = v59;
  v34(v62, v31, v59);
  sub_20D972458();
  v38 = v37;
  v34(v29, v35, v36);
  v69 = sub_20D974918();
  sub_20D8091EC();
  v39 = sub_20D974998();
  *(v29 + v23[6]) = 0x4020000000000000;
  sub_20D972688();
  v40 = *(v28 + 8);
  v40(v35, v36);
  *(v29 + v23[5]) = v38;
  *(v29 + v23[7]) = v64;
  *(v29 + v23[8]) = 1;
  *(v29 + v23[9]) = v33;
  *(v29 + v23[10]) = 0;
  *(v29 + v23[11]) = 0;
  *(v29 + v23[13]) = 0;
  *(v29 + v23[14]) = v39;
  if (qword_281127108 != -1)
  {
    swift_once();
  }

  v41 = sub_20D9734F8();
  __swift_project_value_buffer(v41, qword_28112AC18);
  v42 = v63;
  sub_20D87840C(v29, v63);
  v43 = sub_20D9734D8();
  v44 = sub_20D975448();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v69 = v64;
    *v45 = 136315394;
    *(v45 + 4) = sub_20D7F4DC8(0xD000000000000026, 0x800000020D986510, &v69);
    *(v45 + 12) = 2080;
    FeaturedInterval.description.getter();
    v47 = v46;
    v62 = v40;
    v49 = v48;
    sub_20D878470(v42);
    v50 = sub_20D7F4DC8(v47, v49, &v69);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_20D7C9000, v43, v44, "\t\t%s made %s", v45, 0x16u);
    v51 = v64;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v51, -1, -1);
    MEMORY[0x20F324260](v45, -1, -1);

    v52 = v59;
    v53 = v62;
    (v62)(v65, v59);
    v53(v60, v52);
  }

  else
  {

    sub_20D878470(v42);
    v54 = v59;
    v40(v65, v59);
    v40(v60, v54);
  }

  v55 = v68;
  sub_20D879BC8(v29, v68);
  v24 = v55;
  v22 = 0;
  return (*(v67 + 56))(v24, v22, 1, v23);
}

uint64_t sub_20D878C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20D972628();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20D972548())
  {
    type metadata accessor for FeaturedInterval(0);
    sub_20D972498();
    v7 = sub_20D972538();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_20D878DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v54 = a3;
  v55 = a4;
  v61 = sub_20D9727B8();
  v68 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v49[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v49[-v19];
  v21 = type metadata accessor for FeaturedInterval(0);
  sub_20D972498();
  v60 = v8;
  v22 = *(v8 + 16);
  v22(v18, a1, v7);
  v64 = v15;
  v66 = v7;
  v67 = v22;
  v22(v15, v20, v7);
  v23 = v6;
  v24 = v21[11];
  v63 = a1;
  v59 = *(a1 + v24);
  v25 = v68;
  v26 = *(v68 + 104);
  v53 = *MEMORY[0x277CC99A0];
  v27 = v61;
  v52 = v26;
  v26(v6);
  v28 = v58;
  v50 = sub_20D973008();
  v29 = *(v25 + 8);
  v68 = v25 + 8;
  v51 = v29;
  v29(v23, v27);
  v62 = v18;
  if (sub_20D972548() & 1) != 0 && ((sub_20D972548() | v50))
  {
    v30 = v64;
    v31 = v66;
    (*(v60 + 8))(v64, v66);
    v67(v30, v28, v31);
    v59 = 1;
  }

  v67(v65, v62, v66);
  LODWORD(v58) = *(v63 + v21[10]);
  v32 = v61;
  v52(v23, v53, v61);
  v33 = v54;
  v34 = sub_20D973008();
  v51(v23, v32);
  v35 = sub_20D972548();
  v56 = v20;
  if ((v35 & 1) != 0 || (v34) && (sub_20D972548())
  {
    v37 = v65;
    v36 = v66;
    (*(v60 + 8))(v65, v66);
    v67(v37, v33, v36);
    LODWORD(v58) = 1;
  }

  v38 = v57;
  v40 = v65;
  v39 = v66;
  v41 = v67;
  v67(v57, v65, v66);
  sub_20D972458();
  v43 = v42;
  v44 = *(v63 + v21[7]);
  LODWORD(v68) = *(v63 + v21[8]);
  v45 = *(v63 + v21[9]);
  v46 = v55;
  v41(v55, v38, v39);

  v69 = sub_20D974918();
  sub_20D8091EC();
  v67 = sub_20D974998();
  *(v46 + v21[6]) = 0x4020000000000000;
  sub_20D972688();
  v47 = *(v60 + 8);
  v47(v38, v39);
  v47(v40, v39);
  v47(v64, v39);
  v47(v62, v39);
  result = (v47)(v56, v39);
  *(v46 + v21[5]) = v43;
  *(v46 + v21[7]) = v44;
  *(v46 + v21[8]) = v68;
  *(v46 + v21[9]) = v45;
  *(v46 + v21[10]) = v58;
  *(v46 + v21[11]) = v59;
  *(v46 + v21[13]) = 0;
  *(v46 + v21[14]) = v67;
  return result;
}

void sub_20D87934C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839970, &qword_20D97A398);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v26 - v3;
  v33 = type metadata accessor for FeaturedInterval(0);
  v29 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - v6;
  v28 = sub_20D972998();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  sub_20D7EB7E8(a1, &v26 - v11, &qword_27C838A00, &qword_20D976750);
  v13 = sub_20D9729D8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20D7E3944(v12, &qword_27C838A00, &qword_20D976750);
  }

  else
  {
    v15 = sub_20D9729C8();
    (*(v14 + 8))(v12, v13);
    if (v15)
    {
      v32 = *(v15 + 16);
      if (v32)
      {
        v16 = 0;
        v31 = v7 + 16;
        v17 = (v7 + 8);
        v18 = v30;
        v19 = (v29 + 48);
        v20 = MEMORY[0x277D84F90];
        v21 = v28;
        while (v16 < *(v15 + 16))
        {
          (*(v7 + 16))(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v21);
          sub_20D8784CC(v18);
          (*v17)(v9, v21);
          if ((*v19)(v18, 1, v33) == 1)
          {
            sub_20D7E3944(v18, &qword_27C839970, &qword_20D97A398);
          }

          else
          {
            v22 = v18;
            v23 = v27;
            sub_20D879BC8(v22, v27);
            sub_20D879BC8(v23, v34);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_20D8D3FD4(0, v20[2] + 1, 1, v20);
            }

            v25 = v20[2];
            v24 = v20[3];
            if (v25 >= v24 >> 1)
            {
              v20 = sub_20D8D3FD4((v24 > 1), v25 + 1, 1, v20);
            }

            v20[2] = v25 + 1;
            sub_20D879BC8(v34, v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25);
            v18 = v30;
            v21 = v28;
          }

          if (v32 == ++v16)
          {
            goto LABEL_16;
          }
        }

        __break(1u);

        (*v17)(v9, v21);

        __break(1u);
      }

      else
      {
LABEL_16:
      }
    }
  }
}

uint64_t sub_20D8797EC(uint64_t *a1)
{
  v37 = sub_20D9727B8();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20D972628();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeaturedInterval(0);
  v38 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v41 = &v28 - v12;
  v28 = a1;
  v13 = *a1;
  v34 = *(*a1 + 16);
  if (v34 < 2)
  {
    return v13;
  }

  v32 = (v2 + 104);
  v33 = v7;
  v31 = *MEMORY[0x277CC99A0];
  v29 = (v4 + 8);
  v30 = (v2 + 8);
  v14 = 1;
  v40 = v10;
  while (1)
  {
    v15 = v14 - 1;
    if (v14 - 1 >= v13[2])
    {
      break;
    }

    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v16 = v13 + v39;
    v17 = *(v38 + 72);
    v18 = v17 * v15;
    sub_20D87840C(v13 + v39 + v17 * v15, v41);
    result = sub_20D972498();
    if (v14 >= v13[2])
    {
      goto LABEL_15;
    }

    v19 = v17 * v14;
    v20 = v40;
    sub_20D87840C(&v16[v17 * v14], v40);
    v21 = v36;
    v22 = v6;
    v23 = v37;
    (*v32)(v36, v31, v37);
    v24 = sub_20D973008();
    (*v30)(v21, v23);
    if (v24)
    {
      v6 = v22;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20D908544(v13);
        v13 = result;
      }

      v25 = v33;
      if (v15 >= v13[2])
      {
        goto LABEL_16;
      }

      v26 = v40;
      v27 = v13 + v39;
      *(v13 + v39 + v18 + *(v33 + 44)) = 1;
      sub_20D878470(v26);
      (*v29)(v22, v35);
      result = sub_20D878470(v41);
      if (v14 >= v13[2])
      {
        goto LABEL_17;
      }

      v27[v19 + *(v25 + 40)] = 1;
      *v28 = v13;
    }

    else
    {
      sub_20D878470(v20);
      (*v29)(v22, v35);
      result = sub_20D878470(v41);
      v6 = v22;
    }

    if (v34 == ++v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_20D879BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedInterval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D879C80@<X0>(uint64_t a1@<X8>)
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = [qword_28112ABE8 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_20D975098();

    v4 = sub_20D975078();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v5)
  {
    v6 = sub_20D975078();
    v7 = [v5 valueForKey_];

    if (v7)
    {
      sub_20D9755A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (*(&v13 + 1))
    {
      v8 = sub_20D972628();
      v9 = swift_dynamicCast();
      return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  sub_20D7E3944(&v14, &qword_27C838A18, &qword_20D9768D8);
  v11 = sub_20D972628();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

char sub_20D879E98@<W0>(_BYTE *a1@<X8>)
{
  v56 = a1;
  v1 = sub_20D9727B8();
  v55 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20D9727D8();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  sub_20D9725C8();
  v19 = sub_20D87BFE4();
  if (v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = v19;
  }

  sub_20D879C80(v11);
  v22 = *(v13 + 48);
  v23 = v22(v11, 1, v12);
  v50 = v22;
  if (v23 == 1)
  {
    sub_20D972568();
    if (v22(v11, 1, v12) != 1)
    {
      sub_20D7E3944(v11, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  if ((sub_20D972538() & 1) == 0)
  {
    v28 = sub_20D87C1A0();
    v30 = v29;
    v31 = *(v13 + 8);
    v31(v16, v12);
    LOBYTE(v27) = (v31)(v18, v12);
    if ((v30 & 1) == 0 && v21 == v28)
    {
      goto LABEL_14;
    }

LABEL_23:
    LOBYTE(v27) = EnergyTip.init(rawValue:)(v21);
    return v27;
  }

  v24 = __OFADD__(v21, 1);
  v25 = v21 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_25;
  }

  v48 = v25;
  EnergyTip.init(rawValue:)(v25);
  if (v57 != 12)
  {
    if (qword_281126E98 == -1)
    {
LABEL_16:
      v47 = v1;
      v32 = [qword_28112ABE8 bundleIdentifier];
      if (v32)
      {
        v33 = v32;
        sub_20D975098();

        v34 = sub_20D975078();
      }

      else
      {
        v34 = 0;
      }

      v35 = v51;
      v36 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

      if (v36)
      {
        v37 = sub_20D975398();
        v38 = sub_20D975078();
        [v36 setObject:v37 forKey:v38];
      }

      v39 = v52;
      sub_20D972778();
      v41 = v54;
      v40 = v55;
      v42 = v47;
      (*(v55 + 104))(v54, *MEMORY[0x277CC9968], v47);
      sub_20D972758();
      (*(v40 + 8))(v41, v42);
      (*(v53 + 8))(v39, v46);
      v27 = v50(v35, 1, v12);
      if (v27 == 1)
      {
        __break(1u);
        return v27;
      }

      v43 = v49;
      (*(v13 + 32))(v49, v35, v12);
      (*(v13 + 56))(v43, 0, 1, v12);
      sub_20D87C35C(v43);
      v44 = *(v13 + 8);
      v44(v16, v12);
      v44(v18, v12);
      v21 = v48;
      goto LABEL_23;
    }

LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  v26 = *(v13 + 8);
  v26(v16, v12);
  LOBYTE(v27) = (v26)(v18, v12);
LABEL_14:
  *v56 = 12;
  return v27;
}

HomeEnergyUI::EnergyTip_optional __swiftcall EnergyTip.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t EnergyTip.description.getter()
{
  sub_20D975678();

  v0 = sub_20D9757A8();
  MEMORY[0x20F323340](v0);

  return 0xD000000000000020;
}

uint64_t sub_20D87A568()
{
  v98 = sub_20D9757B8();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v2 = v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v85 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839980, &qword_20D97A4D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839988, &qword_20D97A4D8);
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v85 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839990, &qword_20D97A4E0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v13 = v85 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839998, &qword_20D97A4E8);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v15 = v85 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399A0, &unk_20D97A4F0);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v17 = v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E0, &unk_20D97D7B0);
  v101 = *(v18 - 8);
  v102 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = v85 - v19;
  v20 = sub_20D975038();
  MEMORY[0x28223BE20](v20 - 8);
  v103 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20D9726E8();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20D975058();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v0;
  if (v28 > 5)
  {
    if (*v0 > 8u)
    {
      if (v28 == 9)
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v57 = qword_28112ABE8;
        v58 = qword_28112ABE8;
        sub_20D9726B8();
        v59 = v58;
        v32 = sub_20D975108(v27, 0, 0, v57, v24, "Circulate Air with Fans tip title", 33, 2);
        sub_20D974FE8();
        sub_20D9726B8();
        sub_20D975108(v27, 0, 0, v57, v24, "Circulate Air with Fans tip body", 32, 2);
      }

      else if (v28 == 10)
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v41 = qword_28112ABE8;
        v42 = qword_28112ABE8;
        sub_20D9726B8();
        v43 = v42;
        v32 = sub_20D975108(v27, 0, 0, v41, v24, "Adjust Window Shades tip title", 30, 2);
        sub_20D974FE8();
        sub_20D9726B8();
        sub_20D975108(v27, 0, 0, v41, v24, "Adjust Window Shades tip body", 29, 2);
      }

      else
      {
        sub_20D974FE8();
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v79 = qword_28112ABE8;
        v80 = qword_28112ABE8;
        sub_20D9726B8();
        v81 = v80;
        v32 = sub_20D975108(v27, 0, 0, v79, v24, "Replace Standard Appliances tip title", 37, 2);
        sub_20D975028();
        sub_20D975018();
        v105 = 15;
        sub_20D85CBD0();
        sub_20D975578();
        sub_20D975008();

        sub_20D975018();
        v104 = 50;
        sub_20D9726A8();
        v82 = v100;
        sub_20D972058();
        sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
        v83 = v102;
        sub_20D975588();
        (*(v101 + 8))(v82, v83);
        sub_20D975008();

        sub_20D975018();
        sub_20D975048();
        sub_20D9726B8();
        sub_20D975108(v27, 0, 0, v79, v24, "Replace Standard Appliances tip body. %1$@ is 15, %2$@ is 50%", 61, 2);
      }
    }

    else if (v28 == 6)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v49 = qword_28112ABE8;
      v50 = qword_28112ABE8;
      sub_20D9726B8();
      v51 = v50;
      v32 = sub_20D975108(v27, 0, 0, v49, v24, "Change HVAC Air Filters tip title", 33, 2);
      sub_20D974FE8();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v49, v24, "Change HVAC Air Filters tip body", 32, 2);
    }

    else if (v28 == 7)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v35 = qword_28112ABE8;
      v36 = qword_28112ABE8;
      sub_20D9726B8();
      v37 = v36;
      v32 = sub_20D975108(v27, 0, 0, v35, v24, "Air Dry Clothes tip title", 25, 2);
      sub_20D975028();
      sub_20D975018();
      v105 = 2;
      sub_20D85CBD0();
      sub_20D975578();
      sub_20D975008();

      sub_20D975018();
      v105 = 6;
      sub_20D975578();
      sub_20D975008();

      sub_20D975018();
      sub_20D975048();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v35, v24, "Air Dry Clothes tip body. %1$@ is 2, %2$@ is 6", 46, 2);
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v73 = qword_28112ABE8;
      v74 = qword_28112ABE8;
      sub_20D9726B8();
      v75 = v74;
      v32 = sub_20D975108(v27, 0, 0, v73, v24, "Seal Air Leaks tip title", 24, 2);
      sub_20D974FE8();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v73, v24, "Seal Air Leaks tip body", 23, 2);
    }
  }

  else if (*v0 > 2u)
  {
    if (v28 == 3)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v52 = qword_28112ABE8;
      v53 = qword_28112ABE8;
      sub_20D9726B8();
      v54 = v53;
      v32 = sub_20D975108(v27, 0, 0, v52, v24, "Insulate Water Heaters tip title", 32, 2);
      sub_20D975028();
      sub_20D975018();
      v105 = 2;
      sub_20D85CBD0();
      sub_20D975578();
      sub_20D975008();

      sub_20D975018();
      v105 = 5;
      sub_20D975578();
      sub_20D975008();

      sub_20D975018();
      v104 = 18;
      sub_20D9726A8();
      v55 = v100;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      v56 = v102;
      sub_20D975588();
      (*(v101 + 8))(v55, v56);
      sub_20D975008();

      sub_20D975018();
      sub_20D975048();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v52, v24, "Insulate Water Heaters tip body. %1$@ is 2, %2$@ is 5, %3$@ is 18%", 66, 2);
    }

    else if (v28 == 4)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v38 = qword_28112ABE8;
      v39 = qword_28112ABE8;
      sub_20D9726B8();
      v40 = v39;
      v32 = sub_20D975108(v27, 0, 0, v38, v24, "Dry Clothes tip title", 21, 2);
      sub_20D974FE8();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v38, v24, "Dry Clothes tip body", 20, 2);
    }

    else
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v76 = qword_28112ABE8;
      v77 = qword_28112ABE8;
      sub_20D9726B8();
      v78 = v77;
      v32 = sub_20D975108(v27, 0, 0, v76, v24, "Lint Traps tip title", 20, 2);
      sub_20D974FE8();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v76, v24, "Lint Traps tip body", 19, 2);
    }
  }

  else if (*v0)
  {
    if (v28 == 1)
    {
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v29 = qword_28112ABE8;
      v30 = qword_28112ABE8;
      sub_20D9726B8();
      v31 = v30;
      v32 = sub_20D975108(v27, 0, 0, v29, v24, "Dishwasher EcoMode tip title", 28, 2);
      sub_20D975028();
      sub_20D975018();
      v104 = 30;
      sub_20D9726A8();
      sub_20D85CBD0();
      v33 = v100;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      v34 = v102;
      sub_20D975588();
      (*(v101 + 8))(v33, v34);
      sub_20D975008();

      sub_20D975018();
      sub_20D975048();
      sub_20D9726B8();
      sub_20D975108(v27, 0, 0, v29, v24, "Dishwasher EcoMode tip body. %@ is 30%", 38, 2);
    }

    else
    {
      v60 = [objc_opt_self() liters];
      v61 = sub_20D87BF98();
      v87 = v17;
      v85[1] = v61;
      sub_20D971CA8();
      sub_20D971CD8();
      sub_20D972148();
      sub_20D9726A8();
      sub_20D7E6420();
      v86 = v24;
      sub_20D972118();
      v62 = v96;
      (*(v96 + 104))(v2, *MEMORY[0x277D84670], v98);
      v63 = v95;
      MEMORY[0x20F3202E0](v2, 0x3FB999999999999ALL, 0, v95);
      (*(v62 + 8))(v2, v98);
      v64 = v94;
      (*(v94 + 8))(v5, v63);
      (*(v64 + 56))(v8, 0, 1, v63);
      sub_20D971C38();
      sub_20D7E3944(v8, &qword_27C839980, &qword_20D97A4D0);
      (*(v92 + 8))(v11, v93);
      (*(v88 + 8))(v13, v90);
      sub_20D7EBC4C(&qword_27C8399B0, &qword_27C839998, &qword_20D97A4E8, MEMORY[0x277CC87C0]);
      v65 = v91;
      sub_20D971CF8();
      (*(v89 + 8))(v15, v65);
      v66 = v27;
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v67 = qword_28112ABE8;
      v68 = qword_28112ABE8;
      v69 = v86;
      sub_20D9726B8();
      v70 = v68;
      v32 = sub_20D975108(v66, 0, 0, v67, v69, "Shower Heads tip title", 22, 2);
      sub_20D975028();
      sub_20D975018();
      sub_20D975008();

      sub_20D975018();
      v105 = 25;
      sub_20D85CBD0();
      sub_20D975578();
      sub_20D975008();

      sub_20D975018();
      v104 = 40;
      sub_20D9726A8();
      v71 = v100;
      sub_20D972058();
      sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
      v72 = v102;
      sub_20D975588();
      (*(v101 + 8))(v71, v72);
      sub_20D975008();

      sub_20D975018();
      sub_20D975048();
      sub_20D9726B8();
      sub_20D975108(v66, 0, 0, v67, v69, "Shower Heads tip body. %1$@ is 9.5 liters, %2$@ is 25, %3$@ is 40%", 66, 2);
      (*(v97 + 8))(v87, v99);
    }
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v44 = qword_28112ABE8;
    v45 = qword_28112ABE8;
    sub_20D9726B8();
    v46 = v45;
    v32 = sub_20D975108(v27, 0, 0, v44, v24, "Cold Water for Laundry tip title", 32, 2);
    sub_20D975028();
    sub_20D975018();
    v104 = 90;
    sub_20D9726A8();
    sub_20D85CBD0();
    v47 = v100;
    sub_20D972058();
    sub_20D7EBC4C(&qword_281126E40, &qword_27C8396E0, &unk_20D97D7B0, MEMORY[0x277CC8CC8]);
    v48 = v102;
    sub_20D975588();
    (*(v101 + 8))(v47, v48);
    sub_20D975008();

    sub_20D975018();
    sub_20D975048();
    sub_20D9726B8();
    sub_20D975108(v27, 0, 0, v44, v24, "Cold Water for Laundry tip body. %@ is 90%", 42, 2);
  }

  return v32;
}

unint64_t sub_20D87BF18()
{
  result = qword_27C839978;
  if (!qword_27C839978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839978);
  }

  return result;
}

unint64_t sub_20D87BF98()
{
  result = qword_27C8399A8;
  if (!qword_27C8399A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8399A8);
  }

  return result;
}

uint64_t sub_20D87BFE4()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v0 = [qword_28112ABE8 bundleIdentifier];
  if (v0)
  {
    v1 = v0;
    sub_20D975098();

    v2 = sub_20D975078();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v3)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_15:
    sub_20D7E3944(&v9, &qword_27C838A18, &qword_20D9768D8);
    return 0;
  }

  v4 = sub_20D975078();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_20D9755A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20D87C1A0()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v0 = [qword_28112ABE8 bundleIdentifier];
  if (v0)
  {
    v1 = v0;
    sub_20D975098();

    v2 = sub_20D975078();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v3)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_15:
    sub_20D7E3944(&v9, &qword_27C838A18, &qword_20D9768D8);
    return 0;
  }

  v4 = sub_20D975078();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_20D9755A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20D87C35C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v5 = [qword_28112ABE8 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    sub_20D975098();

    v7 = sub_20D975078();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v8)
  {
    sub_20D81A220(a1, v4);
    v9 = sub_20D972628();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v4, 1, v9) != 1)
    {
      v11 = sub_20D972528();
      (*(v10 + 8))(v4, v9);
    }

    v12 = sub_20D975078();
    [v8 setObject:v11 forKey:v12];

    swift_unknownObjectRelease();
  }

  return sub_20D7E3944(a1, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t UtilityRateEntryCommon.init(infoSnapshot:date:shouldBlockout:displaySize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_20D880A70(a1, a4, type metadata accessor for UtilityRateInfoSnapshot);
  v11 = type metadata accessor for UtilityRateEntryCommon(0);
  v12 = v11[5];
  v13 = sub_20D972628();
  result = (*(*(v13 - 8) + 32))(a4 + v12, a2, v13);
  *(a4 + v11[6]) = a3;
  v15 = (a4 + v11[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_20D87C688@<X0>(const char *a1@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>, ...)
{
  if (qword_27C838490 != -1)
  {
    swift_once();
  }

  v8 = sub_20D9734F8();
  __swift_project_value_buffer(v8, qword_27C839A90);
  v9 = sub_20D9734D8();
  v10 = sub_20D975478();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20D7F4DC8(a2, a3, &v18);
    _os_log_impl(&dword_20D7C9000, v9, v10, a1, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  if (qword_27C8384D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v14 = __swift_project_value_buffer(v13, qword_27C839B30);
  sub_20D880B38(v14, a4, type metadata accessor for UtilityRateInfoSnapshot);
  v15 = type metadata accessor for UtilityRateEntryCommon(0);
  result = sub_20D9725C8();
  *(a4 + *(v15 + 24)) = 0;
  v17 = (a4 + *(v15 + 28));
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t UtilityRateEntryCommon.init(infoSnapshot:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20D880A70(a1, a3, type metadata accessor for UtilityRateInfoSnapshot);
  v5 = type metadata accessor for UtilityRateEntryCommon(0);
  v6 = v5[5];
  v7 = sub_20D972628();
  result = (*(*(v7 - 8) + 32))(a3 + v6, a2, v7);
  *(a3 + v5[6]) = 0;
  v9 = (a3 + v5[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t static UtilityRateWidgetCommon.snapshot(showUpgradeRequired:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27C838490 != -1)
  {
    swift_once();
  }

  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_27C839A90);
  v5 = sub_20D9734D8();
  v6 = sub_20D975478();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987540, &v14);
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s Generating snapshot with mock data", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  if (qword_27C8384D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v10 = __swift_project_value_buffer(v9, qword_27C839B30);
  sub_20D880B38(v10, a2, type metadata accessor for UtilityRateInfoSnapshot);
  v11 = type metadata accessor for UtilityRateEntryCommon(0);
  result = sub_20D9725C8();
  *(a2 + *(v11 + 24)) = a1 & 1;
  v13 = (a2 + *(v11 + 28));
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for UtilityRateEntryCommon(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4[18] = swift_task_alloc();
  v6 = sub_20D972628();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for UtilityRateInfoSnapshot(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839660, &qword_20D97A510);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D87CCEC, 0, 0);
}

uint64_t sub_20D87CCEC()
{
  v37 = v0;
  if (qword_27C838490 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_20D9734F8();
  v0[29] = __swift_project_value_buffer(v2, qword_27C839A90);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v35 = v0[12];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v36);
    *(v7 + 12) = 2080;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0x3E6C696E3CLL;
    }

    if (v9)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_20D7F4DC8(v10, v11, &v36);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v13 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
    v14 = MEMORY[0x20F323400](v35, v13);
    v16 = sub_20D7F4DC8(v14, v15, &v36);

    *(v7 + 24) = v16;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s: with siteID: %s & homes: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  if (v0[11])
  {

    v17 = sub_20D9734D8();
    v18 = sub_20D975458();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[10];
      v19 = v0[11];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v36);
      *(v21 + 12) = 2080;
      v0[5] = v20;
      v0[6] = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA30, &qword_20D976870);
      v23 = sub_20D975118();
      v25 = sub_20D7F4DC8(v23, v24, &v36);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s SiteDetail provided with non-nil siteID: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    v26 = v0[10];
    type metadata accessor for UtilityRateInfoSnapshotManager(0);
    swift_allocObject();

    v27 = swift_task_alloc();
    v0[32] = v27;
    *v27 = v0;
    v27[1] = sub_20D87D970;

    return UtilityRateInfoSnapshotManager.init(siteID:)(v26, v1);
  }

  else
  {
    v29 = sub_20D9734D8();
    v30 = sub_20D975478();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v36);
      _os_log_impl(&dword_20D7C9000, v29, v30, "%s No SiteDetail provided. ***Attempting Fallback to first onboarded home***", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F324260](v32, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);
    }

    v33 = swift_task_alloc();
    v0[30] = v33;
    *v33 = v0;
    v33[1] = sub_20D87D234;
    v34 = v0[12];

    return sub_20D854D5C(v34);
  }
}

uint64_t sub_20D87D234(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_20D87D334, 0, 0);
}

uint64_t sub_20D87D334()
{
  v39 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975458();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 248);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v38);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v4 + 16);

    _os_log_impl(&dword_20D7C9000, v1, v2, "%s (%ld homes available.", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 224);
  sub_20D84EE8C(*(v0 + 248), v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839668, &unk_20D9795F8);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_20D7E3944(*(v0 + 224), &qword_27C839660, &qword_20D97A510);
    v9 = sub_20D9734D8();
    v10 = sub_20D975458();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v38);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s: Widget configuration has no entity (no home)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    sub_20D880A1C();
    v13 = swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v13;
    v16 = sub_20D9734D8();
    v17 = sub_20D975458();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, v38);
      *(v18 + 12) = 2112;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_20D7C9000, v16, v17, "%s:ERROR: %@", v18, 0x16u);
      sub_20D7E3944(v19, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 72);
    *(v0 + 56) = v13;
    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v27 = swift_dynamicCast();
    v28 = *(v0 + 280);
    if (!v27)
    {
      v28 = 5;
    }

    LOBYTE(v38[0]) = v28;
    sub_20D87E778(v23, v25, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399C0, &unk_20D97A518);
    v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20D979110;
    sub_20D880A70(v23, v30 + v29, type metadata accessor for UtilityRateEntryCommon);

    v31 = *(v0 + 8);

    return v31(v30);
  }

  else
  {
    v33 = *(v0 + 224);
    v34 = sub_20D972C68();
    v36 = v35;

    sub_20D880AD8(v33, type metadata accessor for HistoricalUsageWidgetCommon.Home);
    type metadata accessor for UtilityRateInfoSnapshotManager(0);
    swift_allocObject();

    v37 = swift_task_alloc();
    *(v0 + 256) = v37;
    *v37 = v0;
    v37[1] = sub_20D87D970;

    return UtilityRateInfoSnapshotManager.init(siteID:)(v34, v36);
  }
}

uint64_t sub_20D87D970(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_20D87DA70, 0, 0);
}

uint64_t sub_20D87DA70()
{
  sub_20D9752E8();
  *(v0 + 272) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D87DB04, v2, v1);
}

uint64_t sub_20D87DB04()
{
  v1 = v0[33];
  v2 = v0[27];

  swift_getKeyPath();
  v0[8] = v1;
  sub_20D880D58(&qword_27C8394A0, type metadata accessor for UtilityRateInfoSnapshotManager, &protocol conformance descriptor for UtilityRateInfoSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30UtilityRateInfoSnapshotManager__infoSnapshot;
  swift_beginAccess();
  sub_20D880B38(v1 + v3, v2, type metadata accessor for UtilityRateInfoSnapshot);

  return MEMORY[0x2822009F8](sub_20D87DC34, 0, 0);
}

uint64_t sub_20D87DC34()
{
  v100 = v0;
  sub_20D880B38(*(v0 + 216), *(v0 + 208), type metadata accessor for UtilityRateInfoSnapshot);
  v1 = sub_20D9734D8();
  v2 = sub_20D975478();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 208);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v98 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v98);
    *(v5 + 12) = 2080;
    v7 = UtilityRateInfoSnapshot.description.getter();
    v9 = v8;
    sub_20D880AD8(v4, type metadata accessor for UtilityRateInfoSnapshot);
    v10 = sub_20D7F4DC8(v7, v9, &v98);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s: Retrieved week snapshot for widget %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {

    sub_20D880AD8(v4, type metadata accessor for UtilityRateInfoSnapshot);
  }

  v11 = *(*(v0 + 216) + *(*(v0 + 200) + 44));
  if (v11 == 6)
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    sub_20D9725C8();
    UtilityRateInfoSnapshot.peakUntil.getter(v14);
    v15 = *(v13 + 48);
    v16 = v15(v14, 1, v12);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    if (v16 == 1)
    {
      sub_20D9730E8();
      sub_20D972498();
      if (v15(v18, 1, v17) != 1)
      {
        sub_20D7E3944(*(v0 + 144), &qword_27C8389E8, &qword_20D9768D0);
      }
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 184), *(v0 + 144), *(v0 + 152));
    }

    v45 = *(v0 + 192);
    v93 = *(v0 + 184);
    v47 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 152);
    v49 = *(v0 + 160);
    v51 = *(v0 + 128);
    v50 = *(v0 + 136);
    v52 = *(v0 + 104);
    sub_20D880B38(*(v0 + 216), v50, type metadata accessor for UtilityRateInfoSnapshot);
    v53 = *(v49 + 16);
    v53(v50 + v52[5], v45, v48);
    *(v50 + v52[6]) = 0;
    v54 = (v50 + v52[7]);
    *v54 = 0;
    v54[1] = 0;
    sub_20D880B38(v50, v51, type metadata accessor for UtilityRateEntryCommon);
    v53(v46, v45, v48);
    v53(v47, v93, v48);
    v55 = sub_20D9734D8();
    v56 = sub_20D975478();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 168);
    v59 = *(v0 + 176);
    v60 = *(v0 + 152);
    v61 = *(v0 + 160);
    v62 = *(v0 + 128);
    if (v57)
    {
      v63 = *(v0 + 176);
      v64 = *(v0 + 120);
      v94 = *(v0 + 168);
      v65 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = v96;
      *v65 = 136315906;
      *(v65 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v97);
      *(v65 + 12) = 2080;
      sub_20D880B38(v62, v64, type metadata accessor for UtilityRateEntryCommon);
      v98 = 0;
      v99 = 0xE000000000000000;
      log = v55;
      sub_20D975678();
      MEMORY[0x20F323340](0xD00000000000002ALL, 0x800000020D987560);
      v66 = UtilityRateInfoSnapshot.description.getter();
      v91 = v60;
      MEMORY[0x20F323340](v66);

      MEMORY[0x20F323340](0x6164206874697720, 0xEC000000203A6574);
      v67 = sub_20D9725F8();
      MEMORY[0x20F323340](v67);

      v68 = v98;
      v69 = v99;
      sub_20D880AD8(v64, type metadata accessor for UtilityRateEntryCommon);
      sub_20D880AD8(v62, type metadata accessor for UtilityRateEntryCommon);
      v70 = sub_20D7F4DC8(v68, v69, &v97);

      *(v65 + 14) = v70;
      *(v65 + 22) = 2080;
      v71 = v63;
      v72 = sub_20D9725F8();
      v74 = v73;
      v75 = *(v61 + 8);
      v75(v71, v91);
      v76 = sub_20D7F4DC8(v72, v74, &v97);

      *(v65 + 24) = v76;
      *(v65 + 32) = 2080;
      v77 = sub_20D9725F8();
      v79 = v78;
      v75(v94, v91);
      v80 = sub_20D7F4DC8(v77, v79, &v97);

      *(v65 + 34) = v80;
      _os_log_impl(&dword_20D7C9000, log, v56, "%s Entry:%s created for %s, until %s", v65, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v96, -1, -1);
      MEMORY[0x20F324260](v65, -1, -1);
    }

    else
    {

      v75 = *(v61 + 8);
      v75(v58, v60);
      v75(v59, v60);
      sub_20D880AD8(v62, type metadata accessor for UtilityRateEntryCommon);
    }

    v81 = *(v0 + 216);
    v83 = *(v0 + 184);
    v82 = *(v0 + 192);
    v84 = *(v0 + 152);
    v85 = *(v0 + 136);
    v86 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399C0, &unk_20D97A518);
    v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_20D979110;
    v95 = v88;
    sub_20D880B38(v85, v88 + v87, type metadata accessor for UtilityRateEntryCommon);
    sub_20D974EB8();
    sub_20D880AD8(v85, type metadata accessor for UtilityRateEntryCommon);
    v75(v83, v84);
    v75(v82, v84);
    sub_20D880AD8(v81, type metadata accessor for UtilityRateInfoSnapshot);
  }

  else
  {
    v19 = sub_20D9734D8();
    v20 = sub_20D975478();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v98 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v98);
      *(v21 + 12) = 2112;
      sub_20D880A1C();
      swift_allocError();
      *v24 = v11;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s retrieved snapshot with error: %@, giving up.", v21, 0x16u);
      sub_20D7E3944(v22, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F324260](v23, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    v26 = *(v0 + 216);
    sub_20D880A1C();
    v27 = swift_allocError();
    *v28 = v11;
    swift_willThrow();
    sub_20D880AD8(v26, type metadata accessor for UtilityRateInfoSnapshot);
    v29 = v27;
    v30 = sub_20D9734D8();
    v31 = sub_20D975458();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v98 = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_20D7F4DC8(0xD000000000000025, 0x800000020D984890, &v98);
      *(v32 + 12) = 2112;
      v35 = v27;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v36;
      *v33 = v36;
      _os_log_impl(&dword_20D7C9000, v30, v31, "%s:ERROR: %@", v32, 0x16u);
      sub_20D7E3944(v33, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F324260](v34, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);
    }

    v38 = *(v0 + 112);
    v37 = *(v0 + 120);
    v39 = *(v0 + 72);
    *(v0 + 56) = v27;
    v40 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    v41 = swift_dynamicCast();
    v42 = *(v0 + 280);
    if (!v41)
    {
      v42 = 5;
    }

    LOBYTE(v98) = v42;
    sub_20D87E778(v37, v39, &v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399C0, &unk_20D97A518);
    v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_20D979110;
    v95 = v44;
    sub_20D880A70(v37, v44 + v43, type metadata accessor for UtilityRateEntryCommon);
  }

  v89 = *(v0 + 8);

  return v89(v95);
}

uint64_t sub_20D87E778(uint64_t a1, uint64_t a2, char *a3)
{
  v41 = a2;
  v42 = sub_20D972628();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D974EE8();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  if (qword_27C838490 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_27C839A90);
  v14 = sub_20D9734D8();
  v15 = sub_20D975458();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v9;
    v20 = v19;
    v43 = v19;
    *v16 = 136315394;
    *(v16 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v43);
    *(v16 + 12) = 2112;
    sub_20D880A1C();
    swift_allocError();
    *v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v18 = v22;
    _os_log_impl(&dword_20D7C9000, v14, v15, "%s: Erroring out widget due to snapshot error: %@", v16, 0x16u);
    sub_20D7E3944(v18, &unk_27C839E80, &qword_20D979610);
    v23 = v18;
    a1 = v36;
    MEMORY[0x20F324260](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    v9 = v35;
    MEMORY[0x20F324260](v24, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v25 = v37;
  if (qword_27C838798 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v9, qword_27C83CA10);
  sub_20D880B38(v26, v11, type metadata accessor for UtilityRateInfoSnapshot);
  sub_20D974EC8();
  v27 = sub_20D9734D8();
  v28 = sub_20D975458();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v43);
    _os_log_impl(&dword_20D7C9000, v27, v28, "%s: utility rate info loading failed, but error is recoverable, asking for 60 minute reload", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F324260](v30, -1, -1);
    MEMORY[0x20F324260](v29, -1, -1);
  }

  sub_20D972578();
  sub_20D974EB8();
  (*(v40 + 8))(v6, v42);
  (*(v38 + 8))(v25, v39);
  sub_20D880B38(v11, a1, type metadata accessor for UtilityRateInfoSnapshot);
  v31 = type metadata accessor for UtilityRateEntryCommon(0);
  sub_20D9725C8();
  result = sub_20D880AD8(v11, type metadata accessor for UtilityRateInfoSnapshot);
  *(a1 + *(v31 + 24)) = 0;
  v33 = (a1 + *(v31 + 28));
  *v33 = 0;
  v33[1] = 0;
  return result;
}

uint64_t UtilityRateWidgetCommon.UtilityRateWidgetForFamily.init(widgetFamily:entry:homeName:homeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_20D974EA8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily(0);
  result = sub_20D880A70(a2, a7 + v15[5], type metadata accessor for UtilityRateEntryCommon);
  v17 = (a7 + v15[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v15[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t UtilityRateWidgetCommon.UtilityRateWidgetForFamily.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v179 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399C8, &qword_20D97A558);
  MEMORY[0x28223BE20](v3);
  v5 = &v140 - v4;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399D0, &qword_20D97A560);
  MEMORY[0x28223BE20](v184);
  v159 = &v140 - v6;
  v7 = type metadata accessor for CircularUtilityRateInfoView(0);
  MEMORY[0x28223BE20](v7);
  v153 = (&v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399D8, &qword_20D97A568);
  v155 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v154 = &v140 - v10;
  v158 = sub_20D972628();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v146 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for RectangularLockUtilityInfoView(0);
  MEMORY[0x28223BE20](v174);
  v147 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399E0, &qword_20D97A570);
  v149 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v148 = &v140 - v13;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399E8, &qword_20D97A578);
  MEMORY[0x28223BE20](v180);
  v182 = &v140 - v14;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399F0, &qword_20D97A580);
  MEMORY[0x28223BE20](v172);
  v173 = &v140 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8399F8, &qword_20D97A588);
  MEMORY[0x28223BE20](v181);
  v175 = &v140 - v16;
  v168 = sub_20D9742A8();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D9726E8();
  MEMORY[0x28223BE20](v18 - 8);
  v151 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D975058();
  MEMORY[0x28223BE20](v20 - 8);
  v150 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v145 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v160 = &v140 - v25;
  v169 = type metadata accessor for UtilityRateInfoWidgetView(0);
  MEMORY[0x28223BE20](v169);
  v161 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A00, &qword_20D97A590);
  v163 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v162 = &v140 - v27;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A08, &qword_20D97A598);
  v165 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v164 = &v140 - v28;
  v29 = type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily(0);
  v30 = MEMORY[0x28223BE20](v29);
  v152 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v144 = &v140 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v140 - v34;
  v36 = sub_20D974EA8();
  v183 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  MEMORY[0x28223BE20](v39 - 8);
  v185 = &v140 - v40;
  v41 = v2 + *(v29 + 20);
  v156 = type metadata accessor for UtilityRateEntryCommon(0);
  v42 = *(v156 + 24);
  v177 = v29;
  v178 = v41;
  if (*(v41 + v42) == 1)
  {
    sub_20D9721B8();
  }

  else
  {
    v142 = v7;
    v143 = v3;
    v43 = (v2 + *(v29 + 28));
    v44 = v43[1];
    if (v44)
    {
      v141 = *v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
      v45 = swift_allocObject();
      v46 = v5;
      v47 = v2;
      v48 = v9;
      v49 = v46;
      v50 = v45;
      *(v45 + 16) = xmmword_20D977210;
      v51 = MEMORY[0x277D837D0];
      *(v45 + 56) = MEMORY[0x277D837D0];
      v52 = sub_20D84E340();
      v50[4] = 0xD000000000000039;
      v50[5] = 0x800000020D984910;
      v50[12] = v51;
      v50[13] = v52;
      v53 = v141;
      v50[8] = v52;
      v50[9] = v53;
      v50[10] = v44;

      v54 = v49;
      v9 = v48;
      v2 = v47;
      v5 = v54;
      sub_20D9750C8();
    }

    sub_20D9721B8();

    v7 = v142;
  }

  v55 = v183;
  (*(v183 + 16))(v38, v2, v36);
  v56 = (*(v55 + 88))(v38, v36);
  if (v56 == *MEMORY[0x277CE3B68])
  {
    if (qword_27C838490 != -1)
    {
      swift_once();
    }

    v57 = sub_20D9734F8();
    __swift_project_value_buffer(v57, qword_27C839A90);
    v58 = v2;
    v59 = v35;
    sub_20D880B38(v2, v35, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    v60 = sub_20D9734D8();
    v61 = sub_20D975478();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v186 = v63;
      *v62 = 136315138;
      v64 = v177;
      v65 = UtilityRateInfoSnapshot.description.getter();
      v67 = v66;
      sub_20D880AD8(v59, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      v68 = sub_20D7F4DC8(v65, v67, &v186);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_20D7C9000, v60, v61, "UtilityRateWidgetForFamily: creating systemSmall widget for infoSnapshot: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x20F324260](v63, -1, -1);
      MEMORY[0x20F324260](v62, -1, -1);
    }

    else
    {

      sub_20D880AD8(v35, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      v64 = v177;
    }

    v82 = v160;
    sub_20D880B38(v178, v160, type metadata accessor for UtilityRateInfoSnapshot);
    v83 = (v58 + *(v64 + 24));
    v84 = *v83;
    v85 = v83[1];
    v86 = v161;
    sub_20D880B38(v82, v161, type metadata accessor for UtilityRateInfoSnapshot);
    if (v85)
    {
    }

    else
    {
      v97 = v150;
      sub_20D974FE8();
      if (qword_281126E98 != -1)
      {
        swift_once();
      }

      v98 = qword_28112ABE8;
      v99 = qword_28112ABE8;
      v100 = v151;
      sub_20D9726B8();
      v84 = sub_20D975108(v97, v84, 0, v98, v100, "Text to show electricity rates widget title", 43, 2);
      v85 = v101;
    }

    sub_20D880AD8(v82, type metadata accessor for UtilityRateInfoSnapshot);
    v102 = v169;
    v103 = (v86 + *(v169 + 20));
    *v103 = v84;
    v103[1] = v85;
    v104 = sub_20D880D58(&qword_27C839A20, type metadata accessor for UtilityRateInfoWidgetView, &protocol conformance descriptor for UtilityRateInfoWidgetView);
    v105 = v162;
    sub_20D9746C8();
    sub_20D880AD8(v86, type metadata accessor for UtilityRateInfoWidgetView);
    v106 = v166;
    sub_20D974298();
    sub_20D974C48();
    v186 = v102;
    v187 = v104;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v108 = MEMORY[0x277CE1410];
    v109 = MEMORY[0x277CE1428];
    v110 = v164;
    v111 = v170;
    sub_20D9747C8();
    (*(v167 + 8))(v106, v168);
    (*(v163 + 8))(v105, v111);
    v112 = v165;
    v113 = v171;
    (*(v165 + 16))(v173, v110, v171);
    swift_storeEnumTagMultiPayload();
    v186 = v111;
    v187 = v109;
    v188 = OpaqueTypeConformance2;
    v189 = v108;
    swift_getOpaqueTypeConformance2();
    v114 = sub_20D880D58(&qword_27C839A28, type metadata accessor for RectangularLockUtilityInfoView, &protocol conformance descriptor for RectangularLockUtilityInfoView);
    v186 = v174;
    v187 = v114;
    swift_getOpaqueTypeConformance2();
    v115 = v175;
    sub_20D9741B8();
    sub_20D7EB7E8(v115, v182, &qword_27C8399F8, &qword_20D97A588);
    swift_storeEnumTagMultiPayload();
    sub_20D880BC0();
    sub_20D880DA0();
    sub_20D9741B8();
    sub_20D7E3944(v115, &qword_27C8399F8, &qword_20D97A588);
    (*(v112 + 8))(v110, v113);
    v116 = v185;
  }

  else
  {
    if (v56 == *MEMORY[0x277CE3B90])
    {
      v183 = v9;
      v176 = v5;
      if (qword_27C838490 != -1)
      {
        swift_once();
      }

      v69 = sub_20D9734F8();
      __swift_project_value_buffer(v69, qword_27C839A90);
      v70 = v2;
      v71 = v152;
      sub_20D880B38(v70, v152, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      v72 = sub_20D9734D8();
      v73 = sub_20D975478();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = v7;
        v76 = swift_slowAlloc();
        v186 = v76;
        *v74 = 136315138;
        v77 = UtilityRateInfoSnapshot.description.getter();
        v79 = v78;
        sub_20D880AD8(v71, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
        v80 = sub_20D7F4DC8(v77, v79, &v186);

        *(v74 + 4) = v80;
        _os_log_impl(&dword_20D7C9000, v72, v73, "UtilityRateWidgetForFamily: creating accessoryCircular widget for infoSnapshot: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        v81 = v76;
        v7 = v75;
        MEMORY[0x20F324260](v81, -1, -1);
        MEMORY[0x20F324260](v74, -1, -1);
      }

      else
      {

        sub_20D880AD8(v71, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      }

      v117 = v153;
      v118 = v178;
      (*(v157 + 16))(v153 + *(v7 + 20), v178 + *(v156 + 20), v158);
      sub_20D880B38(v118, v117 + *(v7 + 24), type metadata accessor for UtilityRateInfoSnapshot);
      *v117 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA8, &qword_20D976EA0);
      swift_storeEnumTagMultiPayload();
      v119 = sub_20D880D58(&qword_27C839A10, type metadata accessor for CircularUtilityRateInfoView, &protocol conformance descriptor for CircularUtilityRateInfoView);
      v120 = v154;
      v121 = v185;
      sub_20D9746C8();
      sub_20D880AD8(v117, type metadata accessor for CircularUtilityRateInfoView);
      v122 = v155;
      v123 = v183;
      (*(v155 + 16))(v176, v120, v183);
      swift_storeEnumTagMultiPayload();
      v186 = v7;
      v187 = v119;
      swift_getOpaqueTypeConformance2();
      v124 = v159;
      sub_20D9741B8();
      sub_20D7EB7E8(v124, v182, &qword_27C8399D0, &qword_20D97A560);
      swift_storeEnumTagMultiPayload();
      sub_20D880BC0();
      sub_20D880DA0();
      sub_20D9741B8();
      sub_20D7E3944(v124, &qword_27C8399D0, &qword_20D97A560);
      (*(v122 + 8))(v120, v123);
    }

    else
    {
      if (v56 != *MEMORY[0x277CE3B98])
      {
        swift_storeEnumTagMultiPayload();
        v125 = sub_20D880D58(&qword_27C839A10, type metadata accessor for CircularUtilityRateInfoView, &protocol conformance descriptor for CircularUtilityRateInfoView);
        v186 = v7;
        v187 = v125;
        swift_getOpaqueTypeConformance2();
        v126 = v159;
        sub_20D9741B8();
        sub_20D7EB7E8(v126, v182, &qword_27C8399D0, &qword_20D97A560);
        swift_storeEnumTagMultiPayload();
        sub_20D880BC0();
        sub_20D880DA0();
        sub_20D9741B8();
        sub_20D7E3944(v126, &qword_27C8399D0, &qword_20D97A560);
        sub_20D7E3944(v185, &qword_27C838B78, &qword_20D97A5A0);
        return (*(v183 + 8))(v38, v36);
      }

      if (qword_27C838490 != -1)
      {
        swift_once();
      }

      v87 = sub_20D9734F8();
      __swift_project_value_buffer(v87, qword_27C839A90);
      v88 = v144;
      sub_20D880B38(v2, v144, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      v89 = sub_20D9734D8();
      v90 = sub_20D975478();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v186 = v92;
        *v91 = 136315138;
        v93 = UtilityRateInfoSnapshot.description.getter();
        v95 = v94;
        sub_20D880AD8(v88, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
        v96 = sub_20D7F4DC8(v93, v95, &v186);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_20D7C9000, v89, v90, "UtilityRateWidgetForFamily: creating accessoryRectangular widget for infoSnapshot: %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x20F324260](v92, -1, -1);
        MEMORY[0x20F324260](v91, -1, -1);
      }

      else
      {

        sub_20D880AD8(v88, type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
      }

      v128 = v178;
      v129 = v146;
      (*(v157 + 16))(v146, v178 + *(v156 + 20), v158);
      v130 = v145;
      sub_20D880B38(v128, v145, type metadata accessor for UtilityRateInfoSnapshot);
      v131 = v147;
      RectangularLockUtilityInfoView.init(widgetStartDate:infoSnapshot:)(v129, v130, v147);
      v132 = sub_20D880D58(&qword_27C839A28, type metadata accessor for RectangularLockUtilityInfoView, &protocol conformance descriptor for RectangularLockUtilityInfoView);
      v133 = v148;
      v121 = v185;
      v134 = v174;
      sub_20D9746C8();
      sub_20D880AD8(v131, type metadata accessor for RectangularLockUtilityInfoView);
      v135 = v149;
      v136 = v176;
      (*(v149 + 16))(v173, v133, v176);
      swift_storeEnumTagMultiPayload();
      v137 = sub_20D880D58(&qword_27C839A20, type metadata accessor for UtilityRateInfoWidgetView, &protocol conformance descriptor for UtilityRateInfoWidgetView);
      v186 = v169;
      v187 = v137;
      v138 = swift_getOpaqueTypeConformance2();
      v186 = v170;
      v187 = MEMORY[0x277CE1428];
      v188 = v138;
      v189 = MEMORY[0x277CE1410];
      swift_getOpaqueTypeConformance2();
      v186 = v134;
      v187 = v132;
      swift_getOpaqueTypeConformance2();
      v139 = v175;
      sub_20D9741B8();
      sub_20D7EB7E8(v139, v182, &qword_27C8399F8, &qword_20D97A588);
      swift_storeEnumTagMultiPayload();
      sub_20D880BC0();
      sub_20D880DA0();
      sub_20D9741B8();
      sub_20D7E3944(v139, &qword_27C8399F8, &qword_20D97A588);
      (*(v135 + 8))(v133, v136);
    }

    v116 = v121;
  }

  return sub_20D7E3944(v116, &qword_27C838B78, &qword_20D97A5A0);
}

uint64_t static UtilityRateWidgetCommon.widgetConfigurationDisplayName()()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static UtilityRateWidgetCommon.widgetDescription()()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t UtilityRateEntryCommon.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtilityRateEntryCommon(0) + 20);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UtilityRateEntryCommon.description.getter()
{
  sub_20D975678();
  MEMORY[0x20F323340](0xD00000000000002ALL, 0x800000020D987560);
  v0 = UtilityRateInfoSnapshot.description.getter();
  MEMORY[0x20F323340](v0);

  MEMORY[0x20F323340](0x6164206874697720, 0xEC000000203A6574);
  type metadata accessor for UtilityRateEntryCommon(0);
  v1 = sub_20D9725F8();
  MEMORY[0x20F323340](v1);

  return 0;
}

unint64_t sub_20D880A1C()
{
  result = qword_27C8399B8;
  if (!qword_27C8399B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8399B8);
  }

  return result;
}

uint64_t sub_20D880A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D880AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D880B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D880BC0()
{
  result = qword_27C839A18;
  if (!qword_27C839A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8399F8, &qword_20D97A588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839A00, &qword_20D97A590);
    type metadata accessor for UtilityRateInfoWidgetView(255);
    sub_20D880D58(&qword_27C839A20, type metadata accessor for UtilityRateInfoWidgetView, &protocol conformance descriptor for UtilityRateInfoWidgetView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for RectangularLockUtilityInfoView(255);
    sub_20D880D58(&qword_27C839A28, type metadata accessor for RectangularLockUtilityInfoView, &protocol conformance descriptor for RectangularLockUtilityInfoView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839A18);
  }

  return result;
}

uint64_t sub_20D880D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20D880DA0()
{
  result = qword_27C839A30;
  if (!qword_27C839A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8399D0, &qword_20D97A560);
    type metadata accessor for CircularUtilityRateInfoView(255);
    sub_20D880D58(&qword_27C839A10, type metadata accessor for CircularUtilityRateInfoView, &protocol conformance descriptor for CircularUtilityRateInfoView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839A30);
  }

  return result;
}

void sub_20D880EE0(uint64_t a1)
{
  sub_20D974EA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UtilityRateEntryCommon(319);
    if (v2 <= 0x3F)
    {
      sub_20D856390();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D880FA4(uint64_t a1)
{
  type metadata accessor for UtilityRateInfoSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_20D972628();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_20D881048()
{
  result = qword_27C839A58;
  if (!qword_27C839A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839A60, &qword_20D97A6D8);
    sub_20D880BC0();
    sub_20D880DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839A58);
  }

  return result;
}

uint64_t GridForecastEntryCommon.init(forecastSnapshot:forecastUIProvider:date:widgetStartDate:shouldBlockout:displaySize:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  sub_20D885C80(a1, a6, type metadata accessor for GridForecastSnapshot);
  v15 = type metadata accessor for GridForecastEntryCommon(0);
  sub_20D7EB734(a2, a6 + v15[5]);
  v16 = v15[6];
  v17 = sub_20D972628();
  v18 = *(*(v17 - 8) + 32);
  v18(a6 + v16, a3, v17);
  result = (v18)(a6 + v15[7], a4, v17);
  *(a6 + v15[8]) = a5;
  v20 = (a6 + v15[9]);
  *v20 = a7;
  v20[1] = a8;
  return result;
}

uint64_t sub_20D881230@<X0>(const char *a1@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>, ...)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for GridForecastSnapshot(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v17 = sub_20D9734F8();
  __swift_project_value_buffer(v17, qword_2811250C8);
  v18 = sub_20D9734D8();
  v19 = sub_20D975478();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = v10;
    v21 = v11;
    v22 = v14;
    v23 = a1;
    v24 = v20;
    v25 = swift_slowAlloc();
    v26 = a3;
    v27 = v25;
    *&v36 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_20D7F4DC8(a2, v26, &v36);
    v28 = v23;
    v14 = v22;
    v11 = v21;
    v10 = v35;
    _os_log_impl(&dword_20D7C9000, v18, v19, v28, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F324260](v27, -1, -1);
    MEMORY[0x20F324260](v24, -1, -1);
  }

  LOBYTE(v36) = 5;
  static GridForecastSnapshot.staticSnapshotWithWindowsType(_:)(&v36, v16);
  sub_20D885BB8(v16, v14, type metadata accessor for GridForecastSnapshot);
  v37 = v11;
  v38 = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_20D885BB8(v16, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
  sub_20D972FE8();
  v30 = sub_20D972628();
  v31 = *(v30 - 8);
  result = (*(v31 + 48))(v10, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = type metadata accessor for GridForecastEntryCommon(0);
    sub_20D9725C8();
    sub_20D885C20(v16, type metadata accessor for GridForecastSnapshot);
    sub_20D885C80(v14, a4, type metadata accessor for GridForecastSnapshot);
    sub_20D7EB734(&v36, a4 + v33[5]);
    result = (*(v31 + 32))(a4 + v33[6], v10, v30);
    *(a4 + v33[8]) = 0;
    v34 = (a4 + v33[9]);
    *v34 = 0;
    v34[1] = 0;
  }

  return result;
}

uint64_t static GridForecastWidgetCommon.snapshot(showUpgradeRequired:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for GridForecastSnapshot(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_2811250C8);
  v14 = sub_20D9734D8();
  v15 = sub_20D975478();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v25 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987540, &v25);
    _os_log_impl(&dword_20D7C9000, v14, v15, "%s Generating snapshot with mock data", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  LOBYTE(v25) = 5;
  static GridForecastSnapshot.staticSnapshotWithWindowsType(_:)(&v25, v12);
  sub_20D885BB8(v12, v10, type metadata accessor for GridForecastSnapshot);
  v26 = v7;
  v27 = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_20D885BB8(v12, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
  sub_20D972FE8();
  v19 = sub_20D972628();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v6, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = type metadata accessor for GridForecastEntryCommon(0);
    sub_20D9725C8();
    sub_20D885C20(v12, type metadata accessor for GridForecastSnapshot);
    sub_20D885C80(v10, a2, type metadata accessor for GridForecastSnapshot);
    sub_20D7EB734(&v25, a2 + v22[5]);
    result = (*(v20 + 32))(a2 + v22[6], v6, v19);
    *(a2 + v22[8]) = a1 & 1;
    v23 = (a2 + v22[9]);
    *v23 = 0;
    v23[1] = 0;
  }

  return result;
}

void *static GridForecastWidgetCommon.timeline(forecastSnapshot:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v144 = sub_20D9727B8();
  v137 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_20D9727D8();
  v136 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v5 - 8);
  v140 = &v122 - v6;
  v138 = sub_20D972628();
  v151 = *(v138 - 1);
  v7 = MEMORY[0x28223BE20](v138);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v155 = &v122 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v122 - v13;
  MEMORY[0x28223BE20](v12);
  v146 = &v122 - v15;
  v148 = type metadata accessor for GridForecastEntryCommon(0);
  v145 = *(v148 - 8);
  v16 = MEMORY[0x28223BE20](v148);
  v154 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v122 - v21;
  MEMORY[0x28223BE20](v20);
  v153 = (&v122 - v23);
  v24 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v27 = sub_20D9734F8();
  v149 = __swift_project_value_buffer(v27, qword_2811250C8);
  v28 = sub_20D9734D8();
  v29 = sub_20D975478();
  v30 = os_log_type_enabled(v28, v29);
  v147 = v24;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v156 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9876A0, &v156);
    _os_log_impl(&dword_20D7C9000, v28, v29, "%s resolving forecastSnapshot", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v33 = v32;
    v34 = v147;
    MEMORY[0x20F324260](v33, -1, -1);
    MEMORY[0x20F324260](v31, -1, -1);
  }

  else
  {
    v34 = v24;
  }

  v35 = *(v150 + *(v34 + 36));
  if (v35 == 12)
  {
    v36 = sub_20D9729C8();
    v37 = v34;
    v123 = a1;
    if (v36)
    {
      v38 = *(v36 + 16);
    }

    else
    {
      v38 = 0;
    }

    v60 = sub_20D9734D8();
    v61 = sub_20D975478();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v156 = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9876A0, &v156);
      *(v62 + 12) = 2048;
      *(v62 + 14) = v38;
      _os_log_impl(&dword_20D7C9000, v60, v61, "%s: retrieved %ld windows", v62, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x20F324260](v63, -1, -1);
      v64 = v62;
      v37 = v34;
      MEMORY[0x20F324260](v64, -1, -1);
    }

    v65 = v151;
    v66 = v146;
    sub_20D972618();
    v67 = v65[2];
    v68 = v138;
    v131 = v65 + 2;
    v130 = v67;
    v67(v14, v66, v138);
    v69 = sub_20D9734D8();
    v70 = sub_20D975478();
    v71 = os_log_type_enabled(v69, v70);
    v133 = v9;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v156 = v73;
      *v72 = 136315394;
      *(v72 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9876A0, &v156);
      *(v72 + 12) = 2080;
      v74 = sub_20D9725F8();
      v75 = v14;
      v77 = v76;
      v152 = v151[1];
      v153 = v151 + 1;
      v152(v75, v68);
      v78 = sub_20D7F4DC8(v74, v77, &v156);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_20D7C9000, v69, v70, "-------- %s creating 60 mins of entries, starting at %s", v72, 0x16u);
      swift_arrayDestroy();
      v79 = v73;
      v65 = v151;
      v80 = v147;
      MEMORY[0x20F324260](v79, -1, -1);
      v81 = v72;
      v37 = v80;
      MEMORY[0x20F324260](v81, -1, -1);
    }

    else
    {

      v152 = v65[1];
      v153 = v65 + 1;
      v82 = v152(v14, v68);
    }

    v83 = v68;
    v138 = (v137 + 13);
    ++v137;
    ++v136;
    v135 = *MEMORY[0x277CC99A0];
    v134 = (v65 + 6);
    v129 = (v65 + 4);
    v128 = 0x800000020D987660;
    v127 = "GridForecastEntryCommon: ";
    v59 = MEMORY[0x277D84F90];
    v84 = -5;
    v82.n128_u64[0] = 136315394;
    v126 = v82;
    v125 = 0xD000000000000019;
    v124 = 0xD000000000000014;
    v85 = v148;
    v132 = v22;
    do
    {
      v151 = v59;
      v86 = v141;
      sub_20D972778();
      v87 = v143;
      v88 = v144;
      (*v138)(v143, v135, v144);
      v89 = v140;
      v90 = v146;
      sub_20D972758();
      (*v137)(v87, v88);
      (*v136)(v86, v142);
      result = (*v134)(v89, 1, v83);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v92 = v155;
      (*v129)(v155, v89, v83);
      v93 = v150;
      sub_20D885BB8(v150, v22, type metadata accessor for GridForecastSnapshot);
      v94 = &v22[v85[5]];
      v94[3] = v37;
      v94[4] = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
      sub_20D885BB8(v93, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
      v96 = v130;
      v130(&v22[v85[6]], v92, v83);
      v96(&v22[v85[7]], v90, v83);
      v22[v85[8]] = 0;
      v97 = &v22[v85[9]];
      *v97 = 0;
      *(v97 + 1) = 0;
      v98 = v22;
      v99 = v139;
      sub_20D885BB8(v98, v139, type metadata accessor for GridForecastEntryCommon);
      v100 = v83;
      v101 = v133;
      v96(v133, v92, v100);
      v102 = sub_20D9734D8();
      v103 = sub_20D975478();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = v126.n128_u32[0];
        v156 = 0;
        v157 = 0xE000000000000000;
        v158 = v105;
        sub_20D975678();

        v156 = v125;
        v157 = v128;
        v106 = sub_20D9725F8();
        MEMORY[0x20F323340](v106);

        MEMORY[0x20F323340](v124, v127 | 0x8000000000000000);
        v107 = sub_20D9725F8();
        MEMORY[0x20F323340](v107);

        v108 = v156;
        v109 = v157;
        sub_20D885C20(v99, type metadata accessor for GridForecastEntryCommon);
        v110 = sub_20D7F4DC8(v108, v109, &v158);

        *(v104 + 4) = v110;
        *(v104 + 12) = 2080;
        v111 = sub_20D9725F8();
        v113 = v112;
        v152(v101, v100);
        v114 = sub_20D7F4DC8(v111, v113, &v158);
        v85 = v148;

        *(v104 + 14) = v114;
        _os_log_impl(&dword_20D7C9000, v102, v103, "\t\t- %s created for %s", v104, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v105, -1, -1);
        MEMORY[0x20F324260](v104, -1, -1);
      }

      else
      {

        v152(v101, v100);
        sub_20D885C20(v99, type metadata accessor for GridForecastEntryCommon);
      }

      v83 = v100;
      v22 = v132;
      sub_20D885BB8(v132, v154, type metadata accessor for GridForecastEntryCommon);
      v59 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = sub_20D8D45D0(0, v59[2] + 1, 1, v59);
      }

      v117 = v59[2];
      v116 = v59[3];
      if (v117 >= v116 >> 1)
      {
        v59 = sub_20D8D45D0((v116 > 1), v117 + 1, 1, v59);
      }

      v152(v155, v83);
      sub_20D885C20(v22, type metadata accessor for GridForecastEntryCommon);
      v59[2] = v117 + 1;
      sub_20D885C80(v154, v59 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v117, type metadata accessor for GridForecastEntryCommon);
      v84 += 5;
    }

    while (v84 < 0x37);

    v118 = sub_20D9734D8();
    v119 = sub_20D975478();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 134217984;
      *(v120 + 4) = v59[2];

      _os_log_impl(&dword_20D7C9000, v118, v119, "-------- %ld entries created, creating timeline...", v120, 0xCu);
      MEMORY[0x20F324260](v120, -1, -1);
    }

    else
    {
    }

    v121 = v146;

    sub_20D974EC8();
    v152(v121, v83);
  }

  else
  {
    sub_20D885BB8(v150, v26, type metadata accessor for GridForecastSnapshot);
    v39 = sub_20D9734D8();
    v40 = sub_20D975458();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v123 = a1;
      v42 = v41;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v156 = v44;
      *v42 = 136315650;
      *(v42 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D9876A0, &v156);
      *(v42 + 12) = 2080;
      v45 = GridForecastSnapshot.description.getter();
      v47 = v46;
      sub_20D885C20(v26, type metadata accessor for GridForecastSnapshot);
      v48 = sub_20D7F4DC8(v45, v47, &v156);
      v34 = v147;

      *(v42 + 14) = v48;
      *(v42 + 22) = 2112;
      sub_20D84D14C();
      swift_allocError();
      *v49 = v35;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 24) = v50;
      *v43 = v50;
      _os_log_impl(&dword_20D7C9000, v39, v40, "%s forecastSnapshot (%s) has error: %@", v42, 0x20u);
      sub_20D7E3944(v43, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v43, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v44, -1, -1);
      v51 = v42;
      a1 = v123;
      MEMORY[0x20F324260](v51, -1, -1);
    }

    else
    {

      sub_20D885C20(v26, type metadata accessor for GridForecastSnapshot);
    }

    v52 = v150;
    v53 = v153;
    sub_20D885BB8(v150, v153, type metadata accessor for GridForecastSnapshot);
    v54 = v148;
    v55 = (v53 + *(v148 + 20));
    v55[3] = v34;
    v55[4] = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
    v56 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_20D885BB8(v52, v56, type metadata accessor for GridForecastSnapshot);
    sub_20D9725C8();
    sub_20D9725C8();
    *(v53 + *(v54 + 32)) = 0;
    v57 = (v53 + *(v54 + 36));
    *v57 = 0;
    v57[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A68, &unk_20D97B480);
    v58 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v59 = swift_allocObject();
    *(v59 + 1) = xmmword_20D979110;
    sub_20D885BB8(v53, v59 + v58, type metadata accessor for GridForecastEntryCommon);
    LOBYTE(v156) = v35;
    sub_20D882B34(&v156, a1);
    sub_20D885C20(v53, type metadata accessor for GridForecastEntryCommon);
  }

  return v59;
}

uint64_t sub_20D882B34@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D974EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v11 = sub_20D9734F8();
  __swift_project_value_buffer(v11, qword_2811250C8);
  v12 = sub_20D9734D8();
  v13 = sub_20D975458();
  v14 = os_log_type_enabled(v12, v13);
  v46 = v7;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v5;
    v18 = v8;
    v19 = v10;
    v20 = v4;
    v21 = a2;
    v22 = v17;
    v48 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987840, &v48);
    *(v15 + 12) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v23 = v47;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v24;
    *v16 = v24;
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s: Erroring out widget due to snapshot error: %@", v15, 0x16u);
    sub_20D7E3944(v16, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v25 = v22;
    a2 = v21;
    v4 = v20;
    v10 = v19;
    v8 = v18;
    v5 = v44;
    MEMORY[0x20F324260](v25, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  sub_20D974EC8();
  if (((1 << v47) & 0xF78) != 0)
  {
    v26 = sub_20D9734D8();
    v27 = sub_20D975458();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987840, &v48);
      *(v28 + 12) = 2112;
      sub_20D84D14C();
      swift_allocError();
      *v31 = v47;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_20D7C9000, v26, v27, "%s: window loading failed, erroring out widget. Unrecoverable error: %@", v28, 0x16u);
      sub_20D7E3944(v29, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v28, -1, -1);
    }

    v33 = v46;
    sub_20D974ED8();
  }

  else
  {
    if (((1 << v47) & 7) != 0)
    {
      v34 = sub_20D9734D8();
      v35 = sub_20D975478();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v48 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987840, &v48);
        _os_log_impl(&dword_20D7C9000, v34, v35, "%s: windows are still loading (or a transient error), displaying empty, retrying as soon as WidgetKit allows...", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x20F324260](v37, -1, -1);
        MEMORY[0x20F324260](v36, -1, -1);
      }
    }

    else
    {
      v34 = sub_20D9734D8();
      v38 = sub_20D975458();
      if (os_log_type_enabled(v34, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v48 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987840, &v48);
        _os_log_impl(&dword_20D7C9000, v34, v38, "%s: window loading failed, but error is recoverable, asking for 5 minute reload", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x20F324260](v40, -1, -1);
        MEMORY[0x20F324260](v39, -1, -1);
      }
    }

    v41 = v45;
    v33 = v46;
    sub_20D972578();
    sub_20D974EB8();
    (*(v5 + 8))(v41, v4);
  }

  (*(v8 + 8))(a2, v33);
  return (*(v8 + 32))(a2, v10, v33);
}

unint64_t GridForecastEntryCommon.shortDescription.getter()
{
  sub_20D975678();

  type metadata accessor for GridForecastEntryCommon(0);
  v0 = sub_20D9725F8();
  MEMORY[0x20F323340](v0);

  MEMORY[0x20F323340](0xD000000000000014, 0x800000020D987680);
  v1 = sub_20D9725F8();
  MEMORY[0x20F323340](v1);

  return 0xD000000000000019;
}

uint64_t static GridForecastWidgetCommon.getErrorEntryForError(_:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v10 = sub_20D9734F8();
  __swift_project_value_buffer(v10, qword_2811250C8);
  v11 = sub_20D9734D8();
  v12 = sub_20D975458();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984A60, &v23);
    *(v13 + 12) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_20D7C9000, v11, v12, "%s: Erroring out widget due to snapshot error: %@", v13, 0x16u);
    sub_20D7E3944(v14, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v13, -1, -1);
  }

  v25 = v9;
  sub_20D882B34(&v25, a2);
  v24 = v9;
  static GridForecastSnapshot.staticSnapshotWithError(_:)(&v24, v8);
  sub_20D885BB8(v8, a1, type metadata accessor for GridForecastSnapshot);
  v18 = type metadata accessor for GridForecastEntryCommon(0);
  v19 = (a1 + v18[5]);
  v19[3] = v6;
  v19[4] = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_20D885BB8(v8, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
  sub_20D9725C8();
  sub_20D9725C8();
  result = sub_20D885C20(v8, type metadata accessor for GridForecastSnapshot);
  *(a1 + v18[8]) = 0;
  v22 = (a1 + v18[9]);
  *v22 = 0;
  v22[1] = 0;
  return result;
}

uint64_t GridForecastWidgetCommon.GridForecastWidgetForFamily.init(widgetFamily:entry:configuredlocationID:debugText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_20D974EA8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily(0);
  result = sub_20D885C80(a2, a7 + v15[5], type metadata accessor for GridForecastEntryCommon);
  v17 = (a7 + v15[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v15[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t GridForecastWidgetCommon.GridForecastWidgetForFamily.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v227 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v195 = &v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v214 = (&v195 - v7);
  MEMORY[0x28223BE20](v6);
  v205 = &v195 - v8;
  v9 = sub_20D972628();
  v229 = *(v9 - 8);
  v230 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v199 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v198 = &v195 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v220 = &v195 - v15;
  MEMORY[0x28223BE20](v14);
  v219 = &v195 - v16;
  v216 = type metadata accessor for RectangularLockEnergyForecastView(0);
  MEMORY[0x28223BE20](v216);
  v215 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A70, &qword_20D97A700);
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v201 = &v195 - v18;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A78, &qword_20D97A708);
  MEMORY[0x28223BE20](v202);
  v200 = &v195 - v19;
  v223 = sub_20D9742A8();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v221 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v21 - 8);
  v218 = &v195 - v22;
  v225 = type metadata accessor for GridForecastWidgetView(0);
  v23 = MEMORY[0x28223BE20](v225);
  v224 = (&v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v208 = &v195 - v25;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A80, &qword_20D97A710);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v210 = &v195 - v26;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839A88, &unk_20D97A718);
  MEMORY[0x28223BE20](v211);
  v209 = &v195 - v27;
  v28 = type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily(0);
  v29 = MEMORY[0x28223BE20](v28);
  v197 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v196 = &v195 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v206 = &v195 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v195 - v35;
  v37 = sub_20D974EA8();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v207 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v195 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v195 - v44;
  v46 = (v2 + *(v28 + 20));
  v47 = type metadata accessor for GridForecastEntryCommon(0);
  v48 = v46[*(v47 + 32)] == 1;
  v226 = v45;
  v217 = v46;
  v228 = v28;
  if (v48)
  {
    sub_20D9721B8();
  }

  else
  {
    sub_20D885D08(v46, *(v2 + *(v28 + 24)), *(v2 + *(v28 + 24) + 8));
    sub_20D9721B8();
  }

  (*(v38 + 16))(v42, v2, v37);
  v49 = (*(v38 + 88))(v42, v37);
  if (v49 == *MEMORY[0x277CE3B68] || v49 == *MEMORY[0x277CE3B70])
  {
    LODWORD(v216) = *MEMORY[0x277CE3B68];
    v220 = v2;
    if (qword_2811250C0 != -1)
    {
      swift_once();
    }

    v69 = sub_20D9734F8();
    v70 = __swift_project_value_buffer(v69, qword_2811250C8);
    v71 = v220;
    sub_20D885BB8(v220, v36, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    v72 = v206;
    sub_20D885BB8(v71, v206, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    v219 = v70;
    v73 = sub_20D9734D8();
    v74 = sub_20D975478();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v235 = v76;
      *v75 = 136315394;
      v214 = v73;
      sub_20D8865C0(&qword_281127730, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      LODWORD(v205) = v74;
      v77 = sub_20D9757A8();
      v215 = v47;
      v78 = v72;
      v80 = v79;
      sub_20D885C20(v36, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      v81 = sub_20D7F4DC8(v77, v80, &v235);
      v47 = v215;

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = GridForecastSnapshot.description.getter();
      v84 = v83;
      sub_20D885C20(v78, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      v85 = sub_20D7F4DC8(v82, v84, &v235);

      *(v75 + 14) = v85;
      v86 = v214;
      _os_log_impl(&dword_20D7C9000, v214, v205, "GridForecastWidgetForFamily: creating systemSmall/systemMedium widget for %s w/ forecastSnapshot %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v76, -1, -1);
      MEMORY[0x20F324260](v75, -1, -1);
    }

    else
    {

      sub_20D885C20(v72, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      sub_20D885C20(v36, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    }

    v87 = v217;
    v88 = type metadata accessor for GridForecastSnapshot(0);
    v215 = *(v87 + *(v88 + 32));
    v238 = v88;
    v239 = sub_20D8865C0(&qword_281127378, type metadata accessor for GridForecastSnapshot, &protocol conformance descriptor for GridForecastSnapshot);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v235);
    sub_20D885BB8(v87, boxed_opaque_existential_1, type metadata accessor for GridForecastSnapshot);
    v90 = v229;
    v91 = v230;
    v92 = v87 + *(v47 + 24);
    v93 = v218;
    (*(v229 + 16))(v218, v92, v230);
    v94 = *(v90 + 56);
    v94(v93, 0, 1, v91);
    v95 = v207;
    (*(v38 + 104))(v207, v216, v37);
    sub_20D8865C0(&qword_281124CB0, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BB0]);
    v96 = v220;
    sub_20D975208();
    sub_20D975208();
    (*(v38 + 8))(v95, v37);
    v97 = 12;
    if (v234 == v231)
    {
      v97 = 9;
    }

    v217 = v97;
    v98 = (v96 + *(v228 + 28));
    v99 = v98[1];
    v229 = *v98;
    KeyPath = swift_getKeyPath();
    v101 = v224;
    v224->isa = KeyPath;
    LOBYTE(v101[1].isa) = 0;
    v102 = swift_getKeyPath();
    v101[4].isa = 0;
    v101[5].isa = 0;
    LOBYTE(v101[6].isa) = 0;
    v101[2].isa = v102;
    v101[3].isa = 0;
    *&v101[10].isa = 0u;
    v101[12].isa = 0;
    *&v101[8].isa = 0u;
    v103 = v225;
    v104 = *(v225 + 32);
    v94(v101 + v104, 1, 1, v91);
    v105 = v101 + v103[9];
    *(&v101->isa + v103[11]) = 0x4018000000000000;
    v106 = v215;
    v101[7].isa = v215;

    v107 = v106;

    sub_20D80895C(&v235, &v101[8], &qword_27C839380, &qword_20D97A7B0);
    sub_20D80895C(v93, v101 + v104, &qword_27C8389E8, &qword_20D9768D0);
    *v105 = v217;
    v105[8] = 0;
    v108 = (&v101->isa + v103[10]);
    *v108 = v229;
    v108[1] = v99;
    sub_20D7EB7E8(&v235, &v234, &qword_27C839380, &qword_20D97A7B0);

    v109 = sub_20D9734D8();
    v110 = sub_20D975448();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v233 = v112;
      *v111 = 136315650;
      *(v111 + 4) = sub_20D7F4DC8(0xD000000000000055, 0x800000020D983800, &v233);
      *(v111 + 12) = 2080;
      v113 = type metadata accessor for FeaturedInterval(0);
      v114 = MEMORY[0x20F323400](v107, v113);
      v116 = sub_20D7F4DC8(v114, v115, &v233);

      *(v111 + 14) = v116;
      *(v111 + 22) = 2080;
      sub_20D7EB7E8(&v234, &v231, &qword_27C839380, &qword_20D97A7B0);
      if (v232)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v231, v232);
        v117 = sub_20D9757A8();
        v119 = v118;
        __swift_destroy_boxed_opaque_existential_0(&v231);
      }

      else
      {
        v117 = 0x3E6C696E3CLL;
        sub_20D7E3944(&v231, &qword_27C839380, &qword_20D97A7B0);
        v119 = 0xE500000000000000;
      }

      v120 = v227;
      sub_20D7E3944(&v234, &qword_27C839380, &qword_20D97A7B0);
      v129 = sub_20D7F4DC8(v117, v119, &v233);

      *(v111 + 24) = v129;
      _os_log_impl(&dword_20D7C9000, v109, v110, "GridForecastWidgetView:%s: w/ windows %s & provider: %s", v111, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v112, -1, -1);
      MEMORY[0x20F324260](v111, -1, -1);

      sub_20D7E3944(v218, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(&v235, &qword_27C839380, &qword_20D97A7B0);
    }

    else
    {

      sub_20D7E3944(&v234, &qword_27C839380, &qword_20D97A7B0);
      sub_20D7E3944(v93, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(&v235, &qword_27C839380, &qword_20D97A7B0);
      v120 = v227;
    }

    v130 = v208;
    sub_20D885C80(v224, v208, type metadata accessor for GridForecastWidgetView);
    v131 = sub_20D8865C0(qword_2811265E0, type metadata accessor for GridForecastWidgetView, &protocol conformance descriptor for GridForecastWidgetView);
    v132 = v210;
    v133 = v226;
    v134 = v225;
    sub_20D9746C8();
    sub_20D885C20(v130, type metadata accessor for GridForecastWidgetView);
    v135 = v221;
    sub_20D974298();
    sub_20D974C48();
    v235 = v134;
    v236 = v131;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v137 = MEMORY[0x277CE1410];
    v138 = MEMORY[0x277CE1428];
    v139 = v213;
    sub_20D9747C8();
    (*(v222 + 8))(v135, v223);
    (*(v212 + 8))(v132, v139);
    v235 = v139;
    v236 = v138;
    v237 = OpaqueTypeConformance2;
    v238 = v137;
    swift_getOpaqueTypeConformance2();
    v140 = sub_20D974B08();
    result = sub_20D7E3944(v133, &qword_27C838B78, &qword_20D97A5A0);
    *v120 = v140;
  }

  else if (v49 == *MEMORY[0x277CE3B98])
  {
    if (qword_2811250C0 != -1)
    {
      swift_once();
    }

    v50 = v47;
    v51 = sub_20D9734F8();
    v52 = __swift_project_value_buffer(v51, qword_2811250C8);
    v53 = v196;
    sub_20D885BB8(v2, v196, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    v54 = v197;
    sub_20D885BB8(v2, v197, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    v224 = v52;
    v55 = sub_20D9734D8();
    v56 = sub_20D975478();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v230;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v235 = v225;
      *v59 = 136315394;
      sub_20D8865C0(&qword_281127730, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v60 = sub_20D9757A8();
      v62 = v61;
      sub_20D885C20(v53, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      v63 = sub_20D7F4DC8(v60, v62, &v235);
      v58 = v230;

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = GridForecastSnapshot.description.getter();
      v66 = v65;
      sub_20D885C20(v54, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      v67 = sub_20D7F4DC8(v64, v66, &v235);

      *(v59 + 14) = v67;
      _os_log_impl(&dword_20D7C9000, v55, v56, "GridForecastWidgetForFamily: creating accessoryRectangular widget for %s w/ forecastSnapshot %s", v59, 0x16u);
      v68 = v225;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v68, -1, -1);
      MEMORY[0x20F324260](v59, -1, -1);
    }

    else
    {

      sub_20D885C20(v54, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
      sub_20D885C20(v53, type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    }

    v123 = v205;
    v124 = v217;
    v125 = *(v229 + 16);
    v125(v219, v217 + *(v50 + 24), v58);
    v125(v220, v124 + *(v50 + 28), v58);
    v126 = type metadata accessor for GridForecastSnapshot(0);
    v127 = sub_20D9729C8();
    if (v127)
    {
      v128 = v127;
      MEMORY[0x28223BE20](v127);
      sub_20D871194(sub_20D80534C, v128, v123);
    }

    else
    {
      v141 = sub_20D972998();
      (*(*(v141 - 8) + 56))(v123, 1, 1, v141);
    }

    LODWORD(v218) = *(v124 + *(v126 + 36));
    v142 = swift_getKeyPath();
    v143 = v215;
    *v215 = v142;
    *(v143 + 8) = 0;
    v144 = v216;
    v145 = *(v216 + 28);
    v146 = sub_20D972998();
    v147 = *(v146 - 8);
    v148 = *(v147 + 56);
    v228 = v145;
    v148(v143 + v145, 1, 1, v146);
    v225 = *(v144 + 32);
    *(v143 + v225) = 12;
    v149 = v198;
    v125(v198, v219, v58);
    v150 = v199;
    v125(v199, v220, v58);
    v151 = v214;
    sub_20D7EB7E8(v123, v214, &qword_27C838E48, &qword_20D977670);
    v152 = sub_20D9734D8();
    v153 = sub_20D975478();
    if (os_log_type_enabled(v152, v153))
    {
      LODWORD(v217) = v153;
      v224 = v152;
      v154 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v234 = v213;
      *v154 = 136315906;
      v155 = sub_20D9725F8();
      v157 = v156;
      v158 = *(v229 + 8);
      v158(v149, v58);
      v159 = sub_20D7F4DC8(v155, v157, &v234);

      *(v154 + 4) = v159;
      *(v154 + 12) = 2080;
      v160 = sub_20D9725F8();
      v162 = v161;
      v158(v150, v58);
      v163 = sub_20D7F4DC8(v160, v162, &v234);

      *(v154 + 14) = v163;
      *(v154 + 22) = 2080;
      v164 = v218;
      if (v218 == 12)
      {
        v165 = 0xE500000000000000;
        v166 = 0x7272456F6ELL;
      }

      else
      {
        LOBYTE(v231) = v218;
        v235 = GridForecastError.description.getter();
        v236 = v170;
        sub_20D7E1EF8();
        v171 = sub_20D975538();
        v165 = v172;

        v166 = v171;
      }

      v173 = v195;
      v174 = sub_20D7F4DC8(v166, v165, &v234);

      *(v154 + 24) = v174;
      *(v154 + 32) = 2080;
      sub_20D7EB7E8(v214, v173, &qword_27C838E48, &qword_20D977670);
      v175 = (*(v147 + 48))(v173, 1, v146);
      v123 = v205;
      if (v175 == 1)
      {
        v176 = 0x3E6C696E3CLL;
        sub_20D7E3944(v173, &qword_27C838E48, &qword_20D977670);
        v177 = 0xE500000000000000;
      }

      else
      {
        EnergyWindow.description.getter();
        v176 = v178;
        v177 = v179;
        (*(v147 + 8))(v173, v146);
      }

      v169 = v227;
      v58 = v230;
      sub_20D7E3944(v214, &qword_27C838E48, &qword_20D977670);
      v180 = sub_20D7F4DC8(v176, v177, &v234);

      *(v154 + 34) = v180;
      v181 = v224;
      _os_log_impl(&dword_20D7C9000, v224, v217, "RectangularLockEnergyForecastView: creating view for date: %s, with widgetStartDate: %s - (%s) & %s", v154, 0x2Au);
      v182 = v213;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v182, -1, -1);
      MEMORY[0x20F324260](v154, -1, -1);

      v167 = v229;
    }

    else
    {

      sub_20D7E3944(v151, &qword_27C838E48, &qword_20D977670);
      v167 = v229;
      v168 = *(v229 + 8);
      v168(v150, v58);
      v168(v149, v58);
      v169 = v227;
      v164 = v218;
    }

    v183 = v215;
    sub_20D7F4D58(v123, v215 + v228);
    v184 = v216;
    v185 = *(v167 + 32);
    v185(v183 + *(v216 + 20), v219, v58);
    v185(v183 + *(v184 + 24), v220, v58);
    *(v183 + v225) = v164;
    v186 = sub_20D8865C0(&qword_281126E00, type metadata accessor for RectangularLockEnergyForecastView, &protocol conformance descriptor for RectangularLockEnergyForecastView);
    v187 = v201;
    v188 = v226;
    sub_20D9746C8();
    sub_20D885C20(v183, type metadata accessor for RectangularLockEnergyForecastView);
    v189 = v221;
    sub_20D974298();
    sub_20D974C48();
    v235 = v184;
    v236 = v186;
    v190 = swift_getOpaqueTypeConformance2();
    v191 = MEMORY[0x277CE1410];
    v192 = MEMORY[0x277CE1428];
    v193 = v204;
    sub_20D9747C8();
    (*(v222 + 8))(v189, v223);
    (*(v203 + 8))(v187, v193);
    v235 = v193;
    v236 = v192;
    v237 = v190;
    v238 = v191;
    swift_getOpaqueTypeConformance2();
    v194 = sub_20D974B08();
    result = sub_20D7E3944(v188, &qword_27C838B78, &qword_20D97A5A0);
    *v169 = v194;
  }

  else
  {
    v121 = sub_20D974B08();
    sub_20D7E3944(v226, &qword_27C838B78, &qword_20D97A5A0);
    *v227 = v121;
    return (*(v38 + 8))(v42, v37);
  }

  return result;
}

uint64_t static GridForecastWidgetCommon.widgetConfigurationDisplayName()()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastWidgetCommon.widgetDescription()()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t GridForecastEntryCommon.forecastUIProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GridForecastEntryCommon(0) + 20);

  return sub_20D7E7080(v3, a1);
}

uint64_t GridForecastEntryCommon.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastEntryCommon(0) + 24);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GridForecastEntryCommon.widgetStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastEntryCommon(0) + 28);
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GridForecastEntryCommon.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25[-v8];
  v10 = sub_20D972998();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for GridForecastSnapshot(0);
  v14 = *(type metadata accessor for GridForecastEntryCommon(0) + 24);
  v15 = sub_20D9729C8();
  if (!v15)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  v16 = v15;
  MEMORY[0x28223BE20](v15);
  *&v25[-16] = v2 + v14;
  sub_20D871194(sub_20D8730BC, v16, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_6:
    v19 = &qword_27C838E48;
    v20 = &qword_20D977670;
    v21 = v9;
    goto LABEL_7;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_20D972978();
  v17 = sub_20D972628();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) != 1)
  {
    sub_20D972458();
    (*(v18 + 8))(v6, v17);
    sub_20D974EF8();
    (*(v11 + 8))(v13, v10);
    v22 = 0;
    goto LABEL_8;
  }

  (*(v11 + 8))(v13, v10);
  v19 = &qword_27C8389E8;
  v20 = &qword_20D9768D0;
  v21 = v6;
LABEL_7:
  sub_20D7E3944(v21, v19, v20);
  v22 = 1;
LABEL_8:
  v23 = sub_20D974F08();
  return (*(*(v23 - 8) + 56))(a1, v22, 1, v23);
}

uint64_t GridForecastEntryCommon.description.getter()
{
  sub_20D975678();
  MEMORY[0x20F323340](0xD000000000000019, 0x800000020D987660);
  type metadata accessor for GridForecastEntryCommon(0);
  v0 = sub_20D9725F8();
  MEMORY[0x20F323340](v0);

  MEMORY[0x20F323340](0xD000000000000018, 0x800000020D9877B0);
  v1 = GridForecastSnapshot.description.getter();
  MEMORY[0x20F323340](v1);

  MEMORY[0x20F323340](0xD000000000000017, 0x800000020D9877D0);
  v2 = sub_20D9725F8();
  MEMORY[0x20F323340](v2);

  return 0;
}

uint64_t GridForecastEntryCommon.init(forecastSnapshot:forecastUIProvider:date:widgetStartDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_20D885C80(a1, a5, type metadata accessor for GridForecastSnapshot);
  v9 = type metadata accessor for GridForecastEntryCommon(0);
  sub_20D7EB734(a2, a5 + v9[5]);
  v10 = v9[6];
  v11 = sub_20D972628();
  v12 = *(*(v11 - 8) + 32);
  v12(a5 + v10, a3, v11);
  result = (v12)(a5 + v9[7], a4, v11);
  *(a5 + v9[8]) = 0;
  v14 = (a5 + v9[9]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

uint64_t sub_20D885BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D885C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D885C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D885D08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v5 = type metadata accessor for GridForecastSnapshotType(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v74 = a1;
  sub_20D885BB8(a1, &v68 - v12, type metadata accessor for GridForecastSnapshotType);
  if (qword_2811250C0 != -1)
  {
    swift_once();
  }

  v14 = 0x800000020D984910;
  v15 = sub_20D9734F8();
  v16 = __swift_project_value_buffer(v15, qword_2811250C8);
  sub_20D885BB8(v13, v11, type metadata accessor for GridForecastSnapshotType);
  v73 = v16;
  v17 = sub_20D9734D8();
  v18 = sub_20D975478();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v69 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v70 = 0x800000020D984910;
    v22 = v13;
    v23 = v21;
    v75 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D987810, &v75);
    *(v20 + 12) = 2080;
    v24 = GridForecastSnapshotType.description.getter();
    v26 = v25;
    sub_20D885C20(v11, type metadata accessor for GridForecastSnapshotType);
    v27 = sub_20D7F4DC8(v24, v26, &v75);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_20D7C9000, v17, v18, "%s creating launchURL with snapshot type: %s", v20, 0x16u);
    swift_arrayDestroy();
    v28 = v23;
    v13 = v22;
    v14 = v70;
    MEMORY[0x20F324260](v28, -1, -1);
    v29 = v20;
    a3 = v69;
    MEMORY[0x20F324260](v29, -1, -1);
  }

  else
  {

    sub_20D885C20(v11, type metadata accessor for GridForecastSnapshotType);
  }

  v30 = sub_20D972F28();
  sub_20D885BB8(v13, v8, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = *v8;
    v72 = v13;
    if (v41)
    {

      v74 = v41;
    }

    else
    {
      v74 = v30;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v74 = v30;
    v72 = v13;
    sub_20D885C20(v8, type metadata accessor for GridForecastSnapshotType);
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_20D97A6F0;
    *(v48 + 56) = MEMORY[0x277D837D0];
    v49 = sub_20D84E340();
    *(v48 + 64) = v49;
    *(v48 + 32) = 0xD000000000000039;
    *(v48 + 40) = v14;
    v50 = v14;
    v51 = v74;
    [v74 coordinate];
    v52 = MEMORY[0x277D839F8];
    v53 = MEMORY[0x277D83A80];
    *(v48 + 96) = MEMORY[0x277D839F8];
    *(v48 + 104) = v53;
    *(v48 + 72) = v54;
    [v51 coordinate];
    *(v48 + 136) = v52;
    *(v48 + 144) = v53;
    *(v48 + 112) = v55;
    sub_20D9750C8();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_20D979110;
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = v49;
    *(v56 + 32) = 0xD000000000000039;
    *(v56 + 40) = v50;
    v38 = sub_20D9750C8();
    v40 = v57;

    v13 = v72;
    goto LABEL_19;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
  sub_20D7E3944(v8 + *(v32 + 64), &qword_27C8389F8, &qword_20D978460);
  v33 = v74[*(type metadata accessor for GridForecastSnapshot(0) + 36)];
  if (v33 != 12 || !a3)
  {
    v42 = sub_20D9734D8();
    v43 = sub_20D975458();
    v44 = os_log_type_enabled(v42, v43);
    if (v33 == 12)
    {
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v75 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D987810, &v75);
        _os_log_impl(&dword_20D7C9000, v42, v43, "%s launchURL error: No Home found", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x20F324260](v46, -1, -1);
        v47 = v45;
LABEL_24:
        MEMORY[0x20F324260](v47, -1, -1);
      }
    }

    else if (v44)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v75 = v65;
      *v63 = 136315394;
      *(v63 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D987810, &v75);
      *(v63 + 12) = 2112;
      sub_20D84D14C();
      swift_allocError();
      *v66 = v33;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v67;
      *v64 = v67;
      _os_log_impl(&dword_20D7C9000, v42, v43, "%s launchURL found error: %@", v63, 0x16u);
      sub_20D7E3944(v64, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F324260](v65, -1, -1);
      v47 = v63;
      goto LABEL_24;
    }

    sub_20D885C20(v13, type metadata accessor for GridForecastSnapshotType);
    return 0xD000000000000039;
  }

  v74 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20D977210;
  v35 = MEMORY[0x277D837D0];
  *(v34 + 56) = MEMORY[0x277D837D0];
  v36 = sub_20D84E340();
  *(v34 + 32) = 0xD000000000000039;
  *(v34 + 40) = v14;
  *(v34 + 96) = v35;
  *(v34 + 104) = v36;
  v37 = v71;
  *(v34 + 64) = v36;
  *(v34 + 72) = v37;
  *(v34 + 80) = a3;

  v38 = sub_20D9750C8();
  v40 = v39;
LABEL_19:

  v58 = sub_20D9734D8();
  v59 = sub_20D975448();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v75 = v61;
    *v60 = 136315394;
    *(v60 + 4) = sub_20D7F4DC8(0xD000000000000024, 0x800000020D987810, &v75);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_20D7F4DC8(v38, v40, &v75);
    _os_log_impl(&dword_20D7C9000, v58, v59, "%s launchURL is: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v61, -1, -1);
    MEMORY[0x20F324260](v60, -1, -1);
  }

  sub_20D885C20(v13, type metadata accessor for GridForecastSnapshotType);
  return v38;
}

uint64_t sub_20D8865C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20D88665C(uint64_t a1)
{
  sub_20D974EA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GridForecastEntryCommon(319);
    if (v2 <= 0x3F)
    {
      sub_20D856390();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D886720(uint64_t a1)
{
  type metadata accessor for GridForecastSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_20D7E62AC();
    if (v2 <= 0x3F)
    {
      sub_20D972628();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D886954()
{
  v0 = sub_20D9734F8();
  __swift_allocate_value_buffer(v0, qword_27C840CF8);
  __swift_project_value_buffer(v0, qword_27C840CF8);
  return sub_20D9734E8();
}

uint64_t sub_20D886B04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_20D9734F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_20D9734E8();
}

uint64_t sub_20D886BB4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_20D886C58()
{
  v0 = sub_20D973478();
  __swift_allocate_value_buffer(v0, qword_27C839AA8);
  __swift_project_value_buffer(v0, qword_27C839AA8);
  return sub_20D973468();
}

uint64_t sub_20D886CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839DE0, &unk_20D97A900);
  v0 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20D97A8D0;
  v4 = v3 + v2;
  if (qword_27C8384D8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27C839B30);
  sub_20D815A38(v5, v4);
  if (qword_27C8384F0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27C839B78);
  sub_20D815A38(v6, v4 + v1);
  if (qword_27C838508 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27C839BC0);
  sub_20D815A38(v7, v4 + 2 * v1);
  if (qword_27C838520 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27C839C08);
  sub_20D815A38(v8, v4 + 3 * v1);
  if (qword_27C838538 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27C839C50);
  sub_20D815A38(v9, v4 + 4 * v1);
  if (qword_27C838550 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27C839C98);
  sub_20D815A38(v10, v4 + 5 * v1);
  if (qword_27C838570 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_27C839CE8);
  result = sub_20D815A38(v11, v4 + 6 * v1);
  qword_27C839AC0 = v3;
  return result;
}

double static UtilityRateInfoSnapshot.mocks.getter()
{
  if (qword_27C8384A8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_20D887028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_20D9726F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D9727D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v9, qword_27C839AE0);
  v12 = __swift_project_value_buffer(v7, qword_27C839AE0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9830], v3);
  sub_20D972708();
  (*(v4 + 8))(v6, v3);
  sub_20D9727E8();
  v13 = sub_20D972838();
  result = (*(*(v13 - 8) + 48))(v2, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_20D972798();
    return (*(v8 + 32))(v12, v11, v7);
  }

  return result;
}

uint64_t sub_20D8872C0()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D9727D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_27C839B10);
  __swift_project_value_buffer(v0, qword_27C839B10);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C839AE0);
  (*(v5 + 16))(v7, v8, v4);
  if (qword_27C8384C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27C839AF8);
  (*(v1 + 16))(v3, v9, v0);
  sub_20D972718();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20D887890()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_20D971EA8();
  __swift_allocate_value_buffer(v6, qword_27C839C20);
  __swift_project_value_buffer(v6, qword_27C839C20);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9727D8();
  v8 = __swift_project_value_buffer(v7, qword_27C839AE0);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v5, v8, v7);
  (*(v9 + 56))(v5, 0, 1, v7);
  v10 = sub_20D972838();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  return sub_20D971E98();
}

uint64_t sub_20D887BF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_20D971EA8();
  __swift_allocate_value_buffer(v6, qword_27C839C68);
  __swift_project_value_buffer(v6, qword_27C839C68);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9727D8();
  v8 = __swift_project_value_buffer(v7, qword_27C839AE0);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v5, v8, v7);
  (*(v9 + 56))(v5, 0, 1, v7);
  v10 = sub_20D972838();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  return sub_20D971E98();
}

uint64_t sub_20D887F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_20D971EA8();
  __swift_allocate_value_buffer(v6, qword_27C839CB0);
  __swift_project_value_buffer(v6, qword_27C839CB0);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v7 = sub_20D9727D8();
  v8 = __swift_project_value_buffer(v7, qword_27C839AE0);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v5, v8, v7);
  (*(v9 + 56))(v5, 0, 1, v7);
  v10 = sub_20D972838();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  return sub_20D971E98();
}

uint64_t sub_20D88826C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_20D888310()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C838560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27C839CC8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_20D88B7E8(v3);
  result = (*(v1 + 8))(v3, v0);
  qword_27C839CE0 = v5;
  return result;
}

uint64_t sub_20D88843C()
{
  v0 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20D972838();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v53 - v14;
  __swift_allocate_value_buffer(v0, qword_27C839CE8);
  v62 = v0;
  v58 = __swift_project_value_buffer(v0, qword_27C839CE8);
  if (qword_27C838568 != -1)
  {
    swift_once();
  }

  v15 = v3;
  v16 = qword_27C838560;
  v61 = qword_27C839CE0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_27C839CC8);
  v59 = v11;
  v18 = *(v11 + 16);
  v19 = v64;
  v18(v64, v17, v10);
  sub_20D9727E8();
  if ((*(v4 + 48))(v9, 1, v15) != 1)
  {
    v56 = v4;
    v20 = *(v4 + 16);
    v54 = v9;
    v20(v6, v9, v15);
    v21 = v63;
    v18(v63, v19, v10);
    v22 = v6;
    v60 = v18;
    v23 = v62;
    v24 = v62[10];
    *(v2 + v24) = 7;
    v25 = v23[11];
    *(v2 + v25) = 6;
    *v2 = xmmword_20D97A8E0;
    v26 = v2 + v23[9];
    v55 = v22;
    v57 = v15;
    (v20)(v26);
    v27 = v2 + v23[5];
    v53 = v10;
    v60(v27, v21, v10);
    v28 = (v2 + v23[8]);
    *v28 = 12613;
    v28[1] = 0xE200000000000000;
    *(v2 + v24) = 2;
    *(v2 + v25) = 6;
    v29 = sub_20D817948(v61);

    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = sub_20D815D18(*(v29 + 16), 0);
      v32 = *(sub_20D973158() - 8);
      v33 = sub_20D81754C(&v65, &v31[(*(v32 + 80) + 32) & ~*(v32 + 80)], v30, v29);
      v34 = v65;

      sub_20D817AE4(v34);
      if (v33 == v30)
      {
LABEL_10:
        v65 = v31;
        sub_20D815E14(&v65);
        v35 = v55;
        v36 = v56;
        v37 = v54;

        v38 = v65;
        v39 = v62;
        *(v2 + v62[12]) = v65;
        v40 = v39[6];

        v41 = v63;
        sub_20D972F88();
        v42 = v39[7];
        sub_20D9730F8();
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v2 + v40, v2 + v42, v38, v35);
        *(v2 + v39[13]) = v43;
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v41, v2 + v42, v38, v35);
        v45 = v44;

        v46 = *(v59 + 8);
        v47 = v41;
        v48 = v53;
        v46(v47, v53);
        v49 = *(v36 + 8);
        v50 = v35;
        v51 = v57;
        v49(v50, v57);
        v46(v64, v48);
        v49(v37, v51);
        *(v2 + v39[14]) = v45;
        return sub_20D817AEC(v2, v58);
      }

      __break(1u);
    }

    v31 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D888A3C()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D9727D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_27C839D00);
  __swift_project_value_buffer(v0, qword_27C839D00);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27C839AE0);
  (*(v5 + 16))(v7, v8, v4);
  sub_20D9725C8();
  sub_20D972718();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20D888C58(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v36 = a4;
  v7 = sub_20D9727D8();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20D9727B8();
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v37 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v38 = &v32 - v20;
  if (*a2 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, a3);
  v22 = *(v14 + 16);
  v22(v38, v21, v13);
  v22(v37, v21, v13);
  (*(v10 + 104))(v12, *MEMORY[0x277CC9998], v39);
  v34 = v13;
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v7, qword_27C839AE0);
  v24 = v35;
  v32 = *(v35 + 16);
  v33 = v23;
  v32(v9, v23, v7);
  v25 = v37;
  sub_20D9730D8();
  v26 = *(v24 + 8);
  v26(v9, v7);
  (*(v10 + 8))(v12, v39);
  v27 = *(v14 + 8);
  v28 = v34;
  v27(v25, v34);
  v32(v9, v33, v7);
  v29 = v38;
  v30 = sub_20D88AE10(v38, v19, v9);
  v26(v9, v7);
  v27(v19, v28);
  result = (v27)(v29, v28);
  *v36 = v30;
  return result;
}

uint64_t sub_20D889090(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v65 = a5;
  v63 = a3;
  v64 = a4;
  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972838();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  __swift_allocate_value_buffer(v6, a2);
  v67 = v6;
  v60 = __swift_project_value_buffer(v6, a2);
  if (qword_27C8384D0 != -1)
  {
    swift_once();
  }

  v62 = qword_27C839B28;

  sub_20D9725C8();
  sub_20D9727E8();
  if ((*(v9 + 48))(v14, 1, v8) != 1)
  {
    v58 = v9;
    v61 = *(v9 + 16);
    v56 = v14;
    v61(v11, v14, v8);
    v54 = v20;
    v55 = v16;
    v21 = v16[2];
    v22 = v68;
    v21(v68, v20, v15);
    v23 = v11;
    v25 = v66;
    v24 = v67;
    v26 = v67[10];
    v66[v26] = 7;
    v27 = v24[11];
    *(v25 + v27) = 6;
    *v25 = xmmword_20D97A8E0;
    v28 = v25 + v24[9];
    v57 = v23;
    v59 = v8;
    (v61)(v28);
    v29 = v25 + v24[5];
    v61 = v15;
    v21(v29, v22, v15);
    v30 = (v25 + v24[8]);
    v31 = v64;
    *v30 = v63;
    v30[1] = v31;
    *(v25 + v26) = v65;
    *(v25 + v27) = 6;
    v32 = sub_20D817948(v62);

    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = sub_20D815D18(*(v32 + 16), 0);
      v35 = *(sub_20D973158() - 8);
      v36 = sub_20D81754C(&v69, &v34[(*(v35 + 80) + 32) & ~*(v35 + 80)], v33, v32);
      v37 = v69;

      sub_20D817AE4(v37);
      if (v36 == v33)
      {
LABEL_8:
        v69 = v34;
        sub_20D815E14(&v69);
        v38 = v61;

        v39 = v69;
        v40 = v66;
        v41 = v67;
        *&v66[v67[12]] = v69;
        v42 = v41[6];

        v43 = v68;
        v44 = v57;
        sub_20D972F88();
        v45 = v41[7];
        sub_20D9730F8();
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v40 + v42, v40 + v45, v39, v44);
        *(v40 + v41[13]) = v46;
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v43, v40 + v45, v39, v44);
        v48 = v47;

        v49 = v55[1];
        v49(v43, v38);
        v50 = *(v58 + 8);
        v51 = v44;
        v52 = v59;
        v50(v51, v59);
        v49(v54, v38);
        v50(v56, v52);
        *(v40 + v41[14]) = v48;
        return sub_20D817AEC(v40, v60);
      }

      __break(1u);
    }

    v34 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D889680()
{
  v0 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v53 = sub_20D972838();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972628();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  __swift_allocate_value_buffer(v0, qword_27C839D68);
  v51 = v0;
  v49 = __swift_project_value_buffer(v0, qword_27C839D68);
  if (qword_27C838580 != -1)
  {
    swift_once();
  }

  v50 = qword_27C839D18;

  sub_20D9725C8();
  sub_20D9727F8();
  if ((*(v6 + 48))(v5, 1, v53) != 1)
  {
    (*(v6 + 32))(v8, v5, v53);
    v44 = v14;
    v45 = v10;
    v15 = v6;
    v16 = *(v10 + 16);
    v17 = v52;
    v16(v52, v14, v9);
    v18 = v51;
    v19 = v51[10];
    v20 = v8;
    *(v2 + v19) = 7;
    v21 = v18[11];
    *(v2 + v21) = 6;
    *v2 = xmmword_20D97A8E0;
    v22 = v18[9];
    v47 = v20;
    v48 = v15;
    (*(v15 + 16))(v2 + v22);
    v23 = v2 + v18[5];
    v46 = v9;
    v16(v23, v17, v9);
    v24 = (v2 + v18[8]);
    *v24 = 0x432D554F542D45;
    v24[1] = 0xE700000000000000;
    *(v2 + v19) = 7;
    *(v2 + v21) = 3;
    v25 = sub_20D817948(v50);

    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_20D815D18(*(v25 + 16), 0);
      v28 = *(sub_20D973158() - 8);
      v29 = sub_20D81754C(&v54, &v27[(*(v28 + 80) + 32) & ~*(v28 + 80)], v26, v25);
      v30 = v54;

      sub_20D817AE4(v30);
      if (v29 == v26)
      {
LABEL_8:
        v54 = v27;
        sub_20D815E14(&v54);
        v31 = v47;
        v32 = v45;

        v33 = v54;
        v34 = v51;
        *(v2 + v51[12]) = v54;
        v35 = v34[6];

        v36 = v52;
        sub_20D972F88();
        v37 = v34[7];
        sub_20D9730F8();
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v2 + v35, v2 + v37, v33, v31);
        *(v2 + v34[13]) = v38;
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v36, v2 + v37, v33, v31);
        v40 = v39;

        v41 = *(v32 + 8);
        v42 = v46;
        v41(v36, v46);
        (*(v48 + 8))(v31, v53);
        v41(v44, v42);
        *(v2 + v34[14]) = v40;
        return sub_20D817AEC(v2, v49);
      }

      __break(1u);
    }

    v27 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D889C14(uint64_t a1, uint64_t *a2, int a3)
{
  v63 = a3;
  v4 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v4);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D972838();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  __swift_allocate_value_buffer(v4, a2);
  v65 = v4;
  v60 = __swift_project_value_buffer(v4, a2);
  if (qword_27C838580 != -1)
  {
    swift_once();
  }

  v62 = qword_27C839D18;

  sub_20D9725C8();
  sub_20D9727E8();
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    v58 = v7;
    v19 = *(v7 + 16);
    v56 = v12;
    v19(v9, v12, v6);
    v53 = v18;
    v54 = v14;
    v20 = v14[2];
    v21 = v66;
    v20(v66, v18, v13);
    v22 = v9;
    v24 = v64;
    v23 = v65;
    v61 = v65[10];
    v64[v61] = 7;
    v25 = v23[11];
    *(v24 + v25) = 6;
    *v24 = xmmword_20D97A8E0;
    v26 = v24 + v23[9];
    v57 = v22;
    v59 = v6;
    (v19)(v26);
    v27 = v24 + v23[5];
    v55 = v13;
    v20(v27, v21, v13);
    v28 = (v24 + v23[8]);
    *v28 = 0x432D554F542D45;
    v28[1] = 0xE700000000000000;
    v29 = v62;
    *(v24 + v61) = v63;
    *(v24 + v25) = 6;
    v30 = sub_20D817948(v29);

    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = sub_20D815D18(*(v30 + 16), 0);
      v33 = *(sub_20D973158() - 8);
      v34 = sub_20D81754C(&v67, &v32[(*(v33 + 80) + 32) & ~*(v33 + 80)], v31, v30);
      v35 = v67;

      sub_20D817AE4(v35);
      if (v34 == v31)
      {
LABEL_8:
        v67 = v32;
        sub_20D815E14(&v67);
        v36 = v55;

        v37 = v67;
        v38 = v64;
        v39 = v65;
        *&v64[v65[12]] = v67;
        v40 = v39[6];

        v41 = v66;
        v42 = v57;
        sub_20D972F88();
        v43 = v39[7];
        sub_20D9730F8();
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v38 + v40, v38 + v43, v37, v42);
        *(v38 + v39[13]) = v44;
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v41, v38 + v43, v37, v42);
        v46 = v45;

        v47 = v54[1];
        v47(v41, v36);
        v48 = *(v58 + 8);
        v49 = v42;
        v50 = v59;
        v48(v49, v59);
        v47(v53, v36);
        v48(v56, v50);
        *(v38 + v39[14]) = v46;
        return sub_20D817AEC(v38, v60);
      }

      __break(1u);
    }

    v32 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D88A1D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_20D971EA8();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9727D8();
  v14 = __swift_project_value_buffer(v13, qword_27C839AE0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  v16 = sub_20D972838();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  return sub_20D971E98();
}

uint64_t sub_20D88A48C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v7 = sub_20D971EA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9727D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  v18 = sub_20D972628();
  __swift_allocate_value_buffer(v18, a2);
  v19 = __swift_project_value_buffer(v18, a2);
  if (qword_27C8384B8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_27C839AE0);
  (*(v12 + 16))(v14, v20, v11);
  if (*a3 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, v25);
  (*(v8 + 16))(v10, v21, v7);
  sub_20D972748();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  v22 = *(v18 - 8);
  result = (*(v22 + 48))(v17, 1, v18);
  if (result != 1)
  {
    return (*(v22 + 32))(v19, v17, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D88A7C0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, char *, uint64_t), uint64_t a5)
{
  v63 = a5;
  v65 = a4;
  v7 = type metadata accessor for UtilityRateInfoSnapshot(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_20D972838();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_20D972628();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v68 = &v57 - v21;
  __swift_allocate_value_buffer(v7, a2);
  v66 = v7;
  v62 = __swift_project_value_buffer(v7, a2);
  if (qword_27C8384D0 != -1)
  {
    swift_once();
  }

  v22 = *a3;
  v64 = qword_27C839B28;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, v65);
  v63 = v18;
  v24 = *(v18 + 16);
  v25 = v68;
  v24(v68, v23, v17);
  sub_20D9727E8();
  if ((*(v11 + 48))(v16, 1, v10) != 1)
  {
    v60 = v11;
    v26 = *(v11 + 16);
    v58 = v16;
    v26(v13);
    v27 = v67;
    v24(v67, v25, v17);
    v65 = v24;
    v28 = v66;
    v29 = v66[10];
    *(v9 + v29) = 7;
    v30 = v13;
    v31 = v28[11];
    *(v9 + v31) = 6;
    *v9 = xmmword_20D97A8E0;
    v32 = v9 + v28[9];
    v59 = v30;
    v61 = v10;
    v26(v32);
    v33 = v9 + v28[5];
    v57 = v17;
    v65(v33, v27, v17);
    v34 = (v9 + v28[8]);
    *v34 = 0x432D554F542D45;
    v34[1] = 0xE700000000000000;
    *(v9 + v29) = 1;
    *(v9 + v31) = 6;
    v35 = sub_20D817948(v64);

    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = sub_20D815D18(*(v35 + 16), 0);
      v38 = *(sub_20D973158() - 8);
      v39 = sub_20D81754C(&v69, &v37[(*(v38 + 80) + 32) & ~*(v38 + 80)], v36, v35);
      v40 = v69;

      sub_20D817AE4(v40);
      if (v39 == v36)
      {
LABEL_10:
        v69 = v37;
        sub_20D815E14(&v69);
        v42 = v60;
        v41 = v61;
        v43 = v59;

        v44 = v69;
        v45 = v66;
        *(v9 + v66[12]) = v69;
        v46 = v45[6];

        v47 = v67;
        sub_20D972F88();
        v48 = v45[7];
        sub_20D9730F8();
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v9 + v46, v9 + v48, v44, v43);
        *(v9 + v45[13]) = v49;
        _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(v47, v9 + v48, v44, v43);
        v51 = v50;

        v52 = *(v63 + 8);
        v53 = v47;
        v54 = v57;
        v52(v53, v57);
        v55 = *(v42 + 8);
        v55(v43, v41);
        v52(v68, v54);
        v55(v58, v41);
        *(v9 + v45[14]) = v51;
        return sub_20D817AEC(v9, v62);
      }

      __break(1u);
    }

    v37 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20D88ADB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UtilityRateInfoSnapshot(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_20D815A38(v7, a4);
}

void *sub_20D88AE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v87 = a1;
  v88 = sub_20D9727B8();
  v82 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v72 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;
  v68 = sub_20D971EA8();
  v85 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20D973158();
  v64 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v83 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v12 = sub_20D972628();
  *&v74 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v80 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  v17 = sub_20D972838();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20D972488();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972788();
  sub_20D972FD8();
  v23 = v17;
  v24 = v12;
  v25 = v74;
  (*(v18 + 8))(v20, v23);
  v26 = v16;
  (*(v25 + 16))(v16, v87, v24);
  v62 = v22;
  sub_20D972478();
  sub_20D973138();
  v27 = sub_20D8D43B8(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_20D8D43B8((v28 > 1), v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = *(v64 + 32);
  v31 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v84 = v27;
  v60 = v31;
  v59 = *(v64 + 72);
  v64 += 32;
  v61 = v30;
  v30(v27 + v31 + v59 * v29, v11, v63);
  v32 = (v25 + 8);
  v78 = *MEMORY[0x277CC9988];
  v87 = v82 + 104;
  v77 = *MEMORY[0x277CC9998];
  v76 = *MEMORY[0x277CC9968];
  v86 = *MEMORY[0x277CC9980];
  v75 = *MEMORY[0x277CC99A0];
  v69 = (v25 + 48);
  v70 = (v82 + 8);
  v66 = (v85 + 8);
  v65 = (v25 + 32);
  v74 = xmmword_20D97A8F0;
  v71 = v24;
  v67 = (v25 + 8);
  v73 = v26;
  while (1)
  {
    v33 = v80;
    sub_20D973108();
    sub_20D88B790();
    v34 = sub_20D974FA8();
    v35 = *v32;
    (*v32)(v33, v24);
    if (v34)
    {
      v35(v26, v24);
      (*(v57 + 8))(v62, v58);
      return v84;
    }

    if ((v85 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CA70, &unk_20D97CC90), v36 = v82, v37 = *(v82 + 72), v38 = (*(v82 + 80) + 32) & ~*(v82 + 80), v39 = swift_allocObject(), *(v39 + 16) = v74, v40 = v39 + v38, v41 = *(v36 + 104), v42 = v88, v41(v40, v78, v88), v41(v40 + v37, v77, v42), v41(v40 + 2 * v37, v76, v42), v41(v40 + 3 * v37, v86, v42), v41(v40 + 4 * v37, v75, v42), sub_20D84CE2C(v39), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), v43 = v79, v44 = v73, sub_20D972728(), , v45 = sub_20D971E78(), (v46) || v45 != 16) && ((v47 = sub_20D971E78(), (v48) || v47 != 21))
    {
      v26 = v44;
    }

    else
    {
      result = sub_20D971E78();
      if (v50)
      {
        goto LABEL_18;
      }

      v26 = v44;
      sub_20D972478();
      sub_20D973138();
      v51 = v84;
      v53 = v84[2];
      v52 = v84[3];
      if (v53 >= v52 >> 1)
      {
        v51 = sub_20D8D43B8((v52 > 1), v53 + 1, 1, v84);
      }

      v51[2] = v53 + 1;
      v84 = v51;
      v61(v51 + v60 + v53 * v59, v83, v63);
    }

    v54 = v72;
    v55 = v88;
    v41(v72, v86, v88);
    sub_20D972758();
    (*v70)(v54, v55);
    v24 = v71;
    result = (*v69)(v6, 1, v71);
    if (result == 1)
    {
      break;
    }

    (*v66)(v43, v68);
    v32 = v67;
    v85(v26, v24);
    (*v65)(v26, v6, v24);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_20D88B790()
{
  result = qword_281126E30;
  if (!qword_281126E30)
  {
    sub_20D972628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126E30);
  }

  return result;
}

void *sub_20D88B7E8(uint64_t a1)
{
  v1 = sub_20D973158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D972838();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972488();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972828();
  sub_20D972FD8();
  (*(v6 + 8))(v8, v5);
  sub_20D972478();
  (*(v10 + 8))(v12, v9);
  sub_20D973138();
  v13 = sub_20D8D43B8(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_20D8D43B8((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  v16 = v13;
  (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v4, v1);
  return v16;
}

uint64_t sub_20D88BAA8()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistoricalUsageIntervalModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_20D9725C8();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate, v3, v0);
  result = sub_20D972888();
  qword_27C840D10 = v4;
  return result;
}

uint64_t sub_20D88BBA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_20D88CFE4(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  v4 = sub_20D972628();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_20D88BCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D88CFE4(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  v5 = sub_20D972628();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_20D88BD98(uint64_t a1)
{
  v2 = sub_20D972628();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_20D88BE64(v4);
}

uint64_t sub_20D88BE64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_20D88CFE4(&qword_281127740, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v14[0] = a1;
  LOBYTE(a1) = sub_20D974FD8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_20D88CFE4(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
    sub_20D972848();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_20D88C104(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t sub_20D88C220(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageSnapshot(0);
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v43 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_20D972AF8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1 + *(v2 + 52), v15);
  v46 = v16;
  v19 = *(v16 + 88);
  v44 = v15;
  result = v19(v18, v15);
  if (result == *MEMORY[0x277D075B0])
  {
    sub_20D971D78();
    swift_getKeyPath();
    v21 = v49;
    v50[0] = v49;
    sub_20D88CFE4(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
    sub_20D972858();

    v22 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
    swift_beginAccess();
    v23 = *(v5 + 16);
    v23(v12, v21 + v22, v4);
    LOBYTE(v22) = sub_20D972548();
    v24 = *(v5 + 8);
    v24(v12, v4);
    if (v22)
    {
      v23(v12, v14, v4);
      sub_20D88BE64(v12);
    }

    return (v24)(v14, v4);
  }

  else
  {
    v25 = v49;
    if (result != *MEMORY[0x277D075B8])
    {
      if (result == *MEMORY[0x277D075C8] || result == *MEMORY[0x277D075D0] || result == *MEMORY[0x277D075C0])
      {
        sub_20D971D48();
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
        sub_20D972568();
        swift_getKeyPath();
        v50[0] = v25;
        sub_20D88CFE4(&qword_27C839DF0, type metadata accessor for HistoricalUsageIntervalModel, &protocol conformance descriptor for HistoricalUsageIntervalModel);
        sub_20D972858();

        v28 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
        swift_beginAccess();
        v29 = *(v5 + 16);
        v30 = v4;
        v31 = v47;
        v29(v12, v25 + v28, v30);
        LOBYTE(v28) = sub_20D972538();
        v32 = *(v5 + 8);
        v32(v12, v30);
        if (v28)
        {
          v29(v12, v31, v30);
          sub_20D88BE64(v12);
        }

        v32(v31, v30);
        return (v32)(v48, v30);
      }

      else
      {
        if (qword_281125088 != -1)
        {
          swift_once();
        }

        v33 = sub_20D9734F8();
        __swift_project_value_buffer(v33, qword_28112AB78);
        v34 = v45;
        sub_20D7FCF94(a1, v45);
        v35 = sub_20D9734D8();
        v36 = sub_20D975478();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v50[0] = v38;
          *v37 = 136315138;
          v39 = sub_20D972AE8();
          v41 = v40;
          sub_20D7FEF04(v34);
          v42 = sub_20D7F4DC8(v39, v41, v50);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_20D7C9000, v35, v36, "Unknown interval: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x20F324260](v38, -1, -1);
          MEMORY[0x20F324260](v37, -1, -1);
        }

        else
        {

          sub_20D7FEF04(v34);
        }

        return (*(v46 + 8))(v18, v44);
      }
    }
  }

  return result;
}

uint64_t sub_20D88C8A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_20D9727B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  if ((*(v1 + 16) & 1) == 0)
  {
    v33 = v16;
    v36 = v15;
    v37 = v5;
    v38 = result;
    v39 = v1;
    v19 = type metadata accessor for HistoricalUsageSnapshot(0);
    sub_20D971D78();
    v20 = a1 + *(v19 + 52);
    v21 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
    v22 = *(v7 + 104);
    v22(v9, *MEMORY[0x277CC99B8], v6);
    v34 = v21;
    v35 = v20;
    v23 = sub_20D9727C8();
    v24 = *(v7 + 8);
    result = v24(v9, v6);
    if (__OFADD__(v23, 5))
    {
      __break(1u);
    }

    else
    {
      v22(v9, *MEMORY[0x277CC9968], v6);
      v25 = v37;
      sub_20D972758();
      v24(v9, v6);
      v26 = v38;
      if ((*(v11 + 48))(v25, 1, v38) == 1)
      {
        sub_20D7DFFB8(v25);
        v27 = v36;
        (*(v11 + 16))(v36, v18, v26);
        v28 = v39;
        sub_20D88BE64(v27);
        result = (*(v11 + 8))(v18, v26);
      }

      else
      {
        v29 = v33;
        (*(v11 + 32))(v33, v25, v26);
        v30 = v36;
        (*(v11 + 16))(v36, v29, v26);
        v28 = v39;
        sub_20D88BE64(v30);
        v31 = *(v11 + 8);
        v31(v29, v26);
        result = (v31)(v18, v26);
      }

      *(v28 + 16) = 1;
    }
  }

  return result;
}

uint64_t HistoricalUsageIntervalModel.deinit()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t HistoricalUsageIntervalModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_20D88CE08@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HistoricalUsageIntervalModel(0);
  result = sub_20D975688();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for HistoricalUsageIntervalModel(uint64_t a1)
{
  result = qword_27C839E00;
  if (!qword_27C839E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D88CEAC(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    result = sub_20D972898();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20D88CFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D88D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v33 = a6;
  v30 = a4;
  v31 = a5;
  v34 = sub_20D972208();
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20D972248();
  v12 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9726E8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D975058();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20D88E98C(a3) == 1)
  {
    v35 = a1;
    v36 = a2;

    MEMORY[0x20F323340](1701736227, 0xE400000000000000);
  }

  else
  {
  }

  sub_20D975068();
  sub_20D9726B8();
  v21 = v33;
  v22 = v33;
  v23 = v31;

  sub_20D975108(v20, v30, v23, v21, v17, "", 0, 2);
  sub_20D9721E8();
  sub_20D9721F8();
  v24 = sub_20D9725E8();
  v26 = v25;
  (*(v9 + 8))(v11, v34);
  (*(v12 + 8))(v14, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20D979110;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_20D84E340();
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  v28 = sub_20D9750C8();

  return v28;
}

uint64_t sub_20D88D380@<X0>(int a1@<W0>, void *a2@<X8>, double a3@<D0>, uint64_t a4@<D1>)
{
  LODWORD(v143) = a1;
  v120 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E18, &qword_20D97AA10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v118 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v117 = &v98 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E20, &qword_20D97AA18);
  MEMORY[0x28223BE20](v116);
  v115 = &v98 - v10;
  v146 = sub_20D971EE8();
  v126 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v114 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E28, &qword_20D97AA20);
  MEMORY[0x28223BE20](v137);
  v119 = &v98 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E30, &qword_20D97AA28);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v122 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v123 = &v98 - v17;
  MEMORY[0x28223BE20](v16);
  v124 = &v98 - v18;
  v136 = sub_20D972018();
  v19 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_20D971F88();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_20D971F78();
  v111 = *(v144 - 8);
  v22 = MEMORY[0x28223BE20](v144);
  v145 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v134 = &v98 - v24;
  v25 = sub_20D971F98();
  v133 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v132 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E38, &qword_20D97AA30);
  MEMORY[0x28223BE20](v130);
  v139 = &v98 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E40, &qword_20D97AA38);
  v128 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v127 = &v98 - v28;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E48, &qword_20D97AA40);
  v121 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v113 = (&v98 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839980, &qword_20D97A4D0);
  MEMORY[0x28223BE20](v30 - 8);
  v110 = &v98 - v31;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E50, &qword_20D97AA48);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v98 - v32;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E58, &unk_20D97AA50);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v98 - v33;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v102 = &v98 - v34;
  v100 = sub_20D972168();
  v35 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20D9757B8();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20D9726E8();
  MEMORY[0x28223BE20](v41 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v44);
  v112 = &v98 - v48;
  if (qword_281126890 != -1)
  {
    result = swift_once();
  }

  if (!byte_28112ABE0)
  {
    a4 = qword_28112ABD8;
  }

  v131 = v19;
  if (a3 >= 0.0)
  {
    goto LABEL_9;
  }

  v49 = rint(a3 / *&a4);
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v49 < 9.22337204e18)
  {
LABEL_9:
    sub_20D9726A8();
    sub_20D7E6420();
    sub_20D972118();
    (*(v38 + 104))(v40, *MEMORY[0x277D84670], v37);
    v50 = v112;
    MEMORY[0x20F3202E0](v40, a4, 0, v42);
    (*(v38 + 8))(v40, v37);
    v51 = *(v43 + 8);
    v51(v46, v42);
    if (v143)
    {
      v52 = v99;
      sub_20D972158();
      MEMORY[0x20F3202C0](v52, v42);
      (*(v35 + 8))(v52, v100);
      v51(v50, v42);
      (*(v43 + 32))(v50, v46, v42);
    }

    v98 = v51;
    v99 = (v43 + 8);
    v53 = [objc_opt_self() kilowattHours];
    sub_20D88F7E0();
    v54 = v102;
    sub_20D971CA8();
    v55 = v104;
    sub_20D971CE8();
    v56 = v110;
    (*(v43 + 16))(v110, v50, v42);
    v57 = *(v43 + 56);
    v100 = v42;
    v57(v56, 0, 1, v42);
    v58 = v113;
    sub_20D972138();
    v59 = v101;
    sub_20D971C38();
    v121[1](v58, v125);
    sub_20D7E3944(v56, &qword_27C839980, &qword_20D97A4D0);
    (*(v107 + 8))(v55, v109);
    v60 = v127;
    v61 = v105;
    sub_20D971CC8();
    (*(v103 + 8))(v59, v61);
    sub_20D7EBC4C(&qword_281126E80, &qword_27C839E40, &qword_20D97AA38, MEMORY[0x277CC87C8]);
    v62 = v108;
    v63 = v129;
    sub_20D971CF8();
    (v128[1])(v60, v63);
    (*(v106 + 8))(v54, v62);
    v64 = v132;
    sub_20D971FA8();
    v65 = v133;
    v66 = v139;
    (*(v133 + 16))(v139, v64, v25);
    v67 = *(v130 + 36);
    v68 = sub_20D88F880(&qword_281126E48, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
    sub_20D9753B8();
    (*(v65 + 8))(v64, v25);
    ++v138;
    v132 = (v111 + 32);
    v133 = v111 + 16;
    ++v131;
    LODWORD(v130) = *MEMORY[0x277CC8A10];
    v129 = (v126 + 13);
    v128 = (v126 + 7);
    v127 = (v126 + 6);
    v113 = (v126 + 4);
    v121 = (v126 + 1);
    v126 = (v111 + 8);
    v69 = v119;
    v70 = v123;
    v71 = v124;
    v125 = v68;
    v142 = v25;
    v143 = v67;
    while (1)
    {
      v75 = v140;
      sub_20D9753D8();
      sub_20D88F880(&qword_281126E50, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
      v76 = v141;
      v77 = sub_20D974FD8();
      (*v138)(v75, v76);
      if (v77)
      {
        sub_20D7E3944(v66, &qword_27C839E38, &qword_20D97AA30);
        return v98(v112, v100);
      }

      v78 = sub_20D9753F8();
      v79 = v134;
      v80 = v144;
      (*v133)(v134);
      v78(v147, 0);
      sub_20D9753E8();
      (*v132)(v145, v79, v80);
      v81 = v135;
      sub_20D971F58();
      sub_20D971EF8();
      sub_20D88F880(&qword_281126E70, MEMORY[0x277CC8A30], MEMORY[0x277CC8A28]);
      sub_20D972028();
      (*v131)(v81, v136);
      v82 = v146;
      (*v129)(v70, v130, v146);
      (*v128)(v70, 0, 1, v82);
      v83 = *(v137 + 48);
      sub_20D7EB7E8(v71, v69, &qword_27C839E30, &qword_20D97AA28);
      sub_20D7EB7E8(v70, v69 + v83, &qword_27C839E30, &qword_20D97AA28);
      v84 = v71;
      v85 = *v127;
      if ((*v127)(v69, 1, v82) == 1)
      {
        break;
      }

      v87 = v122;
      sub_20D7EB7E8(v69, v122, &qword_27C839E30, &qword_20D97AA28);
      if (v85(v69 + v83, 1, v146) == 1)
      {
        sub_20D7E3944(v70, &qword_27C839E30, &qword_20D97AA28);
        v71 = v124;
        sub_20D7E3944(v124, &qword_27C839E30, &qword_20D97AA28);
        (*v121)(v87, v146);
        goto LABEL_13;
      }

      v88 = v114;
      v89 = v146;
      (*v113)(v114, v69 + v83, v146);
      sub_20D88F880(&qword_281126E78, MEMORY[0x277CC8A18], MEMORY[0x277CC8A20]);
      v90 = sub_20D974FD8();
      v91 = *v121;
      v92 = v88;
      v70 = v123;
      (*v121)(v92, v89);
      sub_20D7E3944(v70, &qword_27C839E30, &qword_20D97AA28);
      v93 = v124;
      sub_20D7E3944(v124, &qword_27C839E30, &qword_20D97AA28);
      v91(v87, v89);
      v71 = v93;
      sub_20D7E3944(v69, &qword_27C839E30, &qword_20D97AA28);
      if (v90)
      {
        goto LABEL_22;
      }

LABEL_15:
      (*v126)(v145, v144);
      v66 = v139;
    }

    sub_20D7E3944(v70, &qword_27C839E30, &qword_20D97AA28);
    sub_20D7E3944(v84, &qword_27C839E30, &qword_20D97AA28);
    v86 = v85(v69 + v83, 1, v146);
    v71 = v84;
    if (v86 == 1)
    {
      sub_20D7E3944(v69, &qword_27C839E30, &qword_20D97AA28);
LABEL_22:
      v94 = v115;
      sub_20D971F68();
      v95 = v117;
      sub_20D974568();
      v96 = sub_20D974578();
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      sub_20D7EBC4C(&qword_281124BD0, &qword_27C839E20, &qword_20D97AA18, MEMORY[0x277D83D30]);
      v97 = sub_20D971FE8();
      sub_20D7EB7E8(v95, v118, &qword_27C839E18, &qword_20D97AA10);
      sub_20D88F82C();
      v70 = v123;
      sub_20D972068();
      v69 = v119;
      sub_20D7E3944(v95, &qword_27C839E18, &qword_20D97AA10);
      v97(v147, 0);
      v71 = v124;
      v72 = v94;
      v73 = &qword_27C839E20;
      v74 = &qword_20D97AA18;
    }

    else
    {
LABEL_13:
      v72 = v69;
      v73 = &qword_27C839E28;
      v74 = &qword_20D97AA20;
    }

    sub_20D7E3944(v72, v73, v74);
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20D88E98C(uint64_t a1)
{
  v42 = a1;
  v1 = sub_20D9727B8();
  v34[4] = *(v1 - 8);
  v34[5] = v1;
  MEMORY[0x28223BE20](v1);
  v34[3] = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E10, &qword_20D97AA08);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v34 - v4;
  v5 = sub_20D972308();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972318();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D972188();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20D972838();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20D9727D8();
  v34[1] = *(v11 - 8);
  v34[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D9726E8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  v21 = sub_20D972408();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v34 - v26;
  v28 = sub_20D972248();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_20D972208();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v34[0] = v13;
  sub_20D972268();
  v30 = v36;
  sub_20D9722F8();
  v31 = v35;
  sub_20D9722D8();
  (*(v39 + 8))(v30, v40);
  sub_20D972278();
  (*(v37 + 8))(v31, v38);
  v32 = *(v22 + 8);
  v40 = v21;
  v32(v25, v21);
  sub_20D9723C8();
  sub_20D9726A8();
  sub_20D85CBD0();
  sub_20D972038();
  sub_20D975598();
  v32(v27, v40);
  return v43;
}

uint64_t sub_20D88F060(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v45 = a1;
  v2 = sub_20D9727B8();
  v35[3] = *(v2 - 8);
  v35[4] = v2;
  MEMORY[0x28223BE20](v2);
  v35[2] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E10, &qword_20D97AA08);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = v35 - v5;
  v6 = sub_20D972308();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972318();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972188();
  MEMORY[0x28223BE20](v10 - 8);
  v43 = sub_20D972838();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D9727D8();
  v35[0] = *(v13 - 8);
  v35[1] = v13;
  MEMORY[0x28223BE20](v13);
  v14 = sub_20D9726E8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v35 - v19;
  v21 = sub_20D972408();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v35 - v26;
  v28 = sub_20D972248();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  v29 = sub_20D972208();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  v30 = v37;
  sub_20D9722F8();
  v31 = v36;
  sub_20D9722D8();
  (*(v40 + 8))(v30, v41);
  sub_20D972278();
  (*(v38 + 8))(v31, v39);
  v32 = *(v22 + 8);
  v40 = v22 + 8;
  v41 = v21;
  v39 = v32;
  v32(v25, v21);
  v33 = *(v46 + 16);
  v46 += 16;
  v33(v12, v44, v43);
  sub_20D9723F8();
  sub_20D9723C8();
  sub_20D9726A8();
  sub_20D85CBD0();
  sub_20D972038();
  sub_20D975598();
  v39(v27, v41);
  return v47;
}

uint64_t sub_20D88F7B4()
{
  result = sub_20D88F8C8();
  qword_28112ABD8 = result;
  byte_28112ABE0 = v1 & 1;
  return result;
}

unint64_t sub_20D88F7E0()
{
  result = qword_281124BB8;
  if (!qword_281124BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124BB8);
  }

  return result;
}

unint64_t sub_20D88F82C()
{
  result = qword_281126E68;
  if (!qword_281126E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126E68);
  }

  return result;
}

uint64_t sub_20D88F880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D88F8C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_20D975078();
  v2 = [v0 initWithSuiteName_];

  if (v2 && (v3 = sub_20D975078(), [v2 doubleForKey_], v5 = v4, v3, v2, v5 > 0.0))
  {
    return *&v5;
  }

  else
  {
    return 0;
  }
}

uint64_t static HomeEnergyUIUtilities.fetchGridForecastAdvice()()
{
  v1 = sub_20D972628();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  type metadata accessor for GridForecastSnapshot(0);
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D88FAA8, 0, 0);
}

uint64_t sub_20D88FAA8()
{
  *(v0 + 80) = sub_20D9752E8();
  *(v0 + 88) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FB40, v2, v1);
}

uint64_t sub_20D88FB40()
{

  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_20D88FBD8, 0, 0);
}

uint64_t sub_20D88FBD8(uint64_t a1)
{
  *(v1 + 96) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FC64, v3, v2);
}

uint64_t sub_20D88FC64()
{

  *(v0 + 104) = qword_281125EC0;

  return MEMORY[0x2822009F8](sub_20D88FCD8, 0, 0);
}

uint64_t sub_20D88FCD8(uint64_t a1)
{
  *(v1 + 112) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FD64, v3, v2);
}

uint64_t sub_20D88FD64()
{
  v1 = v0[13];
  v2 = v0[9];

  swift_getKeyPath();
  v0[5] = v1;
  sub_20D890058();
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D8900B0(v1 + v3, v2);

  return MEMORY[0x2822009F8](sub_20D88FE48, 0, 0);
}

uint64_t sub_20D88FE48(uint64_t a1)
{
  v17 = v1;
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[6];
  v5 = v1[7];
  sub_20D9725C8();
  v6 = GridForecastSnapshot.createPillAdvice(referenceTime:)(v3);
  v8 = v7;
  (*(v5 + 8))(v3, v4);
  sub_20D890114(v2);
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_2811270E0);

  v10 = sub_20D9734D8();
  v11 = sub_20D975478();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D987930, &v16);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(v6, v8, &v16);
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s Grid Forecast advice (Pill) string: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v14 = v1[1];

  return v14(v6, v8);
}

unint64_t sub_20D890058()
{
  result = qword_281125EB0;
  if (!qword_281125EB0)
  {
    type metadata accessor for GridForecastSnapshotManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125EB0);
  }

  return result;
}

uint64_t sub_20D8900B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D890114(uint64_t a1)
{
  v2 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static HomeEnergyUIUtilities.getVersion()()
{
  type metadata accessor for HomeEnergyUIUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_20D974F48();

    if (*(v4 + 16) && (v5 = sub_20D8D4A48(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) != 0))
    {
      sub_20D7EB630(*(v4 + 56) + 32 * v5, v9);

      if (swift_dynamicCast())
      {

        return v8;
      }
    }

    else
    {
    }
  }

  return 6369134;
}

uint64_t static HomeEnergyUIUtilities.dynamicTypeSizeAsString(_:)(uint64_t a1)
{
  v2 = sub_20D973D58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF9F8])
  {
    return 0x6C6C616D53782ELL;
  }

  if (v6 == *MEMORY[0x277CDF9E0])
  {
    return 0x6C6C616D732ELL;
  }

  if (v6 == *MEMORY[0x277CDF9E8])
  {
    return 0x6D756964656D2ELL;
  }

  if (v6 == *MEMORY[0x277CDF9D8])
  {
    return 0x656772616C2ELL;
  }

  if (v6 == *MEMORY[0x277CDF9F0])
  {
    return 0x656772614C782ELL;
  }

  if (v6 == *MEMORY[0x277CDFA00])
  {
    return 0x656772614C78782ELL;
  }

  if (v6 == *MEMORY[0x277CDFA10])
  {
    return 0x6772614C7878782ELL;
  }

  v8 = v6;
  result = 0x697373656363612ELL;
  if (v8 != *MEMORY[0x277CDF988] && v8 != *MEMORY[0x277CDF998] && v8 != *MEMORY[0x277CDF9A8] && v8 != *MEMORY[0x277CDF9B8] && v8 != *MEMORY[0x277CDF9D0])
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_20D8905E4@<X0>(char a1@<W0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_20D972208();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20D972248();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_20D9721F8();
    sub_20D9721E8();
    v15 = sub_20D9725E8();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
    v41 = v15;
    v42 = v17;
    sub_20D7E1EF8();
    v18 = sub_20D9745C8();
    v20 = v19;
    v22 = v21;
    if (a2)
    {
      v23 = sub_20D9748B8();
    }

    else
    {
      v23 = sub_20D9748E8();
    }

    v41 = v23;
    v30 = sub_20D974518();
    v32 = v31;
    v34 = v33;
    sub_20D7EADC0(v18, v20, v22 & 1);

    sub_20D974488();
    v24 = sub_20D974558();
    v25 = v35;
    v37 = v36;
    v27 = v38;

    sub_20D7EADC0(v30, v32, v34 & 1);

    result = sub_20D974CC8();
    v26 = v37 & 1;
    *(&v29 + 1) = v39;
    v28 = 0xBFF921FB54442D18;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0uLL;
  }

  *a3 = v24;
  *(a3 + 8) = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v27;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  return result;
}

unint64_t HomeEnergyState.description.getter()
{
  result = 1701602377;
  switch(*v0)
  {
    case 1:
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HomeEnergyState.symbol.getter()
{
  v1 = *v0;
  v2 = 0x616C732E69666977;
  v3 = 0xD000000000000016;
  if (v1 != 4)
  {
    v3 = 0;
  }

  if (v1 != 8)
  {
    v2 = v3;
  }

  if (v1 == 10)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeEnergyState.short.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_281126E98 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 2:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 3:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 4:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 5:
    case 6:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 7:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 8:
    case 0xA:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 9:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xB:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xC:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xD:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

LABEL_24:
      swift_once();
LABEL_23:
      result = sub_20D971FF8();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HomeEnergyState.medium.getter()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (*v0 > 0xAu)
    {
      if (v1 != 11)
      {
        if (v1 == 12)
        {
          if (qword_281126E98 == -1)
          {
            return sub_20D971FF8();
          }

          goto LABEL_29;
        }

        return HomeEnergyState.short.getter();
      }

      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else
    {
      if (v1 != 8)
      {
        if (v1 == 10)
        {
          if (qword_281126E98 == -1)
          {
            return sub_20D971FF8();
          }

          goto LABEL_29;
        }

        return HomeEnergyState.short.getter();
      }

      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    goto LABEL_29;
  }

  if (*v0 <= 4u)
  {
    if (v1 != 1)
    {
      if (v1 == 3)
      {
        if (qword_281126E98 == -1)
        {
          return sub_20D971FF8();
        }

        goto LABEL_29;
      }

      return HomeEnergyState.short.getter();
    }

    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

LABEL_29:
    swift_once();
    return sub_20D971FF8();
  }

  if (v1 - 5 < 2)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_29;
  }

  if (v1 == 7)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_29;
  }

  return HomeEnergyState.short.getter();
}

HomeEnergyUI::HomeEnergyState_optional __swiftcall HomeEnergyState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if (rawValue < 0xE)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D8914F0()
{
  result = qword_27C839E60;
  if (!qword_27C839E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839E60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeEnergyState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static OnboardingContext.postalAddress(streetLine1:streetLine2:streetLine3:city:state:postalCode:country:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v55 = a8;
  v54[1] = a7;
  v54[4] = a13;
  v58 = a12;
  v59 = a14;
  v54[3] = a11;
  v56 = a10;
  v54[2] = a9;
  v61 = sub_20D971D28();
  v20 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (a2)
  {
    v23 = a1;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v65 = v23;
  v66[0] = v25;
  if (a4)
  {
    v26 = a3;
  }

  else
  {
    v26 = 0;
  }

  if (a4)
  {
    v27 = a4;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v66[1] = v26;
  v66[2] = v27;
  if (a6)
  {
    v28 = a5;
  }

  else
  {
    v28 = 0;
  }

  if (a6)
  {
    v24 = a6;
  }

  v66[3] = v28;
  v66[4] = v24;
  v29 = (v20 + 8);

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  do
  {
    v60 = v31;
    v32 = 3;
    if (v30 > 3)
    {
      v32 = v30;
    }

    v33 = -v32;
    v34 = &v66[2 * v30++];
    while (1)
    {
      if (v33 + v30 == 1)
      {
        __break(1u);
        return;
      }

      v36 = *(v34 - 1);
      v35 = *v34;
      v62 = v36;
      v63 = v35;

      sub_20D971D08();
      sub_20D7E1EF8();
      v37 = sub_20D975548();
      v39 = v38;
      (*v29)(v22, v61);

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        break;
      }

      ++v30;
      v34 += 2;
      if (v30 == 4)
      {
        v31 = v60;
        goto LABEL_33;
      }
    }

    v31 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D95D9D8(0, *(v31 + 16) + 1, 1);
      v31 = v64;
    }

    v43 = *(v31 + 16);
    v42 = *(v31 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_20D95D9D8((v42 > 1), v43 + 1, 1);
      v31 = v64;
    }

    *(v31 + 16) = v43 + 1;
    v44 = v31 + 16 * v43;
    *(v44 + 32) = v36;
    *(v44 + 40) = v35;
  }

  while (v30 != 3);
LABEL_33:
  swift_arrayDestroy();
  v62 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  sub_20D974F98();

  v45 = sub_20D975078();

  v46 = v57;
  [v57 setStreet_];

  if (v55)
  {
    v47 = sub_20D975078();
    [v46 setCity_];
  }

  v48 = v59;
  if (v56)
  {
    v49 = sub_20D975078();
    [v46 setState_];
  }

  if (v58)
  {
    v50 = sub_20D975078();
    [v46 setPostalCode_];
  }

  if (v48)
  {
    v51 = sub_20D975168();
    v52 = sub_20D975078();
    v53 = &selRef_setISOCountryCode_;
    if (v51 != 2)
    {
      v53 = &selRef_setCountry_;
    }

    [v46 *v53];
  }
}

void *OnboardingContext.home.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t OnboardingContext.__allocating_init(home:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OnboardingContext.init(home:)(a1);
  return v2;
}

uint64_t OnboardingContext.init(home:)(uint64_t a1)
{
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F98];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  v5 = MEMORY[0x277D84FA0];
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 104) = v3;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  v6 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  v7 = sub_20D972628();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations) = v3;
  v8 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t OnboardingContext.__allocating_init(config:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  OnboardingContext.init(config:)(a1);
  return v2;
}

uint64_t OnboardingContext.init(config:)(uint64_t *a1)
{
  v2 = *a1;
  v15 = *(a1 + 1);
  v3 = a1[3];
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F98];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  v6 = MEMORY[0x277D84FA0];
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v4;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  v7 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  v8 = sub_20D972628();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations) = v4;
  v9 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  *(v1 + 40) = v2;
  *(v1 + 48) = v15;
  *(v1 + 64) = v3;
  sub_20D89D2F8(v10, v11, v12, v13);
  return v1;
}

void sub_20D891D74(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  sub_20D891DD8();
}

void sub_20D891DD8()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 32))
    {
      v6 = *(v1 + 24);
      v7 = *(v1 + 32);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting utility id %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D891F90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_20D891FDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  sub_20D891DD8();
}

uint64_t (*sub_20D892034(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D892088;
}

double sub_20D8920A0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_20D89D35C(v4, v5, v6, v7);
}

void sub_20D8920F4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v6[5] = v2;
  v6[6] = v3;
  v6[7] = v4;
  v6[8] = v5;
  sub_20D89D35C(v2, v3, v4, v5);
  sub_20D89D2F8(v7, v8, v9, v10);
  sub_20D892194();
}

void sub_20D892194()
{
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_27C840CF8);

  v2 = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v0 + 48))
    {
      if (*(v0 + 40))
      {
        v6 = sub_20D9731D8();
        if (!v7)
        {
          v6 = sub_20D9731B8();
        }

        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = sub_20D7F4DC8(v6, v8, &v10);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "Setting utility config %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  sub_20D894E94();
}

double sub_20D892340@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_20D89D35C(v3, v4, v5, v6);
}

void sub_20D892390(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 7) = v7;
  sub_20D89D2F8(v3, v4, v5, v6);
  sub_20D892194();
}

uint64_t (*sub_20D8923E8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D89243C;
}

double sub_20D892454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return result;
}

double sub_20D8924B4()
{
  swift_beginAccess();

  return result;
}

double sub_20D8924EC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

void sub_20D892584(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *sub_20D8925DC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_20D892620(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

double sub_20D8926B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;

  return result;
}

double sub_20D892718()
{
  swift_beginAccess();

  return result;
}

double sub_20D892750(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

double sub_20D8927E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20D971D28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v21[2] = a2;
  v21[3] = a3;

  sub_20D971D18();
  sub_20D7E1EF8();
  v14 = sub_20D975548();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = *(v4 + 88);
  *(v4 + 88) = 0x8000000000000000;
  sub_20D8D5550(v14, v16, v13, v12, isUniquelyReferenced_nonNull_native);

  *(v4 + 88) = v21[0];
  swift_endAccess();

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    swift_beginAccess();
    sub_20D89D0C8(v21, v13, v12);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    sub_20D89D3BC(v13, v12);
    swift_endAccess();
  }

  return result;
}

void sub_20D8929FC()
{
  v1 = v0;
  v56 = *MEMORY[0x277D85DE8];
  v52 = sub_20D971D28();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v4 = v0[6];
  if (v4)
  {
    v5 = v0[5];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v5;

    sub_20D89EA1C(v4);
    v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
    v10 = sub_20D975228();

    v55.value._countAndFlagsBits = 0;
    v11 = [v9 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    countAndFlagsBits = v55.value._countAndFlagsBits;
    if (v11)
    {
      type metadata accessor for AccountDetailsDataModel(0);
      swift_allocObject();
      v13 = countAndFlagsBits;
      v14 = v11;
      v15 = sub_20D876308(v14);

      v16 = *(v4 + 16);
      if (v16)
      {
        v44 = v14;
        v45 = v5;
        v46 = v7;
        v47 = v6;
        v49 = (v2 + 8);

        v48 = v4;
        v17 = (v4 + 56);
        v50 = v15;
        do
        {
          v18 = *(v17 - 2);
          v19 = *(v17 - 1);
          v20 = *v17;

          v21._countAndFlagsBits = v19;
          v21._object = v20;
          v22 = AccountDetailsDataModel.getInfo(tafFieldKey:)(v21);
          if (v22.value._object)
          {
            v53 = v18;
            v55 = v22;

            v23 = v1;
            v24 = v51;
            sub_20D971D18();
            sub_20D7E1EF8();
            v25 = sub_20D975548();
            v27 = v26;
            v28 = v24;
            v1 = v23;
            (*v49)(v28, v52);

            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54 = v23[11];
            v23[11] = 0x8000000000000000;
            sub_20D8D5550(v25, v27, v19, v20, isUniquelyReferenced_nonNull_native);

            v23[11] = v54;
            swift_endAccess();

            v30 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v30 = v25 & 0xFFFFFFFFFFFFLL;
            }

            if (v30)
            {
              swift_beginAccess();
              sub_20D89D0C8(&v54, v19, v20);
              swift_endAccess();
            }

            else
            {
              swift_beginAccess();
              sub_20D89D3BC(v19, v20);
              swift_endAccess();

              swift_bridgeObjectRelease_n();
            }
          }

          else
          {
          }

          v17 += 5;
          --v16;
        }

        while (v16);

        sub_20D89D2F8(v45, v48, v46, v47);
      }

      else
      {

        sub_20D89D2F8(v5, v4, v7, v6);
      }
    }

    else
    {
      v31 = v55.value._countAndFlagsBits;
      v32 = sub_20D9720F8();

      swift_willThrow();
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v33 = sub_20D9734F8();
      __swift_project_value_buffer(v33, qword_27C840CF8);
      v34 = v32;
      v35 = sub_20D9734D8();
      v36 = sub_20D975458();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = v5;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v55.value._countAndFlagsBits = v40;
        *v37 = 136315394;
        *(v37 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D987CA0, &v55.value._countAndFlagsBits);
        *(v37 + 12) = 2112;
        v41 = v32;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v42;
        *v39 = v42;
        _os_log_impl(&dword_20D7C9000, v35, v36, "%s ERROR fetching MeCard: %@", v37, 0x16u);
        sub_20D7E3944(v39, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x20F324260](v40, -1, -1);
        MEMORY[0x20F324260](v37, -1, -1);

        sub_20D89D2F8(v38, v4, v7, v6);
      }

      else
      {

        sub_20D89D2F8(v5, v4, v7, v6);
      }
    }
  }
}

uint64_t sub_20D89301C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  if (*(v2 + 16))
  {

    v3 = sub_20D8D4A48(1701667150, 0xE400000000000000);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (*(*(v1 + 88) + 16))
  {

    sub_20D8D4A48(0x6D614E7473726946, 0xE900000000000065);
    if (v7)
    {

      v8 = sub_20D975078();

      [v6 setGivenName_];
    }

    else
    {
    }
  }

  if (*(*(v1 + 88) + 16))
  {

    sub_20D8D4A48(0x656D614E7473614CLL, 0xE800000000000000);
    if (v9)
    {

      v10 = sub_20D975078();

      [v6 setFamilyName_];
    }

    else
    {
    }
  }

  v11 = [objc_opt_self() stringFromContact:v6 style:0];
  if (v11)
  {
    v12 = v11;
    v5 = sub_20D975098();
  }

  else
  {

    return 0;
  }

  return v5;
}

double sub_20D893244()
{
  swift_beginAccess();
  sub_20D8ADFBC(0, 0, 1701667150, 0xE400000000000000);
  sub_20D8ADFBC(0, 0, 0x6D614E7473726946, 0xE900000000000065);
  sub_20D8ADFBC(0, 0, 0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();
  swift_beginAccess();
  sub_20D89D3BC(1701667150, 0xE400000000000000);

  sub_20D89D3BC(0x6D614E7473726946, 0xE900000000000065);

  sub_20D89D3BC(0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();

  return result;
}

uint64_t sub_20D893370()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    swift_beginAccess();
    sub_20D89D35C(v4, v1, v3, v2);

    sub_20D89D6BC(v5, v3);
    v7 = v6;

    sub_20D89D2F8(v4, v1, v3, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_20D893430()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[7];
    v4 = v0[8];
    v5 = *(v1 + 16);
    if (v5)
    {
      v20 = v0[5];
      v21 = MEMORY[0x277D84F90];
      v6 = v2;

      v19 = v3;

      sub_20D95D9D8(0, v5, 0);
      v7 = v21;
      v8 = (v1 + 56);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v11 = *(v21 + 16);
        v12 = *(v21 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_20D95D9D8((v12 > 1), v11 + 1, 1);
        }

        *(v21 + 16) = v11 + 1;
        v13 = v21 + 16 * v11;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v8 += 5;
        --v5;
      }

      while (v5);
      v3 = v19;
      v2 = v20;
    }

    else
    {
      v15 = v2;

      v7 = MEMORY[0x277D84F90];
    }

    v16 = sub_20D81A0F4(v7);

    sub_20D89D6BC(v4, v16);
    v14 = v17;

    sub_20D89D2F8(v2, v1, v3, v4);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_20D8935BC()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v4 = v0[7];
    v3 = v0[8];
    v5 = *(v1 + 16);
    v6 = v2;

    v7 = (v1 + 56);
    v8 = -v5;
    v9 = -1;
    do
    {
      if (v8 + v9 == -1)
      {
        goto LABEL_13;
      }

      if (++v9 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      if (*(v7 - 1) == 0x6C69616D45 && *v7 == 0xE500000000000000)
      {
        break;
      }

      v7 += 5;
    }

    while ((sub_20D9757C8() & 1) == 0);
    swift_beginAccess();
    v11 = v0[11];
    if (!*(v11 + 16))
    {
LABEL_13:
      sub_20D89D2F8(v2, v1, v4, v3);
      return;
    }

    v12 = sub_20D8D4A48(0x6C69616D45, 0xE500000000000000);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      sub_20D89F098(0xD000000000000019, 0x800000020D987CC0, v15, v16);

      sub_20D89D2F8(v2, v1, v4, v3);
    }

    else
    {
      sub_20D89D2F8(v2, v1, v4, v3);
    }
  }
}

void sub_20D893784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;

  sub_20D8937E8();
}

void sub_20D8937E8()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 104);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    v8 = MEMORY[0x20F323400](v6, v7);
    v10 = v9;

    v11 = sub_20D7F4DC8(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting factors %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

double sub_20D8939B8()
{
  swift_beginAccess();

  return result;
}

void sub_20D8939F0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;

  sub_20D8937E8();
}

uint64_t (*sub_20D893A3C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D893A90;
}

void sub_20D893AA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = v2;
}

void *sub_20D893B00()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void sub_20D893B44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

double sub_20D893BDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 120) = v3;
  *(v4 + 128) = v2;

  return result;
}

uint64_t sub_20D893C3C()
{
  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

double sub_20D893C88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  return result;
}

void sub_20D893D2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 136) = v3;
  *(v4 + 144) = v2;

  sub_20D893D90();
}

void sub_20D893D90()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 144))
    {
      v6 = *(v1 + 136);
      v7 = *(v1 + 144);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting access token %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D893F48()
{
  swift_beginAccess();
  v1 = *(v0 + 136);

  return v1;
}

void sub_20D893F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  sub_20D893D90();
}

uint64_t (*sub_20D893FEC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894040;
}

void sub_20D894058(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 152) = v3;
  *(v4 + 160) = v2;

  sub_20D8940BC();
}

void sub_20D8940BC()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 160))
    {
      v6 = *(v1 + 152);
      v7 = *(v1 + 160);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting refresh token %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D894274()
{
  swift_beginAccess();
  v1 = *(v0 + 152);

  return v1;
}

void sub_20D8942C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  sub_20D8940BC();
}

uint64_t (*sub_20D894318(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D89436C;
}

uint64_t sub_20D894384(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_20D7EB7E8(a1, &v10 - v5, &qword_27C8389E8, &qword_20D9768D0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(v6, v7 + v8);
  swift_endAccess();
  sub_20D894470();
  return sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D894470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D7EB7E8(v0 + v11, v3, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_20D7E3944(v3, &qword_27C8389E8, &qword_20D9768D0);
  }

  (*(v5 + 32))(v10, v3, v4);
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_27C840CF8);
  (*(v5 + 16))(v8, v10, v4);
  v14 = sub_20D9734D8();
  v15 = sub_20D975448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v16 = 136315138;
    sub_20D8A093C(&qword_281127730, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v17 = sub_20D9757A8();
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v8, v4);
    v21 = sub_20D7F4DC8(v17, v19, &v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20D7C9000, v14, v15, "Setting expiration date %s", v16, 0xCu);
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F324260](v22, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);

    return (v20)(v10, v4);
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v8, v4);
    return (v23)(v10, v4);
  }
}

uint64_t sub_20D894808@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  return sub_20D7EB7E8(v1 + v3, a1, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D894870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(a1, v1 + v3);
  swift_endAccess();
  sub_20D894470();
  return sub_20D7E3944(a1, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t (*sub_20D8948EC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894950;
}

void sub_20D894968(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  *(v3 + v4) = v2;

  sub_20D8949D4();
}

void sub_20D8949D4()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
    swift_beginAccess();
    v7 = *(v1 + v6);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    v9 = MEMORY[0x20F323400](v7, v8);
    v11 = v10;

    v12 = sub_20D7F4DC8(v9, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting locations %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

double sub_20D894BAC()
{
  swift_beginAccess();

  return result;
}

void sub_20D894BF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_20D8949D4();
}

uint64_t (*sub_20D894C50(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894CB4;
}

uint64_t sub_20D894CCC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double sub_20D894D10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_20D894D7C()
{
  v1 = (v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_20D894DD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_20D894E94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[5];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  if (v4)
  {
    sub_20D89D35C(v2, v1[6], v1[7], v1[8]);
    v6 = v2;
    sub_20D89D2F8(v2, v4, v3, v5);
    if (v2)
    {
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v7 = sub_20D9734F8();
      __swift_project_value_buffer(v7, qword_27C840CF8);
      v8 = sub_20D9734D8();
      v9 = sub_20D975478();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15[0] = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D987F40, v15);
        _os_log_impl(&dword_20D7C9000, v8, v9, "%s Creating subscription service", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x20F324260](v11, -1, -1);
        MEMORY[0x20F324260](v10, -1, -1);
      }

      v12 = objc_allocWithZone(sub_20D9732A8());
      v13 = sub_20D973298();
      swift_beginAccess();
      v14 = v1[10];
      v1[10] = v13;
    }
  }

  else
  {
    sub_20D89D35C(v2, 0, v1[7], v1[8]);
    sub_20D89D2F8(v2, 0, v3, v5);
  }
}

void sub_20D895094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E90, &qword_20D97AC08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D97ABE0;
  *(inited + 32) = 25705;
  v13 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v13;
  *(inited + 80) = 0x7954726F74636166;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 120) = v13;
  *(inited + 128) = 0x74616E6974736564;
  *(inited + 136) = 0xEB000000006E6F69;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 168) = v13;
  *(inited + 176) = 0x736B6E696C5FLL;
  *(inited + 184) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E98, &qword_20D97AC10);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_20D977210;
  *(v14 + 32) = 0x796669726576;
  *(v14 + 40) = 0xE600000000000000;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = 1684956531;
  *(v14 + 72) = 0xE400000000000000;
  *(v14 + 80) = a3;
  *(v14 + 88) = a4;

  v15 = sub_20D8D6930(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EA0, &qword_20D97AC18);
  swift_arrayDestroy();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EA8, &unk_20D97AC20);
  *(inited + 192) = v15;
  sub_20D8D6720(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
  swift_arrayDestroy();
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v16 = sub_20D9734F8();
  __swift_project_value_buffer(v16, qword_27C840CF8);

  v17 = sub_20D9734D8();
  v18 = sub_20D975448();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D987CE0, v27);
    *(v19 + 12) = 2080;
    v21 = sub_20D974F58();
    v23 = sub_20D7F4DC8(v21, v22, v27);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_20D7C9000, v17, v18, "%s factorDict %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  sub_20D973398();
  v24 = sub_20D973388();
  swift_beginAccess();
  v25 = *(v26 + 112);
  *(v26 + 112) = v24;
}

uint64_t OnboardingContext.deinit()
{

  sub_20D89D2F8(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  sub_20D7E3944(v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate, &qword_27C8389E8, &qword_20D9768D0);

  return v0;
}

uint64_t OnboardingContext.__deallocating_deinit()
{
  OnboardingContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t OnboardingContext.submitTAF(fields:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_20D9752E8();
  v2[10] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](sub_20D895600, v4, v3);
}

uint64_t sub_20D895600()
{
  v35 = v0;
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = *(v3 + 16);
    v2;

    if (v4)
    {
      v5 = sub_20D8D4A48(0x656E6F6850, 0xE500000000000000);
      v3 = v0[8];
      if (v6)
      {
        v7 = (*(v3 + 56) + 16 * v5);
        v8 = *v7;
        v9 = v7[1];

        v10 = sub_20D89F518(v8, v9);
        v12 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34[0] = v3;
        sub_20D8D5550(v10, v12, 0x656E6F6850, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    v0[14] = v3;
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_27C840CF8);
    v15 = sub_20D9734D8();
    v16 = sub_20D975478();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_20D7F4DC8(0xD000000000000012, 0x800000020D987D20, v34);
      *(v17 + 12) = 2080;

      v19 = sub_20D974F58();
      v21 = v20;

      v22 = sub_20D7F4DC8(v19, v21, v34);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s Submitting information %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    sub_20D973328();

    v23 = sub_20D9732F8();
    v0[15] = v23;
    v33 = (*MEMORY[0x277D181F0] + MEMORY[0x277D181F0]);
    v24 = swift_task_alloc();
    v0[16] = v24;
    *v24 = v0;
    v24[1] = sub_20D895AA4;

    return v33(v3, v23);
  }

  else
  {

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v26 = sub_20D9734F8();
    __swift_project_value_buffer(v26, qword_27C840CF8);
    v27 = sub_20D9734D8();
    v28 = sub_20D975458();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_20D7F4DC8(0xD000000000000012, 0x800000020D987D20, v34);
      _os_log_impl(&dword_20D7C9000, v27, v28, "%s Unable to find subscription service", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F324260](v30, -1, -1);
      MEMORY[0x20F324260](v29, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_20D895AA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
    v6 = sub_20D895D8C;
  }

  else
  {

    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
    v6 = sub_20D895BC8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void *sub_20D895BC8()
{
  v1 = v0[17];

  if (v1 >> 62)
  {
    v2 = sub_20D975748();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_20D95D9F8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v16;
  v6 = v1 & 0xC000000000000001;
  v7 = v0[17] + 32;
  do
  {
    if (v6)
    {
      v8 = MEMORY[0x20F323850](v4, v0[17]);
    }

    else
    {
      v8 = *(v7 + 8 * v4);
    }

    v9 = v8;
    v10 = sub_20D973378();

    v12 = *(v16 + 16);
    v11 = *(v16 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_20D95D9F8((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    *(v16 + 16) = v12 + 1;
    *(v16 + 8 * v12 + 32) = v10;
  }

  while (v2 != v4);

LABEL_14:
  v13 = v0[13];
  v14 = v0[9];
  swift_beginAccess();
  *(v14 + 104) = v5;

  sub_20D8937E8();

  v15 = v0[1];

  return v15();
}