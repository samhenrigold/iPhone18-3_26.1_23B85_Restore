uint64_t sub_213D4F7A8()
{
  sub_213D90D6C();
  if (sub_213D90D4C())
  {
    return 0;
  }

  sub_213D90D7C();
  if (sub_213D90D4C())
  {
    return 1;
  }

  sub_213D90D5C();
  if ((sub_213D90D4C() & 1) == 0)
  {
    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v1 = sub_213D9046C();
    __swift_project_value_buffer(v1, qword_27C8F7330);
    v2 = sub_213D9044C();
    v3 = sub_213D91BCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_213CCA000, v2, v3, "[MapScaleView] Unsupported HorizontalAlignment provided to MapScaleView init. Falling back to leading alignment.", v4, 2u);
      MEMORY[0x21604FC60](v4, -1, -1);
    }

    return 0;
  }

  return 2;
}

uint64_t sub_213D4F8CC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_213D4FA14()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t sub_213D4FB5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapScaleView(0);
  sub_213CE2C28(v1 + *(v10 + 28), v9, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9051C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t MapScaleView.init(anchorEdge:scope:)@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  v7 = type metadata accessor for MapScaleView(0);
  v8 = v7[7];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_213D9078C();
  if (v9 == sub_213D9078C())
  {
    result = sub_213D90D6C();
  }

  else
  {
    result = sub_213D90D7C();
  }

  *(a4 + v7[9]) = result;
  v11 = a4 + v7[8];
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

uint64_t MapScaleView.init(alignment:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  v8 = type metadata accessor for MapScaleView(0);
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v8[9]) = a1;
  v11 = a4 + v8[8];
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

uint64_t MapScaleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFB0, &qword_213D991E0);
  MEMORY[0x28223BE20](v49);
  v42 = &v39 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFB8, &qword_213D991E8);
  MEMORY[0x28223BE20](v46);
  v48 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v47);
  v41 = &v39 - v4;
  v5 = type metadata accessor for MapControlsConfig(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_213D9051C();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MapScaleViewConfig(0);
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = sub_213D4FA14();
  v40 = type metadata accessor for MapScaleView(0);
  v18 = *(v1 + *(v40 + 36));
  sub_213D4FB5C(v10);
  if (v17 == 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = v16;
  v21 = v43;
  v22 = v44;
  v13[1] = v19;
  *(v13 + 1) = v18;
  (*(v8 + 32))(&v13[*(v21 + 28)], v10, v45);
  *v13 = 1;
  sub_213D50D1C(v13, v20);
  v23 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = v6[7];
  sub_213D50EA8(v20, v22 + v24, type metadata accessor for MapScaleViewConfig);
  (*(v11 + 56))(v22 + v24, 0, 1, v21);
  v25 = v6[8];
  v26 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  v27 = v6[9];
  v28 = type metadata accessor for MapCompassConfig(0);
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  *(v22 + v6[10]) = 2;
  *(v22 + v6[11]) = 2;
  *(v22 + v6[12]) = 2;
  if (sub_213D4F8CC())
  {
    v29 = sub_213D9149C();
    v30 = v41;
    sub_213D50EA8(v22, &v41[*(v47 + 36)], type metadata accessor for MapControlsConfig);
    *v30 = v29;
    v31 = &qword_27C8EA1B8;
    v32 = &qword_213D94B50;
    sub_213CE2C28(v30, v48, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v33 = type metadata accessor for _MapScaleView(0);
    v30 = v42;
    sub_213D50EA8(v20, &v42[*(v33 + 24)], type metadata accessor for MapScaleViewConfig);
    v34 = (v1 + *(v40 + 32));
    v35 = *v34;
    v36 = *(v34 + 8);
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    *(v30 + 16) = v35;
    *(v30 + 24) = v36;
    v37 = v48;
    *(v30 + *(v49 + 36)) = 257;
    v31 = &qword_27C8EBFB0;
    v32 = &qword_213D991E0;
    sub_213CE2C28(v30, v37, &qword_27C8EBFB0, &qword_213D991E0);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D50DA0();
  sub_213D90E5C();
  sub_213CD8330(v30, v31, v32);
  sub_213D50E48(v22, type metadata accessor for MapControlsConfig);
  return sub_213D50E48(v20, type metadata accessor for MapScaleViewConfig);
}

uint64_t sub_213D50534()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213D50688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D51428(&qword_27C8EC010, &unk_213D992BC);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D50708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D51428(&qword_27C8EC010, &unk_213D992BC);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D50788(uint64_t a1)
{
  sub_213D51428(&qword_27C8EC010, &unk_213D992BC);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D507CC()
{
  v1 = sub_213D9051C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_allocWithZone(MEMORY[0x277CD4F40]) init];
  if ((*(v0 + 24) & 1) == 0)
  {
    v7 = *(v0 + 16);
    v8 = v0;
    v9 = sub_213D50534();
    if (*(v9 + 16) && (v10 = sub_213CE212C(v7), (v11 & 1) != 0))
    {
      sub_213CE2A1C(*(v9 + 56) + 8 * v10, v19);

      sub_213CE2A78(v19, v20);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        [v5 setMapView_];
        v14 = v8 + *(type metadata accessor for _MapScaleView(0) + 24);
        [v5 setScaleVisibility_];
        [v5 setLegendAlignment_];
        v15 = type metadata accessor for MapScaleViewConfig(0);
        (*(v2 + 16))(v4, v14 + *(v15 + 28), v1);
        v16 = (*(v2 + 88))(v4, v1);
        v17 = 1;
        if (v16 != *MEMORY[0x277CDF418] && v16 != *MEMORY[0x277CDF438] && v16 != *MEMORY[0x277CDF440])
        {
          v17 = 2;
          if (v16 != *MEMORY[0x277CDF420] && v16 != *MEMORY[0x277CDF410])
          {
            (*(v2 + 8))(v4, v1, 2);
            v17 = 1;
          }
        }

        [v5 _setControlSize_];
      }

      sub_213CE2AD4(v20);
    }

    else
    {
    }
  }

  LODWORD(v6) = 1144750080;
  [v5 _mapkit_setContentHuggingPriority_forAxis_];
  return v5;
}

id sub_213D50A74(void *a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v1 + 24) & 1) == 0)
  {
    v8 = *(v1 + 16);
    v9 = sub_213D50534();
    if (*(v9 + 16) && (v10 = sub_213CE212C(v8), (v11 & 1) != 0))
    {
      sub_213CE2A1C(*(v9 + 56) + 8 * v10, v21);

      sub_213CE2A78(v21, v22);
      Strong = swift_unknownObjectWeakLoadStrong();
      [a1 setMapView_];

      sub_213CE2AD4(v22);
    }

    else
    {
    }
  }

  v13 = v2 + *(type metadata accessor for _MapScaleView(0) + 24);
  [a1 setScaleVisibility_];
  [a1 setLegendAlignment_];
  v14 = type metadata accessor for MapScaleViewConfig(0);
  (*(v5 + 16))(v7, v13 + *(v14 + 28), v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 == *MEMORY[0x277CDF418] || v15 == *MEMORY[0x277CDF438] || v15 == *MEMORY[0x277CDF440])
  {
    goto LABEL_19;
  }

  if (v15 != *MEMORY[0x277CDF420] && v15 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v7, v4);
LABEL_19:
    v19 = 1;
    return [a1 _setControlSize_];
  }

  v19 = 2;
  return [a1 _setControlSize_];
}

uint64_t sub_213D50D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D50DA0()
{
  result = qword_27C8EBFC0;
  if (!qword_27C8EBFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBFB0, &qword_213D991E0);
    sub_213D51428(&qword_27C8EBFC8, &unk_213D9934C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFC0);
  }

  return result;
}

uint64_t sub_213D50E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D50EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D50F54(uint64_t a1)
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213D51094(319);
      if (v3 <= 0x3F)
      {
        sub_213D510F8(319);
        if (v4 <= 0x3F)
        {
          sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D51094(uint64_t a1)
{
  if (!qword_27C8EA220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE20, &qword_213D98750);
    v1 = sub_213D9052C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EA220);
    }
  }
}

void sub_213D510F8(uint64_t a1)
{
  if (!qword_27C8EC520)
  {
    sub_213D9051C();
    v1 = sub_213D9052C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EC520);
    }
  }
}

void sub_213D51150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_213D511A0()
{
  result = qword_27C8EBFE0;
  if (!qword_27C8EBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBFE8, &qword_213D99268);
    sub_213CE189C();
    sub_213D50DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFE0);
  }

  return result;
}

void sub_213D51254(uint64_t a1)
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MapScaleViewConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D51360(uint64_t a1)
{
  result = sub_213D9051C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D51428(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapScaleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D5146C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_213D904DC() & 1) == 0 || (sub_213D90D4C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MapScaleViewConfig(0);

  return sub_213D9050C();
}

uint64_t sub_213D514F4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_213CDF810(v4, *(a2 + 16));
  if (*(*(a3 - 8) + 64))
  {
    a1(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

  return sub_213CDF770(OffsetAttribute2, a4);
}

uint64_t sub_213D5159C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LookAroundPreview(0);
  sub_213D51CDC(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D909AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LookAroundPreview.init(initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:badgePosition:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = *(type metadata accessor for LookAroundPreview(0) + 36);
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  result = swift_storeEnumTagMultiPayload();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 24) = a2;
  *(a6 + 25) = a3;
  *(a6 + 32) = v12;
  *(a6 + 40) = v13;
  *(a6 + 48) = a5;
  return result;
}

uint64_t type metadata accessor for LookAroundPreview(uint64_t a1)
{
  result = qword_27C8EC028;
  if (!qword_27C8EC028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LookAroundPreview.init(scene:allowsNavigation:showsRoadLabels:pointsOfInterest:badgePosition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = *(type metadata accessor for LookAroundPreview(0) + 36);
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  result = swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2 | 0x8000000000000000;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = a7;
  return result;
}

uint64_t LookAroundPreview.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D909AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(v1 + 8);
  v19 = *v1;
  v11 = *(v1 + 16);
  sub_213D51AE4(v19, v10, v11);
  sub_213D5159C(v9);
  sub_213D9098C();
  v12 = sub_213D9099C();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  v14 = *(v1 + 24);
  v15 = *(v1 + 25);
  v16 = *(v1 + 32);
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12 & 1;
  *(a1 + 25) = v14;
  *(a1 + 26) = v15;
  *(a1 + 40) = *(v1 + 40);
  *(a1 + 32) = v16;
}

id sub_213D51AE4(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v5 = a3;
  }

  else
  {

    return a1;
  }
}

void sub_213D51B88(uint64_t a1)
{
  type metadata accessor for MKLookAroundBadgePosition(319);
  if (v1 <= 0x3F)
  {
    sub_213D51C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D51C30(uint64_t a1)
{
  if (!qword_27C8EC038)
  {
    sub_213D909AC();
    v1 = sub_213D9052C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EC038);
    }
  }
}

unint64_t sub_213D51C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC150;
  if (!qword_27C8EC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC150);
  }

  return result;
}

uint64_t sub_213D51CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapFeature.title.getter()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_213D9193C();

  return v3;
}

id MapFeature.kind.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 featureType];
  if (result >= 3)
  {
    result = sub_213D91E9C();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_213D51EB4(SEL *a1, uint64_t (*a2)(id))
{
  result = [*v2 iconStyle];
  if (result)
  {
    v6 = result;
    v7 = [result *a1];

    if (v7)
    {
      return a2(v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id MapFeature.pointOfInterestCategory.getter()
{
  v1 = [*v0 pointOfInterestCategory];

  return v1;
}

uint64_t MapFeature.hashValue.getter()
{
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t sub_213D52020()
{
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t sub_213D52088(uint64_t a1)
{
  sub_213D91FBC();
  sub_213D91C6C();
  return sub_213D91FFC();
}

uint64_t MapFeature.FeatureKind.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x49664F746E696F70;
  }

  if (v1 == 2)
  {
    return 0x6C61636973796870;
  }

  if (v1 == 1)
  {
    return 0x726F746972726574;
  }

  result = sub_213D91E9C();
  __break(1u);
  return result;
}

uint64_t sub_213D521C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D52540(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

double View.mapFeatureSelectionContent<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  sub_213D9130C();

  return result;
}

double sub_213D522DC@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D52540(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_213D5232C(uint64_t *a1)
{
  v1 = sub_213D4CEC4(*a1, a1[1]);
  sub_213D52540(v1, v2, v3);
  return sub_213D90C2C();
}

uint64_t sub_213D52380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  v7 = *a1;
  a2[3] = v3;
  a2[4] = v4;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v5(&v7);
}

unint64_t sub_213D523D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC040;
  if (!qword_27C8EC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyMapContent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnyMapContent(uint64_t result, int a2, int a3)
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

unint64_t sub_213D524DC()
{
  result = qword_27C8EC050;
  if (!qword_27C8EC050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC048, &unk_213D995C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC050);
  }

  return result;
}

unint64_t sub_213D52540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC058;
  if (!qword_27C8EC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC058);
  }

  return result;
}

uint64_t Array<A>.selectedOption(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v57 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for MapStylePicker.Option(0);
  v42 = *(v5 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    return (*(v42 + 56))(v34, 1, 1, v5, v6);
  }

  v10 = *(a1 + 88);
  v37 = *(a1 + 104);
  v38 = v10;
  v36 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 16);
  v13 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  if (*(a1 + 64) == 1)
  {
    v14 = *(a1 + 48);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v42 + 72);
  v35 = v11 & 1;
  for (i = v9 - 1; ; --i)
  {
    sub_213D59C48(v13, v8, type metadata accessor for MapStylePicker.Option);
    v17 = &v8[*(v5 + 24)];
    v18 = *(v17 + 7);
    v55[6] = *(v17 + 6);
    v55[7] = v18;
    v55[8] = *(v17 + 8);
    v56 = *(v17 + 72);
    v19 = *(v17 + 3);
    v55[2] = *(v17 + 2);
    v55[3] = v19;
    v20 = *(v17 + 5);
    v55[4] = *(v17 + 4);
    v55[5] = v20;
    v21 = *(v17 + 1);
    v55[0] = *v17;
    v55[1] = v21;
    v22 = sub_213D52C38(v55);
    v23 = sub_213CD1094(v55);
    if (v22)
    {
      break;
    }

    if (v12 != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    sub_213D52C44(v8);
    if (!i)
    {
      return (*(v42 + 56))(v34, 1, 1, v5, v6);
    }

    v13 += v15;
  }

  if (v22 == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v24 = *(v23 + 48);
  v25 = *(v23 + 56);
  v26 = *(v23 + 72);
  v27 = *(v23 + 88);
  v28 = *(v23 + 104);
  v29 = *(v23 + 16);
  v30 = *(v23 + 32);
  v51 = *v23;
  v52 = v29;
  v53 = v30;
  v54 = v24;
  if (v11 == 2)
  {
    goto LABEL_16;
  }

  v39 = v27;
  v40 = v26;
  v41 = v25;
  v47 = v38;
  v48 = v37;
  v49 = v36;
  v50 = v35;
  if ((_MKCartographicConfigurationEquals() & 1) == 0)
  {
    if (v28 == 2)
    {
      goto LABEL_16;
    }

    v43 = v41;
    v44 = v40;
    v45 = v39;
    v46 = v28 & 1;
    if ((_MKCartographicConfigurationEquals() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  v32 = v34;
  sub_213D59BE0(v8, v34, type metadata accessor for MapStylePicker.Option);
  return (*(v42 + 56))(v32, 0, 1, v5, v33);
}

BOOL static MapStylePicker.labelsToggleState(style:option:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CE2C28(a2, v6, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213CD8330(v6, &qword_27C8EA2C0, &qword_213D95000);
    return 1;
  }

  sub_213D59BE0(v6, v10, type metadata accessor for MapStylePicker.Option);
  if (v10[*(v7 + 32)] != 1)
  {
    sub_213D52C44(v10);
    return 1;
  }

  v11 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v11;
  v17[8] = *(a1 + 128);
  v18 = *(a1 + 144);
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v13 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  v15 = sub_213D5404C();
  sub_213D52C44(v10);
  return v15;
}

uint64_t MapStylePicker.Option.matches(_:)(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 136);
  v6 = v1 + *(type metadata accessor for MapStylePicker.Option(0) + 24);
  v7 = *(v6 + 112);
  v15[6] = *(v6 + 96);
  v15[7] = v7;
  v15[8] = *(v6 + 128);
  v16 = *(v6 + 144);
  v8 = *(v6 + 48);
  v15[2] = *(v6 + 32);
  v15[3] = v8;
  v9 = *(v6 + 80);
  v15[4] = *(v6 + 64);
  v15[5] = v9;
  v10 = *(v6 + 16);
  v15[0] = *v6;
  v15[1] = v10;
  v11 = sub_213D52C38(v15);
  v12 = sub_213CD1094(v15);
  if (!v11)
  {
    return v2 != 1;
  }

  if (v11 == 1)
  {
    if (v4 == 1)
    {
      return v3 ^ 1u;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v14 = *(v12 + 104);
    if (v5 == 2)
    {
      return 0;
    }

    if (_MKCartographicConfigurationEquals())
    {
      return 1;
    }

    if (v14 == 2)
    {
      return 0;
    }

    return _MKCartographicConfigurationEquals();
  }
}

uint64_t sub_213D52C44(uint64_t a1)
{
  v2 = type metadata accessor for MapStylePicker.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double MapStylePicker.Option.style(trafficToggleValue:labelsToggleValue:)@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = a2 | ~*(v3 + *(v7 + 32));
  v9 = *(v3 + *(v7 + 28)) & a1 & 1;

  return sub_213D55054(v9, v8 & 1, a3);
}

uint64_t MapStylePicker.Option.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D902AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MapStylePicker.Option.title.setter(uint64_t a1)
{
  v3 = sub_213D902AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MapStylePicker.Option.Thumbnail.hashValue.getter()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t MapStylePicker.Option.thumbnail.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MapStylePicker.Option(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MapStylePicker.Option.thumbnail.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapStylePicker.Option(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_213D5300C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_213D9033C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_213D9029C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D918FC();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_213D902AC();
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27C8E9770);
  (*(v7 + 16))(v9, v12, v6);
  sub_213D9032C();
  return sub_213D902BC();
}

uint64_t sub_213D53258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_213D902AC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double MapStylePicker.init(options:mapView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_213D58F40(v12);
  v6 = v12[6];
  *(a3 + 120) = v12[7];
  v7 = v12[9];
  *(a3 + 136) = v12[8];
  *(a3 + 152) = v7;
  v8 = v12[2];
  *(a3 + 56) = v12[3];
  v9 = v12[5];
  *(a3 + 72) = v12[4];
  *(a3 + 88) = v9;
  *(a3 + 104) = v6;
  result = *v12;
  v11 = v12[1];
  *(a3 + 8) = v12[0];
  *(a3 + 24) = v11;
  *(a3 + 168) = v13;
  *(a3 + 40) = v8;
  *(a3 + 176) = 0;
  *(a3 + 184) = 1;
  *a3 = a1;
  *(a3 + 192) = a2;
  return result;
}

double MapStylePicker.init(options:style:scope:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_213D58F40(v29);
  v8 = v29[6];
  *(a4 + 120) = v29[7];
  v9 = v29[9];
  *(a4 + 136) = v29[8];
  *(a4 + 152) = v9;
  v10 = v29[2];
  *(a4 + 56) = v29[3];
  v11 = v29[5];
  *(a4 + 72) = v29[4];
  *(a4 + 88) = v11;
  *(a4 + 104) = v8;
  v12 = v29[1];
  *(a4 + 8) = v29[0];
  *(a4 + 168) = v30;
  *(a4 + 24) = v12;
  *(a4 + 40) = v10;
  *(a4 + 192) = 0;
  *a4 = a1;
  v13 = a2[9];
  v39 = a2[8];
  v40 = v13;
  v41 = *(a2 + 80);
  v14 = a2[5];
  v35 = a2[4];
  v36 = v14;
  v15 = a2[7];
  v37 = a2[6];
  v38 = v15;
  v16 = a2[1];
  v31 = *a2;
  v32 = v16;
  v17 = a2[3];
  v33 = a2[2];
  v34 = v17;
  nullsub_2();
  v18 = *(a4 + 120);
  v19 = *(a4 + 152);
  v42[8] = *(a4 + 136);
  v42[9] = v19;
  v43 = *(a4 + 168);
  v20 = *(a4 + 56);
  v21 = *(a4 + 88);
  v42[4] = *(a4 + 72);
  v42[5] = v21;
  v42[6] = *(a4 + 104);
  v42[7] = v18;
  v22 = *(a4 + 24);
  v42[0] = *(a4 + 8);
  v42[1] = v22;
  v42[2] = *(a4 + 40);
  v42[3] = v20;
  sub_213CD8330(v42, &qword_27C8EC090, &qword_213D99648);
  v23 = v37;
  *(a4 + 120) = v38;
  v24 = v40;
  *(a4 + 136) = v39;
  *(a4 + 152) = v24;
  v25 = v33;
  *(a4 + 56) = v34;
  v26 = v36;
  *(a4 + 72) = v35;
  *(a4 + 88) = v26;
  *(a4 + 104) = v23;
  result = *&v31;
  v28 = v32;
  *(a4 + 8) = v31;
  *(a4 + 24) = v28;
  *(a4 + 168) = v41;
  *(a4 + 40) = v25;
  *(a4 + 176) = a3;
  *(a4 + 184) = 0;
  return result;
}

void MapStylePicker.body.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v5;
  v15 = *(v1 + 168);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v7;
  v14[6] = *(v1 + 104);
  v14[7] = v4;
  v8 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v8;
  v14[2] = *(v1 + 40);
  v14[3] = v6;
  v9 = *(v1 + 176);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);

  sub_213CE2C28(v14, v13, &qword_27C8EC090, &qword_213D99648);
  v12 = v11;
  sub_213D53600(v3, v14, v9, v10, v11, a1);
}

void sub_213D53600(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v54 = a1;
  v50 = a4;
  v49 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v52 = type metadata accessor for MapStylePickerView(0);
  sub_213D58F40(v80);
  v14 = v80[6];
  *(a6 + 120) = v80[7];
  v15 = v80[9];
  *(a6 + 136) = v80[8];
  *(a6 + 152) = v15;
  v16 = v80[2];
  *(a6 + 56) = v80[3];
  v17 = v80[5];
  *(a6 + 72) = v80[4];
  *(a6 + 88) = v17;
  *(a6 + 104) = v14;
  v18 = v80[1];
  *(a6 + 8) = v80[0];
  *(a6 + 24) = v18;
  *(a6 + 168) = v81;
  *(a6 + 40) = v16;
  *(a6 + 176) = 0;
  *(a6 + 184) = 1;
  *(a6 + 192) = swift_getKeyPath();
  *(a6 + 200) = 0;
  *&v67[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A8, qword_213D998B8);
  sub_213D9156C();
  v19 = *(&v69 + 1);
  v51 = v69;
  *(a6 + 208) = v69;
  *(a6 + 216) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0C8, &qword_213D99920);
  v21 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_213CE2C28(v13, v10, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213D9156C();
  v22 = v53;
  sub_213CD8330(v13, &qword_27C8EA2A0, &qword_213D94F50);
  *a6 = v54;
  *(a6 + *(v20 + 56)) = v52;
  if (v22)
  {
    sub_213CD8330(a2, &qword_27C8EC090, &qword_213D99648);
    v23 = type metadata accessor for CocoaMapConfigurationObserver(0);
    v24 = objc_allocWithZone(v23);
    swift_unknownObjectWeakInit();
    v25 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
    *&v24[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration] = 0;
    *&v24[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = 0;
    sub_213D9039C();
    swift_unknownObjectWeakAssign();
    v26 = [v22 preferredConfiguration];

    *&v24[v25] = v26;
    v55.receiver = v24;
    v55.super_class = v23;
    v27 = objc_msgSendSuper2(&v55, sel_init);
    *&v69 = v22;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v27;
    v29 = sub_213D902CC();

    v30 = *&v28[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation];
    *&v28[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = v29;

    *(a6 + 208) = v27;
    *(a6 + 216) = 0;
    return;
  }

  v31 = v50;
  v32 = v49;
  v33 = a2[9];
  v77 = a2[8];
  v78 = v33;
  v79 = *(a2 + 80);
  v34 = a2[5];
  v73 = a2[4];
  v74 = v34;
  v35 = a2[7];
  v75 = a2[6];
  v76 = v35;
  v36 = a2[1];
  v69 = *a2;
  v70 = v36;
  v37 = a2[3];
  v71 = a2[2];
  v72 = v37;
  if (get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v69) == 1)
  {
    goto LABEL_8;
  }

  if (v31)
  {
    sub_213CD8330(a2, &qword_27C8EC090, &qword_213D99648);
LABEL_8:
    __break(1u);
    return;
  }

  v64 = v77;
  v65 = v78;
  v66 = v79;
  v60 = v73;
  v61 = v74;
  v62 = v75;
  v63 = v76;
  v56 = v69;
  v57 = v70;
  v58 = v71;
  v59 = v72;
  nullsub_2();
  v38 = *(a6 + 120);
  v39 = *(a6 + 152);
  v67[8] = *(a6 + 136);
  v67[9] = v39;
  v68 = *(a6 + 168);
  v40 = *(a6 + 56);
  v41 = *(a6 + 88);
  v67[4] = *(a6 + 72);
  v67[5] = v41;
  v67[6] = *(a6 + 104);
  v67[7] = v38;
  v42 = *(a6 + 24);
  v67[0] = *(a6 + 8);
  v67[1] = v42;
  v67[2] = *(a6 + 40);
  v67[3] = v40;
  sub_213CD8330(v67, &qword_27C8EC090, &qword_213D99648);
  v43 = v62;
  *(a6 + 120) = v63;
  v44 = v65;
  *(a6 + 136) = v64;
  *(a6 + 152) = v44;
  v45 = v58;
  *(a6 + 56) = v59;
  v46 = v61;
  *(a6 + 72) = v60;
  *(a6 + 88) = v46;
  *(a6 + 104) = v43;
  v47 = v57;
  *(a6 + 8) = v56;
  *(a6 + 24) = v47;
  *(a6 + 168) = v66;
  *(a6 + 40) = v45;
  *(a6 + 176) = v32;
  *(a6 + 184) = 0;
}

void sub_213D53AE8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a4;
  v54 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  v19 = a2[9];
  v89 = a2[8];
  v90 = v19;
  v91 = *(a2 + 80);
  v20 = a2[5];
  v85 = a2[4];
  v86 = v20;
  v21 = a2[7];
  v87 = a2[6];
  v88 = v21;
  v22 = a2[1];
  v81 = *a2;
  v82 = v22;
  v23 = a2[3];
  v83 = a2[2];
  v84 = v23;
  sub_213D58F40(v92);
  v24 = v92[6];
  *(a9 + 120) = v92[7];
  v25 = v92[9];
  *(a9 + 136) = v92[8];
  *(a9 + 152) = v25;
  v26 = v92[2];
  *(a9 + 56) = v92[3];
  v27 = v92[5];
  *(a9 + 72) = v92[4];
  *(a9 + 88) = v27;
  *(a9 + 104) = v24;
  v28 = v92[1];
  *(a9 + 8) = v92[0];
  *(a9 + 24) = v28;
  *(a9 + 168) = v93;
  *(a9 + 40) = v26;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 192) = swift_getKeyPath();
  *(a9 + 200) = 0;
  v29 = sub_213D56F4C(0);
  *(a9 + 208) = v29;
  *(a9 + 216) = v30;
  v32 = type metadata accessor for _MapStylePicker(0, a7, a8, v31);
  v33 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
  sub_213D56FE4(v18);
  *a9 = a1;
  *(a9 + *(v32 + 56)) = a6;
  if (a5)
  {
    sub_213CD8330(&v81, &qword_27C8EC090, &qword_213D99648);
    v34 = type metadata accessor for CocoaMapConfigurationObserver(0);
    v35 = objc_allocWithZone(v34);
    swift_unknownObjectWeakInit();
    v36 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
    *&v35[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration] = 0;
    *&v35[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = 0;
    sub_213D9039C();
    swift_unknownObjectWeakAssign();
    v37 = [a5 preferredConfiguration];

    *&v35[v36] = v37;
    v56.receiver = v35;
    v56.super_class = v34;
    v38 = objc_msgSendSuper2(&v56, sel_init);
    *&v70 = a5;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = v38;
    v40 = sub_213D902CC();

    v41 = *&v39[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation];
    *&v39[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver_observation] = v40;

    *(a9 + 208) = v38;
    *(a9 + 216) = 0;
    return;
  }

  v42 = v55;
  v43 = v54;
  v78 = v89;
  v79 = v90;
  v80 = v91;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v70 = v81;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  if (get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v70) == 1)
  {
    goto LABEL_8;
  }

  if (v42)
  {
    sub_213CD8330(&v81, &qword_27C8EC090, &qword_213D99648);
LABEL_8:
    __break(1u);
    return;
  }

  v65 = v78;
  v66 = v79;
  v67 = v80;
  v61 = v74;
  v62 = v75;
  v63 = v76;
  v64 = v77;
  v57 = v70;
  v58 = v71;
  v59 = v72;
  v60 = v73;
  nullsub_2();
  v44 = *(a9 + 120);
  v45 = *(a9 + 152);
  v68[8] = *(a9 + 136);
  v68[9] = v45;
  v69 = *(a9 + 168);
  v46 = *(a9 + 56);
  v47 = *(a9 + 88);
  v68[4] = *(a9 + 72);
  v68[5] = v47;
  v68[6] = *(a9 + 104);
  v68[7] = v44;
  v48 = *(a9 + 24);
  v68[0] = *(a9 + 8);
  v68[1] = v48;
  v68[2] = *(a9 + 40);
  v68[3] = v46;
  sub_213CD8330(v68, &qword_27C8EC090, &qword_213D99648);
  v49 = v63;
  *(a9 + 120) = v64;
  v50 = v66;
  *(a9 + 136) = v65;
  *(a9 + 152) = v50;
  v51 = v59;
  *(a9 + 56) = v60;
  v52 = v62;
  *(a9 + 72) = v61;
  *(a9 + 88) = v52;
  *(a9 + 104) = v49;
  v53 = v58;
  *(a9 + 8) = v57;
  *(a9 + 24) = v53;
  *(a9 + 168) = v67;
  *(a9 + 40) = v51;
  *(a9 + 176) = v43;
  *(a9 + 184) = 0;
}

void sub_213D53F78(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v5;
  v15 = *(v1 + 168);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v7;
  v14[6] = *(v1 + 104);
  v14[7] = v4;
  v8 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v8;
  v14[2] = *(v1 + 40);
  v14[3] = v6;
  v9 = *(v1 + 176);
  v10 = *(v1 + 184);
  v11 = *(v1 + 192);

  sub_213CE2C28(v14, v13, &qword_27C8EC090, &qword_213D99648);
  v12 = v11;
  sub_213D53600(v3, v14, v9, v10, v11, a1);
}

BOOL sub_213D5404C()
{
  v1 = v0[7];
  v15 = v0[6];
  v16 = v1;
  v17 = v0[8];
  v18 = *(v0 + 72);
  v2 = v0[3];
  v11 = v0[2];
  v12 = v2;
  v3 = v0[5];
  v13 = v0[4];
  v14 = v3;
  v4 = v0[1];
  v9 = *v0;
  v10 = v4;
  v5.super.isa = MapStyle.configuration()().super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {

    return 1;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
    {

      return 0;
    }

    else
    {
      [v7 cartographicConfiguration];
      v8 = v9;

      return v8 != 1 || *(&v8 + 1) != 0;
    }
  }
}

double MapStylePicker.init(options:dismissAction:mapView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_213CCE520(a2, a3);
  sub_213D58F40(v14);
  v8 = v14[6];
  *(a5 + 120) = v14[7];
  v9 = v14[9];
  *(a5 + 136) = v14[8];
  *(a5 + 152) = v9;
  v10 = v14[2];
  *(a5 + 56) = v14[3];
  v11 = v14[5];
  *(a5 + 72) = v14[4];
  *(a5 + 88) = v11;
  *(a5 + 104) = v8;
  result = *v14;
  v13 = v14[1];
  *(a5 + 8) = v14[0];
  *(a5 + 24) = v13;
  *a5 = a1;
  *(a5 + 168) = v15;
  *(a5 + 40) = v10;
  *(a5 + 176) = 0;
  *(a5 + 184) = 1;
  *(a5 + 192) = a4;
  return result;
}

double MapStylePicker.init(options:dismissAction:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_213CCE520(a2, a3);
  sub_213D58F40(v29);
  v8 = v29[6];
  *(a5 + 120) = v29[7];
  v9 = v29[9];
  *(a5 + 136) = v29[8];
  *(a5 + 152) = v9;
  v10 = v29[2];
  *(a5 + 56) = v29[3];
  v11 = v29[5];
  *(a5 + 72) = v29[4];
  *(a5 + 88) = v11;
  *(a5 + 104) = v8;
  v12 = v29[1];
  *(a5 + 8) = v29[0];
  *(a5 + 168) = v30;
  *(a5 + 24) = v12;
  *(a5 + 40) = v10;
  *(a5 + 176) = 0;
  *(a5 + 184) = 1;
  *(a5 + 192) = 0;
  *a5 = a1;
  v13 = a4[9];
  v39 = a4[8];
  v40 = v13;
  v41 = *(a4 + 80);
  v14 = a4[5];
  v35 = a4[4];
  v36 = v14;
  v15 = a4[7];
  v37 = a4[6];
  v38 = v15;
  v16 = a4[1];
  v31 = *a4;
  v32 = v16;
  v17 = a4[3];
  v33 = a4[2];
  v34 = v17;
  nullsub_2();
  v18 = *(a5 + 120);
  v19 = *(a5 + 152);
  v42[8] = *(a5 + 136);
  v42[9] = v19;
  v43 = *(a5 + 168);
  v20 = *(a5 + 56);
  v21 = *(a5 + 88);
  v42[4] = *(a5 + 72);
  v42[5] = v21;
  v42[6] = *(a5 + 104);
  v42[7] = v18;
  v22 = *(a5 + 24);
  v42[0] = *(a5 + 8);
  v42[1] = v22;
  v42[2] = *(a5 + 40);
  v42[3] = v20;
  sub_213CD8330(v42, &qword_27C8EC090, &qword_213D99648);
  v23 = v37;
  *(a5 + 120) = v38;
  v24 = v40;
  *(a5 + 136) = v39;
  *(a5 + 152) = v24;
  v25 = v33;
  *(a5 + 56) = v34;
  v26 = v36;
  *(a5 + 72) = v35;
  *(a5 + 88) = v26;
  *(a5 + 104) = v23;
  result = *&v31;
  v28 = v32;
  *(a5 + 8) = v31;
  *(a5 + 24) = v28;
  *(a5 + 168) = v41;
  *(a5 + 40) = v25;
  return result;
}

__n128 sub_213D543C0()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v6, qword_27C8EC060);
  v7 = __swift_project_value_buffer(v6, qword_27C8EC060);
  v17[16] = 1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v8, v1);
  sub_213D9032C();
  sub_213D902BC();
  v21 = 0uLL;
  *&v22 = 0;
  *(&v22 + 1) = MEMORY[0x277D84F90];
  LOWORD(v23) = 0;
  *(&v23 + 2) = *&v19[7];
  WORD3(v23) = v20;
  *(&v23 + 1) = 0;
  v24[0] = 1;
  *&v24[1] = *v19;
  *&v24[4] = *&v19[3];
  *&v24[8] = xmmword_213D99630;
  *&v24[24] = 0;
  v25[0] = 0;
  *&v25[1] = *v18;
  *&v25[4] = *&v18[3];
  memset(&v25[8], 0, 48);
  *&v25[56] = 2;
  v26 = 0;
  sub_213D58F60(&v21);
  *(v7 + v6[5]) = 0;
  v9 = v7 + v6[6];
  v10 = v22;
  *v9 = v21;
  *(v9 + 16) = v10;
  v11 = v23;
  v12 = *v24;
  v13 = *v25;
  *(v9 + 64) = *&v24[16];
  *(v9 + 80) = v13;
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  result = *&v25[16];
  v15 = *&v25[32];
  v16 = *&v25[48];
  *(v9 + 144) = v26;
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  *(v9 + 96) = result;
  *(v7 + v6[7]) = 0;
  *(v7 + v6[8]) = 0;
  *(v7 + v6[9]) = 2;
  return result;
}

uint64_t static MapStylePicker.Option.standard(style:showTrafficToggle:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_213D9033C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_213D9029C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D918FC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = a1[7];
  v32 = a1[6];
  v33 = v12;
  v34 = a1[8];
  v35 = *(a1 + 72);
  v13 = a1[3];
  v28 = a1[2];
  v29 = v13;
  v14 = a1[5];
  v30 = a1[4];
  v31 = v14;
  v15 = a1[1];
  v26 = *a1;
  v27 = v15;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_27C8E9770);
  (*(v8 + 16))(v10, v16, v7);
  sub_213D9032C();
  sub_213D902BC();
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v36 = v26;
  v37 = v27;
  sub_213D58F60(&v36);
  v17 = type metadata accessor for MapStylePicker.Option(0);
  *(a3 + v17[5]) = 0;
  v18 = a3 + v17[6];
  v19 = v43;
  *(v18 + 96) = v42;
  *(v18 + 112) = v19;
  *(v18 + 128) = v44;
  *(v18 + 144) = v45;
  v20 = v39;
  *(v18 + 32) = v38;
  *(v18 + 48) = v20;
  v21 = v41;
  *(v18 + 64) = v40;
  *(v18 + 80) = v21;
  v22 = v37;
  *v18 = v36;
  *(v18 + 16) = v22;
  *(a3 + v17[7]) = a2 & 1;
  *(a3 + v17[8]) = 0;
  *(a3 + v17[9]) = 2;
  return sub_213D1E0AC(&v26, &v25);
}

__n128 sub_213D549FC()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v6, qword_27C8EC078);
  v7 = __swift_project_value_buffer(v6, qword_27C8EC078);
  v17[16] = 1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v8, v1);
  sub_213D9032C();
  sub_213D902BC();
  v21 = 0uLL;
  v22 = xmmword_213D98BB0;
  LOWORD(v23) = 0;
  *(&v23 + 2) = *&v19[7];
  WORD3(v23) = v20;
  *(&v23 + 1) = 0;
  LOBYTE(v24) = 1;
  *(&v24 + 1) = *v19;
  DWORD1(v24) = *&v19[3];
  *(&v24 + 1) = 0;
  *&v25 = 0;
  *(&v25 + 1) = MEMORY[0x277D84F90];
  v26[0] = 0;
  *&v26[1] = *v18;
  *&v26[4] = *&v18[3];
  memset(&v26[8], 0, 48);
  *&v26[56] = 2;
  v27 = 0;
  sub_213D58F70(&v21);
  *(v7 + v6[5]) = 3;
  v9 = v7 + v6[6];
  v10 = v22;
  *v9 = v21;
  *(v9 + 16) = v10;
  v11 = v23;
  v12 = v24;
  v13 = *v26;
  *(v9 + 64) = v25;
  *(v9 + 80) = v13;
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  result = *&v26[16];
  v15 = *&v26[32];
  v16 = *&v26[48];
  *(v9 + 144) = v27;
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  *(v9 + 96) = result;
  *(v7 + v6[7]) = 0;
  *(v7 + v6[8]) = 0;
  *(v7 + v6[9]) = 2;
  return result;
}

uint64_t static MapStylePicker.Option.satellite(style:showTrafficToggle:showLabelsToggle:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v25) = a3;
  v7 = sub_213D9033C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_213D9029C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D918FC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = a1[7];
  v33 = a1[6];
  v34 = v13;
  v35 = a1[8];
  v36 = *(a1 + 72);
  v14 = a1[3];
  v29 = a1[2];
  v30 = v14;
  v15 = a1[5];
  v31 = a1[4];
  v32 = v15;
  v16 = a1[1];
  v27 = *a1;
  v28 = v16;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v8, qword_27C8E9770);
  (*(v9 + 16))(v11, v17, v8);
  sub_213D9032C();
  sub_213D902BC();
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v37 = v27;
  v38 = v28;
  sub_213D58F70(&v37);
  v18 = type metadata accessor for MapStylePicker.Option(0);
  *(a4 + v18[5]) = 3;
  v19 = a4 + v18[6];
  v20 = v44;
  *(v19 + 96) = v43;
  *(v19 + 112) = v20;
  *(v19 + 128) = v45;
  *(v19 + 144) = v46;
  v21 = v40;
  *(v19 + 32) = v39;
  *(v19 + 48) = v21;
  v22 = v42;
  *(v19 + 64) = v41;
  *(v19 + 80) = v22;
  v23 = v38;
  *v19 = v37;
  *(v19 + 16) = v23;
  *(a4 + v18[7]) = a2 & 1;
  *(a4 + v18[8]) = BYTE4(v25) & 1;
  *(a4 + v18[9]) = 2;
  return sub_213D1E0AC(&v27, &v26);
}

double sub_213D55054@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MapStylePicker.Option(0);
  if (*(v3 + *(v7 + 36)) == 2)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(v3 + *(v7 + 36));
  }

  v9 = v3 + *(v7 + 24);
  v10 = *(v9 + 112);
  v44[6] = *(v9 + 96);
  v44[7] = v10;
  v44[8] = *(v9 + 128);
  v45 = *(v9 + 144);
  v11 = *(v9 + 48);
  v44[2] = *(v9 + 32);
  v44[3] = v11;
  v12 = *(v9 + 80);
  v44[4] = *(v9 + 64);
  v44[5] = v12;
  v13 = *(v9 + 16);
  v44[0] = *v9;
  v44[1] = v13;
  v14 = sub_213D52C38(v44);
  v15 = sub_213CD1094(v44);
  if (!v14)
  {
    v20 = *(v15 + 16);
    if (v20 != 1)
    {
      v36 = *(v15 + 24);
      v38 = *v15;
      v37 = *(v15 + 8);
      v39 = *(v15 + 32);
      *a3 = *v15;
      *(a3 + 8) = v37;
      *(a3 + 16) = v20;
      *(a3 + 24) = v36;
      *(a3 + 32) = v39 & 0x100 | v8 & 1;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 56) = xmmword_213D99630;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 136) = 2;
      *(a3 + 144) = 0;
      sub_213D59E60(v38, v37, v20, v36);
      return *&v19;
    }

    goto LABEL_10;
  }

  if (v14 != 1)
  {
    v33 = *(v15 + 48);
    v19 = *v15;
    v34 = *(v15 + 16);
    v35 = *(v15 + 32);
    if ((a2 & 1) == 0)
    {
      if (*(v15 + 104) == 2)
      {
LABEL_15:
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = xmmword_213D98BB0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 1;
        *(a3 + 56) = xmmword_213D99630;
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = v19;
        *(a3 + 104) = v34;
        *(a3 + 120) = v35;
        *(a3 + 136) = v33;
        *(a3 + 144) = v8 & 1;
        *(a3 + 145) = 1;
        return *&v19;
      }

      v19 = *(v15 + 56);
      v34 = *(v15 + 72);
      v33 = *(v15 + 104);
      v35 = *(v15 + 88);
    }

    v33 &= 1u;
    goto LABEL_15;
  }

  v16 = *(v15 + 64);
  if (v16 == 1)
  {
LABEL_10:
    v21 = *(v15 + 16);
    *a3 = *v15;
    *(a3 + 16) = v21;
    v22 = *(v15 + 32);
    v23 = *(v15 + 48);
    v24 = *(v15 + 80);
    *(a3 + 64) = *(v15 + 64);
    *(a3 + 80) = v24;
    *(a3 + 32) = v22;
    *(a3 + 48) = v23;
    v25 = *(v15 + 96);
    v26 = *(v15 + 112);
    v27 = *(v15 + 128);
    *(a3 + 144) = *(v15 + 144);
    *(a3 + 112) = v26;
    *(a3 + 128) = v27;
    *(a3 + 96) = v25;
    v28 = *(v9 + 16);
    v42[0] = *v9;
    v42[1] = v28;
    v29 = *(v9 + 80);
    v42[4] = *(v9 + 64);
    v42[5] = v29;
    v30 = *(v9 + 48);
    v42[2] = *(v9 + 32);
    v42[3] = v30;
    v43 = *(v9 + 144);
    v31 = *(v9 + 128);
    v42[7] = *(v9 + 112);
    v42[8] = v31;
    v42[6] = *(v9 + 96);
    v32 = sub_213CD1094(v42);
    sub_213D1E0AC(v32, v41);
    return *&v19;
  }

  v17 = *(v15 + 56);
  v18 = *(v15 + 72);
  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = xmmword_213D98BB0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 1;
    *(a3 + 56) = v17;
    *(a3 + 64) = v16;
    *(a3 + 72) = v18;
    *(a3 + 80) = v8 & 1;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 2;
    *(a3 + 144) = 0;
    sub_213D59E18(v17, v16, v18);
  }

  else
  {
    sub_213D59E18(*(v15 + 56), v16, v18);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = xmmword_213D98BB0;
    *(a3 + 32) = 0;
    *(a3 + 40) = v17;
    *(a3 + 48) = 0;
    *(a3 + 56) = xmmword_213D99630;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *&v19 = 0;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 2;
    *(a3 + 144) = 0;
  }

  return *&v19;
}

double static MapStylePicker.Option.standard(elevation:showTrafficToggle:)@<D0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_213D9033C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_213D9029C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 2;
  v11 = sub_213D918FC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = *a1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27C8E9770);
  (*(v8 + 16))(v10, v13, v7);
  sub_213D9032C();
  sub_213D902BC();
  v22 = 1;
  v26 = v12;
  *&v27 = 0;
  *(&v27 + 1) = MEMORY[0x277D84F90];
  LOWORD(v28) = 0;
  *(&v28 + 2) = *&v24[7];
  WORD3(v28) = v25;
  *(&v28 + 1) = 0;
  v29[0] = 1;
  *&v29[1] = *v24;
  *&v29[4] = *&v24[3];
  *&v29[8] = xmmword_213D99630;
  *&v29[24] = 0;
  v30[0] = 0;
  *&v30[1] = *v23;
  *&v30[4] = *&v23[3];
  memset(&v30[8], 0, 48);
  *&v30[56] = 2;
  v31 = 0;
  sub_213D58F60(&v26);
  v14 = type metadata accessor for MapStylePicker.Option(0);
  *(a3 + v14[5]) = 0;
  v15 = a3 + v14[6];
  v16 = *&v30[32];
  v17 = *&v30[48];
  *(v15 + 96) = *&v30[16];
  *(v15 + 112) = v16;
  *(v15 + 128) = v17;
  *(v15 + 144) = v31;
  v18 = *v29;
  *(v15 + 32) = v28;
  *(v15 + 48) = v18;
  v19 = *v30;
  *(v15 + 64) = *&v29[16];
  *(v15 + 80) = v19;
  result = *&v26;
  v21 = v27;
  *v15 = v26;
  *(v15 + 16) = v21;
  *(a3 + v14[7]) = a2 & 1;
  *(a3 + v14[8]) = 0;
  *(a3 + v14[9]) = 2;
  return result;
}

double static MapStylePicker.Option.satellite(elevation:showTrafficToggle:showLabelsToggle:)@<D0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_213D9033C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_213D9029C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_213D918FC();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = *a1;
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_27C8E9770);
  (*(v10 + 16))(v12, v15, v9);
  sub_213D9032C();
  sub_213D902BC();
  v24[8] = 1;
  v28 = 0uLL;
  v29 = xmmword_213D98BB0;
  LOWORD(v30) = 0;
  *(&v30 + 2) = *&v26[7];
  WORD3(v30) = v27;
  *(&v30 + 1) = 0;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = *v26;
  DWORD1(v31) = *&v26[3];
  *(&v31 + 1) = v14;
  *&v32 = 0;
  *(&v32 + 1) = MEMORY[0x277D84F90];
  v33[0] = 0;
  *&v33[1] = *v25;
  *&v33[4] = *&v25[3];
  memset(&v33[8], 0, 48);
  *&v33[56] = 2;
  v34 = 0;
  sub_213D58F70(&v28);
  v16 = type metadata accessor for MapStylePicker.Option(0);
  *(a4 + v16[5]) = 3;
  v17 = a4 + v16[6];
  v18 = *&v33[32];
  v19 = *&v33[48];
  *(v17 + 96) = *&v33[16];
  *(v17 + 112) = v18;
  *(v17 + 128) = v19;
  *(v17 + 144) = v34;
  v20 = v31;
  *(v17 + 32) = v30;
  *(v17 + 48) = v20;
  v21 = *v33;
  *(v17 + 64) = v32;
  *(v17 + 80) = v21;
  result = *&v28;
  v23 = v29;
  *v17 = v28;
  *(v17 + 16) = v23;
  *(a4 + v16[7]) = a2 & 1;
  *(a4 + v16[8]) = a3 & 1;
  *(a4 + v16[9]) = 2;
  return result;
}

uint64_t sub_213D5599C()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v10, qword_27C8E98B0);
  v11 = __swift_project_value_buffer(v10, qword_27C8E98B0);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v12, v1);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E93C8 != -1)
  {
    swift_once();
  }

  v13 = qword_27C8E93F0;
  v14 = unk_27C8E93F8;
  v15 = byte_27C8E9400;
  v16 = *(v7 + 16);
  v27 = xmmword_27C8E93D0;
  v26 = *&qword_27C8E93E0;
  v16(v11, v9, v6);
  v29 = v27;
  v30 = v26;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32[0] = v15;
  *&v32[1] = *v28;
  *&v32[4] = *&v28[3];
  memset(&v32[8], 0, 48);
  *&v32[56] = 2;
  sub_213D59E04(&v29);
  *(v11 + v10[5]) = 0;
  v17 = v11 + v10[6];
  v18 = v30;
  *v17 = v29;
  *(v17 + 16) = v18;
  v19 = v31;
  v20 = *v32;
  v21 = *&v32[32];
  *(v17 + 64) = *&v32[16];
  *(v17 + 80) = v21;
  *(v17 + 32) = v19;
  *(v17 + 48) = v20;
  v22 = *&v32[48];
  v23 = v33;
  v24 = v34;
  *(v17 + 144) = v35;
  *(v17 + 112) = v23;
  *(v17 + 128) = v24;
  *(v17 + 96) = v22;
  *(v11 + v10[7]) = 0;
  *(v11 + v10[8]) = 0;
  *(v11 + v10[9]) = 0;
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_213D55D98()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v10, qword_27C8E98D8);
  v11 = __swift_project_value_buffer(v10, qword_27C8E98D8);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v12, v1);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E9410 != -1)
  {
    swift_once();
  }

  v13 = qword_27C8E9438;
  v14 = unk_27C8E9440;
  v15 = byte_27C8E9448;
  v16 = *(v7 + 16);
  v27 = xmmword_27C8E9418;
  v26 = *&qword_27C8E9428;
  v16(v11, v9, v6);
  v29 = v27;
  v30 = v26;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32[0] = v15;
  *&v32[1] = *v28;
  *&v32[4] = *&v28[3];
  memset(&v32[8], 0, 48);
  *&v32[56] = 2;
  sub_213D59E04(&v29);
  *(v11 + v10[5]) = 1;
  v17 = v11 + v10[6];
  v18 = v30;
  *v17 = v29;
  *(v17 + 16) = v18;
  v19 = v31;
  v20 = *v32;
  v21 = *&v32[32];
  *(v17 + 64) = *&v32[16];
  *(v17 + 80) = v21;
  *(v17 + 32) = v19;
  *(v17 + 48) = v20;
  v22 = *&v32[48];
  v23 = v33;
  v24 = v34;
  *(v17 + 144) = v35;
  *(v17 + 112) = v23;
  *(v17 + 128) = v24;
  *(v17 + 96) = v22;
  *(v11 + v10[7]) = 0;
  *(v11 + v10[8]) = 0;
  *(v11 + v10[9]) = 1;
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_213D56198()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v10, qword_27C8E9890);
  v11 = __swift_project_value_buffer(v10, qword_27C8E9890);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v12, v1);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E9388 != -1)
  {
    swift_once();
  }

  v13 = qword_27C8E93B0;
  v14 = unk_27C8E93B8;
  v15 = byte_27C8E93C0;
  v16 = *(v7 + 16);
  v27 = xmmword_27C8E9390;
  v26 = *&qword_27C8E93A0;
  v16(v11, v9, v6);
  v29 = v27;
  v30 = v26;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32[0] = v15;
  *&v32[1] = *v28;
  *&v32[4] = *&v28[3];
  memset(&v32[8], 0, 48);
  *&v32[56] = 2;
  sub_213D59E04(&v29);
  *(v11 + v10[5]) = 2;
  v17 = v11 + v10[6];
  v18 = v30;
  *v17 = v29;
  *(v17 + 16) = v18;
  v19 = v31;
  v20 = *v32;
  v21 = *&v32[32];
  *(v17 + 64) = *&v32[16];
  *(v17 + 80) = v21;
  *(v17 + 32) = v19;
  *(v17 + 48) = v20;
  v22 = *&v32[48];
  v23 = v33;
  v24 = v34;
  *(v17 + 144) = v35;
  *(v17 + 112) = v23;
  *(v17 + 128) = v24;
  *(v17 + 96) = v22;
  *(v11 + v10[7]) = 0;
  *(v11 + v10[8]) = 0;
  *(v11 + v10[9]) = 2;
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_213D56594()
{
  v0 = sub_213D9033C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_213D9029C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213D918FC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MapStylePicker.Option(0);
  __swift_allocate_value_buffer(v10, qword_27C8E9868);
  v11 = __swift_project_value_buffer(v10, qword_27C8E9868);
  sub_213D918EC();
  if (qword_27C8E9768 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_27C8E9770);
  (*(v2 + 16))(v4, v12, v1);
  sub_213D9032C();
  sub_213D902BC();
  if (qword_27C8E94A0 != -1)
  {
    swift_once();
  }

  v13 = v9;
  v32 = *&qword_27C8E94B8;
  v33 = xmmword_27C8E94A8;
  v14 = unk_27C8E94D0;
  v31 = qword_27C8E94C8;
  v15 = byte_27C8E94D8;
  if (qword_27C8E9458 != -1)
  {
    swift_once();
  }

  v16 = qword_27C8E9480;
  v17 = unk_27C8E9488;
  v18 = byte_27C8E9490;
  v19 = *(v7 + 16);
  v30 = xmmword_27C8E9460;
  v29 = *&qword_27C8E9470;
  v19(v11, v13, v6);
  v35 = v33;
  v36 = v32;
  *&v37 = v31;
  *(&v37 + 1) = v14;
  v38[0] = v15;
  *&v38[1] = *v34;
  *&v38[4] = *&v34[3];
  *&v38[24] = v29;
  *&v38[8] = v30;
  *&v38[40] = v16;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  sub_213D59E04(&v35);
  *(v11 + v10[5]) = 3;
  v20 = v11 + v10[6];
  v21 = v36;
  *v20 = v35;
  *(v20 + 16) = v21;
  v22 = v37;
  v23 = *v38;
  v24 = *&v38[32];
  *(v20 + 64) = *&v38[16];
  *(v20 + 80) = v24;
  *(v20 + 32) = v22;
  *(v20 + 48) = v23;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  *(v20 + 144) = v42;
  *(v20 + 112) = v26;
  *(v20 + 128) = v27;
  *(v20 + 96) = v25;
  *(v11 + v10[7]) = 1;
  *(v11 + v10[8]) = 1;
  *(v11 + v10[9]) = 2;
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_213D56A10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MapStylePicker.Option(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_213D59C48(v7, a4, type metadata accessor for MapStylePicker.Option);
}

void *sub_213D56A98()
{
  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E93D0 = v2;
  qword_27C8E93E0 = 1;
  unk_27C8E93E8 = v1;
  qword_27C8E93F0 = 0;
  unk_27C8E93F8 = v3;
  byte_27C8E9400 = v4;
  return result;
}

void *sub_213D56AF4()
{
  if (qword_27C8E9348 != -1)
  {
    swift_once();
  }

  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E9418 = v2;
  qword_27C8E9428 = 1;
  unk_27C8E9430 = v1;
  qword_27C8E9438 = 0;
  unk_27C8E9440 = v3;
  byte_27C8E9448 = v4;
  return result;
}

void *sub_213D56B84()
{
  if (qword_27C8E9330 != -1)
  {
    swift_once();
  }

  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E9390 = v2;
  qword_27C8E93A0 = 1;
  unk_27C8E93A8 = v1;
  qword_27C8E93B0 = 0;
  unk_27C8E93B8 = v3;
  byte_27C8E93C0 = v4;
  return result;
}

void *sub_213D56C14()
{
  result = _MKCartographicConfigurationForMapType();
  v1 = 3;
  if (*(&v2 + 1) != 4)
  {
    v1 = 1;
  }

  xmmword_27C8E94A8 = v2;
  qword_27C8E94B8 = 1;
  unk_27C8E94C0 = v1;
  qword_27C8E94C8 = 0;
  unk_27C8E94D0 = v3;
  byte_27C8E94D8 = v4;
  return result;
}

void *sub_213D56C70()
{
  result = _MKCartographicConfigurationForMapType();
  if (*(&v2 + 1) == 4)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  xmmword_27C8E9460 = v2;
  qword_27C8E9470 = 1;
  unk_27C8E9478 = v1;
  qword_27C8E9480 = 0;
  unk_27C8E9488 = v3;
  byte_27C8E9490 = v4;
  return result;
}

uint64_t _MapStylePickerAttribution.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _MapStylePickerAttribution(0) + 20);

  return sub_213D58FA4(a1, v3);
}

uint64_t sub_213D56DFC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 192);
  if (*(v0 + 200) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213D56F4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A8, qword_213D998B8);
  sub_213D9156C();
  return v2;
}

uint64_t sub_213D56F94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0D8, &qword_213D99AB0);
  sub_213D9157C();
  return v1;
}

uint64_t sub_213D56FE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v3);
  sub_213CE2C28(a1, &v6 - v4, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213D9156C();
  return sub_213CD8330(a1, &qword_27C8EA2A0, &qword_213D94F50);
}

uint64_t sub_213D570AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213CE2C28(a1, &v5 - v3, &qword_27C8EA2A0, &qword_213D94F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
  sub_213D9158C();
  return sub_213CD8330(a1, &qword_27C8EA2A0, &qword_213D94F50);
}

void _MapStylePicker.init(options:style:scope:contentType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a2 + 144);
  v28 = *(a2 + 128);
  v29 = v13;
  v30 = *(a2 + 160);
  v14 = *(a2 + 80);
  v24 = *(a2 + 64);
  v25 = v14;
  v15 = *(a2 + 112);
  v26 = *(a2 + 96);
  v27 = v15;
  v16 = *(a2 + 16);
  v20 = *a2;
  v21 = v16;
  v17 = *(a2 + 48);
  v22 = *(a2 + 32);
  v23 = v17;
  nullsub_2();
  v18[8] = v28;
  v18[9] = v29;
  v19 = v30;
  v18[4] = v24;
  v18[5] = v25;
  v18[6] = v26;
  v18[7] = v27;
  v18[0] = v20;
  v18[1] = v21;
  v18[2] = v22;
  v18[3] = v23;
  sub_213D53AE8(a1, v18, a3, 0, 0, a4, a5, a6, a7);
}

uint64_t sub_213D57268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v57 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v55 = v4;
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = (&v49 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for _MapStylePickerAttribution(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v49 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
  sub_213D9157C();
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) != 1)
  {
    sub_213D59BE0(v14, v22, type metadata accessor for _MapStylePickerAttribution);
    sub_213D59BE0(v22, a2, type metadata accessor for _MapStylePickerAttribution);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  v52 = a2;
  sub_213CD8330(v14, &qword_27C8EA2A0, &qword_213D94F50);
  v50 = *(v16 + 56);
  v51 = v15;
  v50(v11, 1, 1, v15);
  v24 = v11;
  v25 = v2;
  if ((*(v2 + 184) & 1) == 0)
  {
    v26 = *(v2 + 176);
    v27 = sub_213D56DFC();
    if (*(v27 + 16) && (v28 = sub_213CE212C(v26), (v29 & 1) != 0))
    {
      sub_213CE2A1C(*(v27 + 56) + 8 * v28, v61);

      sub_213CE2A78(v61, v62);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = v53;
        v32 = Strong;
        sub_213D5789C(Strong, v60, v53);

        sub_213CE2AD4(v62);
        goto LABEL_12;
      }

      sub_213CE2AD4(v62);
    }

    else
    {
    }
  }

  v34 = sub_213D56F94();
  if (!v34)
  {
    goto LABEL_13;
  }

  v35 = v34;
  v36 = swift_unknownObjectWeakLoadStrong();

  if (!v36)
  {
    goto LABEL_13;
  }

  v31 = v53;
  sub_213D5789C(v36, v60, v53);

LABEL_12:
  sub_213CD8330(v24, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213CED608(v31, v24, &qword_27C8EA2A0, &qword_213D94F50);
LABEL_13:
  v37 = v58;
  sub_213CE2C28(v24, v58, &qword_27C8EA2A0, &qword_213D94F50);
  v38 = v51;
  if (v23(v37, 1, v51) == 1)
  {
    sub_213CD8330(v24, &qword_27C8EA2A0, &qword_213D94F50);
    sub_213CD8330(v37, &qword_27C8EA2A0, &qword_213D94F50);
    return (v50)(v52, 1, 1, v38);
  }

  else
  {
    v58 = v16 + 56;
    v39 = v59;
    sub_213D59BE0(v37, v59, type metadata accessor for _MapStylePickerAttribution);
    v40 = v57;
    v41 = *(v57 + 16);
    v53 = v24;
    v42 = v56;
    v43 = v60;
    v41(v56, v25, v60);
    v44 = v54;
    sub_213D59C48(v39, v54, type metadata accessor for _MapStylePickerAttribution);
    v45 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v46 = (v55 + *(v16 + 80) + v45) & ~*(v16 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = *(v43 + 16);
    (*(v40 + 32))(v47 + v45, v42, v43);
    sub_213D59BE0(v44, v47 + v46, type metadata accessor for _MapStylePickerAttribution);
    sub_213D905AC();

    sub_213CD8330(v53, &qword_27C8EA2A0, &qword_213D94F50);
    v48 = v52;
    sub_213D59BE0(v59, v52, type metadata accessor for _MapStylePickerAttribution);
    return (v50)(v48, 0, 1, v38);
  }
}

uint64_t sub_213D5789C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v9 = sub_213D9028C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v73 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v18 = (*(*(a2 + 24) + 24))(*(a2 + 16), v15);
  sub_213D57FDC(v18);

  v19 = sub_213D9182C();

  v20 = [a1 mapAttributionWithStringAttributes:v19 underlineText:0 linkAttribution:0];

  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = [v20 string];
  if (!v21)
  {

LABEL_18:
    v68 = type metadata accessor for _MapStylePickerAttribution(0);
    v69 = *(*(v68 - 8) + 56);

    return v69(a3, 1, 1, v68);
  }

  v22 = v21;
  v82 = v17;
  v75 = v20;
  v76 = v8;
  v85 = v9;
  v77 = a3;
  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v74 = v22;
  v80 = [v23 initWithAttributedString_];
  v24 = [v80 string];
  v25 = sub_213D9193C();
  v27 = v26;

  v28 = (v10 + 8);
  v29 = v25;
  v30 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v30 = v25 & 0xFFFFFFFFFFFFLL;
  }

  v81 = 4 * v30;
  v31 = 7;
  if (((v27 >> 60) & ((v25 & 0x800000000000000) == 0)) != 0)
  {
    v31 = 11;
  }

  v78 = v31 | (v30 << 16);
  v79 = v25;
  v32 = 15;
  do
  {
    v33 = v32;
    v87 = v29;
    v88 = v27;

    v34 = v86;
    sub_213D9026C();
    v35 = v28;
    v36 = v83;
    sub_213D9027C();
    v37 = v82;
    sub_213D9025C();
    v38 = *v35;
    v39 = v85;
    (*v35)(v36, v85);
    result = v38(v34, v39);
    if (v81 < v33 >> 14)
    {
      __break(1u);
      return result;
    }

    v43 = v33 >> 14;
    sub_213CEFA54(result, v41, v42);
    v44 = v39;
    v84 = v33;
    v45 = sub_213D91C9C();
    v46 = v37;
    v47 = v45;
    v32 = v48;
    v50 = v49;
    v51 = v44;
    v28 = v35;
    v52 = v38;
    v38(v46, v51);

    v29 = v79;
  }

  while ((v50 & 1) == 0 && v47 >> 14 == v43);
  v53 = v86;
  while (1)
  {
    v87 = v29;
    v88 = v27;

    sub_213D9027C();
    v54 = sub_213D91C9C();
    v56 = v55;
    v52(v53, v85);

    if ((v56 & 1) != 0 || v54 >> 14 != v43)
    {
      break;
    }

    v57 = sub_213D9198C();
    v58 = sub_213D9198C();

    v59 = v80;
    [v80 deleteCharactersInRange_];
    v60 = [v59 string];
    v29 = sub_213D9193C();
    v27 = v61;
  }

  v62 = v75;
  v63 = [v75 url];
  if (v63)
  {
    v64 = v76;
    v65 = v63;
    sub_213D902DC();

    v66 = 0;
  }

  else
  {
    v66 = 1;
    v64 = v76;
  }

  v67 = v77;

  v70 = v80;
  v71 = sub_213D902EC();
  (*(*(v71 - 8) + 56))(v64, v66, 1, v71);
  *v67 = v70;
  v72 = type metadata accessor for _MapStylePickerAttribution(0);
  sub_213CED608(v64, v67 + *(v72 + 20), &qword_27C8EA5C8, &qword_213D95620);
  return (*(*(v72 - 8) + 56))(v67, 0, 1, v72);
}

uint64_t sub_213D57ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_213D59C48(a2, &v13 - v8, type metadata accessor for _MapStylePickerAttribution);
  v10 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for _MapStylePicker(0, a3, a4, v11);
  return sub_213D570AC(v9);
}

uint64_t sub_213D57FDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0D0, &qword_213D99AA8);
    v2 = sub_213D91EEC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_213D1F124(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_213CEB34C((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_213CEB34C(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_213CEB34C(v30, v31);
    result = sub_213D91D1C();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_213CEB34C(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_213D582A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v29[8] = *(v1 + 136);
  v29[9] = v4;
  v30 = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v29[4] = *(v1 + 72);
  v29[5] = v6;
  v29[6] = *(v1 + 104);
  v29[7] = v3;
  v7 = *(v1 + 24);
  v29[0] = *(v1 + 8);
  v29[1] = v7;
  v29[2] = *(v1 + 40);
  v29[3] = v5;
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  v39 = *(v1 + 136);
  v40 = v9;
  v41 = *(v1 + 168);
  v10 = *(v1 + 56);
  v11 = *(v1 + 88);
  v35 = *(v1 + 72);
  v36 = v11;
  v37 = *(v1 + 104);
  v38 = v8;
  v12 = *(v1 + 24);
  v31 = *(v1 + 8);
  v32 = v12;
  v33 = *(v1 + 40);
  v34 = v10;
  if (get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(&v31) == 1)
  {
    v13 = swift_allocObject();
    v14 = sub_213D56F94();
    swift_unknownObjectWeakInit();

    sub_213D91AFC();

    v15 = sub_213D91AEC();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;

    v18 = swift_allocObject();
    v19 = sub_213D56F94();
    swift_unknownObjectWeakInit();

    v20 = sub_213D91AEC();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v18;

    sub_213D9161C();
  }

  else
  {
    v22 = v40;
    *(a1 + 128) = v39;
    *(a1 + 144) = v22;
    *(a1 + 160) = v41;
    v23 = v36;
    *(a1 + 64) = v35;
    *(a1 + 80) = v23;
    v24 = v38;
    *(a1 + 96) = v37;
    *(a1 + 112) = v24;
    v25 = v32;
    *a1 = v31;
    *(a1 + 16) = v25;
    v26 = v34;
    *(a1 + 32) = v33;
    *(a1 + 48) = v26;
  }

  return sub_213CE2C28(v29, v28, &qword_27C8EC090, &qword_213D99648);
}

double sub_213D58518@<D0>(uint64_t x8_0@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return static MapStyle.standard.getter(x8_0);
  }

  v6 = Strong;
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v7 = *&v6[OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration];
  v8 = v7;

  if (!v7)
  {
    return static MapStyle.standard.getter(x8_0);
  }

  sub_213D7A454(v8, x8_0);
  return result;
}

void sub_213D585E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      v15 = a1[6];
      v16 = a1[7];
      v17 = a1[8];
      LOWORD(v18) = *(a1 + 72);
      v11 = a1[2];
      v12 = a1[3];
      v13 = a1[4];
      v14 = a1[5];
      v9 = *a1;
      v10 = a1[1];
      isa = MapStyle.configuration()().super.isa;
      [v7 setPreferredConfiguration_];
    }
  }
}

uint64_t _MapStylePicker.body.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  v14 = *v1;

  sub_213D582A4(v17);
  sub_213D57268(a1, v5);
  (*(*(a1 + 24) + 16))(v14, v17, v5, v6, *(a1 + 24));
  sub_213D4CEAC();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_213D4CEAC();
  return (v15)(v13, v6);
}

void *sub_213D58890()
{
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v1 = *(v0 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  v2 = v1;
  return v1;
}

id sub_213D58910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213D59B88();
  sub_213D9038C();

  v4 = *(v3 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  *a2 = v4;

  return v4;
}

void sub_213D589A0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213D59B88();
    sub_213D9037C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_213CE2B34(0, &unk_27C8E9518, 0x277CD4E70);
  v6 = v5;
  v7 = a1;
  v8 = sub_213D91C5C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_213D58B08(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_213D589A0([v3 configuration]);
  }
}

id sub_213D58BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CocoaMapConfigurationObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s15_MapKit_SwiftUI0A11StylePickerV18trafficToggleState5style6option0cD00I0VySbGAA0aE0V_AC6OptionVSgtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CE2C28(a2, v6, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213CD8330(v6, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    sub_213D59BE0(v6, v10, type metadata accessor for MapStylePicker.Option);
    if (v10[*(v7 + 28)] == 1 && ((v12 = a1[7], v30 = a1[6], v31 = v12, v32 = a1[8], v33 = *(a1 + 72), v13 = a1[3], v26 = a1[2], v27 = v13, v14 = a1[5], v28 = a1[4], v29 = v14, v15 = a1[1], v24 = *a1, v25 = v15, v16 = sub_213D5404C(), v10[*(v7 + 32)] != 1) || v16))
    {
      v17 = a1[7];
      v30 = a1[6];
      v31 = v17;
      v32 = a1[8];
      v33 = *(a1 + 72);
      v18 = a1[3];
      v26 = a1[2];
      v27 = v18;
      v19 = a1[5];
      v28 = a1[4];
      v29 = v19;
      v20 = a1[1];
      v24 = *a1;
      v25 = v20;
      v21.super.isa = MapStyle.configuration()().super.isa;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22 || (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), !swift_dynamicCastObjCClass()) && (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
      {
        v11 = [v22 showsTraffic];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    sub_213D52C44(v10);
  }

  return v11;
}

double sub_213D58F40(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_213D58FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D59018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC098;
  if (!qword_27C8EC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC098);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A5StyleV8StandardVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A5StyleV6HybridVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy08_MapKit_aB00D5StyleVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_213D59170(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_213D591B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213D59260(uint64_t a1)
{
  sub_213D902AC();
  if (v1 <= 0x3F)
  {
    sub_213D5981C(319, &qword_27C8E9560, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MapStylePicker.Option.Thumbnail(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapStylePicker.Option.Thumbnail(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_213D5949C(uint64_t a1)
{
  sub_213CE2B34(319, &qword_27C8E9510, 0x277CCA898);
  if (v1 <= 0x3F)
  {
    sub_213D597B8(319, &unk_27C8E99B0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D59588(uint64_t a1)
{
  sub_213D597B8(319, &qword_27C8E9580, type metadata accessor for MapStylePicker.Option, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_213D5986C(319, &qword_27C8E95B0, &qword_27C8EA2D0, &qword_213D998B0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_213D5981C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213D5981C(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_213D5986C(319, &qword_27C8E95F0, &qword_27C8EC0A8, qword_213D998B8, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213D5986C(319, &qword_27C8E95F8, &qword_27C8EA2A0, &qword_213D94F50, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_getMetatypeMetadata();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213D597B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213D5981C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213D5986C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_213D598F8(uint64_t a1)
{
  result = sub_213D903AC();
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

unint64_t sub_213D599A0()
{
  result = qword_27C8E9928[0];
  if (!qword_27C8E9928[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC0C8, &qword_213D99920);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8E9928);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_213D59A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_213D59A94(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 146) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 130) = 0u;
      return result;
    }

    *(a1 + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213D59B48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration);
  *(v1 + OBJC_IVAR____TtC15_MapKit_SwiftUIP33_9698CEE52D1B8AC89FFE39FD7528840C29CocoaMapConfigurationObserver__configuration) = v2;
  v4 = v2;
}

unint64_t sub_213D59B88()
{
  result = qword_27C8E9900;
  if (!qword_27C8E9900)
  {
    type metadata accessor for CocoaMapConfigurationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9900);
  }

  return result;
}

uint64_t sub_213D59BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D59C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D59CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for _MapStylePicker(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for _MapStylePickerAttribution(0) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_213D57ED4(v4 + v8, v11, v5, v6);
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_213D59E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
  }
}

void sub_213D59E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 1)
  {
  }
}

double sub_213D59EAC(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage;
  if ((*(v1 + OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 8) & 0x8000000000000000) != 0)
  {
    v4 = *(v2 + 16);

    [a1 scene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC160, &qword_213D99D30);
    sub_213D915FC();
  }

  return result;
}

id sub_213D5A014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _LookAroundPreview.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_213D5A090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D5A0EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_213D5A168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_213D5A1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_213D5A238(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  v8 = *(v1 + 26);
  v10 = v1[4];
  v9 = v1[5];
  v23 = v1[6];
  if (v3 < 0)
  {
    v26 = *v1;
    v27 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v5;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC160, &qword_213D99D30);
    MEMORY[0x21604E7B0](&v25, v12);
    v11 = v25;
  }

  else
  {

    sub_213D51AE4(v4, v3, v5);
    v11 = v4;
  }

  [a1 setScene_];

  [a1 _setFullScreenCover_];
  [a1 setNavigationEnabled_];
  [a1 setShowsRoadLabels_];
  if (v10)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v14 = sub_213D919EC();
    v15 = [v13 initIncludingCategories_];
  }

  else if (v9)
  {
    v16 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v17 = sub_213D919EC();
    v15 = [v16 initExcludingCategories_];
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v15 = 0;
  }

  [a1 setPointOfInterestFilter_];

  [a1 setBadgePosition_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC168, &qword_213D99D38);
  sub_213D9116C();
  v18 = v26;
  v19 = &v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  v20 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  v21 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 8];
  v22 = *&v26[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage + 16];
  *v19 = v4;
  *(v19 + 1) = v3;
  *(v19 + 2) = v5;
  sub_213D51AE4(v4, v3, v5);
  sub_213D5A76C(v20, v21, v22);
}

id sub_213D5A4B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD4E50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC168, &qword_213D99D38);
  sub_213D9116C();
  [v0 setDelegate_];

  sub_213D5A238(v0);
  return v0;
}

void *sub_213D5A560@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = type metadata accessor for _LookAroundPreview.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV15_MapKit_SwiftUI18_LookAroundPreview11Coordinator_sceneStorage];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  sub_213D51AE4(v3, v4, v5);
  v10.receiver = v7;
  v10.super_class = v6;
  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_213D5A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D5A718(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_213D5A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D5A718(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_213D5A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D5A718(a1, a2, a3);
  sub_213D9114C();
  __break(1u);
}

unint64_t sub_213D5A718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC158;
  if (!qword_27C8EC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC158);
  }

  return result;
}

void sub_213D5A76C(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {

    a1 = a3;
  }
}

uint64_t MapReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double MapReader.body.getter(uint64_t a1)
{
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF08, &unk_213D99D40);
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = v5;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);
  sub_213D90EDC();
  sub_213D5AD90(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40);
  swift_getWitnessTable();
  sub_213D9073C();

  sub_213D90EDC();
  swift_getWitnessTable();
  sub_213D4CEAC();

  sub_213D4CEAC();

  return result;
}

double sub_213D5A9B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v17[0] = a2;
  v17[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF28, &qword_213D98B78);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = v17[0];
  *(v15 + 5) = a3;
  (*(v11 + 32))(&v15[v14], v13, v10);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);

  sub_213D9073C();

  return result;
}

uint64_t sub_213D5AB84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[2] = a3;
  v22 = a2;
  v21[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC310, &qword_213D99F78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v21 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v21 - v16);
  result = (*(v13 + 16))(v21 - v16, a4, v12, v15);
  if (v14 == 8)
  {
    v19 = *v17;
    (*(v13 + 8))(v17, v12);
    result = (*(v8 + 16))(v11, a1, v7);
    if (v9 == 8)
    {
      v20 = *v11;
      (*(v8 + 8))(v11, v7);
      v23[0] = v19;
      v23[1] = v20;
      return v22(v23);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D5AD90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_213D5ADE8@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF38, &qword_213D98B80);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v6, &qword_27C8EBF38, &qword_213D98B80);
  sub_213D5CC2C(v6, v5);
  if (v5[8])
  {
    sub_213CD8330(v5, &qword_27C8EBF38, &qword_213D98B80);
LABEL_4:
    swift_unknownObjectWeakInit();
    return swift_unknownObjectWeakAssign();
  }

  return sub_213CE2A78(v5, a2);
}

BOOL sub_213D5AEA4(double a1, double a2)
{
  v2 = *&a1 & 0xFFFFFFFFFFFFFLL;
  result = 0;
  if ((*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000 || v2 == 0)
  {
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = (*&a1 & 0x7FF0000000000000) == 0x7FF0000000000000;
    }

    v6 = v5;
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6 & 1) == 0)
    {
      v9 = sub_213D9024C();
      return sub_213D9024C() != a2 || v9 != a1;
    }
  }

  return result;
}

uint64_t sub_213D5AF3C()
{
  v0 = sub_213D90E8C();
  v38 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for MapSizingInformation(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D5ADE8(v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v39);
  if (!Strong)
  {
    goto LABEL_8;
  }

  v37 = v0;
  v14 = Strong;
  v15 = [v14 superview];
  if (!v15)
  {

LABEL_8:
    *&result = 0.0;
    return result;
  }

  v16 = v15;
  [v14 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v16 convertRect:0 toView:{v18, v20, v22, v24}];
  v26 = v25;

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    sub_213CE2C28(WeakValue, v8, &qword_27C8EBF00, &unk_213D98B60);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_213D5B4BC(v8, v12);
      goto LABEL_10;
    }

    sub_213CD8330(v8, &qword_27C8EBF00, &unk_213D98B60);
  }

  v28 = sub_213D906CC();
  v29 = *(*(v28 - 8) + 56);
  v29(v12, 1, 1, v28);
  sub_213CD8330(v12, &qword_27C8EBF10, &qword_213D98B70);
  v29(v12, 1, 1, v28);
  *&v12[*(v9 + 20)] = 0x3FF0000000000000;
LABEL_10:
  sub_213CE2C28(v12, v5, &qword_27C8EBF10, &qword_213D98B70);
  v31 = sub_213D906CC();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v5, 1, v31) == 1)
  {

    sub_213D5B460(v12);
    sub_213CD8330(v5, &qword_27C8EBF10, &qword_213D98B70);
    v33 = 0.0;
  }

  else
  {
    sub_213D90EFC();
    v34 = v37;
    sub_213D906BC();
    v33 = v35;

    (*(v38 + 8))(v2, v34);
    sub_213D5B460(v12);
    (*(v32 + 8))(v5, v31);
  }

  *&result = v33 - v26;
  return result;
}

uint64_t type metadata accessor for MapSizingInformation(uint64_t a1)
{
  result = qword_27C8EC270;
  if (!qword_27C8EC270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D5B460(uint64_t a1)
{
  v2 = type metadata accessor for MapSizingInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D5B4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapSizingInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D5B538(uint64_t (*a1)(uint64_t, double, double, double, double, double, double), double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for MapSizingInformation(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v15, &qword_27C8EBF00, &unk_213D98B60);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_213CD8330(v15, &qword_27C8EBF00, &unk_213D98B60);
LABEL_4:
    v21 = sub_213D906CC();
    v22 = *(*(v21 - 8) + 56);
    v22(v19, 1, 1, v21);
    sub_213CD8330(v19, &qword_27C8EBF10, &qword_213D98B70);
    v22(v19, 1, 1, v21);
    *&v19[*(v16 + 20)] = 0x3FF0000000000000;
    goto LABEL_6;
  }

  sub_213D5B4BC(v15, v19);
LABEL_6:
  sub_213CE2C28(v19, v12, &qword_27C8EBF10, &qword_213D98B70);
  v23 = sub_213D906CC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {
    sub_213D5B460(v19);
    v25 = sub_213CD8330(v12, &qword_27C8EBF10, &qword_213D98B70);
    v26 = 0.0;
    v27 = 0.0;
  }

  else
  {
    sub_213D9069C();
    v26 = v28;
    v27 = v29;
    sub_213D5B460(v19);
    (*(v24 + 8))(v12, v23);
  }

  return a1(v25, a2, a3, a4, a5, v26, v27);
}

void __swiftcall MapProxy.camera(framing:allowPitch:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, MKMapItem framing, Swift::Bool allowPitch)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for MapSizingInformation(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_4;
  }

  sub_213CE2C28(WeakValue, v11, &qword_27C8EBF00, &unk_213D98B60);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_213CD8330(v11, &qword_27C8EBF00, &unk_213D98B60);
LABEL_4:
    v17 = sub_213D906CC();
    v18 = *(*(v17 - 8) + 56);
    v18(v15, 1, 1, v17);
    sub_213CD8330(v15, &qword_27C8EBF10, &qword_213D98B70);
    v18(v15, 1, 1, v17);
    *&v15[*(v12 + 20)] = 0x3FF0000000000000;
    goto LABEL_6;
  }

  sub_213D5B4BC(v11, v15);
LABEL_6:
  sub_213CE2C28(v15, v8, &qword_27C8EBF10, &qword_213D98B70);
  v19 = sub_213D906CC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_213D5B460(v15);
    sub_213CD8330(v8, &qword_27C8EBF10, &qword_213D98B70);
    v21 = 0.0;
    v22 = 0.0;
  }

  else
  {
    sub_213D9069C();
    v21 = v23;
    v22 = v24;
    sub_213D5B460(v15);
    (*(v20 + 8))(v8, v19);
  }

  v25 = [objc_opt_self() cameraLookingAtMapItem:framing.super.isa forViewSize:allowPitch allowPitch:{v21, v22}];
  [v25 centerCoordinate];
  v27 = v26;
  v29 = v28;
  [v25 centerCoordinateDistance];
  v31 = v30;
  [v25 heading];
  v33 = v32;
  [v25 pitch];
  v35 = v34;

  retstr->centerCoordinate.latitude = v27;
  retstr->centerCoordinate.longitude = v29;
  retstr->distance = v31;
  retstr->heading = v33;
  retstr->pitch = v35;
}

uint64_t MapProxy.convert<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = sub_213D9083C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  sub_213D5ADE8(&v30);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(&v30);
  if (!Strong)
  {
    return 0;
  }

  v30 = v15;
  v31 = v17;
  v32 = v16;
  v19 = sub_213D5BEA4(a4, a5, a1, sub_213D5BE9C, 0, a2, a3);
  v21 = v20;
  sub_213D90EEC();
  v22 = sub_213D9081C();
  (*(v12 + 8))(v14, v11);
  v23 = 0;
  if (v22)
  {
    v23 = Strong;
  }

  [Strong convertPoint:v23 toCoordinateFromView:{v19, v21}];
  v25 = v24;
  v27 = v26;

  v33.latitude = v25;
  v33.longitude = v27;
  v28 = CLLocationCoordinate2DIsValid(v33);

  if (v28)
  {
    return *&v25;
  }

  else
  {
    return 0;
  }
}

double sub_213D5BEA4(double a1, double a2, uint64_t a3, double (*a4)(double, double), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a5;
  v44 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v11;
  v42 = type metadata accessor for MapSizingInformation(0);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_213D9083C();
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  *&v18 = *(v7 + 1);
  v45 = v18;
  v19 = v7[3];
  sub_213D90EEC();
  if ((sub_213D9082C() & 1) == 0)
  {
    v47 = v17;
    v48 = v45;
    v49 = v19;
    v20 = sub_213D5AF3C();
    if ((v22 & 1) == 0)
    {
      v23 = v21;
      v24 = v44;
      a1 = v44(a1, *&v20);
      a2 = v24(a2, v23);
    }
  }

  if ((sub_213D9082C() & 1) == 0 && (sub_213D9081C() & 1) == 0)
  {
    WeakValue = AGGraphGetWeakValue();
    v26 = v42;
    if (WeakValue)
    {
      v27 = v41;
      sub_213CE2C28(WeakValue, v41, &qword_27C8EBF00, &unk_213D98B60);
      if ((*(v40 + 48))(v27, 1, v26) != 1)
      {
        sub_213D5B4BC(v27, v13);
LABEL_11:
        *&v30 = COERCE_DOUBLE(sub_213D5C6F8(v16));
        v32 = v31;
        v34 = v33;
        v35 = sub_213D5B460(v13);
        if ((v34 & 1) == 0)
        {
          v36 = *&v30;
          v37 = v44;
          a1 = (v44)(v35, a1, v36);
          v37(a2, v32);
        }

        goto LABEL_13;
      }

      sub_213CD8330(v27, &qword_27C8EBF00, &unk_213D98B60);
    }

    v28 = sub_213D906CC();
    v29 = *(*(v28 - 8) + 56);
    v29(v13, 1, 1, v28);
    sub_213CD8330(v13, &qword_27C8EBF10, &qword_213D98B70);
    v29(v13, 1, 1, v28);
    *&v13[*(v26 + 20)] = 0x3FF0000000000000;
    goto LABEL_11;
  }

LABEL_13:
  (*(v14 + 8))(v16, v46);
  return a1;
}

uint64_t MapProxy.convert<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = sub_213D9083C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = *(v5 + 2);
  v17 = *(v5 + 3);
  sub_213D5ADE8(&v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(&v27);
  if (Strong)
  {
    sub_213D90EEC();
    v19 = sub_213D9081C();
    (*(v12 + 8))(v14, v11);
    if (v19)
    {
      v20 = Strong;
    }

    else
    {
      v20 = 0;
    }

    [Strong convertCoordinate:v20 toPointToView:{a4, a5}];
    v22 = v21;
    v24 = v23;

    if (sub_213D5AEA4(v22, v24))
    {
      v27 = v15;
      v28 = v16;
      v29 = v17;
      v25 = sub_213D5BEA4(v22, v24, a1, sub_213D5C474, 0, a2, a3);

      return *&v25;
    }
  }

  return 0;
}

uint64_t sub_213D5C4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_213D5C530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D5C5AC(uint64_t a1)
{
  sub_213D5C620(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_213D5C620(uint64_t a1)
{
  if (!qword_27C8EC280[0])
  {
    sub_213D906CC();
    v1 = sub_213D91C7C();
    if (!v2)
    {
      atomic_store(v1, qword_27C8EC280);
    }
  }
}

uint64_t sub_213D5C6F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_213D90E8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if (sub_213D9082C())
  {
    goto LABEL_7;
  }

  v24 = v4;
  sub_213CE2C28(v1, v12, &qword_27C8EBF10, &qword_213D98B70);
  v13 = sub_213D906CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v16 = v12;
LABEL_6:
    sub_213CD8330(v16, &qword_27C8EBF10, &qword_213D98B70);
LABEL_7:
    *&result = 0.0;
    return result;
  }

  sub_213D906AC();
  v18 = v17;
  v19 = *(v14 + 8);
  v19(v12, v13);
  sub_213CE2C28(v2, v9, &qword_27C8EBF10, &qword_213D98B70);
  if (v15(v9, 1, v13) == 1)
  {
    v16 = v9;
    goto LABEL_6;
  }

  sub_213D90EFC();
  sub_213D906BC();
  v22 = v21;
  (*(v24 + 8))(v6, v3);
  v19(v9, v13);
  *&result = v22 - v18;
  return result;
}

uint64_t sub_213D5CA10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v18[1] = a3;
  v19 = a2;
  v6 = sub_213D91C7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v14 = *(v7 + 32);
  v20 = a1;
  v14(v9, a1, v6, v11);
  v15 = *(a4 - 8);
  v16 = *(v15 + 48);
  if (v16(v9, 1, a4) == 1)
  {
    v19();
    if (v16(v9, 1, a4) != 1)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v15 + 32))(v13, v9, a4);
    (*(v15 + 56))(v13, 0, 1, a4);
  }

  return (v14)(v20, v13, v6);
}

uint64_t sub_213D5CC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF38, &qword_213D98B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D5CC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70) - 8);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_213D5AB84(a1, v6, v7, v8, a2);
}

uint64_t sub_213D5CD88(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_213D5CE30(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      [v2 visibleMapRect];
      if (v6 != v12 || v5 != v9 || v8 != v10 || v7 != v11)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v16 = sub_213D9046C();
        __swift_project_value_buffer(v16, qword_27C8F7330);
        v17 = sub_213D9044C();
        v18 = sub_213D91BBC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v87 = v20;
          *v19 = 136380675;
          type metadata accessor for MKMapRect(0);
          v21 = sub_213D9194C();
          v23 = sub_213D63E10(v21, v22, &v87);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_213CCA000, v17, v18, "model -> mapview %{private}s", v19, 0xCu);
          v24 = __swift_destroy_boxed_opaque_existential_1(v20);
          MEMORY[0x21604FC60](v20, -1, -1, v24);
          MEMORY[0x21604FC60](v19, -1, -1);
        }

        [v3 setVisibleMapRect:a2 & 1 animated:{v6, v5, v8, v7}];
        return;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v77 = sub_213D9046C();
      __swift_project_value_buffer(v77, qword_27C8F7330);
      oslog = sub_213D9044C();
      v56 = sub_213D91BBC();
      if (os_log_type_enabled(oslog, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v87 = v58;
        *v57 = 136380675;
        type metadata accessor for MKMapRect(0);
        goto LABEL_57;
      }

LABEL_60:
      v82 = oslog;
LABEL_61:

      return;
    }

    [v2 region];
    if (vabdd_f64(v6, v54) < 0.00000000999999994 && vabdd_f64(v5, v51) < 0.00000000999999994 && vabdd_f64(v8, v52) < 0.00000000999999994 && vabdd_f64(v7, v53) < 0.00000000999999994)
    {
      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v55 = sub_213D9046C();
      __swift_project_value_buffer(v55, qword_27C8F7330);
      oslog = sub_213D9044C();
      v56 = sub_213D91BBC();
      if (os_log_type_enabled(oslog, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v87 = v58;
        *v57 = 136380675;
        type metadata accessor for MKCoordinateRegion(0);
LABEL_57:
        v78 = sub_213D9194C();
        v80 = sub_213D63E10(v78, v79, &v87);

        *(v57 + 4) = v80;
        _os_log_impl(&dword_213CCA000, oslog, v56, "model == mapview %{private}s", v57, 0xCu);
        v81 = __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x21604FC60](v58, -1, -1, v81);
        MEMORY[0x21604FC60](v57, -1, -1);
        v76 = oslog;
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v59 = sub_213D9046C();
    __swift_project_value_buffer(v59, qword_27C8F7330);
    v60 = sub_213D9044C();
    v61 = sub_213D91BBC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v87 = v63;
      *v62 = 136380675;
      type metadata accessor for MKCoordinateRegion(0);
      v64 = sub_213D9194C();
      v66 = sub_213D63E10(v64, v65, &v87);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_213CCA000, v60, v61, "model -> mapview %{private}s", v62, 0xCu);
      v67 = __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x21604FC60](v63, -1, -1, v67);
      MEMORY[0x21604FC60](v62, -1, -1);
    }

    [v3 setRegion:a2 & 1 animated:{v6, v5, v8, v7}];
  }

  else
  {
    v84 = *(a1 + 32);
    v25 = [v2 camera];
    [v25 centerCoordinate];
    v85 = v5;
    v27 = v26;
    v29 = v28;
    [v25 centerCoordinateDistance];
    v31 = v30;
    [v25 heading];
    v33 = v32;
    [v25 pitch];
    v34 = v8;
    v36 = v35;

    if (v6 == v27 && v85 == v29 && v7 == v33 && v84 == v36 && v34 == v31)
    {
      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v68 = sub_213D9046C();
      __swift_project_value_buffer(v68, qword_27C8F7330);
      log = sub_213D9044C();
      v69 = sub_213D91BBC();
      if (os_log_type_enabled(log, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v87 = v71;
        *v70 = 136380675;
        v72 = sub_213D9194C();
        v74 = sub_213D63E10(v72, v73, &v87);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_213CCA000, log, v69, "model == mapview %{private}s", v70, 0xCu);
        v75 = __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x21604FC60](v71, -1, -1, v75);
        MEMORY[0x21604FC60](v70, -1, -1);
        v76 = log;
LABEL_58:

        return;
      }

      v82 = log;
      goto LABEL_61;
    }

    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v41 = sub_213D9046C();
    __swift_project_value_buffer(v41, qword_27C8F7330);
    v42 = sub_213D9044C();
    v43 = sub_213D91BBC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v87 = v45;
      *v44 = 136380675;
      v46 = sub_213D9194C();
      v48 = sub_213D63E10(v46, v47, &v87);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_213CCA000, v42, v43, "model -> mapview %{private}s", v44, 0xCu);
      v49 = __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x21604FC60](v45, -1, -1, v49);
      MEMORY[0x21604FC60](v44, -1, -1);
    }

    v50 = [objc_opt_self() cameraLookingAtCenterCoordinate:v6 fromDistance:v85 pitch:v34 heading:{v84, v7}];
    [v3 setCamera:v50 animated:a2 & 1];
  }
}

uint64_t sub_213D5D6E4(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8 >> 8;
  }

  else
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[14];
    LODWORD(v9) = v12[15];
  }

  return (v8 & 1) | (v9 << 8);
}

uint64_t sub_213D5D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_213CE2C28(v2 + *(a1 + 72), &v14 - v10, &unk_27C8EBAF8, &qword_213D985A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213D64F50(v11, a2, type metadata accessor for MapControlsConfig);
  }

  sub_213D91BDC();
  v13 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_213D5DA30(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 76);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

uint64_t sub_213D5DB84@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a1[1];
  v37 = *a1;
  v13 = *(a1 + 4);
  v35 = *(a1 + 5);
  v38 = *a2;
  v39 = *(a1 + 6);
  v14 = *a4;
  v15 = a4[1];
  v34 = *(a4 + 16);
  v16 = type metadata accessor for _MapView(0, a6, a7, a8);
  v17 = v16[11];
  v18 = type metadata accessor for _DefaultAnnotatedMapContent(0, a6, a7, a8);
  v41 = v17;
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = v16[12];
  if (qword_27C8E99F8 != -1)
  {
    swift_once();
  }

  *(a9 + v19) = qword_27C8ED488;
  v20 = v16[13];
  v21 = (a9 + v16[14]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 0;
  v22 = v16[15];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v23 = v16[16];
  *(a9 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v24 = a9 + v16[17];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v16[18];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  swift_storeEnumTagMultiPayload();
  v26 = a9 + v16[19];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *a9 = v37;
  *(a9 + 16) = v36;
  *(a9 + 32) = v13;
  *(a9 + 40) = v35;
  *(a9 + 48) = v39;
  *(a9 + v19) = v38;
  *(a9 + v20) = a3 & 1;
  if (v15)
  {
    sub_213D91AFC();

    v27 = sub_213D91AEC();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = v14;
    *(v28 + 40) = v15;
    *(v28 + 48) = v34;

    v30 = sub_213D91AEC();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    *(v31 + 32) = v14;
    *(v31 + 40) = v15;
    *(v31 + 48) = v34;
    type metadata accessor for MKUserTrackingMode(0);
    sub_213D9161C();
    sub_213D65068(v14, v15);
    *v21 = v43;
    v21[2] = v44;
  }

  v32 = sub_213D91C7C();
  return (*(*(v32 - 8) + 40))(a9 + v41, a5, v32);
}

void *sub_213D5DF08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, void *a4@<X8>)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC548, &qword_213D9A230);
  result = MEMORY[0x21604E7B0](&v7, v5);
  *a4 = v7;
  return result;
}

double sub_213D5DF60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC548, &qword_213D9A230);
  sub_213D915FC();

  return result;
}

void *sub_213D5DFF0(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v56 = *(a1 + 32);
  v57 = v4;
  v6 = type metadata accessor for _DefaultAnnotatedMapContent(255, v5, v4, v56);
  v7 = sub_213D91C7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v59 = v5;
  v51 = sub_213D91C7C();
  v13 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51);
  v16 = &v48 - v15;
  v58 = a1;
  v17 = *(v8 + 16);
  v49 = *(a1 + 44);
  v50 = v17;
  v52 = v7;
  (v17)(v12, v2 + v49, v7, v14);
  v18 = *(v6 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v12, 1, v6);
  v55 = v13;
  v53 = v16;
  v48 = v8;
  if (v20 == 1)
  {
    v21 = v52;
    (*(v8 + 8))(v12, v52);
    (*(*(v59 - 8) + 56))(v16, 1, 1);
    v22 = v51;
  }

  else
  {
    v22 = v51;
    (*(v13 + 16))(v16, &v12[*(v6 + 56)], v51);
    (*(v18 + 8))(v12, v6);
    v21 = v52;
  }

  v23 = v18;
  v24 = v54;
  v50(v54, v2 + v49, v21);
  if (v19(v24, 1, v6) == 1)
  {
    v25 = 0;
    v26 = 0;
    v27 = v24;
    v28 = v59;
    v29 = v55;
    v30 = v53;
    v31 = v48;
  }

  else
  {
    v32 = &v24[*(v6 + 60)];
    v25 = *v32;
    v26 = v32[1];
    sub_213CD4E28(*v32, v26);
    v31 = v23;
    v21 = v6;
    v27 = v24;
    v28 = v59;
    v29 = v55;
    v30 = v53;
  }

  (*(v31 + 8))(v27, v21);
  type metadata accessor for MapViewCoordinator(0, v28, v57, v56);
  v33 = sub_213D64678(v30, v25, v26);
  sub_213CCE520(v25, v26);
  (*(v29 + 8))(v30, v22);
  v34 = (v2 + *(v58 + 56));
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  sub_213D646D0(*v34, v36);
  v38 = (v33 + *((*MEMORY[0x277D85000] & *v33) + 0x70));
  v39 = *v38;
  v40 = v38[1];
  *v38 = v35;
  v38[1] = v36;
  v38[2] = v37;
  sub_213D65068(v39, v40);
  v41 = v2[1];
  v42 = v2[2];
  v43 = v2[3];
  v44 = v2[4];
  v45 = v2[5];
  v46 = v2[6];
  v60[0] = *v2;
  v60[1] = v41;
  v60[2] = v42;
  v60[3] = v43;
  v60[4] = v44;
  v60[5] = v45;
  v60[6] = v46;
  sub_213D64710(v60[0], v41);
  sub_213D61D14(v60);
  return v33;
}

uint64_t sub_213D5E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_213D5E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_213D5E51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_213D90E1C();
  __break(1u);
}

uint64_t sub_213D5E55C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D910BC();
  sub_213D910AC();
  v9 = sub_213D9056C();

  if (v9)
  {

    sub_213D910AC();
    v10 = sub_213D9055C();

    LOBYTE(v9) = v10 ^ 1;
  }

  sub_213D9108C();
  v11 = v13[1];
  sub_213D9109C();
  sub_213D5E6F0(a1, v11, v8, v9 & 1, a3);

  return (*(v6 + 8))(v8, v5);
}

double sub_213D5E6F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v11 = *(a5 + 16);
  v59 = type metadata accessor for _DefaultAnnotatedMapContent(255, v11, *(a5 + 24), *(a5 + 32));
  v68 = sub_213D91C7C();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v58 = v11;
  v67 = sub_213D91C7C();
  v65 = *(v67 - 8);
  v16 = MEMORY[0x28223BE20](v67);
  v69 = &v58 - v17;
  v64 = a2;
  [a1 setDelegate_];
  v18 = *(v6 + 6);
  v19 = v6[1];
  v91 = *v6;
  v92 = v19;
  v93 = v6[2];
  *&v94 = v18;
  sub_213D2B188(v90);
  sub_213D5CE30(v90, v8);
  sub_213D5EC6C(a1, v8, a5);
  *&v91 = *(v6 + *(a5 + 48));
  v20 = sub_213D5ED3C(a1, &v91);
  sub_213D64778(v20, v21, v22);
  sub_213D90C1C();
  v97 = v86;
  v98 = v87;
  v99 = v88;
  v93 = v82;
  v94 = v83;
  v95 = v84;
  v96 = v85;
  v91 = v80;
  v92 = v81;
  v76 = v86;
  v77 = v87;
  v78 = v88;
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v75 = v85;
  v100 = v89;
  v79 = v89;
  v70 = v80;
  v71 = v81;
  isa = MapStyle.configuration()().super.isa;
  [a1 setPreferredConfiguration_];

  sub_213CEB3CC(&v91);
  v62 = a1;
  sub_213D5EDD8(a1, a5);
  v63 = a5;
  v24 = *(a5 + 44);
  v25 = v66;
  v26 = *(v66 + 16);
  v26(v15, v6 + v24, v68);
  v60 = *(v59 - 8);
  v27 = *(v60 + 48);
  v28 = v15;
  v29 = v15;
  v30 = v59;
  if (v27(v29, 1) == 1)
  {
    v31 = v28;
    v32 = v68;
    (*(v25 + 8))(v31, v68);
    (*(*(v58 - 8) + 56))(v69, 1, 1);
  }

  else
  {
    (*(v65 + 16))(v69, &v28[*(v30 + 56)], v67);
    (*(v60 + 8))(v28, v30);
    v32 = v68;
  }

  v33 = v6 + v24;
  v34 = v61;
  v26(v61, v33, v32);
  if ((v27)(v34, 1, v30) == 1)
  {
    v35 = v32;
    v36 = 0;
    v37 = 0;
    v38 = v66;
    v39 = v67;
  }

  else
  {
    v40 = &v34[*(v30 + 60)];
    v36 = *v40;
    v37 = v40[1];
    sub_213CD4E28(*v40, v37);
    v38 = v60;
    v35 = v30;
    v39 = v67;
  }

  v41 = v65;
  v42 = v69;
  (*(v38 + 8))(v34, v35);
  v43 = v64;
  sub_213D609A0(v62, v42, v36, v37);
  sub_213CCE520(v36, v37);
  (*(v41 + 8))(v42, v39);
  v44 = *(v6 + 1);
  v45 = *(v6 + 2);
  v46 = *(v6 + 3);
  v47 = *(v6 + 4);
  v48 = *(v6 + 5);
  v49 = *(v6 + 6);
  *&v80 = *v6;
  *(&v80 + 1) = v44;
  *&v81 = v45;
  *(&v81 + 1) = v46;
  *&v82 = v47;
  *(&v82 + 1) = v48;
  *&v83 = v49;
  sub_213D64710(v80, v44);
  sub_213D61D14(&v80);
  v50 = (v6 + *(v63 + 56));
  v52 = *v50;
  v51 = v50[1];
  v53 = v50[2];
  sub_213D646D0(*v50, v51);
  v54 = (v43 + *((*MEMORY[0x277D85000] & *v43) + 0x70));
  v55 = *v54;
  v56 = v54[1];
  *v54 = v52;
  v54[1] = v51;
  v54[2] = v53;
  return sub_213D65068(v55, v56);
}

void *sub_213D5EC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_213D5DFF0(a1);
  *a2 = result;
  return result;
}

id sub_213D5EC6C(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = [a1 setShowsUserLocation_];
  v9 = (v4 + *(a3 + 56));
  v10 = v9[1];
  if (v10)
  {
    v11 = v9[2];
    v16[1] = *v9;
    v16[2] = v10;
    v16[3] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EC510, qword_213D9A120);
    MEMORY[0x21604E7B0](v16, v12);
    if (v16[0] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v16[0] == 2);
    }

    if (v13 != 2 || *(v4 + 8) >> 62 == 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    return [a1 setUserTrackingMode:v15 animated:a2 & 1];
  }

  return result;
}

id sub_213D5ED3C(void *a1, unint64_t *a2)
{
  v4 = *a2;
  [a1 setScrollEnabled_];
  [a1 setZoomEnabled_];
  if (*(v2 + 8) >> 62)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 >> 2) & 1;
  }

  if (*(v2 + 8) >> 62)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v4 >> 3) & 1;
  }

  [a1 setRotateEnabled_];

  return [a1 setPitchEnabled_];
}

id sub_213D5EDD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v232 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  MEMORY[0x28223BE20](v5 - 8);
  v214 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v211 = &v188 - v8;
  MEMORY[0x28223BE20](v9);
  v208 = &v188 - v10;
  v219 = type metadata accessor for MapUserLocationButtonConfig(0);
  v228 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v213 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v212 = &v188 - v13;
  MEMORY[0x28223BE20](v14);
  v209 = &v188 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  MEMORY[0x28223BE20](v16 - 8);
  v205 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v200 = &v188 - v19;
  v203 = type metadata accessor for MapCompassConfig(0);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v206 = (&v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v201 = &v188 - v22;
  v218 = sub_213D90A6C();
  v224 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v210 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v217 = &v188 - v25;
  MEMORY[0x28223BE20](v26);
  v195 = &v188 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  MEMORY[0x28223BE20](v28 - 8);
  v197 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v192 = (&v188 - v31);
  MEMORY[0x28223BE20](v32);
  v190 = &v188 - v33;
  v216 = type metadata accessor for MapPitchToggleConfig(0);
  v220 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v196 = &v188 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v193 = &v188 - v36;
  MEMORY[0x28223BE20](v37);
  v191 = &v188 - v38;
  v39 = sub_213D9051C();
  v226 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v227 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  MEMORY[0x28223BE20](v41 - 8);
  v223 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v188 - v44;
  v46 = type metadata accessor for MapScaleViewConfig(0);
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v215 = (&v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v49);
  v51 = &v188 - v50;
  v52 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v52);
  v207 = &v188 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v204 = &v188 - v55;
  MEMORY[0x28223BE20](v56);
  v199 = &v188 - v57;
  MEMORY[0x28223BE20](v58);
  v198 = &v188 - v59;
  MEMORY[0x28223BE20](v60);
  v194 = &v188 - v61;
  MEMORY[0x28223BE20](v62);
  v189 = &v188 - v63;
  MEMORY[0x28223BE20](v64);
  v188 = &v188 - v65;
  MEMORY[0x28223BE20](v66);
  v222 = &v188 - v67;
  MEMORY[0x28223BE20](v68);
  v70 = &v188 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v188 - v72;
  v229 = a2;
  v231 = v3;
  sub_213D5D848(a2, &v188 - v72);
  v225 = v52;
  sub_213CE2C28(&v73[*(v52 + 20)], v45, &unk_27C8EBAE0, &unk_213D9DF40);
  v74 = *(v47 + 48);
  v75 = v74(v45, 1, v46);
  v76 = MEMORY[0x277CDF440];
  v230 = v39;
  if (v75 == 1)
  {
    v77 = sub_213D90D6C();
    sub_213D64EF0(v73, type metadata accessor for MapControlsConfig);
    v78 = v226;
    (*(v226 + 104))(&v51[*(v46 + 28)], *v76, v39);
    *(v51 + 1) = v77;
    *v51 = 512;
    if (v74(v45, 1, v46) != 1)
    {
      sub_213CD8330(v45, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D64EF0(v73, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v45, v51, type metadata accessor for MapScaleViewConfig);
    v78 = v226;
  }

  v79 = v229;
  v80 = sub_213D5DA30(v229);
  v81 = v215;
  if (*v51)
  {
    v82 = v80;
    if (v80 == 3)
    {
      v83 = v51[1];
      sub_213D64EF0(v51, type metadata accessor for MapScaleViewConfig);
      v84 = qword_213D9A328[v83];
    }

    else
    {
      sub_213D64EF0(v51, type metadata accessor for MapScaleViewConfig);
      v84 = qword_213D9A328[v82];
    }
  }

  else
  {
    sub_213D64EF0(v51, type metadata accessor for MapScaleViewConfig);
    v84 = 1;
  }

  [v232 _setScaleVisibility_];
  sub_213D5D848(v79, v70);
  v85 = v223;
  sub_213CE2C28(&v70[*(v225 + 20)], v223, &unk_27C8EBAE0, &unk_213D9DF40);
  v86 = v74(v85, 1, v46);
  v87 = v230;
  v88 = MEMORY[0x277CDF440];
  if (v86 == 1)
  {
    v89 = sub_213D90D6C();
    sub_213D64EF0(v70, type metadata accessor for MapControlsConfig);
    (*(v78 + 104))(v81 + *(v46 + 28), *v88, v87);
    *(v81 + 8) = v89;
    v90 = v223;
    *v81 = 512;
    v91 = v74(v90, 1, v46);
    v92 = v222;
    if (v91 != 1)
    {
      sub_213CD8330(v90, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D64EF0(v70, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v85, v81, type metadata accessor for MapScaleViewConfig);
    v92 = v222;
  }

  v223 = *(v79 + 64);
  v93 = v227;
  sub_213D486E8(v227);
  v94 = sub_213D4F514(v93);
  v95 = v93;
  v96 = v230;
  v221 = *(v78 + 8);
  v222 = (v78 + 8);
  v221(v95, v230);
  sub_213D64EF0(v81, type metadata accessor for MapScaleViewConfig);
  v97 = v232;
  [v232 _setScaleControlSize_];
  sub_213D5D848(v79, v92);
  v98 = v190;
  sub_213CE2C28(v92, v190, &qword_27C8EBAD8, &unk_213D98590);
  v100 = (v220 + 48);
  v99 = *(v220 + 6);
  v101 = v216;
  v102 = v99(v98, 1, v216);
  v103 = v191;
  v215 = v99;
  if (v102 == 1)
  {
    sub_213D90A5C();
    sub_213D64EF0(v92, type metadata accessor for MapControlsConfig);
    (*(v78 + 104))(&v103[v101[7]], *MEMORY[0x277CDF440], v96);
    v103[1] = 2;
    *&v103[v101[8]] = 0;
    *v103 = 0;
    if (v99(v98, 1, v101) != 1)
    {
      sub_213CD8330(v98, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v92, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v98, v103, type metadata accessor for MapPitchToggleConfig);
  }

  v104 = sub_213D5DA30(v79);
  if (*v103)
  {
    v105 = v104;
    if (v104 == 3)
    {
      v106 = v103[1];
      sub_213D64EF0(v103, type metadata accessor for MapPitchToggleConfig);
      v107 = qword_213D9A328[v106];
    }

    else
    {
      sub_213D64EF0(v103, type metadata accessor for MapPitchToggleConfig);
      v107 = qword_213D9A328[v105];
    }
  }

  else
  {
    sub_213D64EF0(v103, type metadata accessor for MapPitchToggleConfig);
    v107 = 1;
  }

  [v97 setPitchButtonVisibility_];
  v108 = v188;
  sub_213D5D848(v79, v188);
  v109 = v192;
  sub_213CE2C28(v108, v192, &qword_27C8EBAD8, &unk_213D98590);
  v110 = v215;
  v111 = v215(v109, 1, v101);
  v112 = v193;
  v220 = v100;
  if (v111 == 1)
  {
    sub_213D90A5C();
    sub_213D64EF0(v108, type metadata accessor for MapControlsConfig);
    (*(v78 + 104))(&v112[v101[7]], *MEMORY[0x277CDF440], v96);
    v112[1] = 2;
    *&v112[v101[8]] = 0;
    *v112 = 0;
    if (v110(v109, 1, v101) != 1)
    {
      sub_213CD8330(v109, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v108, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v109, v112, type metadata accessor for MapPitchToggleConfig);
  }

  v190 = *(v79 + 60);
  v113 = v195;
  sub_213D486C0(v195);
  v114 = v112;
  v115 = &v112[v101[6]];
  v116 = v217;
  sub_213D90A5C();
  v117 = sub_213D90A2C();
  v118 = v224;
  v120 = v224 + 8;
  v119 = *(v224 + 8);
  v121 = v218;
  v119(v116, v218);
  v124 = *(v118 + 16);
  v123 = v118 + 16;
  v122 = v124;
  if (v117)
  {
    v125 = v113;
  }

  else
  {
    v125 = v115;
  }

  v224 = v123;
  v191 = v122;
  (v122)(v116, v125, v121);
  v126 = v216;
  v127 = sub_213D8B784(v116, 1);
  v195 = v120;
  v192 = v119;
  v119(v113, v121);
  sub_213D64EF0(v114, type metadata accessor for MapPitchToggleConfig);
  [v232 _setPitchButtonBackgroundStyle_];
  v128 = v189;
  sub_213D5D848(v229, v189);
  v129 = v197;
  sub_213CE2C28(v128, v197, &qword_27C8EBAD8, &unk_213D98590);
  v130 = v215;
  if (v215(v129, 1, v126) == 1)
  {
    v131 = v196;
    sub_213D90A5C();
    sub_213D64EF0(v128, type metadata accessor for MapControlsConfig);
    v132 = v230;
    (*(v226 + 104))(&v131[*(v126 + 28)], *MEMORY[0x277CDF440], v230);
    v131[1] = 2;
    *&v131[*(v126 + 32)] = 0;
    *v131 = 0;
    v133 = v130(v129, 1, v126);
    v134 = v225;
    v135 = v203;
    v136 = v201;
    if (v133 != 1)
    {
      sub_213CD8330(v129, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D64EF0(v128, type metadata accessor for MapControlsConfig);
    v131 = v196;
    sub_213D64F50(v129, v196, type metadata accessor for MapPitchToggleConfig);
    v134 = v225;
    v135 = v203;
    v136 = v201;
    v132 = v230;
  }

  v137 = v227;
  sub_213D486E8(v227);
  v138 = sub_213CDF85C(v137);
  v221(v137, v132);
  sub_213D64EF0(v131, type metadata accessor for MapPitchToggleConfig);
  [v232 _setPitchButtonControlSize_];
  v139 = v194;
  v140 = v229;
  sub_213D5D848(v229, v194);
  v141 = v200;
  sub_213CE2C28(v139 + *(v134 + 28), v200, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D64EF0(v139, type metadata accessor for MapControlsConfig);
  v142 = *(v202 + 48);
  if (v142(v141, 1, v135) == 1)
  {
    v143 = v132;
    (*(v226 + 104))(&v136[*(v135 + 24)], *MEMORY[0x277CDF440], v132);
    *v136 = 512;
    if (v142(v141, 1, v135) != 1)
    {
      sub_213CD8330(v141, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v143 = v132;
    sub_213D64F50(v141, v136, type metadata accessor for MapCompassConfig);
  }

  sub_213D5DA30(v140);
  v144 = v225;
  if (*v136)
  {
    v145 = v143;
    v146 = sub_213D904DC() ^ 1;
  }

  else
  {
    v146 = 0;
    v145 = v143;
  }

  v147 = v232;
  sub_213D64EF0(v136, type metadata accessor for MapCompassConfig);
  [v147 setShowsCompass_];
  v148 = v198;
  sub_213D5D848(v140, v198);
  v149 = v205;
  sub_213CE2C28(v148 + *(v144 + 28), v205, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D64EF0(v148, type metadata accessor for MapControlsConfig);
  if (v142(v149, 1, v135) == 1)
  {
    v150 = v149;
    v151 = v206;
    (*(v226 + 104))(v206 + *(v135 + 24), *MEMORY[0x277CDF440], v145);
    *v151 = 512;
    v152 = v142(v150, 1, v135);
    v147 = v232;
    v153 = v151;
    v154 = v209;
    if (v152 != 1)
    {
      sub_213CD8330(v150, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v153 = v206;
    sub_213D64F50(v149, v206, type metadata accessor for MapCompassConfig);
    v154 = v209;
  }

  v155 = v227;
  sub_213D486E8(v227);
  v156 = v153;
  v157 = sub_213D652C4(v155);
  v221(v155, v145);
  sub_213D64EF0(v156, type metadata accessor for MapCompassConfig);
  [v147 setCompassViewSize_];
  v158 = v199;
  sub_213D5D848(v140, v199);
  v159 = v208;
  sub_213CE2C28(v158 + *(v144 + 24), v208, &qword_27C8EBAC8, &unk_213D98580);
  v160 = v228 + 48;
  v161 = *(v228 + 48);
  v162 = v219;
  v163 = v161(v159, 1, v219);
  v228 = v160;
  if (v163 == 1)
  {
    sub_213D90A5C();
    sub_213D64EF0(v158, type metadata accessor for MapControlsConfig);
    (*(v226 + 104))(&v154[*(v162 + 28)], *MEMORY[0x277CDF440], v145);
    v154[1] = 2;
    *&v154[*(v162 + 32)] = 0;
    *v154 = 0;
    v164 = v161(v159, 1, v162);
    v165 = v204;
    if (v164 != 1)
    {
      sub_213CD8330(v159, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v158, type metadata accessor for MapControlsConfig);
    sub_213D64F50(v159, v154, type metadata accessor for MapUserLocationButtonConfig);
    v165 = v204;
  }

  sub_213D5DA30(v140);
  if (*v154)
  {
    v166 = sub_213D904DC() ^ 1;
  }

  else
  {
    v166 = 0;
  }

  sub_213D64EF0(v154, type metadata accessor for MapUserLocationButtonConfig);
  [v232 setShowsUserTrackingButton_];
  sub_213D5D848(v140, v165);
  v167 = v211;
  sub_213CE2C28(v165 + *(v144 + 24), v211, &qword_27C8EBAC8, &unk_213D98580);
  v168 = v219;
  v169 = v161(v167, 1, v219);
  v220 = v161;
  if (v169 == 1)
  {
    v170 = v212;
    sub_213D90A5C();
    sub_213D64EF0(v165, type metadata accessor for MapControlsConfig);
    (*(v226 + 104))(&v170[v168[7]], *MEMORY[0x277CDF440], v230);
    v170[1] = 2;
    *&v170[v168[8]] = 0;
    *v170 = 0;
    if (v161(v167, 1, v168) != 1)
    {
      sub_213CD8330(v167, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v165, type metadata accessor for MapControlsConfig);
    v170 = v212;
    sub_213D64F50(v167, v212, type metadata accessor for MapUserLocationButtonConfig);
  }

  v171 = v210;
  sub_213D486C0(v210);
  v172 = &v170[v168[6]];
  v173 = v217;
  sub_213D90A5C();
  v174 = sub_213D90A2C();
  v175 = v218;
  v176 = v192;
  v192(v173, v218);
  if (v174)
  {
    v177 = v171;
  }

  else
  {
    v177 = v172;
  }

  (v191)(v173, v177, v175);
  v178 = sub_213D8B784(v173, 1);
  v176(v171, v175);
  sub_213D64EF0(v170, type metadata accessor for MapUserLocationButtonConfig);
  [v232 _setUserTrackingButtonBackgroundStyle_];
  v179 = v207;
  v180 = v229;
  sub_213D5D848(v229, v207);
  v181 = v214;
  sub_213CE2C28(v179 + *(v225 + 24), v214, &qword_27C8EBAC8, &unk_213D98580);
  v182 = v220;
  if (v220(v181, 1, v168) == 1)
  {
    v183 = v213;
    sub_213D90A5C();
    sub_213D64EF0(v179, type metadata accessor for MapControlsConfig);
    (*(v226 + 104))(&v183[v168[7]], *MEMORY[0x277CDF440], v230);
    v183[1] = 2;
    *&v183[v168[8]] = 0;
    *v183 = 0;
    if (v182(v181, 1, v168) != 1)
    {
      sub_213CD8330(v181, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D64EF0(v179, type metadata accessor for MapControlsConfig);
    v183 = v213;
    sub_213D64F50(v181, v213, type metadata accessor for MapUserLocationButtonConfig);
  }

  v184 = v227;
  sub_213D486E8(v227);
  v185 = sub_213D83E18(v184);
  v221(v184, v230);
  sub_213D64EF0(v183, type metadata accessor for MapUserLocationButtonConfig);
  v186 = v232;
  [v232 _setUserTrackingControlSize_];
  sub_213D5D6E4(v180);
  LOBYTE(v185) = sub_213D904DC();
  sub_213D5D6E4(v180);
  [v186 _setShowsAppleLogo_force_];
  return [v186 setShowsAttribution_];
}

uint64_t sub_213D609A0(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v5 = v4;
  v118 = a4;
  v125 = a3;
  v126 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v115 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v111 = *(*(v115 + 8) + 8);
  v10 = *(v111 + 8);
  v11 = *((v8 & v7) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v114 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v93 - v14;
  v15 = swift_checkMetadataState();
  v124 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v103 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = v18;
  v128 = &v93 - v19;
  v20 = sub_213D91C7C();
  MEMORY[0x28223BE20](v20 - 8);
  v120 = &v93 - v21;
  v113 = v10;
  v123 = swift_getAssociatedTypeWitness();
  v100 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v93 - v22;
  v23 = sub_213D91C7C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v116 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v112 = &v93 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v93 - v29;
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v32);
  v110 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v102 = &v93 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v93 - v38;
  (*(v24 + 16))(v30, a2, v23, v37);
  v40 = *(v31 + 48);
  if (v40(v30, 1, v11) == 1)
  {
    (*(v24 + 8))(v30, v23);
LABEL_7:
    sub_213D628F8(v126);
    v47 = v116;
    (*(v31 + 56))(v116, 1, 1, v11);
    sub_213D61E74(v47);
    v48 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
    v49 = *v48;
    v50 = v48[1];
    *v48 = 0;
    v48[1] = 0;
    return sub_213CCE520(v49, v50);
  }

  v109 = v23;
  v117 = v9;
  v41 = *(v31 + 32);
  v41(v39, v30, v11);
  if (!v125)
  {
    (*(v31 + 8))(v39, v11);
    goto LABEL_7;
  }

  v97 = v39;
  v98 = v31;
  v42 = v112;
  sub_213D61DB4(v112);
  if (v40(v42, 1, v11) == 1)
  {
    v43 = *(v24 + 8);
    v44 = v118;

    v43(v42, v109);
    v45 = v11;
    v46 = v98;
LABEL_12:
    v74 = v97;
    v75 = *(v46 + 16);
    v75(v110, v97, v45);
    v76 = sub_213D91ACC();
    v77 = v125;
    sub_213D62B54(v126, v76, v125, v44);

    v78 = v116;
    v75(v116, v74, v45);
    (*(v46 + 56))(v78, 0, 1, v45);
    sub_213D61E74(v78);
    v79 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
    v80 = *v79;
    v81 = v79[1];
    *v79 = v77;
    v79[1] = v44;

    sub_213CCE520(v80, v81);
    (*(v46 + 8))(v74, v45);
    v49 = v77;
    v50 = v44;
    return sub_213CCE520(v49, v50);
  }

  v51 = v102;
  v41(v102, v42, v11);

  v45 = v11;
  if (sub_213D91B7C() < 1)
  {
    v46 = v98;
    (*(v98 + 8))(v51, v11);
    v44 = v118;
    goto LABEL_12;
  }

  v52 = v127;
  v132 = sub_213D9181C();
  v54 = type metadata accessor for AnnotationBridge(0, v52, v117, v53);
  v55 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = v54;
  v111 = AssociatedConformanceWitness;
  v131 = sub_213D9180C();
  v57 = *(v98 + 16);
  v95 = v98 + 16;
  v94 = v57;
  v57(v110, v97, v11);
  sub_213D919AC();
  v99 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v101 = v11;
  v58 = swift_getAssociatedConformanceWitness();
  v59 = v120;
  v110 = v58;
  sub_213D91C8C();
  v60 = *(v124 + 48);
  v109 = v124 + 48;
  v108 = v60;
  v61 = v60(v59, 1, v52);
  v62 = v128;
  if (v61 != 1)
  {
    v107 = *(v124 + 32);
    ++v106;
    v104 = (v124 + 8);
    v124 += 32;
    v96 = (v124 - 16);
    v105 = v5;
    v107(v128, v59, v52);
    while (1)
    {
      v85 = v119;
      sub_213D91D9C();
      swift_beginAccess();

      sub_213D9188C();

      v86 = *v106;
      (*v106)(v85, v55);
      v87 = v55;
      v88 = v129;
      if (v129)
      {
        sub_213D649C4(v129, v62, v125, v118, v126);
        v89 = v114;
        v113 = v86;
        sub_213D91D9C();
        v129 = v88;
        sub_213D9187C();
        v90 = v88;
        sub_213D9189C();
        sub_213D91D9C();
        swift_beginAccess();
        v52 = v127;
        sub_213D9183C();
        v91 = v89;
        v62 = v128;
        v113(v91, v87);
        v92 = v130;
        swift_endAccess();
      }

      else
      {
        (*v96)(v103, v62, v52);
        sub_213D91ABC();
        sub_213D91A8C();
      }

      (*v104)(v62, v52);
      v83 = v120;
      sub_213D91C8C();
      v84 = v108(v83, 1, v52);
      v55 = AssociatedTypeWitness;
      v5 = v105;
      if (v84 == 1)
      {
        break;
      }

      v107(v62, v83, v52);
    }
  }

  (*(v100 + 8))(v122, v123);
  v63 = v126;
  sub_213D628F8(v126);
  sub_213D61F78(v131);
  v64 = v125;
  v65 = v118;
  sub_213D62B54(v63, v132, v125, v118);

  v66 = v116;
  v67 = v97;
  v68 = v101;
  v94(v116, v97, v101);
  v69 = v98;
  (*(v98 + 56))(v66, 0, 1, v68);
  sub_213D61E74(v66);
  sub_213CD4E28(v64, v65);
  v70 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x80));
  v71 = *v70;
  v72 = v70[1];
  *v70 = v64;
  v70[1] = v65;
  sub_213CCE520(v71, v72);
  v73 = *(v69 + 8);
  v73(v102, v68);
  v73(v67, v68);
  v49 = v64;
  v50 = v65;
  return sub_213CCE520(v49, v50);
}

uint64_t sub_213D61764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_213D61818(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

id sub_213D618D4()
{
  result = [v0 coordinate];
  v3 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  if (vabdd_f64(v4, *v3) >= 0.00000000999999994 || vabdd_f64(v2, v3[1]) >= 0.00000000999999994)
  {

    return [v0 setCoordinate_];
  }

  return result;
}

id sub_213D61970(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
  *v3 = *a1;
  v3[16] = v2;
  *(v3 + 24) = *(a1 + 24);

  return sub_213D618D4();
}

void sub_213D61A58(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70));
  *v3 = a1;
  v3[1] = a2;
}

id sub_213D61AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AnnotationBridge(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_213D61B38(char *a1)
{
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  return result;
}

uint64_t sub_213D61C08(uint64_t a1)
{
  result = sub_213D91C7C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213D61CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return sub_213D650AC(v3, v4);
}

double sub_213D61D14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v5 = *v3;
  v4 = *(v3 + 1);
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v6;
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 6) = v2;
  return sub_213D64FB8(v5, v4);
}

double sub_213D61D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70));
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  return sub_213D65068(v5, v6);
}

uint64_t sub_213D61DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_213D91C7C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_213D61E74(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_213D91C7C();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_213D61F3C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4, v5);
}

uint64_t sub_213D61F78(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_213D61FEC(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v32 - v9;
  type metadata accessor for AnnotationBridge(0, AssociatedTypeWitness, *((v5 & v4) + 0x60), v11);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    return 0;
  }

  v13 = v2 + *(v6 + 128);
  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  v15 = *(v13 + 1);
  v16 = v12;
  sub_213D61764(v10);
  sub_213CD4E28(v14, v15);
  swift_unknownObjectRetain();
  v14(&v33, v10);
  v18 = v33;
  v17 = v34;
  v19 = v37;
  switch(v35)
  {
    case 2:
      v32 = v36;
      v27 = sub_213D9190C();
      v28 = [a1 dequeueReusableAnnotationViewWithIdentifier:v27 forAnnotation:v16];

      type metadata accessor for SwiftUIAnnotationView();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {

        sub_213CCE520(v14, v15);
        swift_unknownObjectRelease();

        (*(v8 + 8))(v10, AssociatedTypeWitness);
        return v22;
      }

      v33 = v18;
      v34 = v17;
      v35 = 2;
      v29 = v32;
      v36 = v32;
      v37 = v19;

      v30 = v28;
      v29(v22, &v33);

      sub_213CCE520(v14, v15);
      swift_unknownObjectRelease();

      (*(v8 + 8))(v10, AssociatedTypeWitness);

      goto LABEL_16;
    case 1:
      v32 = v36;
      v24 = sub_213D9190C();
      v21 = [a1 dequeueReusableAnnotationViewWithIdentifier:v24 forAnnotation:v16];

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v33 = v18;
        v34 = v17;
        v35 = 1;
        v25 = v32;
        v36 = v32;
        v37 = v19;

        v21 = v21;
        v25(v22, &v33);

        LODWORD(v26) = 1148846080;
        [v22 setDisplayPriority_];
      }

      goto LABEL_11;
    case 0:
      v32 = v36;
      v20 = sub_213D9190C();
      v21 = [a1 dequeueReusableAnnotationViewWithIdentifier:v20 forAnnotation:v16];

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v33 = v18;
        v34 = v17;
        v35 = 0;
        v23 = v32;
        v36 = v32;
        v37 = v19;

        v21 = v21;
        v23(v22, &v33);
      }

LABEL_11:

      goto LABEL_15;
  }

  v22 = 0;
LABEL_15:
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  sub_213CCE520(v14, v15);
  swift_unknownObjectRelease();

  if (v22)
  {
LABEL_16:
    [v22 setEnabled_];
  }

  return v22;
}

id sub_213D624B8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_213D61FEC(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

double sub_213D62530(void *a1)
{
  sub_213D61CC8(&v5);
  v3 = v6;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v4 = v5;
    sub_213D2B29C(a1);
    return sub_213D64FB8(v4, v3);
  }

  return result;
}

void sub_213D625DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D62530(v4);
}

void sub_213D62644(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_213D650C0(a4);
}

id sub_213D62704()
{
  v1 = type metadata accessor for MapViewCoordinator(0, *((*MEMORY[0x277D85000] & *v0) + 0x50), *((*MEMORY[0x277D85000] & *v0) + 0x58), *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_213D62788(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = &a1[*((*MEMORY[0x277D85000] & *a1) + 0x68)];
  sub_213D64FB8(*v3, *(v3 + 1));
  v4 = &a1[*((*v2 & *a1) + 0x70)];
  sub_213D65068(*v4, v4[1]);
  v5 = *((*v2 & *a1) + 0x78);
  v6 = sub_213D91C7C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = &a1[*((*v2 & *a1) + 0x80)];
  sub_213CCE520(*v7, v7[1]);
}

uint64_t sub_213D628F8(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *((v4 & v3) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotationBridge(0, AssociatedTypeWitness, v7, v9);
  swift_getAssociatedConformanceWitness();
  v12 = v6;
  sub_213D9185C();

  swift_getWitnessTable();
  sub_213D91ACC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  sub_213D91E8C();

  v10 = sub_213D919EC();

  [a1 removeAnnotations_];

  swift_beginAccess();
  sub_213D9187C();
  sub_213D9186C();
  return swift_endAccess();
}

void sub_213D62B54(void *a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, char *), uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v24 - v9;
  v10 = swift_checkMetadataState();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  if (sub_213D91A7C() >= 1)
  {
    v24 = v11;
    v34 = type metadata accessor for AnnotationBridge(0, v10, v8, v14);
    v44 = sub_213D9181C();
    if (sub_213D91A7C())
    {
      v25 = a1;
      v15 = 0;
      v27 = *((*v7 & *v35) + 0x88);
      v29 = (v36 + 16);
      v26 = (v36 + 8);
      v28 = a2;
      while (1)
      {
        v16 = sub_213D91A5C();
        sub_213D91A0C();
        if (v16)
        {
          (*(v36 + 16))(v13, a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v15, v10);
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v22 = sub_213D91DAC();
          if (v24 != 8)
          {
            __break(1u);
            return;
          }

          *&v41 = v22;
          (*v29)(v13, &v41, v10);
          swift_unknownObjectRelease();
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            a1 = v25;
            break;
          }
        }

        v37 = v17;
        v32(&v41, v13);
        v38 = v41;
        v39 = v42;
        v40 = v43;
        v20 = sub_213D64EA4(v13, &v38, v18, v19);
        sub_213D91D9C();
        *&v38 = v20;
        swift_beginAccess();
        swift_getAssociatedConformanceWitness();
        sub_213D9187C();
        v21 = v20;
        a2 = v28;
        sub_213D9189C();
        swift_endAccess();
        *&v41 = v21;
        sub_213D91ABC();
        sub_213D91A8C();
        (*v26)(v13, v10);
        ++v15;
        if (v37 == sub_213D91A7C())
        {
          goto LABEL_12;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    sub_213D91E8C();

    v23 = sub_213D919EC();

    [a1 addAnnotations_];
  }
}

id sub_213D631C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _SwiftUIMKMapView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_213D6321C(void *a1)
{
  type metadata accessor for _DefaultAnnotatedMapContent(255, a1[2], a1[3], a1[4]);
  sub_213D91C7C();
  if (v1 <= 0x3F)
  {
    sub_213D63D90(319, &qword_27C8EC508, &unk_27C8EC510, qword_213D9A120, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_213D63D3C(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
      if (v3 <= 0x3F)
      {
        sub_213D63D3C(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
        if (v4 <= 0x3F)
        {
          sub_213D63CEC();
          if (v5 <= 0x3F)
          {
            sub_213D63D3C(319, &unk_27C8EBE10, type metadata accessor for MapControlsConfig);
            if (v6 <= 0x3F)
            {
              sub_213D63D90(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750, MEMORY[0x277CDF468]);
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

uint64_t sub_213D63400(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v41 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v6 = 2147483646;
  }

  v7 = v6 - 1;
  if (v6 - 1 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v6 - 1;
  }

  v9 = *(sub_213D90A6C() - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v9 + 64);
  }

  v42 = v12;
  v13 = *(sub_213D9051C() - 8);
  v14 = *(v13 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v13 + 64);
  }

  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  v19 = v17 | 7;
  v20 = v16 | 7 | v17;
  v21 = *(v4 + 80);
  if (v5)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  v18 = ((v14 + ((v11 + v17 + ((v16 + 2) & ~v16)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = v14 + ((v17 + 2) & ~v17) + ((v18 + v17 + ((v20 + v14 + ((v17 + 16) & ~v17) + ((v18 + v19) & ~v19)) & ~v20)) & ~v17) + 6;
  if (v23 <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = v23;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v21 | 7;
  v26 = ((v22 + *(v4 + 64) + ((v21 + 89) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a2)
  {
    goto LABEL_45;
  }

  v27 = ((v24 + ((v20 + ((v15 + ((v42 + v19 + ((v16 + ((v21 + 56) & ~v25) + v26 + 40) & ~(v16 | 7)) + 1) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v27 <= 3)
  {
    v28 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v28 = 2;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v31 = *&a1[v27];
      if (!*&a1[v27])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v31 = *&a1[v27];
      if (!v31)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    v33 = (v31 - 1) << (8 * v27);
    if (v27 <= 3)
    {
      v34 = *a1;
    }

    else
    {
      v33 = 0;
      v34 = *a1;
    }

    return v8 + (v34 | v33) + 1;
  }

  if (v30)
  {
    v31 = a1[v27];
    if (a1[v27])
    {
      goto LABEL_41;
    }
  }

LABEL_45:
  v35 = &a1[v25 + 56] & ~v25;
  if (v7 < 0x7FFFFFFE)
  {
    v39 = *(v35 + v26 + 24);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    if ((v39 + 1) >= 2)
    {
      return v39;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v36 = (v35 + 79) & 0xFFFFFFFFFFFFFFF8;
    if (v41 > 0x7FFFFFFE)
    {
      v38 = (*(v4 + 48))((v21 + v36 + 17) & ~v21, v5, v40);
      LODWORD(v37) = v38 - 1;
    }

    else
    {
      v37 = *(v36 + 8);
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      v38 = v37 + 1;
    }

    if (v38 < 2)
    {
      LODWORD(v37) = 0;
    }

    if (v37 >= 2)
    {
      return (v37 - 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_213D637C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v50 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v46 = v7;
  if (v7 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  v47 = v7;
  v8 = v7 - 1;
  if (v7 - 1 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v7 - 1;
  }

  v10 = *(sub_213D90A6C() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v14 = sub_213D9051C();
  v15 = v6;
  v16 = 0;
  v17 = *(v14 - 8);
  v18 = *(v17 + 64);
  v19 = v5;
  if (v18 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v17 + 64);
  }

  v21 = *(v11 + 80);
  v22 = *(v17 + 80);
  v24 = v22 | 7;
  v25 = v21 | 7 | v22;
  v26 = *(v50 + 80);
  if (v15)
  {
    v28 = *(v19 + 64);
  }

  else
  {
    v28 = *(v19 + 64) + 1;
  }

  v29 = ((v26 + 89) & ~v26) + v28;
  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v31 = (v25 + ((v20 + ((v13 + v24 + ((v21 + ((v26 + 56) & ~(v26 | 7)) + v30 + 40) & ~(v21 | 7)) + 1) & ~v24) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v25;
  v23 = ((v18 + ((v12 + v22 + ((v21 + 2) & ~v21)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v32 = v18 + ((v22 + 2) & ~v22) + ((v23 + v22 + ((v25 + v18 + ((v22 + 16) & ~v22) + ((v23 + v24) & ~v24)) & ~v25)) & ~v22) + 6;
  if (v32 <= 8)
  {
    v32 = 8;
  }

  v33 = ((v32 + v31 + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v16 = v35;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        *&a1[v33] = 0;
        if (!a2)
        {
          return;
        }

LABEL_50:
        v27 = v26 | 7;
        v38 = (&a1[v27 + 56] & ~v27);
        if (v8 <= 0x7FFFFFFD)
        {
          v41 = &v38[v30];
          if (a2 > 0x7FFFFFFE)
          {
            v41[2] = 0;
            v41[3] = 0;
            v41[4] = 0;
            *(v41 + 4) = a2 - 0x7FFFFFFF;
          }

          else
          {
            v41[3] = a2;
          }

          return;
        }

        v39 = ((v29 + 7) & 0xFFFFFFF8) + 16;
        if (v8 >= a2)
        {
          if (a2 >= v47)
          {
            if (v39)
            {
              bzero(v38, v39);
              *v38 = a2 - v47;
            }

            return;
          }

          v42 = (v38 + 79) & 0xFFFFFFFFFFFFFFF8;
          if (v46 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFD)
            {
              *v42 = 0;
              *(v42 + 8) = 0;
              *(v42 + 16) = 0;
              *v42 = a2 - 2147483646;
            }

            else
            {
              *(v42 + 8) = a2 + 1;
            }

            return;
          }

          v38 = ((v26 + v42 + 17) & ~v26);
          if (a2 < v46)
          {
            v43 = *(v50 + 56);

            v43(v38, a2 + 2);
            return;
          }

          if (v28 <= 3)
          {
            v44 = ~(-1 << (8 * v28));
          }

          else
          {
            v44 = -1;
          }

          if (!v28)
          {
            return;
          }

          v40 = v44 & (a2 - v46);
          if (v28 <= 3)
          {
            v45 = v28;
          }

          else
          {
            v45 = 4;
          }

          bzero(v38, v28);
          if (v45 <= 2)
          {
            if (v45 == 1)
            {
              *v38 = v40;
            }

            else
            {
              *v38 = v40;
            }

            return;
          }

          if (v45 == 3)
          {
            *v38 = v40;
            v38[2] = BYTE2(v40);
            return;
          }
        }

        else
        {
          if (!v39)
          {
            return;
          }

          v40 = a2 - v47;
          bzero((&a1[v27 + 56] & ~v27), v39);
        }

        *v38 = v40;
        return;
      }

      *&a1[v33] = 0;
    }

    else if (v16)
    {
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v36 = ~v9 + a2;
  bzero(a1, v33);
  if (v33 <= 3)
  {
    v37 = (v36 >> 8) + 1;
  }

  else
  {
    v37 = 1;
  }

  if (v33 <= 3)
  {
    *a1 = v36;
    if (v16 > 1)
    {
LABEL_38:
      if (v16 == 2)
      {
        *&a1[v33] = v37;
      }

      else
      {
        *&a1[v33] = v37;
      }

      return;
    }
  }

  else
  {
    *a1 = v36;
    if (v16 > 1)
    {
      goto LABEL_38;
    }
  }

  if (v16)
  {
    a1[v33] = v37;
  }
}

void sub_213D63CEC()
{
  if (!qword_27C8EBE00)
  {
    v0 = sub_213D9052C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8EBE00);
    }
  }
}

void sub_213D63D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213D63D90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_213D63E10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_213D63EDC(v11, 0, 0, 1, a1, a2);
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
    sub_213D1F124(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_213D63EDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_213D63FE8(a5, a6);
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
    result = sub_213D91DDC();
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

void *sub_213D63FE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_213D64034(a1, a2);
  sub_213D64164(&unk_282637310);
  return v3;
}

void *sub_213D64034(uint64_t a1, unint64_t a2)
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

  v6 = sub_213D64250(v5, 0);
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

  result = sub_213D91DDC();
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
        v10 = sub_213D9197C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_213D64250(v10, 0);
        result = sub_213D91D7C();
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

uint64_t sub_213D64164(uint64_t result)
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

  result = sub_213D642C4(result, v11, 1, v3);
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

void *sub_213D64250(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC530, &qword_213D9A228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_213D642C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC530, &qword_213D9A228);
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

id sub_213D643B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  v7 = &v3[*((*MEMORY[0x277D85000] & *v3) + 0x68)];
  *v7 = xmmword_213D99FF0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 6) = 0;
  v8 = &v3[*((*v5 & *v3) + 0x70)];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v9 = *((*v5 & *v3) + 0x78);
  v10 = *((v6 & v4) + 0x50);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = &v3[*((*v5 & *v3) + 0x80)];
  *v11 = 0;
  v11[1] = 0;
  v12 = *((*v5 & *v3) + 0x88);
  v13 = *((v6 & v4) + 0x60);
  v20 = *((v6 & v4) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotationBridge(0, AssociatedTypeWitness, v13, v15);
  swift_getAssociatedConformanceWitness();
  *&v3[v12] = sub_213D9180C();
  swift_beginAccess();
  v16 = sub_213D91C7C();
  (*(*(v16 - 8) + 24))(&v3[v9], a1, v16);
  swift_endAccess();
  v17 = *v11;
  v18 = v11[1];
  *v11 = a2;
  v11[1] = a3;
  sub_213CD4E28(a2, a3);
  sub_213CCE520(v17, v18);
  v24.receiver = v3;
  v24.super_class = type metadata accessor for MapViewCoordinator(0, v10, v20, v13);
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_213D646D0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_213D64710(uint64_t result, unint64_t a2)
{
  if ((a2 >> 62) <= 2)
  {
  }

  return v2;
}

unint64_t sub_213D64778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EC528;
  if (!qword_27C8EC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC528);
  }

  return result;
}

id sub_213D647CC()
{
  type metadata accessor for _SwiftUIMKMapView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setPitchEnabled_];
  [v0 setRotateEnabled_];
  [v0 setMapType_];
  [v0 setPointOfInterestFilter_];
  [v0 setCameraZoomRange_];
  [v0 setCameraBoundary_];
  [v0 setShowsBuildings_];
  [v0 setShowsTraffic_];
  sub_213CE2B34(0, &unk_27C8EC538, 0x277CD4EF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_213D9190C();
  [v0 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v2];

  type metadata accessor for SwiftUIAnnotationView();
  v3 = swift_getObjCClassFromMetadata();
  v4 = sub_213D9190C();
  [v0 registerClass:v3 forAnnotationViewWithReuseIdentifier:v4];

  sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_213D9190C();
  [v0 registerClass:v5 forAnnotationViewWithReuseIdentifier:v6];

  return v0;
}

void sub_213D649C4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4, void *a5)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v24[-v10 - 8];
  (*(v12 + 16))(&v24[-v10 - 8], v9);
  sub_213D61818(v11);
  v13 = [a5 viewForAnnotation_];
  if (v13)
  {
    v14 = v13;
    a3(&v28, a2);
    v25 = v28;
    v26 = v29;
    v27 = v30;
    sub_213D64C68(&v28, v24);
    sub_213D61970(&v25);
    if (v29 == 2)
    {
      type metadata accessor for SwiftUIAnnotationView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v20 = swift_allocObject();
        v21 = v29;
        *(v20 + 16) = v28;
        *(v20 + 32) = v21;
        *(v20 + 48) = v30;
        *(v20 + 56) = v19;
        sub_213D64C68(&v28, &v25);
        v22 = v14;
        sub_213D905AC();
        sub_213D64CC4(&v28);

        return;
      }
    }

    else if (v29 <= 1u)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = *(&v29 + 1);
        v25 = v28;
        v26 = v29;
        v27 = v30;
        sub_213D64C68(&v28, v24);
        v17(v16, &v25);
        sub_213D64CC4(&v28);
LABEL_9:

        sub_213D64CC4(&v28);
        return;
      }
    }

    [a5 removeAnnotation_];
    [a5 addAnnotation_];
    goto LABEL_9;
  }
}

uint64_t sub_213D64D18()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  v3 = *(v0 + 56);
  v6 = *(v0 + 48);
  return v1(v3, v5);
}

id sub_213D64D60(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000];
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  (*(*(v10 - 8) + 16))(&v2[*((*MEMORY[0x277D85000] & *v2) + 0x60)], a1, v10);
  v11 = &v2[*((*v5 & *v2) + 0x68)];
  *v11 = v7;
  *(v11 + 1) = v8;
  v11[16] = v9;
  *(v11 + 24) = *(a2 + 3);
  v12 = &v2[*((*v5 & *v2) + 0x70)];
  *v12 = v7;
  *(v12 + 1) = v8;
  v14 = type metadata accessor for AnnotationBridge(0, v10, *((v6 & v4) + 0x58), v13);
  v16.receiver = v2;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_213D64EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D64F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_213D64FB8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_213D64FCC(a1, a2);
  }

  return result;
}

double sub_213D64FCC(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 2)
  {
  }

  return result;
}

double sub_213D65068(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_213D650AC(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_213D64710(result, a2);
  }

  return result;
}

double sub_213D650C0(uint64_t a1)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70));
  v3 = v2[1];
  if (v3)
  {
    v5 = *v2;
    v6 = v2[2];
    v9 = *v2;
    v10 = v3;
    v11 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EC510, qword_213D9A120);
    MEMORY[0x21604E7B0](&v8);
    if (v8 != a1)
    {
      v9 = v5;
      v10 = v3;
      v11 = v6;
      v8 = a1;
      sub_213D915FC();
    }
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_213D65240(double a1)
{
  v1 = 90.0;
  if (a1 <= 90.0)
  {
    v1 = a1;
  }

  if (a1 >= -90.0)
  {
    return v1;
  }

  else
  {
    return -90.0;
  }
}

uint64_t sub_213D652C4(uint64_t a1)
{
  v25 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *(type metadata accessor for MapCompassConfig(0) + 24);
  v13 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v11, *MEMORY[0x277CDF440], v2);
  v14 = sub_213D9050C();
  v24 = *(v3 + 8);
  v24(v11, v2);
  v15 = *(v3 + 16);
  v16 = (v3 + 88);
  if (v14)
  {
    v15(v8, v25, v2);
    v17 = (*v16)(v8, v2);
    if (v17 == *MEMORY[0x277CDF418] || v17 == *MEMORY[0x277CDF438] || v17 == v13)
    {
      return 1;
    }

    if (v17 == *MEMORY[0x277CDF420])
    {
      return 2;
    }
  }

  else
  {
    v15(v5, v1 + v12, v2);
    v21 = (*v16)(v5, v2);
    if (v21 == *MEMORY[0x277CDF418] || v21 == *MEMORY[0x277CDF438] || v21 == v13)
    {
      return 1;
    }

    v8 = v5;
    if (v21 == *MEMORY[0x277CDF420])
    {
      return 2;
    }
  }

  v24(v8, v2);
  return 1;
}

uint64_t sub_213D65538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213CE2C28(v2, &v14 - v9, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9051C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213D65738()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapCompass(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_213D65890()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapCompass(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_213D659E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  return sub_213D9050C();
}

uint64_t MapCompass.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapCompass(0);
  v7 = a3 + v6[5];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  v11 = a3 + v6[8];
  *v11 = a1;
  v11[8] = a2 & 1;
  return result;
}

uint64_t MapCompass.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC558, &qword_213D9A3F0);
  MEMORY[0x28223BE20](v47);
  v41 = &v39 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC560, &qword_213D9A3F8);
  MEMORY[0x28223BE20](v44);
  v46 = &v39 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v45);
  v40 = &v39 - v4;
  v5 = type metadata accessor for MapControlsConfig(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213D9051C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapCompassConfig(0);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = sub_213D65890();
  sub_213D65538(v12);
  if (v20 == 3)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v16[1] = v21;
  v22 = v42;
  (*(v10 + 32))(&v16[*(v42 + 24)], v12, v9);
  *v16 = 1;
  sub_213D668B4(v16, v19);
  v23 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = v6[7];
  v25 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v25 - 8) + 56))(&v8[v24], 1, 1, v25);
  v26 = v6[8];
  v27 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v27 - 8) + 56))(&v8[v26], 1, 1, v27);
  v28 = v6[9];
  sub_213D66A40(v19, &v8[v28], type metadata accessor for MapCompassConfig);
  (*(v43 + 56))(&v8[v28], 0, 1, v22);
  *&v8[v6[10]] = 2;
  *&v8[v6[11]] = 2;
  *&v8[v6[12]] = 2;
  if (sub_213D65738())
  {
    v29 = sub_213D9149C();
    v30 = v40;
    sub_213D66A40(v8, &v40[*(v45 + 36)], type metadata accessor for MapControlsConfig);
    *v30 = v29;
    v31 = &qword_27C8EA1B8;
    v32 = &qword_213D94B50;
    sub_213CE2C28(v30, v46, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v33 = type metadata accessor for _MapCompass(0);
    v30 = v41;
    sub_213D66A40(v19, &v41[*(v33 + 24)], type metadata accessor for MapCompassConfig);
    v34 = (v1 + *(type metadata accessor for MapCompass(0) + 32));
    v35 = *v34;
    v36 = *(v34 + 8);
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    *(v30 + 16) = v35;
    *(v30 + 24) = v36;
    v37 = v46;
    *(v30 + *(v47 + 36)) = 257;
    v31 = &qword_27C8EC558;
    v32 = &qword_213D9A3F0;
    sub_213CE2C28(v30, v37, &qword_27C8EC558, &qword_213D9A3F0);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D66938();
  sub_213D90E5C();
  sub_213CD8330(v30, v31, v32);
  sub_213D669E0(v8, type metadata accessor for MapControlsConfig);
  return sub_213D669E0(v19, type metadata accessor for MapCompassConfig);
}

uint64_t sub_213D66140()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213D66294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D66E9C(qword_27C8EC5B8, &unk_213D9A4CC);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D66314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D66E9C(qword_27C8EC5B8, &unk_213D9A4CC);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D66394(uint64_t a1)
{
  sub_213D66E9C(qword_27C8EC5B8, &unk_213D9A4CC);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D663D8()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v0 + 24) & 1) == 0)
  {
    v6 = *(v0 + 16);
    v7 = sub_213D66140();
    if (*(v7 + 16) && (v8 = sub_213CE212C(v6), (v9 & 1) != 0))
    {
      sub_213CE2A1C(*(v7 + 56) + 8 * v8, v22);

      sub_213CE2A78(v22, v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = [objc_opt_self() compassButtonWithMapView_];

        sub_213CE2AD4(v23);
        goto LABEL_8;
      }

      sub_213CE2AD4(v23);
    }

    else
    {
    }
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CD4DB8]) init];
LABEL_8:
  v13 = v1 + *(type metadata accessor for _MapCompass(0) + 24);
  v14 = qword_213D9A5B0[*(v13 + 1)];
  v15 = v12;
  [v15 setCompassVisibility_];
  v16 = type metadata accessor for MapCompassConfig(0);
  (*(v3 + 16))(v5, v13 + *(v16 + 24), v2);
  v17 = (*(v3 + 88))(v5, v2);
  if (v17 == *MEMORY[0x277CDF418] || v17 == *MEMORY[0x277CDF438] || v17 == *MEMORY[0x277CDF440])
  {
    goto LABEL_18;
  }

  if (v17 != *MEMORY[0x277CDF420])
  {
    (*(v3 + 8))(v5, v2);
LABEL_18:
    v20 = 1;
    goto LABEL_19;
  }

  v20 = 2;
LABEL_19:
  [v15 setCompassSize_];

  return v15;
}

id sub_213D66654(void *a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v1 + 24) & 1) == 0)
  {
    v8 = *(v1 + 16);
    v9 = sub_213D66140();
    if (*(v9 + 16) && (v10 = sub_213CE212C(v8), (v11 & 1) != 0))
    {
      sub_213CE2A1C(*(v9 + 56) + 8 * v10, v20);

      sub_213CE2A78(v20, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      [a1 setMapView_];

      sub_213CE2AD4(v21);
    }

    else
    {
    }
  }

  v13 = v2 + *(type metadata accessor for _MapCompass(0) + 24);
  [a1 setCompassVisibility_];
  v14 = type metadata accessor for MapCompassConfig(0);
  (*(v5 + 16))(v7, v13 + *(v14 + 24), v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 == *MEMORY[0x277CDF418] || v15 == *MEMORY[0x277CDF438] || v15 == *MEMORY[0x277CDF440])
  {
    goto LABEL_16;
  }

  if (v15 != *MEMORY[0x277CDF420])
  {
    (*(v5 + 8))(v7, v4);
LABEL_16:
    v18 = 1;
    return [a1 setCompassSize_];
  }

  v18 = 2;
  return [a1 setCompassSize_];
}

uint64_t sub_213D668B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapCompassConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D66938()
{
  result = qword_27C8EC568;
  if (!qword_27C8EC568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC558, &qword_213D9A3F0);
    sub_213D66E9C(&qword_27C8EC570, &unk_213D9A55C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC568);
  }

  return result;
}

uint64_t sub_213D669E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D66A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D66AEC(uint64_t a1)
{
  sub_213D510F8(319);
  if (v1 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213D51150(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_213D51094(319);
        if (v4 <= 0x3F)
        {
          sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_213D66C24()
{
  result = qword_27C8EC588;
  if (!qword_27C8EC588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC590, &qword_213D9A478);
    sub_213CE189C();
    sub_213D66938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EC588);
  }

  return result;
}

void sub_213D66CD8(uint64_t a1)
{
  sub_213D51150(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_213D51150(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MapCompassConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D66DE4(uint64_t a1)
{
  result = sub_213D9051C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D66E9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapCompass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D66EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for TagValueTraitKey.Value(0, a1, a2, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  type metadata accessor for TagValueTraitKey(0, a1, a2, v11);
  swift_getWitnessTable();
  sub_213D9101C();
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v10, 1, a1) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v13 = 1;
  }

  else
  {
    (*(v12 + 32))(a3, v10, a1);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, a1);
}

uint64_t MapContent.tag<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TagValueTraitKey.Value(0, a3, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v15 = type metadata accessor for TagValueTraitKey(0, a3, a5, v14);
  v16 = *(a3 - 8);
  (*(v16 + 16))(v13, a1, a3);
  (*(v16 + 56))(v13, 0, 1, a3);
  WitnessTable = swift_getWitnessTable();
  sub_213D74DFC(v15, v13, a2, v15, a4, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_213D6726C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_213D672C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_213D67448(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

id sub_213D67678(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v6 = *(a3 + 16);
      if (v6)
      {
        v22 = MEMORY[0x277D84F90];
        sub_213D91E1C();
        sub_213D67A38();
        v7 = (a3 + 48);
        do
        {
          v8 = *(v7 - 2);
          v9 = *(v7 - 1);
          v10 = *v7;
          v7 += 3;
          sub_213D2BD34(v8, v9, v10);
          sub_213D67678(v8, v9, v10);
          sub_213D91DEC();
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          --v6;
        }

        while (v6);
        v11 = a1[2];
        if (a2)
        {
          if (!v22)
          {
            v12 = 0;
LABEL_14:
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

            v17 = [ObjCClassFromMetadata polygonWithCoordinates:a1 + 4 count:v11 interiorPolygons:v12];
            sub_213D1E5E8(a1, a2, a3);

LABEL_19:

            return v17;
          }

LABEL_13:
          sub_213D67A38();
          v12 = sub_213D919EC();

          goto LABEL_14;
        }

        if (!v22)
        {
          v18 = 0;
          goto LABEL_18;
        }
      }

      else
      {
        v11 = a1[2];
        if (a2)
        {
          goto LABEL_13;
        }
      }

      sub_213D67A38();
      v18 = sub_213D919EC();
    }

    else
    {
      v12 = 0;
      v18 = 0;
      v11 = a1[2];
      if (a2)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v20 = swift_getObjCClassFromMetadata();

    v17 = [v20 polygonWithPoints:a1 + 4 count:v11 interiorPolygons:v18];
    sub_213D1E5E8(a1, a2, a3);

    goto LABEL_19;
  }

  v13 = swift_getObjCClassFromMetadata();
  v14 = [a1 points];
  v15 = [a1 pointCount];
  v16 = [a1 interiorPolygons];
  v17 = [v13 polygonWithPoints:v14 count:v15 interiorPolygons:v16];
  sub_213D1E5E8(a1, a2, a3);

  return v17;
}