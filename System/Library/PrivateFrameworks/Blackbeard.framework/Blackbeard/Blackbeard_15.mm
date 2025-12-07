unint64_t sub_1E60123A0()
{
  result = qword_1EE2D4C80;
  if (!qword_1EE2D4C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DA8, &qword_1E65ECAF8);
    sub_1E601242C();
    sub_1E601259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C80);
  }

  return result;
}

unint64_t sub_1E601242C()
{
  result = qword_1EE2D4D28;
  if (!qword_1EE2D4D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DD0, &qword_1E65ECB20);
    sub_1E60124E4();
    sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D28);
  }

  return result;
}

unint64_t sub_1E60124E4()
{
  result = qword_1EE2D4E50;
  if (!qword_1EE2D4E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DC8, &qword_1E65ECB18);
    sub_1E5FED46C(&qword_1EE2D4B60, &qword_1ED072DD8, &qword_1E65ECB28, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E50);
  }

  return result;
}

unint64_t sub_1E601259C()
{
  result = qword_1EE2D4D08;
  if (!qword_1EE2D4D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DE8, &qword_1E65ECB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D08);
  }

  return result;
}

uint64_t sub_1E6012620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6012690(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1E60126D4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E60126D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E60126E4(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1E6012728(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E6012728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_1E6012738@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65E3F68();
  sub_1E60127DC(a1, a2, v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a3 + 33) = *&v8[16];
  result = *&v8[32];
  *(a3 + 49) = *&v8[32];
  *(a3 + 65) = *&v8[48];
  *a3 = v6;
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  *(a3 + 80) = *&v8[63];
  *(a3 + 17) = *v8;
  return result;
}

uint64_t sub_1E60127DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = sub_1E65E46A8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v10(v9, a2, v6);
  v18 = sub_1E65E46A8();
  v20 = v19;
  v21 = v15 & 1;
  v27 = v15 & 1;
  v29 = v15 & 1;
  v23 = v22 & 1;
  v28 = v22 & 1;
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v21;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v22 & 1;
  *(a3 + 56) = v24;
  sub_1E60126D4(v11, v13, v21);

  sub_1E60126D4(v18, v20, v23);

  sub_1E6012728(v18, v20, v23);

  sub_1E6012728(v11, v13, v27);
}

uint64_t sub_1E6012990@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = sub_1E65E07B8();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E20, &qword_1E65ECB60);
  v8 = swift_allocObject();
  v32 = xmmword_1E65EB9E0;
  *(v8 + 16) = xmmword_1E65EB9E0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  sub_1E65E4968();
  v11 = sub_1E65E49B8();

  *(v8 + 32) = v11;
  *(v8 + 40) = sub_1E65E4998();
  MEMORY[0x1E694C510](v8);
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3DA8();
  v34 = *v34;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  v12 = *(v36 + 8);
  v36 += 8;
  v31 = v12;
  v12(v7, v5);
  sub_1E65E0798();
  v13 = *(v37 + 8);
  v37 += 8;
  v13(v4, v35);
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v46 = v52;
  v47 = v53;
  *&v48 = v54;
  v14 = swift_allocObject();
  *(v14 + 16) = v32;
  v15 = [v9 systemBackgroundColor];
  sub_1E65E4968();
  v16 = sub_1E65E49B8();

  *(v14 + 32) = v16;
  *(v14 + 40) = sub_1E65E4998();
  MEMORY[0x1E694C510](v14);
  sub_1E65E4C38();
  sub_1E65E4C28();
  sub_1E65E3DA8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  v31(v7, v5);
  sub_1E65E07A8();
  v13(v4, v35);
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v40 = v55;
  v41 = v56;
  *&v42 = v57;
  v17 = v47;
  v18 = v48;
  v58[2] = v48;
  v58[3] = v49;
  v19 = v49;
  v58[4] = v50;
  v58[0] = v46;
  v58[1] = v47;
  v60[0] = v55;
  v60[1] = v56;
  v20 = v43;
  v60[4] = v44;
  v21 = v42;
  v60[2] = v42;
  v60[3] = v43;
  v23 = v55;
  v22 = v56;
  *(&v38[1] + 7) = v56;
  *(v38 + 7) = v55;
  *(&v38[4] + 7) = v44;
  *(&v38[3] + 7) = v43;
  *(&v38[2] + 7) = v42;
  *a2 = v46;
  *(a2 + 16) = v17;
  v24 = v50;
  *(a2 + 48) = v19;
  *(a2 + 64) = v24;
  v25 = v45;
  *(&v38[5] + 7) = v45;
  *(a2 + 32) = v18;
  v26 = v38[0];
  *(a2 + 113) = v38[1];
  *(a2 + 97) = v26;
  v27 = v38[4];
  *(a2 + 176) = *(&v38[4] + 15);
  *(a2 + 161) = v27;
  v28 = v38[2];
  *(a2 + 145) = v38[3];
  *(a2 + 129) = v28;
  v59 = v51;
  v39 = 1;
  v61 = v25;
  *(a2 + 80) = v51;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v62[0] = v23;
  v62[1] = v22;
  v63 = v45;
  v62[3] = v20;
  v62[4] = v44;
  v62[2] = v21;
  sub_1E5DFD1CC(v58, v64, &qword_1ED072E28, &qword_1E65ECB88);
  sub_1E5DFD1CC(v60, v64, &qword_1ED072E28, &qword_1E65ECB88);
  sub_1E5DFE50C(v62, &qword_1ED072E28, &qword_1E65ECB88);
  v64[2] = v48;
  v64[3] = v49;
  v64[4] = v50;
  v65 = v51;
  v64[0] = v46;
  v64[1] = v47;
  return sub_1E5DFE50C(v64, &qword_1ED072E28, &qword_1E65ECB88);
}

uint64_t sub_1E6012F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E38, &qword_1E65ECBF8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E6012F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3DE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v15 - v10;
  MEMORY[0x1E694C310](v9, a1, &type metadata for SidebarPillDisabled, a2);
  v12 = sub_1E6013128();
  v15[0] = a2;
  v15[1] = v12;
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1E5FEE4C8();
  return (v13)(v11, v4);
}

unint64_t sub_1E6013128()
{
  result = qword_1ED072E30;
  if (!qword_1ED072E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072E30);
  }

  return result;
}

unint64_t sub_1E60131A8()
{
  result = qword_1ED072E40;
  if (!qword_1ED072E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E38, &qword_1E65ECBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072E40);
  }

  return result;
}

uint64_t sub_1E601320C@<X0>(char *a1@<X8>)
{
  v2 = sub_1E65D8F28();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65D9908();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = sub_1E65D8C68();
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65DCED8();
  v41 = v12;
  v42 = v11;
  sub_1E65DCE68();
  v13 = sub_1E65DCCF8();
  v15 = v14;
  if (v13 == sub_1E65DCCF8() && v15 == v16)
  {

    v17 = MEMORY[0x1E69CBA28];
  }

  else
  {
    v18 = sub_1E65E6C18();

    v17 = MEMORY[0x1E69CBAA0];
    if (v18)
    {
      v17 = MEMORY[0x1E69CBA28];
    }
  }

  (*(v8 + 104))(v10, *v17, v45);
  sub_1E65DCF58();
  v19 = sub_1E65E5D58();
  v39 = v20;
  v40 = v19;
  v21 = sub_1E65DCE68();
  (*(v5 + 104))(v46, **(&unk_1E8797330 + v21), v47);
  sub_1E65DCE68();
  v22 = sub_1E65DCCF8();
  v24 = v23;
  if (v22 == sub_1E65DCCF8() && v24 == v25)
  {

    v26 = MEMORY[0x1E69CBC98];
  }

  else
  {
    v27 = sub_1E65E6C18();

    v26 = MEMORY[0x1E69CBC90];
    if (v27)
    {
      v26 = MEMORY[0x1E69CBC98];
    }
  }

  v29 = v43;
  v28 = v44;
  (*(v43 + 104))(v4, *v26, v44);
  v30 = type metadata accessor for ItemMetrics(0);
  v31 = v30[10];
  v32 = *MEMORY[0x1E69CCA80];
  v33 = sub_1E65D9F88();
  (*(*(v33 - 8) + 104))(&a1[v31], v32, v33);
  v34 = v41;
  *a1 = v42;
  *(a1 + 1) = v34;
  (*(v8 + 32))(&a1[v30[5]], v10, v45);
  v35 = &a1[v30[6]];
  v36 = v39;
  *v35 = v40;
  *(v35 + 1) = v36;
  (*(v5 + 32))(&a1[v30[7]], v46, v47);
  return (*(v29 + 32))(&a1[v30[8]], v4, v28);
}

uint64_t sub_1E6013678(uint64_t a1)
{
  v12 = sub_1E65D8F28();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DD238();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  if ((v4 & 1) == 0)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E65EA670;
    sub_1E65DCDA8();
    v11 = v9;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DCDE8();
    sub_1E65DCE08();
    (*(v1 + 104))(v3, *MEMORY[0x1E69CBC88], v12);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    goto LABEL_5;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EB9E0;
  sub_1E65DD258();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v6 = *MEMORY[0x1E69CBCB0];
  v11 = *(v1 + 104);
  v11(v3, v6, v12);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E65DCDA8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  result = sub_1E65DCDE8();
  if (!__OFADD__(result, 1))
  {
    v10[1] = result + 1;
    sub_1E65DCE08();
    v10[0] = v8;
    v11(v3, *MEMORY[0x1E69CBC88], v12);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
LABEL_5:
    sub_1E65D8678();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E60139B4()
{
  v0 = sub_1E65D8F28();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v4 = *(sub_1E65D86A8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EB9E0;
  sub_1E65DCB28();
  v9 = v8;
  v10 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v17 = v11;
  result = sub_1E65DCB78();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v15[0] = v9;
    v15[1] = v10;
    v15[2] = v7 + v6;
    sub_1E65DCB68();
    v15[3] = v5;
    v13 = *MEMORY[0x1E69CBCD0];
    v16 = v7;
    v14 = *(v1 + 104);
    v14(v3, v13, v0);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65DD248();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DCB48();
    v14(v3, *MEMORY[0x1E69CBCB0], v0);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    return v16;
  }

  return result;
}

unint64_t sub_1E6013C48()
{
  v0 = sub_1E65DD218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  if (v0 == 1)
  {
    *(inited + 16) = xmmword_1E65EA8E0;
    *(inited + 32) = 4;
    sub_1E65DD1F8();
    sub_1E65E6848();
    *(inited + 80) = 5;
    sub_1E65DD1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5FEE0FC();
    sub_1E65E6848();
    *(inited + 128) = 6;
  }

  else
  {
    *(inited + 16) = xmmword_1E65EB9E0;
    *(inited + 32) = 5;
    sub_1E65DD1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5FEE0FC();
    sub_1E65E6848();
    *(inited + 80) = 6;
  }

  sub_1E65DD208();
  sub_1E65E6848();
  v2 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1E6013E58@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v29 - v11;
  v13 = sub_1E65DD288();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  sub_1E65DCFB8();
  sub_1E65DD088();
  sub_1E65DD268();
  sub_1E6014B9C(v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v20 = MEMORY[0x1E69CBDA0];
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E48, &qword_1E65ECC00);
      sub_1E5DFE50C(&v16[*(v21 + 64)], &qword_1ED072E50, &qword_1E65ECC08);
    }

    else
    {
      sub_1E6014B40(v16);
    }

    v20 = MEMORY[0x1E69CBD38];
  }

  v22 = *v20;
  v23 = sub_1E65D8F38();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v12, v22, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  v25 = sub_1E65D74E8();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = sub_1E65D9908();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = sub_1E65D9F88();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);

  sub_1E65D7A28();
  return sub_1E6014B40(v18);
}

unint64_t sub_1E6014274()
{
  v0 = sub_1E65DD288();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DCFB8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *v2;
      v6 = v2[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA670;
      *(inited + 32) = 6;
      v17 = v5;
      v18 = v6;
      sub_1E65E6848();
      v8 = sub_1E6427784(inited);
      swift_setDeallocating();
      sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
      return v8;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v9 = *v2;
      v10 = v2[1];
      v11 = v2[2];
      v12 = v2[3];
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E48, &qword_1E65ECC00) + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1E65EB9E0;
      *(v14 + 32) = 6;
      v17 = v9;
      v18 = v10;
      sub_1E65E6848();
      *(v14 + 80) = 5;
      v17 = v11;
      v18 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v15 = sub_1E6427784(v14);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      sub_1E5DFE50C(v2 + v13, &qword_1ED072E50, &qword_1E65ECC08);
      return v15;
    }

    sub_1E6014B40(v2);
  }

  return sub_1E6427784(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1E60144DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E65D8C68();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - v8;
  sub_1E65DCF18();
  if (v10)
  {

    v72 = sub_1E65DCED8();
    v74 = v11;
    sub_1E65DCE68();
    v12 = sub_1E65DCCF8();
    v14 = v13;
    if (v12 == sub_1E65DCCF8() && v14 == v15)
    {

      v16 = MEMORY[0x1E69CBA28];
    }

    else
    {
      v24 = sub_1E65E6C18();

      v16 = MEMORY[0x1E69CBAA0];
      if (v24)
      {
        v16 = MEMORY[0x1E69CBA28];
      }
    }

    (*(v4 + 104))(v7, *v16, v3);
    sub_1E65DCF58();
    v73 = sub_1E65E5D58();
    v26 = v25;
    v27 = type metadata accessor for ItemMetrics(0);
    v28 = v27[7];
    v29 = **(&unk_1E8797330 + sub_1E65DCE68());
    v30 = sub_1E65D9908();
    (*(*(v30 - 8) + 104))(a1 + v28, v29, v30);
    v31 = a1 + v27[8];
    v32 = sub_1E65DCE68();
    v33 = MEMORY[0x1E69CCA78];
    if (v32 <= 3)
    {
      v42 = MEMORY[0x1E69CBCA8];
      v43 = MEMORY[0x1E69CCA78];
      v44 = MEMORY[0x1E69CBC98];
      if (v32 != 2)
      {
        v44 = MEMORY[0x1E69CBCD8];
        v43 = MEMORY[0x1E69CCA78];
      }

      if (v32)
      {
        v42 = MEMORY[0x1E69CBC90];
        v33 = MEMORY[0x1E69CCA78];
      }

      v45 = v32 <= 1;
      if (v32 <= 1)
      {
        v40 = v42;
      }

      else
      {
        v40 = v44;
      }

      if (v45)
      {
        v41 = v33;
      }

      else
      {
        v41 = v43;
      }
    }

    else
    {
      v34 = MEMORY[0x1E69CBCD8];
      v35 = MEMORY[0x1E69CCA78];
      v36 = MEMORY[0x1E69CBCC0];
      if (v32 != 7)
      {
        v36 = MEMORY[0x1E69CBCD8];
        v35 = MEMORY[0x1E69CCA78];
      }

      if (v32 != 6)
      {
        v34 = v36;
        v33 = v35;
      }

      v37 = MEMORY[0x1E69CCA78];
      v38 = MEMORY[0x1E69CBCD8];
      if (v32 != 4)
      {
        v38 = MEMORY[0x1E69CBCD8];
        v37 = MEMORY[0x1E69CCA78];
      }

      v39 = v32 <= 5;
      if (v32 <= 5)
      {
        v40 = v38;
      }

      else
      {
        v40 = v34;
      }

      if (v39)
      {
        v41 = v37;
      }

      else
      {
        v41 = v33;
      }
    }

    v9 = v7;
    v17 = v72;
  }

  else
  {
    v17 = sub_1E65DCED8();
    v74 = v18;
    sub_1E65DCE68();
    v19 = sub_1E65DCCF8();
    v21 = v20;
    if (v19 == sub_1E65DCCF8() && v21 == v22)
    {

      v23 = MEMORY[0x1E69CBA28];
    }

    else
    {
      v46 = sub_1E65E6C18();

      v23 = MEMORY[0x1E69CBAA0];
      if (v46)
      {
        v23 = MEMORY[0x1E69CBA28];
      }
    }

    (*(v4 + 104))(v9, *v23, v3);
    sub_1E65DCF58();
    v73 = sub_1E65E5D58();
    v26 = v47;
    v27 = type metadata accessor for ItemMetrics(0);
    v48 = v27[7];
    v49 = **(&unk_1E8797330 + sub_1E65DCE68());
    v50 = sub_1E65D9908();
    (*(*(v50 - 8) + 104))(a1 + v48, v49, v50);
    v31 = a1 + v27[8];
    v51 = sub_1E65DCE68();
    v52 = MEMORY[0x1E69CCA80];
    if (v51 <= 3)
    {
      v59 = MEMORY[0x1E69CBCA8];
      v60 = MEMORY[0x1E69CCA80];
      v61 = MEMORY[0x1E69CBC98];
      if (v51 != 2)
      {
        v61 = MEMORY[0x1E69CBCD8];
        v60 = MEMORY[0x1E69CCA80];
      }

      if (v51)
      {
        v59 = MEMORY[0x1E69CBC90];
        v52 = MEMORY[0x1E69CCA80];
      }

      v62 = v51 <= 1;
      if (v51 <= 1)
      {
        v40 = v59;
      }

      else
      {
        v40 = v61;
      }

      if (v62)
      {
        v41 = v52;
      }

      else
      {
        v41 = v60;
      }
    }

    else
    {
      v53 = MEMORY[0x1E69CBCD8];
      v54 = MEMORY[0x1E69CCA80];
      v55 = MEMORY[0x1E69CBCC0];
      if (v51 != 7)
      {
        v55 = MEMORY[0x1E69CBCD8];
        v54 = MEMORY[0x1E69CCA80];
      }

      if (v51 != 6)
      {
        v53 = v55;
        v52 = v54;
      }

      v56 = MEMORY[0x1E69CCA80];
      v57 = MEMORY[0x1E69CBCD8];
      if (v51 != 4)
      {
        v57 = MEMORY[0x1E69CBCD8];
        v56 = MEMORY[0x1E69CCA80];
      }

      v58 = v51 <= 5;
      if (v51 <= 5)
      {
        v40 = v57;
      }

      else
      {
        v40 = v53;
      }

      if (v58)
      {
        v41 = v56;
      }

      else
      {
        v41 = v52;
      }
    }
  }

  v63 = *v40;
  v64 = sub_1E65D8F28();
  (*(*(v64 - 8) + 104))(v31, v63, v64);
  v65 = v27[10];
  v66 = *v41;
  v67 = sub_1E65D9F88();
  (*(*(v67 - 8) + 104))(a1 + v65, v66, v67);
  v68 = v74;
  *a1 = v17;
  a1[1] = v68;
  (*(v4 + 32))(a1 + v27[5], v9, v3);
  v69 = (a1 + v27[6]);
  *v69 = v73;
  v69[1] = v26;
  type metadata accessor for ItemMetrics(0);
  return (*(*(v27 - 1) + 56))(a1, 0, 1, v27);
}

uint64_t sub_1E6014B40(uint64_t a1)
{
  v2 = sub_1E65DD288();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6014B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DD288();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6014C00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v210 = a5;
  v186 = a4;
  v220 = a3;
  LODWORD(v198) = a2;
  v211 = a1;
  v216 = a6;
  v215 = sub_1E65DADF8();
  v203 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v201 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v191 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  v181 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v192 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v166 - v14;
  v15 = sub_1E65D7848();
  v180 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v179 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v178 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v177 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1E65D7F88();
  v189 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E65DAEB8();
  v184 = *(v185 - 8);
  v22 = MEMORY[0x1EEE9AC00](v185);
  v182 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v183 = &v166 - v24;
  v197 = sub_1E65D9AC8();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v26 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1E65D7268();
  v218 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v206 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1E65D72D8();
  v217 = *(v207 - 8);
  v28 = MEMORY[0x1EEE9AC00](v207);
  v204 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v205 = &v166 - v30;
  v214 = sub_1E65E0748();
  v202 = *(v214 - 8);
  v31 = MEMORY[0x1EEE9AC00](v214);
  v190 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v212 = &v166 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v221 = &v166 - v35;
  v36 = sub_1E65D8BB8();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for ArtworkDescriptor(0);
  v42 = MEMORY[0x1EEE9AC00](v209);
  v195 = &v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v219 = &v166 - v44;
  v213 = sub_1E65D9CC8();
  v199 = *(v213 - 8);
  v45 = MEMORY[0x1EEE9AC00](v213);
  v193 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v166 - v47;
  v49 = sub_1E65D80C8();
  LOBYTE(v51) = v49;
  if ((v52 & 1) == 0)
  {
    sub_1E5F87058(v49, v50, 0);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    v56 = *(*(v55 - 8) + 56);
    v57 = v55;
    v58 = v216;

    return v56(v58, 1, 1, v57);
  }

  sub_1E65D8078();
  v194 = v48;
  sub_1E65D9C88();
  sub_1E65D8128();
  sub_1E63EB15C(v41);
  sub_1E6016A94(v38, MEMORY[0x1E69CB950]);
  sub_1E65D81D8();
  v169 = v15;
  if (v53)
  {

    if (sub_1E65D80D8() > 0)
    {
      v54 = &unk_1F5FA8220;
LABEL_10:
      v60 = sub_1E5F9B6D0(v54);
      goto LABEL_12;
    }
  }

  else if (sub_1E65D80D8() >= 1)
  {
    v54 = &unk_1F5FA81F8;
    goto LABEL_10;
  }

  v60 = MEMORY[0x1E69E7CD0];
LABEL_12:
  v170 = v11;
  v61 = sub_1E65DAE38();
  v62 = sub_1E65DAE38();
  v63 = sub_1E65E4B48();
  v64 = 4.0;
  if (v63)
  {
    v64 = 8.0;
  }

  v65 = 16.0;
  if (v63)
  {
    v65 = 18.0;
  }

  if (v61 == v62)
  {
    v66 = v65;
  }

  else
  {
    v66 = v64;
  }

  if (v61 == v62)
  {
    v67 = 12.0;
  }

  else
  {
    v67 = 8.0;
  }

  v68 = v219;
  sub_1E6016C3C(v41, v219, type metadata accessor for ArtworkContent);
  v69 = v209;
  *(v68 + *(v209 + 20)) = v60;
  v70 = v68 + v69[6];
  *v70 = 0;
  *(v70 + 8) = v66;
  *(v70 + 16) = v66;
  *(v70 + 24) = v67;
  *(v68 + v69[7]) = 1;
  v71 = (v68 + v69[8]);
  *v71 = 0;
  v71[1] = 0;
  v72 = sub_1E65D8248();
  v73 = v204;
  sub_1E63C4134(v211, v210, v72, v204);

  if (qword_1EE2D7250 != -1)
  {
LABEL_81:
    swift_once();
  }

  v171 = sub_1E65D7348();
  __swift_project_value_buffer(v171, qword_1EE2EA220);
  v74 = v218;
  v75 = *(v218 + 104);
  v76 = v206;
  v174 = *MEMORY[0x1E69686E8];
  v77 = v208;
  v198 = v218 + 104;
  v176 = v75;
  v75(v206);
  v78 = sub_1E6016A4C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v79 = v207;
  v172 = v78;
  sub_1E65D73C8();
  v80 = *(v74 + 8);
  v218 = v74 + 8;
  v173 = v80;
  v80(v76, v77);
  v81 = *(v217 + 8);
  v217 += 8;
  v175 = v81;
  v81(v73, v79);
  sub_1E65E0738();
  v82 = sub_1E65D9AA8();
  v84 = v83;
  MEMORY[0x1E6941490]();
  v85 = sub_1E65D9AA8();
  v87 = v86;
  (*(v196 + 8))(v26, v197);
  if (v82 == v85 && v84 == v87)
  {
    v88 = 1;
  }

  else
  {
    v88 = sub_1E65E6C18();
  }

  v89 = v213;
  v90 = v214;
  v91 = v199;

  v92 = sub_1E65D8198();
  v93 = sub_1E65D9AA8();
  v95 = sub_1E637CA94(v93, v94, v92);

  v96 = MEMORY[0x1E69E7CC0];
  if (v88 & 1) == 0 && (v95)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v97 = *(v203 + 72);
    v98 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1E65EB9E0;
    v100 = (v99 + v98);
    *v100 = sub_1E65D9AA8();
    v100[1] = v101;
    swift_storeEnumTagMultiPayload();
    *(v100 + v97) = 1;
    swift_storeEnumTagMultiPayload();
    v96 = v99;
  }

  v73 = v90;
  v102 = 1 << v51;
  v103 = v216;
  v104 = v202;
  v26 = v221;
  v105 = v212;
  v51 = v219;
  v106 = v194;
  if ((v102 & 0xE5) != 0)
  {

    (*(v104 + 8))(v26, v73);
    sub_1E6016A94(v51, type metadata accessor for ArtworkDescriptor);
    (*(v91 + 8))(v106, v89);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    return (*(*(v107 - 8) + 56))(v103, 1, 1, v107);
  }

  v220 = v96;
  v108 = v7;
  v7 = v195;
  if ((v102 & 0x112) != 0)
  {
    goto LABEL_33;
  }

  v168 = v108;
  v118 = sub_1E65D8078();
  if (!*(v186 + 2))
  {
LABEL_57:

    goto LABEL_33;
  }

  v197 = sub_1E6215038(v118, v119);
  v121 = v120;
  v26 = v221;
  v104 = v202;

  if ((v121 & 1) == 0)
  {
LABEL_33:
    (*(v91 + 16))(v193, v194, v89);
    sub_1E60169E8(v51, v7);
    (*(v104 + 16))(v105, v26, v73);
    v109 = sub_1E65D80A8();
    v223 = v220;
    sub_1E5FA9E2C(v109);
    v110 = v204;
    sub_1E63C4134(v211, v210, v223, v204);

    if (qword_1EE2D7248 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v171, qword_1EE2EA208);
    v111 = v206;
    v112 = v208;
    v176(v206, v174, v208);
    v113 = v207;
    sub_1E65D73C8();
    v173(v111, v112);
    v175(v110, v113);
    sub_1E65E0738();
    sub_1E65D76E8();
    sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v114 = MEMORY[0x1E69CC888];
    sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
    sub_1E6016A4C(&qword_1EE2D7030, v114, MEMORY[0x1E69CC890]);
    sub_1E6016A4C(&qword_1EE2D7028, v114, MEMORY[0x1E69CC898]);
    v115 = v216;
    v116 = v213;
    sub_1E65DF698();
    (*(v104 + 8))(v221, v214);
    sub_1E6016A94(v219, type metadata accessor for ArtworkDescriptor);
    (*(v91 + 8))(v194, v116);
    goto LABEL_36;
  }

  v122 = v184;
  v123 = v182;
  v73 = v185;
  (*(v184 + 16))(v182, *(v186 + 7) + *(v184 + 72) * v197, v185);
  (*(v122 + 32))(v183, v123, v73);
  v124 = sub_1E65DAE88();
  v51 = v124 + 56;
  v125 = 1 << *(v124 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v91 = v126 & *(v124 + 56);
  v104 = (v125 + 63) >> 6;
  v186 = v189 + 16;
  v182 = v189 + 8;
  v196 = v124;

  v26 = 0;
  v167 = 0;
  v105 = 0;
  v7 = v188;
  while (v91)
  {
    v197 = v105;
LABEL_48:
    v128 = __clz(__rbit64(v91));
    v91 &= v91 - 1;
    v129 = v189;
    v130 = v187;
    (*(v189 + 2))(v187, *(v196 + 48) + *(v189 + 9) * (v128 | (v26 << 6)), v7);
    v131 = sub_1E65D7F78();
    v73 = v132;
    v89 = v133;
    v129[1](v130, v7);
    if ((v89 & 1) == 0)
    {
      sub_1E5F87058(v131, v73, 0);
      goto LABEL_54;
    }

    if (v131 == 2)
    {
      v105 = v197 + 1;
      if (__OFADD__(v197, 1))
      {
        __break(1u);
LABEL_82:
        swift_once();
        goto LABEL_79;
      }
    }

    else
    {
LABEL_54:
      v134 = __OFADD__(v167++, 1);
      v105 = v197;
      if (v134)
      {
        __break(1u);
        goto LABEL_57;
      }
    }
  }

  while (1)
  {
    v127 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v127 >= v104)
    {
      break;
    }

    v91 = *(v51 + 8 * v127);
    ++v26;
    if (v91)
    {
      v197 = v105;
      v26 = v127;
      goto LABEL_48;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E68, &qword_1E65ECC18);
  v135 = *(v181 + 72);
  v136 = (*(v181 + 80) + 32) & ~*(v181 + 80);
  v137 = swift_allocObject();
  v138 = (v137 + v136);
  v139 = v167;
  v197 = v137;
  if (v167 <= 0 && v105 <= 0)
  {
    v140 = *(v203 + 56);
    v141 = v215;
    v140(v137 + v136, 1, 1, v215);
    goto LABEL_65;
  }

  *v138 = 1;
  v142 = v215;
  swift_storeEnumTagMultiPayload();
  v140 = *(v203 + 56);
  v196 = (v203 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v140(v138, 0, 1, v142);
  if (v139 <= 0)
  {
    v141 = v142;
LABEL_65:
    v140(&v138[v135], 1, 1, v141);
    v140(&v138[2 * v135], 1, 1, v141);
    v148 = &v138[3 * v135];
    if (v105 < 1)
    {
      goto LABEL_68;
    }

LABEL_66:
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v223 = v105;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v150 = [objc_opt_self() bundleForClass_];
    (*(v180 + 16))(v179, v211, v169);
    *v148 = sub_1E65E5D48();
    v148[1] = v151;
    swift_storeEnumTagMultiPayload();
    v140(v148, 0, 1, v141);
  }

  else
  {
    v189 = &v138[v135];
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v223 = v139;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    v143 = swift_getObjCClassFromMetadata();
    v144 = [objc_opt_self() bundleForClass_];
    (*(v180 + 16))(v179, v211, v169);
    v145 = sub_1E65E5D48();
    v146 = v189;
    *v189 = v145;
    *(v146 + 1) = v147;
    swift_storeEnumTagMultiPayload();
    v140(v146, 0, 1, v142);
    if (v105 > 0)
    {
      v138[2 * v135] = 0;
      swift_storeEnumTagMultiPayload();
      v140(&v138[2 * v135], 0, 1, v142);
      v148 = &v138[3 * v135];
      v141 = v142;
      goto LABEL_66;
    }

    v140(&v138[2 * v135], 1, 1, v142);
    v148 = &v138[3 * v135];
    v141 = v142;
LABEL_68:
    v140(v148, 1, 1, v141);
  }

  v152 = v192;
  v153 = (v203 + 48);
  v154 = MEMORY[0x1E69E7CC0];
  v155 = 4;
  v156 = v138;
  v157 = v200;
  do
  {
    sub_1E6016AF4(v156, v157);
    sub_1E6016B64(v157, v152);
    if ((*v153)(v152, 1, v141) == 1)
    {
      sub_1E6016BD4(v152);
    }

    else
    {
      sub_1E6016C3C(v152, v201, MEMORY[0x1E69CD300]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_1E64F6308(0, v154[2] + 1, 1, v154);
      }

      v159 = v154[2];
      v158 = v154[3];
      if (v159 >= v158 >> 1)
      {
        v154 = sub_1E64F6308((v158 > 1), v159 + 1, 1, v154);
      }

      v154[2] = v159 + 1;
      sub_1E6016C3C(v201, v154 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v159, MEMORY[0x1E69CD300]);
      v141 = v215;
      v152 = v192;
    }

    v156 += v135;
    --v155;
  }

  while (v155);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v7 = v199;
  (*(v199 + 16))(v193, v194, v213);
  sub_1E60169E8(v219, v195);
  v104 = v202;
  (*(v202 + 16))(v212, v221, v214);
  v160 = sub_1E65D80A8();
  v222 = v220;
  sub_1E5FA9E2C(v160);
  sub_1E5FA9E2C(v154);
  v130 = v204;
  sub_1E63C4134(v211, v210, v222, v204);

  if (qword_1EE2D7248 != -1)
  {
    goto LABEL_82;
  }

LABEL_79:
  __swift_project_value_buffer(v171, qword_1EE2EA208);
  v161 = v206;
  v162 = v208;
  v176(v206, v174, v208);
  v163 = v207;
  sub_1E65D73C8();
  v173(v161, v162);
  v175(v130, v163);
  sub_1E65E0738();
  sub_1E65D76E8();
  sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v164 = MEMORY[0x1E69CC888];
  sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6016A4C(&qword_1EE2D7030, v164, MEMORY[0x1E69CC890]);
  sub_1E6016A4C(&qword_1EE2D7028, v164, MEMORY[0x1E69CC898]);
  v115 = v216;
  v165 = v213;
  sub_1E65DF698();
  (*(v184 + 8))(v183, v185);
  (*(v104 + 8))(v221, v214);
  sub_1E6016A94(v219, type metadata accessor for ArtworkDescriptor);
  (*(v7 + 8))(v194, v165);
LABEL_36:
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  return (*(*(v117 - 8) + 56))(v115, 0, 1, v117);
}

uint64_t sub_1E60169E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6016A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6016AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6016C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6016CA4(uint64_t a1)
{
  v37 = sub_1E65D9CC8();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E601C17C(0, v5, 0);
    v40 = v41;
    v7 = a1 + 56;
    result = sub_1E65E6748();
    v8 = result;
    v9 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v5;
    v32 = v3;
    v33 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v12 = *(a1 + 36);
      v38 = v9;
      v39 = v12;
      v13 = v36;
      v14 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v8, v37);
      v15 = sub_1E65D9C98();
      v17 = v16;
      result = (*(v3 + 8))(v13, v14);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1E601C17C((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 24 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      *(v21 + 48) = 1;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v33;
      v22 = *(v33 + 8 * v11);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (v30 + 8 * v11);
        v3 = v32;
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1E5F87098(v8, v39, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v8, v39, 0);
      }

LABEL_4:
      v9 = v38 + 1;
      v8 = v10;
      if (v38 + 1 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_1E6016FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1E601704C;

  return sub_1E60177FC(a1);
}

uint64_t sub_1E601704C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1E6017370;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1E6017178;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6017178()
{
  v14 = v0;
  v0[7] = v0[6];
  v1 = v0[2];
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[8] = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v0[2];
    v6 = sub_1E64F7254(v4, 0);
    v7 = *(sub_1E65D9CC8() - 8);
    v11 = sub_1E6259470(&v13, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v4, v5);
    v8 = v13;

    result = sub_1E5E24EE4(v8);
    if (v11 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v0[9] = v6;
  v12 = (v2 + *v2);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1E6017568;

  return v12(20, v6);
}

uint64_t sub_1E6017370()
{
  v14 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  type metadata accessor for AppEnvironment(0);
  v3 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[8] = v4;
  v5 = *(v2 + 16);
  if (v5 && (v6 = v0[2], v1 = sub_1E64F7254(v5, 0), v7 = *(sub_1E65D9CC8() - 8), v11 = sub_1E6259470(&v13, &v1[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v6), v8 = v13, , result = sub_1E5E24EE4(v8), v11 != v5))
  {
    __break(1u);
  }

  else
  {
    v0[9] = v1;
    v12 = (v3 + *v3);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1E6017568;

    return v12(20, v1);
  }

  return result;
}

uint64_t sub_1E6017568(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1E6017784;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = sub_1E60176A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60176A0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3[2].i64[0] = v2;
  v4 = sub_1E6403608(sub_1E6018A74, v3, v1);

  v5 = sub_1E600AB4C(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1E6017784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60177FC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1E65DAEB8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_1E65D86C8();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_1E65D9CC8();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60179AC, 0, 0);
}

uint64_t sub_1E60179AC()
{
  v53 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = 1;
  v5 = ((1 << v2) + 63) >> 6;
  v6 = 8 * v5;

  v8 = v1;
  if (v3 <= 0xD)
  {
LABEL_2:
    v39[1] = v39;
    v40 = v5;
    v49 = v0;
    v0 = v0[18];
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v41 = v39 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v6);
    v42 = 0;
    v9 = 0;
    v47 = v0;
    v48 = v8;
    v5 = v8 + 56;
    v10 = v4 << *(v1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 56);
    v13 = (v10 + 63) >> 6;
    v45 = v0 + 1;
    v46 = v0 + 2;
    v44 = xmmword_1E65ECC30;
    v14 = v0;
    while (1)
    {
      if (!v12)
      {
        v16 = v9;
        while (1)
        {
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v9 >= v13)
          {
            goto LABEL_16;
          }

          v17 = *(v5 + 8 * v9);
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v51 = (v17 - 1) & v17;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v15 = __clz(__rbit64(v12));
      v51 = (v12 - 1) & v12;
LABEL_12:
      v18 = v15 | (v9 << 6);
      v0 = v49;
      v1 = v49[19];
      v50 = v49[17];
      v19 = *(v48 + 48);
      v20 = v14[9];
      v43 = v18;
      (v14[2])(v1, v19 + v20 * v18);
      v21 = sub_1E65D9CA8();
      v23 = v22;
      v0[2] = v21;
      v0[3] = v22;
      v6 = v24 & 1;
      *(v0 + 32) = v24 & 1;
      *(v0 + 5) = v44;
      *(v0 + 56) = 1;
      sub_1E6018A94();
      sub_1E6018AE8();
      v4 = sub_1E65D7FD8();
      sub_1E5FEE4CC(v21, v23, v6);
      (v14[1])(v1, v50);
      v12 = v51;
      if (v4)
      {
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    v0 = v49;
    v26 = sub_1E60881E4(v41, v40, v42, v49[8]);
    if (!*(v26 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_21:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v8 = v0[8];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v35 = swift_slowAlloc();
  v36 = sub_1E60189E4(v35, v5, v8, sub_1E6018930, 0);
  MEMORY[0x1E694F1C0](v35, -1, -1);
  v26 = v36;
  if (v36[2])
  {
LABEL_17:
    v27 = v26;
    type metadata accessor for AppEnvironment(0);
    v28 = BookmarkService.filterPlaylists.getter();
    v0[20] = v29;
    v30 = sub_1E6016CA4(v27);

    sub_1E600AAA0(v30);

    sub_1E65D86B8();
    v51 = v28 + *v28;
    v31 = swift_task_alloc();
    v0[21] = v31;
    *v31 = v0;
    v31[1] = sub_1E6017EEC;
    v32 = v0[16];
    v33 = v51;

    return v33(v32);
  }

LABEL_23:

  v37 = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);

  v38 = v0[1];

  return v38(v37);
}

uint64_t sub_1E6017EEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  (*(v3[15] + 8))(v3[16], v3[14]);

  if (v1)
  {
    v5 = sub_1E6018480;
  }

  else
  {
    v5 = sub_1E60180AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60180AC()
{
  v1 = v0[22];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[22] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = 63 - v6;
  v9 = v0[11];
  v10 = v8 >> 6;
  v44 = (v9 + 8);
  v45 = v9;
  v46 = v0[22];
  v40 = (v9 + 40);
  v41 = (v9 + 32);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v42 = v10;
  v43 = v3;
  v48 = v0;
  while (v7)
  {
    v14 = v11;
LABEL_11:
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[10];
    v47 = *(v45 + 72);
    v18 = *(v45 + 16);
    v18(v15, *(v46 + 48) + v47 * (__clz(__rbit64(v7)) | (v14 << 6)), v17);
    v19 = sub_1E65DAE48();
    v21 = v20;
    v18(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v12;
    v23 = sub_1E6215038(v19, v21);
    v25 = v12[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_27;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v23;
        sub_1E6424318();
        v23 = v37;
      }
    }

    else
    {
      sub_1E641B0E4(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1E6215038(v19, v21);
      if ((v29 & 1) != (v30 & 1))
      {

        return sub_1E65E6C68();
      }
    }

    v7 &= v7 - 1;
    v32 = v48[12];
    v31 = v48[13];
    v33 = v48[10];
    if (v29)
    {
      v13 = v23;

      v12 = v49;
      (*v40)(v49[7] + v13 * v47, v32, v33);
      (*v44)(v31, v33);
    }

    else
    {
      v12 = v49;
      v49[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v49[6] + 16 * v23);
      *v34 = v19;
      v34[1] = v21;
      (*v41)(v49[7] + v23 * v47, v32, v33);
      (*v44)(v31, v33);
      v35 = v49[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v49[2] = v36;
    }

    v11 = v14;
    v0 = v48;
    v10 = v42;
    v3 = v43;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v14 >= v10)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v38 = v0[1];

  return v38(v12);
}

uint64_t sub_1E6018480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6018538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v35 = a3;
  v36 = a1;
  v34 = a5;
  v37 = sub_1E65D7848();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_1E65D9AC8();
  v30 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31 = a2;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v16);
  sub_1E5DFE50C(v9, &qword_1ED072E78, &qword_1E65ECC50);
  v20 = v13;
  v21 = v17;
  v22 = v30;
  (*(v11 + 8))(v20, v10);
  v23 = *(v22 + 48);
  if (v23(v16, 1, v21) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v23(v16, 1, v21) != 1)
    {
      sub_1E5DFE50C(v16, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v22 + 32))(v19, v16, v21);
  }

  swift_getKeyPath();
  v24 = v32;
  sub_1E65E4EC8();

  v25 = v35;
  v26 = *(v35 + 8);
  v27 = type metadata accessor for AppEnvironment(0);
  sub_1E6014C00(v24, v26, v19, v38, (v25 + *(v27 + 136)), v34);
  (*(v33 + 8))(v24, v37);
  return (*(v22 + 8))(v19, v21);
}

uint64_t sub_1E6018930(uint64_t a1)
{
  v1 = sub_1E65D9CA8();
  v3 = v2;
  v5 = v4 & 1;
  sub_1E6018A94();
  sub_1E6018AE8();
  v6 = sub_1E65D7FD8();
  sub_1E5FEE4CC(v1, v3, v5);
  return v6 & 1;
}

void *sub_1E60189E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1E60654D8(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t sub_1E6018A94()
{
  result = qword_1EE2D7088;
  if (!qword_1EE2D7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7088);
  }

  return result;
}

unint64_t sub_1E6018AE8()
{
  result = qword_1EE2D7080;
  if (!qword_1EE2D7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7080);
  }

  return result;
}

uint64_t sub_1E6018B3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1E6018E84;
  *(v1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E88, &qword_1E65ECCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1E60190A0;
  *(inited + 88) = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1E60190BC;
  *(v4 + 24) = 0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1E65EA670;
  *(v5 + 32) = v3;
  *(v5 + 72) = 0;
  *(v5 + 80) = sub_1E60193EC;
  *(v5 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E90, &qword_1E65ECCE8);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1E65EB9E0;
  *(v6 + 32) = inited;
  *(v6 + 40) = v5;
  v7 = sub_1E608E898(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E98, &qword_1E65ECCF0);
  swift_arrayDestroy();
  v8 = sub_1E608E9CC(v7);

  return v8;
}

uint64_t sub_1E6018D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072EA8, &qword_1E65ECD08);
  sub_1E60190C0(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1E6019124(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_1E65E0818();
  a3[3] = v9;
  result = sub_1E6019398(&qword_1EE2D6570, &qword_1ED072EA8, &qword_1E65ECD08);
  a3[4] = result;
  *a3 = v12;
  return result;
}

uint64_t sub_1E6018E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072EA0, &qword_1E65ECCF8);
  sub_1E60190C0(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1E6019124(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_1E65E0818();
  a3[3] = v9;
  result = sub_1E6019398(&qword_1EE2D6568, &qword_1ED072EA0, &qword_1E65ECCF8);
  a3[4] = result;
  *a3 = v12;
  return result;
}

uint64_t sub_1E6018FFC@<X0>(void (*a1)(void *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E60190C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6019124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6019188(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E60848C0(a1, v1 + v5, v6);
}

uint64_t sub_1E6019290(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FE99E8;

  return sub_1E6016FAC(a1, v1 + v5, v6);
}

uint64_t sub_1E6019398(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1E6019530()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E601957C(uint64_t a1)
{
  v46 = sub_1E65DA078();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65E1D38();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601BCD4(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65DA058();
      sub_1E65DA068();
      v21 = v41;
      sub_1E65E1D08();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601BCD4((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_1E601995C(uint64_t a1)
{
  v46 = sub_1E65E1D38();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65DA078();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v41 = v7;
    v33[1] = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601BD18(0, v8, 0);
    v49 = v50;
    v10 = a1 + 56;
    result = sub_1E65E6748();
    v11 = v3;
    v12 = result;
    v13 = 0;
    v42 = v5;
    v43 = v11;
    v39 = v11 + 8;
    v40 = v11 + 16;
    v37 = a1;
    v38 = v5 + 32;
    v34 = a1 + 64;
    v35 = v8;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v47 = v13;
      v48 = v16;
      v17 = v43;
      v18 = *(a1 + 48) + *(v43 + 72) * v12;
      v19 = v45;
      v20 = v46;
      (*(v43 + 16))(v45, v18, v46);
      sub_1E65E1D18();
      sub_1E65E1D28();
      v21 = v41;
      sub_1E65DA048();
      (*(v17 + 8))(v19, v20);
      v22 = v49;
      v50 = v49;
      v24 = *(v49 + 16);
      v23 = *(v49 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601BD18((v23 > 1), v24 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v49 = v22;
      result = (*(v42 + 32))(v22 + v25 + *(v42 + 72) * v24, v21, v44);
      a1 = v37;
      v14 = 1 << *(v37 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v36;
      v26 = *(v36 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v48 != *(v37 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v34 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5F87098(v12, v48, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v12, v48, 0);
      }

LABEL_4:
      v13 = v47 + 1;
      v12 = v14;
      if (v47 + 1 == v35)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_1E6019D3C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F20, &qword_1E65ECD38);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - v4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1E65E1DC8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v27 = sub_1E65E1E08();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v2;
  sub_1E5E1DEAC(v2, v11);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v15 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1E5E1FA80(v11, v17 + v15);
  v18 = (v17 + v16);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  sub_1E5E1DEAC(v2, v9);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v9, v20 + v15);

  sub_1E65E1DB8();
  sub_1E65E1DF8();
  type metadata accessor for AppFeature(0);
  sub_1E601B218(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E601B218(qword_1EE2D63C8, MEMORY[0x1E699F028], MEMORY[0x1E699F020]);
  v21 = v30;
  v22 = v27;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v23 = sub_1E65E4F08();
  (*(v31 + 8))(v21, v32);
  (*(v29 + 8))(v14, v22);
  return v23;
}

uint64_t sub_1E601A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_1E65DB718();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for RouteDestination(0);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E601A24C, 0, 0);
}

uint64_t sub_1E601A24C()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[13];
  v0[29] = v1;
  if (v1 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v2 = sub_1E65E3B68();
    __swift_project_value_buffer(v2, qword_1EE2EA2A0);
    v3 = sub_1E65E3B48();
    v4 = sub_1E65E6328();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1E5DE9000, v3, v4, "[SiriSessionComposer] Failed to get the currently selected root item", v5, 2u);
      MEMORY[0x1E694F1C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v0[30] = v8;
    v0[14] = v8;
    v0[15] = v1;
    sub_1E65E6058();
    v0[31] = sub_1E65E6048();
    v10 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E601A42C, v10, v9);
  }
}

uint64_t sub_1E601A42C()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[22];

  v3(v0 + 14);
  sub_1E5E07DA0(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E601A4C0, 0, 0);
}

uint64_t sub_1E601A4C0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 224);
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = *(v0 + 216);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    sub_1E65E1D88();
    v5 = sub_1E65E1D68();
    v6 = sub_1E601995C(v5);

    sub_1E600A28C(v6);

    sub_1E65E1D98();
    sub_1E65DB6D8();
    (*(v3 + 16))(v1, v2, v16);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    (*(v3 + 8))(v2, v16);
    *(v1 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 128);
    v7 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v7;
    sub_1E600F5B0((v0 + 137));
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_1E601A7F4;
    v9 = *(v0 + 224);

    return RoutingContext.presentDestination(_:style:priority:)(v9, (v0 + 144), (v0 + 137), v4, v18);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v11 = sub_1E65E3B68();
    __swift_project_value_buffer(v11, qword_1EE2EA2A0);
    v12 = sub_1E65E3B48();
    v13 = sub_1E65E6328();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E5DE9000, v12, v13, "[SiriSessionComposer] Failed to get routing context", v14, 2u);
      MEMORY[0x1E694F1C0](v14, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E601A7F4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
    sub_1E60111F8(v3);
    v4 = sub_1E601A9B0;
  }

  else
  {
    v5 = *(v2 + 224);
    sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
    sub_1E60111F8(v5);
    v4 = sub_1E601A938;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E601A938()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E601A9B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E601AA2C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E601A158(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E601AB44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F28, &qword_1E65ECD60);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E601ABE4, 0, 0);
}

uint64_t sub_1E601ABE4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SiriService.makeSiriBeginSessionRequestedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E601AD00;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E601AD00()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E601AE30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E601AE30()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F30, &qword_1E65ECD70);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44A8, &qword_1ED072F30, &qword_1E65ECD70, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65E1DA8();
  sub_1E5FED46C(&qword_1EE2D4790, &qword_1ED072F28, &qword_1E65ECD60, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E601AF70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E601AB44(a1, v1 + v5);
}

uint64_t sub_1E601B04C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E601B06C, 0, 0);
}

uint64_t sub_1E601B06C()
{
  sub_1E65DB6E8();
  v1 = sub_1E65DB6C8();
  v2 = sub_1E601957C(v1);

  sub_1E600A0F0(v2);

  sub_1E65DB6F8();
  sub_1E65E1D78();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E601B138(uint64_t a1)
{
  v2 = sub_1E65E1D58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E1DD8();
  v6 = type metadata accessor for AppState(0);
  return (*(v3 + 40))(a1 + *(v6 + 288), v5, v2);
}

uint64_t sub_1E601B218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E601B260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED074320, &unk_1E65EA730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E601B2C8(uint64_t a1)
{
  v3 = sub_1E65E0B48();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D9758();
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v28[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1E601BDE0(0, v8, 0);
  v9 = v37;
  v10 = a1 + 56;
  result = sub_1E65E6748();
  v12 = result;
  v13 = 0;
  v29 = a1 + 64;
  v30 = v8;
  v31 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(a1 + 36);
    v35 = v13;
    v36 = v17;
    v18 = v33;
    sub_1E5FC55E8(*(a1 + 48) + *(v34 + 72) * v12, v33);
    sub_1E5FC52C8(v7);
    sub_1E601B6C4(v18);
    v37 = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601BDE0((v19 > 1), v20 + 1, 1);
      v9 = v37;
    }

    *(v9 + 16) = v20 + 1;
    result = sub_1E601B720(v7, v9 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v10 = v31;
    v21 = *(v31 + 8 * v16);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v15 = v30;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v15 = v30;
      v25 = (v29 + 8 * v16);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v12, v36, 0);
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v15)
    {
      return v9;
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
  return result;
}

uint64_t sub_1E601B608()
{
  v0 = sub_1E65E0EB8();
  v1 = sub_1E601B2C8(v0);

  sub_1E600A6B8(v1);

  v2 = sub_1E65E0EC8();
  v3 = sub_1E601B2C8(v2);

  sub_1E600A6B8(v3);

  sub_1E65E0ED8();

  return sub_1E65D8038();
}

uint64_t sub_1E601B6C4(uint64_t a1)
{
  v2 = sub_1E65E0B48();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E601B720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D9758();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImpressionsTracker.consumeImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69AB238];

  return sub_1E601B86C(a1, a2, a3, v3, "Error serializing impressions: %{public}s");
}

uint64_t ImpressionsTracker.snapshotOnScreenImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69AB230];

  return sub_1E601B86C(a1, a2, a3, v3, "Error serializing impression snapshot: %{public}s");
}

uint64_t sub_1E601B86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t), const char *a5)
{
  v42 = a5;
  v50[4] = *MEMORY[0x1E69E9840];
  v9 = sub_1E65E3B68();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E5158();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x1E69AB3E0], v11);
  v15 = a4(v14, a1, a2, a3);
  (*(v12 + 8))(v14, v11);
  v16 = *(v15 + 16);
  if (v16)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E601C1D4(0, v16, 0);
    v17 = v49;
    v18 = objc_opt_self();
    v19 = 0;
    for (i = v15 + 32; ; i += 32)
    {
      if (v19 >= *(v15 + 16))
      {
        __break(1u);
      }

      sub_1E5DFA11C(i, v50);
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      v21 = sub_1E65E6BF8();
      v48 = 0;
      v22 = [v18 dataWithJSONObject:v21 options:0 error:&v48];
      swift_unknownObjectRelease();
      v23 = v48;
      if (!v22)
      {
        break;
      }

      v24 = sub_1E65D7518();
      v26 = v25;

      __swift_destroy_boxed_opaque_existential_1(v50);
      v49 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1E601C1D4((v27 > 1), v28 + 1, 1);
        v17 = v49;
      }

      ++v19;
      *(v17 + 16) = v28 + 1;
      v29 = v17 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      if (v16 == v19)
      {

        return v17;
      }
    }

    v30 = v23;

    v31 = sub_1E65D73B8();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v50);

    v32 = v43;
    sub_1E65DE358();
    v33 = v31;
    v34 = sub_1E65E3B48();
    v35 = sub_1E65E6328();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 136446210;
      swift_getErrorValue();
      v38 = MEMORY[0x1E694E6D0](v46, v47);
      v40 = sub_1E5DFD4B0(v38, v39, v50);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1E5DE9000, v34, v35, v42, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E694F1C0](v37, -1, -1);
      MEMORY[0x1E694F1C0](v36, -1, -1);
    }

    (*(v44 + 8))(v32, v45);
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1E601BCD4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731A8, &qword_1E65ED000, MEMORY[0x1E699EFD8]);
  *v3 = result;
  return result;
}

void *sub_1E601BD18(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731B0, &qword_1E65ED008, MEMORY[0x1E69CCB30]);
  *v3 = result;
  return result;
}

void *sub_1E601BD5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D9BC(a1, a2, a3, *v3, &qword_1ED0730E0, &qword_1E65ECF38, &qword_1ED072938, &qword_1E65EC098);
  *v3 = result;
  return result;
}

void *sub_1E601BD9C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073190, &qword_1E65ECFE8, MEMORY[0x1E69CCC28]);
  *v3 = result;
  return result;
}

void *sub_1E601BDE0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730B8, &qword_1E65ECF10, MEMORY[0x1E69CC2A8]);
  *v3 = result;
  return result;
}

void *sub_1E601BE24(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073010, &qword_1E65ECE68, &qword_1ED0720A8, &qword_1E65EA790);
  *v3 = result;
  return result;
}

void *sub_1E601BE64(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FF0, &qword_1E65ECE48, &qword_1ED072FF8, &qword_1E65ECE50);
  *v3 = result;
  return result;
}

void *sub_1E601BEA4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0730C0, &qword_1E65ECF18, &qword_1ED0730C8, &qword_1E65ECF20);
  *v3 = result;
  return result;
}

char *sub_1E601BEE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601BF04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D31C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E601BF24(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072F68, &qword_1E65ECDC8, &qword_1ED072088, &qword_1E65EA770);
  *v3 = result;
  return result;
}

void *sub_1E601BF64(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073208, &qword_1E65ED060, MEMORY[0x1E699E1B8]);
  *v3 = result;
  return result;
}

void *sub_1E601BFA8(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072FC0, &qword_1E65ECE18, type metadata accessor for ItemContext);
  *v3 = result;
  return result;
}

void *sub_1E601BFEC(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732B0, &qword_1E65ED108, MEMORY[0x1E699E1A0]);
  *v3 = result;
  return result;
}

void *sub_1E601C030(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732A8, &qword_1E65ED100, MEMORY[0x1E699D350]);
  *v3 = result;
  return result;
}

void *sub_1E601C074(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732A0, &qword_1E65ED0F8, MEMORY[0x1E699D300]);
  *v3 = result;
  return result;
}

char *sub_1E601C0B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E601C0D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D52C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E601C0F8(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073270, &qword_1E65ED0C8, &qword_1ED073278, &qword_1E65ED0D0);
  *v3 = result;
  return result;
}

void *sub_1E601C138(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073268, &qword_1E65ED0C0, MEMORY[0x1E699F1B0]);
  *v3 = result;
  return result;
}

char *sub_1E601C17C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED0731D8, &qword_1E65ED030, MEMORY[0x1E69CC5A8]);
  *v3 = result;
  return result;
}

void *sub_1E601C1B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601C1D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601C1F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FE8, &qword_1E65ECE40);
  *v3 = result;
  return result;
}

void *sub_1E601C224(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073210, &qword_1E65ED068, &qword_1ED073218, &qword_1E65ED070);
  *v3 = result;
  return result;
}

void *sub_1E601C264(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731B8, &qword_1E65ED010, &qword_1ED0731C0, &qword_1E65ED018);
  *v3 = result;
  return result;
}

void *sub_1E601C2A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D9BC(a1, a2, a3, *v3, &qword_1ED072F38, &qword_1E65ECDA0, &qword_1ED072080, &qword_1E65EA768);
  *v3 = result;
  return result;
}

void *sub_1E601C2E4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073148, &qword_1E65ECFA0, MEMORY[0x1E699F598]);
  *v3 = result;
  return result;
}

void *sub_1E601C328(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073158, &qword_1E65ECFB0, MEMORY[0x1E699F3D8]);
  *v3 = result;
  return result;
}

void *sub_1E601C36C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073160, &qword_1E65ECFB8, MEMORY[0x1E699F3C0]);
  *v3 = result;
  return result;
}

void *sub_1E601C3B0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073168, &qword_1E65ECFC0, MEMORY[0x1E699F520]);
  *v3 = result;
  return result;
}

void *sub_1E601C3F4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073170, &qword_1E65ECFC8, MEMORY[0x1E699F608]);
  *v3 = result;
  return result;
}

void *sub_1E601C438(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073178, &qword_1E65ECFD0, MEMORY[0x1E699F5B0]);
  *v3 = result;
  return result;
}

void *sub_1E601C47C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073180, &qword_1E65ECFD8, MEMORY[0x1E699F5F0]);
  *v3 = result;
  return result;
}

void *sub_1E601C4C0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073150, &qword_1E65ECFA8, MEMORY[0x1E699F550]);
  *v3 = result;
  return result;
}

void *sub_1E601C504(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073140, &qword_1E65ECF98, MEMORY[0x1E699F580]);
  *v3 = result;
  return result;
}

char *sub_1E601C548(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED073220, &qword_1E65ED078);
  *v3 = result;
  return result;
}

void *sub_1E601C578(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073248, &qword_1E65ED0A0, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

void *sub_1E601C5BC(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073238, &qword_1E65ED090, MEMORY[0x1E699E5F0]);
  *v3 = result;
  return result;
}

char *sub_1E601C600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED072F40, &qword_1E65ECDA8, MEMORY[0x1E69CCA30]);
  *v3 = result;
  return result;
}

char *sub_1E601C638(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED073230, &qword_1E65ED088, MEMORY[0x1E69CC3D8]);
  *v3 = result;
  return result;
}

void *sub_1E601C670(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073018, &qword_1E65ECE70, &qword_1ED0720A0, &qword_1E65EA788);
  *v3 = result;
  return result;
}

void *sub_1E601C6B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED0730D0, &qword_1E65ECF28, &qword_1ED0730D8, &qword_1E65ECF30);
  *v3 = result;
  return result;
}

void *sub_1E601C6F0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073120, &qword_1E65ECF78, MEMORY[0x1E699EB30]);
  *v3 = result;
  return result;
}

void *sub_1E601C734(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073128, &qword_1E65ECF80, MEMORY[0x1E699EAE0]);
  *v3 = result;
  return result;
}

void *sub_1E601C778(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073130, &qword_1E65ECF88, MEMORY[0x1E699EAE8]);
  *v3 = result;
  return result;
}

char *sub_1E601C7BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FE0, &qword_1E65ECE38);
  *v3 = result;
  return result;
}

void *sub_1E601C7EC(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FD0, &qword_1E65ECE28, &qword_1ED072FD8, &qword_1E65ECE30);
  *v3 = result;
  return result;
}

void *sub_1E601C82C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073020, &qword_1E65ECE78, &qword_1ED073028, &qword_1E65ECE80);
  *v3 = result;
  return result;
}

void *sub_1E601C86C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F70, &qword_1E65ECDD0, MEMORY[0x1E69CD090]);
  *v3 = result;
  return result;
}

void *sub_1E601C8B0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072F78, &qword_1E65ECDD8, &qword_1ED072F80, &qword_1E65ECDE0);
  *v3 = result;
  return result;
}

void *sub_1E601C8F0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073188, &qword_1E65ECFE0, MEMORY[0x1E69CCF28]);
  *v3 = result;
  return result;
}

void *sub_1E601C934(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073040, &qword_1E65ECE98, MEMORY[0x1E699DD40]);
  *v3 = result;
  return result;
}

void *sub_1E601C978(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DD34(a1, a2, a3, *v3, &qword_1ED073030, &qword_1E65ECE88, &qword_1ED073038, &qword_1E65ECE90);
  *v3 = result;
  return result;
}

void *sub_1E601C9B8(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073118, &qword_1E65ECF70, MEMORY[0x1E69CBBF0]);
  *v3 = result;
  return result;
}

char *sub_1E601C9FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601D8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E601CA1C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731F8, &qword_1E65ED050, &qword_1ED073200, &qword_1E65ED058);
  *v3 = result;
  return result;
}

void *sub_1E601CA5C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073288, &qword_1E65ED0E0, MEMORY[0x1E699F458]);
  *v3 = result;
  return result;
}

char *sub_1E601CAA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED073280, &qword_1E65ED0D8, MEMORY[0x1E699F540]);
  *v3 = result;
  return result;
}

void *sub_1E601CAD8(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F90, &qword_1E65ECDF0, MEMORY[0x1E69CC9E0]);
  *v3 = result;
  return result;
}

char *sub_1E601CB1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED072F88, &qword_1E65ECDE8, MEMORY[0x1E69CD128]);
  *v3 = result;
  return result;
}

void *sub_1E601CB54(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072FC8, &qword_1E65ECE20, MEMORY[0x1E699D568]);
  *v3 = result;
  return result;
}

void *sub_1E601CB98(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FB8, &qword_1E65ECE10, &qword_1ED072090, &qword_1E65EA778);
  *v3 = result;
  return result;
}

void *sub_1E601CBD8(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731E8, &qword_1E65ED040, &qword_1ED0731F0, &qword_1E65ED048);
  *v3 = result;
  return result;
}

void *sub_1E601CC18(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073060, &qword_1E65ECEB8, MEMORY[0x1E699DF68]);
  *v3 = result;
  return result;
}

void *sub_1E601CC5C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073068, &qword_1E65ECEC0, MEMORY[0x1E699DDD0]);
  *v3 = result;
  return result;
}

void *sub_1E601CCA0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073070, &qword_1E65ECEC8, MEMORY[0x1E699DD90]);
  *v3 = result;
  return result;
}

void *sub_1E601CCE4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073078, &qword_1E65ECED0, MEMORY[0x1E699DFF0]);
  *v3 = result;
  return result;
}

void *sub_1E601CD28(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073080, &qword_1E65ECED8, MEMORY[0x1E699DEE8]);
  *v3 = result;
  return result;
}

void *sub_1E601CD6C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073088, &qword_1E65ECEE0, MEMORY[0x1E699E070]);
  *v3 = result;
  return result;
}

void *sub_1E601CDB0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073090, &qword_1E65ECEE8, MEMORY[0x1E699DFB0]);
  *v3 = result;
  return result;
}

void *sub_1E601CDF4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730A0, &qword_1E65ECEF8, MEMORY[0x1E699DE78]);
  *v3 = result;
  return result;
}

void *sub_1E601CE38(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730A8, &qword_1E65ECF00, MEMORY[0x1E699E030]);
  *v3 = result;
  return result;
}

void *sub_1E601CE7C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073098, &qword_1E65ECEF0, MEMORY[0x1E699DF10]);
  *v3 = result;
  return result;
}

void *sub_1E601CEC0(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073058, &qword_1E65ECEB0, MEMORY[0x1E699DF40]);
  *v3 = result;
  return result;
}

void *sub_1E601CF04(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730B0, &qword_1E65ECF08, MEMORY[0x1E699DEE0]);
  *v3 = result;
  return result;
}

void *sub_1E601CF48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073048, &qword_1E65ECEA0, &qword_1ED073050, &qword_1E65ECEA8);
  *v3 = result;
  return result;
}

void *sub_1E601CF88(void *a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0730F8, &qword_1E65ECF50, &qword_1ED073100, &qword_1E65ECF58);
  *v3 = result;
  return result;
}

void *sub_1E601CFC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DD34(a1, a2, a3, *v3, &qword_1ED072F48, &qword_1E65ECDB0, &qword_1ED072F50, &qword_1E65ECDB8);
  *v3 = result;
  return result;
}

void *sub_1E601D008(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730F0, &qword_1E65ECF48, MEMORY[0x1E699EE88]);
  *v3 = result;
  return result;
}

void *sub_1E601D04C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730E8, &qword_1E65ECF40, MEMORY[0x1E699EEF0]);
  *v3 = result;
  return result;
}

void *sub_1E601D090(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073198, &qword_1E65ECFF0, MEMORY[0x1E69CCFD8]);
  *v3 = result;
  return result;
}

void *sub_1E601D0D4(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F60, &qword_1E660F170, MEMORY[0x1E69CB2E0]);
  *v3 = result;
  return result;
}

void *sub_1E601D118(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731A0, &qword_1E65ECFF8, MEMORY[0x1E69CCEC8]);
  *v3 = result;
  return result;
}

void *sub_1E601D15C(void *a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F58, &qword_1E65ECDC0, MEMORY[0x1E699F190]);
  *v3 = result;
  return result;
}

char *sub_1E601D1A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FA8, &qword_1E65ECE00);
  *v3 = result;
  return result;
}

void *sub_1E601D1D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073000, &qword_1E65ECE58, &qword_1ED073008, &qword_1E65ECE60);
  *v3 = result;
  return result;
}

char *sub_1E601D210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073138, &qword_1E65ECF90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FA0, &qword_1E65ECDF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E601D52C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073290, &qword_1E65ED0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073298, &qword_1E65ED0F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E601D660(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C8, &qword_1E65ED020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731D0, &qword_1E65ED028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E601D7A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073260, &qword_1E65ED0B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D8B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073250, &qword_1E65ED0A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E601D9BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E601DBA0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1E601DD34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E601DE90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1E601DF7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1E601E0F8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E65DB378();
}

uint64_t sub_1E601E164(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  return sub_1E65DB378();
}

uint64_t sub_1E601E1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  __swift_allocate_value_buffer(v0, qword_1ED0961D0);
  __swift_project_value_buffer(v0, qword_1ED0961D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601E2AC@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v79 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v60 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v70 = *(v67 - 8);
  v10 = MEMORY[0x1EEE9AC00](v67);
  v68 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = v60 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v83 = *(v80 - 8);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v66 = v60 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v76 = v60 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = v60 - v19;
  v20 = sub_1E65E1C68();
  v21 = *(v20 - 8);
  v81 = v20;
  v82 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v60 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E8, &qword_1E65ED1A8);
  v72 = *(v27 - 8);
  v73 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v65 = v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v71 = v60 - v30;
  if (qword_1ED071898 != -1)
  {
    swift_once();
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  v62 = __swift_project_value_buffer(v63, qword_1ED096128);
  sub_1E65DB2F8();
  v31 = sub_1E65E1CA8();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  sub_1E65DB2F8();
  v32 = MEMORY[0x1E69E67B0];
  sub_1E65DB348();
  v33 = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198, MEMORY[0x1E69E8280]);
  MEMORY[0x1E6942CC0](v4, v1, v33);
  v61 = v26;
  v34 = *(v79 + 1);
  v34(v4, v1);
  sub_1E65DB2C8();
  v34(v6, v1);
  v64 = MEMORY[0x1E69E9290];
  v35 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v36 = v66;
  v37 = v80;
  v60[1] = v35;
  sub_1E65E1C48();
  v38 = *(v83 + 8);
  v83 += 8;
  v38(v15, v37);
  v39 = v38;
  v60[0] = v38;
  v40 = *(v82 + 8);
  v82 += 8;
  v79 = v40;
  v40(v24, v81);
  sub_1E6021860(v9);
  v41 = v68;
  MEMORY[0x1E6942D60](v36, v32);
  v42 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0, MEMORY[0x1E69E8290]);
  v43 = v69;
  v44 = v67;
  MEMORY[0x1E6942CC0](v41, v67, v42);
  v45 = *(v70 + 8);
  v45(v41, v44);
  v46 = v76;
  sub_1E65DB2C8();
  v45(v43, v44);
  sub_1E65DB368();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v48 = v74;
  v70 = v47;
  v49 = v61;
  sub_1E65E1C38();
  v39(v46, v37);
  v79(v49, v81);
  v50 = v65;
  MEMORY[0x1E6942D30](v48, v47);
  v51 = sub_1E5FED46C(&qword_1ED073400, &qword_1ED0733E8, &qword_1E65ED1A8, MEMORY[0x1E69E8278]);
  v52 = v71;
  v53 = v73;
  MEMORY[0x1E6942CC0](v50, v73, v51);
  v72 = *(v72 + 8);
  (v72)(v50, v53);
  v84 = 3092282;
  v85 = 0xE300000000000000;
  v54 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v86, &v84, MEMORY[0x1E69E6158], v54);
  sub_1E65DB2C8();
  v55 = v86[0];
  v56 = v86[1];
  sub_1E65DB2F8();
  v84 = v55;
  v85 = v56;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, v64);
  v57 = v77;
  v58 = v80;
  sub_1E65E1BE8();
  (v60[0])(v46, v58);
  v79(v49, v81);
  (*(v75 + 8))(v48, v57);
  return (v72)(v52, v53);
}

uint64_t sub_1E601EC50@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = v29 - v2;
  v37 = sub_1E65E1C68();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v38 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v35 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - v9;
  v11 = sub_1E65DB308();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  sub_1E65E1C88();
  v18 = sub_1E60218C8();
  v32 = v17;
  MEMORY[0x1E6942CA0](v15, v11, v18);
  v19 = *(v12 + 8);
  v33 = v12 + 8;
  v34 = v19;
  v31 = v11;
  v19(v15, v11);
  v42 = 45;
  v43 = 0xE100000000000000;
  v20 = sub_1E602180C();
  v21 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CA0](v44, &v42, MEMORY[0x1E69E6158], v20);
  v40 = 43;
  v41 = 0xE100000000000000;
  MEMORY[0x1E6942CA0](&v42, &v40, v21, v20);
  v30 = v10;
  sub_1E65DB2A8();
  v40 = v44[0];
  v41 = v44[1];
  sub_1E65DB2F8();
  v29[1] = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198, MEMORY[0x1E69E8280]);
  v22 = MEMORY[0x1E69E67B0];
  v23 = v36;
  sub_1E65E1C08();
  v24 = *(v3 + 8);
  v25 = v37;
  v24(v5, v37);

  v26 = v35;
  MEMORY[0x1E6942D40](v23, v22);
  v40 = v42;
  v41 = v43;
  sub_1E65DB2F8();
  sub_1E65E1C08();
  v24(v5, v25);

  MEMORY[0x1E6942D40](v23, v22);
  v27 = *(v38 + 8);
  v27(v26, v6);
  v27(v30, v6);
  return v34(v32, v31);
}

uint64_t sub_1E601F0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  __swift_allocate_value_buffer(v0, qword_1ED0961E8);
  __swift_project_value_buffer(v0, qword_1ED0961E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601F194@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v38 = sub_1E65E1C68();
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v33 = *(v30 - 8);
  v9 = MEMORY[0x1EEE9AC00](v30);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  if (qword_1ED0718A0 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v14, qword_1ED096140);
  sub_1E65DB2F8();
  sub_1E601F720(v3);
  sub_1E65DB368();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v31 = MEMORY[0x1E69E9290];
  v32 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v26 = v1;
  v28 = v15;
  sub_1E65E1C28();
  v16 = *(v39 + 8);
  v39 += 8;
  v29 = v16;
  v16(v3, v1);
  v27 = v3;
  v34 = *(v34 + 8);
  (v34)(v8, v38);
  MEMORY[0x1E6942D30](v6, v15);
  v17 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180, MEMORY[0x1E69E8278]);
  v18 = v30;
  MEMORY[0x1E6942CC0](v11, v30, v17);
  v33 = *(v33 + 8);
  (v33)(v11, v18);
  v40 = 47;
  v41 = 0xE100000000000000;
  v19 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v42, &v40, MEMORY[0x1E69E6158], v19);
  sub_1E65DB2C8();
  v21 = v42[0];
  v20 = v42[1];
  sub_1E65DB2F8();
  v40 = v21;
  v41 = v20;
  v22 = v27;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, v31);
  v23 = v36;
  v24 = v26;
  sub_1E65E1BE8();
  v29(v22, v24);
  (v34)(v8, v38);
  (*(v35 + 8))(v6, v23);
  return (v33)(v13, v18);
}

uint64_t sub_1E601F720@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1E65E1C68();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v32 = *(v28 - 8);
  v3 = MEMORY[0x1EEE9AC00](v28);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = &v27 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v27 - v7;
  v8 = sub_1E65DB308();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733C8, &qword_1E65ED190);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  sub_1E65E1C88();
  sub_1E60218C8();
  sub_1E65DB318();
  v19 = sub_1E5FED46C(&qword_1ED0733D0, &qword_1ED0733C8, &qword_1E65ED190, MEMORY[0x1E69E8258]);
  v27 = v18;
  MEMORY[0x1E6942CC0](v16, v9, v19);
  v20 = *(v10 + 8);
  v20(v16, v9);
  sub_1E65E1C88();
  sub_1E65DB318();
  MEMORY[0x1E6942CC0](v13, v9, v19);
  v20(v13, v9);
  sub_1E65DB2C8();
  v21 = v31;
  sub_1E65DB2F8();
  sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v22 = v28;
  v23 = v29;
  sub_1E65E1C18();
  v24 = v30;
  sub_1E65E1C18();
  sub_1E65E1BE8();
  v25 = *(v32 + 8);
  v25(v24, v22);
  v25(v23, v22);
  (*(v34 + 8))(v21, v35);
  v25(v36, v22);
  v20(v16, v9);
  return (v20)(v27, v9);
}

uint64_t sub_1E601FBD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  __swift_allocate_value_buffer(v0, qword_1ED096200);
  __swift_project_value_buffer(v0, qword_1ED096200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601FCC8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_1E65E1C68();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v29 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  v22 = sub_1E65E1CA8();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  v23 = sub_1E65DB2F8();
  a1(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, MEMORY[0x1E69E9290]);
  v25 = v32;
  sub_1E65E1C58();
  (*(v33 + 8))(v6, v25);
  (*(v30 + 8))(v12, v31);
  sub_1E6021860(v15);
  MEMORY[0x1E6942CE0](v9, v24);
  v26 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170, MEMORY[0x1E69E8220]);
  MEMORY[0x1E6942CC0](v19, v16, v26);
  v27 = *(v29 + 8);
  v27(v19, v16);
  sub_1E65DB2C8();
  return (v27)(v21, v16);
}

uint64_t sub_1E60200D8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v47 - v2;
  v4 = sub_1E65DB308();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073398, &qword_1E65ED178);
  v57 = *(v49 - 8);
  v7 = MEMORY[0x1EEE9AC00](v49);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = v47 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v65 = *(v62 - 8);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v58 = v47 - v15;
  v16 = sub_1E65E1C68();
  v66 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v53 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v59 = v47 - v25;
  v67 = 63;
  v68 = 0xE100000000000000;
  v52 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v69, &v67, MEMORY[0x1E69E6158]);
  if (qword_1ED0718C8 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  v47[1] = __swift_project_value_buffer(v26, qword_1ED0961B8);
  v48 = v21;
  sub_1E65DB2F8();
  sub_1E65E1C78();
  v27 = sub_1E65E1CA8();
  (*(*(v27 - 8) + 56))(v3, 1, 1, v27);
  sub_1E65DB2F8();
  sub_1E60218C8();
  v28 = MEMORY[0x1E69E67B0];
  v29 = v56;
  sub_1E65E1BF8();
  v64 = *(v66 + 8);
  v66 += 8;
  v47[0] = v16;
  v64(v19, v16);
  sub_1E6021860(v3);
  (*(v55 + 8))(v6, v29);
  v30 = v50;
  MEMORY[0x1E6942CF0](v12, v28);
  v31 = sub_1E5FED46C(&qword_1ED0733B0, &qword_1ED073398, &qword_1E65ED178, MEMORY[0x1E69E8240]);
  v32 = v54;
  v33 = v49;
  MEMORY[0x1E6942CC0](v30, v49, v31);
  v34 = *(v57 + 8);
  v34(v30, v33);
  v35 = v51;
  sub_1E65DB2C8();
  v34(v32, v33);
  sub_1E65DB368();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v57 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v37 = v62;
  v38 = v58;
  v55 = v36;
  v39 = v48;
  sub_1E65E1C28();
  v40 = *(v65 + 8);
  v65 += 8;
  v56 = v40;
  v40(v35, v37);
  v64(v39, v16);
  v41 = v53;
  MEMORY[0x1E6942D30](v38, v36);
  v42 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180, MEMORY[0x1E69E8278]);
  v43 = v59;
  v44 = v61;
  MEMORY[0x1E6942CC0](v41, v61, v42);
  v60 = *(v60 + 8);
  (v60)(v41, v44);
  v67 = v69[0];
  v68 = v69[1];
  sub_1E65DB2C8();

  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E65E1BE8();
  v45 = v56;
  v56(v12, v37);
  v64(v39, v47[0]);
  v45(v35, v37);
  return (v60)(v43, v44);
}

uint64_t sub_1E6020960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  __swift_allocate_value_buffer(v0, qword_1ED096218);
  __swift_project_value_buffer(v0, qword_1ED096218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  sub_1E5FED46C(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6020A38@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v85 = *(v86 - 8);
  v1 = MEMORY[0x1EEE9AC00](v86);
  v83 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v106 = &v76 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v76 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v108 = *(v82 - 8);
  v6 = MEMORY[0x1EEE9AC00](v82);
  v99 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v76 - v8;
  v104 = sub_1E65E1C68();
  v107 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v15 = *(v100 - 8);
  v16 = MEMORY[0x1EEE9AC00](v100);
  v87 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v81 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v76 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v80 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v93 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v92 = &v76 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v91 = &v76 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v76 - v32;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v105 = v19;
  v102 = v15;
  v34 = __swift_project_value_buffer(v25, qword_1ED0961D0);
  v35 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, MEMORY[0x1E69E9290]);
  v94 = v33;
  v103 = v25;
  v89 = v35;
  MEMORY[0x1E6942CC0](v34, v25);
  v115 = 0xD000000000000011;
  v116 = 0x80000001E6611500;
  v36 = sub_1E602180C();
  v37 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v117, &v115, MEMORY[0x1E69E6158], v36);
  v113 = 47;
  v114 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v115, &v113, v37, v36);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v20, qword_1ED0961E8);
  v39 = MEMORY[0x1E69E9290];
  v40 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  v41 = v24;
  v42 = v40;
  v90 = v41;
  MEMORY[0x1E6942CC0](v38, v20, v40);
  v111 = 0x6269726373627573;
  v112 = 0xE900000000000065;
  v43 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](&v113, &v111, MEMORY[0x1E69E6158], v36);
  v44 = sub_1E65E1CA8();
  (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
  sub_1E65DB2F8();
  v109 = 47;
  v110 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v111, &v109, v43, v36);
  v101 = v20;
  v109 = v111;
  v110 = v112;
  v45 = v36;
  v46 = v99;
  v98 = v45;
  sub_1E65DB2C8();

  v47 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, v39);
  v48 = MEMORY[0x1E69E67B0];
  v49 = v82;
  v88 = v47;
  sub_1E65E1C58();
  v50 = v49;
  v99 = *(v108 + 8);
  v108 += 8;
  (v99)(v46, v49);
  v97 = *(v107 + 8);
  v107 += 8;
  v97(v11, v104);
  sub_1E6021860(v14);
  v51 = v87;
  MEMORY[0x1E6942CE0](v9, v48);
  v52 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138, MEMORY[0x1E69E8220]);
  v53 = v100;
  v78 = v52;
  MEMORY[0x1E6942CC0](v51, v100);
  v54 = *(v102 + 8);
  v102 += 8;
  v79 = v54;
  v54(v51, v53);
  if (qword_1ED0718E0 != -1)
  {
    swift_once();
  }

  v55 = v101;
  v56 = __swift_project_value_buffer(v101, qword_1ED096200);
  MEMORY[0x1E6942CC0](v56, v55, v42);
  sub_1E65DB2C8();
  v57 = v117[0];
  v58 = v117[1];
  sub_1E65DB2F8();
  v111 = v57;
  v112 = v58;
  sub_1E65E1C18();

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  sub_1E65E1BE8();
  (v99)(v9, v49);
  v97(v11, v104);
  v87 = v42;
  v59 = v115;
  v60 = v116;
  sub_1E65DB2F8();
  v111 = v59;
  v112 = v60;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  (v99)(v9, v49);
  v61 = v104;
  v62 = v97;
  v97(v11, v104);
  sub_1E65DB2F8();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v62(v11, v61);
  v64 = v113;
  v63 = v114;
  sub_1E65DB2F8();
  v111 = v64;
  v112 = v63;
  sub_1E65E1C18();

  v98 = sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0, MEMORY[0x1E69E9290]);
  v65 = v86;
  sub_1E65E1BE8();
  v66 = v99;
  (v99)(v9, v49);
  v67 = v97;
  v97(v11, v61);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  v68 = v83;
  sub_1E65E1BE8();
  v66(v9, v50);
  v67(v11, v61);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  v69 = v95;
  v70 = v101;
  sub_1E65E1BE8();
  v67(v11, v61);
  v71 = *(v85 + 8);
  v71(v68, v65);
  v71(v106, v65);
  v71(v96, v65);
  v72 = *(v80 + 8);
  v73 = v103;
  v72(v93, v103);
  v72(v92, v73);
  v72(v91, v73);
  v74 = *(v81 + 8);
  v74(v69, v70);
  v79(v105, v100);
  v74(v90, v70);
  return (v72)(v94, v73);
}

unint64_t sub_1E602180C()
{
  result = qword_1ED073338;
  if (!qword_1ED073338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073338);
  }

  return result;
}

uint64_t sub_1E6021860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E60218C8()
{
  result = qword_1ED0733A8;
  if (!qword_1ED0733A8)
  {
    sub_1E65DB308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0733A8);
  }

  return result;
}

uint64_t sub_1E6021920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  __swift_allocate_value_buffer(v0, qword_1ED096230);
  __swift_project_value_buffer(v0, qword_1ED096230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E60219F8@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v46 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v69 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v54 = &v46 - v3;
  v68 = sub_1E65E1C68();
  v61 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v55 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v46 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1ED0961D0);
  v19 = v9;
  v20 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, MEMORY[0x1E69E9290]);
  MEMORY[0x1E6942CC0](v18, v9);
  v75 = 0xD000000000000011;
  v76 = 0x80000001E6611500;
  v21 = sub_1E602180C();
  v22 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v77, &v75, MEMORY[0x1E69E6158], v21);
  v73 = 47;
  v74 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v75, &v73, v22, v21);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v6, qword_1ED0961E8);
  v24 = v6;
  v65 = v6;
  v25 = v23;
  v26 = MEMORY[0x1E69E9290];
  v51 = MEMORY[0x1E69E9290];
  v52 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  v63 = v8;
  MEMORY[0x1E6942CC0](v25, v24, v52);
  v71 = 0xD000000000000014;
  v72 = 0x80000001E6611520;
  MEMORY[0x1E6942CC0](&v73, &v71, MEMORY[0x1E69E6158], v21);
  v53 = v17;
  v47 = v19;
  v46 = v20;
  sub_1E65DB2C8();
  v27 = v77[0];
  v28 = v77[1];
  sub_1E65DB2F8();
  v71 = v27;
  v72 = v28;
  v29 = v54;
  sub_1E65E1C18();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v30 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, v26);
  v31 = v64;
  v50 = v30;
  sub_1E65E1BE8();
  v32 = v69 + 8;
  v62 = *(v69 + 8);
  v62(v29, v31);
  v49 = v21;
  v61 = *(v61 + 8);
  (v61)(v5, v68);
  v33 = v75;
  v34 = v76;
  v69 = v32;
  sub_1E65DB2F8();
  v71 = v33;
  v72 = v34;
  sub_1E65E1C18();

  v35 = v47;
  sub_1E65E1BE8();
  v62(v29, v31);
  v36 = v68;
  v37 = v61;
  (v61)(v5, v68);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  v38 = v56;
  v39 = v35;
  sub_1E65E1BE8();
  v37(v5, v36);
  v41 = v73;
  v40 = v74;
  sub_1E65DB2F8();
  v71 = v41;
  v72 = v40;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0, v51);
  v42 = v60;
  v43 = v64;
  sub_1E65E1BE8();
  v62(v29, v43);
  (v61)(v5, v36);
  (*(v59 + 8))(v38, v42);
  v44 = *(v55 + 8);
  v44(v67, v39);
  v44(v70, v39);
  v44(v66, v39);
  (*(v57 + 8))(v63, v65);
  return (v44)(v53, v39);
}

uint64_t sub_1E6022298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  __swift_allocate_value_buffer(v0, qword_1ED096248);
  __swift_project_value_buffer(v0, qword_1ED096248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  sub_1E5FED46C(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6022370@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v79 = *(v80 - 8);
  v1 = MEMORY[0x1EEE9AC00](v80);
  v77 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v95 = v69 - v3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v99 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v76 = v69 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v73 = (v69 - v5);
  v88 = sub_1E65E1C68();
  v97 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v69 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v100 = *(v94 - 8);
  v11 = MEMORY[0x1EEE9AC00](v94);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v75 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v74 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v91 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v90 = v69 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v89 = v69 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v96 = v69 - v28;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v21, qword_1ED0961D0);
  v30 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, MEMORY[0x1E69E9290]);
  v98 = v21;
  v85 = v30;
  MEMORY[0x1E6942CC0](v29, v21);
  v104 = 0xD000000000000011;
  v105 = 0x80000001E6611500;
  v31 = sub_1E602180C();
  v32 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v106, &v104, MEMORY[0x1E69E6158], v31);
  v102 = 47;
  v103 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v104, &v102, v32, v31);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v15, qword_1ED0961E8);
  v34 = v15;
  v86 = v15;
  v35 = v33;
  v36 = MEMORY[0x1E69E9290];
  v84 = MEMORY[0x1E69E9290];
  v72 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  v87 = v20;
  MEMORY[0x1E6942CC0](v35, v34, v72);
  strcpy(v101, "fitness-plus");
  BYTE5(v101[1]) = 0;
  HIWORD(v101[1]) = -5120;
  MEMORY[0x1E6942CC0](&v102, v101, MEMORY[0x1E69E6158], v31);
  v37 = sub_1E65E1CA8();
  (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
  sub_1E65DB2F8();
  v38 = v73;
  sub_1E602304C(v73);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, v36);
  v40 = v82;
  sub_1E65E1C58();
  (*(v81 + 1))(v38, v40);
  v41 = *(v97 + 8);
  v97 += 8;
  v81 = v41;
  v83 = v31;
  v42 = v88;
  v41(v7, v88);
  sub_1E6021860(v10);
  MEMORY[0x1E6942CE0](v18, v39);
  v71 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170, MEMORY[0x1E69E8220]);
  v43 = v94;
  MEMORY[0x1E6942CC0](v13, v94, v71);
  v44 = *(v100 + 8);
  v100 += 8;
  v73 = v44;
  v44(v13, v43);
  sub_1E65DB2C8();
  v46 = v106[0];
  v45 = v106[1];
  sub_1E65DB2F8();
  v101[0] = v46;
  v101[1] = v45;
  v47 = v76;
  sub_1E65E1C18();

  v69[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v82 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, v84);
  v48 = v92;
  sub_1E65E1BE8();
  v50 = v99 + 8;
  v49 = *(v99 + 8);
  v49(v47, v48);
  v70 = v49;
  v81(v7, v42);
  v99 = v50;
  v51 = v48;
  v52 = v104;
  v53 = v105;
  sub_1E65DB2F8();
  v101[0] = v52;
  v101[1] = v53;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  v49(v47, v51);
  v54 = v88;
  v55 = v81;
  v81(v7, v88);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v55(v7, v54);
  v56 = v55;
  v58 = v102;
  v57 = v103;
  sub_1E65DB2F8();
  v101[0] = v58;
  v101[1] = v57;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0, v84);
  v59 = v77;
  v60 = v95;
  v61 = v80;
  v62 = v92;
  sub_1E65E1BE8();
  v70(v47, v62);
  v56(v7, v54);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  v63 = v93;
  v64 = v94;
  sub_1E65E1BE8();
  v56(v7, v54);
  v65 = *(v79 + 8);
  v65(v59, v61);
  v65(v60, v61);
  v66 = *(v74 + 8);
  v67 = v98;
  v66(v91, v98);
  v66(v90, v67);
  v66(v89, v67);
  v73(v63, v64);
  (*(v75 + 8))(v87, v86);
  return (v66)(v96, v67);
}

uint64_t sub_1E602304C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v88 = *(v1 - 8);
  v89 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v75 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v60 - v6;
  v8 = sub_1E65DB308();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v81 = *(v79 - 1);
  v11 = MEMORY[0x1EEE9AC00](v79);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v60 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v90 = *(v71 - 8);
  v14 = MEMORY[0x1EEE9AC00](v71);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v60 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v80 = &v60 - v18;
  v85 = sub_1E65E1C68();
  v19 = *(v85 - 8);
  v20 = MEMORY[0x1EEE9AC00](v85);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v83 = *(v25 - 8);
  v84 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v68 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v82 = &v60 - v28;
  v93 = 47;
  v94 = 0xE100000000000000;
  v72 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v95, &v93, MEMORY[0x1E69E6158]);
  if (qword_1ED0718A8 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  v61 = __swift_project_value_buffer(v29, qword_1ED096158);
  sub_1E65DB2F8();
  sub_1E65E1C88();
  v65 = sub_1E65E1CA8();
  v30 = *(v65 - 8);
  v64 = *(v30 + 56);
  v66 = v30 + 56;
  v62 = v7;
  v64(v7, 1, 1, v65);
  sub_1E65DB2F8();
  sub_1E60218C8();
  v31 = MEMORY[0x1E69E67B0];
  v63 = v16;
  sub_1E65E1C48();
  v32 = *(v19 + 8);
  v77 = v19 + 8;
  v78 = v32;
  v32(v22, v85);
  sub_1E6021860(v7);
  (*(v70 + 8))(v10, v8);
  v33 = v67;
  MEMORY[0x1E6942D60](v16, v31);
  v34 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0, MEMORY[0x1E69E8290]);
  v35 = v69;
  v36 = v79;
  MEMORY[0x1E6942CC0](v33, v79, v34);
  v37 = *(v81 + 8);
  v37(v33, v36);
  v38 = v86;
  sub_1E65DB2C8();
  v37(v35, v36);
  sub_1E65DB368();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v70 = MEMORY[0x1E69E9290];
  v81 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v40 = v71;
  v41 = v80;
  v67 = v39;
  sub_1E65E1C28();
  v42 = *(v90 + 8);
  v90 += 8;
  v79 = v42;
  (v42)(v38, v40);
  v43 = v85;
  v44 = v78;
  v78(v24, v85);
  v45 = v68;
  MEMORY[0x1E6942D30](v41, v39);
  v61 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180, MEMORY[0x1E69E8278]);
  v46 = v84;
  MEMORY[0x1E6942CC0](v45, v84, v61);
  v47 = v24;
  v48 = *(v83 + 8);
  v83 += 8;
  v69 = v48;
  (v48)(v45, v46);
  v49 = v62;
  v64(v62, 1, 1, v65);
  sub_1E65DB2F8();
  v91 = 47;
  v92 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v93, &v91, MEMORY[0x1E69E6158], v72);
  v91 = v93;
  v92 = v94;
  v50 = v63;
  sub_1E65DB2C8();

  v51 = v86;
  sub_1E65E1C58();
  (v79)(v50, v40);
  v44(v47, v43);
  sub_1E6021860(v49);
  v52 = v75;
  MEMORY[0x1E6942CE0](v51, MEMORY[0x1E69E67B0]);
  v66 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138, MEMORY[0x1E69E8220]);
  v53 = v89;
  MEMORY[0x1E6942CC0](v52, v89, v66);
  v54 = *(v88 + 8);
  v88 += 8;
  v68 = v54;
  (v54)(v52, v53);
  v93 = v95[0];
  v94 = v95[1];
  sub_1E65DB2C8();

  sub_1E65DB2F8();
  sub_1E65E1C18();
  v55 = v80;
  sub_1E65E1BE8();
  v56 = v79;
  (v79)(v50, v40);
  v57 = v78;
  v78(v47, v43);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, v70);
  v58 = v74;
  sub_1E65E1BE8();
  v56(v50, v40);
  v57(v47, v85);
  (*(v73 + 8))(v55, v58);
  v56(v86, v40);
  (v68)(v87, v89);
  return (v69)(v82, v84);
}

uint64_t sub_1E6023C70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073450, &qword_1E65ED1E0);
  __swift_allocate_value_buffer(v0, qword_1ED096260);
  __swift_project_value_buffer(v0, qword_1ED096260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073458, &qword_1E65ED1E8);
  return sub_1E65E1CB8();
}

uint64_t sub_1E6023D00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = v27 - v12;
  v29 = sub_1E65E1C68();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  __swift_allocate_value_buffer(v19, qword_1ED0732B8);
  v27[1] = __swift_project_value_buffer(v19, qword_1ED0732B8);
  v20 = sub_1E65E1CA8();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_1E65DB2F8();
  sub_1E65DB348();
  v21 = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198, MEMORY[0x1E69E8280]);
  MEMORY[0x1E6942CC0](v4, v0, v21);
  v22 = *(v1 + 8);
  v22(v4, v0);
  sub_1E65DB2C8();
  v22(v6, v0);
  sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v23 = v28;
  v24 = MEMORY[0x1E69E67B0];
  v25 = v30;
  sub_1E65E1C48();
  (*(v31 + 8))(v11, v25);
  (*(v13 + 8))(v15, v29);
  sub_1E6021860(v18);
  return MEMORY[0x1E6942D60](v23, v24);
}

uint64_t sub_1E6024128@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_1E65E1C68();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1E65DB308();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_1E65E1C88();
  v17 = sub_1E60218C8();
  MEMORY[0x1E6942CA0](v14, v10, v17);
  v22 = *(v11 + 8);
  v22(v14, v10);
  v27 = 45;
  v28 = 0xE100000000000000;
  v18 = sub_1E602180C();
  MEMORY[0x1E6942CA0](v29, &v27, MEMORY[0x1E69E6158], v18);
  sub_1E65DB2A8();
  v27 = v29[0];
  v28 = v29[1];
  sub_1E65DB2F8();
  sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198, MEMORY[0x1E69E8280]);
  v19 = MEMORY[0x1E69E67B0];
  sub_1E65E1C08();
  (*(v24 + 8))(v6, v25);

  MEMORY[0x1E6942D40](v3, v19);
  (*(v23 + 8))(v9, v7);
  return (v22)(v16, v10);
}

uint64_t sub_1E602449C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  __swift_allocate_value_buffer(v0, qword_1ED096278);
  __swift_project_value_buffer(v0, qword_1ED096278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073410, &qword_1E65ED1B8);
  sub_1E5FED46C(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0, MEMORY[0x1E69E9290]);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6024574@<X0>(uint64_t a1@<X8>)
{
  v170 = a1;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v146 - v1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073420, &qword_1E65ED1C0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v146 - v2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073428, &qword_1E65ED1C8);
  v167 = *(v190 - 8);
  v3 = MEMORY[0x1EEE9AC00](v190);
  v189 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v188 = &v146 - v5;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v165 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v146 - v6;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v204 = *(v205 - 8);
  v7 = MEMORY[0x1EEE9AC00](v205);
  v162 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v146 - v9;
  v161 = sub_1E65DB308();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v153 = *(v154 - 1);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v146 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v182 = &v146 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v151 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v146 - v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v194 = *(v180 - 8);
  v20 = MEMORY[0x1EEE9AC00](v180);
  v157 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v146 - v22;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v23 = *(v214 - 8);
  v24 = MEMORY[0x1EEE9AC00](v214);
  v158 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v146 - v26;
  v27 = sub_1E65E1C68();
  v215 = *(v27 - 8);
  v216 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v150 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v191 = &v146 - v30;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E8, &qword_1E65ED1A8);
  v206 = *(v210 - 8);
  v31 = MEMORY[0x1EEE9AC00](v210);
  v156 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v209 = &v146 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v200 = &v146 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v164 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v149 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v197 = &v146 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v163 = *(v40 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v183 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v195 = &v146 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v146 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v146 - v48;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v40, qword_1ED0961D0);
  v51 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148, MEMORY[0x1E69E9290]);
  v184 = v49;
  v196 = v40;
  v181 = v51;
  MEMORY[0x1E6942CC0](v50, v40);
  v223 = 0xD000000000000011;
  v224 = 0x80000001E6611500;
  v52 = sub_1E602180C();
  v53 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v225, &v223, MEMORY[0x1E69E6158], v52);
  v221 = 47;
  v222 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v223, &v221, v53, v52);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v208 = v52;
  v201 = v19;
  v202 = v14;
  v54 = __swift_project_value_buffer(v36, qword_1ED0961E8);
  v155 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140, MEMORY[0x1E69E9290]);
  MEMORY[0x1E6942CC0](v54, v36);
  if (qword_1ED0718B0 != -1)
  {
    swift_once();
  }

  v185 = v36;
  v55 = v23;
  v199 = v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_project_value_buffer(v56, qword_1ED096170);
  sub_1E65DB2F8();
  v57 = v47;
  v58 = v180;
  v59 = v179;
  if (qword_1ED071908 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v58, qword_1ED0732B8);
  v61 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0, MEMORY[0x1E69E8290]);
  MEMORY[0x1E6942CC0](v60, v58, v61);
  v62 = v198;
  v148 = v61;
  sub_1E65DB2C8();
  v63 = *(v194 + 1);
  v194 += 8;
  v147 = v63;
  v63(v59, v58);
  sub_1E65DB368();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v65 = MEMORY[0x1E69E9290];
  v66 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v67 = v214;
  v213 = v66;
  v68 = v191;
  sub_1E65E1C38();
  v69 = *(v55 + 8);
  v207 = v55 + 8;
  v212 = v69;
  v69(v62, v67);
  v146 = v56;
  v70 = v216;
  v71 = v215 + 8;
  v72 = *(v215 + 8);
  v72(v68, v216);
  v73 = v209;
  v177 = v64;
  MEMORY[0x1E6942D30](v57, v64);
  v74 = sub_1E5FED46C(&qword_1ED073400, &qword_1ED0733E8, &qword_1E65ED1A8, MEMORY[0x1E69E8278]);
  v75 = v210;
  v192 = v74;
  MEMORY[0x1E6942CC0](v73, v210);
  v76 = *(v206 + 8);
  v206 += 8;
  v178 = v76;
  v76(v73, v75);
  v219 = 47;
  v220 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v221, &v219, MEMORY[0x1E69E6158], v208);
  v77 = sub_1E65E1CA8();
  v193 = v57;
  v78 = *(v77 - 8);
  v79 = *(v78 + 56);
  v80 = v182;
  v176 = v77;
  v175 = v79;
  v174 = v78 + 56;
  (v79)(v182, 1, 1);
  sub_1E65DB2F8();
  v81 = v152;
  sub_1E6026100(v152);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, v65);
  v83 = v149;
  v84 = v154;
  sub_1E65E1C58();
  (*(v153 + 8))(v81, v84);
  v215 = v71;
  v211 = v72;
  v72(v68, v70);
  sub_1E6021860(v80);
  v85 = v151;
  MEMORY[0x1E6942CE0](v83, v82);
  v86 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170, MEMORY[0x1E69E8220]);
  v87 = v202;
  v153 = v86;
  MEMORY[0x1E6942CC0](v85, v202);
  v88 = *(v199 + 8);
  v199 += 8;
  v154 = v88;
  (v88)(v85, v87);
  if (qword_1ED0718C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v146, qword_1ED0961A0);
  v89 = v191;
  sub_1E65DB2F8();
  v90 = v159;
  sub_1E65E1C88();
  v175(v80, 1, 1, v176);
  v91 = v150;
  sub_1E65DB2F8();
  sub_1E60218C8();
  v92 = MEMORY[0x1E69E67B0];
  v93 = v158;
  v94 = v161;
  sub_1E65E1C48();
  v211(v91, v216);
  sub_1E6021860(v80);
  (*(v160 + 8))(v90, v94);
  v95 = v157;
  MEMORY[0x1E6942D60](v93, v92);
  v96 = v179;
  v97 = v180;
  MEMORY[0x1E6942CC0](v95, v180, v148);
  v98 = v147;
  v147(v95, v97);
  v99 = v198;
  sub_1E65DB2C8();
  v98(v96, v97);
  sub_1E65DB368();
  v100 = v193;
  v101 = v177;
  v102 = v214;
  sub_1E65E1C38();
  v212(v99, v102);
  v103 = v216;
  v104 = v211;
  v211(v89, v216);
  v105 = v156;
  MEMORY[0x1E6942D30](v100, v101);
  v106 = v210;
  MEMORY[0x1E6942CC0](v105, v210, v192);
  v178(v105, v106);
  v107 = v182;
  v175(v182, 1, 1, v176);
  sub_1E65DB2F8();
  v217 = 47;
  v218 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v219, &v217, MEMORY[0x1E69E6158], v208);
  v217 = v219;
  v218 = v220;
  sub_1E65DB2C8();

  v108 = v107;
  v109 = MEMORY[0x1E69E67B0];
  v110 = v214;
  sub_1E65E1C58();
  v212(v93, v110);
  v104(v89, v103);
  sub_1E6021860(v108);
  v111 = v162;
  MEMORY[0x1E6942CE0](v99, v109);
  v182 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138, MEMORY[0x1E69E8220]);
  v112 = v205;
  MEMORY[0x1E6942CC0](v111, v205, v182);
  v113 = *(v204 + 8);
  v204 += 8;
  v194 = v113;
  (v113)(v111, v112);
  sub_1E65DB2C8();
  v114 = v225[0];
  v115 = v225[1];
  sub_1E65DB2F8();
  v219 = v114;
  v220 = v115;
  sub_1E65E1C18();

  v116 = v214;
  sub_1E65E1BE8();
  v117 = v116;
  v118 = v116;
  v119 = v212;
  v212(v99, v117);
  v211(v89, v216);
  v120 = v223;
  v121 = v224;
  sub_1E65DB2F8();
  v219 = v120;
  v220 = v121;
  v122 = v89;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  v119(v99, v118);
  v123 = v216;
  v124 = v211;
  v211(v89, v216);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v124(v89, v123);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073430, &qword_1E65ED1D0);
  v125 = MEMORY[0x1E69E9290];
  v181 = MEMORY[0x1E69E9290];
  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0, MEMORY[0x1E69E9290]);
  sub_1E65E1BE8();
  v124(v89, v123);
  v126 = v221;
  v127 = v222;
  sub_1E65DB2F8();
  v219 = v126;
  v220 = v127;
  v128 = v198;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073438, &qword_1ED073428, &qword_1E65ED1C8, v125);
  v129 = v214;
  sub_1E65E1BE8();
  v212(v128, v129);
  v130 = v123;
  v131 = v123;
  v132 = v211;
  v211(v122, v131);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073440, &qword_1E65ED1D8);
  v133 = v166;
  sub_1E65E1BE8();
  v132(v122, v130);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073410, &qword_1E65ED1B8);
  v134 = v181;
  sub_1E5FED46C(&qword_1ED073448, &qword_1ED073420, &qword_1E65ED1C0, v181);
  v135 = v171;
  v136 = v169;
  sub_1E65E1BE8();
  v132(v122, v130);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E5FED46C(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0, v134);
  v137 = v173;
  v138 = v214;
  sub_1E65E1BE8();
  v212(v128, v138);
  v132(v122, v216);
  (*(v172 + 8))(v135, v137);
  (*(v168 + 8))(v133, v136);
  v139 = *(v167 + 8);
  v140 = v190;
  v139(v189, v190);
  v139(v188, v140);
  (*(v165 + 8))(v186, v187);
  v141 = *(v163 + 8);
  v142 = v196;
  v141(v183, v196);
  v141(v195, v142);
  v141(v193, v142);
  (v194)(v203, v205);
  v143 = v210;
  v144 = v178;
  v178(v209, v210);
  (v154)(v201, v202);
  v144(v200, v143);
  (*(v164 + 8))(v197, v185);
  return (v141)(v184, v142);
}

uint64_t sub_1E6026100@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v33 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v30 - v7;
  v43 = sub_1E65E1C68();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v30 - v15;
  if (qword_1ED0718B8 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v16, qword_1ED096188);
  sub_1E65DB2F8();
  if (qword_1ED071908 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_1ED0732B8);
  v18 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0, MEMORY[0x1E69E8290]);
  MEMORY[0x1E6942CC0](v17, v1, v18);
  sub_1E65DB2C8();
  (*(v33 + 8))(v3, v1);
  sub_1E65DB368();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  v30 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v32 = MEMORY[0x1E69E9290];
  v33 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128, MEMORY[0x1E69E9290]);
  v20 = v37;
  v21 = v9;
  sub_1E65E1C28();
  v31 = v4;
  v39 = *(v39 + 8);
  (v39)(v6, v4);
  v36 = *(v36 + 8);
  (v36)(v9, v43);
  MEMORY[0x1E6942D30](v20, v19);
  v22 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180, MEMORY[0x1E69E8278]);
  v23 = v34;
  MEMORY[0x1E6942CC0](v14, v34, v22);
  v35 = *(v35 + 8);
  (v35)(v14, v23);
  v44 = 47;
  v45 = 0xE100000000000000;
  v24 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v46, &v44, MEMORY[0x1E69E6158], v24);
  sub_1E65DB2C8();
  v25 = v46[0];
  v26 = v46[1];
  sub_1E65DB2F8();
  v44 = v25;
  v45 = v26;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168, v32);
  v27 = v40;
  v28 = v31;
  sub_1E65E1BE8();
  (v39)(v6, v28);
  (v36)(v21, v43);
  (*(v38 + 8))(v20, v27);
  return (v35)(v42, v23);
}

uint64_t sub_1E60267B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
}

uint64_t sub_1E60267F8@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v78 = v3;
  v79 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppStateService();
  v76 = v4[-1].Description;
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = v5;
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for RemoteBrowsingService();
  v73 = v84[-1].Description;
  MEMORY[0x1EEE9AC00](v84);
  v71 = v6;
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v67 - v8;
  v9 = type metadata accessor for ContentAvailabilityService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  v94 = *(v91 - 8);
  v12 = MEMORY[0x1EEE9AC00](v91);
  v92 = v13;
  v93 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - v14;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment(0);
  v19 = v18[7];
  v70 = v18[6];
  v69 = v19;
  v20 = v18[14];
  v68 = v18[25];
  swift_getKeyPath();
  v21 = v10[2];
  v89 = v17;
  v21(&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v20, v9);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  (v10[4])(v23 + v22, &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  v24 = v15;
  sub_1E65E4E08();
  v25 = v90;
  v26 = v91;
  v90[3] = v91;
  v25[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v28 = v94 + 16;
  v29 = *(v94 + 16);
  v67 = v24;
  v29(boxed_opaque_existential_1, v24, v26);
  v87 = v29;
  v88 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1E65EA8E0;
  v86 = sub_1E65E60A8();
  v30 = *(v86 - 8);
  v85 = *(v30 + 56);
  v83 = v30 + 56;
  v85(v95, 1, 1, v86);
  v31 = v73;
  v32 = v72;
  v33 = v84;
  v73[2](v72, v17 + v68, v84);
  v34 = v93;
  v29(v93, v24, v26);
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = v94;
  v37 = *(v94 + 80);
  v38 = (v71 + v37 + v35) & ~v37;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (v31)[4]((v39 + v35), v32, v33);
  v84 = *(v36 + 32);
  v40 = v39 + v38;
  v41 = v34;
  v42 = v26;
  (v84)(v40, v34, v26);
  v43 = v95;
  v44 = sub_1E6059EAC(0, 0, v95, &unk_1E65ED230, v39);
  v45 = v82;
  *(v82 + 32) = v44;
  v85(v43, 1, 1, v86);
  v46 = v75;
  v47 = v76;
  v48 = v77;
  v76[2](v75, v89 + v69, v77);
  v49 = v67;
  v87(v41, v67, v42);
  v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v51 = (v74 + v37 + v50) & ~v37;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  (v47)[4]((v52 + v50), v46, v48);
  v53 = v52 + v51;
  v54 = v93;
  v55 = v91;
  (v84)(v53, v93, v91);
  v56 = v95;
  *(v45 + 40) = sub_1E6059EAC(0, 0, v95, &unk_1E65ED240, v52);
  v85(v56, 1, 1, v86);
  v58 = v79;
  v57 = Description;
  v59 = v81;
  Description[2](v79, v89 + v70, v81);
  v60 = v55;
  v87(v54, v49, v55);
  v61 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v62 = (v78 + v37 + v61) & ~v37;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  (v57)[4]((v63 + v61), v58, v59);
  (v84)(v63 + v62, v93, v60);
  v64 = sub_1E6059EAC(0, 0, v95, &unk_1E65ED250, v63);
  v65 = v82;
  *(v82 + 48) = v64;
  result = (*(v94 + 8))(v49, v60);
  v90[5] = v65;
  return result;
}

uint64_t sub_1E60270F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6027110, 0, 0);
}

uint64_t sub_1E6027110()
{
  v1 = ContentAvailabilityService.fetchAvailableAudioLanguageCodes.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E6027204;

  return v5();
}

uint64_t sub_1E6027204(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1E60274D4;
  }

  else
  {
    v4 = sub_1E6027318;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6027318()
{
  v12 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);

  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_1E65E6248();
    v8 = sub_1E5DFD4B0(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Available Audio Language Codes: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E694F1C0](v5, -1, -1);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  **(v0 + 16) = *(v0 + 48);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E60274D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6027538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60276A4, 0, 0);
}

uint64_t sub_1E60276A4()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E60277A0;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E60277A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E60278B8, 0, 0);
}

uint64_t sub_1E60278B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6027994;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6027994()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6027A90, 0, 0);
}

uint64_t sub_1E6027A90()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6027BE0, v6, v5);
  }
}

uint64_t sub_1E6027BE0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6027C64, 0, 0);
}

uint64_t sub_1E6027C64()
{
  sub_1E5FC789C(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6027994;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6027D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6027E48, 0, 0);
}

uint64_t sub_1E6027E48()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6027F44;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6027F44()
{

  return MEMORY[0x1EEE6DFA0](sub_1E602805C, 0, 0);
}

uint64_t sub_1E602805C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6028138;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6028138()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6028234, 0, 0);
}

uint64_t sub_1E6028234()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6028334, v4, v3);
  }
}

uint64_t sub_1E6028334()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6028138;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6028400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6028534, 0, 0);
}

uint64_t sub_1E6028534()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6028630;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6028630()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6028748, 0, 0);
}

uint64_t sub_1E6028748()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6028824;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6028824()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6028920, 0, 0);
}

uint64_t sub_1E6028920()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6028A20, v4, v3);
  }
}

uint64_t sub_1E6028A20()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6028824;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6028AEC(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E60270F0(a1, v1 + v5);
}

uint64_t sub_1E6028BC8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6027538(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6028D24(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6027D14(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6028FE4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6028400(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t GalleryDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GalleryDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GalleryDescriptor(0) + 28);
  v4 = sub_1E65D72D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E60291FC()
{
  v1 = 0x696669746E656469;
  v2 = 0x5379616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x74616E6974736564;
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

uint64_t sub_1E6029288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E602A284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E60292B0(uint64_t a1)
{
  v2 = sub_1E6029560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60292EC(uint64_t a1)
{
  v2 = sub_1E6029560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GalleryDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073470, &qword_1E65ED260);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6029560();
  sub_1E65E6DA8();
  v10[15] = 0;
  sub_1E65E6B48();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1E60295B4();
    sub_1E65E6B78();
    v10[12] = *(v3 + 17);
    v10[11] = 2;
    sub_1E6029608();
    sub_1E65E6B78();
    type metadata accessor for GalleryDescriptor(0);
    v10[10] = 3;
    sub_1E65D72D8();
    sub_1E5DF6B78(&qword_1EE2D7290, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E6029560()
{
  result = qword_1ED073478;
  if (!qword_1ED073478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073478);
  }

  return result;
}

unint64_t sub_1E60295B4()
{
  result = qword_1ED073480;
  if (!qword_1ED073480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073480);
  }

  return result;
}

unint64_t sub_1E6029608()
{
  result = qword_1ED073488;
  if (!qword_1ED073488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073488);
  }

  return result;
}

uint64_t GalleryDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E65D72D8();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073490, &qword_1E65ED268);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for GalleryDescriptor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6029560();
  v23 = v8;
  v12 = v24;
  sub_1E65E6D98();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v9;
  v13 = v5;
  v15 = v21;
  v14 = v22;
  v30 = 0;
  *v11 = sub_1E65E6AA8();
  *(v11 + 1) = v16;
  v18[1] = v16;
  v28 = 1;
  sub_1E6029A34();
  sub_1E65E6AD8();
  v11[16] = v29;
  v26 = 2;
  sub_1E6029A88();
  sub_1E65E6AD8();
  v11[17] = v27;
  v25 = 3;
  sub_1E5DF6B78(&qword_1ED0734A8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
  sub_1E65E6AD8();
  (*(v15 + 8))(v23, v14);
  (*(v19 + 32))(&v11[*(v24 + 28)], v13, v3);
  sub_1E6029ADC(v11, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E6029B40(v11);
}

unint64_t sub_1E6029A34()
{
  result = qword_1ED073498;
  if (!qword_1ED073498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073498);
  }

  return result;
}

unint64_t sub_1E6029A88()
{
  result = qword_1ED0734A0;
  if (!qword_1ED0734A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734A0);
  }

  return result;
}

uint64_t sub_1E6029ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6029B40(uint64_t a1)
{
  v2 = type metadata accessor for GalleryDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GalleryDescriptor.hash(into:)(uint64_t a1)
{
  sub_1E65E5D78();
  sub_1E65E0018();
  sub_1E65DFB58();
  sub_1E65E5D78();

  type metadata accessor for GalleryDescriptor(0);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  return sub_1E65E5B48();
}

uint64_t GalleryDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E0018();
  sub_1E65DFB58();
  sub_1E65E5D78();

  type metadata accessor for GalleryDescriptor(0);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6029D74()
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E0018();
  sub_1E65DFB58();
  sub_1E65E5D78();

  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6029E50(uint64_t a1)
{
  sub_1E65E5D78();
  sub_1E65E0018();
  sub_1E65DFB58();
  sub_1E65E5D78();

  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  return sub_1E65E5B48();
}

uint64_t sub_1E6029F10(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E0018();
  sub_1E65DFB58();
  sub_1E65E5D78();

  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17GalleryDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E65E6C18() & 1) == 0 || (sub_1E65E0008() & 1) == 0)
  {
    return 0;
  }

  v3 = sub_1E65DFB58();
  v5 = v4;
  if (v3 == sub_1E65DFB58() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for GalleryDescriptor(0);

  return sub_1E65D7288();
}

unint64_t sub_1E602A180()
{
  result = qword_1ED0734C0;
  if (!qword_1ED0734C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734C0);
  }

  return result;
}

unint64_t sub_1E602A1D8()
{
  result = qword_1ED0734C8;
  if (!qword_1ED0734C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734C8);
  }

  return result;
}

unint64_t sub_1E602A230()
{
  result = qword_1ED0734D0;
  if (!qword_1ED0734D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734D0);
  }

  return result;
}

uint64_t sub_1E602A284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t RouteDestination.appendingAnnotation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1E602A4E0(v2, a2, type metadata accessor for RouteResource);
  v5 = type metadata accessor for RouteDestination(0);
  sub_1E602A4E0(v2 + *(v5 + 20), a2 + *(v5 + 20), type metadata accessor for RouteSource);
  v6 = *(v2 + *(v5 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734D8, &qword_1E65ED468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v4;

  v8 = sub_1E602A670(inited, v6);
  result = swift_setDeallocating();
  *(a2 + *(v5 + 24)) = v8;
  return result;
}

uint64_t sub_1E602A4E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RouteDestination.withResource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E602A4E0(a1, a2, type metadata accessor for RouteResource);
  v4 = type metadata accessor for RouteDestination(0);
  sub_1E602A4E0(v2 + *(v4 + 20), a2 + *(v4 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v4 + 24)) = *(v2 + *(v4 + 24));
}

uint64_t RouteDestination.withSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E602A4E0(v2, a2, type metadata accessor for RouteResource);
  v5 = type metadata accessor for RouteDestination(0);
  sub_1E602A4E0(a1, a2 + *(v5 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v5 + 24)) = *(v2 + *(v5 + 24));
}

uint64_t sub_1E602A670(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1E60F11A0(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1E602A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1E65DAC98();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1E5DFD1CC(a1, v6, &qword_1ED0734E0, &qword_1E66012E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0734E0, &qword_1E66012E0);
    sub_1E5DFE50C(v6, &qword_1ED0734E0, &qword_1E66012E0);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_1E602A934(v11, a2);
    sub_1E5DFE50C(a1, &qword_1ED0734E0, &qword_1E66012E0);
    (*(v8 + 8))(v13, v7);
    v14 = 0;
  }

  v15 = sub_1E65DD1A8();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_1E602A934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39[6] = v39 - v4;
  v5 = sub_1E65D9A78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - v13;
  v15 = sub_1E65DCD48();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v39[3] = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v39[5] = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39[4] = v39 - v20;
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC48();
  v21 = sub_1E65D9A48();
  v23 = v22;
  v25 = v24;
  v26 = *(v6 + 8);
  v26(v14, v5);
  v46 = v21;
  v47 = v23;
  v48 = v25 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734F0, &qword_1E65ED478);
  sub_1E65D7F98();
  sub_1E5F87058(v21, v23, v25 & 1);
  v39[2] = v44;
  v39[1] = v45;
  sub_1E65DAC48();
  v27 = sub_1E65D9A58();
  v29 = v28;
  v31 = v30;
  v26(v12, v5);
  v41 = v27;
  v42 = v29;
  v43 = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734F8, &qword_1E65ED480);
  sub_1E65D7F98();
  sub_1E5F87058(v27, v29, v31 & 1);
  sub_1E65DAC48();
  v32 = sub_1E65D9A68();
  v34 = v33;
  v36 = v35;
  v26(v9, v5);
  v39[10] = v32;
  v39[11] = v34;
  v40 = v36 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073500, &qword_1E65ED488);
  sub_1E65D7F98();
  sub_1E5F87058(v32, v34, v36 & 1);
  sub_1E65DCD08();
  sub_1E65DAC68();
  sub_1E65DAC78();
  sub_1E65D74C8();

  sub_1E65DAC88();
  sub_1E65DC2D8();
  sub_1E65DAC58();
  sub_1E65DD158();
  v37 = sub_1E65DAC98();
  return (*(*(v37 - 8) + 8))(a1, v37);
}

uint64_t sub_1E602AD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1E65DD1A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1E5DFD1CC(a1, v6, &qword_1ED073508, &qword_1E65ED490);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED073508, &qword_1E65ED490);
    sub_1E5DFE50C(v6, &qword_1ED073508, &qword_1E65ED490);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_1E602AFDC(v11, a2);
    sub_1E5DFE50C(a1, &qword_1ED073508, &qword_1E65ED490);
    (*(v8 + 8))(v13, v7);
    v14 = 0;
  }

  v15 = sub_1E65DAC98();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_1E602AFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v46 - v4;
  v5 = sub_1E65DCD48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D9A78();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  sub_1E65DD148();
  v17 = sub_1E65DC2F8();
  v18 = *(v17 - 8);
  v51 = *(v18 + 48);
  v52 = v18 + 48;
  v19 = v51(v16, 1, v17);
  v58 = v11;
  v55 = v17;
  v47 = v18;
  if (v19 == 1)
  {
    sub_1E5DFE50C(v16, &qword_1ED0734E8, &qword_1E65ED470);
    v53 = 0xE000000000000000;
    v54 = 0;
  }

  else
  {
    v20 = sub_1E65DC2E8();
    v53 = v21;
    v54 = v20;
    (*(v18 + 8))(v16, v17);
  }

  sub_1E65DD168();
  v22 = sub_1E65DCD18();
  v24 = v23;
  v25 = *(v6 + 8);
  v25(v8, v5);
  v64 = v22;
  v65 = v24;
  sub_1E602B5C0();
  sub_1E65D7FA8();
  v50 = v66;
  v49 = v67;
  v48 = v68;
  sub_1E65DD168();
  v26 = sub_1E65DCD28();
  v27 = a1;
  v29 = v28;
  v25(v8, v5);
  v62 = v26;
  v63 = v29;
  sub_1E602B614();
  sub_1E65D7FA8();
  sub_1E65DD168();
  v30 = sub_1E65DCD38();
  v32 = v31;
  v25(v8, v5);
  v60 = v30;
  v61 = v32;
  sub_1E602B668();
  sub_1E65D7FA8();
  v33 = v27;
  sub_1E65D9A38();
  sub_1E65DD188();
  v34 = v56;
  sub_1E65DD138();
  v35 = sub_1E65D74E8();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1E5DFE50C(v34, &qword_1ED072340, &qword_1E65EA410);
    v37 = v57;
  }

  else
  {
    v38 = sub_1E65D7428();
    v40 = v39;
    (*(v36 + 8))(v34, v35);
    v66 = v38;
    v67 = v40;
    sub_1E5F9AEA8();
    sub_1E65E66C8();
    v42 = v41;

    v37 = v57;
    if (v42)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v43 = v55;
  sub_1E65DD198();
  if (v51(v37, 1, v43) == 1)
  {
    sub_1E5DFE50C(v37, &qword_1ED0734E8, &qword_1E65ED470);
  }

  else
  {
    sub_1E65DC2E8();
    (*(v47 + 8))(v37, v43);
  }

  sub_1E65DD178();
  sub_1E65DAC28();
  v44 = sub_1E65DD1A8();
  return (*(*(v44 - 8) + 8))(v33, v44);
}

unint64_t sub_1E602B5C0()
{
  result = qword_1ED073510;
  if (!qword_1ED073510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073510);
  }

  return result;
}

unint64_t sub_1E602B614()
{
  result = qword_1ED073518;
  if (!qword_1ED073518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073518);
  }

  return result;
}

unint64_t sub_1E602B668()
{
  result = qword_1ED073520;
  if (!qword_1ED073520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073520);
  }

  return result;
}

uint64_t sub_1E602B6BC@<X0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v57 - v3;
  v4 = type metadata accessor for AccountService();
  Description = v4[-1].Description;
  v86 = v4;
  v87 = Description;
  v6 = Description[8];
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendationService();
  v8 = v7[-1].Description;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v84 = *(v76 - 8);
  v10 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v57 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v79 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v68 = v15[24];
  v16 = v15[6];
  v73 = v16;
  v61 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  v17 = v15[34];
  KeyPath = swift_getKeyPath();
  v18 = v8;
  v19 = *(v8 + 2);
  v66 = v8 + 16;
  v67 = v19;
  v20 = v80;
  v21 = v7;
  v19();
  v22 = v87;
  v72 = v87[2];
  v74 = v87 + 2;
  v23 = v78;
  v72(v78, v14 + v16, v86);
  sub_1E5DF650C(v14 + v17, &v89);
  v65 = v18[80];
  v24 = (v65 + 16) & ~v65;
  v64 = v65 | 7;
  v25 = (v81 + *(v22 + 80) + v24) & ~*(v22 + 80);
  v69 = *(v22 + 80);
  v71 = v6;
  v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = *(v18 + 4);
  v62 = v18 + 32;
  v63 = v28;
  v58 = v7;
  v28(v27 + v24, v20, v7);
  v29 = v22[4];
  v87 = v22 + 4;
  v70 = v29;
  v29(v27 + v25, v23, v86);
  *(v27 + v26) = v61;
  sub_1E5DF599C(&v89, v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();
  v30 = v82;
  sub_1E65E4E08();
  v31 = v85;
  v32 = v76;
  v85[3] = v76;
  v31[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  v34 = v84;
  v35 = *(v84 + 16);
  v35(boxed_opaque_existential_1, v30, v32);
  v36 = v35;
  v60 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EB9E0;
  v37 = sub_1E65E60A8();
  v38 = *(v37 - 8);
  v59 = *(v38 + 56);
  v61 = v38 + 56;
  v59(v88, 1, 1, v37);
  v39 = v80;
  (v67)(v80, v79 + v68, v21);
  v40 = v75;
  v36(v75, v30, v32);
  v41 = (v65 + 32) & ~v65;
  v42 = v34;
  v43 = *(v34 + 80);
  v44 = (v81 + v41 + v43) & ~v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  v63(v45 + v41, v39, v58);
  v81 = *(v42 + 32);
  v81(v45 + v44, v40, v32);
  v46 = v88;
  v47 = sub_1E6059EAC(0, 0, v88, &unk_1E65ED4D8, v45);
  *(KeyPath + 32) = v47;
  v59(v46, 1, 1, v37);
  v48 = v78;
  v49 = v86;
  v72(v78, v79 + v73, v86);
  v50 = v82;
  v60(v40, v82, v32);
  v51 = (v69 + 32) & ~v69;
  v52 = (v51 + v71 + v43) & ~v43;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  v70(v53 + v51, v48, v49);
  v81(v53 + v52, v40, v32);
  v54 = sub_1E6059EAC(0, 0, v88, &unk_1E65ED4E8, v53);
  v55 = KeyPath;
  *(KeyPath + 40) = v54;
  result = (*(v84 + 8))(v50, v32);
  v85[5] = v55;
  return result;
}

uint64_t sub_1E602BEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E602BF64(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState(0) + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

uint64_t sub_1E602C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[195] = a5;
  v5[189] = a4;
  v5[183] = a3;
  v5[177] = a2;
  v5[171] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v5[201] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[202] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v5[203] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v5[204] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073550, &qword_1E65ED510);
  v5[205] = swift_task_alloc();
  v6 = sub_1E65D7848();
  v5[206] = v6;
  v5[207] = *(v6 - 8);
  v5[208] = swift_task_alloc();
  v7 = type metadata accessor for AccountService();
  v5[209] = v7;
  Description = v7[-1].Description;
  v5[210] = Description;
  v5[211] = Description[8];
  v5[212] = swift_task_alloc();
  v9 = type metadata accessor for RecommendationService();
  v5[213] = v9;
  v10 = v9[-1].Description;
  v5[214] = v10;
  v5[215] = v10[8];
  v5[216] = swift_task_alloc();
  v11 = sub_1E65D8A78();
  v5[217] = v11;
  v5[218] = *(v11 - 8);
  v5[219] = swift_task_alloc();
  v5[220] = swift_task_alloc();
  v12 = sub_1E65DDE68();
  v5[221] = v12;
  v5[222] = *(v12 - 8);
  v5[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602C380, 0, 0);
}

uint64_t sub_1E602C380()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAB28], v3);
  v4 = sub_1E65DDC68();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[216];
    v6 = v0[214];
    v7 = v0[213];
    v8 = v0[212];
    v9 = v0[210];
    v10 = v0[209];
    v19 = v0[183];
    (*(v6 + 16))(v5, v0[177], v7);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v0[224] = v12;
    (*(v6 + 32))(v12 + v11, v5, v7);
    swift_asyncLet_begin();
    (*(v9 + 16))(v8, v19, v10);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    v0[225] = v14;
    (*(v9 + 32))(v14 + v13, v8, v10);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 167, sub_1E602C724, v0 + 162);
  }

  else
  {
    v15 = sub_1E65D9288();
    sub_1E602E8C0(&qword_1ED073558, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF80]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x1E69CBF60], v15);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1E602C724()
{
  if (v0)
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = v1[167];
  }

  v1[227] = v3;
  v1[226] = v2;
  v4 = v1[220];

  return MEMORY[0x1EEE6DEC0](v1 + 2, v4, sub_1E602C7B4, v1 + 172);
}

uint64_t sub_1E602C7B4()
{
  *(v1 + 1824) = v0;
  if (v0)
  {
    v2 = sub_1E602CCBC;
  }

  else
  {
    v2 = sub_1E602C7E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E602C7E8()
{
  (*(v0[218] + 16))(v0[219], v0[220], v0[217]);
  if (sub_1E65E6658())
  {
  }

  v1 = v0[204];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65D8A48();
  v2 = sub_1E65DAC98();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v0[204], &qword_1ED0734E0, &qword_1E66012E0);
    v4 = 1;
  }

  else
  {
    v5 = v0[204];
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E1B58();
    (*(v3 + 8))(v5, v2);
    v4 = 0;
  }

  v6 = v0[219];
  v7 = v0[218];
  v8 = v0[208];
  v9 = v0[207];
  v17 = v0[217];
  v18 = v0[206];
  v10 = v0[205];
  v11 = v0[195];
  v12 = sub_1E65E1B68();
  (*(*(v12 - 8) + 56))(v10, v4, 1, v12);
  v0[169] = sub_1E65D8A58();
  v0[170] = v13;
  sub_1E65DC488();
  sub_1E602E8C0(&qword_1EE2D6B60, MEMORY[0x1E699DC60], MEMORY[0x1E699DC80]);
  sub_1E65E1748();
  v14 = sub_1E65D8A38();
  v15 = swift_task_alloc();
  *(v15 + 16) = v8;
  *(v15 + 24) = v11;
  sub_1E6403940(sub_1E602E908, v15, v14);

  sub_1E65E1B18();
  (*(v7 + 8))(v6, v17);
  (*(v9 + 8))(v8, v18);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E602CB48, v0 + 190);
}

uint64_t sub_1E602CBA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E602CCBC()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1E602CD28, v0 + 1424);
}

uint64_t sub_1E602CD80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E602CE98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E602CEB8, 0, 0);
}

uint64_t sub_1E602CEB8()
{
  v1 = RecommendationService.fetchOnboardingDetail.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FACF3C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E602CFB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E602CFD4, 0, 0);
}

uint64_t sub_1E602CFD4()
{
  v1 = AccountService.fetchUserFirstName.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E602D0C8;

  return v5();
}

uint64_t sub_1E602D0C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1E5FEE4E8;
  }

  else
  {

    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1E6002FEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E602D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073530, &qword_1E65ED4F0);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073538, &qword_1E65ED4F8);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073540, &qword_1E65ED500);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602D370, 0, 0);
}

uint64_t sub_1E602D370()
{
  v1 = RecommendationService.makeOnboardingDetailCacheUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E602D46C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E602D46C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E602D584, 0, 0);
}

uint64_t sub_1E602D584()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E602D660;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E602D660()
{

  return MEMORY[0x1EEE6DFA0](sub_1E602D75C, 0, 0);
}

uint64_t sub_1E602D75C()
{
  v1 = v0[4];
  v2 = type metadata accessor for OnboardingDetailCacheUpdated();
  if ((*(v2[-1].Description + 6))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E602D8AC, v6, v5);
  }
}

uint64_t sub_1E602D8AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E602D930, 0, 0);
}

uint64_t sub_1E602D930()
{
  sub_1E5DFE50C(v0[4], &qword_1ED073530, &qword_1E65ED4F0);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E602D660;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E602D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602DB24, 0, 0);
}

uint64_t sub_1E602DB24()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E602DC20;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E602DC20()
{

  return MEMORY[0x1EEE6DFA0](sub_1E602DD38, 0, 0);
}

uint64_t sub_1E602DD38()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E602DE14;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E602DE14()
{

  return MEMORY[0x1EEE6DFA0](sub_1E602DF10, 0, 0);
}

uint64_t sub_1E602DF10()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E602E010, v4, v3);
  }
}

uint64_t sub_1E602E010()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E602DE14;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E602E0DC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for AccountService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v8[8] + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E602C00C(a1, v1 + v6, v1 + v9, v12, v1 + v11);
}

uint64_t sub_1E602E25C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E602D204(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_3(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E602E51C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E602D9F0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E602E678(uint64_t a1)
{
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E602CE98(a1, v1 + v5);
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1E602E7E4(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E602CFB4(a1, v1 + v5);
}

uint64_t sub_1E602E8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E602E924@<X0>(char *a1@<X8>)
{
  v51 = sub_1E65D9908();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65D9F88();
  v40 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  sub_1E65DE698();
  sub_1E60EF0CC(v13);
  sub_1E5DFE50C(v7, &qword_1ED073588, &unk_1E65FEFD0);
  v48 = v13;
  sub_1E602F6C4(v13, v11);
  v14 = sub_1E65DECD8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_1E5DFE50C(v11, &unk_1ED073590, &qword_1E65ED568);
LABEL_5:
    v18 = MEMORY[0x1E69CCA80];
    goto LABEL_6;
  }

  sub_1E65DECB8();
  v17 = v16;
  (*(v15 + 8))(v11, v14);
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = MEMORY[0x1E69CCA78];
LABEL_6:
  v19 = v40;
  v20 = v47;
  (*(v40 + 104))(v4, *v18, v47);
  sub_1E65DE6D8();
  v45 = v53;
  v46 = v52;
  v21 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v43 = v22;
  v44 = v21;
  v23 = sub_1E65DE6E8();
  v41 = v24;
  v42 = v23;
  v25 = type metadata accessor for PreviewButtonViewMetrics(0);
  v26 = v25[7];
  v27 = *MEMORY[0x1E69CBCC8];
  v28 = sub_1E65D8F28();
  (*(*(v28 - 8) + 104))(&a1[v26], v27, v28);
  (*(v19 + 16))(&a1[v25[8]], v4, v20);
  v30 = v49;
  v29 = v50;
  v31 = v51;
  (*(v49 + 104))(v50, *MEMORY[0x1E69CC420], v51);
  v32 = sub_1E65D98F8();
  v34 = v33;
  (*(v30 + 8))(v29, v31);
  (*(v19 + 8))(v4, v20);
  result = sub_1E5DFE50C(v48, &unk_1ED073590, &qword_1E65ED568);
  v36 = v45;
  *a1 = v46;
  *(a1 + 1) = v36;
  v37 = v43;
  *(a1 + 2) = v44;
  *(a1 + 3) = v37;
  v38 = v41;
  *(a1 + 4) = v42;
  *(a1 + 5) = v38;
  v39 = &a1[v25[9]];
  *v39 = v32;
  *(v39 + 1) = v34;
  return result;
}

uint64_t sub_1E602EDB0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v60 - v8;
  v74 = sub_1E65D8F28();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v60 - v12;
  v13 = sub_1E65D8C68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v60 - v18;
  v20 = type metadata accessor for PreviewButtonViewMetrics(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v60 - v25);
  if (a1)
  {
    v67 = a2;
    v27 = v24;
    v64 = v24;
    sub_1E602E924(&v60 - v25);
    v28 = sub_1E65D9D78();
    v29 = *(*(v28 - 8) + 56);
    v68 = v19;
    v29(v19, 1, 1, v28);
    v30 = *MEMORY[0x1E69CBA28];
    v70 = v14;
    v71 = v16;
    v31 = *(v14 + 104);
    v69 = v13;
    v31(v16, v30, v13);
    v32 = sub_1E65D74E8();
    (*(*(v32 - 8) + 56))(v75, 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E65EA670;
    v66 = v33;
    sub_1E602F604(v26, v23);
    v34 = *v23;
    v61 = v10;
    v62 = v23[2];
    v63 = v34;
    v65 = v23[4];
    v35 = v77;
    v36 = *(v76 + 16);
    v36(v10, v23 + *(v27 + 28), v74);

    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v37 = v61;
    sub_1E65D8678();
    sub_1E602F668(v23);
    v38 = sub_1E65DA208();
    v39 = v72;
    (*(*(v38 - 8) + 56))(v72, 1, 1, v38);
    v40 = v26[1];
    v65 = *v26;
    v41 = v74;
    v36(v37, v26 + *(v64 + 28), v74);
    v42 = *MEMORY[0x1E69CC420];
    v43 = sub_1E65D9908();
    v44 = *(v43 - 8);
    v45 = v73;
    (*(v44 + 104))(v73, v42, v43);
    v46 = v45;
    (*(v44 + 56))(v45, 0, 1, v43);

    v47 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
    (*(*(v48 - 8) + 8))(v67, v48);
    sub_1E602F668(v26);
    sub_1E5FAB460(v68, v35, &qword_1ED073578, &qword_1E65F0E60);
    v49 = type metadata accessor for PageMetricsClick(0);
    (*(v70 + 32))(v35 + v49[5], v71, v69);
    sub_1E5FAB460(v75, v35 + v49[6], &qword_1ED072340, &qword_1E65EA410);
    *(v35 + v49[7]) = v66;
    sub_1E5FAB460(v39, v35 + v49[8], &qword_1ED073570, &unk_1E65F4570);
    v50 = (v35 + v49[9]);
    *v50 = 0;
    v50[1] = 0;
    v51 = (v35 + v49[10]);
    *v51 = 0;
    v51[1] = 0;
    *(v35 + v49[11]) = v47;
    v52 = (v35 + v49[12]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v35 + v49[13]);
    *v53 = v65;
    v53[1] = v40;
    (*(v76 + 32))(v35 + v49[14], v37, v41);
    sub_1E5FAB460(v46, v35 + v49[15], &qword_1ED072330, &qword_1E65EAB70);
    return (*(*(v49 - 1) + 56))(v35, 0, 1, v49);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
    (*(*(v55 - 8) + 8))(a2, v55);
    v56 = type metadata accessor for PageMetricsClick(0);
    v57 = *(*(v56 - 8) + 56);
    v58 = v56;
    v59 = v77;

    return v57(v59, 1, 1, v58);
  }
}

uint64_t sub_1E602F604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewButtonViewMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E602F668(uint64_t a1)
{
  v2 = type metadata accessor for PreviewButtonViewMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E602F6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E602F734(void *a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E602F88C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1E602F88C()
{
  v17 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Unable to register tabBadgeSelectionSheet placement: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E602FA64(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D76A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_1E65D92D8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602FB80, 0, 0);
}

uint64_t sub_1E602FB80()
{
  v1 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  v0[19] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1E602FC8C;
  v4 = v0[18];

  return v6(v4, 1);
}

uint64_t sub_1E602FC8C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1E602FED4;
  }

  else
  {
    v2 = sub_1E602FDA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E602FDA0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v8 = sub_1E65DB7D8();
  v9 = MEMORY[0x1E69CD5F0];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E69CD5F8];
  }

  (*(*(v8 - 8) + 104))(v0[11], *v9, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E602FED4()
{
  v1 = v0[21];

  swift_getErrorValue();
  v0[5] = MEMORY[0x1E69CC9A8];
  v0[6] = sub_1E5FFF464();
  *(v0 + 16) = 4;
  v2 = sub_1E65E6CA8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = sub_1E65DB7D8();
  v4 = MEMORY[0x1E69CD5F8];
  if ((v2 & 1) == 0)
  {
    v4 = MEMORY[0x1E69CD600];
  }

  (*(*(v3 - 8) + 104))(v0[11], *v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6030010(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  *(v2 + 88) = swift_task_alloc();
  v3 = sub_1E65DB438();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_1E65D7A38();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6030254, 0, 0);
}

uint64_t sub_1E6030254()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v21 = v0[11];
  v20 = v0[22];
  v6 = sub_1E65E3B68();
  __swift_project_value_buffer(v6, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E65DB7F8();
  v7 = *MEMORY[0x1E69CBD58];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v3, v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_1E65D9908();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = sub_1E65D9F88();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1E65D7A28();
  v13 = MetricService.makeOverlayMetricFields.getter();
  v0[23] = v14;
  (*(v1 + 16))(v22, v20, v23);
  sub_1E65D8CA8();
  v15 = sub_1E65D8CB8();
  (*(*(v15 - 8) + 56))(v21, 0, 1, v15);
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E5FB8458(v16);
  sub_1E65DB428();
  v24 = (v13 + *v13);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_1E6030648;
  v18 = v0[14];

  return (v24)(v18, 0);
}

uint64_t sub_1E6030648(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E603098C;
  }

  else
  {
    v4[26] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E60307F4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E60307F4()
{
  v14 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v0[9] = v1;
  v0[7] = sub_1E65DB7F8();
  v0[8] = v5;
  sub_1E65E6848();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1;
  sub_1E64205E4(v12, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v0[9] = v13;
  v7 = sub_1E65D8858();
  sub_1E6418198(v7, v8, (v0 + 2));

  sub_1E6032F7C((v0 + 2));
  (*(v4 + 8))(v2, v3);
  v9 = v0[9];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1E603098C()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6030A6C()
{
  v1[259] = v0;
  v2 = sub_1E65DB7D8();
  v1[265] = v2;
  v1[271] = *(v2 - 8);
  v1[277] = swift_task_alloc();
  v1[283] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6030B38, 0, 0);
}

uint64_t sub_1E6030B38()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v2 = EngagementService.fetchPlacement.getter();
  *(v0 + 2312) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 2360) = v4;
  *v4 = v0;
  v4[1] = sub_1E6030CC0;

  return v6(3);
}

uint64_t sub_1E6030CC0(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 2408) = a1;
  *(v5 + 2456) = v2;

  if (v2)
  {
    v6 = sub_1E6031450;
  }

  else
  {

    *(v5 + 2656) = a2;
    v6 = sub_1E6030DF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E6030DF4()
{
  if (*(v0 + 2656))
  {
    v1 = *(v0 + 2072);

    sub_1E6032DE4();
    swift_asyncLet_begin();

    swift_asyncLet_begin();
    v2 = swift_allocObject();
    *(v0 + 2504) = v2;
    *(v2 + 16) = v1;
    *(v2 + 24) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735C0, &qword_1E65EABD0);
    swift_asyncLet_begin();
    v3 = *(v0 + 2264);

    return MEMORY[0x1EEE6DEC0](v0 + 656, v3, sub_1E6030FD0, v0 + 1936);
  }

  else
  {
    v4 = *(v0 + 2408);
    sub_1E6032B9C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E6030FD0()
{
  *(v1 + 2552) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E60314C8, v1 + 1984);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031014, 0, 0);
  }
}

uint64_t sub_1E6031014()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2120);
  (*(v2 + 16))(v1, *(v0 + 2264), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD5F0])
  {
    goto LABEL_2;
  }

  if (v4 != *MEMORY[0x1E69CD5F8])
  {
    if (v4 == *MEMORY[0x1E69CD600])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_7;
    }

    (*(*(v0 + 2168) + 8))(*(v0 + 2216), *(v0 + 2120));
  }

  v5 = 2;
LABEL_7:
  *(v0 + 2657) = v5;

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v0 + 2024, sub_1E603112C, v0 + 2128);
}

uint64_t sub_1E603112C()
{
  *(v1 + 2600) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E60315F0, v1 + 2176);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031170, 0, 0);
  }
}

uint64_t sub_1E6031170()
{
  v1 = *(v0 + 2408);

  sub_1E625B644(v2);

  v3 = sub_1E65E5AF8();

  [v1 setMetricsOverlay_];

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1976, sub_1E6031244, v0 + 2320);
}

uint64_t sub_1E6031244()
{
  *(v1 + 2648) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E6031718, v1 + 2368);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031288, 0, 0);
  }
}

uint64_t sub_1E6031288()
{
  v1 = *(v0 + 2408);
  [v1 setAccount_];
  [v1 setAnonymousMetrics_];

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 2024, sub_1E6031324, v0 + 2512);
}

uint64_t sub_1E60313B8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2408);

  return v1(v2);
}

uint64_t sub_1E6031450()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E603155C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6031684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60317AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6031840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6031860, 0, 0);
}

uint64_t sub_1E6031860(uint64_t a1)
{
  v2 = AccountService.fetchCurrentAccount.getter();
  *(v1 + 32) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  v4[1] = sub_1E6031960;

  return v6();
}

uint64_t sub_1E6031960(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1E5FAD050;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1E5FE1740;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6031A90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E602FA64(a1);
}

uint64_t sub_1E6031B2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1E6031BCC;

  return sub_1E6030010(a3);
}

uint64_t sub_1E6031BCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E6031D18, 0, 0);
  }
}

uint64_t sub_1E6031D3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1E6031DCC;

  return sub_1E6030A6C();
}

uint64_t sub_1E6031DCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6031F00, 0, 0);
  }
}

uint64_t sub_1E6031F00()
{
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6031F94, v2, v1);
}

uint64_t sub_1E6031F94()
{
  v1 = *(v0 + 16);

  *(v0 + 56) = [v1 presentedViewController];

  return MEMORY[0x1EEE6DFA0](sub_1E603201C, 0, 0);
}

uint64_t sub_1E603201C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];

    sub_1E6032B9C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = *(v7 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_placement);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_1E60321B8;
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD00000000000002ELL, 0x80000001E6611750, sub_1E6032B8C, v10, v12);
  }
}

uint64_t sub_1E60321B8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E6032338;
  }

  else
  {

    v2 = sub_1E60322D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60322D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6032338()
{

  v1 = *(v0 + 8);

  return v1();
}