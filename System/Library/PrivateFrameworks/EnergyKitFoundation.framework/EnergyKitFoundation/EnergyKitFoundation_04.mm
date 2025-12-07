uint64_t sub_1D20521C0()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1D20521F0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1D2051CB8(v4, v6);
  if (v7)
  {
    sub_1D2052364((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1D2051DFC((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1D2052364(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1D208CA4C();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

unint64_t sub_1D20524A4()
{
  v2 = qword_1EC6BF148;
  if (!qword_1EC6BF148)
  {
    type metadata accessor for EKDateRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205253C()
{
  v2 = qword_1EC6BF150;
  if (!qword_1EC6BF150)
  {
    type metadata accessor for EKDateRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF150);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D205260C(uint64_t a1)
{
  v3 = sub_1D208BF1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1D20526B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t static EKGuidance.supportsSecureCoding.getter()
{
  v1 = sub_1D2052748();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKGuidance.supportsSecureCoding.setter(char a1)
{
  v2 = sub_1D2052748();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKGuidance.supportsSecureCoding.modify())(uint64_t a1)
{
  sub_1D2052748();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D2052964@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D2052748();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D20529C4(char *a1)
{
  v3 = *a1;
  v2 = sub_1D2052748();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t EKGuidance.forecastIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);

  return v2;
}

uint64_t EKGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start;
  v2 = sub_1D208BF1C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EKGuidance.signal.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

  return v2;
}

EnergyKitFoundation::EKGuidance::CodingKeys_optional __swiftcall EKGuidance.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v10 = v1;
  v20 = stringValue;

  v19[0] = sub_1D208C64C();
  v19[1] = v2;
  v18 = stringValue;
  v12 = MEMORY[0x1D38948D0](v19[0], v2, stringValue._countAndFlagsBits, stringValue._object);
  sub_1D1FE023C(v19);
  if (v12)
  {

    v21 = 0;
  }

  else
  {

    v17[0] = sub_1D208C64C();
    v17[1] = v3;
    v16 = stringValue;
    v9 = MEMORY[0x1D38948D0](v17[0], v3, stringValue._countAndFlagsBits, stringValue._object);
    sub_1D1FE023C(v17);
    if (v9)
    {

      v21 = 1;
    }

    else
    {

      v15[0] = sub_1D208C64C();
      v15[1] = v4;
      v14 = stringValue;
      v8 = MEMORY[0x1D38948D0](v15[0], v4, stringValue._countAndFlagsBits, stringValue._object);
      sub_1D1FE023C(v15);
      if (v8)
      {

        v21 = 2;
      }

      else
      {

        v13[0] = sub_1D208C64C();
        v13[1] = v5;
        v7 = MEMORY[0x1D38948D0](v13[0], v5, stringValue._countAndFlagsBits, stringValue._object);
        sub_1D1FE023C(v13);
        if ((v7 & 1) == 0)
        {

          *v10 = 4;
          return result;
        }

        v21 = 3;
      }
    }
  }

  *v10 = v21;
}

BOOL static EKGuidance.CodingKeys.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v5 == 1)
    {
      v4 = 1;
    }

    else if (v5 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (v6 == 1)
    {
      v3 = 1;
    }

    else if (v6 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

char *EKGuidance.init(start:interval:signal:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v28 = a1;
  v18 = a5;
  v25 = a2;
  v22 = a3;
  v24 = a4;
  v37 = 0;
  v36 = 0;
  v35 = 0.0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v20 = 0;
  v29 = sub_1D208BF1C();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v6 = MEMORY[0x1EEE9AC00](v29);
  v17 = &v15 - v7;
  v36 = v8;
  v35 = v6;
  v34 = v25;
  v32 = v22;
  v33 = v9;
  v37 = v5;
  v16 = v5;
  (*(v26 + 16))();
  (*(v26 + 32))(&v16[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start], v17, v29);
  *&v37[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval] = v18;
  v19 = v37;

  *&v19[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal] = v25;
  v21 = v37;

  v10 = v20;
  v11 = v24;
  v12 = &v21[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier];
  *v12 = v22;
  v12[1] = v11;
  v23 = v37;
  v13 = type metadata accessor for EKGuidance(v10);
  v31.receiver = v23;
  v31.super_class = v13;
  v30 = objc_msgSendSuper2(&v31, sel_init);
  MEMORY[0x1E69E5928](v30);
  v37 = v30;

  (*(v26 + 8))(v28, v29);
  MEMORY[0x1E69E5920](v37);
  return v30;
}

uint64_t EKGuidance.init(coder:)(void *a1)
{
  v48 = v73;
  v61 = a1;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v79 = 0.0;
  v74 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v49 = sub_1D208BF1C();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v16 - v52;
  v54 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - v52);
  v55 = v16 - v54;
  v88 = v16 - v54;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v57 = v16 - v56;
  v58 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v59 = v16 - v58;
  v87 = v16 - v58;
  v85 = v5;
  v86 = v1;
  v83 = 0;
  EKGuidance.CodingKeys.stringValue.getter();
  v60 = v6;
  v62 = sub_1D208C5BC();

  v63 = [v61 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v62);
  if (v63)
  {
    v47 = v63;
    v46 = v63;
    v45 = &v64;
    sub_1D208C94C();
    sub_1D20553D8(v45, &v81);
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0uLL;
    v82 = 0uLL;
  }

  v7 = v48;
  v48[11] = v81;
  v7[12] = v82;
  if (v84[3])
  {
    if (swift_dynamicCast())
    {
      (*(v50 + 56))(v59, 0, 1, v49);
    }

    else
    {
      (*(v50 + 56))(v59, 1, 1, v49);
    }
  }

  else
  {
    sub_1D205539C(v84);
    (*(v50 + 56))(v59, 1, 1, v49);
  }

  v80 = 1;
  EKGuidance.CodingKeys.stringValue.getter();
  v39 = v8;
  v40 = sub_1D208C5BC();

  [v61 decodeDoubleForKey_];
  v41 = v9;
  MEMORY[0x1E69E5920](v40);
  v79 = v41;
  v77 = 2;
  EKGuidance.CodingKeys.stringValue.getter();
  v42 = v10;
  v43 = sub_1D208C5BC();

  v44 = [v61 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v43);
  if (v44)
  {
    v38 = v44;
    v37 = v44;
    v36 = v65;
    sub_1D208C94C();
    sub_1D20553D8(v36, &v75);
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0uLL;
    v76 = 0uLL;
  }

  v11 = v48;
  v48[5] = v75;
  v11[6] = v76;
  if (v78[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
    if (swift_dynamicCast())
    {
      v34 = v65[4];
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
  }

  else
  {
    sub_1D205539C(v78);
    v35 = 0;
  }

  v30 = v35;
  v74 = v35;
  v72 = 3;
  EKGuidance.CodingKeys.stringValue.getter();
  v31 = v12;
  v32 = sub_1D208C5BC();

  v33 = [v61 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v32);
  if (v33)
  {
    v29 = v33;
    v28 = v33;
    v27 = v66;
    sub_1D208C94C();
    sub_1D20553D8(v27, &v70);
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0uLL;
    v71 = 0uLL;
  }

  v13 = v48;
  *v48 = v70;
  v13[1] = v71;
  if (v73[3])
  {
    if (swift_dynamicCast())
    {
      v23 = v66[4];
      v24 = v66[5];
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v25 = v23;
    v26 = v24;
  }

  else
  {
    sub_1D205539C(v73);
    v25 = 0;
    v26 = 0;
  }

  v21 = v26;
  v22 = v25;
  v68 = v25;
  v69 = v26;
  sub_1D1FE94C4(v59, v57);
  if ((*(v50 + 48))(v57, 1, v49) == 1)
  {
    sub_1D1FF1A9C(v57);
LABEL_32:

    sub_1D1FF1A9C(v59);
    MEMORY[0x1E69E5920](v61);
    v16[0] = v86;
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v50 + 32))(v55, v57, v49);

  if (!v30)
  {
    (*(v50 + 8))(v55, v49);
    goto LABEL_32;
  }

  v20 = v30;
  v17 = v30;
  v67 = v30;
  ObjectType = swift_getObjectType();
  (*(v50 + 16))(v53, v55, v49);

  v18 = (*(ObjectType + 112))(v53, v17, v22, v21, v41);
  v16[1] = v86;
  MEMORY[0x1E69E5928](v18);
  v86 = v18;
  swift_getObjectType();
  swift_deallocPartialClassInstance();

  (*(v50 + 8))(v55, v49);

  sub_1D1FF1A9C(v59);
  MEMORY[0x1E69E5920](v61);
  MEMORY[0x1E69E5920](v86);
  return v18;
}

uint64_t sub_1D2053F24(void *a1)
{
  v34 = a1;
  v44 = 0;
  v43 = 0;
  v22 = sub_1D208BF1C();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v34);
  v23 = v11 - v19;
  v44 = v2;
  v43 = v31;
  (*(v20 + 16))(v11 - v19, v31 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v1);
  v26 = sub_1D208BE7C();
  (*(v20 + 8))(v23, v22);
  v42 = 0;
  EKGuidance.CodingKeys.stringValue.getter();
  v3 = v31;
  v24 = v4;
  v25 = sub_1D208C5BC();

  v33 = 0x1FA948000uLL;
  [v34 0x1FA948F02];
  MEMORY[0x1E69E5920](v25);
  swift_unknownObjectRelease();
  v28 = *(v3 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval);
  v41 = 1;
  EKGuidance.CodingKeys.stringValue.getter();
  v5 = v31;
  v27 = v6;
  v29 = sub_1D208C5BC();

  [v34 encodeDouble:v29 forKey:v28];
  MEMORY[0x1E69E5920](v29);
  v30 = *(v5 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

  v36 = sub_1D208C77C();

  v40 = 2;
  EKGuidance.CodingKeys.stringValue.getter();
  v7 = v31;
  v32 = v8;
  v35 = sub_1D208C5BC();

  [v34 (v33 + 3842)];
  MEMORY[0x1E69E5920](v35);
  swift_unknownObjectRelease();
  v37 = *(v7 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
  v38 = *(v7 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier + 8);

  if (v38)
  {
    v17 = v37;
    v18 = v38;
    v14 = v38;
    v15 = sub_1D208C5BC();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v13 = v16;
  v39 = 3;
  EKGuidance.CodingKeys.stringValue.getter();
  v11[1] = v9;
  v12 = sub_1D208C5BC();

  [v34 encodeObject:v13 forKey:v12];
  MEMORY[0x1E69E5920](v12);
  return swift_unknownObjectRelease();
}

id EKGuidance.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKGuidance(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2054480(uint64_t a1)
{
  v25 = a1;
  v48 = 0;
  v47 = 0;
  v37 = sub_1D208BF1C();
  v32 = *(v37 - 8);
  v33 = v37 - 8;
  v24 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v8 - v24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF190, &qword_1D2091290);
  v26 = *(v36 - 8);
  v27 = v36 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v31 = v8 - v28;
  v48 = v2;
  v47 = v1;
  v29 = v2[3];
  v30 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v29);
  sub_1D20552AC();
  sub_1D208CBEC();
  (*(v32 + 16))(v39, v34 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v37);
  v35 = &v46;
  v46 = 0;
  sub_1D2055F88();
  v3 = v38;
  sub_1D208CABC();
  v40 = v3;
  v41 = v3;
  if (v3)
  {
    v10 = v41;
    (*(v32 + 8))(v39, v37);
    result = (*(v26 + 8))(v31, v36);
    v11 = v10;
  }

  else
  {
    (*(v32 + 8))(v39, v37);
    v4 = v40;
    v45 = 1;
    sub_1D208CAAC();
    v22 = v4;
    v23 = v4;
    if (v4)
    {
      v9 = v23;
      result = (*(v26 + 8))(v31, v36);
      v11 = v9;
    }

    else
    {
      v16 = *(v34 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

      v19 = &v44;
      v44 = v16;
      v17 = &v43;
      v43 = 2;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
      sub_1D2056008();
      v5 = v22;
      sub_1D208CABC();
      v20 = v5;
      v21 = v5;
      if (v5)
      {
        v8[1] = v21;
        sub_1D1FD3C38(&v44);
        return (*(v26 + 8))(v31, v36);
      }

      else
      {
        sub_1D1FD3C38(&v44);
        v6 = v20;
        v12 = *(v34 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
        v13 = *(v34 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier + 8);

        v42 = 3;
        sub_1D208CA9C();
        v14 = v6;
        v15 = v6;
        if (v6)
        {
          v8[0] = v15;
        }

        return (*(v26 + 8))(v31, v36);
      }
    }
  }

  return result;
}

char *EKGuidance.__allocating_init(from:)(void *a1)
{
  v2 = objc_allocWithZone(v1);
  v7 = EKGuidance.init(from:)(a1);
  if (v5)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

char *EKGuidance.init(from:)(void *a1)
{
  v45 = a1;
  v62 = 0;
  v40 = sub_1D208BF1C();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v44 = v13 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF1A8, &qword_1D2091298);
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v50 = v13 - v49;
  v62 = v2;
  v63 = v1;
  v52 = v2[3];
  v53 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v52);
  sub_1D20552AC();
  v3 = v51;
  sub_1D208CBDC();
  v54 = v3;
  v55 = v3;
  if (v3)
  {
    v18 = v55;
    v19 = 0;
  }

  else
  {
    v36 = v63;
    v37 = &v61;
    v61 = 0;
    sub_1D205609C();
    v4 = v54;
    sub_1D208CA8C();
    v38 = v4;
    v39 = v4;
    if (v4)
    {
      v17 = v39;
      (*(v47 + 8))(v50, v46);
      v18 = v17;
      v19 = 0;
    }

    else
    {
      (*(v41 + 32))(v36 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v44, v40);
      v5 = v38;
      v32 = v63;
      v60 = 1;
      sub_1D208CA7C();
      v33 = v5;
      v34 = v6;
      v35 = v5;
      if (v5)
      {
        v16 = v35;
        (*(v47 + 8))(v50, v46);
        v18 = v16;
        v19 = 2;
      }

      else
      {
        *(v32 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval) = v34;
        v27 = v63;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
        v28 = &v58;
        v58 = 2;
        sub_1D205611C();
        v7 = v33;
        sub_1D208CA8C();
        v30 = v7;
        v31 = v7;
        if (!v7)
        {
          *(v27 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal) = v59;
          v22 = v63;
          v57 = 3;
          v8 = sub_1D208CA6C();
          v23 = 0;
          v24 = v8;
          v25 = v9;
          v26 = 0;
          v10 = (v22 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
          *v10 = v8;
          v10[1] = v9;
          v20 = v63;
          v11 = type metadata accessor for EKGuidance(0);
          v56.receiver = v20;
          v56.super_class = v11;
          v21 = objc_msgSendSuper2(&v56, sel_init);
          MEMORY[0x1E69E5928](v21);
          v63 = v21;
          (*(v47 + 8))(v50, v46);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x1E69E5920](v63);
          return v21;
        }

        v15 = v31;
        (*(v47 + 8))(v50, v46);
        v18 = v15;
        v19 = 2;
      }
    }
  }

  v14 = v19;
  v13[3] = v18;
  __swift_destroy_boxed_opaque_existential_1(v45);
  if ((v14 & 2) != 0)
  {
    (*(v41 + 8))(v63 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v40);
  }

  if ((v14 & 8) != 0)
  {
    sub_1D1FD3C38((v63 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal));
  }

  v13[1] = v63;
  type metadata accessor for EKGuidance(0);
  swift_deallocPartialClassInstance();
  return v13[2];
}

uint64_t sub_1D2055138@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D2055230()
{
  v2 = qword_1EC6BF170;
  if (!qword_1EC6BF170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20552AC()
{
  v2 = qword_1EC6BF178;
  if (!qword_1EC6BF178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF178);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for EKGuidance(uint64_t a1)
{
  v2 = qword_1EE082E00;
  if (!qword_1EE082E00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1D205539C(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 sub_1D20553D8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D205542C(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1D208C81C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1D208CA4C();
  __break(1u);
LABEL_12:
  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

uint64_t sub_1D2055758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1D2056AEC;
        v16 = &v37;
        sub_1D205542C(sub_1D2056B08, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_1D208CA2C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_1D208CA2C();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_1D208CA2C();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_1D208CA2C();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_1D208CA2C();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_1D208CA2C();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_1D208CA2C();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_1D208CA2C();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_1D208CA2C();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_1D208CA2C();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_1D208CA2C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_1D208CA4C();
    __break(1u);
  }

  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

unint64_t sub_1D2055F88()
{
  v2 = qword_1EC6BF198;
  if (!qword_1EC6BF198)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2056008()
{
  v2 = qword_1EC6BF1A0;
  if (!qword_1EC6BF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF188, &qword_1D2091288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205609C()
{
  v2 = qword_1EC6BF1B0;
  if (!qword_1EC6BF1B0)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205611C()
{
  v2 = qword_1EC6BF1B8;
  if (!qword_1EC6BF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF188, &qword_1D2091288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20561C8()
{
  v2 = qword_1EC6BF1C0;
  if (!qword_1EC6BF1C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205625C()
{
  v2 = qword_1EC6BF1C8;
  if (!qword_1EC6BF1C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20562F0()
{
  v2 = qword_1EC6BF1D0;
  if (!qword_1EC6BF1D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2056388(uint64_t a1)
{
  updated = sub_1D208BF1C();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1D20565D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1D208CA2C();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1D208CA2C();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1D208CA2C();
                __break(1u);
              }

              sub_1D208CA2C();
              __break(1u);
            }

            sub_1D208CA2C();
            __break(1u);
          }

          sub_1D208CA2C();
          __break(1u);
        }

        sub_1D208CA2C();
        __break(1u);
      }

      sub_1D208CA2C();
      __break(1u);
    }

    sub_1D208CA2C();
    __break(1u);
  }

  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

id static UsagePointRecords.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  v4 = sub_1D208C64C();
  v3 = v0;
  v1 = type metadata accessor for UsagePointRecords();
  return sub_1D1FCF514(v4, v3, v1);
}

uint64_t sub_1D2056BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 tariffProfiles];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2056C50(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setTariffProfiles_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D2056D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 tariffRiders];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2056D9C(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setTariffRiders_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D2056E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 sourceTime];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D2056F70(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setSourceTime_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D20570C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 creationDate];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D20571E4(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setCreationDate_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

SecTaskRef static ClientSideEntitlementCheck.valueOf(entitlement:)@<X0>(void *a3@<X8>)
{
  result = SecTaskCreateFromSelf(0);
  v7 = result;
  if (result)
  {

    v4 = sub_1D208C5BC();
    v5 = SecTaskCopyValueForEntitlement(v7, v4, 0);
    MEMORY[0x1E69E5920](v4);

    if (v5)
    {
      a3[3] = swift_getObjectType();
      swift_unknownObjectRetain();
      *a3 = v5;
      swift_unknownObjectRelease();
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
    }

    return MEMORY[0x1E69E5920](v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  return result;
}

BOOL static ClientSideEntitlementCheck.hasValidApplicationID()()
{
  v5 = v0;
  v4[4] = sub_1D208C64C();
  v4[5] = v1;
  static ClientSideEntitlementCheck.valueOf(entitlement:)(v4);
  v3 = v4[3] != 0;
  sub_1D205539C(v4);

  return v3;
}

uint64_t sub_1D205761C()
{
  result = sub_1D208C64C();
  qword_1EE082DE8 = result;
  qword_1EE082DF0 = v1;
  return result;
}

uint64_t *sub_1D2057660()
{
  if (qword_1EE082DE0 != -1)
  {
    swift_once();
  }

  return &qword_1EE082DE8;
}

uint64_t static EKEnergySite.zoneNamePrefix.getter()
{
  v1 = *sub_1D2057660();

  return v1;
}

uint64_t static EKEnergySite.generateCKZoneName(siteID:)(uint64_t a1, uint64_t a2)
{
  v11[2] = 0;
  v11[3] = a1;
  v11[4] = a2;
  v11[0] = sub_1D208CB1C();
  v11[1] = v2;
  v3 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v3);

  v4 = sub_1D2057660();
  v8 = *v4;
  v9 = v4[1];

  v10[0] = v8;
  v10[1] = v9;
  sub_1D208CAFC();
  sub_1D1FE023C(v10);
  v5 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v5);

  sub_1D208CAFC();
  v6 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v6);

  sub_1D1FE023C(v11);
  return sub_1D208C62C();
}

Swift::String __swiftcall EKEnergySite.generateCKZoneName()()
{
  v15[2] = 0;
  v15[0] = sub_1D208CB1C();
  v15[1] = v0;
  v1 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v1);

  v2 = sub_1D2057660();
  v10 = *v2;
  v11 = v2[1];

  v14[0] = v10;
  v14[1] = v11;
  sub_1D208CAFC();
  sub_1D1FE023C(v14);
  v3 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v3);

  v13[0] = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x168))(v4);
  v13[1] = v5;
  sub_1D208CAFC();
  sub_1D1FE023C(v13);
  v6 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v6);

  sub_1D1FE023C(v15);
  v7 = sub_1D208C62C();
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1D2057B50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v31 = 0;
  v32 = 0;
  v30 = a1;
  sub_1D2057FFC(a1, v34);
  if (v34[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF248, &qword_1D20914C8);
    result = swift_dynamicCast();
    if (result)
    {
      v22 = v24;
    }

    else
    {
      v22 = 0;
    }

    v21 = v22;
  }

  else
  {
    result = sub_1D205539C(v34);
    v21 = 0;
  }

  if (v21)
  {
    v28 = v21;
    v33 = 0;
    v17 = objc_opt_self();

    v19 = sub_1D208C54C();

    type metadata accessor for WritingOptions(0);
    sub_1D208CB2C();
    sub_1D2058124();
    sub_1D208C95C();
    v27[0] = 0;
    v20 = [v17 dataWithJSONObject:v19 options:v27[1] error:v27];
    v18 = v27[0];
    MEMORY[0x1E69E5928](v27[0]);
    v3 = v33;
    v33 = v18;
    MEMORY[0x1E69E5920](v3);
    swift_unknownObjectRelease();
    if (v20)
    {
      v15 = sub_1D208BD1C();
      v16 = v4;
      v31 = v15;
      v32 = v4;
      MEMORY[0x1E69E5920](v20);
      sub_1D1FD0018(v15, v16);
      a2[3] = MEMORY[0x1E6969080];
      *a2 = v15;
      a2[1] = v16;
      sub_1D1FD0094(v15, v16);
    }

    else
    {
      v12 = v33;
      v14 = sub_1D208BC7C();
      MEMORY[0x1E69E5920](v12);
      swift_willThrow();
      v5 = v14;
      v26 = v14;
      sub_1D208CB2C();
      v13 = v6;
      v25[0] = sub_1D208CB1C();
      v25[1] = v7;
      v8 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
      sub_1D208CAEC();
      v9 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v9);

      sub_1D1FE023C(v25);
      v10 = sub_1D208C62C();
      v13[3] = MEMORY[0x1E69E6158];
      *v13 = v10;
      v13[1] = v11;
      sub_1D1FCECE8();
      sub_1D20581A4();
      sub_1D20581D4();
      sub_1D208CB9C();

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  return result;
}

uint64_t sub_1D2057FFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t type metadata accessor for WritingOptions(uint64_t a1)
{
  v5 = qword_1EC6BF260;
  if (!qword_1EC6BF260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC6BF260);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D2058124()
{
  v2 = qword_1EC6BF240;
  if (!qword_1EC6BF240)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D20583F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v28[2] = 0;
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28[3] = a1;
  sub_1D2057FFC(a1, v32);
  if (v32[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      v22 = v28[4];
      v23 = v28[5];
    }

    else
    {
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    v20 = v22;
    v21 = v23;
  }

  else
  {
    result = sub_1D205539C(v32);
    v20 = 0;
    v21 = 0xF000000000000000;
  }

  if ((v21 & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v30 = v20;
    v31 = v21;
    v29 = 0;
    v16 = objc_opt_self();
    sub_1D1FD0018(v20, v21);
    v18 = sub_1D208BCFC();
    sub_1D1FD0094(v20, v21);
    type metadata accessor for ReadingOptions(0);
    sub_1D208CB2C();
    sub_1D20589EC();
    sub_1D208C95C();
    v28[0] = 0;
    v19 = [v16 JSONObjectWithData:v18 options:v28[1] error:v28];
    v17 = v28[0];
    MEMORY[0x1E69E5928](v28[0]);
    v3 = v29;
    v29 = v17;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v18);
    if (v19)
    {
      sub_1D208C94C();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF248, &qword_1D20914C8);
      if (swift_dynamicCast())
      {
        v14 = v25;
      }

      else
      {
        v14 = 0;
      }

      swift_unknownObjectRelease();

      if (v14)
      {
        a2[3] = v15;
        *a2 = v14;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        a2[3] = 0;
      }

      return sub_1D1FD0094(v20, v21);
    }

    else
    {
      v11 = v29;
      v13 = sub_1D208BC7C();
      MEMORY[0x1E69E5920](v11);
      swift_willThrow();
      v4 = v13;
      v27 = v13;
      sub_1D208CB2C();
      v12 = v5;
      v26[0] = sub_1D208CB1C();
      v26[1] = v6;
      v7 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
      sub_1D208CAEC();
      v8 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v8);

      sub_1D1FE023C(v26);
      v9 = sub_1D208C62C();
      v12[3] = MEMORY[0x1E69E6158];
      *v12 = v9;
      v12[1] = v10;
      sub_1D1FCECE8();
      sub_1D20581A4();
      sub_1D20581D4();
      sub_1D208CB9C();

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;

      return sub_1D1FD0094(v20, v21);
    }
  }

  return result;
}

unint64_t type metadata accessor for ReadingOptions(uint64_t a1)
{
  v5 = qword_1EC6BF258;
  if (!qword_1EC6BF258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC6BF258);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D20589EC()
{
  v2 = qword_1EC6BF250;
  if (!qword_1EC6BF250)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF250);
    return WitnessTable;
  }

  return v2;
}

id sub_1D2058C80()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GridIDDictionaryTransformer();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1D2058D4C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridIDDictionaryTransformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2058D98()
{
  sub_1D208C64C();

  v1 = sub_1D208C5BC();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  result = v1;
  qword_1EC6C7140 = v1;
  return result;
}

uint64_t *sub_1D2058E28()
{
  if (qword_1EC6C5E30 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C7140;
}

uint64_t sub_1D2058E88()
{
  v0 = sub_1D2058E28();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1D2058EC8()
{
  type metadata accessor for GridIDDictionaryTransformer();
  v4 = sub_1D2058C58();
  v2 = objc_opt_self();
  MEMORY[0x1E69E5928](v4);
  v0 = sub_1D2058E28();
  v3 = *v0;
  MEMORY[0x1E69E5928](*v0);
  [v2 setValueTransformer:v4 forName:v3];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2058F94(uint64_t a1)
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CCBC();
}

uint64_t sub_1D2059198(uint64_t a1, uint64_t a2)
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CCAC();
}

uint64_t sub_1D20591DC(uint64_t a1, uint64_t a2)
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CC8C();
}

uint64_t sub_1D2059220(uint64_t a1, uint64_t a2)
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CC9C();
}

uint64_t sub_1D2059294(uint64_t a1)
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CCBC();
}

uint64_t sub_1D2059498(uint64_t a1, uint64_t a2)
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CCAC();
}

uint64_t sub_1D20594DC(uint64_t a1, uint64_t a2)
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CC8C();
}

uint64_t sub_1D2059520(uint64_t a1, uint64_t a2)
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CC9C();
}

void sub_1D20596AC(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

unint64_t sub_1D2059734()
{
  v2 = qword_1EC6BF268;
  if (!qword_1EC6BF268)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20597E4()
{
  v2 = qword_1EC6BF270;
  if (!qword_1EC6BF270)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059894()
{
  v2 = qword_1EC6BF278;
  if (!qword_1EC6BF278)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205992C()
{
  v2 = qword_1EC6BF280;
  if (!qword_1EC6BF280)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20599C4()
{
  v2 = qword_1EC6BF288;
  if (!qword_1EC6BF288)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059A5C()
{
  v2 = qword_1EC6BF290;
  if (!qword_1EC6BF290)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059ADC()
{
  v2 = qword_1EC6BF298;
  if (!qword_1EC6BF298)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059B5C()
{
  v2 = qword_1EC6BF2A0;
  if (!qword_1EC6BF2A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059BD4()
{
  v2 = qword_1EC6BF2A8;
  if (!qword_1EC6BF2A8)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF2A8);
    return WitnessTable;
  }

  return v2;
}

id EnergyGuidanceTracker.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id EnergyGuidanceTracker.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for EnergyGuidanceTracker();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id EnergyGuidanceTracker.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyGuidanceTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static EnergyKitAppTracker.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  v4 = sub_1D208C64C();
  v3 = v0;
  v1 = type metadata accessor for EnergyKitAppTracker();
  return sub_1D1FCF514(v4, v3, v1);
}

uint64_t sub_1D2059EDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 appID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2059F6C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setAppID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205A024@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = [v3 gridIDs];
  *a2 = sub_1D208C55C();
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205A0C8(void *a1, void *a2)
{
  sub_1D202847C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C54C();
  [v4 setGridIDs_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205A18C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v13 = a1;
  v8 = sub_1D208BF1C();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v4 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v4 - v14;
  v16 = *v2;
  MEMORY[0x1E69E5928](v16);
  v19 = v16;
  v17 = v16;
  v18 = [v16 lastUpdated];
  if (v18)
  {
    v6 = v18;
    v5 = v18;
    sub_1D208BECC();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  sub_1D1FE29C4(v15, v7);
  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1D205A3B0(uint64_t a1, void **a2)
{
  v8 = a1;
  v10 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v4 - v9;
  sub_1D1FE94C4(v2, &v4 - v9);
  v11 = *v10;
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  v12 = v11;
  v14 = sub_1D208BF1C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1D208BE7C();
    (*(v15 + 8))(v13, v14);
    v7 = v6;
  }

  v5 = v7;
  [v12 setLastUpdated_];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1D205A554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF8C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 siteID];
  sub_1D208BF4C();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205A678(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF8C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BF3C();
  [v9 setSiteID_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205A7D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 includeCost];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205A848(char *a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setIncludeCost_];
  return MEMORY[0x1E69E5920](v3);
}

id TOUPeaks.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id TOUPeaks.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for TOUPeaks();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id TOUPeaks.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TOUPeaks();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL static InsightServiceHelpers.isDateBetween4pmAnd9pm(date:calendar:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v49 = a2;
  v3 = v2;
  v32 = v3;
  v22 = "Fatal error";
  v23 = "Unexpectedly found nil while unwrapping an Optional value";
  v24 = "EnergyKitFoundation/InsightServiceHelpers.swift";
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v25 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v16 - v25;
  v27 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v25);
  v61 = &v16 - v27;
  v47 = 0;
  v62 = sub_1D208BF1C();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v28 = (v59[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v29 = &v16 - v28;
  v70 = &v16 - v28;
  v30 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v16 - v30;
  v69 = &v16 - v30;
  v56 = sub_1D208BC3C();
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v34 = v53[8];
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v55 = &v16 - v33;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v16 - v35;
  v68 = &v16 - v35;
  v67 = v45;
  v66 = a2;
  v65 = v10;
  v43 = sub_1D208C10C();
  v42 = sub_1D208CB2C();
  v39 = v11;
  v36 = *(v43 - 8);
  v37 = v43 - 8;
  v41 = *(v36 + 104);
  v40 = v36 + 104;
  v41();
  v38 = *(v36 + 72);
  (v41)(v39 + v38, *MEMORY[0x1E6969A78], v43);
  (v41)(v39 + 2 * v38, *MEMORY[0x1E6969A48], v43);
  (v41)(v39 + 3 * v38, *MEMORY[0x1E6969A58], v43);
  sub_1D1FCECE8();
  v44 = v12;
  sub_1D1FF1A1C();
  v46 = sub_1D208C7FC();
  sub_1D208C03C();

  v48 = 0;
  sub_1D208BB9C();
  sub_1D208BBEC();
  v51 = v53[2];
  v52 = v53 + 2;
  v51(v55, v50, v56);
  sub_1D208C09C();
  v57 = v53[1];
  v58 = v53 + 1;
  v57(v55, v56);
  v63 = v59[6];
  v64 = v59 + 6;
  if (v63(v61, 1, v62) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v20 = v59[4];
  v21 = v59 + 4;
  v20(v31, v61, v62);
  sub_1D208BB9C();
  v51(v55, v50, v56);
  sub_1D208C09C();
  v57(v55, v56);
  if (v63(v26, 1, v62) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v20(v29, v26, v62);
  sub_1D208BDFC();
  if (v13 > 0.0)
  {
    v19 = 0;
  }

  else
  {
    sub_1D208BDFC();
    v19 = v14 < 0.0;
  }

  v18 = v19;
  v17 = v59[1];
  v16 = v59 + 1;
  v17(v29, v62);
  v17(v31, v62);
  v57(v50, v56);
  return v18;
}

uint64_t static InsightServiceHelpers.findDSTTransitions(range:timezone:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v31 = a2;
  v3 = v2;
  v4 = v18;
  v30 = v3;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = sub_1D208BF1C();
  v33 = *(v39 - 8);
  v34 = v39 - 8;
  v19 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v20 = &v11 - v19;
  v21 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v19);
  v22 = &v11 - v21;
  v47 = &v11 - v21;
  v23 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v11 - v23;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v27 = *(*(v8 - 8) + 64);
  v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v11 - v24;
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v24);
  v28 = &v11 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v26);
  v32 = &v11 - v29;
  v46 = &v11 - v29;
  v45 = v4;
  v44 = v9;
  v43 = v30;
  sub_1D208BB2C();
  sub_1D208C14C();
  v36 = *(v33 + 8);
  v37 = v33 + 8;
  v36(v35, v39);
  v38 = sub_1D1FE5320();
  v42 = sub_1D208C53C();
  v41 = sub_1D208C53C();
  while (1)
  {
    sub_1D1FE94C4(v32, v28);
    if ((*(v33 + 48))(v28, 1, v39) == 1)
    {
      sub_1D1FF1A9C(v28);
      goto LABEL_7;
    }

    (*(v33 + 32))(v22, v28, v39);
    sub_1D208BB0C();
    v17 = sub_1D208BE9C();
    v36(v35, v39);
    if ((v17 & 1) == 0)
    {
      break;
    }

    sub_1D208BE6C();
    v16 = sub_1D208C13C();
    v36(v35, v39);
    v40 = v16 & 1;
    (*(v33 + 16))(v20, v22, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF2B0, qword_1D2091968);
    sub_1D208C80C();
    v36(v35, v39);
    sub_1D208C14C();
    sub_1D205B868(v25, v32);
    v36(v22, v39);
  }

  v36(v22, v39);
LABEL_7:
  v13 = &v42;
  v15 = v42;

  v12 = &v41;
  v14 = v41;

  sub_1D1FD3C38(v12);
  sub_1D1FD3C38(v13);
  sub_1D1FF1A9C(v32);
  return v15;
}

void *sub_1D205B868(const void *a1, void *a2)
{
  v7 = sub_1D208BF1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

id HistoricalGuidanceCache.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id HistoricalGuidanceCache.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for HistoricalGuidanceCache();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id HistoricalGuidanceCache.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoricalGuidanceCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static HistoricalGuidanceCache.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  v4 = sub_1D208C64C();
  v3 = v0;
  v1 = type metadata accessor for HistoricalGuidanceCache();
  return sub_1D1FCF514(v4, v3, v1);
}

uint64_t sub_1D205BDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 historicalGuidance];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205BE60(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setHistoricalGuidance_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D205BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 intervalStart];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205C040(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setIntervalStart_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 intervalEnd];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205C2C0(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setIntervalEnd_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205C41C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 partial];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205C490(char *a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setPartial_];
  return MEMORY[0x1E69E5920](v3);
}

id RawLoadEvent.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id RawLoadEvent.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for RawLoadEvent();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id RawLoadEvent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawLoadEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D205C708()
{
  result = sub_1D1FCD65C();
  byte_1EC6C6348 = result & 1;
  return result;
}

char *sub_1D205C72C()
{
  if (qword_1EC6C6340 != -1)
  {
    swift_once();
  }

  return &byte_1EC6C6348;
}

uint64_t static EKUtility.isSharedIPad.getter()
{
  v1 = sub_1D205C72C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKUtility.isSharedIPad.setter(char a1)
{
  v2 = sub_1D205C72C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKUtility.isSharedIPad.modify())(uint64_t a1)
{
  sub_1D205C72C();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D205C8BC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D205C72C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D205C91C(char *a1)
{
  v3 = *a1;
  v2 = sub_1D205C72C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static EKEnergySite.supportsSecureCoding.getter()
{
  v1 = sub_1D205CA2C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKEnergySite.supportsSecureCoding.setter(char a1)
{
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKEnergySite.supportsSecureCoding.modify())(uint64_t a1)
{
  sub_1D205CA2C();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D205CC08@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D205CC68(char *a1)
{
  v3 = *a1;
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t sub_1D205CCC0()
{
  result = sub_1D208C64C();
  qword_1EE0831B8 = result;
  qword_1EE0831C0 = v1;
  return result;
}

uint64_t *sub_1D205CD04()
{
  if (qword_1EE0831B0 != -1)
  {
    swift_once();
  }

  return &qword_1EE0831B8;
}

uint64_t static EKEnergySite.siteUUIDNamespace.getter()
{
  v1 = *sub_1D205CD04();

  return v1;
}

uint64_t static EKEnergySite.isEqual(lhs:rhs:)(void *a1, void *a2)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x168))(a1);
  v8 = v2;
  v3 = (*((*a2 & *v6) + 0x168))();
  v9 = MEMORY[0x1D38948D0](v7, v8, v3);

  return v9 & 1;
}

uint64_t sub_1D205CEBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205CF68(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x170))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D028()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D09C(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D254(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x188))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D314()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D388(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D494@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D540(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D600()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D674(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D780@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D82C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1B8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D8EC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D960(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205DA74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DB1C(void *a1, void *a2)
{
  sub_1D2071F2C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1D0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DBD0()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205DC40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1D205DD50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205DDFC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DEBC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205DF30(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E038@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E0E4(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x200))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E1A4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E218(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E320@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x210))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E3CC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x218))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E48C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E500(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E608@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E6B4(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x230))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E774()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E7E8(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E8F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E99C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x248))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205EA5C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205EAD0(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205EC38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v5 - v7);
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x258))(v3);
  sub_1D2071DD0(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D205ED50(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D2018864(v2, (&v4 - v6));
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x260))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D205EE64@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan);
  swift_beginAccess();
  sub_1D2018864(v3, a1);
  return swift_endAccess();
}

void *sub_1D205EEC8(void *a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  v11 = v2;
  v10 = v1;
  sub_1D2018864(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2018C54(v5, v6);
  swift_endAccess();
  return sub_1D2018A44(v8);
}

uint64_t sub_1D205F018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x270))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F0C4(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x278))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F184()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F1F8(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F300@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x288))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F3AC(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x290))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F46C()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F4E0(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F5E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F694(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2A8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F754()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F7C8(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F8D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2B8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F97C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205FA3C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205FAB0(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205FBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205FC64(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2D8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205FD24()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205FD98(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205FEA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205FF4C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2F0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D206000C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060080(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060188@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x300))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D2060234(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x308))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20602F4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060368(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060470@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x318))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D206051C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x320))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20605DC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060650(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060758@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x330))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D2060804(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x338))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20608C4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060938(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060AA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x348))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2060BB8(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x350))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2060CCC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2060D30(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2060E80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x360))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2060F98(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x368))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20610AC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061110(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x378))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2061378(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x380))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D206148C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20614F0(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061640@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x390))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20616EC(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x398))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2061794()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1D20617FC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D20618DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3A8))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D20619F4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2061B08@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061B6C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061CBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2061DD4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3C8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2061EE8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061F4C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206209C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D20621B4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20622C8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D206232C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206247C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062594(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3F8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20626A8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D206270C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206285C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x408))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062974(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x410))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2062A88@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2062AEC(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2062C3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x420))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062D54(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x428))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2062E68@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2062ECC(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2063024@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x438))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20630CC(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x440))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2063170()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D20631D4(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D20632AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x450))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063354(void *a1, void *a2)
{
  sub_1D202847C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x458))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063408()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2063470(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1D206355C()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t sub_1D2063580@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v6 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x468))(v2);
  *a2 = v6;
  *(a2 + 4) = BYTE4(v6) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063640(int *a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x470))(v6);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2063704()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2063788(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D20638FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x480))(v3);
  sub_1D2071CA8(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2063A14(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D2063B8C(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x488))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2063B28@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields);
  swift_beginAccess();
  sub_1D2063B8C(v3, a1);
  return swift_endAccess();
}

void *sub_1D2063B8C(const void *a1, void *a2)
{
  v6 = sub_1D208C21C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1D2063CB4(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D2063B8C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2063D98(v5, v6);
  swift_endAccess();
  return sub_1D2063FC0(v8);
}

void *sub_1D2063D98(const void *a1, void *a2)
{
  v7 = sub_1D208C21C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1D2063FC0(uint64_t a1)
{
  v3 = sub_1D208C21C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

_BYTE *EKEnergySite.__allocating_init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, const void *a41, char a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, int a49, uint64_t a50, uint64_t a51, const void *a52)
{
  v53 = objc_allocWithZone(v52);
  LODWORD(v63) = a51;
  BYTE4(v63) = BYTE4(a51) & 1;
  return EKEnergySite.init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, v63, a52);
}

_BYTE *EKEnergySite.init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, const void *a41, unsigned __int8 a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, int a49, uint64_t a50, uint64_t a51, const void *a52)
{
  v153 = a1;
  v322 = a2;
  v155 = a3;
  v321 = a4;
  v151 = a5;
  v320 = a6;
  v157 = a7;
  v319 = a8;
  v318 = a9;
  v164 = a10;
  v317 = a11;
  v169 = a12;
  v316 = a13;
  v174 = a14;
  v315 = a15;
  v179 = a16;
  v314 = a17;
  v184 = a18;
  v313 = a19;
  v312 = a20;
  v310 = a21;
  v311 = a22;
  v308 = a23;
  v309 = a24;
  v306 = a25;
  v307 = a26;
  v197 = a27;
  v305 = a28;
  v202 = a29;
  v304 = a30;
  v207 = a31;
  v303 = a32;
  v212 = a33;
  v302 = a34;
  v217 = a35;
  v301 = a36;
  v222 = a37;
  v300 = a38;
  v299 = a39;
  v298 = a40;
  v297 = a41;
  v239 = a42;
  v296 = a43;
  v295 = a44;
  v294 = a45;
  v293 = a46;
  v292 = a47;
  v291 = a48;
  v138 = a49;
  v290 = a50;
  v289 = a52;
  v405 = 0;
  v403 = 0;
  v404 = 0;
  v401 = 0;
  v402 = 0;
  v399 = 0;
  v400 = 0;
  v397 = 0;
  v398 = 0;
  v396 = 0;
  v394 = 0;
  v395 = 0;
  v392 = 0;
  v393 = 0;
  v390 = 0;
  v391 = 0;
  v388 = 0;
  v389 = 0;
  v386 = 0;
  v387 = 0;
  v385 = 0;
  v383 = 0;
  v384 = 0;
  v381 = 0;
  v382 = 0;
  v379 = 0;
  v380 = 0;
  v377 = 0;
  v378 = 0;
  v375 = 0;
  v376 = 0;
  v373 = 0;
  v374 = 0;
  v371 = 0;
  v372 = 0;
  v369 = 0;
  v370 = 0;
  v367 = 0;
  v368 = 0;
  v366 = 0;
  v365 = 0;
  v364 = 0;
  v363 = 0;
  v362 = 0;
  v361 = 0;
  v360 = 0;
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v356 = 0;
  v355 = 0;
  v353 = 0;
  v354 = 0;
  v352 = 0;
  v406 = a51;
  v275 = a51;
  v276 = BYTE4(a51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v136 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v284 = &v135 - v136;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v137 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v263 = &v135 - v137;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  MEMORY[0x1EEE9AC00](v55);
  v189 = (&v135 - v56);
  v403 = v153;
  v404 = v57;
  v401 = v58;
  v402 = v59;
  v399 = v60;
  v400 = v61;
  v397 = v62;
  v398 = v63;
  v396 = v318;
  v394 = v164;
  v395 = v317;
  v392 = v169;
  v393 = v316;
  v390 = v174;
  v391 = v315;
  v388 = v179;
  v389 = v314;
  v386 = v184;
  v387 = v313;
  v385 = v312;
  v383 = v310;
  v384 = v311;
  v381 = v308;
  v382 = v309;
  v379 = v306;
  v380 = v307;
  v377 = v197;
  v378 = a28;
  v375 = a29;
  v376 = a30;
  v373 = a31;
  v374 = a32;
  v371 = a33;
  v372 = a34;
  v369 = a35;
  v370 = v301;
  v367 = v222;
  v368 = v300;
  v366 = v299;
  v365 = v298;
  v364 = v297;
  v277 = 1;
  v363 = v239 & 1;
  v362 = v296;
  v361 = v295;
  v360 = v294;
  v359 = v293;
  v358 = v64;
  v357 = v65;
  v356 = v66;
  v355 = v67;
  v353 = v275;
  v354 = v276 & 1;
  v352 = v289;
  v405 = v52;
  v158 = &qword_1EC6BF000;
  v287 = 0;
  *&v52[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location] = 0;
  v162 = &qword_1EC6BF000;
  v68 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID];
  *v68 = 0;
  v68[1] = 0;
  v167 = &qword_1EC6BF000;
  v69 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID];
  *v69 = 0;
  v69[1] = 0;
  v172 = &qword_1EC6BF000;
  v70 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken];
  *v70 = 0;
  v70[1] = 0;
  v177 = &qword_1EC6BF000;
  v71 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken];
  *v71 = 0;
  v71[1] = 0;
  v182 = &qword_1EC6BF000;
  v72 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone];
  *v72 = 0;
  v72[1] = 0;
  v140 = v405;
  v187 = &unk_1EE083000;
  v139 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan;
  v73 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  (*(*(v73 - 8) + 56))(&v140[v139], v277);
  v195 = &unk_1EE083000;
  v74 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken];
  *v74 = 0;
  v74[1] = 0;
  v200 = &unk_1EE083000;
  v75 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName];
  *v75 = 0;
  v75[1] = 0;
  v205 = &unk_1EE083000;
  v76 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber];
  *v76 = 0;
  v76[1] = 0;
  v210 = &unk_1EE083000;
  v77 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address];
  *v77 = 0;
  v77[1] = 0;
  v215 = &unk_1EE083000;
  v78 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID];
  *v78 = 0;
  v78[1] = 0;
  v220 = &unk_1EE083000;
  v79 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier];
  *v79 = 0;
  v79[1] = 0;
  v142 = v405;
  v225 = &unk_1EE083000;
  v141 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate;
  v143 = sub_1D208BF1C();
  v80 = *(v143 - 8);
  v145 = *(v80 + 56);
  v144 = v80 + 56;
  v145(&v142[v141], v277);
  v229 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate], v277, v277, v143);
  v233 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate], v277, v277, v143);
  v81 = v143;
  v82 = v145;
  v83 = v277;
  v237 = &unk_1EE083000;
  v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy] = 0;
  v241 = &unk_1EE083000;
  v82(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate], v83, v83, v81);
  v245 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate], v277, v277, v143);
  v249 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate], v277, v277, v143);
  v253 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate], v277, v277, v143);
  v257 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate], v277, v277, v143);
  v261 = &unk_1EE083000;
  (v145)(&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone], v277, v277, v143);
  v84 = v277;
  v85 = v287;
  v266 = &unk_1EE083000;
  v268 = 3;
  *&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion] = 3;
  v270 = &unk_1EE083000;
  *&v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters] = v85;
  v274 = &unk_1EE083000;
  v86 = &v405[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance];
  *v86 = 0;
  v86[4] = v84 & 1;
  v147 = v405;
  v280 = &unk_1EE083000;
  v146 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields;
  v87 = sub_1D208C21C();
  (*(*(v87 - 8) + 56))(&v147[v146], v277);
  v149 = v405;
  v148 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_encoder;
  sub_1D208BC5C();
  *&v149[v148] = sub_1D208BC4C();
  v150 = v405;

  v88 = v320;
  v89 = &v150[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName];
  *v89 = v151;
  v89[1] = v88;
  v152 = v405;

  v90 = v322;
  v91 = &v152[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID];
  *v91 = v153;
  v91[1] = v90;
  v154 = v405;

  v92 = v321;
  v93 = &v154[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName];
  *v93 = v155;
  v93[1] = v92;
  v156 = v405;

  v94 = v318;
  v95 = v319;
  v96 = &v156[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state];
  *v96 = v157;
  v96[1] = v95;
  v159 = v405;
  MEMORY[0x1E69E5928](v94);
  v160 = &v159[v158[93]];
  v161 = &v351;
  v282 = 33;
  v283 = 0;
  swift_beginAccess();
  v97 = *v160;
  *v160 = v318;
  MEMORY[0x1E69E5920](v97);
  swift_endAccess();
  v163 = v405;

  v165 = &v163[v162[94]];
  v166 = &v350;
  swift_beginAccess();
  v98 = v165;
  v99 = v317;
  *v165 = v164;
  v98[1] = v99;

  swift_endAccess();
  v168 = v405;

  v170 = &v168[v167[95]];
  v171 = &v349;
  swift_beginAccess();
  v100 = v170;
  v101 = v316;
  *v170 = v169;
  v100[1] = v101;

  swift_endAccess();
  v173 = v405;

  v175 = &v173[v172[96]];
  v176 = &v348;
  swift_beginAccess();
  v102 = v175;
  v103 = v315;
  *v175 = v174;
  v102[1] = v103;

  swift_endAccess();
  v178 = v405;

  v180 = &v178[v177[97]];
  v181 = &v347;
  swift_beginAccess();
  v104 = v180;
  v105 = v314;
  *v180 = v179;
  v104[1] = v105;

  swift_endAccess();
  v183 = v405;

  v185 = &v183[v182[98]];
  v186 = &v346;
  swift_beginAccess();
  v106 = v185;
  v107 = v313;
  *v185 = v184;
  v106[1] = v107;

  swift_endAccess();
  v188 = v405;
  sub_1D2018864(v312, v189);
  v190 = &v188[v187[152]];
  v191 = &v345;
  swift_beginAccess();
  sub_1D2018C54(v189, v190);
  swift_endAccess();
  v192 = v405;
  sub_1D1FD0018(v310, v311);
  v108 = v308;
  v109 = v309;
  v110 = v311;
  v111 = &v192[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex];
  *v111 = v310;
  v111[1] = v110;
  v193 = v405;
  sub_1D1FD0018(v108, v109);
  v112 = v306;
  v113 = v307;
  v114 = v309;
  v115 = &v193[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex];
  *v115 = v308;
  v115[1] = v114;
  v194 = v405;
  sub_1D1FD0018(v112, v113);
  v116 = v307;
  v117 = &v194[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex];
  *v117 = v306;
  v117[1] = v116;
  v196 = v405;

  v198 = &v196[v195[153]];
  v199 = &v344;
  swift_beginAccess();
  v118 = v198;
  v119 = v305;
  *v198 = v197;
  v118[1] = v119;

  swift_endAccess();
  v201 = v405;

  v203 = &v201[v200[158]];
  v204 = &v343;
  swift_beginAccess();
  v120 = v203;
  v121 = v304;
  *v203 = v202;
  v120[1] = v121;

  swift_endAccess();
  v206 = v405;

  v208 = &v206[v205[156]];
  v209 = &v342;
  swift_beginAccess();
  v122 = v208;
  v123 = v303;
  *v208 = v207;
  v122[1] = v123;

  swift_endAccess();
  v211 = v405;

  v213 = &v211[v210[137]];
  v214 = &v341;
  swift_beginAccess();
  v124 = v213;
  v125 = v302;
  *v213 = v212;
  v124[1] = v125;

  swift_endAccess();
  v216 = v405;

  v218 = &v216[v215[149]];
  v219 = &v340;
  swift_beginAccess();
  v126 = v218;
  v127 = v301;
  *v218 = v217;
  v126[1] = v127;

  swift_endAccess();
  v221 = v405;

  v223 = &v221[v220[150]];
  v224 = &v339;
  swift_beginAccess();
  v128 = v223;
  v129 = v300;
  *v223 = v222;
  v128[1] = v129;

  swift_endAccess();
  v226 = v405;
  sub_1D1FE94C4(v299, v263);
  v227 = &v226[v225[142]];
  v228 = &v338;
  swift_beginAccess();
  sub_1D205B868(v263, v227);
  swift_endAccess();
  v230 = v405;
  sub_1D1FE94C4(v298, v263);
  v231 = &v230[v229[140]];
  v232 = &v337;
  swift_beginAccess();
  sub_1D205B868(v263, v231);
  swift_endAccess();
  v234 = v405;
  sub_1D1FE94C4(v297, v263);
  v235 = &v234[v233[148]];
  v236 = &v336;
  swift_beginAccess();
  sub_1D205B868(v263, v235);
  swift_endAccess();
  v238 = &v405[v237[159]];
  v240 = &v335;
  swift_beginAccess();
  *v238 = v239;
  swift_endAccess();
  v242 = v405;
  sub_1D1FE94C4(v296, v263);
  v243 = &v242[v241[141]];
  v244 = &v334;
  swift_beginAccess();
  sub_1D205B868(v263, v243);
  swift_endAccess();
  v246 = v405;
  sub_1D1FE94C4(v295, v263);
  v247 = &v246[v245[139]];
  v248 = &v333;
  swift_beginAccess();
  sub_1D205B868(v263, v247);
  swift_endAccess();
  v250 = v405;
  sub_1D1FE94C4(v294, v263);
  v251 = &v250[v249[138]];
  v252 = &v332;
  swift_beginAccess();
  sub_1D205B868(v263, v251);
  swift_endAccess();
  v254 = v405;
  sub_1D1FE94C4(v293, v263);
  v255 = &v254[v253[143]];
  v256 = &v331;
  swift_beginAccess();
  sub_1D205B868(v263, v255);
  swift_endAccess();
  v258 = v405;
  sub_1D1FE94C4(v292, v263);
  v259 = &v258[v257[147]];
  v260 = &v330;
  swift_beginAccess();
  sub_1D205B868(v263, v259);
  swift_endAccess();
  v262 = v405;
  sub_1D1FE94C4(v291, v263);
  v264 = &v262[v261[155]];
  v265 = &v329;
  swift_beginAccess();
  sub_1D205B868(v263, v264);
  swift_endAccess();
  v267 = &v405[v266[157]];
  v269 = &v328;
  swift_beginAccess();
  *v267 = v268;
  swift_endAccess();
  v271 = v405;

  v272 = &v271[v270[151]];
  v273 = &v327;
  swift_beginAccess();
  *v272 = v290;

  swift_endAccess();
  v278 = &v405[v274[131]];
  v279 = &v326;
  swift_beginAccess();
  v130 = v276;
  v131 = v277;
  v132 = v278;
  *v278 = v275;
  *(v132 + 4) = v130 & 1 & v131;
  swift_endAccess();
  v281 = v405;
  sub_1D2063B8C(v289, v284);
  v285 = &v281[v280[154]];
  v286 = &v325;
  swift_beginAccess();
  sub_1D2063D98(v284, v285);
  swift_endAccess();
  v288 = v405;
  v133 = type metadata accessor for EKEnergySite(v287);
  v324.receiver = v288;
  v324.super_class = v133;
  v323 = objc_msgSendSuper2(&v324, sel_init);
  MEMORY[0x1E69E5928](v323);
  v405 = v323;
  sub_1D2063FC0(v289);

  sub_1D1FF1A9C(v291);
  sub_1D1FF1A9C(v292);
  sub_1D1FF1A9C(v293);
  sub_1D1FF1A9C(v294);
  sub_1D1FF1A9C(v295);
  sub_1D1FF1A9C(v296);
  sub_1D1FF1A9C(v297);
  sub_1D1FF1A9C(v298);
  sub_1D1FF1A9C(v299);

  sub_1D1FD0094(v306, v307);
  sub_1D1FD0094(v308, v309);
  sub_1D1FD0094(v310, v311);
  sub_1D2018A44(v312);

  MEMORY[0x1E69E5920](v318);

  MEMORY[0x1E69E5920](v405);
  return v323;
}

uint64_t type metadata accessor for EKEnergySite(uint64_t a1)
{
  v2 = qword_1EE083230;
  if (!qword_1EE083230)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

id EKEnergySite.init(coder:)(void *a1)
{
  v452 = a1;
  v487 = 0;
  v602 = 0;
  v601 = 0;
  v600 = 0;
  v599 = 0;
  v598 = 0;
  v597 = 0;
  v596 = 0;
  v595 = 0;
  v594 = 0;
  v593 = 0;
  v591 = 0;
  v590 = 0;
  v589 = 0;
  v588 = 0;
  v587 = 0;
  v586 = 0;
  v585 = 0;
  v584 = 0;
  v583 = 0;
  v582 = 0;
  v581 = 0;
  v580 = 0;
  v579 = 0;
  v578 = 0;
  v577 = 0;
  v576 = 0;
  v575 = 0;
  v574 = 0;
  v573 = 0;
  v572 = 0;
  v453 = 0;
  v570 = 0;
  v565 = 0;
  v564 = 0;
  v559 = 0;
  v558 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = 0;
  v546 = 0;
  v545 = 0;
  v544 = 0;
  v543 = 0;
  v542 = 0;
  v541 = 0;
  v540 = 0;
  v539 = 0;
  v536 = 0;
  v535 = 0;
  v534 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v454 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v455 = &v129 - v454;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v456 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v457 = &v129 - v456;
  v483 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v487);
  v485 = (v483 + 15) & 0xFFFFFFFFFFFFFFF0;
  v458 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v4);
  v459 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v5);
  v460 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v6);
  v461 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v7);
  v462 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v8);
  v463 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v9);
  v464 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v10);
  v465 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v11);
  v466 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v12);
  v467 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v13);
  v468 = &v129 - v485;
  v602 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v14);
  v469 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v15);
  v470 = &v129 - v485;
  v601 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v16);
  v471 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v17);
  v472 = &v129 - v485;
  v600 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v18);
  v473 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v19);
  v474 = &v129 - v485;
  v599 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v20);
  v475 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v21);
  v476 = &v129 - v485;
  v598 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v22);
  v477 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v23);
  v478 = &v129 - v485;
  v597 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v24);
  v479 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v25);
  v480 = &v129 - v485;
  v596 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v26);
  v481 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v27);
  v482 = &v129 - v485;
  v595 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v28);
  v484 = &v129 - v485;
  MEMORY[0x1EEE9AC00](v29);
  v486 = &v129 - v485;
  v594 = &v129 - v485;
  v488 = type metadata accessor for EnergySitePayload.CurrentRatePlan(v30);
  v489 = *(v488 - 8);
  v490 = v489;
  v491 = *(v489 + 64);
  MEMORY[0x1EEE9AC00](v487);
  v492 = &v129 - ((v491 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = v492;
  v591 = a1;
  v592 = v31;
  v494 = sub_1D2068D7C();
  v493 = v494;
  v495 = sub_1D2068DE0(2);
  v496 = v32;
  v498 = sub_1D208C89C();
  v497 = v498;

  if (v498)
  {
    v451 = v497;
  }

  else
  {
    LODWORD(v127) = 0;
    v126 = 153;
    LOBYTE(v125) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v444 = v451;
  v445 = sub_1D208C5CC();
  v446 = v33;
  v589 = v445;
  v590 = v33;

  v447 = sub_1D2068DE0(0);
  v448 = v34;
  v450 = sub_1D208C89C();
  v449 = v450;

  if (v450)
  {
    v443 = v449;
  }

  else
  {
    LODWORD(v127) = 0;
    v126 = 157;
    LOBYTE(v125) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v436 = v443;
  v437 = sub_1D208C5CC();
  v438 = v35;
  v587 = v437;
  v588 = v35;

  v439 = sub_1D2068DE0(1);
  v440 = v36;
  v442 = sub_1D208C89C();
  v441 = v442;

  if (v442)
  {
    v435 = v441;
  }

  else
  {
    LODWORD(v127) = 0;
    v126 = 161;
    LOBYTE(v125) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v428 = v435;
  v429 = sub_1D208C5CC();
  v430 = v37;
  v585 = v429;
  v586 = v37;

  v431 = sub_1D2068DE0(3);
  v432 = v38;
  v434 = sub_1D208C89C();
  v433 = v434;

  if (v434)
  {
    v427 = v433;
  }

  else
  {
    LODWORD(v127) = 0;
    v126 = 165;
    LOBYTE(v125) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v415 = v427;
  v416 = sub_1D208C5CC();
  v417 = v39;
  v583 = v416;
  v584 = v39;

  v418 = sub_1D1FE2B54();
  v419 = sub_1D2068DE0(4);
  v420 = v40;
  v422 = sub_1D208C89C();
  v421 = v422;

  v582 = v422;
  v423 = sub_1D2068DE0(5);
  v424 = v41;
  v426 = sub_1D208C89C();
  v425 = v426;

  if (v426)
  {
    v414 = v425;
    v411 = v425;
    v42 = v425;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v500)
    {
      v409 = v499;
      v410 = v500;
    }

    else
    {
      v409 = 0;
      v410 = 0;
    }

    v412 = v409;
    v413 = v410;
  }

  else
  {
    v412 = 0;
    v413 = 0;
  }

  v403 = v413;
  v404 = v412;
  v580 = v412;
  v581 = v413;
  v405 = sub_1D2068DE0(6);
  v406 = v43;
  v408 = sub_1D208C89C();
  v407 = v408;

  if (v408)
  {
    v402 = v407;
    v399 = v407;
    v44 = v407;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v502)
    {
      v397 = v501;
      v398 = v502;
    }

    else
    {
      v397 = 0;
      v398 = 0;
    }

    v400 = v397;
    v401 = v398;
  }

  else
  {
    v400 = 0;
    v401 = 0;
  }

  v391 = v401;
  v392 = v400;
  v578 = v400;
  v579 = v401;
  v393 = sub_1D2068DE0(7);
  v394 = v45;
  v396 = sub_1D208C89C();
  v395 = v396;

  if (v396)
  {
    v390 = v395;
    v387 = v395;
    v46 = v395;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v504)
    {
      v385 = v503;
      v386 = v504;
    }

    else
    {
      v385 = 0;
      v386 = 0;
    }

    v388 = v385;
    v389 = v386;
  }

  else
  {
    v388 = 0;
    v389 = 0;
  }

  v379 = v389;
  v380 = v388;
  v576 = v388;
  v577 = v389;
  v381 = sub_1D2068DE0(8);
  v382 = v47;
  v384 = sub_1D208C89C();
  v383 = v384;

  if (v384)
  {
    v378 = v383;
    v375 = v383;
    v48 = v383;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v506)
    {
      v373 = v505;
      v374 = v506;
    }

    else
    {
      v373 = 0;
      v374 = 0;
    }

    v376 = v373;
    v377 = v374;
  }

  else
  {
    v376 = 0;
    v377 = 0;
  }

  v367 = v377;
  v368 = v376;
  v574 = v376;
  v575 = v377;
  v369 = sub_1D2068DE0(9);
  v370 = v49;
  v372 = sub_1D208C89C();
  v371 = v372;

  if (v372)
  {
    v366 = v371;
    v363 = v371;
    v50 = v371;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v508)
    {
      v361 = v507;
      v362 = v508;
    }

    else
    {
      v361 = 0;
      v362 = 0;
    }

    v364 = v361;
    v365 = v362;
  }

  else
  {
    v364 = 0;
    v365 = 0;
  }

  v51 = v453;
  v356 = v365;
  v357 = v364;
  v572 = v364;
  v573 = v365;
  EnergySitePayload.CurrentRatePlan.init()(v492);
  v52 = v452;
  v358 = &v129;
  MEMORY[0x1EEE9AC00](&v129);
  v359 = &v125;
  v127 = v452;
  v128 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D1FEA670(sub_1D20696AC, v54, MEMORY[0x1E69E7CA8] + 8, &v571, MEMORY[0x1E69E7CA8]);
  v360 = v51;
  if (v51)
  {
    v131 = 0;
    v130 = v571;

    v124 = v130;
    v570 = v130;

    v355 = v131;
  }

  else
  {

    v355 = v360;
  }

  v350 = sub_1D200A888();
  v349 = v350;
  v351 = sub_1D2068DE0(11);
  v352 = v55;
  v354 = sub_1D208C89C();
  v353 = v354;

  if (v354)
  {
    v348 = v353;
    v345 = v353;
    v56 = v353;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v510 >> 60 == 15)
    {
      v343 = 0;
      v344 = 0xF000000000000000;
    }

    else
    {
      v343 = v509;
      v344 = v510;
    }

    v346 = v343;
    v347 = v344;
  }

  else
  {
    v346 = 0;
    v347 = 0xF000000000000000;
  }

  v566 = v346;
  v567 = v347;
  if (v347 >> 60 == 15)
  {
    v568 = sub_1D208BD4C();
    v569 = v57;
    if (v567 >> 60 != 15)
    {
      sub_1D2069718(&v566);
    }
  }

  else
  {
    v568 = v566;
    v569 = v567;
  }

  v337 = v568;
  v338 = v569;
  v564 = v568;
  v565 = v569;
  v339 = sub_1D2068DE0(12);
  v340 = v58;
  v342 = sub_1D208C89C();
  v341 = v342;

  if (v342)
  {
    v336 = v341;
    v333 = v341;
    v59 = v341;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v512 >> 60 == 15)
    {
      v331 = 0;
      v332 = 0xF000000000000000;
    }

    else
    {
      v331 = v511;
      v332 = v512;
    }

    v334 = v331;
    v335 = v332;
  }

  else
  {
    v334 = 0;
    v335 = 0xF000000000000000;
  }

  v560 = v334;
  v561 = v335;
  if (v335 >> 60 == 15)
  {
    v562 = sub_1D208BD4C();
    v563 = v60;
    if (v561 >> 60 != 15)
    {
      sub_1D2069718(&v560);
    }
  }

  else
  {
    v562 = v560;
    v563 = v561;
  }

  v325 = v562;
  v326 = v563;
  v558 = v562;
  v559 = v563;
  v327 = sub_1D2068DE0(13);
  v328 = v61;
  v330 = sub_1D208C89C();
  v329 = v330;

  if (v330)
  {
    v324 = v329;
    v321 = v329;
    v62 = v329;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v514 >> 60 == 15)
    {
      v319 = 0;
      v320 = 0xF000000000000000;
    }

    else
    {
      v319 = v513;
      v320 = v514;
    }

    v322 = v319;
    v323 = v320;
  }

  else
  {
    v322 = 0;
    v323 = 0xF000000000000000;
  }

  v554 = v322;
  v555 = v323;
  if (v323 >> 60 == 15)
  {
    v556 = sub_1D208BD4C();
    v557 = v63;
    if (v555 >> 60 != 15)
    {
      sub_1D2069718(&v554);
    }
  }

  else
  {
    v556 = v554;
    v557 = v555;
  }

  v313 = v556;
  v314 = v557;
  v552 = v556;
  v553 = v557;
  v315 = sub_1D2068DE0(14);
  v316 = v64;
  v318 = sub_1D208C89C();
  v317 = v318;

  if (v318)
  {
    v312 = v317;
    v309 = v317;
    v65 = v317;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v516)
    {
      v307 = v515;
      v308 = v516;
    }

    else
    {
      v307 = 0;
      v308 = 0;
    }

    v310 = v307;
    v311 = v308;
  }

  else
  {
    v310 = 0;
    v311 = 0;
  }

  v301 = v311;
  v302 = v310;
  v550 = v310;
  v551 = v311;
  v303 = sub_1D2068DE0(15);
  v304 = v66;
  v306 = sub_1D208C89C();
  v305 = v306;

  if (v306)
  {
    v300 = v305;
    v297 = v305;
    v67 = v305;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v518)
    {
      v295 = v517;
      v296 = v518;
    }

    else
    {
      v295 = 0;
      v296 = 0;
    }

    v298 = v295;
    v299 = v296;
  }

  else
  {
    v298 = 0;
    v299 = 0;
  }

  v289 = v299;
  v290 = v298;
  v548 = v298;
  v549 = v299;
  v291 = sub_1D2068DE0(16);
  v292 = v68;
  v294 = sub_1D208C89C();
  v293 = v294;

  if (v294)
  {
    v288 = v293;
    v285 = v293;
    v69 = v293;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v520)
    {
      v283 = v519;
      v284 = v520;
    }

    else
    {
      v283 = 0;
      v284 = 0;
    }

    v286 = v283;
    v287 = v284;
  }

  else
  {
    v286 = 0;
    v287 = 0;
  }

  v277 = v287;
  v278 = v286;
  v546 = v286;
  v547 = v287;
  v279 = sub_1D2068DE0(17);
  v280 = v70;
  v282 = sub_1D208C89C();
  v281 = v282;

  if (v282)
  {
    v276 = v281;
    v273 = v281;
    v71 = v281;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v522)
    {
      v271 = v521;
      v272 = v522;
    }

    else
    {
      v271 = 0;
      v272 = 0;
    }

    v274 = v271;
    v275 = v272;
  }

  else
  {
    v274 = 0;
    v275 = 0;
  }

  v265 = v275;
  v266 = v274;
  v544 = v274;
  v545 = v275;
  v267 = sub_1D2068DE0(18);
  v268 = v72;
  v270 = sub_1D208C89C();
  v269 = v270;

  if (v270)
  {
    v264 = v269;
    v261 = v269;
    v73 = v269;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v524)
    {
      v259 = v523;
      v260 = v524;
    }

    else
    {
      v259 = 0;
      v260 = 0;
    }

    v262 = v259;
    v263 = v260;
  }

  else
  {
    v262 = 0;
    v263 = 0;
  }

  v253 = v263;
  v254 = v262;
  v542 = v262;
  v543 = v263;
  v255 = sub_1D2068DE0(19);
  v256 = v74;
  v258 = sub_1D208C89C();
  v257 = v258;

  if (v258)
  {
    v252 = v257;
    v249 = v257;
    v75 = v257;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v526)
    {
      v247 = v525;
      v248 = v526;
    }

    else
    {
      v247 = 0;
      v248 = 0;
    }

    v250 = v247;
    v251 = v248;
  }

  else
  {
    v250 = 0;
    v251 = 0;
  }

  v239 = v251;
  v240 = v250;
  v540 = v250;
  v541 = v251;
  v242 = sub_1D2069768();
  v241 = v242;
  v243 = sub_1D2068DE0(20);
  v244 = v76;
  v246 = sub_1D208C89C();
  v245 = v246;

  if (v246)
  {
    v238 = v245;
    v235 = v245;
    v236 = sub_1D208BF1C();
    v234 = v236;
    v78 = v235;
    sub_1D2069920();
    sub_1D208CB7C();

    v237 = *(v236 - 8);
    if ((*(v237 + 48))(v484, 1) == 1)
    {
      (*(v237 + 56))(v486, 1, 1, v234);
    }

    else
    {
      (*(v237 + 32))(v486, v484, v234);
      (*(v237 + 56))(v486, 0, 1, v234);
    }
  }

  else
  {
    v77 = sub_1D208BF1C();
    (*(*(v77 - 8) + 56))(v486, 1);
  }

  v230 = sub_1D2068DE0(21);
  v231 = v79;
  v233 = sub_1D208C89C();
  v232 = v233;

  if (v233)
  {
    v229 = v232;
    v226 = v232;
    v227 = sub_1D208BF1C();
    v225 = v227;
    v81 = v226;
    sub_1D2069920();
    sub_1D208CB7C();

    v228 = *(v227 - 8);
    if ((*(v228 + 48))(v481, 1) == 1)
    {
      (*(v228 + 56))(v482, 1, 1, v225);
    }

    else
    {
      (*(v228 + 32))(v482, v481, v225);
      (*(v228 + 56))(v482, 0, 1, v225);
    }
  }

  else
  {
    v80 = sub_1D208BF1C();
    (*(*(v80 - 8) + 56))(v482, 1);
  }

  v221 = sub_1D2068DE0(22);
  v222 = v82;
  v224 = sub_1D208C89C();
  v223 = v224;

  if (v224)
  {
    v220 = v223;
    v217 = v223;
    v218 = sub_1D208BF1C();
    v216 = v218;
    v84 = v217;
    sub_1D2069920();
    sub_1D208CB7C();

    v219 = *(v218 - 8);
    if ((*(v219 + 48))(v479, 1) == 1)
    {
      (*(v219 + 56))(v480, 1, 1, v216);
    }

    else
    {
      (*(v219 + 32))(v480, v479, v216);
      (*(v219 + 56))(v480, 0, 1, v216);
    }
  }

  else
  {
    v83 = sub_1D208BF1C();
    (*(*(v83 - 8) + 56))(v480, 1);
  }

  v85 = v452;
  sub_1D2068DE0(23);
  v208 = v86;
  v209 = sub_1D208C5BC();

  v211 = [v85 decodeBoolForKey_];
  v210 = v211;

  v539 = v211;
  v212 = sub_1D2068DE0(24);
  v213 = v87;
  v215 = sub_1D208C89C();
  v214 = v215;

  if (v215)
  {
    v207 = v214;
    v204 = v214;
    v205 = sub_1D208BF1C();
    v203 = v205;
    v89 = v204;
    sub_1D2069920();
    sub_1D208CB7C();

    v206 = *(v205 - 8);
    if ((*(v206 + 48))(v477, 1) == 1)
    {
      (*(v206 + 56))(v478, 1, 1, v203);
    }

    else
    {
      (*(v206 + 32))(v478, v477, v203);
      (*(v206 + 56))(v478, 0, 1, v203);
    }
  }

  else
  {
    v88 = sub_1D208BF1C();
    (*(*(v88 - 8) + 56))(v478, 1);
  }

  v199 = sub_1D2068DE0(25);
  v200 = v90;
  v202 = sub_1D208C89C();
  v201 = v202;

  if (v202)
  {
    v198 = v201;
    v195 = v201;
    v196 = sub_1D208BF1C();
    v194 = v196;
    v92 = v195;
    sub_1D2069920();
    sub_1D208CB7C();

    v197 = *(v196 - 8);
    if ((*(v197 + 48))(v475, 1) == 1)
    {
      (*(v197 + 56))(v476, 1, 1, v194);
    }

    else
    {
      (*(v197 + 32))(v476, v475, v194);
      (*(v197 + 56))(v476, 0, 1, v194);
    }
  }

  else
  {
    v91 = sub_1D208BF1C();
    (*(*(v91 - 8) + 56))(v476, 1);
  }

  v190 = sub_1D2068DE0(26);
  v191 = v93;
  v193 = sub_1D208C89C();
  v192 = v193;

  if (v193)
  {
    v189 = v192;
    v186 = v192;
    v187 = sub_1D208BF1C();
    v185 = v187;
    v95 = v186;
    sub_1D2069920();
    sub_1D208CB7C();

    v188 = *(v187 - 8);
    if ((*(v188 + 48))(v473, 1) == 1)
    {
      (*(v188 + 56))(v474, 1, 1, v185);
    }

    else
    {
      (*(v188 + 32))(v474, v473, v185);
      (*(v188 + 56))(v474, 0, 1, v185);
    }
  }

  else
  {
    v94 = sub_1D208BF1C();
    (*(*(v94 - 8) + 56))(v474, 1);
  }

  v181 = sub_1D2068DE0(27);
  v182 = v96;
  v184 = sub_1D208C89C();
  v183 = v184;

  if (v184)
  {
    v180 = v183;
    v177 = v183;
    v178 = sub_1D208BF1C();
    v176 = v178;
    v98 = v177;
    sub_1D2069920();
    sub_1D208CB7C();

    v179 = *(v178 - 8);
    if ((*(v179 + 48))(v471, 1) == 1)
    {
      (*(v179 + 56))(v472, 1, 1, v176);
    }

    else
    {
      (*(v179 + 32))(v472, v471, v176);
      (*(v179 + 56))(v472, 0, 1, v176);
    }
  }

  else
  {
    v97 = sub_1D208BF1C();
    (*(*(v97 - 8) + 56))(v472, 1);
  }

  v172 = sub_1D2068DE0(28);
  v173 = v99;
  v175 = sub_1D208C89C();
  v174 = v175;

  if (v175)
  {
    v171 = v174;
    v168 = v174;
    v169 = sub_1D208BF1C();
    v167 = v169;
    v101 = v168;
    sub_1D2069920();
    sub_1D208CB7C();

    v170 = *(v169 - 8);
    if ((*(v170 + 48))(v469, 1) == 1)
    {
      (*(v170 + 56))(v470, 1, 1, v167);
    }

    else
    {
      (*(v170 + 32))(v470, v469, v167);
      (*(v170 + 56))(v470, 0, 1, v167);
    }
  }

  else
  {
    v100 = sub_1D208BF1C();
    (*(*(v100 - 8) + 56))(v470, 1);
  }

  v163 = sub_1D2068DE0(29);
  v164 = v102;
  v166 = sub_1D208C89C();
  v165 = v166;

  if (v166)
  {
    v162 = v165;
    v159 = v165;
    v160 = sub_1D208BF1C();
    v158 = v160;
    v104 = v159;
    sub_1D2069920();
    sub_1D208CB7C();

    v161 = *(v160 - 8);
    if ((*(v161 + 48))(v467, 1) == 1)
    {
      (*(v161 + 56))(v468, 1, 1, v158);
    }

    else
    {
      (*(v161 + 32))(v468, v467, v158);
      (*(v161 + 56))(v468, 0, 1, v158);
    }
  }

  else
  {
    v103 = sub_1D208BF1C();
    (*(*(v103 - 8) + 56))(v468, 1);
  }

  v153 = sub_1D20697CC();
  v152 = v153;
  v154 = sub_1D2068DE0(30);
  v155 = v105;
  v157 = sub_1D208C89C();
  v156 = v157;

  if (v157)
  {
    v151 = v156;
    v149 = v156;
    v106 = v156;
    sub_1D20698A8();
    sub_1D208CB7C();

    if (v528)
    {
      v148 = 0x100000000;
    }

    else
    {
      v529 = v527;
      v148 = v527;
    }

    v150 = v148;
  }

  else
  {
    v150 = 0x100000000;
  }

  v537 = v150;
  v538 = BYTE4(v150) & 1;
  if ((v150 & 0x100000000) != 0)
  {
    v147 = 3;
  }

  else
  {
    v147 = v537;
  }

  v142 = v147;
  v536 = v147;
  v143 = sub_1D2068DE0(31);
  v144 = v107;
  v146 = sub_1D208C89C();
  v145 = v146;

  if (v146)
  {
    v141 = v145;
    v139 = v145;
    v108 = v145;
    sub_1D2069830();
    sub_1D208CB7C();

    if (v531)
    {
      v138 = 0x100000000;
    }

    else
    {
      v532 = v530;
      v138 = v530;
    }

    v140 = v138;
  }

  else
  {
    v140 = 0x100000000;
  }

  v109 = v367;
  v110 = v356;
  v111 = v338;
  v112 = v337;
  v113 = v325;
  v114 = v368;
  v115 = v357;
  v116 = v457;
  v133 = v140;
  v534 = v140;
  v134 = BYTE4(v140) & 1;
  v535 = BYTE4(v140) & 1;
  ObjectType = swift_getObjectType();

  v118 = v421;

  sub_1D2018BA8(v492, v116);
  v119 = *(v490 + 56);
  v132 = 1;
  v119(v116, 0);
  sub_1D1FD0018(v112, v111);
  sub_1D1FD0018(v113, v326);
  sub_1D1FD0018(v313, v314);

  sub_1D1FE94C4(v486, v466);
  sub_1D1FE94C4(v482, v465);
  sub_1D1FE94C4(v480, v464);
  sub_1D1FE94C4(v478, v463);
  sub_1D1FE94C4(v476, v462);
  sub_1D1FE94C4(v474, v461);
  sub_1D1FE94C4(v472, v460);
  sub_1D1FE94C4(v470, v459);
  sub_1D1FE94C4(v468, v458);
  v135 = 0;
  v120 = sub_1D208C21C();
  (*(*(v120 - 8) + 56))(v455, v132);
  v121 = *(ObjectType + 1176);
  LODWORD(v533) = v133;
  BYTE4(v533) = v134;
  v137 = v121(v429, v430, v445, v446, v437, v438, v416, v417, v421, v404, v403, v392, v391, v380, v379, v114, v109, v115, v110, v116, v112, v111, v113, v326, v313, v314, v302, v301, v290, v289, v278, v277, v266, v265, v254, v253, v240, v239, v466, v465, v464, v210 & 1, v463, v462, v461, v460, v459, v458, v142, v135, v533, v455);
  v136 = v592;
  v122 = v137;
  v592 = v137;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  sub_1D1FF1A9C(v468);
  sub_1D1FF1A9C(v470);
  sub_1D1FF1A9C(v472);
  sub_1D1FF1A9C(v474);
  sub_1D1FF1A9C(v476);
  sub_1D1FF1A9C(v478);
  sub_1D1FF1A9C(v480);
  sub_1D1FF1A9C(v482);
  sub_1D1FF1A9C(v486);

  sub_1D1FD0094(v313, v314);
  sub_1D1FD0094(v325, v326);
  sub_1D1FD0094(v337, v338);
  sub_1D2018ECC(v492);

  return v137;
}

unint64_t sub_1D2068D7C()
{
  v2 = qword_1EE0829D0;
  if (!qword_1EE0829D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1D2069340(uint64_t a1, char *a2, uint64_t *a3)
{
  v35 = a2;
  v32 = a3;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v36 = 0;
  v33 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v11 - v33;
  v37 = type metadata accessor for EnergySitePayload.CurrentRatePlan(v4);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v11 - v38;
  v48 = a1;
  v47 = v5;
  v40 = sub_1D200A888();
  v41 = sub_1D2068DE0(10);
  v42 = v6;
  v43 = sub_1D208C89C();

  result = v43;
  if (v43)
  {
    v30 = v43;
    v25 = v43;
    v26 = sub_1D208BD1C();
    v27 = v8;
    result = MEMORY[0x1E69E5920](v25);
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v28 = 0;
    v29 = 0xF000000000000000;
  }

  v23 = v29;
  v24 = v28;
  if ((v29 & 0xF000000000000000) == 0xF000000000000000)
  {
    v20 = v31;
  }

  else
  {
    v21 = v24;
    v22 = v23;
    v9 = v37;
    v14 = v23;
    v13 = v24;
    v45 = v24;
    v46 = v23;
    sub_1D1FD0018(v24, v23);
    v15 = v44;
    memset(v44, 0, sizeof(v44));
    v17 = sub_1D20275F8();
    v16 = sub_1D20696DC();
    sub_1D20696F4(v9, v17);
    v10 = v31;
    sub_1D208C35C();
    v18 = v10;
    v19 = v10;
    if (v10)
    {
      v12 = v19;
      result = sub_1D1FD0094(v13, v14);
      *v32 = v12;
    }

    else
    {
      sub_1D2071FFC(v39, v35);
      sub_1D1FD0094(v13, v14);
      result = v18;
      v20 = v18;
    }
  }

  return result;
}

uint64_t sub_1D2069718(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1D1FD0094(*a1, *(a1 + 8));
  }

  return a1;
}

unint64_t sub_1D2069768()
{
  v2 = qword_1EE0829E0;
  if (!qword_1EE0829E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D20697CC()
{
  v2 = qword_1EE0829D8;
  if (!qword_1EE0829D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D2069830()
{
  v2 = qword_1EC6BF330;
  if (!qword_1EC6BF330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20698A8()
{
  v2 = qword_1EE0829C8;
  if (!qword_1EE0829C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0829C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2069920()
{
  v2 = qword_1EC6BF340;
  if (!qword_1EC6BF340)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20699A0()
{
  v2 = qword_1EE082848;
  if (!qword_1EE082848)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2069A18()
{
  v2 = qword_1EE082A20;
  if (!qword_1EE082A20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2069AD4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](v1);
  sub_1D1FEA670(sub_1D206C76C, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v4, v4);
  MEMORY[0x1E69E5920](a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t sub_1D2069BE0(void *a1, void *a2)
{
  v398 = a1;
  v395 = a2;
  v409 = 0;
  v408 = 0;
  v406 = 0;
  v407 = 0;
  v404 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v355 = *(*(v3 - 8) + 64);
  v356 = (v355 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v357 = &v136 - v356;
  v358 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v356);
  v359 = &v136 - v358;
  v360 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v358);
  v361 = &v136 - v360;
  v362 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v360);
  v363 = &v136 - v362;
  v364 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v362);
  v365 = &v136 - v364;
  v366 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v364);
  v367 = &v136 - v366;
  v368 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v366);
  v369 = &v136 - v368;
  v370 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v368);
  v371 = &v136 - v370;
  v372 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v373 = *(v372 - 8);
  v374 = v372 - 8;
  v375 = (*(v373 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v372);
  v376 = &v136 - v375;
  v377 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v398);
  v378 = &v136 - v377;
  v409 = v12;
  v408 = a2;
  v13 = *a2;
  v401 = MEMORY[0x1E69E7D40];
  (*((v13 & *MEMORY[0x1E69E7D40]) + 0x180))(v11);
  v14 = v395;
  v379 = v15;
  v382 = sub_1D208C5BC();

  sub_1D2068DE0(2);
  v380 = v16;
  v381 = sub_1D208C5BC();

  v397 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v381);
  v17 = swift_unknownObjectRelease();
  (*((*v14 & *v401) + 0x168))(v17);
  v18 = v395;
  v383 = v19;
  v386 = sub_1D208C5BC();

  sub_1D2068DE0(1);
  v384 = v20;
  v385 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v385);
  v21 = swift_unknownObjectRelease();
  (*((*v18 & *v401) + 0x198))(v21);
  v22 = v395;
  v387 = v23;
  v390 = sub_1D208C5BC();

  sub_1D2068DE0(0);
  v388 = v24;
  v389 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v389);
  v25 = swift_unknownObjectRelease();
  (*((*v22 & *v401) + 0x1B0))(v25);
  v26 = v395;
  v391 = v27;
  v394 = sub_1D208C5BC();

  sub_1D2068DE0(3);
  v392 = v28;
  v393 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v393);
  v29 = swift_unknownObjectRelease();
  v30 = (*((*v26 & *v401) + 0x1C8))(v29);
  v31 = v395;
  v400 = v30;
  sub_1D2068DE0(4);
  v396 = v32;
  v399 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v399);
  v33 = swift_unknownObjectRelease();
  v402 = (*((*v31 & *v401) + 0x1E0))(v33);
  v403 = v34;
  if (v34)
  {
    v352 = v402;
    v353 = v403;
    v349 = v403;
    v350 = sub_1D208C5BC();

    v351 = v350;
  }

  else
  {
    v351 = 0;
  }

  v35 = v395;
  v346 = v351;
  sub_1D2068DE0(5);
  v344 = v36;
  v345 = sub_1D208C5BC();

  [v398 encodeObject:v346 forKey:v345];
  MEMORY[0x1E69E5920](v345);
  v37 = swift_unknownObjectRelease();
  v347 = (*((*v35 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v37);
  v348 = v38;
  if (v38)
  {
    v342 = v347;
    v343 = v348;
    v339 = v348;
    v340 = sub_1D208C5BC();

    v341 = v340;
  }

  else
  {
    v341 = 0;
  }

  v39 = v395;
  v336 = v341;
  sub_1D2068DE0(6);
  v334 = v40;
  v335 = sub_1D208C5BC();

  [v398 encodeObject:v336 forKey:v335];
  MEMORY[0x1E69E5920](v335);
  v41 = swift_unknownObjectRelease();
  v337 = (*((*v39 & *MEMORY[0x1E69E7D40]) + 0x210))(v41);
  v338 = v42;
  if (v42)
  {
    v332 = v337;
    v333 = v338;
    v329 = v338;
    v330 = sub_1D208C5BC();

    v331 = v330;
  }

  else
  {
    v331 = 0;
  }

  v43 = v395;
  v326 = v331;
  sub_1D2068DE0(7);
  v324 = v44;
  v325 = sub_1D208C5BC();

  [v398 encodeObject:v326 forKey:v325];
  MEMORY[0x1E69E5920](v325);
  v45 = swift_unknownObjectRelease();
  v327 = (*((*v43 & *MEMORY[0x1E69E7D40]) + 0x228))(v45);
  v328 = v46;
  if (v46)
  {
    v322 = v327;
    v323 = v328;
    v319 = v328;
    v320 = sub_1D208C5BC();

    v321 = v320;
  }

  else
  {
    v321 = 0;
  }

  v47 = v395;
  v316 = v321;
  sub_1D2068DE0(8);
  v314 = v48;
  v315 = sub_1D208C5BC();

  [v398 encodeObject:v316 forKey:v315];
  MEMORY[0x1E69E5920](v315);
  v49 = swift_unknownObjectRelease();
  v317 = (*((*v47 & *MEMORY[0x1E69E7D40]) + 0x240))(v49);
  v318 = v50;
  if (v50)
  {
    v312 = v317;
    v313 = v318;
    v309 = v318;
    v310 = sub_1D208C5BC();

    v311 = v310;
  }

  else
  {
    v311 = 0;
  }

  v51 = v395;
  v307 = v311;
  sub_1D2068DE0(9);
  v305 = v52;
  v306 = sub_1D208C5BC();

  [v398 encodeObject:v307 forKey:v306];
  MEMORY[0x1E69E5920](v306);
  v53 = swift_unknownObjectRelease();
  (*((*v51 & *MEMORY[0x1E69E7D40]) + 0x258))(v53);
  if ((*(v373 + 48))(v378, 1, v372) == 0)
  {
    sub_1D2018BA8(v378, v376);
    sub_1D2018A44(v378);
    v297 = sub_1D20275F8();
    sub_1D20696DC();
    v54 = v354;
    v55 = sub_1D208C36C();
    v298 = v54;
    v299 = v55;
    v300 = v56;
    v301 = v54;
    if (v54)
    {
      v141 = v301;
      v142 = 0;
      sub_1D2018ECC(v376);
      v133 = v141;
      v404 = v141;
      v137 = sub_1D208BD4C();
      v136 = v134;
      v140 = sub_1D208BCFC();
      sub_1D1FD0094(v137, v136);
      sub_1D2068DE0(10);
      v138 = v135;
      v139 = sub_1D208C5BC();

      [v398 encodeObject:v140 forKey:v139];
      MEMORY[0x1E69E5920](v139);
      swift_unknownObjectRelease();

      v285 = v142;
      goto LABEL_24;
    }

    v296 = v300;
    v295 = v299;
    sub_1D2018ECC(v376);
    v302 = v295;
    v303 = v296;
    v304 = v298;
  }

  else
  {
    sub_1D2018A44(v378);
    v302 = 0;
    v303 = 0xF000000000000000;
    v304 = v354;
  }

  v292 = v304;
  v294 = v303;
  v293 = v302;
  v406 = v302;
  v407 = v303;
  sub_1D2071F6C(v302, v303);
  if ((v294 & 0xF000000000000000) == 0xF000000000000000)
  {
    v289 = 0;
  }

  else
  {
    v290 = v293;
    v291 = v294;
    v286 = v294;
    v287 = v293;
    v288 = sub_1D208BCFC();
    sub_1D1FD0094(v287, v286);
    v289 = v288;
  }

  v284 = v289;
  sub_1D2068DE0(10);
  v282 = v57;
  v283 = sub_1D208C5BC();

  [v398 encodeObject:v284 forKey:v283];
  MEMORY[0x1E69E5920](v283);
  swift_unknownObjectRelease();
  sub_1D2071FB4(v293, v294);
  v285 = v292;
LABEL_24:
  v262 = v285;
  v58 = *v395;
  v279 = MEMORY[0x1E69E7D40];
  v59 = (*((v58 & *MEMORY[0x1E69E7D40]) + 0x270))();
  v60 = v395;
  v264 = v59;
  v263 = v61;
  v267 = sub_1D208BCFC();
  sub_1D1FD0094(v264, v263);
  sub_1D2068DE0(11);
  v265 = v62;
  v266 = sub_1D208C5BC();

  v276 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v266);
  v63 = swift_unknownObjectRelease();
  v64 = (*((*v60 & *v279) + 0x288))(v63);
  v65 = v395;
  v269 = v64;
  v268 = v66;
  v272 = sub_1D208BCFC();
  sub_1D1FD0094(v269, v268);
  sub_1D2068DE0(12);
  v270 = v67;
  v271 = sub_1D208C5BC();

  [v398 (v276 + 3842)];
  MEMORY[0x1E69E5920](v271);
  v68 = swift_unknownObjectRelease();
  v69 = (*((*v65 & *v279) + 0x2A0))(v68);
  v70 = v395;
  v274 = v69;
  v273 = v71;
  v278 = sub_1D208BCFC();
  sub_1D1FD0094(v274, v273);
  sub_1D2068DE0(13);
  v275 = v72;
  v277 = sub_1D208C5BC();

  [v398 (v276 + 3842)];
  MEMORY[0x1E69E5920](v277);
  v73 = swift_unknownObjectRelease();
  v280 = (*((*v70 & *v279) + 0x2B8))(v73);
  v281 = v74;
  if (v74)
  {
    v260 = v280;
    v261 = v281;
    v257 = v281;
    v258 = sub_1D208C5BC();

    v259 = v258;
  }

  else
  {
    v259 = 0;
  }

  v75 = v395;
  v254 = v259;
  sub_1D2068DE0(14);
  v252 = v76;
  v253 = sub_1D208C5BC();

  [v398 encodeObject:v254 forKey:v253];
  MEMORY[0x1E69E5920](v253);
  v77 = swift_unknownObjectRelease();
  v255 = (*((*v75 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v77);
  v256 = v78;
  if (v78)
  {
    v250 = v255;
    v251 = v256;
    v247 = v256;
    v248 = sub_1D208C5BC();

    v249 = v248;
  }

  else
  {
    v249 = 0;
  }

  v79 = v395;
  v244 = v249;
  sub_1D2068DE0(15);
  v242 = v80;
  v243 = sub_1D208C5BC();

  [v398 encodeObject:v244 forKey:v243];
  MEMORY[0x1E69E5920](v243);
  v81 = swift_unknownObjectRelease();
  v245 = (*((*v79 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v81);
  v246 = v82;
  if (v82)
  {
    v240 = v245;
    v241 = v246;
    v237 = v246;
    v238 = sub_1D208C5BC();

    v239 = v238;
  }

  else
  {
    v239 = 0;
  }

  v83 = v395;
  v234 = v239;
  sub_1D2068DE0(16);
  v232 = v84;
  v233 = sub_1D208C5BC();

  [v398 encodeObject:v234 forKey:v233];
  MEMORY[0x1E69E5920](v233);
  v85 = swift_unknownObjectRelease();
  v235 = (*((*v83 & *MEMORY[0x1E69E7D40]) + 0x300))(v85);
  v236 = v86;
  if (v86)
  {
    v230 = v235;
    v231 = v236;
    v227 = v236;
    v228 = sub_1D208C5BC();

    v229 = v228;
  }

  else
  {
    v229 = 0;
  }

  v87 = v395;
  v224 = v229;
  sub_1D2068DE0(17);
  v222 = v88;
  v223 = sub_1D208C5BC();

  [v398 encodeObject:v224 forKey:v223];
  MEMORY[0x1E69E5920](v223);
  v89 = swift_unknownObjectRelease();
  v225 = (*((*v87 & *MEMORY[0x1E69E7D40]) + 0x318))(v89);
  v226 = v90;
  if (v90)
  {
    v220 = v225;
    v221 = v226;
    v217 = v226;
    v218 = sub_1D208C5BC();

    v219 = v218;
  }

  else
  {
    v219 = 0;
  }

  v91 = v395;
  v214 = v219;
  sub_1D2068DE0(18);
  v212 = v92;
  v213 = sub_1D208C5BC();

  [v398 encodeObject:v214 forKey:v213];
  MEMORY[0x1E69E5920](v213);
  v93 = swift_unknownObjectRelease();
  v215 = (*((*v91 & *MEMORY[0x1E69E7D40]) + 0x330))(v93);
  v216 = v94;
  if (v94)
  {
    v210 = v215;
    v211 = v216;
    v207 = v216;
    v208 = sub_1D208C5BC();

    v209 = v208;
  }

  else
  {
    v209 = 0;
  }

  v95 = v395;
  v201 = v209;
  sub_1D2068DE0(19);
  v199 = v96;
  v200 = sub_1D208C5BC();

  [v398 encodeObject:v201 forKey:v200];
  MEMORY[0x1E69E5920](v200);
  v97 = swift_unknownObjectRelease();
  (*((*v95 & *MEMORY[0x1E69E7D40]) + 0x348))(v97);
  v202 = sub_1D208BF1C();
  v203 = *(v202 - 8);
  v204 = v202 - 8;
  v205 = *(v203 + 48);
  v206 = v203 + 48;
  if (v205(v371, 1) == 1)
  {
    v198 = 0;
  }

  else
  {
    v197 = sub_1D208BE7C();
    (*(v203 + 8))(v371, v202);
    v198 = v197;
  }

  v98 = v395;
  v196 = v198;
  sub_1D2068DE0(20);
  v194 = v99;
  v195 = sub_1D208C5BC();

  [v398 encodeObject:v196 forKey:v195];
  MEMORY[0x1E69E5920](v195);
  v100 = swift_unknownObjectRelease();
  (*((*v98 & *MEMORY[0x1E69E7D40]) + 0x378))(v100);
  if ((v205)(v369, 1, v202) == 1)
  {
    v193 = 0;
  }

  else
  {
    v192 = sub_1D208BE7C();
    (*(v203 + 8))(v369, v202);
    v193 = v192;
  }

  v101 = v395;
  v186 = v193;
  sub_1D2068DE0(22);
  v184 = v102;
  v185 = sub_1D208C5BC();

  [v398 encodeObject:v186 forKey:v185];
  MEMORY[0x1E69E5920](v185);
  v103 = swift_unknownObjectRelease();
  v104 = *v101;
  v190 = MEMORY[0x1E69E7D40];
  v105 = (*((v104 & *MEMORY[0x1E69E7D40]) + 0x390))(v103);
  v106 = v395;
  v188 = v105;
  sub_1D2068DE0(23);
  v187 = v107;
  v189 = sub_1D208C5BC();

  v191 = 1;
  [v398 encodeBool:v188 & 1 forKey:v189];
  v108 = MEMORY[0x1E69E5920](v189);
  (*((*v106 & *v190) + 0x3A8))(v108);
  if ((v205)(v367, v191, v202) == 1)
  {
    v183 = 0;
  }

  else
  {
    v182 = sub_1D208BE7C();
    (*(v203 + 8))(v367, v202);
    v183 = v182;
  }

  v109 = v395;
  v181 = v183;
  sub_1D2068DE0(24);
  v179 = v110;
  v180 = sub_1D208C5BC();

  [v398 encodeObject:v181 forKey:v180];
  MEMORY[0x1E69E5920](v180);
  v111 = swift_unknownObjectRelease();
  (*((*v109 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v111);
  if ((v205)(v365, 1, v202) == 1)
  {
    v178 = 0;
  }

  else
  {
    v177 = sub_1D208BE7C();
    (*(v203 + 8))(v365, v202);
    v178 = v177;
  }

  v112 = v395;
  v176 = v178;
  sub_1D2068DE0(25);
  v174 = v113;
  v175 = sub_1D208C5BC();

  [v398 encodeObject:v176 forKey:v175];
  MEMORY[0x1E69E5920](v175);
  v114 = swift_unknownObjectRelease();
  (*((*v112 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v114);
  if ((v205)(v363, 1, v202) == 1)
  {
    v173 = 0;
  }

  else
  {
    v172 = sub_1D208BE7C();
    (*(v203 + 8))(v363, v202);
    v173 = v172;
  }

  v115 = v395;
  v171 = v173;
  sub_1D2068DE0(26);
  v169 = v116;
  v170 = sub_1D208C5BC();

  [v398 encodeObject:v171 forKey:v170];
  MEMORY[0x1E69E5920](v170);
  v117 = swift_unknownObjectRelease();
  (*((*v115 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v117);
  if ((v205)(v361, 1, v202) == 1)
  {
    v168 = 0;
  }

  else
  {
    v167 = sub_1D208BE7C();
    (*(v203 + 8))(v361, v202);
    v168 = v167;
  }

  v118 = v395;
  v166 = v168;
  sub_1D2068DE0(27);
  v164 = v119;
  v165 = sub_1D208C5BC();

  [v398 encodeObject:v166 forKey:v165];
  MEMORY[0x1E69E5920](v165);
  v120 = swift_unknownObjectRelease();
  (*((*v118 & *MEMORY[0x1E69E7D40]) + 0x408))(v120);
  if ((v205)(v359, 1, v202) == 1)
  {
    v163 = 0;
  }

  else
  {
    v162 = sub_1D208BE7C();
    (*(v203 + 8))(v359, v202);
    v163 = v162;
  }

  v121 = v395;
  v161 = v163;
  sub_1D2068DE0(28);
  v159 = v122;
  v160 = sub_1D208C5BC();

  [v398 encodeObject:v161 forKey:v160];
  MEMORY[0x1E69E5920](v160);
  v123 = swift_unknownObjectRelease();
  (*((*v121 & *MEMORY[0x1E69E7D40]) + 0x420))(v123);
  if ((v205)(v357, 1, v202) == 1)
  {
    v158 = 0;
  }

  else
  {
    v157 = sub_1D208BE7C();
    (*(v203 + 8))(v357, v202);
    v158 = v157;
  }

  v124 = v395;
  v150 = v158;
  sub_1D2068DE0(29);
  v148 = v125;
  v149 = sub_1D208C5BC();

  v152 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v149);
  v126 = swift_unknownObjectRelease();
  v127 = *v124;
  v155 = MEMORY[0x1E69E7D40];
  (*((v127 & *MEMORY[0x1E69E7D40]) + 0x438))(v126);
  v128 = v395;
  v154 = sub_1D208CBBC();
  sub_1D2068DE0(30);
  v151 = v129;
  v153 = sub_1D208C5BC();

  [v398 (v152 + 3842)];
  MEMORY[0x1E69E5920](v153);
  v130 = swift_unknownObjectRelease();
  v405 = (*((*v128 & *v155) + 0x468))(v130);
  v156 = v405;
  if ((v405 & 0x100000000) != 0)
  {
    v146 = 0;
  }

  else
  {
    v147 = v156;
    v146 = sub_1D208CB8C();
  }

  v145 = v146;
  sub_1D2068DE0(31);
  v143 = v131;
  v144 = sub_1D208C5BC();

  [v398 encodeObject:v145 forKey:v144];
  MEMORY[0x1E69E5920](v144);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D206C814(uint64_t a1, uint64_t a2)
{
  v102[2] = a1;
  v102[3] = a2;

  v102[0] = sub_1D208C64C();
  v102[1] = v2;
  v101[2] = a1;
  v101[3] = a2;
  v70 = MEMORY[0x1D38948D0](v102[0], v2, a1, a2);
  sub_1D1FE023C(v102);
  if (v70)
  {

    v103 = 0;
    v67 = 0;
LABEL_66:

    return v67;
  }

  v101[0] = sub_1D208C64C();
  v101[1] = v3;
  v100[2] = a1;
  v100[3] = a2;
  v66 = MEMORY[0x1D38948D0](v101[0], v3, a1, a2);
  sub_1D1FE023C(v101);
  if (v66)
  {

    v103 = 1;
    v67 = 1;
    goto LABEL_66;
  }

  v100[0] = sub_1D208C64C();
  v100[1] = v4;
  v99[2] = a1;
  v99[3] = a2;
  v65 = MEMORY[0x1D38948D0](v100[0], v4, a1, a2);
  sub_1D1FE023C(v100);
  if (v65)
  {

    v103 = 2;
    v67 = 2;
    goto LABEL_66;
  }

  v99[0] = sub_1D208C64C();
  v99[1] = v5;
  v98[2] = a1;
  v98[3] = a2;
  v64 = MEMORY[0x1D38948D0](v99[0], v5, a1, a2);
  sub_1D1FE023C(v99);
  if (v64)
  {

    v103 = 3;
    v67 = 3;
    goto LABEL_66;
  }

  v98[0] = sub_1D208C64C();
  v98[1] = v6;
  v97[2] = a1;
  v97[3] = a2;
  v63 = MEMORY[0x1D38948D0](v98[0], v6, a1, a2);
  sub_1D1FE023C(v98);
  if (v63)
  {

    v103 = 4;
    v67 = 4;
    goto LABEL_66;
  }

  v97[0] = sub_1D208C64C();
  v97[1] = v7;
  v96[2] = a1;
  v96[3] = a2;
  v62 = MEMORY[0x1D38948D0](v97[0], v7, a1, a2);
  sub_1D1FE023C(v97);
  if (v62)
  {

    v103 = 5;
    v67 = 5;
    goto LABEL_66;
  }

  v96[0] = sub_1D208C64C();
  v96[1] = v8;
  v95[2] = a1;
  v95[3] = a2;
  v61 = MEMORY[0x1D38948D0](v96[0], v8, a1, a2);
  sub_1D1FE023C(v96);
  if (v61)
  {

    v103 = 6;
    v67 = 6;
    goto LABEL_66;
  }

  v95[0] = sub_1D208C64C();
  v95[1] = v9;
  v94[2] = a1;
  v94[3] = a2;
  v60 = MEMORY[0x1D38948D0](v95[0], v9, a1, a2);
  sub_1D1FE023C(v95);
  if (v60)
  {

    v103 = 7;
    v67 = 7;
    goto LABEL_66;
  }

  v94[0] = sub_1D208C64C();
  v94[1] = v10;
  v93[2] = a1;
  v93[3] = a2;
  v59 = MEMORY[0x1D38948D0](v94[0], v10, a1, a2);
  sub_1D1FE023C(v94);
  if (v59)
  {

    v103 = 8;
    v67 = 8;
    goto LABEL_66;
  }

  v93[0] = sub_1D208C64C();
  v93[1] = v11;
  v92[2] = a1;
  v92[3] = a2;
  v58 = MEMORY[0x1D38948D0](v93[0], v11, a1, a2);
  sub_1D1FE023C(v93);
  if (v58)
  {

    v103 = 9;
    v67 = 9;
    goto LABEL_66;
  }

  v92[0] = sub_1D208C64C();
  v92[1] = v12;
  v91[2] = a1;
  v91[3] = a2;
  v57 = MEMORY[0x1D38948D0](v92[0], v12, a1, a2);
  sub_1D1FE023C(v92);
  if (v57)
  {

    v103 = 10;
    v67 = 10;
    goto LABEL_66;
  }

  v91[0] = sub_1D208C64C();
  v91[1] = v13;
  v90[2] = a1;
  v90[3] = a2;
  v56 = MEMORY[0x1D38948D0](v91[0], v13, a1, a2);
  sub_1D1FE023C(v91);
  if (v56)
  {

    v103 = 11;
    v67 = 11;
    goto LABEL_66;
  }

  v90[0] = sub_1D208C64C();
  v90[1] = v14;
  v89[2] = a1;
  v89[3] = a2;
  v55 = MEMORY[0x1D38948D0](v90[0], v14, a1, a2);
  sub_1D1FE023C(v90);
  if (v55)
  {

    v103 = 12;
    v67 = 12;
    goto LABEL_66;
  }

  v89[0] = sub_1D208C64C();
  v89[1] = v15;
  v88[2] = a1;
  v88[3] = a2;
  v54 = MEMORY[0x1D38948D0](v89[0], v15, a1, a2);
  sub_1D1FE023C(v89);
  if (v54)
  {

    v103 = 13;
    v67 = 13;
    goto LABEL_66;
  }

  v88[0] = sub_1D208C64C();
  v88[1] = v16;
  v87[2] = a1;
  v87[3] = a2;
  v53 = MEMORY[0x1D38948D0](v88[0], v16, a1, a2);
  sub_1D1FE023C(v88);
  if (v53)
  {

    v103 = 14;
    v67 = 14;
    goto LABEL_66;
  }

  v87[0] = sub_1D208C64C();
  v87[1] = v17;
  v86[2] = a1;
  v86[3] = a2;
  v52 = MEMORY[0x1D38948D0](v87[0], v17, a1, a2);
  sub_1D1FE023C(v87);
  if (v52)
  {

    v103 = 15;
    v67 = 15;
    goto LABEL_66;
  }

  v86[0] = sub_1D208C64C();
  v86[1] = v18;
  v85[2] = a1;
  v85[3] = a2;
  v51 = MEMORY[0x1D38948D0](v86[0], v18, a1, a2);
  sub_1D1FE023C(v86);
  if (v51)
  {

    v103 = 16;
    v67 = 16;
    goto LABEL_66;
  }

  v85[0] = sub_1D208C64C();
  v85[1] = v19;
  v84[2] = a1;
  v84[3] = a2;
  v50 = MEMORY[0x1D38948D0](v85[0], v19, a1, a2);
  sub_1D1FE023C(v85);
  if (v50)
  {

    v103 = 17;
    v67 = 17;
    goto LABEL_66;
  }

  v84[0] = sub_1D208C64C();
  v84[1] = v20;
  v83[2] = a1;
  v83[3] = a2;
  v49 = MEMORY[0x1D38948D0](v84[0], v20, a1, a2);
  sub_1D1FE023C(v84);
  if (v49)
  {

    v103 = 18;
    v67 = 18;
    goto LABEL_66;
  }

  v83[0] = sub_1D208C64C();
  v83[1] = v21;
  v82[2] = a1;
  v82[3] = a2;
  v48 = MEMORY[0x1D38948D0](v83[0], v21, a1, a2);
  sub_1D1FE023C(v83);
  if (v48)
  {

    v103 = 19;
    v67 = 19;
    goto LABEL_66;
  }

  v82[0] = sub_1D208C64C();
  v82[1] = v22;
  v81[2] = a1;
  v81[3] = a2;
  v47 = MEMORY[0x1D38948D0](v82[0], v22, a1, a2);
  sub_1D1FE023C(v82);
  if (v47)
  {

    v103 = 20;
    v67 = 20;
    goto LABEL_66;
  }

  v81[0] = sub_1D208C64C();
  v81[1] = v23;
  v80[2] = a1;
  v80[3] = a2;
  v46 = MEMORY[0x1D38948D0](v81[0], v23, a1, a2);
  sub_1D1FE023C(v81);
  if (v46)
  {

    v103 = 21;
    v67 = 21;
    goto LABEL_66;
  }

  v80[0] = sub_1D208C64C();
  v80[1] = v24;
  v79[2] = a1;
  v79[3] = a2;
  v45 = MEMORY[0x1D38948D0](v80[0], v24, a1, a2);
  sub_1D1FE023C(v80);
  if (v45)
  {

    v103 = 22;
    v67 = 22;
    goto LABEL_66;
  }

  v79[0] = sub_1D208C64C();
  v79[1] = v25;
  v78[2] = a1;
  v78[3] = a2;
  v44 = MEMORY[0x1D38948D0](v79[0], v25, a1, a2);
  sub_1D1FE023C(v79);
  if (v44)
  {

    v103 = 23;
    v67 = 23;
    goto LABEL_66;
  }

  v78[0] = sub_1D208C64C();
  v78[1] = v26;
  v77[2] = a1;
  v77[3] = a2;
  v43 = MEMORY[0x1D38948D0](v78[0], v26, a1, a2);
  sub_1D1FE023C(v78);
  if (v43)
  {

    v103 = 24;
    v67 = 24;
    goto LABEL_66;
  }

  v77[0] = sub_1D208C64C();
  v77[1] = v27;
  v76[2] = a1;
  v76[3] = a2;
  v42 = MEMORY[0x1D38948D0](v77[0], v27, a1, a2);
  sub_1D1FE023C(v77);
  if (v42)
  {

    v103 = 25;
    v67 = 25;
    goto LABEL_66;
  }

  v76[0] = sub_1D208C64C();
  v76[1] = v28;
  v75[2] = a1;
  v75[3] = a2;
  v41 = MEMORY[0x1D38948D0](v76[0], v28, a1, a2);
  sub_1D1FE023C(v76);
  if (v41)
  {

    v103 = 26;
    v67 = 26;
    goto LABEL_66;
  }

  v75[0] = sub_1D208C64C();
  v75[1] = v29;
  v74[2] = a1;
  v74[3] = a2;
  v40 = MEMORY[0x1D38948D0](v75[0], v29, a1, a2);
  sub_1D1FE023C(v75);
  if (v40)
  {

    v103 = 27;
    v67 = 27;
    goto LABEL_66;
  }

  v74[0] = sub_1D208C64C();
  v74[1] = v30;
  v73[2] = a1;
  v73[3] = a2;
  v39 = MEMORY[0x1D38948D0](v74[0], v30, a1, a2);
  sub_1D1FE023C(v74);
  if (v39)
  {

    v103 = 28;
    v67 = 28;
    goto LABEL_66;
  }

  v73[0] = sub_1D208C64C();
  v73[1] = v31;
  v72[2] = a1;
  v72[3] = a2;
  v38 = MEMORY[0x1D38948D0](v73[0], v31, a1, a2);
  sub_1D1FE023C(v73);
  if (v38)
  {

    v103 = 29;
    v67 = 29;
    goto LABEL_66;
  }

  v72[0] = sub_1D208C64C();
  v72[1] = v32;
  v71[2] = a1;
  v71[3] = a2;
  v37 = MEMORY[0x1D38948D0](v72[0], v32, a1, a2);
  sub_1D1FE023C(v72);
  if (v37)
  {

    v103 = 30;
    v67 = 30;
    goto LABEL_66;
  }

  v71[0] = sub_1D208C64C();
  v71[1] = v33;
  v36 = MEMORY[0x1D38948D0](v71[0], v33, a1, a2);
  sub_1D1FE023C(v71);
  if (v36)
  {

    v103 = 31;
    v67 = 31;
    goto LABEL_66;
  }

  return 32;
}

BOOL sub_1D206DBA8(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    case 13:
      v4 = 13;
      break;
    case 14:
      v4 = 14;
      break;
    case 15:
      v4 = 15;
      break;
    case 16:
      v4 = 16;
      break;
    case 17:
      v4 = 17;
      break;
    case 18:
      v4 = 18;
      break;
    case 19:
      v4 = 19;
      break;
    case 20:
      v4 = 20;
      break;
    case 21:
      v4 = 21;
      break;
    case 22:
      v4 = 22;
      break;
    case 23:
      v4 = 23;
      break;
    case 24:
      v4 = 24;
      break;
    case 25:
      v4 = 25;
      break;
    case 26:
      v4 = 26;
      break;
    case 27:
      v4 = 27;
      break;
    case 28:
      v4 = 28;
      break;
    case 29:
      v4 = 29;
      break;
    case 30:
      v4 = 30;
      break;
    case 31:
      v4 = 31;
      break;
    default:
      v4 = 0;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    default:
      v3 = 0;
      break;
  }

  return v4 == v3;
}

unint64_t sub_1D206E328()
{
  v2 = qword_1EC6BF348;
  if (!qword_1EC6BF348)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D206E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D206C814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D206E484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D206DB90();
  *a1 = result;
  return result;
}

unint64_t sub_1D206E4E0()
{
  v2 = qword_1EC6BF350;
  if (!qword_1EC6BF350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF350);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D206E58C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_encoder);

  return v2;
}

uint64_t sub_1D206E5CC()
{
  v16 = *MEMORY[0x1E69E9840];
  v12[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = objc_opt_self();
  (MEMORY[0x1E69E5928])();
  v12[0] = 0;
  v11 = [v8 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v12];
  v9 = v12[0];
  MEMORY[0x1E69E5928](v12[0]);
  v0 = v15;
  v15 = v9;
  MEMORY[0x1E69E5920](v0);
  swift_unknownObjectRelease();
  if (v11)
  {
    v7 = sub_1D208BD1C();
    v13 = v7;
    v14 = v1;
    MEMORY[0x1E69E5920](v11);
    return v7;
  }

  else
  {
    v5 = v15;
    v6 = sub_1D208BC7C();
    MEMORY[0x1E69E5920](v5);
    swift_willThrow();
    v3 = v6;
    swift_willThrow();

    return v4;
  }
}

uint64_t static EKEnergySite.unarchive(data:)(uint64_t a1, uint64_t a2)
{
  v11[4] = 0;
  v11[5] = a1;
  v11[6] = a2;
  sub_1D1FEA79C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF360, &qword_1D2091A90);
  sub_1D208CB2C();
  *v2 = type metadata accessor for EKEnergySite(0);
  sub_1D1FCECE8();
  sub_1D208C88C();
  if (v9)
  {

    v4 = v9;
    swift_willThrow();

    return v5;
  }

  else
  {

    if (v11[3])
    {
      if (swift_dynamicCast())
      {
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }

      v7 = v8;
    }

    else
    {
      sub_1D205539C(v11);
      v7 = 0;
    }

    if (v7)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

id EKEnergySite.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEnergySite(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D206ED38@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EKEnergySite(0);
  result = sub_1D208C9FC();
  *a2 = result;
  return result;
}

unint64_t sub_1D206EDCC()
{
  v2 = qword_1EC6BF368;
  if (!qword_1EC6BF368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D206EE60()
{
  v2 = qword_1EC6BF370;
  if (!qword_1EC6BF370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D206EEF4()
{
  v2 = qword_1EC6BF378;
  if (!qword_1EC6BF378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D206EF8C(uint64_t a1)
{
  updated = sub_1D2028234(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1D20717F8(319);
    if (v2 <= 0x3F)
    {
      updated = sub_1D2071894(319);
      if (v3 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t dispatch thunk of EKEnergySite.includeRatePlanInGuidance.getter()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x468))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of EKEnergySite.includeRatePlanInGuidance.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x470))(v3);
}

uint64_t dispatch thunk of EKEnergySite.__allocating_init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, int a51, char a52, uint64_t a53)
{
  LODWORD(v56) = a51;
  BYTE4(v56) = a52 & 1;
  return (*(v53 + 1176))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, v56, a53);
}

unint64_t sub_1D20717F8(uint64_t a1)
{
  v5 = qword_1EE082BB0;
  if (!qword_1EE082BB0)
  {
    sub_1D208BF1C();
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EE082BB0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D2071894(uint64_t a1)
{
  v5 = qword_1EE082A78[0];
  if (!qword_1EE082A78[0])
  {
    sub_1D208C21C();
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, qword_1EE082A78);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1D2071930(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE0)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 31) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 224;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 32;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1D2071A98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE0)
  {
    v5 = ((a3 + 31) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE0)
  {
    v4 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 31;
    }
  }

  return result;
}

void *sub_1D2071CA8(const void *a1, void *a2)
{
  v6 = sub_1D208C21C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1D2071DD0(void *a1, void *a2)
{
  v9 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 20);
    v5 = a1 + *(v9 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

void *sub_1D2071F2C(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1D2071F6C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D1FD0018(result, a2);
  }

  return result;
}

uint64_t sub_1D2071FB4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D1FD0094(result, a2);
  }

  return result;
}

char *sub_1D2071FFC(char *a1, char *a2)
{
  *a2 = *a1;

  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 40))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t UsagePointPayload.utilityID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t UsagePointPayload.utilityID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.subscriptionID.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t UsagePointPayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t UsagePointPayload.usagePointID.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t UsagePointPayload.usagePointID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t UsagePointPayload.sourceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for UsagePointPayload(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 40)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t type metadata accessor for UsagePointPayload(uint64_t a1)
{
  v2 = qword_1EC6C7000;
  if (!qword_1EC6C7000)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1D20725AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for UsagePointPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D207E60C(v3, &v5 - v8);
  UsagePointPayload.sourceTime.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D207E880(v14);
}

uint64_t sub_1D20726E8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.sourceTime.setter(v7);
}

uint64_t UsagePointPayload.sourceTime.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 40)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*UsagePointPayload.sourceTime.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 31583);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 31583);
  v8 = __swift_coroFrameAllocStub(v5, 31583);
  v6[4] = v8;
  UsagePointPayload.sourceTime.getter(v8);
  return sub_1D2072A20;
}

void sub_1D2072A20(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    UsagePointPayload.sourceTime.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    UsagePointPayload.sourceTime.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL UsagePointPayload.hasSourceTime.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload(0);
  sub_1D1FD5F1C((v0 + *(v2 + 40)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.clearSourceTime()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for UsagePointPayload(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 40)));
}

uint64_t type metadata accessor for UsagePointPayload.TariffProfile(uint64_t a1)
{
  v2 = qword_1EC6C7020;
  if (!qword_1EC6C7020)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t UsagePointPayload.tariffProfiles.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t UsagePointPayload.tariffProfiles.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
}

uint64_t type metadata accessor for UsagePointPayload.TariffRider(uint64_t a1)
{
  v2 = qword_1EC6C7010;
  if (!qword_1EC6C7010)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t UsagePointPayload.riders.getter()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t UsagePointPayload.riders.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
}

uint64_t UsagePointPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload(0) + 36);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload(v8);
  (*(v10 + 40))(v1 + *(v4 + 36), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t UsagePointPayload.TariffRider.riderID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t UsagePointPayload.TariffRider.riderID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.TariffRider.start.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for UsagePointPayload.TariffRider(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 24)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D20734BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for UsagePointPayload.TariffRider(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D207E17C(v3, &v5 - v8);
  UsagePointPayload.TariffRider.start.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D207E470(v14);
}

uint64_t sub_1D20735F8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffRider.start.setter(v7);
}

uint64_t UsagePointPayload.TariffRider.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 24)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*UsagePointPayload.TariffRider.start.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 49509);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 49509);
  v8 = __swift_coroFrameAllocStub(v5, 49509);
  v6[4] = v8;
  UsagePointPayload.TariffRider.start.getter(v8);
  return sub_1D2073930;
}

void sub_1D2073930(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    UsagePointPayload.TariffRider.start.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    UsagePointPayload.TariffRider.start.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL UsagePointPayload.TariffRider.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D1FD5F1C((v0 + *(v2 + 24)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffRider.clearStart()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 24)));
}

uint64_t UsagePointPayload.TariffRider.end.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for UsagePointPayload.TariffRider(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 28)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D2073E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for UsagePointPayload.TariffRider(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D207E17C(v3, &v5 - v8);
  UsagePointPayload.TariffRider.end.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D207E470(v14);
}

uint64_t sub_1D2073F44(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffRider.end.setter(v7);
}

uint64_t UsagePointPayload.TariffRider.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 28)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*UsagePointPayload.TariffRider.end.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 21460);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 21460);
  v8 = __swift_coroFrameAllocStub(v5, 21460);
  v6[4] = v8;
  UsagePointPayload.TariffRider.end.getter(v8);
  return sub_1D207427C;
}

void sub_1D207427C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    UsagePointPayload.TariffRider.end.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    UsagePointPayload.TariffRider.end.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL UsagePointPayload.TariffRider.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffRider.clearEnd()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 28)));
}

uint64_t UsagePointPayload.TariffRider.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload.TariffRider(0) + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.TariffRider.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload.TariffRider(v8);
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

char *UsagePointPayload.TariffRider.init()@<X0>(char *a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v8 = 0;
  v10 = type metadata accessor for UsagePointPayload.TariffRider(0);
  v7 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v6 - v7;
  v17 = &v6 - v7;
  v1 = sub_1D208C51C();
  v2 = v15;
  *v15 = v1;
  *(v2 + 1) = v3;
  sub_1D208C20C();
  v9 = *(v10 + 24);
  v12 = sub_1D208C1EC();
  v4 = *(v12 - 8);
  v14 = *(v4 + 56);
  v13 = v4 + 56;
  v11 = 1;
  v14(&v15[v9], 1);
  (v14)(&v15[*(v10 + 28)], v11, v11, v12);
  return sub_1D20748C8(v15, v16);
}

char *sub_1D20748C8(char *a1, char *a2)
{
  *a2 = *a1;
  v10 = type metadata accessor for UsagePointPayload.TariffRider(0);
  v8 = v10[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[6];
  v13 = sub_1D208C1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(&a1[v11], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v11], &a1[v11], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(&a2[v11], 0, 1, v13);
  }

  __dst = &a2[v10[7]];
  __src = &a1[v10[7]];
  if (v15())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1D2074BE4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 24)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2074CE8(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 28)));
  return sub_1D1FD6044(v8);
}

uint64_t UsagePointPayload.TariffProfile.tariffProfileID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t UsagePointPayload.TariffProfile.tariffProfileID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.TariffProfile.start.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for UsagePointPayload.TariffProfile(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 24)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D207507C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for UsagePointPayload.TariffProfile(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D207DCEC(v3, &v5 - v8);
  UsagePointPayload.TariffProfile.start.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D207DFE0(v14);
}

uint64_t sub_1D20751B8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffProfile.start.setter(v7);
}

uint64_t UsagePointPayload.TariffProfile.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 24)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*UsagePointPayload.TariffProfile.start.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 37857);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 37857);
  v8 = __swift_coroFrameAllocStub(v5, 37857);
  v6[4] = v8;
  UsagePointPayload.TariffProfile.start.getter(v8);
  return sub_1D20754F0;
}

void sub_1D20754F0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    UsagePointPayload.TariffProfile.start.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    UsagePointPayload.TariffProfile.start.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL UsagePointPayload.TariffProfile.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D1FD5F1C((v0 + *(v2 + 24)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffProfile.clearStart()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 24)));
}

uint64_t UsagePointPayload.TariffProfile.end.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for UsagePointPayload.TariffProfile(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 28)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t sub_1D20759C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for UsagePointPayload.TariffProfile(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D207DCEC(v3, &v5 - v8);
  UsagePointPayload.TariffProfile.end.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D207DFE0(v14);
}

uint64_t sub_1D2075B04(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffProfile.end.setter(v7);
}

uint64_t UsagePointPayload.TariffProfile.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 28)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*UsagePointPayload.TariffProfile.end.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 46885);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 46885);
  v8 = __swift_coroFrameAllocStub(v5, 46885);
  v6[4] = v8;
  UsagePointPayload.TariffProfile.end.getter(v8);
  return sub_1D2075E3C;
}

void sub_1D2075E3C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    UsagePointPayload.TariffProfile.end.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    UsagePointPayload.TariffProfile.end.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL UsagePointPayload.TariffProfile.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffProfile.clearEnd()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 28)));
}

uint64_t UsagePointPayload.TariffProfile.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload.TariffProfile(0) + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.TariffProfile.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload.TariffProfile(v8);
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

char *UsagePointPayload.TariffProfile.init()@<X0>(char *a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v8 = 0;
  v10 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  v7 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v6 - v7;
  v17 = &v6 - v7;
  v1 = sub_1D208C51C();
  v2 = v15;
  *v15 = v1;
  *(v2 + 1) = v3;
  sub_1D208C20C();
  v9 = *(v10 + 24);
  v12 = sub_1D208C1EC();
  v4 = *(v12 - 8);
  v14 = *(v4 + 56);
  v13 = v4 + 56;
  v11 = 1;
  v14(&v15[v9], 1);
  (v14)(&v15[*(v10 + 28)], v11, v11, v12);
  return sub_1D2076488(v15, v16);
}

char *sub_1D2076488(char *a1, char *a2)
{
  *a2 = *a1;
  v10 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  v8 = v10[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[6];
  v13 = sub_1D208C1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(&a1[v11], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v11], &a1[v11], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(&a2[v11], 0, 1, v13);
  }

  __dst = &a2[v10[7]];
  __src = &a1[v10[7]];
  if (v15())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1D20767A4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 24)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20768A8(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 28)));
  return sub_1D1FD6044(v8);
}

uint64_t UsagePointPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = 0;
  v19 = 0;
  v18 = type metadata accessor for UsagePointPayload(0);
  v17 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v16 - v17);
  v23 = &v16 - v17;
  v1 = sub_1D208C51C();
  v2 = v21;
  *v21 = v1;
  v2[1] = v3;
  v4 = sub_1D208C51C();
  v5 = v21;
  v21[2] = v4;
  v5[3] = v6;
  v7 = sub_1D208C51C();
  v8 = v21;
  v9 = v7;
  v10 = v19;
  v21[4] = v9;
  v8[5] = v11;
  type metadata accessor for UsagePointPayload.TariffProfile(v10);
  v12 = sub_1D208CB2C();
  v13 = v19;
  v21[6] = v12;
  type metadata accessor for UsagePointPayload.TariffRider(v13);
  v21[7] = sub_1D208CB2C();
  sub_1D208C20C();
  v20 = *(v18 + 40);
  v14 = sub_1D208C1EC();
  (*(*(v14 - 8) + 56))(v21 + v20, 1);
  return sub_1D2076AD4(v21, v22);
}

uint64_t sub_1D2076AD4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  v7 = type metadata accessor for UsagePointPayload(0);
  v5 = *(v7 + 36);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v5, a1 + v5);
  v8 = *(v7 + 40);
  v10 = sub_1D208C1EC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v8), (a1 + v8), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_1D2076D10(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload(0);
  sub_1D1FD6448(v7, (v1 + *(v3 + 40)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2076DD4()
{
  result = sub_1D208C64C();
  qword_1EC6C6658 = result;
  qword_1EC6C6660 = v1;
  return result;
}

uint64_t *sub_1D2076E18()
{
  if (qword_1EC6C6650 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C6658;
}

uint64_t static UsagePointPayload.protoMessageName.getter()
{
  v1 = *sub_1D2076E18();

  return v1;
}

uint64_t sub_1D2076EB4()
{
  v17 = sub_1D208C47C();
  __swift_allocate_value_buffer(v17, qword_1EC6C6670);
  __swift_project_value_buffer(v17, qword_1EC6C6670);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v21 = v0;
  v1 = *(v23 + 48);
  *v0 = 1;
  v19 = v0 + v1;
  *v19 = "utilityID";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v18 = *MEMORY[0x1E69AADC8];
  v22 = *(*(sub_1D208C45C() - 8) + 104);
  (v22)(v19, v18);
  v20 = *(*(v23 - 8) + 72);
  v2 = *(v23 + 48);
  *(v21 + v20) = 2;
  v3 = v21 + v20 + v2;
  *v3 = "subscriptionID";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v22();
  v4 = *(v23 + 48);
  v5 = (v21 + 2 * v20);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "usagePointID";
  *(v6 + 1) = 12;
  v6[16] = 2;
  v22();
  v7 = *(v23 + 48);
  v8 = (v21 + 3 * v20);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "sourceTime";
  *(v9 + 1) = 10;
  v9[16] = 2;
  v22();
  v10 = *(v23 + 48);
  v11 = (v21 + 4 * v20);
  *v11 = 5;
  v12 = v11 + v10;
  *v12 = "tariffProfiles";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v22();
  v13 = *(v23 + 48);
  v14 = (v21 + 5 * v20);
  *v14 = 6;
  v15 = v14 + v13;
  *v15 = "riders";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v22();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2077248()
{
  if (qword_1EC6C6668 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C6670);
}

uint64_t static UsagePointPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2077248();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D1FDAE60(a1, v8);
        break;
      case 3:
        sub_1D1FDAEE4(a1, v8);
        break;
      case 4:
        sub_1D2077628(a1, v8, a2, a3);
        break;
      case 5:
        sub_1D20776F0(a1, v8, a2, a3);
        break;
      case 6:
        sub_1D207779C(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D2077628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D20776F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D207846C();
  return sub_1D208C32C();
}

uint64_t sub_1D207779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D20783EC();
  return sub_1D208C32C();
}

uint64_t UsagePointPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v66 = a2;
  v67 = a3;
  v82 = 0;
  v81 = 0;
  v83 = a2;
  v71 = sub_1D208C21C();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v75 = v15 - v74;
  v82 = v4;
  v81 = v3;
  v76 = *v3;
  v77 = v3[1];

  v78 = sub_1D208C66C();

  if (v78)
  {
    v61 = v69;
  }

  else
  {
    v5 = v69;
    v62 = *v68;
    v63 = v68[1];

    sub_1D208C41C();
    v64 = v5;
    v65 = v5;
    if (v5)
    {
      v19 = v65;

      v20 = v19;
      return result;
    }

    v61 = v64;
  }

  v57 = v61;
  v58 = v68[2];
  v59 = v68[3];

  v60 = sub_1D208C66C();

  if (v60)
  {
    v52 = v57;
  }

  else
  {
    v6 = v57;
    v53 = v68[2];
    v54 = v68[3];

    sub_1D208C41C();
    v55 = v6;
    v56 = v6;
    if (v6)
    {
      v18 = v56;

      v20 = v18;
      return result;
    }

    v52 = v55;
  }

  v48 = v52;
  v49 = v68[4];
  v50 = v68[5];

  v51 = sub_1D208C66C();

  if (v51)
  {
    v43 = v48;
  }

  else
  {
    v7 = v48;
    v44 = v68[4];
    v45 = v68[5];

    sub_1D208C41C();
    v46 = v7;
    v47 = v7;
    if (v7)
    {
      v17 = v47;

      v20 = v17;
      return result;
    }

    v43 = v46;
  }

  v8 = v43;
  result = sub_1D2078044(v68, v70, v66, v67);
  v41 = v8;
  v42 = v8;
  if (v8)
  {
    v20 = v42;
    return result;
  }

  v39 = v68[6];

  v80 = v39;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF380, &qword_1D2091CE0);
  sub_1D20782DC();
  v40 = sub_1D208C82C();

  if (v40)
  {
    v33 = v41;
  }

  else
  {
    v35 = v68[6];

    v34 = type metadata accessor for UsagePointPayload.TariffProfile(0);
    sub_1D207846C();
    v10 = v41;
    sub_1D208C43C();
    v36 = v10;
    v37 = v10;
    if (v10)
    {
      v16 = v37;

      v20 = v16;
      return result;
    }

    v33 = v36;
  }

  v29 = v33;
  v31 = v68[7];

  v79 = v31;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF390, &unk_1D2091CE8);
  sub_1D2078364();
  v32 = sub_1D208C82C();

  if (v32)
  {
    v24 = v29;
  }

  else
  {
    v26 = v68[7];

    v25 = type metadata accessor for UsagePointPayload.TariffRider(0);
    sub_1D20783EC();
    v11 = v29;
    sub_1D208C43C();
    v27 = v11;
    v28 = v11;
    if (v11)
    {
      v15[2] = v28;
    }

    v24 = v27;
  }

  v12 = v75;
  v21 = v24;
  v13 = type metadata accessor for UsagePointPayload(0);
  (*(v72 + 16))(v12, v68 + *(v13 + 36), v71);
  v14 = v21;
  sub_1D208C1FC();
  v22 = v14;
  v23 = v14;
  if (v14)
  {
    v15[1] = v23;
  }

  return (*(v72 + 8))(v75, v71);
}

uint64_t sub_1D2078044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for UsagePointPayload(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 40)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

unint64_t sub_1D20782DC()
{
  v2 = qword_1EC6BF388;
  if (!qword_1EC6BF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF380, &qword_1D2091CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2078364()
{
  v2 = qword_1EC6BF398;
  if (!qword_1EC6BF398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF390, &unk_1D2091CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20783EC()
{
  v2 = qword_1EC6BF3A0;
  if (!qword_1EC6BF3A0)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207846C()
{
  v2 = qword_1EC6BF3A8;
  if (!qword_1EC6BF3A8)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3A8);
    return WitnessTable;
  }

  return v2;
}

BOOL static UsagePointPayload.== infix(_:_:)(void *a1, char *a2)
{
  v73 = a1;
  v82 = a2;
  v102 = 0;
  v101 = 0;
  v57 = 0;
  v58 = sub_1D208C21C();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (v59[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v62 = v12 - v61;
  v63 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v64 = v12 - v63;
  v65 = sub_1D208C1EC();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v69 = v12 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v12 - v71;
  v74 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v12 - v74;
  v76 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v77 = v12 - v76;
  v78 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v79 = v12 - v78;
  v102 = v8;
  v101 = v9;
  v80 = *v8;
  v81 = v8[1];

  v86 = &v99;
  v99 = v80;
  v100 = v81;
  v83 = *v82;
  v84 = *(v82 + 1);

  v85 = v98;
  v98[0] = v83;
  v98[1] = v84;
  v87 = MEMORY[0x1D38948D0](v99, v100, v83, v84);
  sub_1D1FE023C(v85);
  sub_1D1FE023C(v86);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v49 = v73[2];
  v50 = v73[3];

  v54 = &v96;
  v96 = v49;
  v97 = v50;
  v51 = *(v82 + 2);
  v52 = *(v82 + 3);

  v53 = v95;
  v95[0] = v51;
  v95[1] = v52;
  v55 = MEMORY[0x1D38948D0](v96, v97, v51, v52);
  sub_1D1FE023C(v53);
  sub_1D1FE023C(v54);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

  v42 = v73[4];
  v43 = v73[5];

  v47 = &v93;
  v93 = v42;
  v94 = v43;
  v44 = *(v82 + 4);
  v45 = *(v82 + 5);

  v46 = v92;
  v92[0] = v44;
  v92[1] = v45;
  v48 = MEMORY[0x1D38948D0](v93, v94, v44, v45);
  sub_1D1FE023C(v46);
  sub_1D1FE023C(v47);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

  v38 = type metadata accessor for UsagePointPayload(0);
  sub_1D1FD5F1C(v73 + *(v38 + 40), v79);
  sub_1D1FD5F1C(&v82[*(v38 + 40)], v77);
  v39 = &v72[*(v70 + 48)];
  sub_1D1FD5F1C(v79, v72);
  sub_1D1FD5F1C(v77, v39);
  v40 = *(v66 + 48);
  v41 = v66 + 48;
  if (v40(v72, 1, v65) == 1)
  {
    if (v40(v39, 1, v65) == 1)
    {
      sub_1D1FD6044(v72);
      v37 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D1FD5F1C(v72, v75);
    if (v40(v39, 1, v65) != 1)
    {
      (*(v66 + 32))(v69, v39, v65);
      sub_1D1FE0494();
      v36 = sub_1D208C59C();
      v35 = *(v66 + 8);
      v34 = v66 + 8;
      v35(v69, v65);
      v35(v75, v65);
      sub_1D1FD6044(v72);
      v37 = v36;
      goto LABEL_13;
    }

    (*(v66 + 8))(v75, v65);
  }

  sub_1D1FE0268(v72);
  v37 = 0;
LABEL_13:
  v33 = v37;
  sub_1D1FD6044(v77);
  sub_1D1FD6044(v79);
  if (v33)
  {
    v25 = v73[6];

    v31 = &v91;
    v91 = v25;
    v26 = *(v82 + 6);

    v30 = &v90;
    v90 = v26;
    v29 = v91;
    v27 = v26;
    v28 = type metadata accessor for UsagePointPayload.TariffProfile(0);
    sub_1D207D020();
    v32 = sub_1D208C7BC();
    sub_1D1FD3C38(v30);
    sub_1D1FD3C38(v31);
    if (v32)
    {
      v17 = v73[7];

      v23 = &v89;
      v89 = v17;
      v18 = *(v82 + 7);

      v22 = &v88;
      v88 = v18;
      v21 = v89;
      v19 = v18;
      v20 = type metadata accessor for UsagePointPayload.TariffRider(0);
      sub_1D207D0A0();
      v24 = sub_1D208C7BC();
      sub_1D1FD3C38(v22);
      sub_1D1FD3C38(v23);
      if (v24)
      {
        v10 = v73 + *(v38 + 36);
        v13 = v59[2];
        v12[1] = v59 + 2;
        v13(v64, v10, v58);
        v13(v62, &v82[*(v38 + 36)], v58);
        sub_1D1FE0414();
        v16 = sub_1D208C59C();
        v15 = v59[1];
        v14 = v59 + 1;
        v15(v62, v58);
        v15(v64, v58);
        return (v16 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t UsagePointPayload.hashValue.getter()
{
  type metadata accessor for UsagePointPayload(0);
  sub_1D207D120();
  return sub_1D208C9DC();
}

void (*sub_1D2079188(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 37784);
  *a1 = v2;
  v2[4] = UsagePointPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2079378()
{
  v0 = sub_1D2076E18();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C6690 = v6;
  qword_1EC6C6698 = v7;
  return result;
}

uint64_t *sub_1D2079418()
{
  if (qword_1EC6C6688 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C6690;
}

uint64_t static UsagePointPayload.TariffRider.protoMessageName.getter()
{
  v1 = *sub_1D2079418();

  return v1;
}

uint64_t sub_1D20794B4()
{
  v8 = sub_1D208C47C();
  __swift_allocate_value_buffer(v8, qword_1EC6C66A8);
  __swift_project_value_buffer(v8, qword_1EC6C66A8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v12 = v0;
  v1 = *(v14 + 48);
  *v0 = 1;
  v10 = v0 + v1;
  *v10 = "riderID";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v13 = *(*(sub_1D208C45C() - 8) + 104);
  (v13)(v10, v9);
  v11 = *(*(v14 - 8) + 72);
  v2 = *(v14 + 48);
  *(v12 + v11) = 2;
  v3 = v12 + v11 + v2;
  *v3 = "start";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v13();
  v4 = *(v14 + 48);
  v5 = (v12 + 2 * v11);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "end";
  *(v6 + 1) = 3;
  v6[16] = 2;
  v13();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20796E8()
{
  if (qword_1EC6C66A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C66A8);
}

uint64_t static UsagePointPayload.TariffRider._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20796E8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.TariffRider.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D20799B4(a1, v8, a2, a3);
        break;
      case 3:
        sub_1D2079A7C(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D20799B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2079A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t UsagePointPayload.TariffRider.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v22 = a2;
  v23 = a3;
  v36 = 0;
  v35 = 0;
  v37 = a2;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = v11 - v30;
  v36 = v4;
  v35 = v3;
  v32 = *v3;
  v33 = v3[1];

  v34 = sub_1D208C66C();

  if (v34)
  {
    v17 = v25;
  }

  else
  {
    v5 = v25;
    v18 = *v24;
    v19 = v24[1];

    sub_1D208C41C();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v11[2] = v21;
    }

    v17 = v20;
  }

  v6 = v17;
  result = sub_1D2079E40(v24, v26, v22, v23);
  v15 = v6;
  v16 = v6;
  if (!v6)
  {
    sub_1D207A0D8(v24, v26, v22, v23);
    v13 = 0;
    v14 = 0;
    v8 = v31;
    v9 = type metadata accessor for UsagePointPayload.TariffRider(0);
    (*(v28 + 16))(v8, v24 + *(v9 + 20), v27);
    v10 = v13;
    sub_1D208C1FC();
    v11[4] = v10;
    v12 = v10;
    if (v10)
    {
      v11[1] = v12;
    }

    return (*(v28 + 8))(v31, v27);
  }

  return result;
}

uint64_t sub_1D2079E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for UsagePointPayload.TariffRider(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 24)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

uint64_t sub_1D207A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for UsagePointPayload.TariffRider(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 28)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

BOOL static UsagePointPayload.TariffRider.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v74 = a2;
  v84 = 0;
  v83 = 0;
  v41 = 0;
  v42 = sub_1D208C21C();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = v20 - v45;
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = v20 - v47;
  v49 = sub_1D208C1EC();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v20 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v20 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v58 = v20 - v57;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v20 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v20 - v62;
  v64 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v65 = v20 - v64;
  v66 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v67 = v20 - v66;
  v68 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v69 = v20 - v68;
  v70 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v20 - v70;
  v84 = v16;
  v83 = v17;
  v72 = *v16;
  v73 = v16[1];

  v78 = &v81;
  v81 = v72;
  v82 = v73;
  v75 = *v74;
  v76 = v74[1];

  v77 = v80;
  v80[0] = v75;
  v80[1] = v76;
  v79 = MEMORY[0x1D38948D0](v81, v82, v75, v76);
  sub_1D1FE023C(v77);
  sub_1D1FE023C(v78);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D1FD5F1C((v59 + v36[6]), v71);
  sub_1D1FD5F1C(v74 + v36[6], v69);
  v37 = &v58[*(v54 + 48)];
  sub_1D1FD5F1C(v71, v58);
  sub_1D1FD5F1C(v69, v37);
  v38 = *(v50 + 48);
  v39 = v50 + 48;
  if (v38(v58, 1, v49) == 1)
  {
    if (v38(v37, 1, v49) == 1)
    {
      sub_1D1FD6044(v58);
      v35 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D1FD5F1C(v58, v67);
    if (v38(v37, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v37, v49);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v50 + 8);
      v32 = v50 + 8;
      v33(v53, v49);
      v33(v67, v49);
      sub_1D1FD6044(v58);
      v35 = v34;
      goto LABEL_9;
    }

    (*(v50 + 8))(v67, v49);
  }

  sub_1D1FE0268(v58);
  v35 = 0;
LABEL_9:
  v31 = v35;
  sub_1D1FD6044(v69);
  sub_1D1FD6044(v71);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v59 + v36[7]), v65);
  sub_1D1FD5F1C(v74 + v36[7], v63);
  v30 = &v56[*(v54 + 48)];
  sub_1D1FD5F1C(v65, v56);
  sub_1D1FD5F1C(v63, v30);
  if (v38(v56, 1, v49) == 1)
  {
    if (v38(v30, 1, v49) == 1)
    {
      sub_1D1FD6044(v56);
      v29 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1D1FD5F1C(v56, v61);
    if (v38(v30, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v30, v49);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v50 + 8);
      v26 = v50 + 8;
      v27(v53, v49);
      v27(v61, v49);
      sub_1D1FD6044(v56);
      v29 = v28;
      goto LABEL_20;
    }

    (*(v50 + 8))(v61, v49);
  }

  sub_1D1FE0268(v56);
  v29 = 0;
LABEL_20:
  v25 = v29;
  sub_1D1FD6044(v63);
  sub_1D1FD6044(v65);
  if (v25)
  {
    v18 = v59 + v36[5];
    v21 = v43[2];
    v20[1] = v43 + 2;
    v21(v48, v18, v42);
    v21(v46, v74 + v36[5], v42);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v43[1];
    v22 = v43 + 1;
    v23(v46, v42);
    v23(v48, v42);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t UsagePointPayload.TariffRider.hashValue.getter()
{
  type metadata accessor for UsagePointPayload.TariffRider(0);
  sub_1D207D2A0();
  return sub_1D208C9DC();
}

void (*sub_1D207AFDC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 62896);
  *a1 = v2;
  v2[4] = UsagePointPayload.TariffRider.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D207B1CC()
{
  v0 = sub_1D2076E18();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C66C8 = v6;
  qword_1EC6C66D0 = v7;
  return result;
}

uint64_t *sub_1D207B26C()
{
  if (qword_1EC6C66C0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C66C8;
}

uint64_t static UsagePointPayload.TariffProfile.protoMessageName.getter()
{
  v1 = *sub_1D207B26C();

  return v1;
}

uint64_t sub_1D207B308()
{
  v8 = sub_1D208C47C();
  __swift_allocate_value_buffer(v8, qword_1EC6C66E0);
  __swift_project_value_buffer(v8, qword_1EC6C66E0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v12 = v0;
  v1 = *(v14 + 48);
  *v0 = 1;
  v10 = v0 + v1;
  *v10 = "tariffProfileID";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v13 = *(*(sub_1D208C45C() - 8) + 104);
  (v13)(v10, v9);
  v11 = *(*(v14 - 8) + 72);
  v2 = *(v14 + 48);
  *(v12 + v11) = 2;
  v3 = v12 + v11 + v2;
  *v3 = "start";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v13();
  v4 = *(v14 + 48);
  v5 = (v12 + 2 * v11);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "end";
  *(v6 + 1) = 3;
  v6[16] = 2;
  v13();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D207B53C()
{
  if (qword_1EC6C66D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C66E0);
}

uint64_t static UsagePointPayload.TariffProfile._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D207B53C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.TariffProfile.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D207B808(a1, v8, a2, a3);
        break;
      case 3:
        sub_1D207B8D0(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D207B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D207B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t UsagePointPayload.TariffProfile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v22 = a2;
  v23 = a3;
  v36 = 0;
  v35 = 0;
  v37 = a2;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = v11 - v30;
  v36 = v4;
  v35 = v3;
  v32 = *v3;
  v33 = v3[1];

  v34 = sub_1D208C66C();

  if (v34)
  {
    v17 = v25;
  }

  else
  {
    v5 = v25;
    v18 = *v24;
    v19 = v24[1];

    sub_1D208C41C();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v11[2] = v21;
    }

    v17 = v20;
  }

  v6 = v17;
  result = sub_1D207BC94(v24, v26, v22, v23);
  v15 = v6;
  v16 = v6;
  if (!v6)
  {
    sub_1D207BF2C(v24, v26, v22, v23);
    v13 = 0;
    v14 = 0;
    v8 = v31;
    v9 = type metadata accessor for UsagePointPayload.TariffProfile(0);
    (*(v28 + 16))(v8, v24 + *(v9 + 20), v27);
    v10 = v13;
    sub_1D208C1FC();
    v11[4] = v10;
    v12 = v10;
    if (v10)
    {
      v11[1] = v12;
    }

    return (*(v28 + 8))(v31, v27);
  }

  return result;
}

uint64_t sub_1D207BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for UsagePointPayload.TariffProfile(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 24)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

uint64_t sub_1D207BF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v19 = a2;
  v15 = a3;
  v16 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v18 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v11 - v18;
  v20 = 0;
  v26 = sub_1D208C1EC();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v30 = v11 - v21;
  v29 = v5;
  v28 = v6;
  v8 = type metadata accessor for UsagePointPayload.TariffProfile(v7);
  sub_1D1FD5F1C((v23 + *(v8 + 28)), v27);
  if ((*(v24 + 48))(v27, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v27);
    v14 = v17;
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
    sub_1D1FE1C64();
    v10 = v17;
    sub_1D208C44C();
    v12 = v10;
    v13 = v10;
    if (v10)
    {
      v11[1] = v13;
      return (*(v24 + 8))(v22, v26);
    }

    else
    {
      (*(v24 + 8))(v22, v26);
      result = v12;
      v14 = v12;
    }
  }

  return result;
}

BOOL static UsagePointPayload.TariffProfile.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v74 = a2;
  v84 = 0;
  v83 = 0;
  v41 = 0;
  v42 = sub_1D208C21C();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = v20 - v45;
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = v20 - v47;
  v49 = sub_1D208C1EC();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v20 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v20 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v58 = v20 - v57;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v20 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v20 - v62;
  v64 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v65 = v20 - v64;
  v66 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v67 = v20 - v66;
  v68 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v69 = v20 - v68;
  v70 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v20 - v70;
  v84 = v16;
  v83 = v17;
  v72 = *v16;
  v73 = v16[1];

  v78 = &v81;
  v81 = v72;
  v82 = v73;
  v75 = *v74;
  v76 = v74[1];

  v77 = v80;
  v80[0] = v75;
  v80[1] = v76;
  v79 = MEMORY[0x1D38948D0](v81, v82, v75, v76);
  sub_1D1FE023C(v77);
  sub_1D1FE023C(v78);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D1FD5F1C((v59 + v36[6]), v71);
  sub_1D1FD5F1C(v74 + v36[6], v69);
  v37 = &v58[*(v54 + 48)];
  sub_1D1FD5F1C(v71, v58);
  sub_1D1FD5F1C(v69, v37);
  v38 = *(v50 + 48);
  v39 = v50 + 48;
  if (v38(v58, 1, v49) == 1)
  {
    if (v38(v37, 1, v49) == 1)
    {
      sub_1D1FD6044(v58);
      v35 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D1FD5F1C(v58, v67);
    if (v38(v37, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v37, v49);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v50 + 8);
      v32 = v50 + 8;
      v33(v53, v49);
      v33(v67, v49);
      sub_1D1FD6044(v58);
      v35 = v34;
      goto LABEL_9;
    }

    (*(v50 + 8))(v67, v49);
  }

  sub_1D1FE0268(v58);
  v35 = 0;
LABEL_9:
  v31 = v35;
  sub_1D1FD6044(v69);
  sub_1D1FD6044(v71);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v59 + v36[7]), v65);
  sub_1D1FD5F1C(v74 + v36[7], v63);
  v30 = &v56[*(v54 + 48)];
  sub_1D1FD5F1C(v65, v56);
  sub_1D1FD5F1C(v63, v30);
  if (v38(v56, 1, v49) == 1)
  {
    if (v38(v30, 1, v49) == 1)
    {
      sub_1D1FD6044(v56);
      v29 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1D1FD5F1C(v56, v61);
    if (v38(v30, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v30, v49);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v50 + 8);
      v26 = v50 + 8;
      v27(v53, v49);
      v27(v61, v49);
      sub_1D1FD6044(v56);
      v29 = v28;
      goto LABEL_20;
    }

    (*(v50 + 8))(v61, v49);
  }

  sub_1D1FE0268(v56);
  v29 = 0;
LABEL_20:
  v25 = v29;
  sub_1D1FD6044(v63);
  sub_1D1FD6044(v65);
  if (v25)
  {
    v18 = v59 + v36[5];
    v21 = v43[2];
    v20[1] = v43 + 2;
    v21(v48, v18, v42);
    v21(v46, v74 + v36[5], v42);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v43[1];
    v22 = v43 + 1;
    v23(v46, v42);
    v23(v48, v42);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t UsagePointPayload.TariffProfile.hashValue.getter()
{
  type metadata accessor for UsagePointPayload.TariffProfile(0);
  sub_1D207D3A0();
  return sub_1D208C9DC();
}

void (*sub_1D207CE30(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 37489);
  *a1 = v2;
  v2[4] = UsagePointPayload.TariffProfile.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D207D020()
{
  v2 = qword_1EC6BF3B0;
  if (!qword_1EC6BF3B0)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D0A0()
{
  v2 = qword_1EC6BF3B8;
  if (!qword_1EC6BF3B8)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D120()
{
  v2 = qword_1EC6BF3C0;
  if (!qword_1EC6BF3C0)
  {
    type metadata accessor for UsagePointPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D1A0()
{
  v2 = qword_1EC6BF3C8;
  if (!qword_1EC6BF3C8)
  {
    type metadata accessor for UsagePointPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D220()
{
  v2 = qword_1EC6BF3D0;
  if (!qword_1EC6BF3D0)
  {
    type metadata accessor for UsagePointPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D2A0()
{
  v2 = qword_1EC6BF3D8;
  if (!qword_1EC6BF3D8)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D320()
{
  v2 = qword_1EC6BF3E0;
  if (!qword_1EC6BF3E0)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D3A0()
{
  v2 = qword_1EC6BF3E8;
  if (!qword_1EC6BF3E8)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D420()
{
  v2 = qword_1EC6BF3F0;
  if (!qword_1EC6BF3F0)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D4B8()
{
  v2 = qword_1EC6BF3F8;
  if (!qword_1EC6BF3F8)
  {
    type metadata accessor for UsagePointPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D580()
{
  v2 = qword_1EC6BF400;
  if (!qword_1EC6BF400)
  {
    type metadata accessor for UsagePointPayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D618()
{
  v2 = qword_1EC6BF408;
  if (!qword_1EC6BF408)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D6F8()
{
  v2 = qword_1EC6BF410;
  if (!qword_1EC6BF410)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D838(uint64_t a1)
{
  v6 = sub_1D207D998(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_1D207DA34(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1D208C21C();
      if (v3 <= 0x3F)
      {
        v6 = sub_1D1FE0FAC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1D207D998(uint64_t a1)
{
  v5 = qword_1EC6BF418;
  if (!qword_1EC6BF418)
  {
    type metadata accessor for UsagePointPayload.TariffProfile(255);
    v4 = sub_1D208C7AC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF418);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D207DA34(uint64_t a1)
{
  v5 = qword_1EC6BF420;
  if (!qword_1EC6BF420)
  {
    type metadata accessor for UsagePointPayload.TariffRider(255);
    v4 = sub_1D208C7AC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC6BF420);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D207DB20(uint64_t a1)
{
  v4 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    v4 = sub_1D1FE0FAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1D207DC70()
{
  v2 = qword_1EC6C70B0[0];
  if (!qword_1EC6C70B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C70B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1D207DCEC(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  v9 = v11[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[6];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(&a1[v12], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v12], &a1[v12], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(&a2[v12], 0, 1, v14);
  }

  __dst = &a2[v11[7]];
  __src = &a1[v11[7]];
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_1D207DFE0(uint64_t a1)
{

  v5 = type metadata accessor for UsagePointPayload.TariffProfile(0);
  v4 = v5[5];
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v4);
  v6 = v5[6];
  v8 = sub_1D208C1EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  v3 = a1 + v5[7];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  return a1;
}

char *sub_1D207E17C(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for UsagePointPayload.TariffRider(0);
  v9 = v11[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[6];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(&a1[v12], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v12], &a1[v12], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(&a2[v12], 0, 1, v14);
  }

  __dst = &a2[v11[7]];
  __src = &a1[v11[7]];
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_1D207E470(uint64_t a1)
{

  v5 = type metadata accessor for UsagePointPayload.TariffRider(0);
  v4 = v5[5];
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v4);
  v6 = v5[6];
  v8 = sub_1D208C1EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  v3 = a1 + v5[7];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  return a1;
}

char *sub_1D207E60C(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  *(a2 + 2) = *(a1 + 2);
  v6 = *(a1 + 3);

  *(a2 + 3) = v6;
  *(a2 + 4) = *(a1 + 4);
  v7 = *(a1 + 5);

  *(a2 + 5) = v7;
  v8 = *(a1 + 6);

  *(a2 + 6) = v8;
  v9 = *(a1 + 7);

  *(a2 + 7) = v9;
  v12 = type metadata accessor for UsagePointPayload(0);
  v10 = *(v12 + 36);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v10], &a1[v10]);
  v13 = *(v12 + 40);
  v15 = sub_1D208C1EC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&a1[v13], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v13], &a1[v13], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))();
    (*(v16 + 56))(&a2[v13], 0, 1, v15);
  }

  return a2;
}

char *sub_1D207E880(char *a1)
{

  v4 = type metadata accessor for UsagePointPayload(0);
  v3 = *(v4 + 36);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  v5 = *(v4 + 40);
  v7 = sub_1D208C1EC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&a1[v5], 1))
  {
    (*(v8 + 8))(&a1[v5], v7);
  }

  return a1;
}

uint64_t sub_1D207E9D8()
{
  sub_1D1FE6710();
  result = sub_1D208C50C();
  qword_1EE083438 = result;
  return result;
}

uint64_t *sub_1D207EA10()
{
  if (qword_1EE082F60 != -1)
  {
    swift_once();
  }

  return &qword_1EE083438;
}

uint64_t sub_1D207EA70()
{
  v1 = sub_1D207EA10();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_1D207EAC8(uint64_t a1)
{
  v2 = sub_1D207EA10();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*sub_1D207EB3C())(uint64_t a1)
{
  sub_1D207EA10();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t static EnergyKitFeatureCheck.isEnabled(key:)(char *a1)
{
  v7 = 0;
  v4 = *a1;
  v7 = *a1;
  if ((*sub_1D1FCE46C() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1D207EA10();
  swift_beginAccess();
  sub_1D1FE6710();
  sub_1D208C56C();
  if (v5 == 2)
  {
    swift_endAccess();
LABEL_5:
    v6[3] = &type metadata for EnergyKitFeatures;
    v6[4] = sub_1D207ECE4();
    LOBYTE(v6[0]) = v4;
    v2 = sub_1D208C1AC();
    __swift_destroy_boxed_opaque_existential_1(v6);
    v3 = v2;
    return v3 & 1;
  }

  swift_endAccess();
  v3 = v5;
  return v3 & 1;
}

unint64_t sub_1D207ECE4()
{
  v2 = qword_1EE082868[0];
  if (!qword_1EE082868[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EE082868);
    return WitnessTable;
  }

  return v2;
}

uint64_t static EnergyKitFeatureCheck.setOverride(key:val:)(char *a1, char a2)
{
  sub_1D207EA10();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF428, qword_1D2092290);
  sub_1D208C57C();
  return swift_endAccess();
}

uint64_t static EnergyKitFeatureCheck.removeOverride(key:)(char *a1)
{
  sub_1D207EA10();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF428, qword_1D2092290);
  sub_1D208C57C();
  return swift_endAccess();
}

uint64_t sub_1D207EFAC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1527 = v1;
  v1592 = v2;
  v1591 = v3;
  v1590 = v4;
  v1589 = v5;
  v1593 = v6;
  v1528 = v4;
  v1583 = 0;
  v1779 = 0;
  v1778 = 0;
  v1777 = 0;
  v1776 = 0;
  v1775 = 0;
  v1774 = 0;
  v1773 = 0;
  v1772 = 0;
  v1771 = 0;
  v1770 = 0;
  v1769 = 0;
  v1768 = 0;
  v1767 = 0;
  v1529 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v1530 = *(*(v1529 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v1532 = (v1530 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1531 = v424 - v1532;
  MEMORY[0x1EEE9AC00](v7);
  v1533 = v424 - v1532;
  v1534 = sub_1D208C1EC();
  v1535 = *(v1534 - 8);
  v1536 = v1535;
  MEMORY[0x1EEE9AC00](v1534 - 8);
  v1537 = v424 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v1544 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v1546 = (v1544 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1538 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1539 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1540 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1541 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1542 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1543 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1545 = v424 - v1546;
  MEMORY[0x1EEE9AC00](v424 - v1546);
  v1547 = v424 - v1546;
  v1560 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v1583);
  v1562 = (v1560 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1548 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v10);
  v1549 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v11);
  v1550 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v12);
  v1551 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v13);
  v1552 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v14);
  v1553 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v15);
  v1554 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v16);
  v1555 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v17);
  v1556 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v18);
  v1557 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v19);
  v1558 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v20);
  v1559 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v21);
  v1561 = v424 - v1562;
  MEMORY[0x1EEE9AC00](v22);
  v1563 = v424 - v1562;
  v1564 = sub_1D208BF1C();
  v1565 = *(v1564 - 8);
  v1566 = v1565;
  v1579 = *(v1565 + 64);
  MEMORY[0x1EEE9AC00](v1583);
  v1581 = (v1579 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1567 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v23);
  v1568 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v24);
  v1569 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v25);
  v1570 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v26);
  v1571 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v27);
  v1572 = v424 - v1581;
  v1779 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v28);
  v1573 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v29);
  v1574 = v424 - v1581;
  v1778 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v30);
  v1575 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v31);
  v1576 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v32);
  v1577 = v424 - v1581;
  v1777 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v33);
  v1578 = v424 - v1581;
  v1776 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v34);
  v1580 = v424 - v1581;
  v1775 = v424 - v1581;
  MEMORY[0x1EEE9AC00](v35);
  v1582 = v424 - v1581;
  v1774 = v424 - v1581;
  v1584 = sub_1D208BF8C();
  v1585 = *(v1584 - 8);
  v1586 = v1585;
  MEMORY[0x1EEE9AC00](v1583);
  v1587 = v424 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for EnergySitePayload(v37);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v1588 = v424 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1616 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE70, &unk_1D208FB80) - 8) + 64);
  MEMORY[0x1EEE9AC00](v1593);
  v1618 = (v1616 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1594 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v40);
  v1595 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v41);
  v1596 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v42);
  v1597 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v43);
  v1598 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v44);
  v1599 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v45);
  v1600 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v46);
  v1601 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v47);
  v1602 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v48);
  v1603 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v49);
  v1604 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v50);
  v1605 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v51);
  v1606 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v52);
  v1607 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v53);
  v1608 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v54);
  v1609 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v55);
  v1610 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v56);
  v1611 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v57);
  v1612 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v58);
  v1613 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v59);
  v1614 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v60);
  v1615 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v61);
  v1617 = v424 - v1618;
  MEMORY[0x1EEE9AC00](v62);
  v1619 = v424 - v1618;
  v1773 = v63;
  v1772 = v64;
  v1771 = v65;
  v1770 = v66;
  v1769 = v67;
  if (*sub_1D1FCE46C() == 1)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1525 = v68;
    v1526 = sub_1D208C66C();

    if (v1526)
    {
      v1524 = 0;
    }

    else
    {
      EnergySitePayload.ckFunctionToken.getter();
      v1518 = v69;
      v1519 = sub_1D208C60C();
      v1520 = v70;

      v1621[0] = v1519;
      v1621[1] = v1520;
      v1620[0] = sub_1D208C64C();
      v1620[1] = v71;
      sub_1D208BA94();
      v1521 = v1620;
      v1522 = v1621;
      v1523 = sub_1D208C93C();
      sub_1D1FE023C(v1521);
      sub_1D1FE023C(v1522);
      v1524 = v1523;
    }

    if (v1524)
    {
      v1517 = 1;
    }

    else
    {
      EnergySitePayload.ckFunctionToken.getter();
      v1515 = v72;
      v1516 = sub_1D208C66C();

      if (v1516)
      {
        v1514 = 0;
      }

      else
      {
        EnergySitePayload.ckFunctionToken.getter();
        v1508 = v73;
        v1509 = sub_1D208C60C();
        v1510 = v74;

        v1623[0] = v1509;
        v1623[1] = v1510;
        v1622[0] = sub_1D208C64C();
        v1622[1] = v75;
        sub_1D208BA94();
        v1511 = v1622;
        v1512 = v1623;
        v1513 = sub_1D208C93C();
        sub_1D1FE023C(v1511);
        sub_1D1FE023C(v1512);
        v1514 = v1513;
      }

      v1517 = v1514;
    }

    if (v1517)
    {
      sub_1D1FCD668(v1528 & 1, v1619);
      v1506 = sub_1D208C4AC();
      v1507 = *(v1506 - 8);
      if ((*(v1507 + 48))(v1619, 1) == 1)
      {
        sub_1D202975C(v1619);
        v1505 = v1527;
      }

      else
      {
        v1503 = sub_1D208C48C();
        v1500 = v1503;
        v1502 = sub_1D208C84C();
        v1501 = v1502;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v1504 = sub_1D208CB2C();
        if (os_log_type_enabled(v1503, v1502))
        {
          v1498 = v1527;
          v1490 = sub_1D208C8EC();
          v1486 = v1490;
          v1487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v1488 = 0;
          v1491 = sub_1D2029898(0, v1487, v1487);
          v1489 = v1491;
          v1492 = sub_1D2029898(v1488, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1626 = v1490;
          v1625 = v1491;
          v1624 = v1492;
          v1493 = 0;
          v1494 = &v1626;
          sub_1D20298EC(0, &v1626);
          sub_1D20298EC(v1493, v1494);
          v1623[2] = v1504;
          v1495 = v424;
          MEMORY[0x1EEE9AC00](v424);
          v1496 = &v424[-6];
          v424[-4] = v76;
          v424[-3] = &v1625;
          v424[-2] = &v1624;
          v1497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF430, &qword_1D2092320);
          sub_1D208BA0C();
          v77 = v1498;
          sub_1D208C6FC();
          v1499 = v77;
          if (v77)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D1FC7000, v1500, v1501, "[Deduplication] WARNING: Mock Tokens used. New always wins", v1486, 2u);
            v1484 = 0;
            sub_1D202994C(v1489, 0, v1487);
            sub_1D202994C(v1492, v1484, MEMORY[0x1E69E7CA0] + 8);
            sub_1D208C8BC();

            v1485 = v1499;
          }
        }

        else
        {

          v1485 = v1527;
        }

        v1483 = v1485;

        (*(v1507 + 8))(v1619, v1506);
        v1505 = v1483;
      }

      v1481 = v1505;
      sub_1D2028364(v1593, v1588);
      sub_1D208B938(v1588, v1589);
      v1482 = v1481;
    }

    else
    {
      v1482 = v1527;
    }

    v1480 = v1482;
  }

  else
  {
    v1480 = v1527;
  }

  v1475 = v1480;
  sub_1D208BF7C();
  v1476 = sub_1D208BF2C();
  v1477 = v78;
  v1767 = v1476;
  v1768 = v78;
  (*(v1586 + 8))(v1587, v1584);
  EnergySitePayload.accessToken.getter();
  v1478 = v79;
  v1479 = sub_1D208C66C();

  if (v1479)
  {
    v1474 = 0;
  }

  else
  {
    EnergySitePayload.refreshToken.getter();
    v1472 = v80;
    v1473 = sub_1D208C66C();

    v1474 = v1473 ^ 1;
  }

  if (v1474)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1469 = v81;
    v1470 = sub_1D208C66C();

    v1471 = v1470 ^ 1;
  }

  else
  {
    v1471 = 0;
  }

  if (v1471)
  {
    EnergySitePayload.accessToken.getter();
    v1466 = v82;
    v1467 = sub_1D208C66C();

    v1468 = v1467 ^ 1;
  }

  else
  {
    v1468 = 0;
  }

  if (v1468)
  {
    EnergySitePayload.refreshToken.getter();
    v1463 = v83;
    v1464 = sub_1D208C66C();

    v1465 = v1464 ^ 1;
  }

  else
  {
    v1465 = 0;
  }

  if (v1465)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1460 = v84;
    v1461 = sub_1D208C66C();

    v1462 = v1461 ^ 1;
  }

  else
  {
    v1462 = 0;
  }

  if (v1462)
  {
    sub_1D1FCD668(v1528 & 1, v1617);
    v1456 = sub_1D208C4AC();
    v1457 = *(v1456 - 8);
    v1458 = *(v1457 + 48);
    v1459 = (v1457 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v1458(v1617, 1) == 1)
    {
      sub_1D202975C(v1617);
      v1455 = v1475;
    }

    else
    {

      v1438 = 32;
      v1442 = 32;
      v1443 = 7;
      v85 = swift_allocObject();
      v86 = v1477;
      v1444 = v85;
      *(v85 + 16) = v1476;
      *(v85 + 24) = v86;
      v1454 = sub_1D208C48C();
      v1436 = v1454;
      v1453 = sub_1D208C85C();
      v1437 = v1453;
      v1439 = 17;
      v1447 = swift_allocObject();
      v1440 = v1447;
      *(v1447 + 16) = v1438;
      v1448 = swift_allocObject();
      v1441 = v1448;
      *(v1448 + 16) = 8;
      v87 = swift_allocObject();
      v88 = v1444;
      v1445 = v87;
      *(v87 + 16) = sub_1D208B9D0;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v1445;
      v1451 = v89;
      v1446 = v89;
      *(v89 + 16) = sub_1D205248C;
      *(v89 + 24) = v90;
      v1452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
      v1449 = sub_1D208CB2C();
      v1450 = v91;

      v92 = v1447;
      v93 = v1450;
      *v1450 = sub_1D2029A40;
      v93[1] = v92;

      v94 = v1448;
      v95 = v1450;
      v1450[2] = sub_1D2029A40;
      v95[3] = v94;

      v96 = v1450;
      v97 = v1451;
      v1450[4] = sub_1D2052498;
      v96[5] = v97;
      sub_1D1FCECE8();

      if (os_log_type_enabled(v1454, v1453))
      {
        v1433 = v1475;
        v1428 = sub_1D208C8EC();
        v1425 = v1428;
        v1426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
        v1429 = sub_1D2029898(0, v1426, v1426);
        v1427 = v1429;
        v1431 = 1;
        v1430 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1631 = v1428;
        v1630 = v1429;
        v1629 = v1430;
        v1432 = &v1631;
        sub_1D20298EC(2, &v1631);
        sub_1D20298EC(v1431, v1432);
        v98 = v1433;
        v1627 = sub_1D2029A40;
        v1628 = v1440;
        sub_1D2029900(&v1627, v1432, &v1630, &v1629);
        v1434 = v98;
        v1435 = v98;
        if (v98)
        {
          v1423 = 0;

          __break(1u);
        }

        else
        {
          v1627 = sub_1D2029A40;
          v1628 = v1441;
          sub_1D2029900(&v1627, &v1631, &v1630, &v1629);
          v1421 = 0;
          v1422 = 0;
          v1627 = sub_1D2052498;
          v1628 = v1446;
          sub_1D2029900(&v1627, &v1631, &v1630, &v1629);
          v1419 = 0;
          v1420 = 0;
          _os_log_impl(&dword_1D1FC7000, v1436, v1437, "[Deduplication] [%s] Both sites onboarded", v1425, 0xCu);
          sub_1D202994C(v1427, 0, v1426);
          sub_1D202994C(v1430, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1D208C8BC();

          v1424 = v1419;
        }
      }

      else
      {

        v1424 = v1475;
      }

      v1418 = v1424;

      (*(v1457 + 8))(v1617, v1456);
      v1455 = v1418;
    }

    v1415 = v1455;
    sub_1D1FE94C4(v1591, v1563);
    v1416 = *(v1566 + 48);
    v1417 = (v1566 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v1416(v1563, 1, v1564) == 1)
    {
      sub_1D1FF1A9C(v1563);
    }

    else
    {
      v1413 = *(v1566 + 32);
      v1414 = (v1566 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v1413(v1582, v1563, v1564);
      sub_1D1FE94C4(v1592, v1561);
      if (v1416(v1561, 1, v1564) == 1)
      {
        sub_1D1FF1A9C(v1561);
        (*(v1566 + 8))(v1582, v1564);
      }

      else
      {
        v1413(v1580, v1561, v1564);
        if (sub_1D208BE8C())
        {
          sub_1D1FCD668(v1528 & 1, v1615);
          if ((v1458)(v1615, 1, v1456) == 1)
          {
            sub_1D202975C(v1615);
            v1412 = v1415;
          }

          else
          {

            v1395 = 32;
            v1399 = 32;
            v1400 = 7;
            v99 = swift_allocObject();
            v100 = v1477;
            v1401 = v99;
            *(v99 + 16) = v1476;
            *(v99 + 24) = v100;
            v1411 = sub_1D208C48C();
            v1393 = v1411;
            v1410 = sub_1D208C85C();
            v1394 = v1410;
            v1396 = 17;
            v1404 = swift_allocObject();
            v1397 = v1404;
            *(v1404 + 16) = v1395;
            v1405 = swift_allocObject();
            v1398 = v1405;
            *(v1405 + 16) = 8;
            v101 = swift_allocObject();
            v102 = v1401;
            v1402 = v101;
            *(v101 + 16) = sub_1D208B9D0;
            *(v101 + 24) = v102;
            v103 = swift_allocObject();
            v104 = v1402;
            v1408 = v103;
            v1403 = v103;
            *(v103 + 16) = sub_1D205248C;
            *(v103 + 24) = v104;
            v1409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v1406 = sub_1D208CB2C();
            v1407 = v105;

            v106 = v1404;
            v107 = v1407;
            *v1407 = sub_1D2029A40;
            v107[1] = v106;

            v108 = v1405;
            v109 = v1407;
            v1407[2] = sub_1D2029A40;
            v109[3] = v108;

            v110 = v1407;
            v111 = v1408;
            v1407[4] = sub_1D2052498;
            v110[5] = v111;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v1411, v1410))
            {
              v1390 = v1415;
              v1385 = sub_1D208C8EC();
              v1382 = v1385;
              v1383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v1386 = sub_1D2029898(0, v1383, v1383);
              v1384 = v1386;
              v1388 = 1;
              v1387 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v1636 = v1385;
              v1635 = v1386;
              v1634 = v1387;
              v1389 = &v1636;
              sub_1D20298EC(2, &v1636);
              sub_1D20298EC(v1388, v1389);
              v112 = v1390;
              v1632 = sub_1D2029A40;
              v1633 = v1397;
              sub_1D2029900(&v1632, v1389, &v1635, &v1634);
              v1391 = v112;
              v1392 = v112;
              if (v112)
              {
                v1380 = 0;

                __break(1u);
              }

              else
              {
                v1632 = sub_1D2029A40;
                v1633 = v1398;
                sub_1D2029900(&v1632, &v1636, &v1635, &v1634);
                v1378 = 0;
                v1379 = 0;
                v1632 = sub_1D2052498;
                v1633 = v1403;
                sub_1D2029900(&v1632, &v1636, &v1635, &v1634);
                v1376 = 0;
                v1377 = 0;
                _os_log_impl(&dword_1D1FC7000, v1393, v1394, "[Deduplication] [%s] 1.1 Newer sites wins", v1382, 0xCu);
                sub_1D202994C(v1384, 0, v1383);
                sub_1D202994C(v1387, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1D208C8BC();

                v1381 = v1376;
              }
            }

            else
            {

              v1381 = v1415;
            }

            v1375 = v1381;

            (*(v1457 + 8))(v1615, v1456);
            v1412 = v1375;
          }

          v1373 = v1412;
          sub_1D2028364(v1593, v1588);
          sub_1D208B938(v1588, v1589);
          v1372 = *(v1566 + 8);
          v1371 = v1566 + 8;
          v1372(v1580, v1564);
          v1372(v1582, v1564);
          v1374 = v1373;
LABEL_222:
          v927 = v1374;
          goto LABEL_394;
        }

        v1370 = *(v1566 + 8);
        v1369 = v1566 + 8;
        v1370(v1580, v1564);
        v1370(v1582, v1564);
      }
    }

    sub_1D1FE94C4(v1591, v1559);
    if (v1416(v1559, 1, v1564) == 1)
    {
      sub_1D1FF1A9C(v1559);
      v1368 = v1415;
    }

    else
    {
      v1366 = *(v1566 + 32);
      v1367 = (v1566 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v1366(v1578, v1559, v1564);
      sub_1D1FE94C4(v1592, v1558);
      if (v1416(v1558, 1, v1564) == 1)
      {
        sub_1D1FF1A9C(v1558);
        (*(v1566 + 8))(v1578, v1564);
        v1368 = v1415;
      }

      else
      {
        v1366(v1577, v1558, v1564);
        if (sub_1D208BEBC())
        {
          EnergySitePayload.amiLastRefreshDate.getter(v1547);
          v1364 = *(v1536 + 48);
          v1365 = (v1536 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          if (v1364(v1547, 1, v1534) == 1)
          {
            sub_1D1FD6044(v1547);
            (*(v1566 + 56))(v1557, 1, 1, v1564);
          }

          else
          {
            sub_1D208C1BC();
            (*(v1536 + 8))(v1547, v1534);
            (*(v1566 + 56))(v1557, 0, 1, v1564);
          }

          if (v1416(v1557, 1, v1564) == 1)
          {
            sub_1D208BDDC();
            if (v1416(v1557, 1, v1564) != 1)
            {
              sub_1D1FF1A9C(v1557);
            }
          }

          else
          {
            v1366(v1576, v1557, v1564);
          }

          EnergySitePayload.amiLastRefreshDate.getter(v1545);
          if ((v1364)(v1545, 1, v1534) == 0)
          {
            (*(v1536 + 16))(v1537, v1545, v1534);
            sub_1D1FD6044(v1545);
            sub_1D208C1BC();
            (*(v1536 + 8))(v1537, v1534);
            (*(v1566 + 56))(v1556, 0, 1, v1564);
          }

          else
          {
            sub_1D1FD6044(v1545);
            (*(v1566 + 56))(v1556, 1, 1, v1564);
          }

          if (v1416(v1556, 1, v1564) == 1)
          {
            sub_1D208BDDC();
            if (v1416(v1556, 1, v1564) != 1)
            {
              sub_1D1FF1A9C(v1556);
            }
          }

          else
          {
            v1366(v1575, v1556, v1564);
          }

          v1362 = sub_1D208BE8C();
          v1361 = *(v1566 + 8);
          v1360 = v1566 + 8;
          v1358 = v1361;
          v1359 = (v1566 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v1361(v1575, v1564);
          v1361(v1576, v1564);
          if (v1362)
          {
            sub_1D1FCD668(v1528 & 1, v1614);
            if ((v1458)(v1614, 1, v1456) == 1)
            {
              sub_1D202975C(v1614);
              v1357 = v1415;
            }

            else
            {

              v1340 = 32;
              v1344 = 32;
              v1345 = 7;
              v113 = swift_allocObject();
              v114 = v1477;
              v1346 = v113;
              *(v113 + 16) = v1476;
              *(v113 + 24) = v114;
              v1356 = sub_1D208C48C();
              v1338 = v1356;
              v1355 = sub_1D208C85C();
              v1339 = v1355;
              v1341 = 17;
              v1349 = swift_allocObject();
              v1342 = v1349;
              *(v1349 + 16) = v1340;
              v1350 = swift_allocObject();
              v1343 = v1350;
              *(v1350 + 16) = 8;
              v115 = swift_allocObject();
              v116 = v1346;
              v1347 = v115;
              *(v115 + 16) = sub_1D208B9D0;
              *(v115 + 24) = v116;
              v117 = swift_allocObject();
              v118 = v1347;
              v1353 = v117;
              v1348 = v117;
              *(v117 + 16) = sub_1D205248C;
              *(v117 + 24) = v118;
              v1354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
              v1351 = sub_1D208CB2C();
              v1352 = v119;

              v120 = v1349;
              v121 = v1352;
              *v1352 = sub_1D2029A40;
              v121[1] = v120;

              v122 = v1350;
              v123 = v1352;
              v1352[2] = sub_1D2029A40;
              v123[3] = v122;

              v124 = v1352;
              v125 = v1353;
              v1352[4] = sub_1D2052498;
              v124[5] = v125;
              sub_1D1FCECE8();

              if (os_log_type_enabled(v1356, v1355))
              {
                v1335 = v1415;
                v1330 = sub_1D208C8EC();
                v1327 = v1330;
                v1328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                v1331 = sub_1D2029898(0, v1328, v1328);
                v1329 = v1331;
                v1333 = 1;
                v1332 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                v1641 = v1330;
                v1640 = v1331;
                v1639 = v1332;
                v1334 = &v1641;
                sub_1D20298EC(2, &v1641);
                sub_1D20298EC(v1333, v1334);
                v126 = v1335;
                v1637 = sub_1D2029A40;
                v1638 = v1342;
                sub_1D2029900(&v1637, v1334, &v1640, &v1639);
                v1336 = v126;
                v1337 = v126;
                if (v126)
                {
                  v1325 = 0;

                  __break(1u);
                }

                else
                {
                  v1637 = sub_1D2029A40;
                  v1638 = v1343;
                  sub_1D2029900(&v1637, &v1641, &v1640, &v1639);
                  v1323 = 0;
                  v1324 = 0;
                  v1637 = sub_1D2052498;
                  v1638 = v1348;
                  sub_1D2029900(&v1637, &v1641, &v1640, &v1639);
                  v1321 = 0;
                  v1322 = 0;
                  _os_log_impl(&dword_1D1FC7000, v1338, v1339, "[Deduplication] [%s] 1.2.1 Newer sites wins", v1327, 0xCu);
                  sub_1D202994C(v1329, 0, v1328);
                  sub_1D202994C(v1332, 1, MEMORY[0x1E69E7CA0] + 8);
                  sub_1D208C8BC();

                  v1326 = v1321;
                }
              }

              else
              {

                v1326 = v1415;
              }

              v1320 = v1326;

              (*(v1457 + 8))(v1614, v1456);
              v1357 = v1320;
            }

            v1318 = v1357;
            sub_1D2028364(v1593, v1588);
            sub_1D208B938(v1588, v1589);
            v1319 = v1318;
          }

          else
          {
            EnergySitePayload.subscriptionState.getter();
            v1316 = v127;
            v1317 = sub_1D208C66C();

            if (v1317)
            {
              EnergySitePayload.subscriptionState.getter();
              v1313 = v128;
              v1314 = sub_1D208C66C();

              if (v1314)
              {
                v1308 = EnergySitePayload.subscriptionState.getter();
                v1310 = v129;
                v1642 = 2;
                v130 = EnergySiteSubscriptionErrorState.rawValue.getter();
                v1309 = v131;
                v1311 = MEMORY[0x1D38948D0](v1308, v1310, v130);

                v1312 = v1311;
              }

              else
              {
                v1312 = 0;
              }

              v1315 = v1312;
            }

            else
            {
              v1315 = 1;
            }

            if (v1315)
            {
              sub_1D1FCD668(v1528 & 1, v1613);
              if ((v1458)(v1613, 1, v1456) == 1)
              {
                sub_1D202975C(v1613);
                v1307 = v1415;
              }

              else
              {

                v1290 = 32;
                v1294 = 32;
                v1295 = 7;
                v132 = swift_allocObject();
                v133 = v1477;
                v1296 = v132;
                *(v132 + 16) = v1476;
                *(v132 + 24) = v133;
                v1306 = sub_1D208C48C();
                v1288 = v1306;
                v1305 = sub_1D208C85C();
                v1289 = v1305;
                v1291 = 17;
                v1299 = swift_allocObject();
                v1292 = v1299;
                *(v1299 + 16) = v1290;
                v1300 = swift_allocObject();
                v1293 = v1300;
                *(v1300 + 16) = 8;
                v134 = swift_allocObject();
                v135 = v1296;
                v1297 = v134;
                *(v134 + 16) = sub_1D208B9D0;
                *(v134 + 24) = v135;
                v136 = swift_allocObject();
                v137 = v1297;
                v1303 = v136;
                v1298 = v136;
                *(v136 + 16) = sub_1D205248C;
                *(v136 + 24) = v137;
                v1304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v1301 = sub_1D208CB2C();
                v1302 = v138;

                v139 = v1299;
                v140 = v1302;
                *v1302 = sub_1D2029A40;
                v140[1] = v139;

                v141 = v1300;
                v142 = v1302;
                v1302[2] = sub_1D2029A40;
                v142[3] = v141;

                v143 = v1302;
                v144 = v1303;
                v1302[4] = sub_1D2052498;
                v143[5] = v144;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v1306, v1305))
                {
                  v1285 = v1415;
                  v1280 = sub_1D208C8EC();
                  v1277 = v1280;
                  v1278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v1281 = sub_1D2029898(0, v1278, v1278);
                  v1279 = v1281;
                  v1283 = 1;
                  v1282 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                  v1647 = v1280;
                  v1646 = v1281;
                  v1645 = v1282;
                  v1284 = &v1647;
                  sub_1D20298EC(2, &v1647);
                  sub_1D20298EC(v1283, v1284);
                  v145 = v1285;
                  v1643 = sub_1D2029A40;
                  v1644 = v1292;
                  sub_1D2029900(&v1643, v1284, &v1646, &v1645);
                  v1286 = v145;
                  v1287 = v145;
                  if (v145)
                  {
                    v1275 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1643 = sub_1D2029A40;
                    v1644 = v1293;
                    sub_1D2029900(&v1643, &v1647, &v1646, &v1645);
                    v1273 = 0;
                    v1274 = 0;
                    v1643 = sub_1D2052498;
                    v1644 = v1298;
                    sub_1D2029900(&v1643, &v1647, &v1646, &v1645);
                    v1271 = 0;
                    v1272 = 0;
                    _os_log_impl(&dword_1D1FC7000, v1288, v1289, "[Deduplication] [%s] 1.2.2 Newer sites wins", v1277, 0xCu);
                    sub_1D202994C(v1279, 0, v1278);
                    sub_1D202994C(v1282, 1, MEMORY[0x1E69E7CA0] + 8);
                    sub_1D208C8BC();

                    v1276 = v1271;
                  }
                }

                else
                {

                  v1276 = v1415;
                }

                v1270 = v1276;

                (*(v1457 + 8))(v1613, v1456);
                v1307 = v1270;
              }

              v1268 = v1307;
              sub_1D2028364(v1593, v1588);
              sub_1D208B938(v1588, v1589);
              v1269 = v1268;
            }

            else
            {
              if (EnergySitePayload.hasCurrentRatePlan.getter())
              {
                EnergySitePayload.currentRatePlan.getter(v1533);
                EnergySitePayload.currentRatePlan.getter(v1531);
                sub_1D2027A30();
                v1266 = sub_1D208C59C() ^ 1;
                sub_1D2018ECC(v1531);
                sub_1D2018ECC(v1533);
                v1267 = v1266;
              }

              else
              {
                v1267 = 0;
              }

              if (v1267)
              {
                sub_1D1FCD668(v1528 & 1, v1612);
                if ((v1458)(v1612, 1, v1456) == 1)
                {
                  sub_1D202975C(v1612);
                  v1265 = v1415;
                }

                else
                {

                  v1248 = 32;
                  v1252 = 32;
                  v1253 = 7;
                  v146 = swift_allocObject();
                  v147 = v1477;
                  v1254 = v146;
                  *(v146 + 16) = v1476;
                  *(v146 + 24) = v147;
                  v1264 = sub_1D208C48C();
                  v1246 = v1264;
                  v1263 = sub_1D208C85C();
                  v1247 = v1263;
                  v1249 = 17;
                  v1257 = swift_allocObject();
                  v1250 = v1257;
                  *(v1257 + 16) = v1248;
                  v1258 = swift_allocObject();
                  v1251 = v1258;
                  *(v1258 + 16) = 8;
                  v148 = swift_allocObject();
                  v149 = v1254;
                  v1255 = v148;
                  *(v148 + 16) = sub_1D208B9D0;
                  *(v148 + 24) = v149;
                  v150 = swift_allocObject();
                  v151 = v1255;
                  v1261 = v150;
                  v1256 = v150;
                  *(v150 + 16) = sub_1D205248C;
                  *(v150 + 24) = v151;
                  v1262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                  v1259 = sub_1D208CB2C();
                  v1260 = v152;

                  v153 = v1257;
                  v154 = v1260;
                  *v1260 = sub_1D2029A40;
                  v154[1] = v153;

                  v155 = v1258;
                  v156 = v1260;
                  v1260[2] = sub_1D2029A40;
                  v156[3] = v155;

                  v157 = v1260;
                  v158 = v1261;
                  v1260[4] = sub_1D2052498;
                  v157[5] = v158;
                  sub_1D1FCECE8();

                  if (os_log_type_enabled(v1264, v1263))
                  {
                    v1243 = v1415;
                    v1238 = sub_1D208C8EC();
                    v1235 = v1238;
                    v1236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                    v1239 = sub_1D2029898(0, v1236, v1236);
                    v1237 = v1239;
                    v1241 = 1;
                    v1240 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                    v1652 = v1238;
                    v1651 = v1239;
                    v1650 = v1240;
                    v1242 = &v1652;
                    sub_1D20298EC(2, &v1652);
                    sub_1D20298EC(v1241, v1242);
                    v159 = v1243;
                    v1648 = sub_1D2029A40;
                    v1649 = v1250;
                    sub_1D2029900(&v1648, v1242, &v1651, &v1650);
                    v1244 = v159;
                    v1245 = v159;
                    if (v159)
                    {
                      v1233 = 0;

                      __break(1u);
                    }

                    else
                    {
                      v1648 = sub_1D2029A40;
                      v1649 = v1251;
                      sub_1D2029900(&v1648, &v1652, &v1651, &v1650);
                      v1231 = 0;
                      v1232 = 0;
                      v1648 = sub_1D2052498;
                      v1649 = v1256;
                      sub_1D2029900(&v1648, &v1652, &v1651, &v1650);
                      v1229 = 0;
                      v1230 = 0;
                      _os_log_impl(&dword_1D1FC7000, v1246, v1247, "[Deduplication] [%s] 1.2.3 Newer sites wins", v1235, 0xCu);
                      sub_1D202994C(v1237, 0, v1236);
                      sub_1D202994C(v1240, 1, MEMORY[0x1E69E7CA0] + 8);
                      sub_1D208C8BC();

                      v1234 = v1229;
                    }
                  }

                  else
                  {

                    v1234 = v1415;
                  }

                  v1228 = v1234;

                  (*(v1457 + 8))(v1612, v1456);
                  v1265 = v1228;
                }

                v1226 = v1265;
                sub_1D2028364(v1593, v1588);
                sub_1D208B938(v1588, v1589);
                v1227 = v1226;
              }

              else
              {
                v1711 = EnergySitePayload.siteVersion.getter();
                v1709 = v1711;
                v1710 = BYTE4(v1711);
                if ((v1711 & 0x100000000) != 0)
                {
                  v1225 = 1;
                }

                else
                {
                  v1225 = v1709;
                }

                v1224 = v1225;
                v1708 = EnergySitePayload.siteVersion.getter();
                v1706 = v1708;
                v1707 = BYTE4(v1708);
                if ((v1708 & 0x100000000) != 0)
                {
                  v1223 = 1;
                }

                else
                {
                  v1223 = v1706;
                }

                if (v1223 >= v1224)
                {
                  v1178 = EnergySitePayload.generationMeters.getter();
                  v1179 = MEMORY[0x1E69E6158];
                  v1182 = sub_1D208C78C();

                  v1180 = EnergySitePayload.generationMeters.getter();
                  v1181 = sub_1D208C78C();

                  if (v1182 == v1181)
                  {
                    if (EnergySitePayload.hasExportedEnergy_p.getter())
                    {
                      v1137 = EnergySitePayload.hasExportedEnergy_p.getter() ^ 1;
                    }

                    else
                    {
                      v1137 = 0;
                    }

                    if (v1137)
                    {
                      sub_1D1FCD668(v1528 & 1, v1609);
                      if ((v1458)(v1609, 1, v1456) == 1)
                      {
                        sub_1D202975C(v1609);
                        v1136 = v1415;
                      }

                      else
                      {

                        v1119 = 32;
                        v1123 = 32;
                        v1124 = 7;
                        v189 = swift_allocObject();
                        v190 = v1477;
                        v1125 = v189;
                        *(v189 + 16) = v1476;
                        *(v189 + 24) = v190;
                        v1135 = sub_1D208C48C();
                        v1117 = v1135;
                        v1134 = sub_1D208C85C();
                        v1118 = v1134;
                        v1120 = 17;
                        v1128 = swift_allocObject();
                        v1121 = v1128;
                        *(v1128 + 16) = v1119;
                        v1129 = swift_allocObject();
                        v1122 = v1129;
                        *(v1129 + 16) = 8;
                        v191 = swift_allocObject();
                        v192 = v1125;
                        v1126 = v191;
                        *(v191 + 16) = sub_1D208B9D0;
                        *(v191 + 24) = v192;
                        v193 = swift_allocObject();
                        v194 = v1126;
                        v1132 = v193;
                        v1127 = v193;
                        *(v193 + 16) = sub_1D205248C;
                        *(v193 + 24) = v194;
                        v1133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                        v1130 = sub_1D208CB2C();
                        v1131 = v195;

                        v196 = v1128;
                        v197 = v1131;
                        *v1131 = sub_1D2029A40;
                        v197[1] = v196;

                        v198 = v1129;
                        v199 = v1131;
                        v1131[2] = sub_1D2029A40;
                        v199[3] = v198;

                        v200 = v1131;
                        v201 = v1132;
                        v1131[4] = sub_1D2052498;
                        v200[5] = v201;
                        sub_1D1FCECE8();

                        if (os_log_type_enabled(v1135, v1134))
                        {
                          v1114 = v1415;
                          v1109 = sub_1D208C8EC();
                          v1106 = v1109;
                          v1107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                          v1110 = sub_1D2029898(0, v1107, v1107);
                          v1108 = v1110;
                          v1112 = 1;
                          v1111 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                          v1667 = v1109;
                          v1666 = v1110;
                          v1665 = v1111;
                          v1113 = &v1667;
                          sub_1D20298EC(2, &v1667);
                          sub_1D20298EC(v1112, v1113);
                          v202 = v1114;
                          v1663 = sub_1D2029A40;
                          v1664 = v1121;
                          sub_1D2029900(&v1663, v1113, &v1666, &v1665);
                          v1115 = v202;
                          v1116 = v202;
                          if (v202)
                          {
                            v1104 = 0;

                            __break(1u);
                          }

                          else
                          {
                            v1663 = sub_1D2029A40;
                            v1664 = v1122;
                            sub_1D2029900(&v1663, &v1667, &v1666, &v1665);
                            v1102 = 0;
                            v1103 = 0;
                            v1663 = sub_1D2052498;
                            v1664 = v1127;
                            sub_1D2029900(&v1663, &v1667, &v1666, &v1665);
                            v1100 = 0;
                            v1101 = 0;
                            _os_log_impl(&dword_1D1FC7000, v1117, v1118, "[Deduplication] [%s] 1.2.6 Newer sites wins", v1106, 0xCu);
                            sub_1D202994C(v1108, 0, v1107);
                            sub_1D202994C(v1111, 1, MEMORY[0x1E69E7CA0] + 8);
                            sub_1D208C8BC();

                            v1105 = v1100;
                          }
                        }

                        else
                        {

                          v1105 = v1415;
                        }

                        v1099 = v1105;

                        (*(v1457 + 8))(v1609, v1456);
                        v1136 = v1099;
                      }

                      v1097 = v1136;
                      sub_1D2028364(v1593, v1588);
                      sub_1D208B938(v1588, v1589);
                      v1098 = v1097;
                    }

                    else
                    {
                      v1705 = EnergySitePayload.includeRatePlanInGuidance.getter();
                      v1703 = v1705;
                      v1704 = BYTE4(v1705);
                      v1096 = (v1705 & 0x100000000) == 0;
                      if ((v1705 & 0x100000000) != 0)
                      {
                        v1094 = 0;
                      }

                      else
                      {
                        v1670 = EnergySitePayload.includeRatePlanInGuidance.getter();
                        v1668 = v1670;
                        v1669 = BYTE4(v1670);
                        v1095 = (v1670 & 0x100000000) != 0;
                        v1094 = v1095;
                      }

                      if (v1094)
                      {
                        sub_1D1FCD668(v1528 & 1, v1608);
                        if ((v1458)(v1608, 1, v1456) == 1)
                        {
                          sub_1D202975C(v1608);
                          v1093 = v1415;
                        }

                        else
                        {

                          v1076 = 32;
                          v1080 = 32;
                          v1081 = 7;
                          v203 = swift_allocObject();
                          v204 = v1477;
                          v1082 = v203;
                          *(v203 + 16) = v1476;
                          *(v203 + 24) = v204;
                          v1092 = sub_1D208C48C();
                          v1074 = v1092;
                          v1091 = sub_1D208C85C();
                          v1075 = v1091;
                          v1077 = 17;
                          v1085 = swift_allocObject();
                          v1078 = v1085;
                          *(v1085 + 16) = v1076;
                          v1086 = swift_allocObject();
                          v1079 = v1086;
                          *(v1086 + 16) = 8;
                          v205 = swift_allocObject();
                          v206 = v1082;
                          v1083 = v205;
                          *(v205 + 16) = sub_1D208B9D0;
                          *(v205 + 24) = v206;
                          v207 = swift_allocObject();
                          v208 = v1083;
                          v1089 = v207;
                          v1084 = v207;
                          *(v207 + 16) = sub_1D205248C;
                          *(v207 + 24) = v208;
                          v1090 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                          v1087 = sub_1D208CB2C();
                          v1088 = v209;

                          v210 = v1085;
                          v211 = v1088;
                          *v1088 = sub_1D2029A40;
                          v211[1] = v210;

                          v212 = v1086;
                          v213 = v1088;
                          v1088[2] = sub_1D2029A40;
                          v213[3] = v212;

                          v214 = v1088;
                          v215 = v1089;
                          v1088[4] = sub_1D2052498;
                          v214[5] = v215;
                          sub_1D1FCECE8();

                          if (os_log_type_enabled(v1092, v1091))
                          {
                            v1071 = v1415;
                            v1066 = sub_1D208C8EC();
                            v1063 = v1066;
                            v1064 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                            v1067 = sub_1D2029898(0, v1064, v1064);
                            v1065 = v1067;
                            v1069 = 1;
                            v1068 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                            v1675 = v1066;
                            v1674 = v1067;
                            v1673 = v1068;
                            v1070 = &v1675;
                            sub_1D20298EC(2, &v1675);
                            sub_1D20298EC(v1069, v1070);
                            v216 = v1071;
                            v1671 = sub_1D2029A40;
                            v1672 = v1078;
                            sub_1D2029900(&v1671, v1070, &v1674, &v1673);
                            v1072 = v216;
                            v1073 = v216;
                            if (v216)
                            {
                              v1061 = 0;

                              __break(1u);
                            }

                            else
                            {
                              v1671 = sub_1D2029A40;
                              v1672 = v1079;
                              sub_1D2029900(&v1671, &v1675, &v1674, &v1673);
                              v1059 = 0;
                              v1060 = 0;
                              v1671 = sub_1D2052498;
                              v1672 = v1084;
                              sub_1D2029900(&v1671, &v1675, &v1674, &v1673);
                              v1057 = 0;
                              v1058 = 0;
                              _os_log_impl(&dword_1D1FC7000, v1074, v1075, "[Deduplication] [%s] 1.2.7 Newer sites wins", v1063, 0xCu);
                              sub_1D202994C(v1065, 0, v1064);
                              sub_1D202994C(v1068, 1, MEMORY[0x1E69E7CA0] + 8);
                              sub_1D208C8BC();

                              v1062 = v1057;
                            }
                          }

                          else
                          {

                            v1062 = v1415;
                          }

                          v1056 = v1062;

                          (*(v1457 + 8))(v1608, v1456);
                          v1093 = v1056;
                        }

                        v1054 = v1093;
                        sub_1D2028364(v1593, v1588);
                        sub_1D208B938(v1588, v1589);
                        v1055 = v1054;
                      }

                      else
                      {
                        v1702 = EnergySitePayload.includeRatePlanInGuidance.getter();
                        v1700 = v1702;
                        v1701 = BYTE4(v1702);
                        v1053 = (v1702 & 0x100000000) == 0;
                        if ((v1702 & 0x100000000) != 0)
                        {
                          v1051 = 0;
                        }

                        else
                        {
                          v1678 = EnergySitePayload.includeRatePlanInGuidance.getter();
                          v1676 = v1678;
                          v1677 = BYTE4(v1678);
                          v1052 = (v1678 & 0x100000000) == 0;
                          v1051 = v1052;
                        }

                        if (v1051)
                        {
                          sub_1D1FCD668(v1528 & 1, v1607);
                          if ((v1458)(v1607, 1, v1456) == 1)
                          {
                            sub_1D202975C(v1607);
                            v1050 = v1415;
                          }

                          else
                          {

                            v1033 = 32;
                            v1037 = 32;
                            v1038 = 7;
                            v217 = swift_allocObject();
                            v218 = v1477;
                            v1039 = v217;
                            *(v217 + 16) = v1476;
                            *(v217 + 24) = v218;
                            v1049 = sub_1D208C48C();
                            v1031 = v1049;
                            v1048 = sub_1D208C85C();
                            v1032 = v1048;
                            v1034 = 17;
                            v1042 = swift_allocObject();
                            v1035 = v1042;
                            *(v1042 + 16) = v1033;
                            v1043 = swift_allocObject();
                            v1036 = v1043;
                            *(v1043 + 16) = 8;
                            v219 = swift_allocObject();
                            v220 = v1039;
                            v1040 = v219;
                            *(v219 + 16) = sub_1D208B9D0;
                            *(v219 + 24) = v220;
                            v221 = swift_allocObject();
                            v222 = v1040;
                            v1046 = v221;
                            v1041 = v221;
                            *(v221 + 16) = sub_1D205248C;
                            *(v221 + 24) = v222;
                            v1047 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                            v1044 = sub_1D208CB2C();
                            v1045 = v223;

                            v224 = v1042;
                            v225 = v1045;
                            *v1045 = sub_1D2029A40;
                            v225[1] = v224;

                            v226 = v1043;
                            v227 = v1045;
                            v1045[2] = sub_1D2029A40;
                            v227[3] = v226;

                            v228 = v1045;
                            v229 = v1046;
                            v1045[4] = sub_1D2052498;
                            v228[5] = v229;
                            sub_1D1FCECE8();

                            if (os_log_type_enabled(v1049, v1048))
                            {
                              v1028 = v1415;
                              v1023 = sub_1D208C8EC();
                              v1020 = v1023;
                              v1021 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                              v1024 = sub_1D2029898(0, v1021, v1021);
                              v1022 = v1024;
                              v1026 = 1;
                              v1025 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                              v1683 = v1023;
                              v1682 = v1024;
                              v1681 = v1025;
                              v1027 = &v1683;
                              sub_1D20298EC(2, &v1683);
                              sub_1D20298EC(v1026, v1027);
                              v230 = v1028;
                              v1679 = sub_1D2029A40;
                              v1680 = v1035;
                              sub_1D2029900(&v1679, v1027, &v1682, &v1681);
                              v1029 = v230;
                              v1030 = v230;
                              if (v230)
                              {
                                v1018 = 0;

                                __break(1u);
                              }

                              else
                              {
                                v1679 = sub_1D2029A40;
                                v1680 = v1036;
                                sub_1D2029900(&v1679, &v1683, &v1682, &v1681);
                                v1016 = 0;
                                v1017 = 0;
                                v1679 = sub_1D2052498;
                                v1680 = v1041;
                                sub_1D2029900(&v1679, &v1683, &v1682, &v1681);
                                v1014 = 0;
                                v1015 = 0;
                                _os_log_impl(&dword_1D1FC7000, v1031, v1032, "[Deduplication] [%s] 1.2.8 Newer sites wins.", v1020, 0xCu);
                                sub_1D202994C(v1022, 0, v1021);
                                sub_1D202994C(v1025, 1, MEMORY[0x1E69E7CA0] + 8);
                                sub_1D208C8BC();

                                v1019 = v1014;
                              }
                            }

                            else
                            {

                              v1019 = v1415;
                            }

                            v1013 = v1019;

                            (*(v1457 + 8))(v1607, v1456);
                            v1050 = v1013;
                          }

                          v1011 = v1050;
                          sub_1D2028364(v1593, v1588);
                          sub_1D208B938(v1588, v1589);
                          v1012 = v1011;
                        }

                        else
                        {
                          v1699 = EnergySitePayload.includeRatePlanInGuidance.getter();
                          v1697 = v1699;
                          v1698 = BYTE4(v1699);
                          v1010 = (v1699 & 0x100000000) != 0;
                          if ((v1699 & 0x100000000) != 0)
                          {
                            v1686 = EnergySitePayload.includeRatePlanInGuidance.getter();
                            v1684 = v1686;
                            v1685 = BYTE4(v1686);
                            v1009 = (v1686 & 0x100000000) == 0;
                            v1008 = v1009;
                          }

                          else
                          {
                            v1008 = 0;
                          }

                          if (v1008)
                          {
                            sub_1D1FCD668(v1528 & 1, v1606);
                            if ((v1458)(v1606, 1, v1456) == 1)
                            {
                              sub_1D202975C(v1606);
                              v1007 = v1415;
                            }

                            else
                            {

                              v990 = 32;
                              v994 = 32;
                              v995 = 7;
                              v231 = swift_allocObject();
                              v232 = v1477;
                              v996 = v231;
                              *(v231 + 16) = v1476;
                              *(v231 + 24) = v232;
                              v1006 = sub_1D208C48C();
                              v988 = v1006;
                              v1005 = sub_1D208C85C();
                              v989 = v1005;
                              v991 = 17;
                              v999 = swift_allocObject();
                              v992 = v999;
                              *(v999 + 16) = v990;
                              v1000 = swift_allocObject();
                              v993 = v1000;
                              *(v1000 + 16) = 8;
                              v233 = swift_allocObject();
                              v234 = v996;
                              v997 = v233;
                              *(v233 + 16) = sub_1D208B9D0;
                              *(v233 + 24) = v234;
                              v235 = swift_allocObject();
                              v236 = v997;
                              v1003 = v235;
                              v998 = v235;
                              *(v235 + 16) = sub_1D205248C;
                              *(v235 + 24) = v236;
                              v1004 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                              v1001 = sub_1D208CB2C();
                              v1002 = v237;

                              v238 = v999;
                              v239 = v1002;
                              *v1002 = sub_1D2029A40;
                              v239[1] = v238;

                              v240 = v1000;
                              v241 = v1002;
                              v1002[2] = sub_1D2029A40;
                              v241[3] = v240;

                              v242 = v1002;
                              v243 = v1003;
                              v1002[4] = sub_1D2052498;
                              v242[5] = v243;
                              sub_1D1FCECE8();

                              if (os_log_type_enabled(v1006, v1005))
                              {
                                v985 = v1415;
                                v980 = sub_1D208C8EC();
                                v977 = v980;
                                v978 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                                v981 = sub_1D2029898(0, v978, v978);
                                v979 = v981;
                                v983 = 1;
                                v982 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                                v1691 = v980;
                                v1690 = v981;
                                v1689 = v982;
                                v984 = &v1691;
                                sub_1D20298EC(2, &v1691);
                                sub_1D20298EC(v983, v984);
                                v244 = v985;
                                v1687 = sub_1D2029A40;
                                v1688 = v992;
                                sub_1D2029900(&v1687, v984, &v1690, &v1689);
                                v986 = v244;
                                v987 = v244;
                                if (v244)
                                {
                                  v975 = 0;

                                  __break(1u);
                                }

                                else
                                {
                                  v1687 = sub_1D2029A40;
                                  v1688 = v993;
                                  sub_1D2029900(&v1687, &v1691, &v1690, &v1689);
                                  v973 = 0;
                                  v974 = 0;
                                  v1687 = sub_1D2052498;
                                  v1688 = v998;
                                  sub_1D2029900(&v1687, &v1691, &v1690, &v1689);
                                  v971 = 0;
                                  v972 = 0;
                                  _os_log_impl(&dword_1D1FC7000, v988, v989, "[Deduplication] [%s] 1.2.9 older sites wins", v977, 0xCu);
                                  sub_1D202994C(v979, 0, v978);
                                  sub_1D202994C(v982, 1, MEMORY[0x1E69E7CA0] + 8);
                                  sub_1D208C8BC();

                                  v976 = v971;
                                }
                              }

                              else
                              {

                                v976 = v1415;
                              }

                              v970 = v976;

                              (*(v1457 + 8))(v1606, v1456);
                              v1007 = v970;
                            }

                            v969 = v1007;
                          }

                          else
                          {
                            sub_1D1FCD668(v1528 & 1, v1605);
                            if ((v1458)(v1605, 1, v1456) == 1)
                            {
                              sub_1D202975C(v1605);
                              v968 = v1415;
                            }

                            else
                            {

                              v951 = 32;
                              v955 = 32;
                              v956 = 7;
                              v245 = swift_allocObject();
                              v246 = v1477;
                              v957 = v245;
                              *(v245 + 16) = v1476;
                              *(v245 + 24) = v246;
                              v967 = sub_1D208C48C();
                              v949 = v967;
                              v966 = sub_1D208C85C();
                              v950 = v966;
                              v952 = 17;
                              v960 = swift_allocObject();
                              v953 = v960;
                              *(v960 + 16) = v951;
                              v961 = swift_allocObject();
                              v954 = v961;
                              *(v961 + 16) = 8;
                              v247 = swift_allocObject();
                              v248 = v957;
                              v958 = v247;
                              *(v247 + 16) = sub_1D208B9D0;
                              *(v247 + 24) = v248;
                              v249 = swift_allocObject();
                              v250 = v958;
                              v964 = v249;
                              v959 = v249;
                              *(v249 + 16) = sub_1D205248C;
                              *(v249 + 24) = v250;
                              v965 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                              v962 = sub_1D208CB2C();
                              v963 = v251;

                              v252 = v960;
                              v253 = v963;
                              *v963 = sub_1D2029A40;
                              v253[1] = v252;

                              v254 = v961;
                              v255 = v963;
                              v963[2] = sub_1D2029A40;
                              v255[3] = v254;

                              v256 = v963;
                              v257 = v964;
                              v963[4] = sub_1D2052498;
                              v256[5] = v257;
                              sub_1D1FCECE8();

                              if (os_log_type_enabled(v967, v966))
                              {
                                v946 = v1415;
                                v941 = sub_1D208C8EC();
                                v938 = v941;
                                v939 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                                v942 = sub_1D2029898(0, v939, v939);
                                v940 = v942;
                                v944 = 1;
                                v943 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                                v1696 = v941;
                                v1695 = v942;
                                v1694 = v943;
                                v945 = &v1696;
                                sub_1D20298EC(2, &v1696);
                                sub_1D20298EC(v944, v945);
                                v258 = v946;
                                v1692 = sub_1D2029A40;
                                v1693 = v953;
                                sub_1D2029900(&v1692, v945, &v1695, &v1694);
                                v947 = v258;
                                v948 = v258;
                                if (v258)
                                {
                                  v936 = 0;

                                  __break(1u);
                                }

                                else
                                {
                                  v1692 = sub_1D2029A40;
                                  v1693 = v954;
                                  sub_1D2029900(&v1692, &v1696, &v1695, &v1694);
                                  v934 = 0;
                                  v935 = 0;
                                  v1692 = sub_1D2052498;
                                  v1693 = v959;
                                  sub_1D2029900(&v1692, &v1696, &v1695, &v1694);
                                  v932 = 0;
                                  v933 = 0;
                                  _os_log_impl(&dword_1D1FC7000, v949, v950, "[Deduplication] [%s] 1.2.10 older sites wins", v938, 0xCu);
                                  sub_1D202994C(v940, 0, v939);
                                  sub_1D202994C(v943, 1, MEMORY[0x1E69E7CA0] + 8);
                                  sub_1D208C8BC();

                                  v937 = v932;
                                }
                              }

                              else
                              {

                                v937 = v1415;
                              }

                              v931 = v937;

                              (*(v1457 + 8))(v1605, v1456);
                              v968 = v931;
                            }

                            v969 = v968;
                          }

                          v1012 = v969;
                        }

                        v1055 = v1012;
                      }

                      v1098 = v1055;
                    }

                    v1139 = v1098;
                  }

                  else
                  {
                    sub_1D1FCD668(v1528 & 1, v1610);
                    if ((v1458)(v1610, 1, v1456) == 1)
                    {
                      sub_1D202975C(v1610);
                      v1177 = v1415;
                    }

                    else
                    {

                      v1160 = 32;
                      v1164 = 32;
                      v1165 = 7;
                      v175 = swift_allocObject();
                      v176 = v1477;
                      v1166 = v175;
                      *(v175 + 16) = v1476;
                      *(v175 + 24) = v176;
                      v1176 = sub_1D208C48C();
                      v1158 = v1176;
                      v1175 = sub_1D208C85C();
                      v1159 = v1175;
                      v1161 = 17;
                      v1169 = swift_allocObject();
                      v1162 = v1169;
                      *(v1169 + 16) = v1160;
                      v1170 = swift_allocObject();
                      v1163 = v1170;
                      *(v1170 + 16) = 8;
                      v177 = swift_allocObject();
                      v178 = v1166;
                      v1167 = v177;
                      *(v177 + 16) = sub_1D208B9D0;
                      *(v177 + 24) = v178;
                      v179 = swift_allocObject();
                      v180 = v1167;
                      v1173 = v179;
                      v1168 = v179;
                      *(v179 + 16) = sub_1D205248C;
                      *(v179 + 24) = v180;
                      v1174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                      v1171 = sub_1D208CB2C();
                      v1172 = v181;

                      v182 = v1169;
                      v183 = v1172;
                      *v1172 = sub_1D2029A40;
                      v183[1] = v182;

                      v184 = v1170;
                      v185 = v1172;
                      v1172[2] = sub_1D2029A40;
                      v185[3] = v184;

                      v186 = v1172;
                      v187 = v1173;
                      v1172[4] = sub_1D2052498;
                      v186[5] = v187;
                      sub_1D1FCECE8();

                      if (os_log_type_enabled(v1176, v1175))
                      {
                        v1155 = v1415;
                        v1150 = sub_1D208C8EC();
                        v1147 = v1150;
                        v1148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                        v1151 = sub_1D2029898(0, v1148, v1148);
                        v1149 = v1151;
                        v1153 = 1;
                        v1152 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                        v1662 = v1150;
                        v1661 = v1151;
                        v1660 = v1152;
                        v1154 = &v1662;
                        sub_1D20298EC(2, &v1662);
                        sub_1D20298EC(v1153, v1154);
                        v188 = v1155;
                        v1658 = sub_1D2029A40;
                        v1659 = v1162;
                        sub_1D2029900(&v1658, v1154, &v1661, &v1660);
                        v1156 = v188;
                        v1157 = v188;
                        if (v188)
                        {
                          v1145 = 0;

                          __break(1u);
                        }

                        else
                        {
                          v1658 = sub_1D2029A40;
                          v1659 = v1163;
                          sub_1D2029900(&v1658, &v1662, &v1661, &v1660);
                          v1143 = 0;
                          v1144 = 0;
                          v1658 = sub_1D2052498;
                          v1659 = v1168;
                          sub_1D2029900(&v1658, &v1662, &v1661, &v1660);
                          v1141 = 0;
                          v1142 = 0;
                          _os_log_impl(&dword_1D1FC7000, v1158, v1159, "[Deduplication] [%s] 1.2.5 Newer sites wins", v1147, 0xCu);
                          sub_1D202994C(v1149, 0, v1148);
                          sub_1D202994C(v1152, 1, MEMORY[0x1E69E7CA0] + 8);
                          sub_1D208C8BC();

                          v1146 = v1141;
                        }
                      }

                      else
                      {

                        v1146 = v1415;
                      }

                      v1140 = v1146;

                      (*(v1457 + 8))(v1610, v1456);
                      v1177 = v1140;
                    }

                    v1138 = v1177;
                    sub_1D2028364(v1593, v1588);
                    sub_1D208B938(v1588, v1589);
                    v1139 = v1138;
                  }

                  v1184 = v1139;
                }

                else
                {
                  sub_1D1FCD668(v1528 & 1, v1611);
                  v160 = (v1458)(v1611, 1, v1456);
                  if (v160 == 1)
                  {
                    sub_1D202975C(v1611);
                    v1222 = v1415;
                  }

                  else
                  {

                    v1205 = 32;
                    v1209 = 32;
                    v1210 = 7;
                    v161 = swift_allocObject();
                    v162 = v1477;
                    v1211 = v161;
                    *(v161 + 16) = v1476;
                    *(v161 + 24) = v162;
                    v1221 = sub_1D208C48C();
                    v1203 = v1221;
                    v1220 = sub_1D208C85C();
                    v1204 = v1220;
                    v1206 = 17;
                    v1214 = swift_allocObject();
                    v1207 = v1214;
                    *(v1214 + 16) = v1205;
                    v1215 = swift_allocObject();
                    v1208 = v1215;
                    *(v1215 + 16) = 8;
                    v163 = swift_allocObject();
                    v164 = v1211;
                    v1212 = v163;
                    *(v163 + 16) = sub_1D208B9D0;
                    *(v163 + 24) = v164;
                    v165 = swift_allocObject();
                    v166 = v1212;
                    v1218 = v165;
                    v1213 = v165;
                    *(v165 + 16) = sub_1D205248C;
                    *(v165 + 24) = v166;
                    v1219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                    v1216 = sub_1D208CB2C();
                    v1217 = v167;

                    v168 = v1214;
                    v169 = v1217;
                    *v1217 = sub_1D2029A40;
                    v169[1] = v168;

                    v170 = v1215;
                    v171 = v1217;
                    v1217[2] = sub_1D2029A40;
                    v171[3] = v170;

                    v172 = v1217;
                    v173 = v1218;
                    v1217[4] = sub_1D2052498;
                    v172[5] = v173;
                    sub_1D1FCECE8();

                    if (os_log_type_enabled(v1221, v1220))
                    {
                      v1200 = v1415;
                      v1195 = sub_1D208C8EC();
                      v1192 = v1195;
                      v1193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                      v1196 = sub_1D2029898(0, v1193, v1193);
                      v1194 = v1196;
                      v1198 = 1;
                      v1197 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                      v1657 = v1195;
                      v1656 = v1196;
                      v1655 = v1197;
                      v1199 = &v1657;
                      sub_1D20298EC(2, &v1657);
                      sub_1D20298EC(v1198, v1199);
                      v174 = v1200;
                      v1653 = sub_1D2029A40;
                      v1654 = v1207;
                      sub_1D2029900(&v1653, v1199, &v1656, &v1655);
                      v1201 = v174;
                      v1202 = v174;
                      if (v174)
                      {
                        v1190 = 0;

                        __break(1u);
                      }

                      else
                      {
                        v1653 = sub_1D2029A40;
                        v1654 = v1208;
                        sub_1D2029900(&v1653, &v1657, &v1656, &v1655);
                        v1188 = 0;
                        v1189 = 0;
                        v1653 = sub_1D2052498;
                        v1654 = v1213;
                        sub_1D2029900(&v1653, &v1657, &v1656, &v1655);
                        v1186 = 0;
                        v1187 = 0;
                        _os_log_impl(&dword_1D1FC7000, v1203, v1204, "[Deduplication] [%s] 1.2.4 Newer sites wins", v1192, 0xCu);
                        sub_1D202994C(v1194, 0, v1193);
                        sub_1D202994C(v1197, 1, MEMORY[0x1E69E7CA0] + 8);
                        sub_1D208C8BC();

                        v1191 = v1186;
                      }
                    }

                    else
                    {

                      v1191 = v1415;
                    }

                    v1185 = v1191;

                    (*(v1457 + 8))(v1611, v1456);
                    v1222 = v1185;
                  }

                  v1183 = v1222;
                  sub_1D2028364(v1593, v1588);
                  sub_1D208B938(v1588, v1589);
                  v1184 = v1183;
                }

                v1227 = v1184;
              }

              v1269 = v1227;
            }

            v1319 = v1269;
          }

          v930 = v1319;
          v1358(v1577, v1564);
          v1358(v1578, v1564);
          v1368 = v930;
        }

        else
        {
          v929 = *(v1566 + 8);
          v928 = v1566 + 8;
          v929(v1577, v1564);
          v929(v1578, v1564);
          v1368 = v1415;
        }
      }
    }

    v1374 = v1368;
    goto LABEL_222;
  }

  EnergySitePayload.accessToken.getter();
  v925 = v259;
  v926 = sub_1D208C66C();

  if (v926)
  {
    v924 = 0;
  }

  else
  {
    EnergySitePayload.refreshToken.getter();
    v922 = v260;
    v923 = sub_1D208C66C();

    v924 = v923 ^ 1;
  }

  if (v924)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v919 = v261;
    v920 = sub_1D208C66C();

    v921 = v920 ^ 1;
  }

  else
  {
    v921 = 0;
  }

  if (v921)
  {
    sub_1D1FCD668(v1528 & 1, v1604);
    v915 = sub_1D208C4AC();
    v916 = *(v915 - 8);
    v917 = *(v916 + 48);
    v918 = (v916 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v917(v1604, 1) == 1)
    {
      sub_1D202975C(v1604);
      v914 = v1475;
    }

    else
    {

      v897 = 32;
      v901 = 32;
      v902 = 7;
      v262 = swift_allocObject();
      v263 = v1477;
      v903 = v262;
      *(v262 + 16) = v1476;
      *(v262 + 24) = v263;
      v913 = sub_1D208C48C();
      v895 = v913;
      v912 = sub_1D208C85C();
      v896 = v912;
      v898 = 17;
      v906 = swift_allocObject();
      v899 = v906;
      *(v906 + 16) = v897;
      v907 = swift_allocObject();
      v900 = v907;
      *(v907 + 16) = 8;
      v264 = swift_allocObject();
      v265 = v903;
      v904 = v264;
      *(v264 + 16) = sub_1D208B9D0;
      *(v264 + 24) = v265;
      v266 = swift_allocObject();
      v267 = v904;
      v910 = v266;
      v905 = v266;
      *(v266 + 16) = sub_1D205248C;
      *(v266 + 24) = v267;
      v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
      v908 = sub_1D208CB2C();
      v909 = v268;

      v269 = v906;
      v270 = v909;
      *v909 = sub_1D2029A40;
      v270[1] = v269;

      v271 = v907;
      v272 = v909;
      v909[2] = sub_1D2029A40;
      v272[3] = v271;

      v273 = v909;
      v274 = v910;
      v909[4] = sub_1D2052498;
      v273[5] = v274;
      sub_1D1FCECE8();

      if (os_log_type_enabled(v913, v912))
      {
        v892 = v1475;
        v887 = sub_1D208C8EC();
        v884 = v887;
        v885 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
        v888 = sub_1D2029898(0, v885, v885);
        v886 = v888;
        v890 = 1;
        v889 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1716 = v887;
        v1715 = v888;
        v1714 = v889;
        v891 = &v1716;
        sub_1D20298EC(2, &v1716);
        sub_1D20298EC(v890, v891);
        v275 = v892;
        v1712 = sub_1D2029A40;
        v1713 = v899;
        sub_1D2029900(&v1712, v891, &v1715, &v1714);
        v893 = v275;
        v894 = v275;
        if (v275)
        {
          v882 = 0;

          __break(1u);
        }

        else
        {
          v1712 = sub_1D2029A40;
          v1713 = v900;
          sub_1D2029900(&v1712, &v1716, &v1715, &v1714);
          v880 = 0;
          v881 = 0;
          v1712 = sub_1D2052498;
          v1713 = v905;
          sub_1D2029900(&v1712, &v1716, &v1715, &v1714);
          v878 = 0;
          v879 = 0;
          _os_log_impl(&dword_1D1FC7000, v895, v896, "[Deduplication] [%s] Old site onboarded", v884, 0xCu);
          sub_1D202994C(v886, 0, v885);
          sub_1D202994C(v889, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1D208C8BC();

          v883 = v878;
        }
      }

      else
      {

        v883 = v1475;
      }

      v877 = v883;

      (*(v916 + 8))(v1604, v915);
      v914 = v877;
    }

    v874 = v914;
    sub_1D1FE94C4(v1592, v1555);
    v875 = *(v1566 + 48);
    v876 = (v1566 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v875(v1555, 1, v1564) == 1)
    {
      sub_1D1FF1A9C(v1555);
      v873 = v874;
    }

    else
    {
      v871 = *(v1566 + 32);
      v872 = (v1566 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v871(v1574, v1555, v1564);
      EnergySitePayload.siteTombstone.getter(v1543);
      if ((*(v1536 + 48))(v1543, 1, v1534) == 1)
      {
        sub_1D1FD6044(v1543);
        (*(v1566 + 56))(v1554, 1, 1, v1564);
      }

      else
      {
        sub_1D208C1BC();
        (*(v1536 + 8))(v1543, v1534);
        (*(v1566 + 56))(v1554, 0, 1, v1564);
      }

      if (v875(v1554, 1, v1564) == 1)
      {
        sub_1D208BDDC();
        if (v875(v1554, 1, v1564) != 1)
        {
          sub_1D1FF1A9C(v1554);
        }
      }

      else
      {
        v871(v1573, v1554, v1564);
      }

      v870 = sub_1D208BE8C();
      v868 = *(v1566 + 8);
      v869 = (v1566 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v868(v1573, v1564);
      if (v870)
      {
        sub_1D1FCD668(v1528 & 1, v1603);
        if ((v917)(v1603, 1, v915) == 1)
        {
          sub_1D202975C(v1603);
          v867 = v874;
        }

        else
        {

          v850 = 32;
          v854 = 32;
          v855 = 7;
          v276 = swift_allocObject();
          v277 = v1477;
          v856 = v276;
          *(v276 + 16) = v1476;
          *(v276 + 24) = v277;
          v866 = sub_1D208C48C();
          v848 = v866;
          v865 = sub_1D208C85C();
          v849 = v865;
          v851 = 17;
          v859 = swift_allocObject();
          v852 = v859;
          *(v859 + 16) = v850;
          v860 = swift_allocObject();
          v853 = v860;
          *(v860 + 16) = 8;
          v278 = swift_allocObject();
          v279 = v856;
          v857 = v278;
          *(v278 + 16) = sub_1D208B9D0;
          *(v278 + 24) = v279;
          v280 = swift_allocObject();
          v281 = v857;
          v863 = v280;
          v858 = v280;
          *(v280 + 16) = sub_1D205248C;
          *(v280 + 24) = v281;
          v864 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
          v861 = sub_1D208CB2C();
          v862 = v282;

          v283 = v859;
          v284 = v862;
          *v862 = sub_1D2029A40;
          v284[1] = v283;

          v285 = v860;
          v286 = v862;
          v862[2] = sub_1D2029A40;
          v286[3] = v285;

          v287 = v862;
          v288 = v863;
          v862[4] = sub_1D2052498;
          v287[5] = v288;
          sub_1D1FCECE8();

          if (os_log_type_enabled(v866, v865))
          {
            v845 = v874;
            v840 = sub_1D208C8EC();
            v837 = v840;
            v838 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
            v841 = sub_1D2029898(0, v838, v838);
            v839 = v841;
            v843 = 1;
            v842 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v1721 = v840;
            v1720 = v841;
            v1719 = v842;
            v844 = &v1721;
            sub_1D20298EC(2, &v1721);
            sub_1D20298EC(v843, v844);
            v289 = v845;
            v1717 = sub_1D2029A40;
            v1718 = v852;
            sub_1D2029900(&v1717, v844, &v1720, &v1719);
            v846 = v289;
            v847 = v289;
            if (v289)
            {
              v835 = 0;

              __break(1u);
            }

            else
            {
              v1717 = sub_1D2029A40;
              v1718 = v853;
              sub_1D2029900(&v1717, &v1721, &v1720, &v1719);
              v833 = 0;
              v834 = 0;
              v1717 = sub_1D2052498;
              v1718 = v858;
              sub_1D2029900(&v1717, &v1721, &v1720, &v1719);
              v831 = 0;
              v832 = 0;
              _os_log_impl(&dword_1D1FC7000, v848, v849, "[Deduplication] [%s] 2.1 Newer sites wins", v837, 0xCu);
              sub_1D202994C(v839, 0, v838);
              sub_1D202994C(v842, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1D208C8BC();

              v836 = v831;
            }
          }

          else
          {

            v836 = v874;
          }

          v830 = v836;

          (*(v916 + 8))(v1603, v915);
          v867 = v830;
        }

        v829 = v867;
        sub_1D2028364(v1593, v1588);
        sub_1D208B938(v1588, v1589);
        v868(v1574, v1564);
        v873 = v829;
      }

      else
      {
        v868(v1574, v1564);
        v873 = v874;
      }
    }

    v828 = v873;
  }

  else
  {
    EnergySitePayload.accessToken.getter();
    v826 = v290;
    v827 = sub_1D208C66C();

    if (v827)
    {
      v825 = 0;
    }

    else
    {
      EnergySitePayload.refreshToken.getter();
      v823 = v291;
      v824 = sub_1D208C66C();

      v825 = v824 ^ 1;
    }

    if (v825)
    {
      EnergySitePayload.ckFunctionToken.getter();
      v820 = v292;
      v821 = sub_1D208C66C();

      v822 = v821 ^ 1;
    }

    else
    {
      v822 = 0;
    }

    if (v822)
    {
      sub_1D1FCD668(v1528 & 1, v1602);
      v816 = sub_1D208C4AC();
      v817 = *(v816 - 8);
      v818 = *(v817 + 48);
      v819 = (v817 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v818(v1602, 1) == 1)
      {
        sub_1D202975C(v1602);
        v815 = v1475;
      }

      else
      {

        v798 = 32;
        v802 = 32;
        v803 = 7;
        v293 = swift_allocObject();
        v294 = v1477;
        v804 = v293;
        *(v293 + 16) = v1476;
        *(v293 + 24) = v294;
        v814 = sub_1D208C48C();
        v796 = v814;
        v813 = sub_1D208C85C();
        v797 = v813;
        v799 = 17;
        v807 = swift_allocObject();
        v800 = v807;
        *(v807 + 16) = v798;
        v808 = swift_allocObject();
        v801 = v808;
        *(v808 + 16) = 8;
        v295 = swift_allocObject();
        v296 = v804;
        v805 = v295;
        *(v295 + 16) = sub_1D208B9D0;
        *(v295 + 24) = v296;
        v297 = swift_allocObject();
        v298 = v805;
        v811 = v297;
        v806 = v297;
        *(v297 + 16) = sub_1D205248C;
        *(v297 + 24) = v298;
        v812 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v809 = sub_1D208CB2C();
        v810 = v299;

        v300 = v807;
        v301 = v810;
        *v810 = sub_1D2029A40;
        v301[1] = v300;

        v302 = v808;
        v303 = v810;
        v810[2] = sub_1D2029A40;
        v303[3] = v302;

        v304 = v810;
        v305 = v811;
        v810[4] = sub_1D2052498;
        v304[5] = v305;
        sub_1D1FCECE8();

        if (os_log_type_enabled(v814, v813))
        {
          v793 = v1475;
          v788 = sub_1D208C8EC();
          v785 = v788;
          v786 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v789 = sub_1D2029898(0, v786, v786);
          v787 = v789;
          v791 = 1;
          v790 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1726 = v788;
          v1725 = v789;
          v1724 = v790;
          v792 = &v1726;
          sub_1D20298EC(2, &v1726);
          sub_1D20298EC(v791, v792);
          v306 = v793;
          v1722 = sub_1D2029A40;
          v1723 = v800;
          sub_1D2029900(&v1722, v792, &v1725, &v1724);
          v794 = v306;
          v795 = v306;
          if (v306)
          {
            v783 = 0;

            __break(1u);
          }

          else
          {
            v1722 = sub_1D2029A40;
            v1723 = v801;
            sub_1D2029900(&v1722, &v1726, &v1725, &v1724);
            v781 = 0;
            v782 = 0;
            v1722 = sub_1D2052498;
            v1723 = v806;
            sub_1D2029900(&v1722, &v1726, &v1725, &v1724);
            v779 = 0;
            v780 = 0;
            _os_log_impl(&dword_1D1FC7000, v796, v797, "[Deduplication] [%s] new site onboarded", v785, 0xCu);
            sub_1D202994C(v787, 0, v786);
            sub_1D202994C(v790, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1D208C8BC();

            v784 = v779;
          }
        }

        else
        {

          v784 = v1475;
        }

        v778 = v784;

        (*(v817 + 8))(v1602, v816);
        v815 = v778;
      }

      v775 = v815;
      sub_1D1FE94C4(v1591, v1553);
      v776 = *(v1566 + 48);
      v777 = (v1566 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v776(v1553, 1, v1564) == 1)
      {
        sub_1D1FF1A9C(v1553);
        v774 = v775;
      }

      else
      {
        v771 = *(v1566 + 32);
        v772 = (v1566 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v771(v1572, v1553, v1564);
        EnergySitePayload.siteTombstone.getter(v1542);
        if ((*(v1536 + 48))(v1542, 1, v1534) == 0)
        {
          (*(v1536 + 16))(v1537, v1542, v1534);
          sub_1D1FD6044(v1542);
          sub_1D208C1BC();
          (*(v1536 + 8))(v1537, v1534);
          (*(v1566 + 56))(v1552, 0, 1, v1564);
        }

        else
        {
          sub_1D1FD6044(v1542);
          (*(v1566 + 56))(v1552, 1, 1, v1564);
        }

        if (v776(v1552, 1, v1564) == 1)
        {
          sub_1D208BDDC();
          if (v776(v1552, 1, v1564) != 1)
          {
            sub_1D1FF1A9C(v1552);
          }
        }

        else
        {
          v771(v1571, v1552, v1564);
        }

        v770 = sub_1D208BE9C();
        v768 = *(v1566 + 8);
        v769 = (v1566 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v768(v1571, v1564);
        if (v770)
        {
          sub_1D1FCD668(v1528 & 1, v1601);
          if ((v818)(v1601, 1, v816) == 1)
          {
            sub_1D202975C(v1601);
            v767 = v775;
          }

          else
          {

            v750 = 32;
            v754 = 32;
            v755 = 7;
            v307 = swift_allocObject();
            v308 = v1477;
            v756 = v307;
            *(v307 + 16) = v1476;
            *(v307 + 24) = v308;
            v766 = sub_1D208C48C();
            v748 = v766;
            v765 = sub_1D208C85C();
            v749 = v765;
            v751 = 17;
            v759 = swift_allocObject();
            v752 = v759;
            *(v759 + 16) = v750;
            v760 = swift_allocObject();
            v753 = v760;
            *(v760 + 16) = 8;
            v309 = swift_allocObject();
            v310 = v756;
            v757 = v309;
            *(v309 + 16) = sub_1D208B9D0;
            *(v309 + 24) = v310;
            v311 = swift_allocObject();
            v312 = v757;
            v763 = v311;
            v758 = v311;
            *(v311 + 16) = sub_1D205248C;
            *(v311 + 24) = v312;
            v764 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v761 = sub_1D208CB2C();
            v762 = v313;

            v314 = v759;
            v315 = v762;
            *v762 = sub_1D2029A40;
            v315[1] = v314;

            v316 = v760;
            v317 = v762;
            v762[2] = sub_1D2029A40;
            v317[3] = v316;

            v318 = v762;
            v319 = v763;
            v762[4] = sub_1D2052498;
            v318[5] = v319;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v766, v765))
            {
              v745 = v775;
              v740 = sub_1D208C8EC();
              v737 = v740;
              v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v741 = sub_1D2029898(0, v738, v738);
              v739 = v741;
              v743 = 1;
              v742 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v1731 = v740;
              v1730 = v741;
              v1729 = v742;
              v744 = &v1731;
              sub_1D20298EC(2, &v1731);
              sub_1D20298EC(v743, v744);
              v320 = v745;
              v1727 = sub_1D2029A40;
              v1728 = v752;
              sub_1D2029900(&v1727, v744, &v1730, &v1729);
              v746 = v320;
              v747 = v320;
              if (v320)
              {
                v735 = 0;

                __break(1u);
              }

              else
              {
                v1727 = sub_1D2029A40;
                v1728 = v753;
                sub_1D2029900(&v1727, &v1731, &v1730, &v1729);
                v733 = 0;
                v734 = 0;
                v1727 = sub_1D2052498;
                v1728 = v758;
                sub_1D2029900(&v1727, &v1731, &v1730, &v1729);
                v731 = 0;
                v732 = 0;
                _os_log_impl(&dword_1D1FC7000, v748, v749, "[Deduplication] [%s] 3.1 Newer sites wins", v737, 0xCu);
                sub_1D202994C(v739, 0, v738);
                sub_1D202994C(v742, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1D208C8BC();

                v736 = v731;
              }
            }

            else
            {

              v736 = v775;
            }

            v730 = v736;

            (*(v817 + 8))(v1601, v816);
            v767 = v730;
          }

          v729 = v767;
          sub_1D2028364(v1593, v1588);
          sub_1D208B938(v1588, v1589);
          v768(v1572, v1564);
          v774 = v729;
        }

        else
        {
          v768(v1572, v1564);
          v774 = v775;
        }
      }

      v728 = v774;
    }

    else
    {
      sub_1D1FCD668(v1528 & 1, v1600);
      v724 = sub_1D208C4AC();
      v725 = *(v724 - 8);
      v726 = *(v725 + 48);
      v727 = (v725 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v726(v1600, 1) == 1)
      {
        sub_1D202975C(v1600);
        v723 = v1475;
      }

      else
      {

        v706 = 32;
        v710 = 32;
        v711 = 7;
        v321 = swift_allocObject();
        v322 = v1477;
        v712 = v321;
        *(v321 + 16) = v1476;
        *(v321 + 24) = v322;
        v722 = sub_1D208C48C();
        v704 = v722;
        v721 = sub_1D208C85C();
        v705 = v721;
        v707 = 17;
        v715 = swift_allocObject();
        v708 = v715;
        *(v715 + 16) = v706;
        v716 = swift_allocObject();
        v709 = v716;
        *(v716 + 16) = 8;
        v323 = swift_allocObject();
        v324 = v712;
        v713 = v323;
        *(v323 + 16) = sub_1D208B9D0;
        *(v323 + 24) = v324;
        v325 = swift_allocObject();
        v326 = v713;
        v719 = v325;
        v714 = v325;
        *(v325 + 16) = sub_1D205248C;
        *(v325 + 24) = v326;
        v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v717 = sub_1D208CB2C();
        v718 = v327;

        v328 = v715;
        v329 = v718;
        *v718 = sub_1D2029A40;
        v329[1] = v328;

        v330 = v716;
        v331 = v718;
        v718[2] = sub_1D2029A40;
        v331[3] = v330;

        v332 = v718;
        v333 = v719;
        v718[4] = sub_1D2052498;
        v332[5] = v333;
        sub_1D1FCECE8();

        if (os_log_type_enabled(v722, v721))
        {
          v701 = v1475;
          v696 = sub_1D208C8EC();
          v693 = v696;
          v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v697 = sub_1D2029898(0, v694, v694);
          v695 = v697;
          v699 = 1;
          v698 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v1736 = v696;
          v1735 = v697;
          v1734 = v698;
          v700 = &v1736;
          sub_1D20298EC(2, &v1736);
          sub_1D20298EC(v699, v700);
          v334 = v701;
          v1732 = sub_1D2029A40;
          v1733 = v708;
          sub_1D2029900(&v1732, v700, &v1735, &v1734);
          v702 = v334;
          v703 = v334;
          if (v334)
          {
            v691 = 0;

            __break(1u);
          }

          else
          {
            v1732 = sub_1D2029A40;
            v1733 = v709;
            sub_1D2029900(&v1732, &v1736, &v1735, &v1734);
            v689 = 0;
            v690 = 0;
            v1732 = sub_1D2052498;
            v1733 = v714;
            sub_1D2029900(&v1732, &v1736, &v1735, &v1734);
            v687 = 0;
            v688 = 0;
            _os_log_impl(&dword_1D1FC7000, v704, v705, "[Deduplication] [%s] No site onboarded", v693, 0xCu);
            sub_1D202994C(v695, 0, v694);
            sub_1D202994C(v698, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1D208C8BC();

            v692 = v687;
          }
        }

        else
        {

          v692 = v1475;
        }

        v686 = v692;

        (*(v725 + 8))(v1600, v724);
        v723 = v686;
      }

      v683 = v723;
      EnergySitePayload.siteTombstone.getter(v1541);
      v684 = *(v1536 + 48);
      v685 = (v1536 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v684(v1541, 1, v1534) == 1)
      {
        sub_1D1FD6044(v1541);
        (*(v1566 + 56))(v1551, 1, 1, v1564);
      }

      else
      {
        sub_1D208C1BC();
        (*(v1536 + 8))(v1541, v1534);
        (*(v1566 + 56))(v1551, 0, 1, v1564);
      }

      v681 = *(v1566 + 48);
      v682 = (v1566 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v681(v1551, 1, v1564) == 1)
      {
        sub_1D208BDDC();
        if (v681(v1551, 1, v1564) != 1)
        {
          sub_1D1FF1A9C(v1551);
        }
      }

      else
      {
        (*(v1566 + 32))(v1570, v1551, v1564);
      }

      EnergySitePayload.siteTombstone.getter(v1540);
      if ((v684)(v1540, 1, v1534) == 0)
      {
        (*(v1536 + 16))(v1537, v1540, v1534);
        sub_1D1FD6044(v1540);
        sub_1D208C1BC();
        (*(v1536 + 8))(v1537, v1534);
        (*(v1566 + 56))(v1550, 0, 1, v1564);
      }

      else
      {
        sub_1D1FD6044(v1540);
        (*(v1566 + 56))(v1550, 1, 1, v1564);
      }

      if (v681(v1550, 1, v1564) == 1)
      {
        sub_1D208BDDC();
        if (v681(v1550, 1, v1564) != 1)
        {
          sub_1D1FF1A9C(v1550);
        }
      }

      else
      {
        (*(v1566 + 32))(v1569, v1550, v1564);
      }

      v679 = sub_1D208BE8C();
      v678 = *(v1566 + 8);
      v677 = v1566 + 8;
      v675 = v678;
      v676 = (v1566 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v678(v1569, v1564);
      v678(v1570, v1564);
      if (v679)
      {
        sub_1D1FCD668(v1528 & 1, v1599);
        if ((v726)(v1599, 1, v724) == 1)
        {
          sub_1D202975C(v1599);
          v674 = v683;
        }

        else
        {

          v657 = 32;
          v661 = 32;
          v662 = 7;
          v335 = swift_allocObject();
          v336 = v1477;
          v663 = v335;
          *(v335 + 16) = v1476;
          *(v335 + 24) = v336;
          v673 = sub_1D208C48C();
          v655 = v673;
          v672 = sub_1D208C85C();
          v656 = v672;
          v658 = 17;
          v666 = swift_allocObject();
          v659 = v666;
          *(v666 + 16) = v657;
          v667 = swift_allocObject();
          v660 = v667;
          *(v667 + 16) = 8;
          v337 = swift_allocObject();
          v338 = v663;
          v664 = v337;
          *(v337 + 16) = sub_1D208B9D0;
          *(v337 + 24) = v338;
          v339 = swift_allocObject();
          v340 = v664;
          v670 = v339;
          v665 = v339;
          *(v339 + 16) = sub_1D205248C;
          *(v339 + 24) = v340;
          v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
          v668 = sub_1D208CB2C();
          v669 = v341;

          v342 = v666;
          v343 = v669;
          *v669 = sub_1D2029A40;
          v343[1] = v342;

          v344 = v667;
          v345 = v669;
          v669[2] = sub_1D2029A40;
          v345[3] = v344;

          v346 = v669;
          v347 = v670;
          v669[4] = sub_1D2052498;
          v346[5] = v347;
          sub_1D1FCECE8();

          if (os_log_type_enabled(v673, v672))
          {
            v652 = v683;
            v647 = sub_1D208C8EC();
            v644 = v647;
            v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
            v648 = sub_1D2029898(0, v645, v645);
            v646 = v648;
            v650 = 1;
            v649 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v1741 = v647;
            v1740 = v648;
            v1739 = v649;
            v651 = &v1741;
            sub_1D20298EC(2, &v1741);
            sub_1D20298EC(v650, v651);
            v348 = v652;
            v1737 = sub_1D2029A40;
            v1738 = v659;
            sub_1D2029900(&v1737, v651, &v1740, &v1739);
            v653 = v348;
            v654 = v348;
            if (v348)
            {
              v642 = 0;

              __break(1u);
            }

            else
            {
              v1737 = sub_1D2029A40;
              v1738 = v660;
              sub_1D2029900(&v1737, &v1741, &v1740, &v1739);
              v640 = 0;
              v641 = 0;
              v1737 = sub_1D2052498;
              v1738 = v665;
              sub_1D2029900(&v1737, &v1741, &v1740, &v1739);
              v638 = 0;
              v639 = 0;
              _os_log_impl(&dword_1D1FC7000, v655, v656, "[Deduplication] [%s] 4.1 Newer sites wins", v644, 0xCu);
              sub_1D202994C(v646, 0, v645);
              sub_1D202994C(v649, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1D208C8BC();

              v643 = v638;
            }
          }

          else
          {

            v643 = v683;
          }

          v637 = v643;

          (*(v725 + 8))(v1599, v724);
          v674 = v637;
        }

        v635 = v674;
        sub_1D2028364(v1593, v1588);
        sub_1D208B938(v1588, v1589);
        v636 = v635;
      }

      else
      {
        EnergySitePayload.siteTombstone.getter(v1539);
        if ((v684)(v1539, 1, v1534) == 0)
        {
          (*(v1536 + 16))(v1537, v1539, v1534);
          sub_1D1FD6044(v1539);
          sub_1D208C1BC();
          (*(v1536 + 8))(v1537, v1534);
          (*(v1566 + 56))(v1549, 0, 1, v1564);
        }

        else
        {
          sub_1D1FD6044(v1539);
          (*(v1566 + 56))(v1549, 1, 1, v1564);
        }

        if (v681(v1549, 1, v1564) == 1)
        {
          sub_1D208BDDC();
          if (v681(v1549, 1, v1564) != 1)
          {
            sub_1D1FF1A9C(v1549);
          }
        }

        else
        {
          (*(v1566 + 32))(v1568, v1549, v1564);
        }

        EnergySitePayload.siteTombstone.getter(v1538);
        if (v684(v1538, 1, v1534) == 1)
        {
          sub_1D1FD6044(v1538);
          (*(v1566 + 56))(v1548, 1, 1, v1564);
        }

        else
        {
          sub_1D208C1BC();
          (*(v1536 + 8))(v1538, v1534);
          (*(v1566 + 56))(v1548, 0, 1, v1564);
        }

        if (v681(v1548, 1, v1564) == 1)
        {
          sub_1D208BDDC();
          if (v681(v1548, 1, v1564) != 1)
          {
            sub_1D1FF1A9C(v1548);
          }
        }

        else
        {
          (*(v1566 + 32))(v1567, v1548, v1564);
        }

        v633 = sub_1D208BE8C();
        v675(v1567, v1564);
        v675(v1568, v1564);
        if (v633)
        {
          sub_1D1FCD668(v1528 & 1, v1598);
          if ((v726)(v1598, 1, v724) == 1)
          {
            sub_1D202975C(v1598);
            v632 = v683;
          }

          else
          {

            v615 = 32;
            v619 = 32;
            v620 = 7;
            v349 = swift_allocObject();
            v350 = v1477;
            v621 = v349;
            *(v349 + 16) = v1476;
            *(v349 + 24) = v350;
            v631 = sub_1D208C48C();
            v613 = v631;
            v630 = sub_1D208C85C();
            v614 = v630;
            v616 = 17;
            v624 = swift_allocObject();
            v617 = v624;
            *(v624 + 16) = v615;
            v625 = swift_allocObject();
            v618 = v625;
            *(v625 + 16) = 8;
            v351 = swift_allocObject();
            v352 = v621;
            v622 = v351;
            *(v351 + 16) = sub_1D208B9D0;
            *(v351 + 24) = v352;
            v353 = swift_allocObject();
            v354 = v622;
            v628 = v353;
            v623 = v353;
            *(v353 + 16) = sub_1D205248C;
            *(v353 + 24) = v354;
            v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v626 = sub_1D208CB2C();
            v627 = v355;

            v356 = v624;
            v357 = v627;
            *v627 = sub_1D2029A40;
            v357[1] = v356;

            v358 = v625;
            v359 = v627;
            v627[2] = sub_1D2029A40;
            v359[3] = v358;

            v360 = v627;
            v361 = v628;
            v627[4] = sub_1D2052498;
            v360[5] = v361;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v631, v630))
            {
              v610 = v683;
              v605 = sub_1D208C8EC();
              v602 = v605;
              v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v606 = sub_1D2029898(0, v603, v603);
              v604 = v606;
              v608 = 1;
              v607 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v1746 = v605;
              v1745 = v606;
              v1744 = v607;
              v609 = &v1746;
              sub_1D20298EC(2, &v1746);
              sub_1D20298EC(v608, v609);
              v362 = v610;
              v1742 = sub_1D2029A40;
              v1743 = v617;
              sub_1D2029900(&v1742, v609, &v1745, &v1744);
              v611 = v362;
              v612 = v362;
              if (v362)
              {
                v600 = 0;

                __break(1u);
              }

              else
              {
                v1742 = sub_1D2029A40;
                v1743 = v618;
                sub_1D2029900(&v1742, &v1746, &v1745, &v1744);
                v598 = 0;
                v599 = 0;
                v1742 = sub_1D2052498;
                v1743 = v623;
                sub_1D2029900(&v1742, &v1746, &v1745, &v1744);
                v596 = 0;
                v597 = 0;
                _os_log_impl(&dword_1D1FC7000, v613, v614, "[Deduplication] [%s] 4.2 Older sites wins", v602, 0xCu);
                sub_1D202994C(v604, 0, v603);
                sub_1D202994C(v607, 1, MEMORY[0x1E69E7CA0] + 8);
                sub_1D208C8BC();

                v601 = v596;
              }
            }

            else
            {

              v601 = v683;
            }

            v595 = v601;

            (*(v725 + 8))(v1598, v724);
            v632 = v595;
          }

          v594 = v632;
        }

        else
        {
          EnergySitePayload.timezone.getter();
          v592 = v363;
          v593 = sub_1D208C66C();

          if (v593)
          {
            EnergySitePayload.timezone.getter();
            v589 = v364;
            v590 = sub_1D208C66C();

            v591 = v590 ^ 1;
          }

          else
          {
            v591 = 0;
          }

          if (v591)
          {
            sub_1D1FCD668(v1528 & 1, v1597);
            if ((v726)(v1597, 1, v724) == 1)
            {
              sub_1D202975C(v1597);
              v588 = v683;
            }

            else
            {

              v571 = 32;
              v575 = 32;
              v576 = 7;
              v365 = swift_allocObject();
              v366 = v1477;
              v577 = v365;
              *(v365 + 16) = v1476;
              *(v365 + 24) = v366;
              v587 = sub_1D208C48C();
              v569 = v587;
              v586 = sub_1D208C85C();
              v570 = v586;
              v572 = 17;
              v580 = swift_allocObject();
              v573 = v580;
              *(v580 + 16) = v571;
              v581 = swift_allocObject();
              v574 = v581;
              *(v581 + 16) = 8;
              v367 = swift_allocObject();
              v368 = v577;
              v578 = v367;
              *(v367 + 16) = sub_1D208B9D0;
              *(v367 + 24) = v368;
              v369 = swift_allocObject();
              v370 = v578;
              v584 = v369;
              v579 = v369;
              *(v369 + 16) = sub_1D205248C;
              *(v369 + 24) = v370;
              v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
              v582 = sub_1D208CB2C();
              v583 = v371;

              v372 = v580;
              v373 = v583;
              *v583 = sub_1D2029A40;
              v373[1] = v372;

              v374 = v581;
              v375 = v583;
              v583[2] = sub_1D2029A40;
              v375[3] = v374;

              v376 = v583;
              v377 = v584;
              v583[4] = sub_1D2052498;
              v376[5] = v377;
              sub_1D1FCECE8();

              if (os_log_type_enabled(v587, v586))
              {
                v566 = v683;
                v561 = sub_1D208C8EC();
                v558 = v561;
                v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                v562 = sub_1D2029898(0, v559, v559);
                v560 = v562;
                v564 = 1;
                v563 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                v1751 = v561;
                v1750 = v562;
                v1749 = v563;
                v565 = &v1751;
                sub_1D20298EC(2, &v1751);
                sub_1D20298EC(v564, v565);
                v378 = v566;
                v1747 = sub_1D2029A40;
                v1748 = v573;
                sub_1D2029900(&v1747, v565, &v1750, &v1749);
                v567 = v378;
                v568 = v378;
                if (v378)
                {
                  v556 = 0;

                  __break(1u);
                }

                else
                {
                  v1747 = sub_1D2029A40;
                  v1748 = v574;
                  sub_1D2029900(&v1747, &v1751, &v1750, &v1749);
                  v554 = 0;
                  v555 = 0;
                  v1747 = sub_1D2052498;
                  v1748 = v579;
                  sub_1D2029900(&v1747, &v1751, &v1750, &v1749);
                  v552 = 0;
                  v553 = 0;
                  _os_log_impl(&dword_1D1FC7000, v569, v570, "[Deduplication] [%s] 4.3 Newer sites wins", v558, 0xCu);
                  sub_1D202994C(v560, 0, v559);
                  sub_1D202994C(v563, 1, MEMORY[0x1E69E7CA0] + 8);
                  sub_1D208C8BC();

                  v557 = v552;
                }
              }

              else
              {

                v557 = v683;
              }

              v551 = v557;

              (*(v725 + 8))(v1597, v724);
              v588 = v551;
            }

            v549 = v588;
            sub_1D2028364(v1593, v1588);
            sub_1D208B938(v1588, v1589);
            v550 = v549;
          }

          else
          {
            EnergySitePayload.timezone.getter();
            v547 = v379;
            v548 = sub_1D208C66C();

            if (v548)
            {
              EnergySitePayload.timezone.getter();
              v544 = v380;
              v545 = sub_1D208C66C();

              v546 = v545 ^ 1;
            }

            else
            {
              v546 = 0;
            }

            if (v546)
            {
              sub_1D1FCD668(v1528 & 1, v1596);
              if ((v726)(v1596, 1, v724) == 1)
              {
                sub_1D202975C(v1596);
                v543 = v683;
              }

              else
              {

                v526 = 32;
                v530 = 32;
                v531 = 7;
                v381 = swift_allocObject();
                v382 = v1477;
                v532 = v381;
                *(v381 + 16) = v1476;
                *(v381 + 24) = v382;
                v542 = sub_1D208C48C();
                v524 = v542;
                v541 = sub_1D208C85C();
                v525 = v541;
                v527 = 17;
                v535 = swift_allocObject();
                v528 = v535;
                *(v535 + 16) = v526;
                v536 = swift_allocObject();
                v529 = v536;
                *(v536 + 16) = 8;
                v383 = swift_allocObject();
                v384 = v532;
                v533 = v383;
                *(v383 + 16) = sub_1D208B9D0;
                *(v383 + 24) = v384;
                v385 = swift_allocObject();
                v386 = v533;
                v539 = v385;
                v534 = v385;
                *(v385 + 16) = sub_1D205248C;
                *(v385 + 24) = v386;
                v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v537 = sub_1D208CB2C();
                v538 = v387;

                v388 = v535;
                v389 = v538;
                *v538 = sub_1D2029A40;
                v389[1] = v388;

                v390 = v536;
                v391 = v538;
                v538[2] = sub_1D2029A40;
                v391[3] = v390;

                v392 = v538;
                v393 = v539;
                v538[4] = sub_1D2052498;
                v392[5] = v393;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v542, v541))
                {
                  v521 = v683;
                  v516 = sub_1D208C8EC();
                  v513 = v516;
                  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v517 = sub_1D2029898(0, v514, v514);
                  v515 = v517;
                  v519 = 1;
                  v518 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                  v1756 = v516;
                  v1755 = v517;
                  v1754 = v518;
                  v520 = &v1756;
                  sub_1D20298EC(2, &v1756);
                  sub_1D20298EC(v519, v520);
                  v394 = v521;
                  v1752 = sub_1D2029A40;
                  v1753 = v528;
                  sub_1D2029900(&v1752, v520, &v1755, &v1754);
                  v522 = v394;
                  v523 = v394;
                  if (v394)
                  {
                    v511 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1752 = sub_1D2029A40;
                    v1753 = v529;
                    sub_1D2029900(&v1752, &v1756, &v1755, &v1754);
                    v509 = 0;
                    v510 = 0;
                    v1752 = sub_1D2052498;
                    v1753 = v534;
                    sub_1D2029900(&v1752, &v1756, &v1755, &v1754);
                    v507 = 0;
                    v508 = 0;
                    _os_log_impl(&dword_1D1FC7000, v524, v525, "[Deduplication] [%s] 4.4 Older sites wins", v513, 0xCu);
                    sub_1D202994C(v515, 0, v514);
                    sub_1D202994C(v518, 1, MEMORY[0x1E69E7CA0] + 8);
                    sub_1D208C8BC();

                    v512 = v507;
                  }
                }

                else
                {

                  v512 = v683;
                }

                v506 = v512;

                (*(v725 + 8))(v1596, v724);
                v543 = v506;
              }

              v505 = v543;
            }

            else
            {
              sub_1D1FCD668(v1528 & 1, v1595);
              if ((v726)(v1595, 1, v724) == 1)
              {
                sub_1D202975C(v1595);
                v504 = v683;
              }

              else
              {

                v487 = 32;
                v491 = 32;
                v492 = 7;
                v395 = swift_allocObject();
                v396 = v1477;
                v493 = v395;
                *(v395 + 16) = v1476;
                *(v395 + 24) = v396;
                v503 = sub_1D208C48C();
                v485 = v503;
                v502 = sub_1D208C85C();
                v486 = v502;
                v488 = 17;
                v496 = swift_allocObject();
                v489 = v496;
                *(v496 + 16) = v487;
                v497 = swift_allocObject();
                v490 = v497;
                *(v497 + 16) = 8;
                v397 = swift_allocObject();
                v398 = v493;
                v494 = v397;
                *(v397 + 16) = sub_1D208B9D0;
                *(v397 + 24) = v398;
                v399 = swift_allocObject();
                v400 = v494;
                v500 = v399;
                v495 = v399;
                *(v399 + 16) = sub_1D205248C;
                *(v399 + 24) = v400;
                v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v498 = sub_1D208CB2C();
                v499 = v401;

                v402 = v496;
                v403 = v499;
                *v499 = sub_1D2029A40;
                v403[1] = v402;

                v404 = v497;
                v405 = v499;
                v499[2] = sub_1D2029A40;
                v405[3] = v404;

                v406 = v499;
                v407 = v500;
                v499[4] = sub_1D2052498;
                v406[5] = v407;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v503, v502))
                {
                  v482 = v683;
                  v477 = sub_1D208C8EC();
                  v474 = v477;
                  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v478 = sub_1D2029898(0, v475, v475);
                  v476 = v478;
                  v480 = 1;
                  v479 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
                  v1761 = v477;
                  v1760 = v478;
                  v1759 = v479;
                  v481 = &v1761;
                  sub_1D20298EC(2, &v1761);
                  sub_1D20298EC(v480, v481);
                  v408 = v482;
                  v1757 = sub_1D2029A40;
                  v1758 = v489;
                  sub_1D2029900(&v1757, v481, &v1760, &v1759);
                  v483 = v408;
                  v484 = v408;
                  if (v408)
                  {
                    v472 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1757 = sub_1D2029A40;
                    v1758 = v490;
                    sub_1D2029900(&v1757, &v1761, &v1760, &v1759);
                    v470 = 0;
                    v471 = 0;
                    v1757 = sub_1D2052498;
                    v1758 = v495;
                    sub_1D2029900(&v1757, &v1761, &v1760, &v1759);
                    v468 = 0;
                    v469 = 0;
                    _os_log_impl(&dword_1D1FC7000, v485, v486, "[Deduplication] [%s] 4.5 Default: Newer sites wins", v474, 0xCu);
                    sub_1D202994C(v476, 0, v475);
                    sub_1D202994C(v479, 1, MEMORY[0x1E69E7CA0] + 8);
                    sub_1D208C8BC();

                    v473 = v468;
                  }
                }

                else
                {

                  v473 = v683;
                }

                v467 = v473;

                (*(v725 + 8))(v1595, v724);
                v504 = v467;
              }

              v466 = v504;
              sub_1D2028364(v1593, v1588);
              sub_1D208B938(v1588, v1589);
              v505 = v466;
            }

            v550 = v505;
          }

          v594 = v550;
        }

        v636 = v594;
      }

      v728 = v636;
    }

    v828 = v728;
  }

  v927 = v828;
LABEL_394:
  v463 = v927;
  sub_1D1FCD668(v1528 & 1, v1594);
  v464 = sub_1D208C4AC();
  v465 = *(v464 - 8);
  if ((*(v465 + 48))(v1594, 1) == 1)
  {
    sub_1D202975C(v1594);
    v462 = v463;
  }

  else
  {

    v445 = 32;
    v449 = 32;
    v450 = 7;
    v409 = swift_allocObject();
    v410 = v1477;
    v451 = v409;
    *(v409 + 16) = v1476;
    *(v409 + 24) = v410;
    v461 = sub_1D208C48C();
    v443 = v461;
    v460 = sub_1D208C85C();
    v444 = v460;
    v446 = 17;
    v454 = swift_allocObject();
    v447 = v454;
    *(v454 + 16) = v445;
    v455 = swift_allocObject();
    v448 = v455;
    *(v455 + 16) = 8;
    v411 = swift_allocObject();
    v412 = v451;
    v452 = v411;
    *(v411 + 16) = sub_1D208B9D0;
    *(v411 + 24) = v412;
    v413 = swift_allocObject();
    v414 = v452;
    v458 = v413;
    v453 = v413;
    *(v413 + 16) = sub_1D205248C;
    *(v413 + 24) = v414;
    v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
    v456 = sub_1D208CB2C();
    v457 = v415;

    v416 = v454;
    v417 = v457;
    *v457 = sub_1D2029A40;
    v417[1] = v416;

    v418 = v455;
    v419 = v457;
    v457[2] = sub_1D2029A40;
    v419[3] = v418;

    v420 = v457;
    v421 = v458;
    v457[4] = sub_1D2052498;
    v420[5] = v421;
    sub_1D1FCECE8();

    if (os_log_type_enabled(v461, v460))
    {
      v440 = v463;
      v435 = sub_1D208C8EC();
      v432 = v435;
      v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
      v436 = sub_1D2029898(0, v433, v433);
      v434 = v436;
      v438 = 1;
      v437 = sub_1D2029898(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v1766 = v435;
      v1765 = v436;
      v1764 = v437;
      v439 = &v1766;
      sub_1D20298EC(2, &v1766);
      sub_1D20298EC(v438, v439);
      v422 = v440;
      v1762 = sub_1D2029A40;
      v1763 = v447;
      sub_1D2029900(&v1762, v439, &v1765, &v1764);
      v441 = v422;
      v442 = v422;
      if (v422)
      {
        v430 = 0;

        __break(1u);
      }

      else
      {
        v1762 = sub_1D2029A40;
        v1763 = v448;
        sub_1D2029900(&v1762, &v1766, &v1765, &v1764);
        v428 = 0;
        v429 = 0;
        v1762 = sub_1D2052498;
        v1763 = v453;
        sub_1D2029900(&v1762, &v1766, &v1765, &v1764);
        v426 = 0;
        v427 = 0;
        _os_log_impl(&dword_1D1FC7000, v443, v444, "[Deduplication] [%s] Completed", v432, 0xCu);
        sub_1D202994C(v434, 0, v433);
        sub_1D202994C(v437, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1D208C8BC();

        v431 = v426;
      }
    }

    else
    {

      v431 = v463;
    }

    v425 = v431;

    (*(v465 + 8))(v1594, v464);
    v462 = v425;
  }

  v424[1] = v462;
}

uint64_t static MergeEnergySite.siteFromMetadata(siteID:metadata:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v19 = a3;
  v20 = a4;
  v17 = a5;
  v18 = a6;
  v16 = v6;
  sub_1D1FD0018(a3, a4);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v7 = type metadata accessor for EKEnergySite(0);
  sub_1D1FEA670(sub_1D208B840, v12, v7, &v14, &v15);
  sub_1D1FD0094(a3, a4);

  if (v13)
  {
    return v9;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_1D2089CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v133 = a8;
  v184 = a1;
  v185 = a2;
  v179 = a3;
  v180 = a4;
  v181 = a5;
  v182 = a6;
  v134 = a7;
  v212 = 0;
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v203 = 0;
  v197 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v135 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v136 = v81 - v135;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v137 = *(*(v9 - 8) + 64);
  v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v139 = v81 - v138;
  v140 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v138);
  v141 = v81 - v140;
  v142 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v140);
  v143 = v81 - v142;
  v144 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v142);
  v145 = v81 - v144;
  v146 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v144);
  v147 = v81 - v146;
  v148 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v146);
  v149 = v81 - v148;
  v150 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v148);
  v151 = v81 - v150;
  v152 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v150);
  v153 = v81 - v152;
  v154 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v152);
  v155 = v81 - v154;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v156 = *(*(v18 - 8) + 64);
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v158 = v81 - v157;
  v159 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v157);
  v160 = v81 - v159;
  v161 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v159);
  v162 = v81 - v161;
  v163 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v161);
  v164 = v81 - v163;
  v165 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v163);
  v166 = v81 - v165;
  v167 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v165);
  v168 = v81 - v167;
  v169 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v167);
  v170 = v81 - v169;
  v171 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v169);
  v172 = v81 - v171;
  v173 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - v171);
  v174 = v81 - v173;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v175 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v176 = v81 - v175;
  v177 = 0;
  v178 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v177);
  v190 = v81 - v178;
  v29 = type metadata accessor for EnergySitePayload(v28);
  v183 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v184);
  v186 = v81 - v183;
  v212 = v81 - v183;
  v210 = v30;
  v211 = v31;
  v208 = v32;
  v209 = v33;
  v206 = v34;
  v207 = v35;
  sub_1D1FD0018(v30, v31);
  v187 = v205;
  v205[0] = v184;
  v205[1] = v185;
  v188 = v204;
  memset(v204, 0, sizeof(v204));
  v192 = sub_1D2025260();
  v191 = MEMORY[0x1E6969080];
  v193 = MEMORY[0x1E69AA8D0];
  v189 = sub_1D2029718();
  sub_1D2029734(v29, v191);
  v36 = v194;
  result = sub_1D208C37C();
  v195 = v36;
  v196 = v36;
  if (v36)
  {
    *v134 = v196;
  }

  else
  {
    v126 = 0;
    v90 = sub_1D1FE2B54();
    v91 = EnergySitePayload.latitude.getter();
    EnergySitePayload.longitude.getter();
    v95 = sub_1D1FE2BB8();
    v203 = v95;
    v92 = type metadata accessor for EKEnergySite(v126);

    v93 = EnergySitePayload.siteName.getter();
    v94 = v38;

    v96 = EnergySitePayload.subscriptionState.getter();
    v97 = v39;
    MEMORY[0x1E69E5928](v95);
    v98 = EnergySitePayload.utilityID.getter();
    v99 = v40;
    v100 = EnergySitePayload.subscriptionID.getter();
    v101 = v41;
    v102 = EnergySitePayload.accessToken.getter();
    v103 = v42;
    v104 = EnergySitePayload.refreshToken.getter();
    v105 = v43;
    v106 = EnergySitePayload.timezone.getter();
    v107 = v44;
    EnergySitePayload.currentRatePlan.getter(v176);
    v45 = *(*(type metadata accessor for EnergySitePayload.CurrentRatePlan(v126) - 8) + 56);
    v127 = 1;
    v45(v176, 0);
    v108 = EnergySitePayload.usagePointCustomIndex.getter();
    v109 = v46;
    v110 = EnergySitePayload.usageSummaryCustomIndex.getter();
    v111 = v47;
    v112 = EnergySitePayload.intervalBlockCustomIndex.getter();
    v113 = v48;
    v114 = EnergySitePayload.ckFunctionToken.getter();
    v115 = v49;
    v116 = EnergySitePayload.accountName.getter();
    v117 = v50;
    v118 = EnergySitePayload.accountNumber.getter();
    v119 = v51;
    v120 = EnergySitePayload.address.getter();
    v121 = v52;
    v122 = EnergySitePayload.serviceLocationID.getter();
    v123 = v53;
    v124 = EnergySitePayload.alternateSupplier.getter();
    v125 = v54;
    EnergySitePayload.accessTokenExpirationDate.getter(v155);
    v128 = sub_1D208C1EC();
    v129 = *(v128 - 8);
    v130 = v128 - 8;
    v131 = *(v129 + 48);
    v132 = v129 + 48;
    if ((v131)(v155, v127) == 1)
    {
      sub_1D1FD6044(v155);
      v55 = sub_1D208BF1C();
      (*(*(v55 - 8) + 56))(v174, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v155, v128);
      v56 = sub_1D208BF1C();
      (*(*(v56 - 8) + 56))(v174, 0, 1);
    }

    EnergySitePayload.utilitySupportedCheckDate.getter(v153);
    if (v131(v153, 1, v128) == 1)
    {
      sub_1D1FD6044(v153);
      v57 = sub_1D208BF1C();
      (*(*(v57 - 8) + 56))(v172, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v153, v128);
      v58 = sub_1D208BF1C();
      (*(*(v58 - 8) + 56))(v172, 0, 1);
    }

    EnergySitePayload.amiLastRefreshDate.getter(v151);
    if (v131(v151, 1, v128) == 1)
    {
      sub_1D1FD6044(v151);
      v59 = sub_1D208BF1C();
      (*(*(v59 - 8) + 56))(v170, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v151, v128);
      v60 = sub_1D208BF1C();
      (*(*(v60 - 8) + 56))(v170, 0, 1);
    }

    v89 = EnergySitePayload.hasExportedEnergy_p.getter();
    EnergySitePayload.usagePointNextRefreshDate.getter(v149);
    if (v131(v149, 1, v128) == 1)
    {
      sub_1D1FD6044(v149);
      v61 = sub_1D208BF1C();
      (*(*(v61 - 8) + 56))(v168, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v149, v128);
      v62 = sub_1D208BF1C();
      (*(*(v62 - 8) + 56))(v168, 0, 1);
    }

    EnergySitePayload.usageSummaryNextRefreshDate.getter(v147);
    if (v131(v147, 1, v128) == 1)
    {
      sub_1D1FD6044(v147);
      v63 = sub_1D208BF1C();
      (*(*(v63 - 8) + 56))(v166, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v147, v128);
      v64 = sub_1D208BF1C();
      (*(*(v64 - 8) + 56))(v166, 0, 1);
    }

    EnergySitePayload.intervalBlockNextRefreshDate.getter(v145);
    if (v131(v145, 1, v128) == 1)
    {
      sub_1D1FD6044(v145);
      v65 = sub_1D208BF1C();
      (*(*(v65 - 8) + 56))(v164, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v145, v128);
      v66 = sub_1D208BF1C();
      (*(*(v66 - 8) + 56))(v164, 0, 1);
    }

    EnergySitePayload.subscriptionCreationDate.getter(v143);
    if (v131(v143, 1, v128) == 1)
    {
      sub_1D1FD6044(v143);
      v67 = sub_1D208BF1C();
      (*(*(v67 - 8) + 56))(v162, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v143, v128);
      v68 = sub_1D208BF1C();
      (*(*(v68 - 8) + 56))(v162, 0, 1);
    }

    EnergySitePayload.subscriptionStartDate.getter(v141);
    if (v131(v141, 1, v128) == 1)
    {
      sub_1D1FD6044(v141);
      v69 = sub_1D208BF1C();
      (*(*(v69 - 8) + 56))(v160, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v141, v128);
      v70 = sub_1D208BF1C();
      (*(*(v70 - 8) + 56))(v160, 0, 1);
    }

    EnergySitePayload.siteTombstone.getter(v139);
    if (v131(v139, 1, v128) == 1)
    {
      sub_1D1FD6044(v139);
      v71 = sub_1D208BF1C();
      (*(*(v71 - 8) + 56))(v158, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v129 + 8))(v139, v128);
      v72 = sub_1D208BF1C();
      (*(*(v72 - 8) + 56))(v158, 0, 1);
    }

    v202 = EnergySitePayload.siteVersion.getter();
    v200 = v202;
    v201 = BYTE4(v202) & 1;
    if ((v202 & 0x100000000) != 0)
    {
      v88 = 3;
    }

    else
    {
      v88 = v200;
    }

    v73 = v170;
    v74 = v172;
    v75 = v174;
    v76 = v125;
    v77 = v124;
    v78 = v123;
    v79 = v122;
    v85 = v88;
    v86 = EnergySitePayload.generationMeters.getter();
    v199 = EnergySitePayload.includeRatePlanInGuidance.getter();
    v83 = v199;
    v84 = BYTE4(v199);
    v82 = sub_1D208C21C();
    v81[0] = *(v82 - 8);
    v81[1] = v82 - 8;
    (*(v81[0] + 16))(v136, v186);
    (*(v81[0] + 56))(v136, 0, 1, v82);
    LODWORD(v198) = v83;
    BYTE4(v198) = v84 & 1;
    v87 = EKEnergySite.__allocating_init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(v179, v180, v93, v94, v181, v182, v96, v97, v95, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v176, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v79, v78, v77, v76, v75, v74, v73, v89 & 1, v168, v166, v164, v162, v160, v158, v85, v86, v198, v136);
    v197 = v87;
    MEMORY[0x1E69E5928](v87);
    v80 = v87;
    *v133 = v87;
    MEMORY[0x1E69E5920](v80);
    MEMORY[0x1E69E5920](v95);
    return sub_1D2028400(v186);
  }

  return result;
}

uint64_t sub_1D208B938(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = type metadata accessor for EnergySitePayload(0);
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));

  return a2;
}

unint64_t sub_1D208BA0C()
{
  v2 = qword_1EC6BF438;
  if (!qword_1EC6BF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF430, &qword_1D2092320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D208BA94()
{
  v2 = qword_1EC6BF440;
  if (!qword_1EC6BF440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF440);
    return WitnessTable;
  }

  return v2;
}