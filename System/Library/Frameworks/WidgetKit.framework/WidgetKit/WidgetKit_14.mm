uint64_t sub_19217D03C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_192226330();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1510, &qword_19223BDA8);
  return sub_19217CCF8((a1 + *(v2 + 44)));
}

__n128 AccessoryRectangularLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14E8, &qword_19223BCD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_192226340();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14F0, &qword_19223BCD8);
  sub_19217D1D4(&v5[*(v6 + 44)]);
  sub_192227600();
  sub_192225DA0();
  sub_19208F3B0(v5, a2);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF14F8, &qword_19223BCE0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_19217D1D4@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v1 = sub_192226FB0();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_192226900();
  MEMORY[0x1EEE9AC00](v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1520, &qword_19223BDB8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v38 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1528, &qword_19223BDC0);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1530, &qword_19223BDC8);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v38 - v10;
  v44 = sub_1922268E0();
  v40 = *(v44 - 8);
  v11 = v40;
  MEMORY[0x1EEE9AC00](v44);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v39 = &v38 - v14;
  sub_1922268F0();
  *v4 = sub_1922265C0();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v16 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1538, &qword_19223BDD0) + 44)];
  sub_192226910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1540, &qword_19223BDD8);
  sub_19217E160(&qword_1EADF1548, MEMORY[0x1E697C8A8], MEMORY[0x1E697C8A0]);
  sub_192031E74(&qword_1EADF1550, &qword_1EADF1540, &qword_19223BDD8, MEMORY[0x1E6981F48]);
  sub_192227350();
  KeyPath = swift_getKeyPath();
  v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1558, &qword_19223BE10) + 36)];
  *v18 = KeyPath;
  *(v18 + 1) = 3;
  v18[16] = 0;
  *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1560, &unk_19223BE18) + 36)] = 256;
  sub_192031E74(&qword_1EADF1568, &qword_1EADF1520, &qword_19223BDB8, MEMORY[0x1E6981870]);
  sub_1920FFADC();
  sub_192227020();
  sub_192033970(v4, &qword_1EADF1520, &qword_19223BDB8);
  v19 = &v6[*(v42 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v21 = *MEMORY[0x1E69816C8];
  v22 = sub_192227400();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  v23 = v48;
  sub_192226FA0();
  sub_19217DFB4();
  v24 = v53;
  sub_192227030();
  (*(v49 + 8))(v23, v50);
  sub_19208F4B0(v6);
  v25 = *(v11 + 16);
  v26 = v52;
  v27 = v15;
  v28 = v44;
  v25(v52, v27, v44);
  v29 = v45;
  v30 = v46;
  v31 = *(v46 + 16);
  v32 = v47;
  v31(v45, v24, v47);
  v33 = v51;
  v25(v51, v26, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1578, &qword_19223BE58);
  v31(&v33[*(v34 + 48)], v29, v32);
  v35 = *(v30 + 8);
  v35(v53, v32);
  v36 = *(v40 + 8);
  v36(v39, v28);
  v35(v29, v32);
  return (v36)(v52, v28);
}

uint64_t sub_19217D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226570();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD8, &qword_192232020);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = sub_1922275A0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFC0, &qword_192232010);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v48 = a1;
  sub_19217CA0C(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_192033970(v16, &qword_1EADEFFB8, &qword_192235270);
    v27 = 1;
    v28 = v42;
  }

  else
  {
    v41 = a2;
    v29 = *(v18 + 32);
    v29(v20, v16, v17);
    v30 = sub_192226F00();
    KeyPath = swift_getKeyPath();
    v29(v13, v20, v17);
    a2 = v41;
    v32 = v42;
    v33 = &v13[*(v42 + 36)];
    *v33 = KeyPath;
    v33[1] = v30;
    sub_19217E0F0(v13, v26);
    v27 = 0;
    v28 = v32;
  }

  (*(v43 + 56))(v26, v27, 1, v28);
  (*(v46 + 16))(v44, v48, v47);
  sub_19217CBA4(1);
  v34 = sub_192226D80();
  v35 = swift_getKeyPath();
  v36 = &v9[*(v45 + 36)];
  *v36 = v35;
  v36[1] = v34;
  sub_19202CFFC(v26, v23, &qword_1EADEFFC0, &qword_192232010);
  v37 = v49;
  sub_19202CFFC(v9, v49, &qword_1EADEFFD8, &qword_192232020);
  sub_19202CFFC(v23, a2, &qword_1EADEFFC0, &qword_192232010);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1580, &qword_19223BE90);
  sub_19202CFFC(v37, a2 + *(v38 + 48), &qword_1EADEFFD8, &qword_192232020);
  sub_192033970(v9, &qword_1EADEFFD8, &qword_192232020);
  sub_192033970(v26, &qword_1EADEFFC0, &qword_192232010);
  sub_192033970(v37, &qword_1EADEFFD8, &qword_192232020);
  return sub_192033970(v23, &qword_1EADEFFC0, &qword_192232010);
}

unint64_t sub_19217DD8C()
{
  result = qword_1EADF1500;
  if (!qword_1EADF1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF14F8, &qword_19223BCE0);
    sub_192031E74(&qword_1EADF1508, &qword_1EADF14E8, &qword_19223BCD0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1500);
  }

  return result;
}

uint64_t sub_19217DE94(uint64_t a1)
{
  v2 = sub_192227400();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_192225E40();
}

uint64_t sub_19217DF5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1922260C0();
  *a1 = result;
  return result;
}

unint64_t sub_19217DFB4()
{
  result = qword_1EADF1570;
  if (!qword_1EADF1570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1528, &qword_19223BDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1520, &qword_19223BDB8);
    sub_192031E74(&qword_1EADF1568, &qword_1EADF1520, &qword_19223BDB8, MEMORY[0x1E6981870]);
    sub_1920FFADC();
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1570);
  }

  return result;
}

uint64_t sub_19217E0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19217E160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19217E278(uint64_t a1)
{
  v2 = sub_19217E43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217E2B4(uint64_t a1)
{
  v2 = sub_19217E43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSpatialSurface.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1598, &qword_19223BEA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217E43C();
  sub_192228B90();
  v10 = v7;
  sub_19217E490();
  sub_1922288C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19217E43C()
{
  result = qword_1EADF15A0;
  if (!qword_1EADF15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15A0);
  }

  return result;
}

unint64_t sub_19217E490()
{
  result = qword_1EADF15A8;
  if (!qword_1EADF15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15A8);
  }

  return result;
}

uint64_t WidgetSpatialSurface.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF15B0, &qword_19223BEA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217E43C();
  sub_192228B70();
  if (!v2)
  {
    sub_19217E650();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19217E650()
{
  result = qword_1EADF15B8;
  if (!qword_1EADF15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15B8);
  }

  return result;
}

unint64_t sub_19217E708()
{
  result = qword_1EADF15C0;
  if (!qword_1EADF15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15C0);
  }

  return result;
}

unint64_t sub_19217E760()
{
  result = qword_1EADF15C8;
  if (!qword_1EADF15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15C8);
  }

  return result;
}

unint64_t sub_19217E7B8()
{
  result = qword_1EADF15D0;
  if (!qword_1EADF15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15D0);
  }

  return result;
}

unint64_t sub_19217E810()
{
  result = qword_1EADF15D8;
  if (!qword_1EADF15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15D8);
  }

  return result;
}

unint64_t sub_19217E864()
{
  result = qword_1EADF15E0;
  if (!qword_1EADF15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15E0);
  }

  return result;
}

uint64_t sub_19217E99C(uint64_t a1)
{
  v2 = sub_19217EB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217E9D8(uint64_t a1)
{
  v2 = sub_19217EB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSpatialChromeStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF15E8, &qword_19223C150);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217EB60();
  sub_192228B90();
  v10 = v7;
  sub_19217EBB4();
  sub_1922288C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19217EB60()
{
  result = qword_1EADF15F0;
  if (!qword_1EADF15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15F0);
  }

  return result;
}

unint64_t sub_19217EBB4()
{
  result = qword_1EADF15F8;
  if (!qword_1EADF15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF15F8);
  }

  return result;
}

uint64_t WidgetSpatialChromeStyle.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t WidgetSpatialChromeStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1600, &qword_19223C158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19217EB60();
  sub_192228B70();
  if (!v2)
  {
    sub_19217EDE8();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19217EDE8()
{
  result = qword_1EADF1608;
  if (!qword_1EADF1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1608);
  }

  return result;
}

unint64_t sub_19217EE40()
{
  result = qword_1ED74ABA0;
  if (!qword_1ED74ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABA0);
  }

  return result;
}

unint64_t sub_19217EEF8()
{
  result = qword_1EADF1610;
  if (!qword_1EADF1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1610);
  }

  return result;
}

unint64_t sub_19217EF50()
{
  result = qword_1EADF1618;
  if (!qword_1EADF1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1618);
  }

  return result;
}

unint64_t sub_19217EFA8()
{
  result = qword_1EADF1620;
  if (!qword_1EADF1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1620);
  }

  return result;
}

unint64_t sub_19217F000()
{
  result = qword_1EADF1628;
  if (!qword_1EADF1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1628);
  }

  return result;
}

unint64_t sub_19217F054()
{
  result = qword_1EADF1630;
  if (!qword_1EADF1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1630);
  }

  return result;
}

void sub_19217F0F0(uint64_t a1)
{
  sub_19217F1C8();
  if (v1 <= 0x3F)
  {
    sub_192040778(319, &qword_1EADEE460, &type metadata for CodableColor);
    if (v2 <= 0x3F)
    {
      sub_192040A54(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19217F1C8()
{
  if (!qword_1EADEE010)
  {
    v0 = sub_192227860();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE010);
    }
  }
}

void sub_19217F270(uint64_t a1)
{
  sub_19217F398();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition(319);
    if (v2 <= 0x3F)
    {
      sub_19217F3FC(319);
      if (v3 <= 0x3F)
      {
        sub_19217F1C8();
        if (v4 <= 0x3F)
        {
          sub_192040778(319, &qword_1EADEE458, &type metadata for JindoViewTag);
          if (v5 <= 0x3F)
          {
            sub_192040A54(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
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

unint64_t sub_19217F398()
{
  result = qword_1EADEE290[0];
  if (!qword_1EADEE290[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EADEE290);
  }

  return result;
}

void sub_19217F3FC(uint64_t a1)
{
  if (!qword_1EADEE028)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEB0, &unk_19223C4E0);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    v4 = MEMORY[0x1E69E6348];
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = sub_192031E74(&qword_1EADEDFF8, &qword_1EADEFEB0, &unk_19223C4E0, MEMORY[0x1E69E6348]);
    v7[3] = sub_192031E74(&qword_1EADEE008, &qword_1EADF1638, &unk_192240A20, v4);
    v5 = type metadata accessor for Cartesian2ProductCollection(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EADEE028);
    }
  }
}

uint64_t sub_19217F4FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1678, &qword_19223C5A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192183840();
  sub_192228B90();
  *&v14 = *v3;
  v9 = v14;
  v17 = 0;
  sub_1920E2830();
  v10 = v9;
  sub_1922288C0();

  if (!v2)
  {
    *&v14 = *(v3 + 8);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    sub_192183950(&qword_1EADED3A8, sub_1921839D4, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1922288C0();
    v11 = *(v3 + 32);
    v12 = *(v3 + 33);
    v14 = *(v3 + 16);
    v15 = v11;
    v16 = v12;
    v17 = 2;
    sub_19214E818();
    sub_192228850();
    type metadata accessor for JindoViewStates.Metadata(0);
    LOBYTE(v14) = 3;
    sub_192225020();
    sub_19217FE58(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_192228850();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19217F7B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1668, &unk_19223C590);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for JindoViewStates.Metadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 16) = 256;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v14 = *(v13 + 36);
  v15 = sub_192225020();
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192183840();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192033970(&v12[v27], &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v17 = v25;
    v18 = v6;
    v31 = 0;
    sub_192044634();
    v19 = v26;
    sub_1922287C0();
    *v12 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    v31 = 1;
    sub_192183950(&qword_1EADECF40, sub_192183894, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1922287C0();
    v23[1] = v28;
    *(v12 + 1) = v28;
    v31 = 2;
    sub_19214E914();
    sub_192228750();
    v20 = v29;
    v21 = v30;
    *(v12 + 1) = v28;
    v12[32] = v20;
    v12[33] = v21;
    LOBYTE(v28) = 3;
    sub_19217FE58(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_192228750();
    (*(v17 + 8))(v9, v19);
    sub_19203CF50(v18, &v12[v27]);
    sub_1921838E8(v12, v24, type metadata accessor for JindoViewStates.Metadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192183504(v12, type metadata accessor for JindoViewStates.Metadata);
  }
}

unint64_t sub_19217FC60()
{
  v1 = 0x6D6E6F7269766E65;
  v2 = 0x726F6C6F4379656BLL;
  if (*v0 != 2)
  {
    v2 = 0x5255746567646977;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001CLL;
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

uint64_t sub_19217FCEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192183E58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19217FD14(uint64_t a1)
{
  v2 = sub_192183840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19217FD50(uint64_t a1)
{
  v2 = sub_192183840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19217FE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19217FEA0@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v116 = sub_1922259F0();
  v104 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v94 - v4;
  v111 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  MEMORY[0x1EEE9AC00](v111);
  v6 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  v109 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v109);
  v108 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v94 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v94 - v17;
  v19 = sub_1922261D0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v94 - v28;
  v97 = type metadata accessor for JindoViewStates(0);
  v29 = *(v97 + 28);
  v99 = v1;
  v96 = v29;
  v30 = *(v1 + v29);
  v31 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v32 = *(*&v30[v31] + 16);
  v118 = v19;
  v101 = v20;
  if (v32)
  {
    v95 = v18;
    v33 = v11;
    v34 = v109;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v15 = v30;
    sub_1921837D8(v15, v33, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v117 = v33;
    v35 = v110;
    sub_19202CFFC(v33, v110, &qword_1EADEF258, &qword_19222C6C8);
    v36 = v108;
    sub_1921837D8(v35, v108, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v37 = *v36;
    v38 = v34[5];
    v39 = *(v111 + 20);
    v40 = *(v20 + 16);
    v110 = v20 + 16;
    v111 = v39;
    v109 = v40;
    (v40)(v6 + v39, v36 + v38, v19);
    v41 = v30;
    v42 = v37;
    v44 = sub_192056208(MEMORY[0x1E69E7CC0], v43);
    v119 = v42;
    v45 = v42;

    sub_192056340(&v119, v44);
    v47 = v46;
    v49 = v48;
    v51 = v50;

    *v6 = v47;
    v6[1] = v49;
    v6[2] = v51;
    sub_192183504(v36, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    if (v49 >> 62)
    {
      goto LABEL_35;
    }

    v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v53 = v117;
    if (v52 >= 1)
    {
      v108 = (v101 + 32);
      v106 = *MEMORY[0x1E697DBA8];
      v105 = (v104 + 13);
      ++v104;
      v102 = (v101 + 8);
      v107 = v6;
      v103 = v24;
      do
      {

        if ((sub_19205F34C(v52 - 1, v54) & 1) == 0)
        {

          v55 = MEMORY[0x1E69E7CC0];
          *v6 = MEMORY[0x1E69E7CC0];

          v6[1] = v55;

          v6[2] = v55;
        }

        (v109)(v24, v6 + v111, v19);
        if (v49 >> 62)
        {
          v56 = sub_192228340();
          if (!v56)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v56 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v56)
          {
            goto LABEL_17;
          }
        }

        if (v56 < 1)
        {
          __break(1u);
LABEL_35:
          v52 = sub_192228340();
          goto LABEL_4;
        }

        for (i = 0; i != v56; ++i)
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x193B0B410](i, v49);
          }

          else
          {
            v58 = *(v49 + 8 * i + 32);
          }

          (*(**(v58 + 16) + 112))(v24);
        }

LABEL_17:

        v59 = *v108;
        v60 = v112;
        v19 = v118;
        (*v108)(v112, v24, v118);
        v61 = v113;
        v59(v113, v60, v19);
        v62 = v114;
        sub_192225E50();
        v64 = v115;
        v63 = v116;
        (*v105)(v115, v106, v116);
        v65 = sub_1922259E0();
        v66 = *v104;
        (*v104)(v64, v63);
        v66(v62, v63);
        if (v65)
        {
          sub_192033970(v117, &qword_1EADEF258, &qword_19222C6C8);
          sub_192183504(v107, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
          v18 = v95;
          v59(v95, v61, v19);
          v68 = 0;
          goto LABEL_26;
        }

        (*v102)(v61, v19);
        v6 = v107;
        v49 = v107[1];
        v53 = v117;
        if (v49 >> 62)
        {
          v67 = v117;
          v52 = sub_192228340();
          v53 = v67;
        }

        else
        {
          v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v24 = v103;
      }

      while (v52 > 0);
    }

    sub_192033970(v53, &qword_1EADEF258, &qword_19222C6C8);
    sub_192183504(v6, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    v68 = 1;
    v18 = v95;
LABEL_26:
    v70 = v101;
    (*(v101 + 56))(v18, v68, 1, v19);
    v72 = (*(v70 + 48))(v18, 1, v19);
    v69 = v99;
    v71 = v98;
    if (v72 != 1)
    {
      (*(v70 + 32))(v98, v18, v19);
      goto LABEL_30;
    }
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19);
    v69 = v99;
    v70 = v20;
    v71 = v98;
  }

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  if ((*(v70 + 48))(v18, 1, v19) != 1)
  {
    sub_192033970(v18, &qword_1EADEF250, &qword_19222C6C0);
  }

LABEL_30:
  v73 = v69[4];
  v74 = v69[5];
  __swift_project_boxed_opaque_existential_1(v69 + 1, v73);
  v75 = (*(v74 + 24))(v73, v74);
  if (v75)
  {
    sub_192227270();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v116 = v81 | (v83 << 32);
    v117 = v77 | (v79 << 32);
  }

  else
  {
    v116 = 0;
    v117 = 0;
  }

  v84 = v97;
  LODWORD(v115) = v75 == 0;
  v119 = *(v69 + v96);
  v85 = v119;
  WidgetEnvironment.filterForArchiving()();
  v86 = v119;
  v87 = *(v69 + *(v84 + 36));
  v88 = v69[4];
  v89 = v69[5];
  __swift_project_boxed_opaque_existential_1(v69 + 1, v88);
  v90 = *(v89 + 32);
  type metadata accessor for JindoViewStates.Metadata(0);

  v91 = v100;
  v90(v88, v89);
  result = (*(v101 + 8))(v71, v118);
  *v91 = v86;
  *(v91 + 8) = v87;
  v93 = v116;
  *(v91 + 16) = v117;
  *(v91 + 24) = v93;
  *(v91 + 32) = v115;
  *(v91 + 33) = 0;
  return result;
}

uint64_t sub_19218094C(uint64_t a1, uint64_t a2)
{
  v192 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = &v161 - v5;
  v6 = sub_1922259F0();
  v172 = *(v6 - 8);
  v173 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v164 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v161 - v9;
  v10 = sub_192225E00();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1650, &qword_19223C568);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v161 - v12;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1658, &qword_19223C570);
  MEMORY[0x1EEE9AC00](v166);
  v161 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v191 = &v161 - v15;
  v16 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v179 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v167 = &v161 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v165 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v223 = &v161 - v23;
  v24 = sub_1922265A0();
  v177 = *(v24 - 8);
  v178 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v174 = &v161 - v28;
  v29 = type metadata accessor for JindoMetricsDefinition(0);
  v30 = *(v29 - 8);
  v175 = v29;
  v176 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v187 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1922261D0();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v185 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v189 = &v161 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v161 - v38;
  v40 = type metadata accessor for JindoViewStates(0);
  v41 = (v2 + v40[8]);
  v42 = *v41;
  v43 = v41[1];
  v180 = a1;
  v44 = sub_1921F9E14(v39, a1, v42, v43);
  v45 = v2;
  *(&v2->isa + v40[10]) = v44;
  v46 = v40[11];
  sub_192033970(v45 + v46, &qword_1EADEF250, &qword_19222C6C0);
  v183 = *(v33 + 16);
  v184 = v33 + 16;
  v183(v45 + v46, v39, v32);
  v181 = v33;
  v47 = v33;
  v48 = v174;
  v49 = *(v47 + 56);
  v190 = v32;
  v49(v45 + v46, 0, 1, v32);
  v169 = v40;
  v186 = v39;
  sub_192225EC0();
  v188 = v45;
  ActivityMetricsDefinition.jindoMetrics(for:)(v26, v48);
  v50 = v175;
  (*(v177 + 8))(v26, v178);
  result = (*(v176 + 48))(v48, 1, v50);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v52 = v187;
  sub_1921837D8(v48, v187, type metadata accessor for JindoMetricsDefinition);
  v53 = v52 + *(v50 + qword_19223CA08[v44]);
  v54 = v223;
  sub_1921838E8(v53, v223, type metadata accessor for MetricsRequest);
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v59 = v44;
  if ((*(v54 + 88) & 1) == 0)
  {
    v56 = *(v54 + 72);
    v57 = *(v54 + 64) <= 0.0 ? *(v54 + 64) : *(v54 + 96);
    v55 = *(v54 + 80) <= 0.0 ? *(v54 + 80) : *(v54 + 96);
    v58 = *(v54 + 56) <= 0.0 ? *(v54 + 56) : *(v54 + 96);
    if (v56 > 0.0)
    {
      v56 = *(v54 + 96);
    }
  }

  isa = v188[4].isa;
  v61 = v188[5].isa;
  __swift_project_boxed_opaque_existential_1(&v188[1].isa, isa);
  v62 = v44;
  v63 = v52;
  v178 = (*(v61 + 1))(v62, v52, isa, v61);
  v64 = *v54;
  if (*(v54 + 16))
  {
    v65 = *(v54 + 8);
  }

  else
  {
    v65 = *v54;
  }

  v66 = *(v54 + 24);
  if (*(v54 + 40))
  {
    v67 = *(v54 + 32);
  }

  else
  {
    v67 = *(v54 + 24);
  }

  if (v59 > 1u)
  {
    if (v59 == 2)
    {
      sub_192227610();
    }

    else
    {
      sub_1922275F0();
    }
  }

  else if (v59)
  {
    sub_192227600();
  }

  else
  {
    sub_1922275E0();
  }

  if (v65 < v64 || v67 < v66)
  {
    sub_192227FA0();
    v68 = sub_192226D00();
    sub_1922257A0();
  }

  sub_192225DA0();
  LOBYTE(v212) = v59;
  v69 = v223;
  v70 = v165;
  sub_1921838E8(v223, v165, type metadata accessor for MetricsRequest);
  v71 = v191;
  sub_1920F7ADC(&v212, v70, (v191 + *(v166 + 36)));
  v72 = v207;
  *(v71 + 56) = v208;
  v73 = v210;
  *(v71 + 72) = v209;
  *(v71 + 88) = v73;
  *(v71 + 104) = v211;
  v74 = v206;
  *(v71 + 8) = v205;
  *(v71 + 24) = v74;
  *v71 = v178;
  *(v71 + 40) = v72;
  v75 = v190;
  if (qword_1EADEDA40 != -1)
  {
    swift_once();
  }

  v76 = dyld_program_sdk_at_least();
  v77 = v189;
  v182 = v59;
  if (v76)
  {
    v78 = *(v69 + 48) + (v56 + v58) * -0.5;
    if (v59 > 1u)
    {
      if (v59 == 2)
      {
        *(&v201 + 1) = &type metadata for TrailingConcentricClip;
        v79 = sub_192183730();
        goto LABEL_39;
      }
    }

    else if (v59)
    {
      *(&v201 + 1) = &type metadata for LeadingConcentricClip;
      v79 = sub_192183784();
LABEL_39:
      v202 = v79;
      *&v200 = v78;
LABEL_41:
      __swift_project_boxed_opaque_existential_1(&v200, *(&v201 + 1));
      v85 = sub_192226D10();
      v86 = v162;
      sub_19202CFFC(v191, v162, &qword_1EADF1658, &qword_19223C570);
      v87 = v86 + *(v163 + 36);
      *v87 = v85;
      *(v87 + 8) = -v58;
      *(v87 + 16) = -v57;
      *(v87 + 24) = -v56;
      *(v87 + 32) = -v55;
      *(v87 + 40) = 0;
      sub_192225A10();
      v198 = sub_192225C70();
      v88 = sub_1921836A4();
      WitnessTable = swift_getWitnessTable();
      v195 = v88;
      v196 = WitnessTable;
      v199 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(&v197);
      sub_192227210();
      sub_192033970(v86, &qword_1EADF1650, &qword_19223C568);
      v90 = v199;
      __swift_project_boxed_opaque_existential_1(&v197, v198);
      v91 = sub_192225C70();
      *(&v213 + 1) = v91;
      v193 = v90;
      v194 = MEMORY[0x1E697E5D8];
      v214 = swift_getWitnessTable();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v212);
      sub_1922271D0();
      __swift_destroy_boxed_opaque_existential_1(&v197);
      v93 = __swift_destroy_boxed_opaque_existential_1(&v200);
      v94 = MEMORY[0x1EEE9AC00](v93);
      (*(v96 + 16))(&v161 - v95, boxed_opaque_existential_1, v91, v94);
      *&v200 = sub_192227570();
      sub_1922264D0();
      __swift_destroy_boxed_opaque_existential_1(&v212);
      v77 = v189;
      v75 = v190;
      v63 = v187;
      goto LABEL_42;
    }

    v80 = sub_192225D60();
    *(&v201 + 1) = v80;
    v202 = sub_19217FE58(&qword_1EADEDDB0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v81 = __swift_allocate_boxed_opaque_existential_1(&v200);
    v82 = *(v80 + 20);
    v83 = *MEMORY[0x1E697F468];
    v84 = sub_192226560();
    (*(*(v84 - 8) + 104))(v81 + v82, v83, v84);
    *v81 = v78;
    v81[1] = v78;
    goto LABEL_41;
  }

  sub_19202CFFC(v191, v161, &qword_1EADF1658, &qword_19223C570);
  sub_192183564();
  *&v212 = sub_192227570();
  sub_1922264D0();
LABEL_42:
  v97 = v183;
  v183(v77, v186, v75);
  v98 = v188[4].isa;
  v99 = v188[5].isa;
  __swift_project_boxed_opaque_existential_1(&v188[1].isa, v98);
  (*(v99 + 2))(v77, v182, v63, v98, v99);
  sub_192225DE0();
  sub_192225FF0();
  LOBYTE(v212) = 1;
  sub_19215EDB0();
  sub_1922261F0();
  v97(v185, v77, v75);
  sub_192226360();
  v100 = v223;
  v101 = v167;
  sub_1921838E8(v223, v167, type metadata accessor for MetricsRequest);
  v102 = *(v101 + 16);
  v103 = *(v101 + 40);
  sub_192183504(v101, type metadata accessor for MetricsRequest);
  LOBYTE(v212) = v102;
  LOBYTE(v200) = v103;
  v104 = v100;
  sub_192226370();
  v107 = *v100;
  if (*(v100 + 16))
  {
    v108 = *v100;
    if (*(v100 + 8) < v105)
    {
      v105 = *(v100 + 8);
    }

    v109 = v172;
    v110 = v173;
    v111 = v170;
    if (v105 > v107)
    {
      v108 = v105;
    }
  }

  else
  {
    v108 = *v100;
    v109 = v172;
    v110 = v173;
    v111 = v170;
  }

  v112 = v189;
  if (*(v104 + 40))
  {
    v113 = *(v104 + 32);
    v114 = *(v104 + 24);
    if (v113 >= v106)
    {
      v113 = v106;
    }

    if (v113 > *(v104 + 24))
    {
      v114 = v113;
    }
  }

  else
  {
    v114 = *(v104 + 24);
  }

  sub_19216F7A4();
  sub_1922261E0();
  if ((v212 & 1) == 0)
  {
    sub_192226940();
    sub_1922263F0();
    v115 = v111;
    v116 = *(v109 + 48);
    if (v116(v115, 1, v110) == 1)
    {
      (*(v109 + 104))(v171, *MEMORY[0x1E697DBA8], v110);
      v117 = v116(v115, 1, v110);
      v118 = v109;
      if (v117 != 1)
      {
        sub_192033970(v115, &unk_1EADEECA0, &qword_19222B090);
      }
    }

    else
    {
      (*(v109 + 32))(v171, v115, v110);
      v118 = v109;
    }

    if (sub_192225FB0())
    {
      (*(v118 + 104))(v164, *MEMORY[0x1E697DBA8], v110);
      v119 = v171;
    }

    else
    {
      v119 = v171;
      (*(v118 + 16))(v164, v171, v110);
    }

    v104 = v223;
    sub_192225E60();
    v183(v185, v112, v190);
    sub_192226360();
    (*(v118 + 8))(v119, v110);
  }

  v120 = *(v104 + 48);
  LOBYTE(v200) = 1;
  v212 = 0uLL;
  *&v213 = v108;
  *(&v213 + 1) = v114;
  v214 = v120;
  v215 = 0;
  v217 = 0;
  v216 = 0;
  v218 = 256;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 257;
  v121 = v104;
  v122 = v169[9];
  v123 = v188;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v200 = *(v123 + v122);
  sub_19213DC78(&v212, v180, isUniquelyReferenced_nonNull_native);
  *(&v123->isa + v122) = v200;
  if (qword_1EADEDEC0 != -1)
  {
    swift_once();
  }

  v125 = sub_1922258B0();
  __swift_project_value_buffer(v125, qword_1EAE007F0);
  v126 = v179;
  sub_1921838E8(v121, v179, type metadata accessor for MetricsRequest);
  v127 = sub_192225890();
  v128 = sub_192227F80();
  v129 = os_log_type_enabled(v127, v128);
  v131 = v181;
  v130 = v182;
  if (v129)
  {
    v132 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v204[0] = v177;
    *v132 = 134350338;
    *(v132 + 4) = v180;
    *(v132 + 12) = 2082;
    v188 = v127;
    LODWORD(v178) = v128;
    if (v130 > 1u)
    {
      if (v130 == 2)
      {
        v133 = 0xEF676E696C696172;
        v134 = 0x54746361706D6F63;
      }

      else
      {
        v133 = 0xEE006C616D696E69;
        v134 = 0x4D746361706D6F63;
      }
    }

    else if (v130)
    {
      v133 = 0xEE00676E69646165;
      v134 = 0x4C746361706D6F63;
    }

    else
    {
      v133 = 0xE800000000000000;
      v134 = 0x6465646E61707865;
    }

    v137 = sub_19202B8CC(v134, v133, v204);

    *(v132 + 14) = v137;
    *(v132 + 22) = 2082;
    v138 = v179;
    v139 = *(v179 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_19222B480;
    *(v140 + 56) = MEMORY[0x1E69E7DE0];
    *(v140 + 64) = sub_192150ED0();
    *(v140 + 32) = v139;
    v141 = sub_192227970();
    v143 = v142;
    sub_192183504(v138, type metadata accessor for MetricsRequest);
    v144 = sub_19202B8CC(v141, v143, v204);

    *(v132 + 24) = v144;
    *(v132 + 32) = 2082;
    v145 = sub_192228130();
    v147 = sub_19202B8CC(v145, v146, v204);

    *(v132 + 34) = v147;
    *(v132 + 42) = 2082;
    *&v200 = 0;
    *(&v200 + 1) = 0xE000000000000000;
    sub_192228400();
    v197 = v200;
    MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224A320);
    v200 = v212;
    v201 = v213;
    type metadata accessor for CGRect(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0x72656E726F63202CLL, 0xEF3D737569646152);
    v148 = sub_192227D10();
    MEMORY[0x193B0A990](v148);

    MEMORY[0x193B0A990](62, 0xE100000000000000);
    v149 = sub_19202B8CC(v197, *(&v197 + 1), v204);

    *(v132 + 44) = v149;
    *(v132 + 52) = 2082;
    v150 = v189;
    swift_beginAccess();
    v151 = v185;
    v136 = v190;
    v183(v185, v150, v190);
    v203 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
    WidgetEnvironment.apply(environmentValues:)();
    v131 = v181;
    (*(v181 + 8))(v151, v136);
    v152 = v203;
    *&v197 = 0xD000000000000012;
    *(&v197 + 1) = 0x80000001922488B0;
    v153 = [v203 debugDescription];
    v154 = sub_192227960();
    v156 = v155;

    MEMORY[0x193B0A990](v154, v156);
    v112 = v150;

    v157 = sub_19202B8CC(v197, *(&v197 + 1), v204);

    *(v132 + 54) = v157;
    v158 = v188;
    _os_log_impl(&dword_192028000, v188, v178, "archive index: %{public}ld, tag: %{public}s, cornerRadius: %{public}s, fitting size: %{public}s, metadata metrics: %{public}s, env: %{public}s", v132, 0x3Eu);
    v159 = v177;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v159, -1, -1);
    MEMORY[0x193B0C7F0](v132, -1, -1);

    v135 = v187;
  }

  else
  {

    sub_192183504(v126, type metadata accessor for MetricsRequest);
    v135 = v187;
    v136 = v190;
  }

  sub_1922264A0();
  sub_192033970(v191, &qword_1EADF1658, &qword_19223C570);
  sub_192183504(v223, type metadata accessor for MetricsRequest);
  sub_192183504(v135, type metadata accessor for JindoMetricsDefinition);
  v160 = *(v131 + 8);
  v160(v186, v136);
  return (v160)(v112, v136);
}

CGImageRef sub_192181FD0(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = v82 - v3;
  v4 = type metadata accessor for MetricsRequest(0);
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1922265A0();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v82 - v14;
  v16 = sub_1922261D0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v94 = (v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = 91;
  v96 = 0xE100000000000000;
  LODWORD(Width) = CGImageGetIdentifier();
  v19 = sub_192228910();
  MEMORY[0x193B0A990](v19);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  Width = CGImageGetWidth(a1);
  v20 = sub_192228910();
  MEMORY[0x193B0A990](v20);

  MEMORY[0x193B0A990](120, 0xE100000000000000);
  v91 = a1;
  Width = CGImageGetHeight(a1);
  v21 = sub_192228910();
  MEMORY[0x193B0A990](v21);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v22 = v96;
  v92 = v95;
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v23 = sub_1922258B0();
  v24 = __swift_project_value_buffer(v23, qword_1ED74C788);

  v82[1] = v24;
  v25 = sub_192225890();
  v26 = sub_192227FB0();

  v27 = v12;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v29 = v16;
    v30 = v17;
    v31 = swift_slowAlloc();
    v95 = v31;
    *v28 = 136446210;
    *(v28 + 4) = sub_19202B8CC(v92, v22, &v95);
    _os_log_impl(&dword_192028000, v25, v26, "%{public}s Filtering image", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v32 = v31;
    v17 = v30;
    v16 = v29;
    MEMORY[0x193B0C7F0](v32, -1, -1);
    MEMORY[0x193B0C7F0](v28, -1, -1);
  }

  v33 = v94;
  v34 = type metadata accessor for JindoViewStates(0);
  v35 = v93;
  sub_19202CFFC(v93 + *(v34 + 44), v15, &qword_1EADEF250, &qword_19222C6C0);
  if ((v17[6])(v15, 1, v16) == 1)
  {

    sub_192033970(v15, &qword_1EADEF250, &qword_19222C6C0);
    sub_1921834B0();
    swift_allocError();
    *v36 = xmmword_19223C490;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    return swift_willThrow();
  }

  else
  {
    v17[4](v33, v15, v16);
    v38 = *(v35 + *(v34 + 40));
    if (v38 == 4)
    {

      sub_1921834B0();
      swift_allocError();
      *v39 = 0xD000000000000013;
      *(v39 + 8) = 0x800000019224CB80;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      swift_willThrow();
      return (v17[1])(v33, v16);
    }

    else
    {
      v94 = v17;
      v40 = v83;
      sub_192225EC0();
      v41 = v27;
      ActivityMetricsDefinition.jindoMetrics(for:)(v40, v27);
      (*(v84 + 8))(v40, v85);
      v42 = v27;
      v43 = v86;
      sub_19202CFFC(v42, v86, &qword_1EADEFA58, &unk_19222F820);
      v44 = type metadata accessor for JindoMetricsDefinition(0);
      v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
      v46 = (v87 + 56);
      if (v45 == 1)
      {

        sub_192033970(v41, &qword_1EADEFA58, &unk_19222F820);
        v94[1](v33, v16);
        sub_192033970(v43, &qword_1EADEFA58, &unk_19222F820);
        v47 = v89;
        (*v46)(v89, 1, 1, v88);
        sub_192033970(v47, &qword_1EADF1640, &qword_19223C560);
        return v91;
      }

      else
      {
        v93 = v41;
        v48 = v43 + *(v44 + qword_19223CA08[v38]);
        v49 = v89;
        sub_1921838E8(v48, v89, type metadata accessor for MetricsRequest);
        sub_192183504(v43, type metadata accessor for JindoMetricsDefinition);
        (*v46)(v49, 0, 1, v88);
        v50 = v90;
        sub_1921837D8(v49, v90, type metadata accessor for MetricsRequest);
        if (v38)
        {
          v51 = 1.5;
        }

        else
        {
          v51 = 1.2;
        }

        if (v38)
        {
          v52 = 2.0;
        }

        else
        {
          v52 = 1.2;
        }

        sub_192225EA0();
        v54 = (v50 + 8);
        if (!*(v50 + 16))
        {
          v54 = v50;
        }

        v55 = fmax(v51 * (v53 * *v54), 80.0);
        v56 = (v50 + 24);
        if (*(v50 + 40))
        {
          v56 = (v50 + 32);
        }

        v57 = fmax(v52 * (v53 * *v56), 80.0);
        v58 = v91;
        if (v55 <= CGImageGetWidth(v91) || v57 <= CGImageGetHeight(v58))
        {
          v89 = v16;
          sub_1921FC980(v55, v57);
          if (v65)
          {
            v66 = v65;

            v67 = sub_192225890();
            v68 = sub_192227FA0();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v95 = v70;
              *v69 = 136446722;
              v71 = sub_19202B8CC(v92, v22, &v95);

              *(v69 + 4) = v71;
              *(v69 + 12) = 2050;
              *(v69 + 14) = v55;
              *(v69 + 22) = 2050;
              *(v69 + 24) = v57;
              _os_log_impl(&dword_192028000, v67, v68, "%{public}s Max size exceeded: %{public}fx%{public}f; using placeholder image", v69, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v70);
              MEMORY[0x193B0C7F0](v70, -1, -1);
              MEMORY[0x193B0C7F0](v69, -1, -1);
            }

            else
            {
            }

            sub_192183504(v90, type metadata accessor for MetricsRequest);
            sub_192033970(v93, &qword_1EADEFA58, &unk_19222F820);
            v94[1](v33, v89);
            return v66;
          }

          else
          {

            v72 = sub_192225890();
            v73 = sub_192227FA0();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v95 = v75;
              *v74 = 136446722;
              v76 = sub_19202B8CC(v92, v22, &v95);

              *(v74 + 4) = v76;
              *(v74 + 12) = 2050;
              *(v74 + 14) = v55;
              *(v74 + 22) = 2050;
              *(v74 + 24) = v57;
              _os_log_impl(&dword_192028000, v72, v73, "%{public}s Max size exceeded: %{public}fx%{public}f; unable to create placeholder image", v74, 0x20u);
              __swift_destroy_boxed_opaque_existential_1(v75);
              MEMORY[0x193B0C7F0](v75, -1, -1);
              MEMORY[0x193B0C7F0](v74, -1, -1);
            }

            else
            {
            }

            v77 = v93;
            v78 = v94;
            v79 = CGImageGetWidth(v58);
            Height = CGImageGetHeight(v58);
            sub_1921834B0();
            swift_allocError();
            *v81 = v79;
            *(v81 + 8) = Height;
            *(v81 + 16) = v55;
            *(v81 + 24) = v57;
            *(v81 + 32) = 1;
            swift_willThrow();
            sub_192183504(v90, type metadata accessor for MetricsRequest);
            sub_192033970(v77, &qword_1EADEFA58, &unk_19222F820);
            return v78[1](v33, v89);
          }
        }

        else
        {
          v59 = v16;

          v60 = sub_192225890();
          v61 = sub_192227FB0();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v95 = v63;
            *v62 = 136446210;
            v64 = sub_19202B8CC(v92, v22, &v95);

            *(v62 + 4) = v64;
            _os_log_impl(&dword_192028000, v60, v61, "%{public}s Image permitted", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x193B0C7F0](v63, -1, -1);
            MEMORY[0x193B0C7F0](v62, -1, -1);
          }

          else
          {
          }

          sub_192183504(v90, type metadata accessor for MetricsRequest);
          sub_192033970(v93, &qword_1EADEFA58, &unk_19222F820);
          v94[1](v33, v59);
          return v91;
        }
      }
    }
  }
}

uint64_t sub_192182CE8()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[4])
  {
    v4 = 0;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000003FLL, 0x800000019224C710);
    type metadata accessor for CGSize(0);
    sub_1922285A0();
    MEMORY[0x193B0A990](0xD000000000000020, 0x800000019224C750);
    sub_1922285A0();
  }

  else
  {
    sub_192228400();

    v4 = 0x69666E6F6373694DLL;
    MEMORY[0x193B0A990](v2, v1);
  }

  return v4;
}

double sub_192182E84@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_192226F50();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidY(v14);
  sub_192226F30();
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxX(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinY(v16);
  sub_192226F40();
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  sub_192226F40();
  sub_192226F20();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t (*sub_192182FC0(uint64_t *a1))()
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
  *(v2 + 32) = sub_192225980();
  return sub_192183048;
}

uint64_t sub_19218304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183784();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1921830B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183784();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_192183114(uint64_t a1)
{
  v2 = sub_192183784();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_192183160@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_192226F50();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMaxX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  sub_192226F30();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_192226F40();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxY(v19);
  sub_192226F40();
  sub_192226F20();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t (*sub_1921832CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_192225980();
  return sub_192183FE0;
}

void sub_192183354(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_19218339C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183730();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_192183400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192183730();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_192183464(uint64_t a1)
{
  v2 = sub_192183730();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1921834B0()
{
  result = qword_1EADF1648;
  if (!qword_1EADF1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1648);
  }

  return result;
}

uint64_t sub_192183504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_192183564()
{
  result = qword_1EADEDDE0;
  if (!qword_1EADEDDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1658, &qword_19223C570);
    sub_192183620();
    sub_19217FE58(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers, &unk_192231640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDE0);
  }

  return result;
}

unint64_t sub_192183620()
{
  result = qword_1EADEDDF8;
  if (!qword_1EADEDDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1660, &qword_19223C578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDF8);
  }

  return result;
}

unint64_t sub_1921836A4()
{
  result = qword_1EADEDDC8;
  if (!qword_1EADEDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1650, &qword_19223C568);
    sub_192183564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDC8);
  }

  return result;
}

unint64_t sub_192183730()
{
  result = qword_1EADED778;
  if (!qword_1EADED778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED778);
  }

  return result;
}

unint64_t sub_192183784()
{
  result = qword_1EADED830;
  if (!qword_1EADED830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED830);
  }

  return result;
}

uint64_t sub_1921837D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_192183840()
{
  result = qword_1EADEE360;
  if (!qword_1EADEE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE360);
  }

  return result;
}

unint64_t sub_192183894()
{
  result = qword_1EADED018;
  if (!qword_1EADED018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED018);
  }

  return result;
}

uint64_t sub_1921838E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192183950(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1670, &qword_192244890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921839D4()
{
  result = qword_1EADED6E8;
  if (!qword_1EADED6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED6E8);
  }

  return result;
}

uint64_t sub_192183A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_192183AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_192183B58()
{
  result = qword_1EADF1690;
  if (!qword_1EADF1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1690);
  }

  return result;
}

unint64_t sub_192183BF4()
{
  result = qword_1EADF16A8;
  if (!qword_1EADF16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF16A8);
  }

  return result;
}

unint64_t sub_192183C4C()
{
  result = qword_1EADEE350;
  if (!qword_1EADEE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE350);
  }

  return result;
}

unint64_t sub_192183CA4()
{
  result = qword_1EADEE358;
  if (!qword_1EADEE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE358);
  }

  return result;
}

unint64_t sub_192183CFC()
{
  result = qword_1EADED840;
  if (!qword_1EADED840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED840);
  }

  return result;
}

unint64_t sub_192183D54()
{
  result = qword_1EADED838;
  if (!qword_1EADED838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED838);
  }

  return result;
}

unint64_t sub_192183DAC()
{
  result = qword_1EADED788;
  if (!qword_1EADED788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED788);
  }

  return result;
}

unint64_t sub_192183E04()
{
  result = qword_1EADED780;
  if (!qword_1EADED780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED780);
  }

  return result;
}

uint64_t sub_192183E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224CBD0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F4379656BLL && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5255746567646977 && a2 == 0xE90000000000004CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t BundleStub.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();
  v7 = sub_192227930();

  v8 = [objc_opt_self() bundleWithIdentifier_];

  if (v8)
  {
    v9 = v8;
    v10 = sub_192170798();
    v12 = v11;

    if (!v12)
    {
      v10 = 0x6E776F6E6B6E55;

      v12 = 0xE700000000000000;
    }

    v13 = [v9 bundleURL];
    sub_192224FF0();

    v14 = 0;
  }

  else
  {
    v10 = 0x6E776F6E6B6E55;

    v12 = 0xE700000000000000;
    v14 = 1;
  }

  v15 = sub_192225020();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, v14, 1, v15);
  v16(a2, 1, 1, v15);
  v17 = type metadata accessor for BundleStub(0);
  *&a2[*(v17 + 20)] = a1;
  result = sub_19203CF50(v6, a2);
  v19 = &a2[*(v17 + 24)];
  *v19 = v10;
  v19[1] = v12;
  return result;
}

void BundleStub.identifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BundleStub(0) + 20);

  *(v1 + v3) = a1;
}

void BundleStub.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BundleStub(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_192184380@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_192225020();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192051870(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_192033970(v9, &qword_1EADEEE10, &unk_19222B630);
    goto LABEL_4;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v15 = sub_192224FE0();
  v16 = [v14 initWithURL_];

  (*(v11 + 8))(v13, v10);
  if (!v16)
  {
LABEL_4:
    type metadata accessor for BundleStub(0);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    sub_192225510();
    swift_endAccess();
    v17 = sub_192227930();

    v16 = [objc_opt_self() bundleWithIdentifier_];

    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v18 = [v16 bundleIdentifier];
  if (v18)
  {

    v19 = sub_192170798();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = type metadata accessor for BundleStub(0);
      v24 = *(a1 + *(v23 + 20));
      v25 = [v16 bundleURL];
      sub_192224FF0();

      v26 = *(v11 + 56);
      v26(v6, 0, 1, v10);
      v26(a2, 1, 1, v10);
      *&a2[*(v23 + 20)] = v24;
      sub_19203CF50(v6, a2);
      v27 = &a2[*(v23 + 24)];
      *v27 = v21;
      *(v27 + 1) = v22;
      return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
    }
  }

LABEL_9:
  v29 = type metadata accessor for BundleStub(0);
  return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
}

uint64_t sub_192184764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1921855B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19218478C(uint64_t a1)
{
  v2 = sub_19203EE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921847C8(uint64_t a1)
{
  v2 = sub_19203EE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleStub.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF16B0, &qword_19223CA28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203EE38();
  sub_192228B90();
  v12 = 0;
  sub_192225020();
  sub_19203D6FC(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_192228850();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for BundleStub(0) + 20));
    v10[15] = 1;
    sub_192228100();
    sub_19203D6FC(&qword_1ED74A500, MEMORY[0x1E69941C0], MEMORY[0x1E69941C8]);
    sub_1922288C0();
    v10[14] = 2;
    sub_192228860();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BundleStub.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_192225020();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_192051870(v2, &v11 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_192227890();
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for BundleStub(0);
  sub_1922281E0();
  return sub_1922279B0();
}

uint64_t BundleStub.hashValue.getter()
{
  v1 = v0;
  v2 = sub_192225020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_192228AD0();
  sub_192051870(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_192227890();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for BundleStub(0);
  sub_1922281E0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_192184E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_192228AD0();
  sub_192051870(v3, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_192228AF0();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_192228AF0();
    sub_19203D6FC(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_192227890();
    (*(v5 + 8))(v7, v4);
  }

  sub_1922281E0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t LSBundleProxy.safeBundleVersion.getter()
{
  v1 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v2 = [v0 objectForInfoDictionaryKey:v1 ofClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_192033970(v7, &unk_1EADEF330, &unk_19222CD40);
  }

  return 0x6E776F6E6B6E55;
}

uint64_t _s9WidgetKit10BundleStubV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  sub_192051870(a1, &v26 - v12);
  sub_192051870(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
      goto LABEL_8;
    }

LABEL_6:
    sub_192033970(v13, &qword_1EADEF7D0, &qword_19222E728);
    v17 = 0;
    return v17 & 1;
  }

  sub_192051870(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_19203D6FC(&qword_1EADECF08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v18 = sub_192227910();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

LABEL_8:
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  v20 = type metadata accessor for BundleStub(0);
  if ((sub_1922281D0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = *(v20 + 24);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1922289A0();
  }

  return v17 & 1;
}

unint64_t sub_192185564()
{
  result = qword_1EADF16C8[0];
  if (!qword_1EADF16C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF16C8);
  }

  return result;
}

uint64_t sub_1921855B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1921856D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1921856EC(void *a1, void **a2, void *a3)
{
  v109 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v100 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v100 - v19;
  v20 = type metadata accessor for ViewableTimelineEntry(0);
  v120 = *(v20 - 8);
  v130 = v120;
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v100 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v114 = &v100 - v25;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v129);
  v128 = (&v100 - v26);
  v124 = sub_192225150();
  v127 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v118 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v117);
  v108 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3[3];
  v106 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v100 - v36;
  (*(v3 + 16))(a2, v35);
  v38 = *(v3 + 32);
  v102 = v37;
  v38(v37);
  v39 = *a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v41 = *(v130 + 80);
  v42 = (v41 + 32) & ~v41;
  v120 = *(v120 + 72);
  v110 = v41;
  v111 = v40;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_19222B480;
  v44 = v116[5];
  v100 = v39;
  v112 = v42;
  v105 = v34;
  v107 = v31;
  sub_19221A9D4(v34, v31, v44);
  if (qword_1ED74B558 != -1)
  {
LABEL_50:
    swift_once();
  }

  v45 = __swift_project_value_buffer(v117, qword_1ED74B570);
  sub_19218AC30(v45, v108, type metadata accessor for TimelineReloadPolicy);
  v117 = type metadata accessor for WidgetViewCollection(0);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v48 = sub_192224E00();
  (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
  v49 = [v109 extensionIdentity];
  v50 = v118;
  BundleStub.init(_:)(v49, v118);
  sub_1920E07FC(v50, v46 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v51 = v119;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v52 = *(v127 + 32);
  v101 = v46;
  v52(v46 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v51, v124);
  v131 = v43;

  sub_19209B0C4(&v131);

  v53 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v53;
  *(inited + 24) = 0;
  v55 = v112;
  v117 = MEMORY[0x1E69E7CC0];
  v116 = (MEMORY[0x1E69E7CC0] + v112);
  v57 = v130 + 56;
  v56 = *(v130 + 56);
  v58 = v128;
  v127 = *(v129 + 32);
  v129 = v56;
  v56(v128 + v127, 1, 1, v20);
  *v58 = inited;
  v58[1] = sub_1920DA3A8;
  v58[2] = 0;
  v124 = v53;
  v118 = (v53 + v55);
  v119 = inited;
  v130 = v57;
  v59 = (v57 - 8);

  v115 = 0;
  v60 = 0;
  v61 = v123;
  while (2)
  {
    (v129)(v17, 1, 1, v20);
    while (1)
    {
      v62 = *(v124 + 16);
      if (v60 == v62)
      {
        v63 = 1;
        v43 = v125;
        v64 = v126;
      }

      else
      {
        v43 = v125;
        v64 = v126;
        if (v60 >= v62)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_19218AC30(&v118[v60 * v120], v126, type metadata accessor for ViewableTimelineEntry);
        v63 = 0;
        *(v119 + 3) = ++v60;
      }

      (v129)(v64, v63, 1, v20);
      v65 = &unk_19222A7D0;
      sub_192033970(v17, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v64, v17);
      sub_1920D86C4(v17, v12);
      v66 = *v59;
      if ((*v59)(v12, 1, v20) == 1)
      {
        v69 = v12;
        goto LABEL_16;
      }

      sub_192033970(v12, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v17, v43);
      if (v66(v43, 1, v20) == 1)
      {
        v69 = v43;
        goto LABEL_16;
      }

      v65 = v122;
      sub_1920E07FC(v43, v122, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v128 + v127, v61);
      if (v66(v61, 1, v20) == 1)
      {
        break;
      }

      v67 = v121;
      sub_1920E07FC(v61, v121, type metadata accessor for ViewableTimelineEntry);
      v68 = sub_192225120();
      sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
      v61 = v123;
      sub_192046F48(v65, type metadata accessor for ViewableTimelineEntry);
      if ((v68 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v65, type metadata accessor for ViewableTimelineEntry);
    v69 = v61;
LABEL_16:
    sub_192033970(v69, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v17, v128 + v127);
    v43 = v113;
    sub_1920D8654(v17, v113);
    if (v66(v43, 1, v20) != 1)
    {
      sub_1920E07FC(v43, v114, type metadata accessor for ViewableTimelineEntry);
      v70 = v120;
      if (v115)
      {
        v43 = v117;
        v71 = v115 - 1;
        if (__OFSUB__(v115, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v72 = *(v117 + 24);
      if (((v72 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v73 = v72 & 0xFFFFFFFFFFFFFFFELL;
      if (v73 <= 1)
      {
        v74 = 1;
      }

      else
      {
        v74 = v73;
      }

      v75 = v112;
      v43 = swift_allocObject();
      v76 = _swift_stdlib_malloc_size(v43);
      if (!v70)
      {
        goto LABEL_48;
      }

      if (v76 - v75 == 0x8000000000000000 && v70 == -1)
      {
        goto LABEL_49;
      }

      v78 = v70;
      v79 = (v76 - v75) / v70;
      *(v43 + 16) = v74;
      *(v43 + 24) = 2 * v79;
      v80 = v43 + v75;
      v81 = v117;
      v82 = (*(v117 + 24) >> 1);
      v83 = v82 * v78;
      if (!*(v117 + 16))
      {
LABEL_39:
        v116 = (v80 + v83);
        v84 = (v79 & 0x7FFFFFFFFFFFFFFFLL) - v82;

        v85 = v84;
        v61 = v123;
        v70 = v120;
        v86 = __OFSUB__(v85, 1);
        v71 = v85 - 1;
        if (v86)
        {
          goto LABEL_46;
        }

LABEL_40:
        v115 = v71;
        v87 = v116;
        sub_1920E07FC(v114, v116, type metadata accessor for ViewableTimelineEntry);
        v116 = (v87 + v70);
        v117 = v43;
        continue;
      }

      if (v43 < v117 || v80 >= v117 + v75 + v83)
      {
        v116 = (*(v117 + 24) >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v43 == v117)
        {
LABEL_38:
          *(v81 + 16) = 0;
          goto LABEL_39;
        }

        v116 = (*(v117 + 24) >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v82 = v116;
      v81 = v117;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v128, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v43, &qword_1EADEE9F8, &unk_19222A7D0);
  v88 = v117;
  v89 = *(v117 + 24);
  v90 = v109;
  v91 = v108;
  if (v89 < 2)
  {
    goto LABEL_44;
  }

  v92 = v89 >> 1;
  v86 = __OFSUB__(v92, v115);
  v93 = v92 - v115;
  if (!v86)
  {
    *(v117 + 16) = v93;
LABEL_44:
    v94 = v88;
    swift_setDeallocating();

    v95 = v101;
    *(v101 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v94;
    *(v95 + 16) = v100;
    *(v95 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v90;
    sub_19218AC30(v91, v95 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    v96 = byte_1ED74B5B8;
    v97 = v90;
    sub_192046F48(v91, type metadata accessor for TimelineReloadPolicy);
    (*(v106 + 8))(v105, v107);
    (*(v103 + 8))(v102, AssociatedTypeWitness);
    *(v95 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v96;
    *(v95 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v95;
  }

  __break(1u);

  v99 = v101;
  sub_192046F48(v59 + v101, type metadata accessor for BundleStub);
  sub_192033970(v99 + *(v66 + 231), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v127 + 8))(v99 + *v60, v65);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_19218658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *(v8 + 16) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v12 = type metadata accessor for RelevanceTimelineEntryProvider(0, v8 + 16);
  *v11 = v8;
  v11[1] = sub_192186694;

  return sub_19218685C(a7, a8, v12);
}

uint64_t sub_192186694(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921867D8, v3, v2);
}

uint64_t sub_1921867D8()
{
  v1 = v0[11];
  v2 = v0[6];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_19218685C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = sub_192227CC0();
  v3[3] = sub_192227CB0();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_192186930;

  return sub_192186AD8(a1, a2, a3);
}

uint64_t sub_192186930(uint64_t a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_192186A74, v3, v2);
}

uint64_t sub_192186A74()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_192186AD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v4[20] = swift_task_alloc();
  v6 = sub_192225150();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for TimelineReloadPolicy(0);
  v4[26] = swift_task_alloc();
  v7 = a3[3];
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for ViewableTimelineEntry(0);
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[36] = AssociatedTypeWitness;
  v10 = sub_192228240();
  v4[37] = v10;
  v4[38] = *(v10 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = *(AssociatedTypeWitness - 8);
  v4[41] = swift_task_alloc();
  sub_192227CC0();
  v4[42] = sub_192227CB0();
  v12 = sub_192227C70();
  v4[43] = v12;
  v4[44] = v11;

  return MEMORY[0x1EEE6DFA0](sub_192186E90, v12, v11);
}

void sub_192186E90()
{
  v23 = v0;
  v1 = [*(v0 + 72) intentReference];
  *(v0 + 360) = v1;
  if (v1)
  {
    v2 = v1;
    v21 = (**(v0 + 96) + ***(v0 + 96));
    v3 = swift_task_alloc();
    *(v0 + 368) = v3;
    *v3 = v0;
    v3[1] = sub_192187238;
    v4 = *(v0 + 312);
    v5 = *(v0 + 80);

    v21(v4, v2, v5);
  }

  else
  {

    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 72);
    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = v6;
    v9 = sub_192225890();
    v10 = sub_192227F90();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 72);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v15 = [v12 succinctDescription];

      if (!v15)
      {
        __break(1u);
        return;
      }

      v16 = sub_192227960();
      v18 = v17;

      v19 = sub_19202B8CC(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_192028000, v9, v10, "Unable to fetch entry or intent ref from widget %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x193B0C7F0](v14, -1, -1);
      MEMORY[0x193B0C7F0](v13, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 8);

    v20(0);
  }
}

uint64_t sub_192187238()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x1EEE6DFA0](sub_192187358, v3, v2);
}

void sub_192187358()
{
  v115 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);

  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v21 = *(v0 + 328);
    v22 = *(v0 + 280);
    v23 = *(v0 + 248);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = *(v0 + 216);
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v29 = *(v0 + 80);
    (*(*(v0 + 320) + 32))(v21, *(v0 + 312), *(v0 + 288));
    (*(v27 + 32))(v21);
    sub_19221B68C(v24, v26, *(v28 + 40));
    (*(v25 + 8))(v24, v26);
    v30 = *v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
    v31 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v109 = *(v23 + 72);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_19222B480;
    v103 = v31;
    sub_19218AC30(v22, v32 + v31, type metadata accessor for ViewableTimelineEntry);
    v33 = qword_1ED74B558;
    v101 = v30;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 208);
    v35 = *(v0 + 184);
    v36 = *(v0 + 192);
    v37 = *(v0 + 168);
    v38 = *(v0 + 176);
    v39 = *(v0 + 72);
    v40 = __swift_project_value_buffer(*(v0 + 200), qword_1ED74B570);
    sub_19218AC30(v40, v34, type metadata accessor for TimelineReloadPolicy);
    type metadata accessor for WidgetViewCollection(0);
    v41 = swift_allocObject();
    v42 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
    v43 = sub_192224E00();
    (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
    BundleStub.init(_:)([v39 extensionIdentity], v36);
    sub_1920E07FC(v36, v41 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    (*(v38 + 32))(v41 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v35, v37);
    v114[0] = v32;

    sub_19209B0C4(v114);
    v102 = v41;
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);

    v48 = v114[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
    inited = swift_initStackObject();
    *(inited + 16) = v48;
    *(inited + 24) = 0;
    v106 = MEMORY[0x1E69E7CC0];
    v105 = MEMORY[0x1E69E7CC0] + v103;
    v111 = *(v46 + 32);
    v112 = *(v45 + 56);
    v112(v47 + v111, 1, 1, v44);
    v110 = v48;
    v107 = v48 + v103;
    *v47 = inited;
    v47[1] = sub_1920DA3A8;
    v47[2] = 0;
    v50 = (v45 + 48);
    v108 = inited;

    v104 = 0;
    v51 = 0;
    v112(*(v0 + 136), 1, 1, *(v0 + 240));
    while (1)
    {
      v52 = *(v110 + 16);
      if (v51 == v52)
      {
        v53 = 1;
      }

      else
      {
        if (v51 >= v52)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_19218AC30(v107 + v51 * v109, *(v0 + 128), type metadata accessor for ViewableTimelineEntry);
        v53 = 0;
        *(v108 + 24) = ++v51;
      }

      v54 = *(v0 + 240);
      v55 = *(v0 + 128);
      v56 = *(v0 + 136);
      v57 = *(v0 + 120);
      v112(v55, v53, 1, v54);
      sub_192033970(v56, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v55, v56);
      sub_1920D86C4(v56, v57);
      v58 = *v50;
      if ((*v50)(v57, 1, v54) == 1)
      {
        break;
      }

      v59 = *(v0 + 240);
      v60 = *(v0 + 136);
      v61 = *(v0 + 112);
      sub_192033970(*(v0 + 120), &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v60, v61);
      if (v58(v61, 1, v59) == 1)
      {
        v68 = (v0 + 112);
        goto LABEL_23;
      }

      v62 = *(v0 + 240);
      v63 = *(v0 + 104);
      sub_1920E07FC(*(v0 + 112), *(v0 + 264), type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v47 + v111, v63);
      v64 = v58(v63, 1, v62);
      v65 = *(v0 + 264);
      if (v64 == 1)
      {
        sub_192046F48(*(v0 + 264), type metadata accessor for ViewableTimelineEntry);
        v68 = (v0 + 104);
        goto LABEL_23;
      }

      v66 = *(v0 + 256);
      sub_1920E07FC(*(v0 + 104), v66, type metadata accessor for ViewableTimelineEntry);
      v67 = sub_192225120();
      sub_192046F48(v66, type metadata accessor for ViewableTimelineEntry);
      sub_192046F48(v65, type metadata accessor for ViewableTimelineEntry);
      if ((v67 & 1) == 0)
      {
LABEL_24:
        v69 = *(v0 + 240);
        v71 = *(v0 + 136);
        v70 = *(v0 + 144);
        sub_19209B16C(v71, v47 + v111);
        sub_1920D8654(v71, v70);
        if (v58(v70, 1, v69) == 1)
        {
          v88 = *(v0 + 144);
          sub_192033970(*(v0 + 160), &qword_1EADEEA00, &unk_19222B660);
          sub_192033970(v88, &qword_1EADEE9F8, &unk_19222A7D0);
          v89 = v106[3];
          if (v89 < 2)
          {
LABEL_51:
            v92 = *(v0 + 360);
            v93 = *(v0 + 320);
            v113 = *(v0 + 328);
            v95 = *(v0 + 280);
            v94 = *(v0 + 288);
            v96 = *(v0 + 208);
            v97 = *(v0 + 72);
            swift_setDeallocating();

            *(v102 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v106;
            *(v102 + 16) = v101;
            *(v102 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v97;
            sub_19218AC30(v96, v102 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
            swift_beginAccess();
            v98 = byte_1ED74B5B8;
            v99 = v97;

            sub_192046F48(v96, type metadata accessor for TimelineReloadPolicy);
            sub_192046F48(v95, type metadata accessor for ViewableTimelineEntry);
            (*(v93 + 8))(v113, v94);
            *(v102 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v98;
            *(v102 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          v90 = v89 >> 1;
          v87 = __OFSUB__(v90, v104);
          v91 = v90 - v104;
          if (!v87)
          {
            v106[2] = v91;
            goto LABEL_51;
          }

          __break(1u);
LABEL_62:
          __break(1u);
          return;
        }

        sub_1920E07FC(*(v0 + 144), *(v0 + 272), type metadata accessor for ViewableTimelineEntry);
        v72 = v109;
        if (v104)
        {
          v73 = v106;
          v74 = v104 - 1;
          if (__OFSUB__(v104, 1))
          {
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        v75 = v106[3];
        if (((v75 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_57;
        }

        v76 = v75 & 0xFFFFFFFFFFFFFFFELL;
        if (v76 <= 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = v76;
        }

        v73 = swift_allocObject();
        v78 = _swift_stdlib_malloc_size(v73);
        if (!v109)
        {
          goto LABEL_58;
        }

        v79 = v78 - v103;
        if (v78 - v103 == 0x8000000000000000 && v109 == -1)
        {
          goto LABEL_59;
        }

        v81 = v79 / v109;
        v73[2] = v77;
        v73[3] = 2 * (v79 / v109);
        v82 = v73 + v103;
        v83 = v106;
        v84 = v106[3] >> 1;
        v85 = v84 * v109;
        if (v106[2])
        {
          if (v73 < v106 || v82 >= v106 + v103 + v85)
          {
            swift_arrayInitWithTakeFrontToBack();
LABEL_44:
            v83 = v106;
          }

          else if (v73 != v106)
          {
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_44;
          }

          v83[2] = 0;
        }

        v105 = &v82[v85];
        v86 = (v81 & 0x7FFFFFFFFFFFFFFFLL) - v84;

        v72 = v109;
        v87 = __OFSUB__(v86, 1);
        v74 = v86 - 1;
        if (v87)
        {
          goto LABEL_56;
        }

LABEL_47:
        v104 = v74;
        sub_1920E07FC(*(v0 + 272), v105, type metadata accessor for ViewableTimelineEntry);
        v105 += v72;
        v106 = v73;
        v112(*(v0 + 136), 1, 1, *(v0 + 240));
      }
    }

    v68 = (v0 + 120);
LABEL_23:
    sub_192033970(*v68, &qword_1EADEE9F8, &unk_19222A7D0);
    goto LABEL_24;
  }

  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 296);

  (*(v5 + 8))(v4, v6);
  if (qword_1ED74C6B0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v7 = *(v0 + 72);
  v8 = sub_1922258B0();
  __swift_project_value_buffer(v8, qword_1ED74CCC8);
  v9 = v7;
  v10 = sub_192225890();
  v11 = sub_192227F90();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 72);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v114[0] = v15;
    *v14 = 136446210;
    v16 = [v13 succinctDescription];

    if (!v16)
    {
      goto LABEL_62;
    }

    v17 = sub_192227960();
    v19 = v18;

    v20 = sub_19202B8CC(v17, v19, v114);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_192028000, v10, v11, "Unable to fetch entry or intent ref from widget %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v14, -1, -1);
  }

  else
  {
  }

  v102 = 0;
LABEL_52:

  v100 = *(v0 + 8);

  v100(v102);
}

double sub_192187FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a3;
  v32 = a7;
  v29 = a6;
  v30 = a5;
  v8 = v7;
  v28 = a1;
  v11 = type metadata accessor for TimelineProviderContext(0);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_192227CF0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_19218AC30(a2, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v17 = v28;
  v18 = sub_192227CB0();
  v19 = (*(v27 + 80) + 152) & ~*(v27 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  v22 = v31;
  v23 = *(v30 + 32);
  *(v20 + 32) = *(v30 + 16);
  *(v20 + 48) = v23;
  *(v20 + 64) = v22;
  *(v20 + 72) = a4;
  v24 = v8[1];
  *(v20 + 80) = *v8;
  *(v20 + 96) = v24;
  v25 = v8[3];
  *(v20 + 112) = v8[2];
  *(v20 + 128) = v25;
  *(v20 + 144) = v17;
  sub_1920E07FC(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TimelineProviderContext);
  sub_19211CA04(0, 0, v15, v32, v20);

  return result;
}

uint64_t sub_192188254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *(v8 + 16) = v15;
  *(v8 + 32) = v16;
  *(v8 + 40) = v17;
  v12 = type metadata accessor for RelevanceTimelineEntryProvider(0, v8 + 16);
  *v11 = v8;
  v11[1] = sub_19218835C;

  return sub_1921884A0(a7, a8, v12);
}

uint64_t sub_19218835C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19218B080, v3, v2);
}

uint64_t sub_1921884A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = sub_192227CC0();
  v3[3] = sub_192227CB0();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_192188574;

  return sub_192186AD8(a1, a2, a3);
}

uint64_t sub_192188574(uint64_t a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_19218B084, v3, v2);
}

double sub_1921886B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_192227CF0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_192227CC0();

  v12 = sub_192227CB0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(a3 + 32);
  *(v13 + 32) = *(a3 + 16);
  *(v13 + 48) = v15;
  *(v13 + 64) = a1;
  *(v13 + 72) = a2;
  v16 = v4[1];
  *(v13 + 80) = *v4;
  *(v13 + 96) = v16;
  v17 = v4[3];
  *(v13 + 112) = v4[2];
  *(v13 + 128) = v17;
  sub_19211CA04(0, 0, v10, &unk_19223CCC0, v13);

  return result;
}

uint64_t sub_19218884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = sub_192227CC0();
  v6[5] = sub_192227CB0();
  v10 = (*(a6 + 48) + **(a6 + 48));
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_192141274;

  return v10();
}

uint64_t sub_19218895C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  v9 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 80) = v10;
  *v10 = v4;
  v10[1] = sub_192188A1C;

  return sub_19218685C(a1, a2, a3);
}

uint64_t sub_192188A1C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_192188B18(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  v9 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 80) = v10;
  *v10 = v4;
  v10[1] = sub_19218B07C;

  return sub_1921884A0(a1, a2, a3);
}

double sub_192188C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v42 = a6;
  v43 = a8;
  v36 = a7;
  v37 = a3;
  v41 = a5;
  v44 = a4;
  v33 = a2;
  v39 = a1;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimelineProviderContext(0);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v40 = &v33 - v15;
  v17 = sub_192227CF0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_19218AC30(v33, &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v18 = v36;
  (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  sub_192227CC0();

  v19 = v39;
  v20 = v41;

  v21 = sub_192227CB0();
  v22 = (*(v38 + 80) + 152) & ~*(v38 + 80);
  v23 = (v13 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v21;
  *(v25 + 24) = v26;
  v27 = v43;
  v28 = *(v42 + 32);
  *(v25 + 32) = *(v42 + 16);
  *(v25 + 48) = v18;
  *(v25 + 56) = v28;
  *(v25 + 72) = v27;
  v29 = v9[1];
  *(v25 + 80) = *v9;
  *(v25 + 96) = v29;
  v30 = v9[3];
  *(v25 + 112) = v9[2];
  *(v25 + 128) = v30;
  *(v25 + 144) = v19;
  sub_1920E07FC(v34, v25 + v22, type metadata accessor for TimelineProviderContext);
  (*(v10 + 32))(v25 + v23, v35, v18);
  v31 = (v25 + v24);
  *v31 = v44;
  v31[1] = v20;
  sub_19211CA04(0, 0, v40, &unk_19223CCD0, v25);

  return result;
}

uint64_t sub_192188FC0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_192189020(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_192141600(a1);
}

uint64_t sub_192189074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v16;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v12 = swift_task_alloc();
  *(v8 + 80) = v12;
  *(v8 + 16) = v17;
  *(v8 + 32) = v19;
  *(v8 + 40) = v20;
  v13 = type metadata accessor for RelevanceTimelineEntryProvider(0, v8 + 16);
  *v12 = v8;
  v12[1] = sub_19218919C;

  return sub_192189570(a5, a6, a7, v13, v18, v21);
}

uint64_t sub_19218919C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_1921893AC;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_19218931C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19218931C()
{
  v1 = *(v0 + 48);

  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1921893AC()
{

  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CBA8);
  v3 = v1;
  v4 = sub_192225890();
  v5 = sub_192227F90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_192028000, v4, v5, "RelevanceConfiguration failed to generate preview with error %@", v7, 0xCu);
    sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[6];

  v13 = v11;
  v12(v11, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_192189570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[57] = a6;
  v7[58] = v6;
  v7[55] = a4;
  v7[56] = a5;
  v7[53] = a2;
  v7[54] = a3;
  v7[52] = a1;
  v7[59] = type metadata accessor for TimelineReloadPolicy(0);
  v7[60] = swift_task_alloc();
  v7[61] = *(a5 - 8);
  v7[62] = swift_task_alloc();
  sub_192227CC0();
  v7[63] = sub_192227CB0();
  v10 = sub_192227C70();
  v7[64] = v10;
  v7[65] = v9;

  return MEMORY[0x1EEE6DFA0](sub_19218969C, v10, v9);
}

uint64_t sub_19218969C()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by RelevanceConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 432);

  (*(v6 + 16))(v5, v8, v7);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    *(v0 + 536) = v10;
    v12 = *(v0 + 224);
    *(v0 + 544) = v12;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    *(v0 + 552) = v15;
    *(v0 + 256) = v10;
    *(v0 + 264) = v11;
    *(v0 + 272) = v12;
    *(v0 + 280) = v13;
    *(v0 + 288) = v14;
    *(v0 + 296) = v15;
    *(v0 + 560) = *(v9 + 32);
    *(v0 + 568) = *(v9 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = swift_task_alloc();
    *(v0 + 576) = v17;
    *v17 = v0;
    v17[1] = sub_192189A34;
    v18 = *(v0 + 424);

    return sub_19211E5D0(AssociatedTypeWitness, v18, AssociatedTypeWitness);
  }

  else if (swift_dynamicCast())
  {
    v20 = *(v0 + 440);
    v21 = *(v0 + 16);
    v22 = *(v0 + 32);
    *(v0 + 80) = v21;
    *(v0 + 96) = v22;
    v23 = *(v0 + 48);
    v24 = *(v0 + 64);
    *(v0 + 112) = v23;
    *(v0 + 128) = v24;
    *(v0 + 144) = v21;
    *(v0 + 160) = v22;
    *(v0 + 176) = v23;
    *(v0 + 192) = v24;
    v25 = *(v20 + 16);
    *(v0 + 592) = v25;
    v26 = swift_task_alloc();
    *(v0 + 600) = v26;
    v27 = *(v20 + 32);
    *(v0 + 608) = v27;
    *v26 = v0;
    v26[1] = sub_192189F98;
    v28 = *(v0 + 424);

    return sub_19211E9A4(v25, v28, v25, v27);
  }

  else
  {
    v29 = *(v0 + 440);

    v30 = *(v29 + 32);
    *(v0 + 304) = *(v29 + 16);
    *(v0 + 320) = v30;
    type metadata accessor for RelevanceTimelineEntryProvider.Errors(0, v0 + 304);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_192189A34(uint64_t a1)
{
  v3 = *v2;
  v3[45] = v2;
  v3[46] = a1;
  v3[47] = v1;
  v3[73] = v1;

  v4 = v3[65];
  v5 = v3[64];
  if (v1)
  {
    v6 = sub_19218A4E4;
  }

  else
  {
    v6 = sub_192189B58;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_192189B58()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 368);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

  v5 = sub_192225890();
  v6 = sub_192227FB0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    swift_getAssociatedTypeWitness();
    *(v7 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v5, v6, "RelevanceConfiguration resolved entry source to have %{public}ld entries", v7, 0xCu);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 440);
  v8 = *(v0 + 448);
  v10 = *(v0 + 424);
  *(v0 + 408) = v2;
  v11 = swift_task_alloc();
  v12 = *(v0 + 456);
  *(v11 + 16) = v3;
  *(v11 + 24) = *(v9 + 24);
  *(v11 + 32) = v8;
  *(v11 + 40) = v4;
  *(v11 + 48) = *(v9 + 40);
  *(v11 + 56) = v12;
  swift_getAssociatedTypeWitness();
  v13 = sub_192227C40();
  v14 = type metadata accessor for ViewableTimelineEntry(0);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_19204301C(sub_19218AAC0, v11, v13, v14, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  v18 = qword_1ED74B558;
  v19 = *v10;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 480);
  v21 = *(v0 + 416);
  v22 = __swift_project_value_buffer(*(v0 + 472), qword_1ED74B570);
  sub_19218AC30(v22, v20, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v25 = sub_192224E00();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  v26 = [v21 extensionIdentity];
  BundleStub.init(_:)(v26, (v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle));
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v17;
  *(v23 + 16) = v19;
  *(v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v21;
  sub_19218AC30(v20, v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v27 = byte_1ED74B5B8;
  v28 = v21;
  sub_192046F48(v20, type metadata accessor for TimelineReloadPolicy);
  *(v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v27;
  *(v23 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v29 = *(v0 + 8);

  return v29(v23);
}

uint64_t sub_192189F98(uint64_t a1)
{
  v3 = *v2;
  v3[48] = v2;
  v3[49] = a1;
  v3[50] = v1;
  v3[77] = v1;

  v4 = v3[65];
  v5 = v3[64];
  if (v1)
  {
    v6 = sub_19218A5A0;
  }

  else
  {
    v6 = sub_19218A0BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19218A0BC()
{

  sub_19218AA6C(v0 + 80);
  v1 = *(v0 + 392);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 448));

  v4 = sub_192225890();
  v5 = sub_192227FB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    swift_getAssociatedTypeWitness();
    *(v6 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v4, v5, "RelevanceConfiguration resolved entry source to have %{public}ld entries", v6, 0xCu);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 424);
  *(v0 + 408) = v1;
  v10 = swift_task_alloc();
  v11 = *(v0 + 456);
  *(v10 + 16) = v3;
  *(v10 + 24) = *(v8 + 24);
  *(v10 + 32) = v7;
  *(v10 + 40) = v2;
  *(v10 + 48) = *(v8 + 40);
  *(v10 + 56) = v11;
  swift_getAssociatedTypeWitness();
  v12 = sub_192227C40();
  v13 = type metadata accessor for ViewableTimelineEntry(0);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_19204301C(sub_19218AAC0, v10, v12, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  v17 = qword_1ED74B558;
  v18 = *v9;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 480);
  v20 = *(v0 + 416);
  v21 = __swift_project_value_buffer(*(v0 + 472), qword_1ED74B570);
  sub_19218AC30(v21, v19, type metadata accessor for TimelineReloadPolicy);
  type metadata accessor for WidgetViewCollection(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v24 = sub_192224E00();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = [v20 extensionIdentity];
  BundleStub.init(_:)(v25, (v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle));
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v16;
  *(v22 + 16) = v18;
  *(v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v20;
  sub_19218AC30(v19, v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v26 = byte_1ED74B5B8;
  v27 = v20;
  sub_192046F48(v19, type metadata accessor for TimelineReloadPolicy);
  *(v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v26;
  *(v22 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v28 = *(v0 + 8);

  return v28(v22);
}

uint64_t sub_19218A4E4()
{
  v1 = v0[67];

  (*(v0[61] + 8))(v0[62], v0[56]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19218A5A0()
{

  sub_19218AA6C((v0 + 10));
  (*(v0[61] + 8))(v0[62], v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19218A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 32))(v10);
  sub_19221B68C(v12, a4, a7);
  return (*(v9 + 8))(v12, a4);
}

uint64_t sub_19218A738(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_19218A770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_19218884C(a1, v4, v5, v6, v7, (v1 + 10));
}

uint64_t sub_19218A860(uint64_t a1)
{
  v3 = v1[6];
  v4 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[18];
  v10 = *(v1 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920A59A8;

  return sub_192189074(a1, v7, v8, (v1 + 10), v9, v1 + v5, v1 + v6, v10);
}

uint64_t sub_19218AAF8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[18];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1920B3B44;

  return sub_192188254(a1, v6, v7, v8, v9, (v1 + 10), v10, v1 + v5);
}

uint64_t sub_19218AC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for TimelineProviderContext(0) - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[12];
  v4 = sub_192224EA0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_19218AE18(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for TimelineProviderContext(0) - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[18];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1920B3B44;

  return sub_19218658C(a1, v6, v7, v8, v9, (v1 + 10), v10, v1 + v5);
}

uint64_t sub_19218AF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19218AF8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19218AFD4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_19218B024(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19218B088()
{
  result = qword_1ED74C690;
  if (!qword_1ED74C690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74C690);
  }

  return result;
}

unint64_t sub_19218B0D4()
{
  result = qword_1ED74C620;
  if (!qword_1ED74C620)
  {
    sub_192227710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C620);
  }

  return result;
}

unint64_t sub_19218B12C()
{
  result = qword_1ED74C610;
  if (!qword_1ED74C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEDE8, &unk_19222B5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C610);
  }

  return result;
}

id sub_19218B26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (a1)
  {
    v9 = sub_192227B60();
  }

  else
  {
    v9 = 0;
  }

  sub_19218B864(a2, v8);
  v10 = sub_1922251B0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_192225170();
    (*(v11 + 8))(v8, v10);
  }

  v13 = type metadata accessor for WidgetHostContext();
  v17.receiver = v3;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithInputItems_contextUUID_, v9, v12);

  v15 = v14;
  sub_19218B8D4(a2);
  if (v15)
  {
  }

  return v15;
}

id sub_19218B52C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  if (a1)
  {
    v11 = sub_192227B60();
  }

  else
  {
    v11 = 0;
  }

  sub_19218B864(a3, v10);
  v12 = sub_1922251B0();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_192225170();
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for WidgetHostContext();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInputItems_listenerEndpoint_contextUUID_, v11, a2, v14);

  v17 = v16;
  sub_19218B8D4(a3);
  if (v17)
  {
  }

  return v17;
}

id sub_19218B80C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WidgetHostContext();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19218B864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19218B8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WidgetRelevanceFetchResult.__allocating_init(widgetRelevances:)(unint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v5 = sub_19218BD8C(a1, v4);

  *&v3[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v5;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id WidgetRelevanceFetchResult.init(widgetRelevances:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v5 = sub_19218BD8C(a1, v4);

  *&v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v5;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static WidgetRelevanceFetchResult.defaultImplementationResult.getter()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 1;
  *&v1[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = sub_19218BD8C(MEMORY[0x1E69E7CC0], v2);
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t WidgetRelevanceFetchResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_19218C080(a1);
  v5 = v4;

  return v5;
}

uint64_t WidgetRelevanceFetchResult.init(coder:)(void *a1)
{
  sub_19218C080(a1);
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall WidgetRelevanceFetchResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation);
  v4 = sub_192227930();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
  v5 = sub_192227B60();
  v6 = sub_192227930();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id WidgetRelevanceFetchResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19218BD8C(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 101)
    {
      goto LABEL_3;
    }

LABEL_39:

    return v2;
  }

  if (sub_192228340() < 101)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1922258B0();
  __swift_project_value_buffer(v4, qword_1ED74CCC8);
  v5 = sub_192225890();
  v6 = sub_192227F90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = 100;
    _os_log_impl(&dword_192028000, v5, v6, "Too many widget relevances. Truncating to %{public}ld.", v7, 0xCu);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  if (v3)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = (v2 & 0xFFFFFFFFFFFFFF8);
    }

    v6 = sub_192228340();
    if (sub_192228340() < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v6 >= 0x64)
    {
      v10 = 100;
    }

    else
    {
      v10 = v6;
    }

    if (v6 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = 100;
    }

    v8 = sub_192228340();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= 0x64)
    {
      v9 = 100;
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v8 < v9)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if ((v2 & 0xC000000000000001) != 0 && v9)
  {
    sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);

    v11 = 0;
    do
    {
      v12 = v11 + 1;
      sub_192228440();
      v11 = v12;
    }

    while (v9 != v12);
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_28:
      v6 = 0;
      v5 = (v2 & 0xFFFFFFFFFFFFFF8);
      v13 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = (2 * v9) | 1;
      goto LABEL_32;
    }
  }

  v5 = sub_192228680();
  v6 = v14;
  v2 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_31:
    sub_19209AB6C(v5, v13, v6, v2);
    v2 = v16;
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_32:
  v3 = v13;
  sub_1922289D0();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v2 >> 1, v6))
  {
    goto LABEL_43;
  }

  if (v18 != (v2 >> 1) - v6)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v13 = v3;
    goto LABEL_31;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void sub_19218C080(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_192227930();
  v6 = [a1 decodeBoolForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19222B490;
  *(v7 + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(v7 + 40) = sub_19202A7A8(0, &qword_1ED74A910, 0x1E69943F8);
  sub_192228150();

  if (v14)
  {
    sub_19203BEDC(&v13, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF17E0, qword_19223CF28);
    swift_dynamicCast();
    v8 = v12;
    v2[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = v6;
    v10 = sub_19218BD8C(v8, v9);

    *&v2[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v10;
    v11.receiver = v2;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    __break(1u);
  }
}

uint64_t WidgetPushConfigurationXPCContainer.token.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token);
  sub_1920367C8(v1, *(v0 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token + 8));
  return v1;
}

uint64_t static WidgetPushConfigurationXPCContainer.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF17F0 = a1;
  return result;
}

id WidgetPushConfigurationXPCContainer.__allocating_init(widgets:token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets] = a1;
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetPushConfigurationXPCContainer.init(widgets:token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets] = a1;
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetPushConfigurationXPCContainer();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_19218C534(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v2 = sub_192227B60();
  v3 = sub_192227930();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_192225050();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];
}

id WidgetPushConfigurationXPCContainer.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  if (sub_192228170())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v4 = sub_192228140();
    if (v4)
    {
      v5 = v4;
      sub_192225070();
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetPushConfigurationXPCContainer.init(coder:)(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  if (sub_192228170())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v2 = sub_192228140();
    if (v2)
    {
      v3 = v2;
      sub_192225070();
    }
  }

  else
  {
  }

  type metadata accessor for WidgetPushConfigurationXPCContainer();
  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetPushConfigurationXPCContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetPushConfigurationXPCContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetPushConfigurationXPCContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WidgetPushInfo.token.getter()
{
  v1 = *v0;
  sub_1920367C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_19218CB5C(uint64_t a1, uint64_t a2)
{
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  *(v3 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = type metadata accessor for ControlTemplateButton.Option(0);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  v4 = sub_192226BA0();
  *(v3 + 384) = v4;
  *(v3 + 392) = *(v4 - 8);
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  v5 = sub_1922261D0();
  *(v3 + 496) = v5;
  *(v3 + 504) = *(v5 - 8);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = sub_192227CC0();
  *(v3 + 536) = sub_192227CB0();
  *(v3 + 241) = *(v2 + 32);
  v6 = *(v2 + 72);
  *(v3 + 544) = *(v2 + 40);
  *(v3 + 560) = v6;
  *(v3 + 576) = *(v2 + 88);
  v7 = *(v2 + 104);
  v8 = *(v2 + 120);
  *(v3 + 592) = v8;
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  *(v3 + 600) = v9;
  *v9 = v3;
  v9[1] = sub_19218CEDC;

  return v11(v3 + 16, v8);
}

uint64_t sub_19218CEDC()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_192227C70();
    v5 = v4;
    v6 = sub_19218F644;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_192227C70();
    v8 = v10;
    *(v2 + 616) = v9;
    *(v2 + 624) = v10;
    v6 = sub_19218D048;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_19218D048()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  *(v0 + 104) = v1;
  v2 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 152) = v3;
  if (v4 == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);

    v59 = v14;
    sub_192114BA4(v12, v13, v14, v15);
    v69 = v17;
    v70 = v16;
    v68 = v18;
    v73 = v3;
    sub_192114BA4(v16, v17, v18, v3);
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    v19 = *(v0 + 520);
    v21 = *(v0 + 496);
    v20 = *(v0 + 504);
    if (v4)
    {
      sub_192227270();
      v61 = v22;
      v71 = v23;
      v58 = v24;
      v66 = v25;
      (*(v20 + 8))(v19, v21);
      v74 = 0;
      v26.i64[0] = v61;
      v26.i64[1] = v58;
      v72 = vorrq_s8(vshll_n_s32(__PAIR64__(v66, v71), 0x20uLL), v26);
    }

    else
    {
      sub_1920B3090();
      sub_1922261E0();
      (*(v20 + 8))(v19, v21);
      v72 = *(v0 + 244);
      v74 = *(v0 + 260);
    }

    v27 = *(v0 + 504);
    v28 = *(v0 + 512);
    v67 = *(v0 + 496);
    v29 = *(v0 + 440);
    v30 = *(v0 + 392);
    v55 = *(v0 + 488);
    v57 = *(v0 + 384);
    v62 = *(v0 + 312);
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    *(v0 + 176) = v59;
    *(v0 + 184) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
    swift_allocObject();
    sub_192114BA4(v12, v13, v59, v15);
    sub_192114BA4(v12, v13, v59, v15);
    sub_192226760();
    v31 = v62;
    v63 = *(v27 + 16);
    v63(v28, v31, v67);
    sub_192226700();
    sub_192226730();

    sub_19212F484(v12, v13, v59, v15);
    v32 = v55;
    sub_192226A40();
    v60 = *(v30 + 8);
    v60(v29, v57);
    v33 = sub_192226A90();
    v34 = *(v33 - 8);
    v56 = *(v34 + 48);
    v35 = v56(v32, 1, v33);
    v36 = *(v0 + 488);
    if (v35 == 1)
    {
      sub_192033970(v36, &qword_1EADEFEC0, &unk_192231BD0);
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v37 = sub_192226A80();
      (*(v34 + 8))(v36, v33);
      v38 = [v37 string];

      v39 = sub_192227960();
      v64 = v40;
      v65 = v39;
    }

    v41 = *(v0 + 512);
    v42 = *(v0 + 480);
    v43 = *(v0 + 432);
    v53 = *(v0 + 496);
    v54 = *(v0 + 384);
    v44 = *(v0 + 312);
    *(v0 + 192) = v70;
    *(v0 + 200) = v69;
    *(v0 + 208) = v68;
    *(v0 + 216) = v73;
    swift_allocObject();
    sub_192114BA4(v70, v69, v68, v73);
    sub_192114BA4(v70, v69, v68, v73);
    sub_192226760();
    v63(v41, v44, v53);
    sub_192226700();
    sub_192226730();

    sub_19212F484(v70, v69, v68, v73);
    sub_192226A40();
    v60(v43, v54);
    v45 = v56(v42, 1, v33);
    v46 = *(v0 + 480);
    if (v45 == 1)
    {
      sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
      sub_192033970(v46, &qword_1EADEFEC0, &unk_192231BD0);
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v47 = sub_192226A80();
      (*(v34 + 8))(v46, v33);
      v48 = [v47 string];

      v7 = sub_192227960();
      v8 = v49;

      sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
    }

    v6 = v72.i64[1];
    v5 = v72.i64[0];
    v11 = v74;
    v10 = v64;
    v9 = v65;
  }

  *(v0 + 672) = v10;
  *(v0 + 664) = v9;
  *(v0 + 656) = v8;
  *(v0 + 648) = v7;
  *(v0 + 242) = v11;
  *(v0 + 640) = v6;
  *(v0 + 632) = v5;
  v75 = (*(v0 + 560) + **(v0 + 560));
  v50 = swift_task_alloc();
  *(v0 + 680) = v50;
  *v50 = v0;
  v50[1] = sub_19218D6AC;
  v51 = *(v0 + 592);

  return v75(v51, 0);
}

uint64_t sub_19218D6AC(uint64_t a1)
{
  v3 = *v2;
  v3[86] = a1;
  v3[87] = v1;

  if (v1)
  {

    v4 = v3[78];
    v5 = v3[77];
    v6 = sub_19218F7BC;
  }

  else
  {
    v4 = v3[78];
    v5 = v3[77];
    v6 = sub_19218D7E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19218D7E0()
{
  v1 = *(v0 + 576);
  if (v1)
  {
    v52 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 704) = v2;
    *v2 = v0;
    v2[1] = sub_19218DD80;
    v3 = *(v0 + 592);
    v4 = 0;
    goto LABEL_12;
  }

  v5 = *(v0 + 688);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  v8 = *(v0 + 496);
  v50 = *(v0 + 472);
  v9 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 224) = v5;
  *(v0 + 232) = KeyPath;
  *(v0 + 240) = 1;
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v11 = *(v6 + 16);
  *(v0 + 736) = v11;
  *(v0 + 744) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v9, v8);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v12 = sub_192226A90();
  *(v0 + 752) = v12;
  v13 = *(v12 - 8);
  *(v0 + 760) = v13;
  v14 = *(v13 + 48);
  *(v0 + 768) = v14;
  *(v0 + 776) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v15 = v14(v50, 1, v12);
  v16 = *(v0 + 472);
  if (v15 == 1)
  {
    sub_192033970(*(v0 + 472), &qword_1EADEFEC0, &unk_192231BD0);
    v49 = 0;
    v51 = 0;
  }

  else
  {
    v17 = sub_192226A80();
    (*(v13 + 8))(v16, v12);
    v18 = [v17 string];

    v19 = sub_192227960();
    v49 = v20;
    v51 = v19;
  }

  v21 = *(v0 + 344);
  sub_192226B80();
  v22 = sub_192226B70();
  *(v0 + 784) = v22;
  v23 = *(v22 - 8);
  *(v0 + 792) = v23;
  v24 = *(v23 + 48);
  *(v0 + 800) = v24;
  *(v0 + 808) = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v25 = v24(v21, 1, v22);
  v26 = *(v0 + 344);
  if (v25 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEF720, &unk_19222E2F0);
LABEL_10:
    (*(v23 + 56))(*(v0 + 352), 1, 1, v22);
    goto LABEL_11;
  }

  v27 = sub_192226B60();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_192226B80();
LABEL_11:
  v28 = *(v0 + 392);

  v29 = *(v28 + 8);
  *(v0 + 816) = v29;
  v30 = *(v0 + 672);
  v53 = *(v0 + 664);
  v31 = *(v0 + 656);
  v48 = *(v0 + 648);
  v47 = *(v0 + 242);
  v45 = *(v0 + 632);
  v46 = *(v0 + 640);
  v32 = *(v0 + 560);
  v33 = *(v0 + 424);
  v35 = *(v0 + 376);
  v34 = *(v0 + 384);
  v37 = *(v0 + 352);
  v36 = *(v0 + 360);
  *(v0 + 824) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v33, v34);
  v38 = v36[6];
  v39 = *(v23 + 56);
  *(v0 + 832) = v39;
  *(v0 + 840) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v39(v35 + v38, 1, 1, v22);
  v40 = v35 + v36[7];
  v41 = (v35 + v36[8]);
  v42 = (v35 + v36[9]);
  *v35 = v51;
  v35[1] = v49;
  v35[2] = 0;
  v35[3] = 0;
  sub_19204193C(v37, v35 + v38, &qword_1EADEF720, &unk_19222E2F0);
  *v40 = v45;
  *(v40 + 1) = v46;
  v40[16] = v47;
  *v41 = v53;
  v41[1] = v30;
  *v42 = v48;
  v42[1] = v31;

  v52 = (v32 + *v32);
  v43 = swift_task_alloc();
  *(v0 + 848) = v43;
  *v43 = v0;
  v43[1] = sub_19218E59C;
  v3 = *(v0 + 592);
  v4 = 1;
LABEL_12:

  return v52(v3, v4);
}

uint64_t sub_19218DD80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {

    v5 = v4[78];
    v6 = v4[77];
    v7 = sub_19218F950;
  }

  else
  {
    v4[90] = a1;
    v5 = v4[78];
    v6 = v4[77];
    v7 = sub_19218DECC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19218DECC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v68 = *(v0 + 472);
  v70 = *(v0 + 720);
  v5 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 224) = v1;
  *(v0 + 232) = KeyPath;
  *(v0 + 240) = 1;
  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v7 = *(v2 + 16);
  *(v0 + 736) = v7;
  *(v0 + 744) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62 = v7;
  v7(v3, v5, v4);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v8 = sub_192226A90();
  *(v0 + 752) = v8;
  v9 = *(v8 - 8);
  *(v0 + 760) = v9;
  v10 = *(v9 + 48);
  *(v0 + 768) = v10;
  *(v0 + 776) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v59 = v10;
  v11 = v10(v68, 1, v8);
  v12 = *(v0 + 472);
  if (v11 == 1)
  {
    sub_192033970(*(v0 + 472), &qword_1EADEFEC0, &unk_192231BD0);
    v67 = 0;
    v69 = 0;
  }

  else
  {
    v13 = sub_192226A80();
    (*(v9 + 8))(v12, v8);
    v14 = [v13 string];

    v15 = sub_192227960();
    v67 = v16;
    v69 = v15;
  }

  v17 = *(v0 + 344);
  sub_192226B80();
  v18 = sub_192226B70();
  *(v0 + 784) = v18;
  v19 = *(v18 - 8);
  *(v0 + 792) = v19;
  v20 = *(v19 + 48);
  *(v0 + 800) = v20;
  *(v0 + 808) = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v21 = v20(v17, 1, v18);
  v22 = *(v0 + 344);
  if (v21 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v23 = sub_192226B60();
    (*(v19 + 8))(v22, v18);
    if (v23)
    {
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v19 + 56))(*(v0 + 352), 1, 1, v18);
LABEL_9:
  v65 = v19;
  v66 = v18;
  if (v70)
  {
    v24 = *(v0 + 512);
    v55 = v9;
    v57 = *(v0 + 496);
    v25 = *(v0 + 464);
    v26 = v8;
    v27 = *(v0 + 312);
    *(v0 + 296) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
    swift_allocObject();
    swift_retain_n();
    sub_192226760();
    v62(v24, v27, v57);
    sub_192226700();
    sub_192226730();

    sub_192226A40();
    v28 = v59(v25, 1, v26);
    v29 = *(v0 + 464);
    v30 = *(v0 + 384);
    v31 = *(v0 + 392);
    if (v28 == 1)
    {
      v32 = *(v31 + 8);
      v33 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(*(v0 + 416), *(v0 + 384));

      sub_192033970(v29, &qword_1EADEFEC0, &unk_192231BD0);

      v63 = 0;
      v64 = 0;
    }

    else
    {
      v60 = *(v0 + 416);
      v35 = sub_192226A80();
      (*(v55 + 8))(v29, v26);
      v36 = [v35 string];

      v37 = sub_192227960();
      v63 = v38;
      v64 = v37;

      v32 = *(v31 + 8);
      v33 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32(v60, v30);
    }
  }

  else
  {
    v34 = *(v0 + 392);

    v63 = 0;
    v64 = 0;
    v32 = *(v34 + 8);
    v33 = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  *(v0 + 816) = v32;
  v39 = *(v0 + 672);
  v40 = *(v0 + 656);
  v71 = *(v0 + 648);
  v72 = *(v0 + 664);
  v61 = *(v0 + 242);
  v56 = *(v0 + 632);
  v58 = *(v0 + 640);
  v41 = *(v0 + 560);
  v42 = *(v0 + 424);
  v44 = *(v0 + 376);
  v43 = *(v0 + 384);
  v46 = *(v0 + 352);
  v45 = *(v0 + 360);
  *(v0 + 824) = v33;
  v32(v42, v43);
  v47 = v45[6];
  v48 = *(v65 + 56);
  *(v0 + 832) = v48;
  *(v0 + 840) = (v65 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v48(v44 + v47, 1, 1, v66);
  v49 = v44 + v45[7];
  v50 = (v44 + v45[8]);
  v51 = (v44 + v45[9]);
  *v44 = v69;
  v44[1] = v67;
  v44[2] = v64;
  v44[3] = v63;
  sub_19204193C(v46, v44 + v47, &qword_1EADEF720, &unk_19222E2F0);
  *v49 = v56;
  *(v49 + 1) = v58;
  v49[16] = v61;
  *v50 = v72;
  v50[1] = v39;
  *v51 = v71;
  v51[1] = v40;

  v73 = (v41 + *v41);
  v52 = swift_task_alloc();
  *(v0 + 848) = v52;
  *v52 = v0;
  v52[1] = sub_19218E59C;
  v53 = *(v0 + 592);

  return v73(v53, 1);
}

uint64_t sub_19218E59C(uint64_t a1)
{
  v3 = *v2;
  v3[107] = a1;
  v3[108] = v1;

  if (v1)
  {

    v4 = v3[78];
    v5 = v3[77];
    v6 = sub_19218FAE4;
  }

  else
  {
    v4 = v3[78];
    v5 = v3[77];
    v6 = sub_19218E6D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19218E6D0()
{
  v61 = v0;
  v1 = *(v0 + 576);
  if (v1)
  {
    v59 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 872) = v2;
    *v2 = v0;
    v2[1] = sub_19218ED80;
    v3 = *(v0 + 592);

    return v59(v3, 1);
  }

  v5 = *(v0 + 856);
  v58 = *(v0 + 768);
  v57 = *(v0 + 752);
  v6 = *(v0 + 736);
  v7 = *(v0 + 512);
  v8 = *(v0 + 496);
  v9 = *(v0 + 456);
  v10 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 264) = v5;
  *(v0 + 272) = KeyPath;
  *(v0 + 280) = 1;
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v6(v7, v10, v8);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  if (v58(v9, 1, v57) == 1)
  {
    sub_192033970(*(v0 + 456), &qword_1EADEFEC0, &unk_192231BD0);
    v56 = 0;
    v55 = 0;
  }

  else
  {
    v12 = *(v0 + 760);
    v13 = *(v0 + 752);
    v14 = *(v0 + 456);
    v15 = sub_192226A80();
    (*(v12 + 8))(v14, v13);
    v16 = [v15 string];

    v56 = sub_192227960();
    v55 = v17;
  }

  v18 = *(v0 + 800);
  v19 = *(v0 + 784);
  v20 = *(v0 + 328);
  sub_192226B80();
  if (v18(v20, 1, v19) == 1)
  {
    sub_192033970(*(v0 + 328), &qword_1EADEF720, &unk_19222E2F0);
LABEL_12:
    (*(v0 + 832))(*(v0 + 336), 1, 1, *(v0 + 784));
    goto LABEL_13;
  }

  v21 = *(v0 + 792);
  v22 = *(v0 + 784);
  v23 = *(v0 + 328);
  v24 = sub_192226B60();
  (*(v21 + 8))(v23, v22);
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_192226B80();
LABEL_13:

  v25 = *(v0 + 832);
  v26 = *(v0 + 784);
  v48 = *(v0 + 664);
  v49 = *(v0 + 656);
  v50 = *(v0 + 672);
  v47 = *(v0 + 648);
  v46 = *(v0 + 242);
  v44 = *(v0 + 632);
  v45 = *(v0 + 640);
  v53 = *(v0 + 544);
  v54 = *(v0 + 241);
  v27 = *(v0 + 376);
  v51 = v27;
  v28 = *(v0 + 360);
  v29 = *(v0 + 368);
  v30 = *(v0 + 336);
  v52 = *(v0 + 320);
  v31 = *(v0 + 304);
  (*(v0 + 816))();
  v32 = v28[6];
  v25(v29 + v32, 1, 1, v26);
  v33 = v29 + v28[7];
  v34 = (v29 + v28[8]);
  v35 = (v29 + v28[9]);
  *v29 = v56;
  v29[1] = v55;
  v29[2] = 0;
  v29[3] = 0;
  sub_19204193C(v30, v29 + v32, &qword_1EADEF720, &unk_19222E2F0);
  *v33 = v44;
  *(v33 + 1) = v45;
  v33[16] = v46;
  *v34 = v48;
  v34[1] = v50;
  *v35 = v47;
  v35[1] = v49;
  sub_19218FE78(v27, v31);
  v36 = type metadata accessor for ControlTemplateButton(0);
  v37 = sub_19218FE78(v29, v31 + v36[5]);
  v53(&v60, v37);
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  v38 = v60;
  v39 = sub_192225020();
  v40 = *(*(v39 - 8) + 56);
  v40(v52, 1, 1, v39);
  v41 = v36[7];
  v40(v31 + v41, 1, 1, v39);
  v42 = (v31 + v36[10]);
  *(v31 + v36[6]) = v38;
  sub_19204193C(v52, v31 + v41, &qword_1EADEEE10, &unk_19222B630);
  *(v31 + v36[8]) = 0;
  *(v31 + v36[9]) = v54;
  *v42 = 0;
  v42[1] = 0;
  *(v31 + v36[11]) = 0;
  sub_19218FE1C(v29);
  sub_19218FE1C(v51);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_19218ED80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {

    v5 = v4[78];
    v6 = v4[77];
    v7 = sub_19218FC80;
  }

  else
  {
    v4[111] = a1;
    v5 = v4[78];
    v6 = v4[77];
    v7 = sub_19218EECC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19218EECC()
{
  v81 = v0;
  v79 = *(v0 + 888);

  v1 = *(v0 + 856);
  v76 = *(v0 + 768);
  v74 = *(v0 + 752);
  v2 = *(v0 + 736);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 456);
  v6 = *(v0 + 312);
  KeyPath = swift_getKeyPath();
  *(v0 + 264) = v1;
  *(v0 + 272) = KeyPath;
  *(v0 + 280) = 1;
  swift_allocObject();
  swift_retain_n();

  sub_192226760();
  v2(v3, v6, v4);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  if (v76(v5, 1, v74) == 1)
  {
    sub_192033970(*(v0 + 456), &qword_1EADEFEC0, &unk_192231BD0);
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v8 = *(v0 + 760);
    v9 = *(v0 + 752);
    v10 = *(v0 + 456);
    v11 = sub_192226A80();
    (*(v8 + 8))(v10, v9);
    v12 = [v11 string];

    v13 = sub_192227960();
    v77 = v14;
    v78 = v13;
  }

  v15 = *(v0 + 800);
  v16 = *(v0 + 784);
  v17 = *(v0 + 328);
  sub_192226B80();
  if (v15(v17, 1, v16) == 1)
  {
    sub_192033970(*(v0 + 328), &qword_1EADEF720, &unk_19222E2F0);
    goto LABEL_9;
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 784);
  v20 = *(v0 + 328);
  v21 = sub_192226B60();
  (*(v18 + 8))(v20, v19);
  if ((v21 & 1) == 0)
  {
LABEL_9:
    (*(v0 + 832))(*(v0 + 336), 1, 1, *(v0 + 784));
    v22 = v79;
    if (!v79)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_192226B80();
  v22 = v79;
  if (!v79)
  {
    goto LABEL_12;
  }

LABEL_10:
  v73 = *(v0 + 768);
  v72 = *(v0 + 752);
  v23 = *(v0 + 736);
  v24 = *(v0 + 512);
  v25 = *(v0 + 496);
  v26 = *(v0 + 448);
  v27 = *(v0 + 312);
  *(v0 + 288) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  swift_allocObject();
  swift_retain_n();
  sub_192226760();
  v23(v24, v27, v25);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v28 = v73(v26, 1, v72);
  v29 = *(v0 + 816);
  if (v28 == 1)
  {
    v30 = *(v0 + 448);
    v29(*(v0 + 400), *(v0 + 384));

    sub_192033970(v30, &qword_1EADEFEC0, &unk_192231BD0);

LABEL_12:

    v69 = 0;
    v70 = 0;
    goto LABEL_14;
  }

  v31 = *(v0 + 760);
  v32 = *(v0 + 752);
  v33 = *(v0 + 448);
  v75 = *(v0 + 400);
  v34 = *(v0 + 384);
  v35 = sub_192226A80();
  (*(v31 + 8))(v33, v32);
  v36 = [v35 string];

  v37 = sub_192227960();
  v69 = v38;
  v70 = v37;

  v29(v75, v34);

LABEL_14:
  v39 = *(v0 + 832);
  v40 = *(v0 + 784);
  v63 = *(v0 + 664);
  v64 = *(v0 + 656);
  v65 = *(v0 + 672);
  v62 = *(v0 + 648);
  v61 = *(v0 + 242);
  v59 = *(v0 + 632);
  v60 = *(v0 + 640);
  v68 = *(v0 + 544);
  v71 = *(v0 + 241);
  v41 = *(v0 + 376);
  v66 = v41;
  v42 = *(v0 + 360);
  v43 = *(v0 + 368);
  v44 = *(v0 + 336);
  v67 = *(v0 + 320);
  v45 = *(v0 + 304);
  (*(v0 + 816))();
  v46 = v42[6];
  v39(v43 + v46, 1, 1, v40);
  v47 = v43 + v42[7];
  v48 = (v43 + v42[8]);
  v49 = (v43 + v42[9]);
  *v43 = v78;
  v43[1] = v77;
  v43[2] = v70;
  v43[3] = v69;
  sub_19204193C(v44, v43 + v46, &qword_1EADEF720, &unk_19222E2F0);
  *v47 = v59;
  *(v47 + 1) = v60;
  v47[16] = v61;
  *v48 = v63;
  v48[1] = v65;
  *v49 = v62;
  v49[1] = v64;
  sub_19218FE78(v41, v45);
  v50 = type metadata accessor for ControlTemplateButton(0);
  v51 = sub_19218FE78(v43, v45 + v50[5]);
  v68(&v80, v51);
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  v52 = v80;
  v53 = sub_192225020();
  v54 = *(*(v53 - 8) + 56);
  v54(v67, 1, 1, v53);
  v55 = v50[7];
  v54(v45 + v55, 1, 1, v53);
  v56 = (v45 + v50[10]);
  *(v45 + v50[6]) = v52;
  sub_19204193C(v67, v45 + v55, &qword_1EADEEE10, &unk_19222B630);
  *(v45 + v50[8]) = 0;
  *(v45 + v50[9]) = v71;
  *v56 = 0;
  v56[1] = 0;
  *(v45 + v50[11]) = 0;
  sub_19218FE1C(v43);
  sub_19218FE1C(v66);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_19218F644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19218F7BC()
{
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19218F950()
{
  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19218FAE4()
{
  v1 = *(v0 + 376);

  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  sub_19218FE1C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19218FC80()
{
  v1 = *(v0 + 376);

  sub_192033970(v0 + 88, &qword_1EADF1810, &qword_19223D0E0);
  sub_19218FE1C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19218FE1C(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19218FE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_19218FF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_19218FF48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192190118()
{
  result = qword_1EADF1818;
  if (!qword_1EADF1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1818);
  }

  return result;
}

uint64_t DynamicIslandExpandedRegion._viewRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v65 = a1;
  swift_getOpaqueTypeMetadata2();
  v61 = v3;
  v62 = v2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = swift_getOpaqueTypeConformance2();
  v77 = v89;
  v4 = swift_getOpaqueTypeMetadata2();
  v5 = sub_1922266F0();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1820, &qword_19223D2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v74 = swift_checkMetadataState();
  v66 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v55 - v14;
  v71 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v55 - v18;
  v75 = v5;
  v69 = sub_1922266F0();
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v55 - v19;
  v20 = sub_192226300();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v55 - v25;
  v27 = *v59;
  v68 = v21;
  v67 = &v55 - v25;
  v58 = v28;
  if (v27 <= 1)
  {
    if (v27)
    {
      sub_1922262F0();
    }

    else
    {
      sub_1922262E0();
    }

    (*(v21 + 32))(v26, v23, v20);
    sub_192227060();
    v41 = v64;
    sub_192227070();
    (*(v11 + 8))(v13, v10);
    sub_192226250();
    v42 = sub_192226260();
    (*(*(v42 - 8) + 56))(v9, 0, 1, v42);
    v43 = v63;
    v32 = v74;
    v44 = v77;
    sub_192227130();
    sub_192033970(v9, &qword_1EADF1820, &qword_19223D2A0);
    (*(v66 + 8))(v41, v32);
    OpaqueTypeMetadata2 = v32;
    v89 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v35 = v70;
    sub_1921BB14C();
    v36 = *(v71 + 8);
    v36(v43, v4);
    sub_1921BB14C();
    v46 = v56;
    sub_19202F62C(v43, v4, v4, v45, v45);
    v78 = v45;
    v79 = v45;
    goto LABEL_9;
  }

  if (v27 != 2)
  {
    sub_1922262C0();
    (*(v21 + 32))(v26, v23, v20);
    sub_192227060();
    v47 = v64;
    sub_192227070();
    (*(v11 + 8))(v13, v10);
    sub_192226250();
    v48 = sub_192226260();
    (*(*(v48 - 8) + 56))(v9, 0, 1, v48);
    v43 = v63;
    v32 = v74;
    v49 = v77;
    sub_192227130();
    sub_192033970(v9, &qword_1EADF1820, &qword_19223D2A0);
    (*(v66 + 8))(v47, v32);
    OpaqueTypeMetadata2 = v32;
    v89 = v49;
    v45 = swift_getOpaqueTypeConformance2();
    v35 = v70;
    sub_1921BB14C();
    v36 = *(v71 + 8);
    v36(v43, v4);
    sub_1921BB14C();
    v46 = v56;
    sub_1921BAB5C(v43, v4, v4, v45, v45);
    v80 = v45;
    v81 = v45;
LABEL_9:
    v50 = v75;
    WitnessTable = swift_getWitnessTable();
    v39 = v72;
    sub_19202F62C(v46, v50, v4, WitnessTable, v45);
    (*(v57 + 8))(v46, v50);
    v40 = v43;
    v33 = v77;
    goto LABEL_10;
  }

  sub_1922262D0();
  (*(v21 + 32))(v26, v23, v20);
  sub_192227060();
  v29 = v64;
  sub_192227070();
  (*(v11 + 8))(v13, v10);
  sub_192226250();
  v30 = sub_192226260();
  (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
  v31 = v63;
  v32 = v74;
  v33 = v77;
  sub_192227130();
  sub_192033970(v9, &qword_1EADF1820, &qword_19223D2A0);
  (*(v66 + 8))(v29, v32);
  OpaqueTypeMetadata2 = v32;
  v89 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v70;
  sub_1921BB14C();
  v36 = *(v71 + 8);
  v36(v31, v4);
  sub_1921BB14C();
  v86 = v34;
  v87 = v34;
  v37 = v75;
  v38 = swift_getWitnessTable();
  v39 = v72;
  sub_1921BAB5C(v31, v37, v4, v38, v34);
  v40 = v31;
LABEL_10:
  v36(v40, v4);
  v36(v35, v4);
  (*(v68 + 8))(v67, v58);
  OpaqueTypeMetadata2 = v32;
  v89 = v33;
  v52 = swift_getOpaqueTypeConformance2();
  v84 = v52;
  v85 = v52;
  v82 = swift_getWitnessTable();
  v83 = v52;
  v53 = v69;
  swift_getWitnessTable();
  sub_1921BB14C();
  return (*(v73 + 8))(v39, v53);
}

uint64_t DynamicIslandExpandedRegion.init(_:priority:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a1;
  v10 = type metadata accessor for DynamicIslandExpandedRegion(0, a3, a4, a3);
  v11 = a5 + *(v10 + 44);
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *a5 = v9;
  *(a5 + 8) = a6;
  return a2(v10, v12, v13, v14);
}

uint64_t DynamicIslandExpandedRegion.contentMargins(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  result = sub_1921443BC(v22, a4);
  v9 = a3 + *(a2 + 44);
  v10 = *(v9 + 8);
  v11 = v22[8];
  if (v10)
  {
    v12 = v22;
  }

  else
  {
    v12 = (a3 + *(a2 + 44));
  }

  *v9 = *v12;
  *(v9 + 8) = v10 & v11;
  v13 = (v9 + 16);
  v14 = *(v9 + 24);
  v15 = v23[8];
  if (v14)
  {
    v13 = v23;
  }

  *(v9 + 16) = *v13;
  *(v9 + 24) = v14 & v15;
  v16 = (v9 + 32);
  v17 = *(v9 + 40);
  v18 = v24[8];
  if (v17)
  {
    v16 = v24;
  }

  *(v9 + 32) = *v16;
  *(v9 + 40) = v17 & v18;
  v19 = (v9 + 48);
  v20 = *(v9 + 56);
  v21 = v25[8];
  if (v20)
  {
    v19 = v25;
  }

  *(v9 + 48) = *v19;
  *(v9 + 56) = v20 & v21;
  return result;
}

uint64_t View.dynamicIsland(verticalPlacement:)(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1828, &qword_19223D2A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1922262B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_192226290();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7, v9);
    sub_192226270();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_192033970(v6, &qword_1EADF1828, &qword_19223D2A8);
    }
  }

  sub_192227160();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_192191264(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921912F4(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFC)
    {
      return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (v17 >= 4)
    {
      return v17 - 3;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_192191458(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *(a1 + v10) = 0;
      }

      else if (v14)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFC)
      {
        v17 = *(v6 + 56);
        v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

        v17(v18);
      }

      else
      {
        *a1 = a2 + 3;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *(a1 + v10) = v16;
      }

      else
      {
        *(a1 + v10) = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    *(a1 + v10) = v16;
  }
}

unint64_t sub_192191650()
{
  result = qword_1EADF1830;
  if (!qword_1EADF1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1830);
  }

  return result;
}

uint64_t WidgetContainerShapeModifier.init(cornerRadius:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for JindoViewCollection(uint64_t a1)
{
  result = qword_1EADED8B8;
  if (!qword_1EADED8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_192191784(uint64_t a1)
{
  result = sub_19217F398();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityMetricsDefinition(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_19219181C()
{
  result = qword_1EADED150;
  if (!qword_1EADED150)
  {
    type metadata accessor for JindoViewStates(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED150);
  }

  return result;
}

uint64_t sub_192191874@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192033A64((v1 + 1), v21);
  v9 = type metadata accessor for JindoViewCollection(0);
  sub_192191A9C(v1 + *(v9 + 24), v8);
  v10 = *v1;
  v11 = type metadata accessor for JindoViewStates(0);
  *(a1 + v11[9]) = MEMORY[0x1E69E7CC8];
  *(a1 + v11[10]) = 4;
  v12 = v11[11];
  v13 = sub_1922261D0();
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  sub_192033A64(v21, (a1 + 1));
  sub_192191A9C(v8, a1 + v11[6]);
  *(a1 + v11[7]) = v10;
  v14 = v10;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v5 = v14;
  sub_19209C05C(v5);
  v16 = v15;
  sub_19205BD8C(v5, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_19205BD8C(v8, type metadata accessor for ActivityMetricsDefinition);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = (a1 + v11[8]);
  *v18 = &unk_1F06A77B0;
  v18[1] = v16;
  v19 = *(v16 + 16);
  if ((qword_1F06A77C0 * v19) >> 64 == (qword_1F06A77C0 * v19) >> 63)
  {
    *a1 = qword_1F06A77C0 * v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192191A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMetricsDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id Color.Resolved.bsColor.getter(float a1, float a2, float a3, float a4)
{
  sub_1922272A0();
  v6 = v5;
  sub_1922272C0();
  v8 = v7;
  sub_1922272B0();
  result = [objc_opt_self() colorWithRed:v6 green:v8 blue:v9 alpha:a4];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Color.init(bsColor:)(void *a1)
{
  v2 = sub_192227220();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v3);
  [a1 red];
  [a1 green];
  [a1 blue];
  [a1 alpha];
  v6 = sub_1922272E0();

  return v6;
}

uint64_t sub_192191CEC()
{
  v1 = *(v0 + *(type metadata accessor for ContentMarginsContext(0) + 20));
  if (v1)
  {
    v2 = [v1 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v3 = sub_192225510();
    swift_endAccess();
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v2 = [v4 bundleIdentifier];

    if (!v2)
    {
      return 7104878;
    }

    v3 = sub_192227960();
  }

  return v3;
}

uint64_t sub_192191E04()
{
  v1 = v0;
  v2 = 7104878;
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_192228400();
  v59 = v55;
  v60 = v56;
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224D080);
  sub_19207C3DC(v0, v11);
  v12 = type metadata accessor for WidgetDescriptor(0);
  v54 = *(*(v12 - 8) + 48);
  if (v54(v11, 1, v12) == 1)
  {
    v13 = &qword_1EADEEE20;
    v14 = &qword_19222B670;
    v15 = v11;
  }

  else
  {
    sub_192193564(v11, v5, type metadata accessor for ViewSource);
    sub_1920369C0(v11, type metadata accessor for WidgetDescriptor);
    sub_1921DB7C0(&v55);
    sub_1920369C0(v5, type metadata accessor for ViewSource);
    v16 = v57;
    if (v57)
    {
      v17 = v58;
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      v18 = (*(v17 + 16))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v21 = v18;
      goto LABEL_7;
    }

    v13 = &qword_1EADF1860;
    v14 = &unk_19223D680;
    v15 = &v55;
  }

  sub_192033970(v15, v13, v14);
  v20 = 0xE300000000000000;
  v21 = 7104878;
LABEL_7:
  MEMORY[0x193B0A990](v21, v20);

  MEMORY[0x193B0A990](0x656C646E7562202CLL, 0xEB000000003D4449);
  v22 = type metadata accessor for ContentMarginsContext(0);
  v23 = *(v1 + v22[5]);
  if (v23)
  {
    v24 = [v23 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v2 = sub_192225510();
    v26 = v25;
    swift_endAccess();
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v2, v26);

  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224D0A0);
  if (*(v1 + v22[7]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v22[7]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v27, v28);

  MEMORY[0x193B0A990](0xD000000000000014, 0x800000019224D0C0);
  sub_19207C3DC(v1, v8);
  if (v54(v8, 1, v12) == 1)
  {
    sub_192033970(v8, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    v29 = v8[*(v12 + 100)];
    sub_1920369C0(v8, type metadata accessor for WidgetDescriptor);
    if (v29)
    {
      v30 = 0xE400000000000000;
      v31 = 1702195828;
      goto LABEL_21;
    }
  }

  v30 = 0xE500000000000000;
  v31 = 0x65736C6166;
LABEL_21:
  MEMORY[0x193B0A990](v31, v30);

  MEMORY[0x193B0A990](0xD000000000000026, 0x800000019224D0E0);
  if (*(v1 + v22[8]))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v1 + v22[8]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v32, v33);

  MEMORY[0x193B0A990](0xD000000000000022, 0x800000019224D110);
  if (*(v1 + v22[9]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + v22[9]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224D140);
  v36 = sub_19207CFF0();
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v38, v39);

  MEMORY[0x193B0A990](0xD00000000000002BLL, 0x800000019224D160);
  v40 = sub_1921DB98C();
  v41 = (v40 & 1) == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v42, v43);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224D190);
  v44 = sub_19207D258();
  v45 = (v44 & 1) == 0;
  if (v44)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v45)
  {
    v47 = 0xE500000000000000;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  MEMORY[0x193B0A990](v46, v47);

  MEMORY[0x193B0A990](0x72614D776172202CLL, 0xED00003D736E6967);
  v48 = [*(v1 + v22[6]) margins];
  v49 = [v48 description];
  v50 = sub_192227960();
  v52 = v51;

  MEMORY[0x193B0A990](v50, v52);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v59;
}

uint64_t sub_192192464()
{
  v0 = sub_1920C85B0(&unk_1F06A7E10);
  result = sub_1920ED9C4(&unk_1F06A7E30);
  qword_1EADECBD8 = v0;
  return result;
}

uint64_t sub_1921924A4()
{
  v0 = sub_1920C85B0(&unk_1F06A7B80);
  result = swift_arrayDestroy();
  qword_1ED749A00 = v0;
  return result;
}

uint64_t sub_1921924F0()
{
  v0 = sub_1920C85B0(&unk_1F06A7E40);
  result = swift_arrayDestroy();
  qword_1ED74C768 = v0;
  return result;
}

uint64_t sub_192192560(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-1] - v5;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = &type metadata for FeatureFlags.Widgets;
  v25[4] = sub_19202DBA4();
  LOBYTE(v25[0]) = 5;
  v11 = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v11)
  {
    goto LABEL_15;
  }

  sub_19207C3DC(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_192033970(v6, &qword_1EADEEE20, &qword_19222B670);
LABEL_15:
    v22 = 0;
    return v22 & 1;
  }

  sub_19207C284(v6, v10);
  if (qword_1ED7497E8 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED749A00;
  if (a1)
  {

    v13 = [a1 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    v14 = sub_192225510();
    v16 = v15;
    swift_endAccess();
LABEL_10:

    goto LABEL_11;
  }

  v17 = objc_opt_self();

  v18 = [v17 mainBundle];
  v13 = [v18 bundleIdentifier];

  if (v13)
  {
    v14 = sub_192227960();
    v16 = v19;
    goto LABEL_10;
  }

  v16 = 0xE300000000000000;
  v14 = 7104878;
LABEL_11:
  v20 = sub_1921B01A8(v14, v16, v12);

  if ((v20 & 1) == 0)
  {
    sub_1920369C0(v10, type metadata accessor for WidgetDescriptor);
    goto LABEL_15;
  }

  v21 = v10[*(v7 + 104)];
  sub_1920369C0(v10, type metadata accessor for WidgetDescriptor);
  if (v21 == 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 ^ 1;
  }

  return v22 & 1;
}

uint64_t sub_1921928A4(uint64_t a1)
{
  v2 = type metadata accessor for ContentMarginsContext(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for WidgetDescriptor(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  if (*(a1 + v2[8]))
  {
    goto LABEL_4;
  }

  sub_19207C3DC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_192033970(v10, &qword_1EADEEE20, &qword_19222B670);
LABEL_4:
    v18 = 0;
    return v18 & 1;
  }

  sub_19207C284(v10, v17);
  if (qword_1ED749970 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED74C768;

  v21 = sub_192191CEC();
  v23 = sub_1921B01A8(v21, v22, v20);

  v47 = v23;
  if (v23 & 1) == 0 || (*(a1 + v2[7]) & 1) != 0 || (v24 = [objc_opt_self() currentDevice], v25 = objc_msgSend(v24, sel_userInterfaceIdiom), v24, v25 == 1) || (objc_msgSend(*(a1 + v2[6]), sel_scaleFactor), (BSFloatApproximatelyEqualToFloat()))
  {
    v18 = 0;
  }

  else
  {
    v41 = v17[*(v11 + 104)];
    if (v41 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = v41 ^ 1;
    }
  }

  if (qword_1ED7497F8 != -1)
  {
    swift_once();
  }

  v26 = sub_1922258B0();
  __swift_project_value_buffer(v26, qword_1ED74C6F0);
  sub_192193564(a1, v7, type metadata accessor for ContentMarginsContext);
  sub_192193564(a1, v4, type metadata accessor for ContentMarginsContext);
  sub_192193564(v17, v14, type metadata accessor for WidgetDescriptor);
  v27 = sub_192225890();
  v28 = sub_192227F80();
  if (os_log_type_enabled(v27, v28))
  {
    v44 = v28;
    v45 = v27;
    v46 = v4;
    v29 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v29 = 136447234;
    v30 = *&v7[v2[5]];
    if (v30)
    {
      v31 = [v30 extensionIdentity];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
      v32 = sub_192225510();
      v34 = v33;
      swift_endAccess();
    }

    else
    {
      v34 = 0xE300000000000000;
      v32 = 7104878;
    }

    sub_1920369C0(v7, type metadata accessor for ContentMarginsContext);
    v35 = sub_19202B8CC(v32, v34, &v48);

    *(v29 + 4) = v35;
    *(v29 + 12) = 1026;
    *(v29 + 14) = v18 & 1;
    *(v29 + 18) = 1026;
    *(v29 + 20) = v47 & 1;
    *(v29 + 24) = 1026;
    v36 = v46[v2[7]];
    sub_1920369C0(v46, type metadata accessor for ContentMarginsContext);
    *(v29 + 26) = v36;
    *(v29 + 30) = 1026;
    v37 = v14[*(v11 + 104)];
    v38 = v37 != 2 && (v37 & 1) != 0;
    v39 = v45;
    sub_1920369C0(v14, type metadata accessor for WidgetDescriptor);
    *(v29 + 32) = v38;
    _os_log_impl(&dword_192028000, v39, v44, "wants legacy margins for %{public}s: %{BOOL,public}d - inEligibleBundle: %{BOOL,public}d, showsWidgetBackground: %{BOOL,public}d, enableContentMarginsForFirstParty: %{BOOL,public}d", v29, 0x24u);
    v40 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x193B0C7F0](v40, -1, -1);
    MEMORY[0x193B0C7F0](v29, -1, -1);

    sub_1920369C0(v17, type metadata accessor for WidgetDescriptor);
  }

  else
  {
    sub_1920369C0(v14, type metadata accessor for WidgetDescriptor);
    sub_1920369C0(v4, type metadata accessor for ContentMarginsContext);

    sub_1920369C0(v17, type metadata accessor for WidgetDescriptor);
    sub_1920369C0(v7, type metadata accessor for ContentMarginsContext);
  }

  return v18 & 1;
}

double sub_192192EB4(uint64_t a1, _BYTE *a2, char a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ContentMarginsContext(0);
  if ((*(a1 + *(v11 + 32)) & 1) == 0)
  {
    v12 = v11;
    if (sub_1921928A4(a1))
    {
      *a2 = 1;
      if (*(a1 + *(v12 + 36)) == 1)
      {
        if (qword_1EADECBD0 != -1)
        {
          swift_once();
        }

        v13 = qword_1EADECBD8;

        v14 = sub_192191CEC();
        v16 = sub_1921B01A8(v14, v15, v13);

        if (v16)
        {
          goto LABEL_7;
        }

        sub_19207C3DC(a1, v10);
        v23 = type metadata accessor for WidgetDescriptor(0);
        if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
        {
          sub_192033970(v10, &qword_1EADEEE20, &qword_19222B670);
        }

        else
        {
          v24 = v10[*(v23 + 104)];
          sub_1920369C0(v10, type metadata accessor for WidgetDescriptor);
          if (v24 != 2 && (v24 & 1) != 0)
          {
LABEL_7:
            v17 = [*(a1 + *(v12 + 24)) margins];
            [v17 backgroundRemovedContentMargins];
            a4 = v18;

            return a4;
          }
        }

        v25 = [*(a1 + *(v12 + 24)) margins];
        [v25 backgroundRemovedContentMargins];
        v27 = v26;

        return v27 + v27;
      }

      v19 = *(a1 + *(v12 + 24));
      v20 = [v19 margins];
      [v20 contentMargins];
      a4 = v21;

      if ((a3 & 1) == 0)
      {
        [v19 scaleFactor];
        return a4 * v22;
      }
    }
  }

  return a4;
}

float64x2_t sub_1921931A0(uint64_t a1, float64x2_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for WidgetDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(a1, v9);
  v14 = *(v11 + 48);
  if (v14(v9, 1, v10) == 1)
  {
    sub_192033970(v9, &qword_1EADEEE20, &qword_19222B670);
    return *a2;
  }

  sub_19207C284(v9, v13);
  v15 = type metadata accessor for ContentMarginsContext(0);
  if (*(a1 + *(v15 + 36)) != 1)
  {
    goto LABEL_11;
  }

  if (*(a1 + *(v15 + 28)))
  {
    goto LABEL_11;
  }

  if (v13[*(v10 + 88)] != 1)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    goto LABEL_11;
  }

  [*(a1 + *(v16 + 24)) scaleFactor];
  if (BSFloatApproximatelyEqualToFloat())
  {
    goto LABEL_11;
  }

  if (qword_1ED749970 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED74C768;

  v20 = sub_192191CEC();
  v22 = sub_1921B01A8(v20, v21, v19);

  if (v22)
  {
LABEL_11:
    sub_1920369C0(v13, type metadata accessor for WidgetDescriptor);
    return *a2;
  }

  sub_19207C3DC(a1, v6);
  if (v14(v6, 1, v10) == 1)
  {
    sub_192033970(v6, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    v24 = v6[*(v10 + 104)];
    sub_1920369C0(v6, type metadata accessor for WidgetDescriptor);
    if (v24 != 2 && (v24 & 1) != 0)
    {
      goto LABEL_11;
    }
  }

  if (sub_1921DB98C())
  {
    v25 = qword_1ED74C768;

    v26 = sub_192191CEC();
    v28 = sub_1921B01A8(v26, v27, v25);

    sub_1920369C0(v13, type metadata accessor for WidgetDescriptor);
    if ((v28 & 1) == 0)
    {
      return *a2;
    }
  }

  else
  {
    sub_1920369C0(v13, type metadata accessor for WidgetDescriptor);
  }

  __asm { FMOV            V3.2D, #0.5 }

  return vmulq_f64(*a2, _Q3);
}

uint64_t sub_192193564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t View.widgetCurvesContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_192226BC0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226BB0();
  MEMORY[0x193B0A190](v8, a2, v5, a3);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1921936F0()
{
  result = qword_1EADF1868;
  if (!qword_1EADF1868)
  {
    sub_192226BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1868);
  }

  return result;
}

uint64_t sub_192193748(char a1, uint64_t a2, __int16 a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1880, &qword_19223D778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1870, &qword_19223D768);
  sub_192193FB4();
  sub_192193EC4();
  sub_1922266E0();
  return v4;
}

uint64_t _AccessoryWidgetBackground.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t _AccessoryWidgetBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  result = swift_getKeyPath();
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t _AccessoryWidgetBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  if (*(v1 + 8) == 1)
  {
    if (*v1 != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_192227FA0();
    v15 = sub_192226D00();
    v37 = v6;
    v16 = v11;
    v17 = v10;
    v18 = a1;
    v19 = v8;
    v20 = v3;
    v21 = v9;
    v22 = v4;
    v23 = v15;
    sub_1922257A0();

    v4 = v22;
    v9 = v21;
    v3 = v20;
    v8 = v19;
    a1 = v18;
    v10 = v17;
    v11 = v16;
    v6 = v37;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v24 = sub_192049898(v7, 0);
    (*(v4 + 8))(v6, v3, v24);
    if (v40 != 2)
    {
LABEL_3:
      sub_192227250();
      v12 = sub_192227260();

      if (v11)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {

        sub_192227FA0();
        v25 = v4;
        v26 = sub_192226D00();
        sub_1922257A0();

        v4 = v25;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        v27 = sub_192049898(v10, 0);
        (*(v25 + 8))(v6, v3, v27);
        if (v40 != 1)
        {
LABEL_5:
          if (!v9)
          {

            sub_192227FA0();
            v13 = sub_192226D00();
            sub_1922257A0();

            _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
            swift_getAtKeyPath();
            v14 = sub_192049898(v8, 0);
            (*(v4 + 8))(v6, v3, v14);
            LOBYTE(v8) = v40;
          }

LABEL_13:
          v30 = sub_192193748(v8 & 1, v12, 256);
          v32 = v31;

          v38 = v30;
          BYTE2(v39) = BYTE2(v32) & 1;
          LOWORD(v39) = v32;
          HIBYTE(v39) = 1;
          goto LABEL_14;
        }
      }

      if (!v9)
      {

        sub_192227FA0();
        v28 = sub_192226D00();
        sub_1922257A0();

        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        v29 = sub_192049898(v8, 0);
        (*(v4 + 8))(v6, v3, v29);
        LOBYTE(v8) = v40;
      }

      LOBYTE(v8) = v8 ^ 1;
      goto LABEL_13;
    }
  }

  v38 = sub_192227230();
  v39 = 256;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1870, &qword_19223D768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1878, &qword_19223D770);
  sub_192193EC4();
  sub_192193F28();
  result = sub_1922266E0();
  v34 = v41 | (v42 << 16);
  v35 = v43;
  *a1 = v40;
  *(a1 + 8) = v34;
  *(a1 + 10) = BYTE2(v34);
  *(a1 + 11) = v35;
  return result;
}

uint64_t sub_192193D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  result = swift_getKeyPath();
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_192193DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921940E8();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_192193E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921940E8();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

unint64_t sub_192193EC4()
{
  result = qword_1EADECE90;
  if (!qword_1EADECE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1870, &qword_19223D768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE90);
  }

  return result;
}

unint64_t sub_192193F28()
{
  result = qword_1EADECD60;
  if (!qword_1EADECD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1878, &qword_19223D770);
    sub_192193FB4();
    sub_192193EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD60);
  }

  return result;
}

unint64_t sub_192193FB4()
{
  result = qword_1EADECE50;
  if (!qword_1EADECE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1880, &qword_19223D778);
    sub_192193EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE50);
  }

  return result;
}

unint64_t sub_19219405C()
{
  result = qword_1EADECD50;
  if (!qword_1EADECD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1888, qword_19223D9A0);
    sub_192193EC4();
    sub_192193F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD50);
  }

  return result;
}

unint64_t sub_1921940E8()
{
  result = qword_1ED749540;
  if (!qword_1ED749540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749540);
  }

  return result;
}

uint64_t MetadataGraphicView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18A8, &qword_19223D9F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1898, &qword_19223D9E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v55 - v7;
  v70 = sub_192225E20();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v55 - v10;
  v11 = sub_192226B50();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_192226B70();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18B0, &qword_19223D9F8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v72 = sub_1921948A0();
  if (!v72)
  {
    swift_storeEnumTagMultiPayload();
    sub_1921951C8();
    return sub_1922266E0();
  }

  v60 = v3;
  v57 = sub_192194B8C();
  v25 = type metadata accessor for MetadataGraphicView(0);
  v26 = v25;
  v27 = *(v1 + *(v25 + 40));
  v28 = MEMORY[0x1E697CB08];
  v61 = v5;
  v58 = v24;
  v59 = v19;
  if (v27 != 1)
  {

LABEL_8:
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  (*(v14 + 16))(v18, v2 + *(v25 + 20), v13);
  if ((*(v14 + 88))(v18, v13) != *v28)
  {
    v33 = *(v14 + 8);

    v33(v18, v13);
    goto LABEL_8;
  }

  (*(v14 + 96))(v18, v13);
  v29 = v63;
  v30 = v64;
  v31 = v65;
  (*(v64 + 32))(v63, v18, v65);

  v56 = sub_192226AC0();
  (*(v30 + 8))(v29, v31);
LABEL_9:
  v34 = v68;
  sub_19202CFFC(v2 + *(v26 + 44), v68, &qword_1EADF1898, &qword_19223D9E0);
  v35 = v67;
  v36 = *(v67 + 48);
  v37 = v70;
  if (v36(v34, 1, v70) == 1)
  {
    v38 = v2 + *(v26 + 20);
    v39 = v62;
    (*(v14 + 16))(v62, v38, v13);
    if ((*(v14 + 88))(v39, v13) == *MEMORY[0x1E697CB08])
    {
      (*(v14 + 96))(v39, v13);
      v41 = v63;
      v40 = v64;
      v42 = v39;
      v43 = v65;
      (*(v64 + 32))(v63, v42, v65);
      v44 = v66;
      sub_192226AD0();
      v35 = v67;
      (*(v40 + 8))(v41, v43);
    }

    else
    {
      v44 = v66;
      sub_192225E10();
      (*(v14 + 8))(v39, v13);
    }

    v48 = v68;
    v45 = *(v35 + 32);
    v37 = v70;
    v45(v69, v44, v70);
    if (v36(v48, 1, v37) != 1)
    {
      sub_192033970(v48, &qword_1EADF1898, &qword_19223D9E0);
    }

    v47 = v61;
    v46 = v69;
  }

  else
  {
    v45 = *(v35 + 32);
    v46 = v69;
    v45(v69, v34, v37);
    v47 = v61;
  }

  KeyPath = swift_getKeyPath();
  v50 = (v21 + *(v59 + 36));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18C8, &qword_19223DA10);
  v45(v50 + *(v51 + 28), v46, v37);
  *v50 = KeyPath;
  v52 = v56;
  v53 = v57;
  *v21 = v72;
  v21[1] = v53;
  v21[2] = v52;
  v54 = v58;
  sub_19204E300(v21, v58, &qword_1EADF18B0, &qword_19223D9F8);
  sub_19202CFFC(v54, v47, &qword_1EADF18B0, &qword_19223D9F8);
  swift_storeEnumTagMultiPayload();
  sub_1921951C8();
  sub_1922266E0();

  return sub_192033970(v54, &qword_1EADF18B0, &qword_19223D9F8);
}

uint64_t sub_1921948A0()
{
  v1 = v0;
  v2 = sub_1922273A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18D0, &qword_19223DA48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for MetadataGraphicView(0);
  result = WidgetAuxiliaryViewMetadata.Graphic.image(symbolRenderingMode:)(v0 + v9[9]);
  if (result)
  {
    v11 = *(v0 + v9[6]);

    if ((v11 & 1) != 0 || (v15 = sub_192194B8C()) != 0 && (v16 = *(v15 + 16), , !v16))
    {
      v12 = *MEMORY[0x1E6981698];
      v13 = sub_1922273F0();
      v14 = *(v13 - 8);
      (*(v14 + 104))(v8, v12, v13);
      (*(v14 + 56))(v8, 0, 1, v13);
    }

    else
    {
      v17 = sub_1922273F0();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    }

    v18 = sub_1922273B0();

    sub_192033970(v8, &qword_1EADF18D0, &qword_19223DA48);
    if (*(v1 + v9[8]) == 1)
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
      v19 = sub_192227410();

      (*(v3 + 8))(v5, v2);
      return v19;
    }

    else
    {
      return v18;
    }
  }

  return result;
}

uint64_t sub_192194B8C()
{
  v1 = sub_192226B70();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_192226B50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetadataGraphicView(0);
  v10 = (v0 + *(v9 + 28));
  v11 = *v10;
  if (*v10 == 1)
  {
    return 0;
  }

  if (v11)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (v10[1])
    {
      (*(v2 + 16))(v4, v0 + *(v9 + 20), v1);
      if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E697CB08])
      {
        (*(v2 + 96))(v4, v1);
        (*(v6 + 32))(v8, v4, v5);
        v12 = sub_192226B10();
        (*(v6 + 8))(v8, v5);
        if (v12)
        {
          return v12;
        }
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }
    }
  }

  return v11;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.symbolEffects.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E697CB08])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v11 = sub_192226AC0();
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.contentTransition.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E697CB08])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    sub_192226AD0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_192225E10();
    return (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1921951C8()
{
  result = qword_1EADEDDD0;
  if (!qword_1EADEDDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18B0, &qword_19223D9F8);
    sub_192195280();
    sub_192031E74(&unk_1EADEE600, &qword_1EADF18C8, &qword_19223DA10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDD0);
  }

  return result;
}

unint64_t sub_192195280()
{
  result = qword_1EADEDDE8;
  if (!qword_1EADEDDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18B8, &qword_19223DA00);
    sub_19219530C();
    sub_1921953EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDE8);
  }

  return result;
}

unint64_t sub_19219530C()
{
  result = qword_1EADEDE08;
  if (!qword_1EADEDE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18C0, &qword_19223DA08);
    sub_192195398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE08);
  }

  return result;
}

unint64_t sub_192195398()
{
  result = qword_1EADED3F0;
  if (!qword_1EADED3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3F0);
  }

  return result;
}

unint64_t sub_1921953EC()
{
  result = qword_1EADEDD10;
  if (!qword_1EADEDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD10);
  }

  return result;
}

uint64_t WidgetAuxiliaryViewMetadata.Graphic.image(symbolRenderingMode:)(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18D0, &qword_19223DA48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v26 - v4;
  v5 = sub_192226B50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922273A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_192226B70();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v17, v2, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x1E697CB08])
  {
    (*(v14 + 96))(v17, v13);
    (*(v6 + 32))(v8, v17, v5);
    if (!sub_192226B10())
    {
      v23 = sub_1921958D0(v27);
      goto LABEL_9;
    }

    if (sub_1921958D0(v27))
    {
      v19 = *MEMORY[0x1E6981698];
      v20 = sub_1922273F0();
      v21 = *(v20 - 8);
      v22 = v26;
      (*(v21 + 104))(v26, v19, v20);
      (*(v21 + 56))(v22, 0, 1, v20);
      v23 = sub_1922273B0();

      sub_192033970(v22, &qword_1EADF18D0, &qword_19223DA48);
LABEL_9:
      (*(v6 + 8))(v8, v5);
      return v23;
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (v18 != *MEMORY[0x1E697CB00])
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  (*(v14 + 96))(v17, v13);
  v24 = *v17;
  sub_192227370();
  (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
  v23 = sub_192227410();

  (*(v10 + 8))(v12, v9);
  return v23;
}

uint64_t sub_1921958D0(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1890, &qword_19223D9D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  v48 = sub_1922265E0();
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_192225020();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192226B30();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = sub_192226B00();
  v23 = *&v22;
  if ((v22 & 0x100000000) != 0)
  {
    v23 = 0.0;
  }

  v47 = v23;
  sub_192226B40();
  v24 = (*(v13 + 88))(v21, v12);
  v25 = *MEMORY[0x1E697CAF0];
  v46 = v1;
  if (v24 == v25)
  {
    (*(v13 + 16))(v18, v21, v12);
    (*(v13 + 96))(v18, v12);
    v26 = v18;
    v27 = v44;
    (*(v9 + 32))(v11, v26, v44);
    v28 = objc_opt_self();
    v29 = sub_192224FE0();
    v30 = [v28 wk:v29 uniqueWithURL:?];

    sub_192226AF0();
    v31 = sub_192227420();
    (*(v9 + 8))(v11, v27);
LABEL_9:
    v34 = v51;
    v33 = v52;
    v35 = v50;
    v36 = v48;
    goto LABEL_12;
  }

  if (v24 != *MEMORY[0x1E697CAF8])
  {
    v31 = 0;
    goto LABEL_9;
  }

  (*(v13 + 16))(v15, v21, v12);
  (*(v13 + 96))(v15, v12);
  v32 = *v15;
  sub_192226AF0();
  v34 = v51;
  v33 = v52;
  v35 = v50;
  v36 = v48;
  if (v32)
  {
    v37 = sub_1922273C0();
  }

  else
  {
    v37 = sub_192227380();
  }

  v31 = v37;
LABEL_12:
  (*(v13 + 8))(v21, v12);
  sub_19202CFFC(v49, v35, &qword_1EADF1890, &qword_19223D9D8);
  v38 = *(v33 + 48);
  if (v38(v35, 1, v36) == 1)
  {
    sub_192226AE0();
    if (v38(v35, 1, v36) != 1)
    {
      sub_192033970(v35, &qword_1EADF1890, &qword_19223D9D8);
    }
  }

  else
  {
    (*(v33 + 32))(v34, v35, v36);
    (*(v33 + 56))(v34, 0, 1, v36);
  }

  if (v38(v34, 1, v36) == 1)
  {
    sub_192033970(v34, &qword_1EADF1890, &qword_19223D9D8);
  }

  else
  {
    v39 = v45;
    (*(v33 + 32))(v45, v34, v36);
    if (v31)
    {
      v40 = v43;
      (*(v33 + 16))(v43, v39, v36);
      (*(v33 + 56))(v40, 0, 1, v36);
      v41 = sub_1922273E0();

      sub_192033970(v40, &qword_1EADF1890, &qword_19223D9D8);
      (*(v33 + 8))(v39, v36);
      return v41;
    }

    else
    {
      (*(v33 + 8))(v39, v36);
    }
  }

  return v31;
}

BOOL WidgetAuxiliaryViewMetadata.Graphic.isSystemSymbol.getter()
{
  v1 = v0;
  v2 = sub_192226B30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192226B70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E697CB08])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    sub_192226B40();
    (*(v7 + 8))(v9, v6);
    v15 = (*(v3 + 88))(v5, v2) != *MEMORY[0x1E697CAF0];
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }

  return v15;
}

uint64_t sub_1921961F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18E0, &qword_19223DBC8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v46 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18E8, &qword_19223DBD0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = v46 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18F0, &qword_19223DBD8);
  MEMORY[0x1EEE9AC00](v48);
  v46[0] = v46 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18F8, &qword_19223DBE0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1900, &qword_19223DBE8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1908, &qword_19223DBF0);
  MEMORY[0x1EEE9AC00](v50);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1910, &qword_19223DBF8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1918, &qword_19223DC00);
  MEMORY[0x1EEE9AC00](v22);
  v52 = v46 - v24;
  if (!a2)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
    (*(*(v27 - 8) + 16))(v6, v54, v27);
    swift_storeEnumTagMultiPayload();
    sub_192196EC4();
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
    return sub_1922266E0();
  }

  v46[2] = v4;
  v47 = v6;
  v25 = a2[2];
  v46[1] = v23;
  if (!v25)
  {
    v26 = v54;
LABEL_9:
    KeyPath = swift_getKeyPath();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
    (*(*(v39 - 8) + 16))(v18, v26, v39);
    v40 = &v18[*(v16 + 36)];
    *v40 = KeyPath;
    v40[1] = v25;
    sub_19204E300(v18, v21, &qword_1EADF1910, &qword_19223DBF8);
    sub_19202CFFC(v21, v13, &qword_1EADF1910, &qword_19223DBF8);
    swift_storeEnumTagMultiPayload();
    sub_192196FDC();
    sub_1921970C0();
    sub_1922266E0();
    sub_19202CFFC(v15, v51, &qword_1EADF1908, &qword_19223DBF0);
    swift_storeEnumTagMultiPayload();
    sub_192196F50();
    sub_1921971A4();
    v34 = v52;
    sub_1922266E0();
    sub_192033970(v15, &qword_1EADF1908, &qword_19223DBF0);
    v35 = v21;
    v36 = &qword_1EADF1910;
    v37 = &qword_19223DBF8;
    goto LABEL_11;
  }

  v26 = v54;
  if (v25 != 2)
  {
    if (v25 != 1)
    {
      v41 = a2[4];
      v42 = a2[5];
      v43 = a2[6];
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
      (*(*(v44 - 8) + 16))(v8, v26, v44);
      v45 = &v8[*(v53 + 36)];
      *v45 = v41;
      *(v45 + 1) = v42;
      *(v45 + 2) = v43;
      sub_19202CFFC(v8, v51, &qword_1EADF18E8, &qword_19223DBD0);
      swift_storeEnumTagMultiPayload();
      sub_192196F50();
      sub_1921971A4();

      v34 = v52;
      sub_1922266E0();
      v35 = v8;
      v36 = &qword_1EADF18E8;
      v37 = &qword_19223DBD0;
      goto LABEL_11;
    }

    v25 = a2[4];

    goto LABEL_9;
  }

  v29 = a2[4];
  v30 = a2[5];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
  v32 = v46[0];
  (*(*(v31 - 8) + 16))(v46[0], v26, v31);
  v33 = (v32 + *(v48 + 36));
  *v33 = v29;
  v33[1] = v30;
  sub_19202CFFC(v32, v13, &qword_1EADF18F0, &qword_19223DBD8);
  swift_storeEnumTagMultiPayload();
  sub_192196FDC();
  sub_1921970C0();

  sub_1922266E0();
  sub_19202CFFC(v15, v51, &qword_1EADF1908, &qword_19223DBF0);
  swift_storeEnumTagMultiPayload();
  sub_192196F50();
  sub_1921971A4();
  v34 = v52;
  sub_1922266E0();
  sub_192033970(v15, &qword_1EADF1908, &qword_19223DBF0);
  v35 = v32;
  v36 = &qword_1EADF18F0;
  v37 = &qword_19223DBD8;
LABEL_11:
  sub_192033970(v35, v36, v37);
  sub_19202CFFC(v34, v47, &qword_1EADF1918, &qword_19223DC00);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1920, &qword_19223DC08);
  sub_192196EC4();
  sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
  sub_1922266E0();
  return sub_192033970(v34, &qword_1EADF1918, &qword_19223DC00);
}

uint64_t sub_192196A78(uint64_t a1)
{
  v2 = sub_192225E20();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_192225F80();
}

void sub_192196B84(uint64_t a1)
{
  sub_192196CDC(319, &qword_1EADEE8A0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_192226B70();
    if (v2 <= 0x3F)
    {
      sub_192196CDC(319, &qword_1EADEDD90, MEMORY[0x1E697F840], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_192196CDC(319, &qword_1EADEDDA8, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192196CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_192196D40()
{
  result = qword_1EADEDD60;
  if (!qword_1EADEDD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18D8, &qword_19223DAD8);
    sub_1921951C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD60);
  }

  return result;
}

uint64_t sub_192196DCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192196E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_192196EC4()
{
  result = qword_1EADEDD48;
  if (!qword_1EADEDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1918, &qword_19223DC00);
    sub_192196F50();
    sub_1921971A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD48);
  }

  return result;
}

unint64_t sub_192196F50()
{
  result = qword_1EADEDD68;
  if (!qword_1EADEDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1908, &qword_19223DBF0);
    sub_192196FDC();
    sub_1921970C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD68);
  }

  return result;
}

unint64_t sub_192196FDC()
{
  result = qword_1EADEDE18;
  if (!qword_1EADEDE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1910, &qword_19223DBF8);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDCD8, &qword_1EADF1928, &qword_19223DC10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE18);
  }

  return result;
}

unint64_t sub_1921970C0()
{
  result = qword_1EADEDE28;
  if (!qword_1EADEDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18F0, &qword_19223DBD8);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDCF8, &qword_1EADF1930, &qword_19223DC18, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE28);
  }

  return result;
}

unint64_t sub_1921971A4()
{
  result = qword_1EADEDE20;
  if (!qword_1EADEDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF18E8, &qword_19223DBD0);
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADEDCF0, &qword_1EADF1938, &qword_19223DC20, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE20);
  }

  return result;
}

unint64_t sub_192197288()
{
  result = qword_1EADEDD40;
  if (!qword_1EADEDD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1940, &qword_19223DC58);
    sub_192196EC4();
    sub_192031E74(&qword_1EADEDD28, &qword_1EADF1920, &qword_19223DC08, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD40);
  }

  return result;
}

uint64_t sub_192197340()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1970, qword_19223DEC8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v70 = &v64 - v2;
  v3 = sub_192225230();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v64 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v64 - v8;
  v9 = sub_1922251D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1960, &qword_19223DEB8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v69 = v0;
  sub_192225260();
  sub_1922251C0();
  (*(v10 + 56))(v20, 0, 1, v9);
  v24 = *(v13 + 56);
  sub_192198B04(v23, v15);
  sub_192198B04(v20, &v15[v24]);
  v25 = *(v10 + 48);
  if (v25(v15, 1, v9) == 1)
  {
    sub_192033970(v20, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v23, &qword_1EADF1968, &qword_19223DEC0);
    if (v25(&v15[v24], 1, v9) == 1)
    {
      sub_192033970(v15, &qword_1EADF1968, &qword_19223DEC0);
      return 2;
    }
  }

  else
  {
    sub_192198B04(v15, v73);
    if (v25(&v15[v24], 1, v9) != 1)
    {
      v35 = &v15[v24];
      v36 = v65;
      (*(v10 + 32))(v65, v35, v9);
      sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v37 = v73;
      v38 = sub_192227910();
      v39 = *(v10 + 8);
      v39(v36, v9);
      sub_192033970(v20, &qword_1EADF1968, &qword_19223DEC0);
      sub_192033970(v23, &qword_1EADF1968, &qword_19223DEC0);
      v39(v37, v9);
      sub_192033970(v15, &qword_1EADF1968, &qword_19223DEC0);
      if (v38)
      {
        return 2;
      }

      goto LABEL_7;
    }

    sub_192033970(v20, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v23, &qword_1EADF1968, &qword_19223DEC0);
    (*(v10 + 8))(v73, v9);
  }

  sub_192033970(v15, &qword_1EADF1960, &qword_19223DEB8);
LABEL_7:
  v27 = v70;
  sub_192225270();
  v29 = v71;
  v28 = v72;
  if ((*(v71 + 48))(v27, 1, v72) == 1)
  {
    sub_192033970(v27, &qword_1EADF1970, qword_19223DEC8);
    return 0;
  }

  v30 = v68;
  (*(v29 + 32))(v68, v27, v28);
  v31 = v66;
  (*(v29 + 16))(v66, v30, v28);
  v32 = v67;
  sub_192225220();
  sub_192198B74(&qword_1ED7499C8, MEMORY[0x1E69696A0], MEMORY[0x1E69696B0]);
  v33 = sub_192227910();
  v34 = *(v29 + 8);
  v34(v32, v28);
  if (v33)
  {
    goto LABEL_10;
  }

  sub_192225220();
  v40 = sub_192227910();
  v34(v32, v28);
  if (v40)
  {
    goto LABEL_14;
  }

  sub_192225220();
  v41 = sub_192227910();
  v34(v32, v28);
  if (v41)
  {
    v34(v31, v28);
    v42 = v30;
LABEL_17:
    v34(v42, v28);
    return 1;
  }

  sub_192225220();
  v43 = sub_192227910();
  v34(v32, v28);
  if (v43)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v44 = sub_192227910();
  v34(v32, v28);
  if (v44)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v45 = sub_192227910();
  v34(v32, v28);
  if (v45)
  {
    goto LABEL_21;
  }

  sub_192225220();
  v46 = sub_192227910();
  v34(v32, v28);
  if (v46)
  {
    goto LABEL_14;
  }

  sub_192225220();
  v47 = sub_192227910();
  v34(v32, v28);
  if (v47 & 1) != 0 || (sub_192225220(), v48 = sub_192227910(), v34(v32, v28), (v48))
  {
LABEL_21:
    v34(v31, v28);
    v34(v30, v28);
    return 3;
  }

  sub_192225220();
  v49 = sub_192227910();
  v34(v32, v28);
  if (v49)
  {
LABEL_10:
    v34(v31, v28);
    v34(v30, v28);
    return 2;
  }

  sub_192225220();
  v50 = sub_192227910();
  v34(v32, v28);
  if (v50)
  {
LABEL_14:
    v34(v31, v28);
    v34(v30, v28);
    return 4;
  }

  sub_192225220();
  v51 = sub_192227910();
  v34(v32, v28);
  if (v51)
  {
    goto LABEL_10;
  }

  sub_192225220();
  v52 = sub_192227910();
  v34(v32, v28);
  if (v52)
  {
    v34(v31, v28);
    v42 = v68;
    goto LABEL_17;
  }

  v53 = v67;
  sub_192225220();
  v54 = sub_192227910();
  v34(v53, v28);
  if (v54)
  {
    v55 = v72;
    v34(v66, v72);
    v34(v68, v55);
    return 2;
  }

  v56 = v67;
  sub_192225220();
  v57 = v72;
  v58 = sub_192227910();
  v34(v56, v57);
  if (v58)
  {
    v59 = v72;
    v34(v66, v72);
    v34(v68, v59);
    return 3;
  }

  v60 = v67;
  sub_192225220();
  v61 = v66;
  v62 = v72;
  v63 = sub_192227910();
  v34(v60, v62);
  v34(v61, v62);
  v34(v68, v62);
  if (v63)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192197F14()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x3270756F7267;
  v4 = 0x3370756F7267;
  if (v1 != 3)
  {
    v4 = 0x3470756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x3170756F7267;
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

__CFNotificationCenter *sub_192197F98()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  *(v0 + 24) = 5;
  result = CFNotificationCenterGetLocalCenter();
  if (*MEMORY[0x1E695E6E0])
  {
    v4 = result;
    CFNotificationCenterAddObserver(result, 0, sub_192198C54, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = sub_192227930();
    CFNotificationCenterAddObserver(v5, 0, sub_192198C58, v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFNotificationCenter *sub_1921980A0()
{
  type metadata accessor for PreferredLanguageObserver();
  swift_allocObject();
  result = sub_192197F98();
  off_1ED7499B0 = result;
  return result;
}

uint64_t sub_1921980E0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_19219815C()
{
  result = qword_1EADF1958;
  if (!qword_1EADF1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1958);
  }

  return result;
}

uint64_t sub_1921981B0(uint64_t a1)
{
  v77 = sub_1922251D0();
  v2 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1960, &qword_19223DEB8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v56 - v23;
  v68 = sub_192225280();
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v62 = v16;
    v63 = v13;
    v27 = 0;
    v65 = 0;
    v72 = (v2 + 56);
    v28 = (v2 + 48);
    v56 = v10;
    v57 = (v2 + 32);
    v60 = (v2 + 8);
    v61 = v21;
    v66 = (v24 + 8);
    v67 = v7;
    v29 = a1 + 40;
    v70 = (v2 + 48);
    while (1)
    {
      v75 = v27;
      v31 = v28;

      sub_192225250();
      v76 = sub_192197340();
      v32 = v73;
      sub_192225260();
      sub_1922251C0();
      v33 = *v72;
      v34 = v77;
      (*v72)(v21, 0, 1, v77);
      v35 = *(v74 + 48);
      sub_192198B04(v32, v7);
      sub_192198B04(v21, &v7[v35]);
      v36 = *v31;
      if ((*v31)(v7, 1, v34) == 1)
      {
        break;
      }

      v40 = v64;
      sub_192198B04(v7, v64);
      if (v36(&v7[v35], 1, v77) == 1)
      {
        sub_192033970(v21, &qword_1EADF1968, &qword_19223DEC0);
        sub_192033970(v73, &qword_1EADF1968, &qword_19223DEC0);
        (*v60)(v40, v77);
        v38 = v69;
        v39 = v75;
LABEL_10:
        sub_192033970(v7, &qword_1EADF1960, &qword_19223DEB8);
        goto LABEL_12;
      }

      v41 = v58;
      v42 = &v7[v35];
      v43 = v77;
      (*v57)(v58, v42, v77);
      sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v59 = sub_192227910();
      v44 = *v60;
      v45 = v41;
      v21 = v61;
      (*v60)(v45, v43);
      sub_192033970(v21, &qword_1EADF1968, &qword_19223DEC0);
      sub_192033970(v73, &qword_1EADF1968, &qword_19223DEC0);
      v44(v64, v77);
      sub_192033970(v7, &qword_1EADF1968, &qword_19223DEC0);
      v65 |= v59;
      v38 = v69;
      v39 = v75;
LABEL_12:
      if (v39 >= v76)
      {
        (*v66)(v71, v68);
        result = v39;
        v28 = v70;
      }

      else
      {
        v46 = v62;
        v47 = v71;
        sub_192225260();
        v48 = v63;
        sub_1922251C0();
        v49 = v77;
        v33(v48, 0, 1, v77);
        v50 = *(v74 + 48);
        sub_192198B04(v46, v38);
        sub_192198B04(v48, v38 + v50);
        v28 = v70;
        if (v36(v38, 1, v49) == 1)
        {
          sub_192033970(v48, &qword_1EADF1968, &qword_19223DEC0);
          sub_192033970(v46, &qword_1EADF1968, &qword_19223DEC0);
          (*v66)(v47, v68);
          if (v36((v38 + v50), 1, v77) == 1)
          {
            sub_192033970(v38, &qword_1EADF1968, &qword_19223DEC0);
            v21 = v61;
            LODWORD(result) = v76;
LABEL_20:
            if (v65)
            {
              result = v75;
            }

            else
            {
              result = result;
            }

            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v51 = v56;
        sub_192198B04(v38, v56);
        if (v36((v38 + v50), 1, v77) == 1)
        {
          sub_192033970(v63, &qword_1EADF1968, &qword_19223DEC0);
          sub_192033970(v62, &qword_1EADF1968, &qword_19223DEC0);
          (*v66)(v71, v68);
          (*v60)(v51, v77);
LABEL_18:
          sub_192033970(v38, &qword_1EADF1960, &qword_19223DEB8);
          v21 = v61;
          result = v76;
          goto LABEL_4;
        }

        v52 = v58;
        v53 = (v38 + v50);
        v54 = v77;
        (*v57)(v58, v53, v77);
        sub_192198B74(&qword_1ED7499D0, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v59 = sub_192227910();
        v55 = *v60;
        (*v60)(v52, v54);
        sub_192033970(v63, &qword_1EADF1968, &qword_19223DEC0);
        sub_192033970(v62, &qword_1EADF1968, &qword_19223DEC0);
        (*v66)(v71, v68);
        v55(v51, v77);
        v28 = v70;
        sub_192033970(v38, &qword_1EADF1968, &qword_19223DEC0);
        v21 = v61;
        result = v76;
        if (v59)
        {
          goto LABEL_20;
        }
      }

LABEL_4:
      v29 += 16;
      v27 = result;
      --v26;
      v7 = v67;
      if (!v26)
      {
        return result;
      }
    }

    sub_192033970(v21, &qword_1EADF1968, &qword_19223DEC0);
    sub_192033970(v32, &qword_1EADF1968, &qword_19223DEC0);
    v37 = v36(&v7[v35], 1, v77);
    v38 = v69;
    v39 = v75;
    if (v37 == 1)
    {
      sub_192033970(v7, &qword_1EADF1968, &qword_19223DEC0);
      v65 = 1;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  return 0;
}