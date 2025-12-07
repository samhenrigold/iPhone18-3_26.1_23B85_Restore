_BYTE *storeEnumTagSinglePayload for StitchablePerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5DAA14()
{
  result = qword_1ECCDF8B0;
  if (!qword_1ECCDF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8B0);
  }

  return result;
}

unint64_t sub_1DD5DAA6C()
{
  result = qword_1ECCDF8B8;
  if (!qword_1ECCDF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8B8);
  }

  return result;
}

unint64_t sub_1DD5DAAC4()
{
  result = qword_1EE1619D8;
  if (!qword_1EE1619D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1619D8);
  }

  return result;
}

unint64_t sub_1DD5DAB1C()
{
  result = qword_1EE1619E0;
  if (!qword_1EE1619E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1619E0);
  }

  return result;
}

unint64_t sub_1DD5DAB74()
{
  result = qword_1EE162740;
  if (!qword_1EE162740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162740);
  }

  return result;
}

unint64_t sub_1DD5DABCC()
{
  result = qword_1EE162748;
  if (!qword_1EE162748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162748);
  }

  return result;
}

uint64_t sub_1DD5DAC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63F5E8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a3, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x1E69CF958])
  {
LABEL_2:
    (*(v6 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v11 != *MEMORY[0x1E69CF948] && v11 != *MEMORY[0x1E69CF950] && v11 != *MEMORY[0x1E69CF940])
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F068);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640378();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD38D000, v14, v15, "unknown ConfirmationResolution variant", v16, 2u);
      MEMORY[0x1E12B3DA0](v16, -1, -1);
    }

    goto LABEL_2;
  }

LABEL_6:

  return OUTLINED_FUNCTION_14_9();
}

uint64_t sub_1DD5DAE88()
{
  v4 = sub_1DD63F4D8();
  OUTLINED_FUNCTION_0();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = OUTLINED_FUNCTION_57_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for StitchedContactData(0);
  OUTLINED_FUNCTION_22_32(v14);
  v15 = type metadata accessor for StitchableInteraction(0);
  v16 = 1;
  OUTLINED_FUNCTION_33_17(v15, v17, v15);
  if (v3 == 1)
  {
    if (*(v0 + *(v2 + 36)))
    {

      sub_1DD63F578();
      v18 = v27;
      (*(v27 + 104))(v1, *MEMORY[0x1E69CF8B0], v4);
      OUTLINED_FUNCTION_11_51();
      v21 = sub_1DD5DED1C(v19, v20, MEMORY[0x1E69CF8C0]);
      v22 = OUTLINED_FUNCTION_23_33(v21);

      v23 = *(v18 + 8);
      v24 = OUTLINED_FUNCTION_14_9();
      v23(v24);
      (v23)(v9, v4);
      v16 = v22 ^ 1;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

BOOL sub_1DD5DB06C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for StitchableInteraction(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for StitchedContactData(0);
  sub_1DD3DD9B4(v0 + *(v10 + 28), v4, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v4);
  if (v17)
  {
    sub_1DD390754(v4, &qword_1ECCDC1B0, &unk_1DD6454F0);
    return 0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_14_9();
    sub_1DD5DA2F8(v12, v13);
    OUTLINED_FUNCTION_34_18();
    v17 = v14 == 0xD000000000000011 && v16 == v15;
    if (v17 || (v11 = 0, (OUTLINED_FUNCTION_26_27(v14) & 1) != 0))
    {
      v11 = *(v9 + *(v5 + 28)) < 5.0;
    }

    OUTLINED_FUNCTION_14_44();
  }

  return v11;
}

uint64_t sub_1DD5DB1C4()
{
  v4 = sub_1DD63F4D8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = OUTLINED_FUNCTION_57_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for StitchedContactData(0);
  OUTLINED_FUNCTION_22_32(v15);
  v16 = type metadata accessor for StitchableInteraction(0);
  OUTLINED_FUNCTION_33_17(v16, v17, v16);
  if (v3 == 1 || *(v0 + *(v2 + 44)) == 1)
  {
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);
    OUTLINED_FUNCTION_34_18();
    v21 = v18 == 0xD000000000000011 && v20 == v19;
    if (v21 || (v22 = OUTLINED_FUNCTION_57_3(), (OUTLINED_FUNCTION_26_27(v22) & 1) != 0) || ((OUTLINED_FUNCTION_34_18(), v18 == 0xD000000000000013) ? (v24 = v23 == v19) : (v24 = 0), v24 || (OUTLINED_FUNCTION_57_3(), (sub_1DD640CD8() & 1) != 0) || !*(v0 + *(v2 + 36))))
    {
      v31 = 0;
    }

    else
    {

      sub_1DD63F578();
      (*(v6 + 104))(v1, *MEMORY[0x1E69CF8B0], v4);
      OUTLINED_FUNCTION_11_51();
      v27 = sub_1DD5DED1C(v25, v26, MEMORY[0x1E69CF8C0]);
      v28 = OUTLINED_FUNCTION_23_33(v27);

      v29 = *(v6 + 8);
      v30 = OUTLINED_FUNCTION_14_9();
      v29(v30);
      (v29)(v10, v4);
      v31 = v28 ^ 1;
    }
  }

  else
  {
    v31 = 1;
  }

  return v31 & 1;
}

uint64_t sub_1DD5DB410()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v37 - v2;
  v48 = type metadata accessor for StitchedContactResolverRecommendation(0);
  OUTLINED_FUNCTION_0();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for StitchedContactResolverRequest(0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  result = type metadata accessor for StitchedContactData(0);
  if (*(v0 + *(result + 48)) != 1)
  {
    return 0;
  }

  v17 = *(v0 + 32);
  v41 = *(v17 + 16);
  if (!v41)
  {
    return 1;
  }

  v18 = 0;
  v19 = *(v9 + 24);
  v42 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v43 = v19;
  v45 = "ndoned";
  v46 = "ssistant_service";
  v39 = v15;
  v40 = v11;
  v38 = v17;
  while (v18 < *(v17 + 16))
  {
    v20 = *(v11 + 72);
    v44 = v18;
    sub_1DD5DE6A4(v42 + v20 * v18, v15, type metadata accessor for StitchedContactResolverRequest);
    v21 = *(v15 + v43);

    result = sub_1DD5DE64C(v15, type metadata accessor for StitchedContactResolverRequest);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v47 = v21 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      while (v23 < *(v21 + 16))
      {
        v24 = v23 + 1;
        sub_1DD5DE6A4(v47 + *(v50 + 72) * v23, v8, type metadata accessor for StitchedContactResolverRecommendation);
        v25 = type metadata accessor for ContactResolverRunTimeData(0);
        sub_1DD3DD9B4(v8 + *(v25 + 40), v3, &qword_1ECCDBEE0, &unk_1DD645510);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
          case 2u:
            sub_1DD390754(v3, &qword_1ECCDBEE0, &unk_1DD645510);
            goto LABEL_11;
          case 3u:
LABEL_11:
            v26 = sub_1DD640CD8();

            if (v26)
            {
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_15_49();
            goto LABEL_19;
          default:
            sub_1DD390754(v3, &qword_1ECCDBEE0, &unk_1DD645510);

LABEL_12:
            v27 = *(v8 + *(v25 + 48));
            v28 = *(v8 + *(v48 + 20) + 24);
            v29 = OUTLINED_FUNCTION_32_20();
            sub_1DD458BE0(v29, v30, v31, v32);
            result = OUTLINED_FUNCTION_15_49();
            if (v28 != 255)
            {
              v33 = OUTLINED_FUNCTION_32_20();
              result = sub_1DD3E6340(v33, v34, v35, v36);
              if (!v27)
              {
LABEL_19:

                return 0;
              }
            }

            v23 = v24;
            if (v22 == v24)
            {
              goto LABEL_15;
            }

            break;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    v18 = v44 + 1;

    result = 1;
    v11 = v40;
    v17 = v38;
    v15 = v39;
    if (v18 == v41)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD5DB828(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50[-v9 - 8];
  v11 = type metadata accessor for StitchableInteraction(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_66();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50[-v14 - 8];
  v16 = type metadata accessor for StitchedContactData(0);
  if (*(v1 + *(v16 + 48)))
  {
    return 2;
  }

  sub_1DD3DD9B4(v1 + *(v16 + 28), v10, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v10);
  if (v18)
  {
    v17 = v10;
LABEL_8:
    sub_1DD390754(v17, &qword_1ECCDC1B0, &unk_1DD6454F0);
    return 2;
  }

  sub_1DD5DA2F8(v10, v15);
  sub_1DD3DD9B4(a1, v7, &qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_36_16(v7);
  if (v18)
  {
    OUTLINED_FUNCTION_14_44();
    v17 = v7;
    goto LABEL_8;
  }

  sub_1DD5DA2F8(v7, v2);
  v19 = *v15;
  v20 = v15[1];
  OUTLINED_FUNCTION_34_18();
  v22 = v19 == 0xD000000000000011 && v21 == v20;
  if (!v22 && (OUTLINED_FUNCTION_26_27(v19) & 1) == 0 || (v19 == *v2 ? (v23 = v20 == v2[1]) : (v23 = 0), !v23 && (sub_1DD640CD8() & 1) == 0 || (sub_1DD63CF88(), v25 = v24, v24 >= 30.0) || (*(v2 + v11[8]) & 1) != 0 || (v26 = *(v15 + v11[9]), *(v26 + 16) != 1) || (memcpy(__dst, (v26 + 32), sizeof(__dst)), v27 = *(v2 + v11[9]), *(v27 + 16) != 1)))
  {
    sub_1DD5DE64C(v2, type metadata accessor for StitchableInteraction);
    sub_1DD5DE64C(v15, type metadata accessor for StitchableInteraction);
    return 2;
  }

  v28 = __dst[0];
  v29 = __dst[1];
  memcpy(v52, (v27 + 32), 0x50uLL);
  v30 = v52[0];
  v31 = v52[1];
  KeyPath = swift_getKeyPath();
  sub_1DD3E6404(__dst, v50);
  sub_1DD3E6404(v52, v50);
  v49 = sub_1DD5DBD90(KeyPath, __dst, v52);

  v33 = swift_getKeyPath();
  v34 = sub_1DD5DBD90(v33, __dst, v52);

  v35 = swift_getKeyPath();
  v36 = sub_1DD5DBD90(v35, __dst, v52);

  if (v28 == v30 && v29 == v31)
  {
    v38 = 0x1000000;
  }

  else if (sub_1DD640CD8())
  {
    v38 = 0x1000000;
  }

  else
  {
    v38 = 0;
  }

  v40 = v52[3];
  if (__dst[3])
  {
    if (v52[3])
    {
      v41 = 0x100000000;
      v42 = __dst[2] == v52[2] && __dst[3] == v52[3];
      if (!v42 && (sub_1DD640CD8() & 1) == 0)
      {
        v41 = 0;
      }

      sub_1DD3E6460(v52);
      sub_1DD3E6460(__dst);
    }

    else
    {

      sub_1DD3E6460(v52);
      sub_1DD3E6460(__dst);
      v41 = 0;
    }

    goto LABEL_45;
  }

  sub_1DD3E6460(v52);
  result = sub_1DD3E6460(__dst);
  if (v40)
  {
    v41 = 0;
LABEL_45:

    goto LABEL_46;
  }

  v41 = 0x100000000;
LABEL_46:
  v43 = *(v2 + v11[7]);
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  result = sub_1DD55D7D8(v43);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_1DD55D7D8(v25);
  sub_1DD5DE64C(v2, type metadata accessor for StitchableInteraction);
  sub_1DD5DE64C(v15, type metadata accessor for StitchableInteraction);
  v46 = 256;
  if ((v34 & 1) == 0)
  {
    v46 = 0;
  }

  v47 = v46 & 0xFFFFFFFFFFFFFFFELL | v49 & 1;
  v48 = 0x10000;
  if ((v36 & 1) == 0)
  {
    v48 = 0;
  }

  return v47 | v48 | v38 | v41 | (v44 << 40) | (v45 << 48);
}

uint64_t sub_1DD5DBD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    v7 = 1;
    if (*(a3 + 40) == 1)
    {
      goto LABEL_8;
    }

LABEL_7:

    swift_getAtKeyPath();

    v5 = v15;
    v7 = v16;
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    if (v16 != 1)
    {
      if (v6)
      {
        if (!v16)
        {
          sub_1DD3EB430(v15, 0);
          goto LABEL_10;
        }

        if (v4 != v15 || v6 != v16)
        {
          v10 = sub_1DD640CD8();
          sub_1DD3EB430(v15, v16);
          sub_1DD3EB430(v4, v6);
          return v10 & 1;
        }

        sub_1DD3EB430(v4, v6);
        v13 = v4;
        v14 = v6;
      }

      else
      {
        if (v16)
        {
          sub_1DD3EB430(v15, v16);
          v8 = v4;
          v9 = 0;
          goto LABEL_11;
        }

        v13 = v4;
        v14 = 0;
      }

      sub_1DD3EB430(v13, v14);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    v8 = v4;
    v9 = v6;
    goto LABEL_11;
  }

  swift_getAtKeyPath();

  v4 = v15;
  v6 = v16;
  if (*(a3 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (v16 != 1)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v7 = 1;
LABEL_8:
  v8 = v5;
  v9 = v7;
LABEL_11:
  sub_1DD3EB430(v8, v9);
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1DD5DBFBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374736575716572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x80000001DD66C940 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6552746E65746E69 && a2 == 0xEC000000746C7573;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7475636578457369 && a2 == 0xEA00000000006465;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x486B636975517369 && a2 == 0xED00007075676E61;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365636375537369 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x80000001DD674770 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1DD640CD8();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1DD5DC2F8(char a1)
{
  result = 0x64496B736174;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0x7374736575716572;
      break;
    case 3:
      result = 0x7463617265746E69;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0x6552746E65746E69;
      break;
    case 6:
      result = 0x7475636578457369;
      break;
    case 7:
      result = 0x486B636975517369;
      break;
    case 8:
      result = 0x7365636375537369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DC444()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8C8, &qword_1DD661B68);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  v2 = sub_1DD5DEC14();
  OUTLINED_FUNCTION_59_4(&type metadata for StitchedContactData.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_32();
  sub_1DD640C18();
  if (!v0)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8D0, &qword_1DD661B70);
    sub_1DD5DEC68();
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
    type metadata accessor for StitchedContactData(0);
    type metadata accessor for StitchableInteraction(0);
    sub_1DD5DED1C(&qword_1EE1619D0, type metadata accessor for StitchableInteraction, &unk_1DD6614FC);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C08();
    sub_1DD45A940();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
    sub_1DD63F588();
    sub_1DD5DED1C(&qword_1EE160350, MEMORY[0x1E69CF918], MEMORY[0x1E69CF920]);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C08();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  v4 = OUTLINED_FUNCTION_16_50();
  return v5(v4);
}

uint64_t sub_1DD5DC77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD5DC890(char a1)
{
  if (!a1)
  {
    return 0x6769666E6F63;
  }

  if (a1 == 1)
  {
    return 1702125924;
  }

  return 0x6E656D6D6F636572;
}

uint64_t sub_1DD5DC8E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF930, &qword_1DD661B98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  v2 = sub_1DD5DEFC0();
  OUTLINED_FUNCTION_59_4(&type metadata for StitchedContactResolverRequest.CodingKeys, v3, v2);
  type metadata accessor for PrivatizedContactResolverConfig(0);
  sub_1DD5DED1C(&qword_1EE163CC8, type metadata accessor for PrivatizedContactResolverConfig, &unk_1DD64B7BC);
  OUTLINED_FUNCTION_3_92();
  sub_1DD640C68();
  if (!v0)
  {
    type metadata accessor for StitchedContactResolverRequest(0);
    sub_1DD63D078();
    sub_1DD5DED1C(&unk_1EE165CD0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF938, &qword_1DD661BA0);
    sub_1DD5DF014();
    OUTLINED_FUNCTION_3_92();
    sub_1DD640C68();
  }

  v4 = OUTLINED_FUNCTION_16_50();
  return v5(v4);
}

uint64_t sub_1DD5DCAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DBFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DCB1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD5DC2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD5DCB44(uint64_t a1)
{
  v2 = sub_1DD5DEC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DCB80(uint64_t a1)
{
  v2 = sub_1DD5DEC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DCBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DC77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DCC04(uint64_t a1)
{
  v2 = sub_1DD5DEFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DCC40(uint64_t a1)
{
  v2 = sub_1DD5DEFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DCC94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44656D69546E7572 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F725072657375 && a2 == 0xEA00000000007470)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD5DCD68(char a1)
{
  if (a1)
  {
    return 0x6D6F725072657375;
  }

  else
  {
    return 0x44656D69546E7572;
  }
}

uint64_t sub_1DD5DCDAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF940, &qword_1DD661BA8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  v2 = sub_1DD5DF0C8();
  OUTLINED_FUNCTION_59_4(&type metadata for StitchedContactResolverRecommendation.CodingKeys, v3, v2);
  type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD5DED1C(&qword_1EE163E00, type metadata accessor for ContactResolverRunTimeData, &unk_1DD64C0F8);
  OUTLINED_FUNCTION_3_92();
  sub_1DD640C68();
  if (!v0)
  {
    type metadata accessor for StitchedContactResolverRecommendation(0);
    sub_1DD45A898();
    sub_1DD640C08();
  }

  v4 = OUTLINED_FUNCTION_16_50();
  return v5(v4);
}

unint64_t sub_1DD5DCF48(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD5DCF94(char a1)
{
  result = 6775156;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6974756C6F736572;
      break;
    case 3:
      result = 7562345;
      break;
    case 4:
      result = 0x64657463656C6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DD028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DCC94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DD050(uint64_t a1)
{
  v2 = sub_1DD5DF0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DD08C(uint64_t a1)
{
  v2 = sub_1DD5DF0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD5DD104@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD5DCF48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD5DD134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5DCF94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD5DD168@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD5DCF48(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD5DD19C(uint64_t a1)
{
  v2 = sub_1DD5DED64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DD1D8(uint64_t a1)
{
  v2 = sub_1DD5DED64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5DD214(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8D8, &qword_1DD661B78);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DED64();
  sub_1DD640EF8();
  if (a5)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    if (!v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD5DEEBC(&qword_1EE1638D0);
      OUTLINED_FUNCTION_3_92();
      sub_1DD640C68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD5DEDB8(&qword_1ECCDF8E8);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_20();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    if (!v5)
    {
      OUTLINED_FUNCTION_32();
      sub_1DD640C18();
      sub_1DD5DEE14();
LABEL_6:
      OUTLINED_FUNCTION_32();
      sub_1DD640C68();
    }
  }

  return (*(v11 + 8))(v6, v9);
}

uint64_t sub_1DD5DD4F4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8F8, &qword_1DD661B80);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = sub_1DD5DED64();
  OUTLINED_FUNCTION_24_24(&type metadata for StitchedContactUserPrompt.Keys, v6, v5);
  if (!v1)
  {
    LOBYTE(v22) = 0;
    OUTLINED_FUNCTION_0_103();
    v4 = sub_1DD640B28();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_30_20();
    v11 = v4 == v9 && v8 == v10;
    if (v11 || (OUTLINED_FUNCTION_25_24(v9, v10) & 1) != 0)
    {

      OUTLINED_FUNCTION_0_103();
      v4 = sub_1DD640B28();
      sub_1DD5DEF18();
      sub_1DD640B78();
      v16 = OUTLINED_FUNCTION_67();
      v17(v16);
    }

    else
    {
      v15 = v4 == 0xD000000000000015 && 0x80000001DD668B10 == v8;
      if (v15 || (OUTLINED_FUNCTION_25_24(0xD000000000000015, 0x80000001DD668B10) & 1) != 0 || (v4 == 0xD000000000000014 ? (v18 = 0x80000001DD668B30 == v8) : (v18 = 0), v18 || (OUTLINED_FUNCTION_25_24(0xD000000000000014, 0x80000001DD668B30) & 1) != 0))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        OUTLINED_FUNCTION_18_38(&qword_1EE160268, MEMORY[0x1E69E6190]);
        OUTLINED_FUNCTION_2_108();
        v4 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
        OUTLINED_FUNCTION_17_40(&qword_1ECCDF908, MEMORY[0x1E69E6190]);
        OUTLINED_FUNCTION_2_108();
        v20 = OUTLINED_FUNCTION_67();
        v21(v20);
      }

      else
      {
        sub_1DD5DEE68();
        swift_allocError();
        *v19 = v4;
        v19[1] = v8;
        swift_willThrow();
        v12 = OUTLINED_FUNCTION_67();
        v13(v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_1DD5DD8E4(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD5DD930(char a1)
{
  result = 0x656D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x64657463656A6572;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x7465736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DD9B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD5DD4F4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_1DD5DDA2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD5DD8E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD5DDA5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5DD930(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD5DDB40(unint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (((a1 >> 8) & 1) != ((a2 >> 8) & 1) || ((a1 ^ a2) & 1) != 0 || ((a1 >> 16) & 1) != ((a2 >> 16) & 1) || ((a1 >> 24) & 1) != ((a2 >> 24) & 1) || (BYTE4(a1) & 1) != (BYTE4(a2) & 1))
  {
    return v2;
  }

  v3 = a2 & 0xFF0000000000;
  v4 = 0xA0000000000;
  if ((a1 & 0xFF0000000000) != 0xA0000000000)
  {
    if (v3 == 0xA0000000000)
    {
      return 0;
    }

    v3 = qword_1DD6622D0[(a1 << 16) >> 56];
    v4 = qword_1DD6622D0[(a2 << 16) >> 56];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v5 = a2 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0xA000000000000)
  {
    if (v5 != 0xA000000000000)
    {
      return 0;
    }
  }

  else if (v5 == 0xA000000000000 || qword_1DD6622D0[(a1 << 8) >> 56] != qword_1DD6622D0[(a2 << 8) >> 56])
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD5DDC1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000026 && 0x80000001DD674790 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000027 && 0x80000001DD6747C0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000028 && 0x80000001DD6747F0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001DD674820 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000028 && 0x80000001DD674840 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001DD66C920 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001CLL && 0x80000001DD674870 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD5DDE48(char a1)
{
  result = 0xD000000000000026;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
    case 4:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5DDF00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF928, &qword_1DD661B90);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_46();
  v2 = sub_1DD5DEF6C();
  OUTLINED_FUNCTION_59_4(&type metadata for PotentialRetryInteractionInfo.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v0)
  {
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    sub_1DD45A8EC();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
  }

  v4 = OUTLINED_FUNCTION_16_50();
  return v5(v4);
}

uint64_t sub_1DD5DE0EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF918, &qword_1DD661B88);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DD5DEF6C();
  OUTLINED_FUNCTION_24_24(&type metadata for PotentialRetryInteractionInfo.CodingKeys, v10, v9);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  OUTLINED_FUNCTION_0_103();
  v11 = sub_1DD640B38();
  v31 = 1;
  OUTLINED_FUNCTION_0_103();
  v12 = sub_1DD640B38();
  v30 = 2;
  OUTLINED_FUNCTION_0_103();
  v13 = sub_1DD640B38();
  v29 = 3;
  OUTLINED_FUNCTION_0_103();
  v23 = sub_1DD640B38();
  v28 = 4;
  OUTLINED_FUNCTION_0_103();
  v21 = sub_1DD640B38();
  v26 = 5;
  v22 = sub_1DD45AC80();
  sub_1DD640B18();
  v20 = v27;
  v24 = 6;
  sub_1DD640B18();
  (*(v5 + 8))(v8, v3);
  v15 = v25;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = 0x100000000;
  if ((v21 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x1000000;
  if ((v23 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x10000;
  if ((v13 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 256;
  if ((v12 & 1) == 0)
  {
    v19 = 0;
  }

  return (v20 << 40) | (v15 << 48) | v11 & 1 | v19 | v18 | v17 | v16;
}

uint64_t sub_1DD5DE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5DDC1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5DE3C8(uint64_t a1)
{
  v2 = sub_1DD5DEF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5DE404(uint64_t a1)
{
  v2 = sub_1DD5DEF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

int8x8_t sub_1DD5DE440@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD5DE0EC(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1DD661840), vshlq_u64(v6, xmmword_1DD661830))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a2 + 1) = result.i32[0];
    *(a2 + 5) = BYTE5(v4);
    *(a2 + 6) = BYTE6(v4);
  }

  return result;
}

uint64_t sub_1DD5DE530(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (a1[4])
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  v16 = v5 == 0;
  v17 = 0x1000000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x1000000;
  }

  v16 = v4 == 0;
  v19 = 0x10000;
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x10000;
  }

  v16 = v3 == 0;
  v21 = 256;
  if (v16)
  {
    v22 = 0;
  }

  else
  {
    v22 = 256;
  }

  v23 = v22 | v2 | v20 | v18 | v15 | (v6 << 40) | (v7 << 48);
  if (v12)
  {
    v24 = 0x100000000;
  }

  else
  {
    v24 = 0;
  }

  if (!v11)
  {
    v17 = 0;
  }

  if (!v10)
  {
    v19 = 0;
  }

  if (!v9)
  {
    v21 = 0;
  }

  return sub_1DD5DDB40(v23, v21 | v8 | v19 | v17 | v24 | (v13 << 40) | (v14 << 48));
}

uint64_t sub_1DD5DE64C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5DE6A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5DE710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5DE750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PotentialRetryInteractionInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[7])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PotentialRetryInteractionInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1DD5DE888(uint64_t a1)
{
  type metadata accessor for PrivatizedContactResolverConfig(319);
  if (v1 <= 0x3F)
  {
    sub_1DD63D078();
    if (v2 <= 0x3F)
    {
      sub_1DD5DEBB0(319, &qword_1EE160298, type metadata accessor for StitchedContactResolverRecommendation, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD5DE97C(uint64_t a1)
{
  type metadata accessor for ContactResolverRunTimeData(319);
  if (v1 <= 0x3F)
  {
    sub_1DD3EBBE4(319, &qword_1EE1613B0, &type metadata for StitchedContactUserPrompt);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5DEA38(uint64_t a1)
{
  sub_1DD5DEBB0(319, &qword_1EE1602B0, type metadata accessor for StitchedContactResolverRequest, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DD5DEBB0(319, qword_1EE161980, type metadata accessor for StitchableInteraction, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD3EBBE4(319, &qword_1EE160CD0, &type metadata for PotentialRetryInteractionInfo);
      if (v3 <= 0x3F)
      {
        sub_1DD5DEBB0(319, &qword_1EE160348, MEMORY[0x1E69CF918], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD5DEBB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DD5DEC14()
{
  result = qword_1EE162088[0];
  if (!qword_1EE162088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162088);
  }

  return result;
}

unint64_t sub_1DD5DEC68()
{
  result = qword_1EE1602A8;
  if (!qword_1EE1602A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF8D0, &qword_1DD661B70);
    sub_1DD5DED1C(&qword_1EE160A88, type metadata accessor for StitchedContactResolverRequest, &unk_1DD661A4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1602A8);
  }

  return result;
}

uint64_t sub_1DD5DED1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD5DED64()
{
  result = qword_1ECCDF8E0;
  if (!qword_1ECCDF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8E0);
  }

  return result;
}

uint64_t sub_1DD5DEDB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFDF0, &unk_1DD644950);
    result = OUTLINED_FUNCTION_35_16(v3);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DEE14()
{
  result = qword_1ECCDF8F0;
  if (!qword_1ECCDF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF8F0);
  }

  return result;
}

unint64_t sub_1DD5DEE68()
{
  result = qword_1ECCDF900;
  if (!qword_1ECCDF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF900);
  }

  return result;
}

uint64_t sub_1DD5DEEBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = OUTLINED_FUNCTION_35_16(v3);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DEF18()
{
  result = qword_1ECCDF910;
  if (!qword_1ECCDF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF910);
  }

  return result;
}

unint64_t sub_1DD5DEF6C()
{
  result = qword_1ECCDF920;
  if (!qword_1ECCDF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF920);
  }

  return result;
}

unint64_t sub_1DD5DEFC0()
{
  result = qword_1EE160AA0;
  if (!qword_1EE160AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160AA0);
  }

  return result;
}

unint64_t sub_1DD5DF014()
{
  result = qword_1EE160290;
  if (!qword_1EE160290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF938, &qword_1DD661BA0);
    sub_1DD5DED1C(&qword_1EE160690, type metadata accessor for StitchedContactResolverRecommendation, &unk_1DD661A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160290);
  }

  return result;
}

unint64_t sub_1DD5DF0C8()
{
  result = qword_1EE1606A8[0];
  if (!qword_1EE1606A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1606A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactResolverRecommendation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactResolverRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PotentialRetryInteractionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactUserPrompt.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchedContactConfirmationResolution(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5DF658()
{
  result = qword_1ECCDF948;
  if (!qword_1ECCDF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF948);
  }

  return result;
}

unint64_t sub_1DD5DF6B0()
{
  result = qword_1ECCDF950;
  if (!qword_1ECCDF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF950);
  }

  return result;
}

unint64_t sub_1DD5DF708()
{
  result = qword_1ECCDF958;
  if (!qword_1ECCDF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF958);
  }

  return result;
}

unint64_t sub_1DD5DF760()
{
  result = qword_1ECCDF960;
  if (!qword_1ECCDF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF960);
  }

  return result;
}

unint64_t sub_1DD5DF7B8()
{
  result = qword_1ECCDF968;
  if (!qword_1ECCDF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF968);
  }

  return result;
}

unint64_t sub_1DD5DF810()
{
  result = qword_1ECCDF970;
  if (!qword_1ECCDF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF970);
  }

  return result;
}

unint64_t sub_1DD5DF868()
{
  result = qword_1EE160698;
  if (!qword_1EE160698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160698);
  }

  return result;
}

unint64_t sub_1DD5DF8C0()
{
  result = qword_1EE1606A0;
  if (!qword_1EE1606A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1606A0);
  }

  return result;
}

unint64_t sub_1DD5DF918()
{
  result = qword_1EE160A90;
  if (!qword_1EE160A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160A90);
  }

  return result;
}

unint64_t sub_1DD5DF970()
{
  result = qword_1EE160A98;
  if (!qword_1EE160A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160A98);
  }

  return result;
}

unint64_t sub_1DD5DF9C8()
{
  result = qword_1ECCDF978;
  if (!qword_1ECCDF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF978);
  }

  return result;
}

unint64_t sub_1DD5DFA20()
{
  result = qword_1ECCDF980;
  if (!qword_1ECCDF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF980);
  }

  return result;
}

unint64_t sub_1DD5DFA78()
{
  result = qword_1ECCDF988;
  if (!qword_1ECCDF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF988);
  }

  return result;
}

unint64_t sub_1DD5DFAD0()
{
  result = qword_1ECCDF990;
  if (!qword_1ECCDF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF990);
  }

  return result;
}

unint64_t sub_1DD5DFB28()
{
  result = qword_1EE162078;
  if (!qword_1EE162078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162078);
  }

  return result;
}

unint64_t sub_1DD5DFB80()
{
  result = qword_1EE162080;
  if (!qword_1EE162080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162080);
  }

  return result;
}

unint64_t sub_1DD5DFBD4()
{
  result = qword_1ECCDF998[0];
  if (!qword_1ECCDF998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCDF998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_44()
{

  return sub_1DD5DE64C(v0, type metadata accessor for StitchableInteraction);
}

uint64_t OUTLINED_FUNCTION_22_32(uint64_t a1)
{
  v6 = v1 + *(a1 + 28);

  return sub_1DD3DD9B4(v6, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640ED8();
}

uint64_t OUTLINED_FUNCTION_26_27(uint64_t a1)
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_33_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_getEnumTagSinglePayload(v5, 1, a3);

  return sub_1DD390754(v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_35_16(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1DD5DFDB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DD42B518(0, v2, 0);
    v3 = v26;
    v5 = (a1 + 32);
    do
    {
      memcpy(__dst, v5, 0x4AuLL);
      v6 = __dst[7];
      v7 = __dst[8];
      v8 = HIBYTE(__dst[8]) & 0xFLL;
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v8 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = *a2;
        if (!*(*a2 + 16))
        {
          sub_1DD3C6A40(__dst, v24);
LABEL_12:
          sub_1DD5E13F8();
          v14 = v13;
          v16 = v15;

          swift_isUniquelyReferenced_nonNull_native();
          v24[0] = *a2;
          sub_1DD3FFBC0();
          *a2 = v24[0];
          sub_1DD3C6A9C(__dst);
          v6 = v14;
          v7 = v16;
          goto LABEL_13;
        }

        sub_1DD3C6A40(__dst, v24);
        v10 = sub_1DD3978DC();
        if ((v11 & 1) == 0)
        {
          goto LABEL_12;
        }

        v12 = (*(v9 + 56) + 16 * v10);
        v6 = *v12;
        v7 = v12[1];
      }

      else
      {
        sub_1DD3C6A40(__dst, v24);
      }

      sub_1DD3C6A9C(__dst);
LABEL_13:
      v17 = __dst[2];
      *v23 = v24[0];
      *&v23[3] = *(v24 + 3);
      v26 = v3;
      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B518(v18 > 1, v19 + 1, 1);
        v3 = v26;
      }

      *(v3 + 16) = v19 + 1;
      v20 = v3 + 80 * v19;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0xE000000000000000;
      *(v20 + 48) = v17;
      *(v20 + 49) = *v23;
      *(v20 + 52) = *&v23[3];
      *(v20 + 56) = 0;
      *(v20 + 64) = 0xE000000000000000;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0xE000000000000000;
      *(v20 + 88) = v6;
      *(v20 + 96) = v7;
      *(v20 + 104) = 512;
      v5 += 80;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DD5DFFC0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Contact(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v44 = *(a1 + 16);
  v45 = v2;
  v47 = MEMORY[0x1E69E7CC0];
  v39 = a2;
  sub_1DD42B5EC(0, v9, 0);
  v11 = v39;
  v12 = v47;
  v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = (a1 + v42);
  v41 = *(v6 + 72);
  v40 = sub_1DD63CBB8();
  v38 = v5;
  do
  {
    v43 = v12;
    v8[16] = 2;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0xE000000000000000;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0xE000000000000000;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 9) = 0;
    *(v8 + 10) = 0xE000000000000000;
    *(v8 + 11) = 0;
    *(v8 + 12) = 0xE000000000000000;
    *(v8 + 13) = 0;
    *(v8 + 14) = 0xE000000000000000;
    *(v8 + 15) = 0;
    *(v8 + 16) = 0xE000000000000000;
    *(v8 + 17) = 0;
    *(v8 + 18) = 0xE000000000000000;
    *(v8 + 19) = 0;
    *(v8 + 20) = 0xE000000000000000;
    *(v8 + 21) = 0;
    *(v8 + 22) = 0xE000000000000000;
    *(v8 + 23) = 0;
    *(v8 + 24) = 0xE000000000000000;
    *(v8 + 25) = 0;
    *(v8 + 26) = 0xE000000000000000;
    *(v8 + 27) = v10;
    __swift_storeEnumTagSinglePayload(&v8[v5[19]], 1, 1, v40);
    v8[v5[21]] = 0;
    v14 = &v8[v5[22]];
    *v14 = 0;
    *(v14 + 1) = 0;
    v8[v5[23]] = 2;
    v15 = &v8[v5[24]];
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v17 = *v13;
    v16 = v13[1];
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = *v11;
      if (*(*v11 + 16) && (v20 = sub_1DD3978DC(), (v21 & 1) != 0))
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v17 = *v22;
        v16 = v22[1];

        v11 = v39;
      }

      else
      {
        sub_1DD5E13F8();
        v24 = v23;
        v26 = v25;

        v11 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        v46 = *v11;
        sub_1DD3FFBC0();
        *v11 = v46;
        v17 = v24;
        v5 = v38;
        v16 = v26;
      }
    }

    else
    {
    }

    v27 = v5[20];
    *v8 = v17;
    *(v8 + 1) = v16;
    v28 = (v13 + v5[22]);
    v30 = *v28;
    v29 = v28[1];

    *v14 = v30;
    *(v14 + 1) = v29;
    v31 = v45;
    v32 = sub_1DD5DFDB8(*(v13 + v5[20]), v11);
    v45 = v31;
    *&v8[v27] = v32;
    v12 = v43;
    v47 = v43;
    v34 = *(v43 + 16);
    v33 = *(v43 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1DD42B5EC(v33 > 1, v34 + 1, 1);
      v11 = v39;
      v12 = v47;
    }

    *(v12 + 16) = v34 + 1;
    v35 = v41;
    sub_1DD3C95D4(v8, v12 + v42 + v34 * v41);
    v13 = (v13 + v35);
    --v44;
    v10 = MEMORY[0x1E69E7CC0];
  }

  while (v44);
  return v12;
}

void sub_1DD5E02F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1DD42C0EC(0, v2, 0);
  for (i = (a1 + 72); ; i += 6)
  {
    v38 = *(i - 40);
    v5 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = *a2;
      v12 = *(*a2 + 16);

      if (v12 && (v13 = sub_1DD3978DC(), (v14 & 1) != 0))
      {
        v15 = (*(v11 + 56) + 16 * v13);
        v5 = *v15;
        v36 = v15[1];
      }

      else
      {
        sub_1DD5E13F8();
        v35 = v2;
        v5 = v16;
        v18 = v17;

        swift_isUniquelyReferenced_nonNull_native();
        v40 = *a2;
        v36 = v18;
        v2 = v35;
        sub_1DD3FFBC0();
        *a2 = v40;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v36 = v6;
    }

    v19 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v19 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v5;
    if (v19)
    {
      v20 = *a2;
      if (*(*a2 + 16) && (v21 = sub_1DD3978DC(), (v22 & 1) != 0))
      {
        v23 = (*(v20 + 56) + 16 * v21);
        v8 = *v23;
        v24 = v23[1];
      }

      else
      {
        sub_1DD5E13F8();
        v26 = v25;
        v24 = v27;

        swift_isUniquelyReferenced_nonNull_native();
        v41 = *a2;
        sub_1DD3FFBC0();
        *a2 = v41;
        v8 = v26;
      }
    }

    else
    {

      v24 = v7;
    }

    if (v9 != 0.0)
    {
      break;
    }

LABEL_30:
    v33 = *(v42 + 16);
    v32 = *(v42 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1DD42C0EC(v32 > 1, v33 + 1, 1);
    }

    *(v42 + 16) = v33 + 1;
    v34 = v42 + 48 * v33;
    *(v34 + 32) = v38;
    *(v34 + 40) = v37;
    *(v34 + 48) = v36;
    *(v34 + 56) = v8;
    *(v34 + 64) = v24;
    *(v34 + 72) = v9;
    if (!--v2)
    {
      return;
    }
  }

  v28 = log10(fabs(v9));
  v29 = v28;
  if (v28 >= 0.0)
  {
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    v30 = -1.0;
    if (v28 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v28 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    v30 = -2.0;
    if (v28 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

LABEL_29:

    v31 = __exp10(v30 + v29);
    v9 = v31 * round(v9 / v31);
    goto LABEL_30;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1DD5E0680(uint64_t a1, void *a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v29 - v6);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v29 = v2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v8, 0);
    v9 = v36;
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = a1 + v10;
    v32 = *(v5 + 72);
    v30 = v10;
    do
    {
      sub_1DD3DD9B4(v11, v7, &qword_1ECCDBBD8, &unk_1DD645A90);
      memcpy(__dst, v7, 0x4AuLL);
      v12 = __dst[7];
      v13 = __dst[8];
      v14 = HIBYTE(__dst[8]) & 0xFLL;
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v14 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = *v33;
        if (!*(*v33 + 16))
        {
          sub_1DD3C6A40(__dst, v34);
LABEL_12:
          sub_1DD5E13F8();
          v20 = v19;
          v22 = v21;

          v31 = v9;
          v23 = v33;
          swift_isUniquelyReferenced_nonNull_native();
          v34[0] = *v23;
          sub_1DD3FFBC0();
          *v23 = v34[0];
          v9 = v31;
          sub_1DD3C6A9C(__dst);
          v12 = v20;
          v10 = v30;
          v13 = v22;
          goto LABEL_13;
        }

        sub_1DD3C6A40(__dst, v34);
        v16 = sub_1DD3978DC();
        if ((v17 & 1) == 0)
        {
          goto LABEL_12;
        }

        v18 = (*(v15 + 56) + 16 * v16);
        v12 = *v18;
        v13 = v18[1];
      }

      else
      {
        sub_1DD3C6A40(__dst, v34);
      }

      sub_1DD3C6A9C(__dst);
LABEL_13:
      v24 = __dst[2];
      memcpy(v34, v7, 0x4AuLL);
      sub_1DD3C6A9C(v34);
      *v7 = 0;
      v7[1] = 0xE000000000000000;
      *(v7 + 16) = v24;
      v7[3] = 0;
      v7[4] = 0xE000000000000000;
      v7[5] = 0;
      v7[6] = 0xE000000000000000;
      v7[7] = v12;
      v7[8] = v13;
      *(v7 + 36) = 512;
      v26 = *(v9 + 16);
      v25 = *(v9 + 24);
      v36 = v9;
      if (v26 >= v25 >> 1)
      {
        sub_1DD42B5CC((v25 > 1), v26 + 1, 1);
        v9 = v36;
      }

      *(v9 + 16) = v26 + 1;
      v27 = v32;
      sub_1DD3CD2CC(v7, v9 + v10 + v26 * v32);
      v11 += v27;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1DD5E096C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1DD42C10C(0, v2, 0);
    v3 = v60;
    for (i = (a1 + 106); ; i += 11)
    {
      memcpy(__dst, i - 74, sizeof(__dst));
      v47[0] = *(i - 57);
      *(v47 + 3) = *(i - 54);
      v6 = __dst[7];
      v7 = __dst[8];
      v8 = *i;
      *&v46[6] = *(i + 6);
      *v46 = v8;
      v61 = __dst[0];
      v49[0] = __dst[0];
      v49[1] = __dst[1];
      v31 = __dst[1];
      v30 = __dst[2];
      v50 = __dst[2];
      *v51 = *(i - 57);
      *&v51[3] = *(i - 54);
      v28 = __dst[4];
      v29 = __dst[3];
      v52 = __dst[3];
      v53 = __dst[4];
      v26 = __dst[6];
      v27 = __dst[5];
      v54 = __dst[5];
      v55 = __dst[6];
      v56 = __dst[7];
      v57 = __dst[8];
      v9 = HIBYTE(__dst[8]) & 0xFLL;
      v24 = BYTE1(__dst[9]);
      v25 = __dst[9];
      v58 = __dst[9];
      if ((__dst[8] & 0x2000000000000000) == 0)
      {
        v9 = __dst[7] & 0xFFFFFFFFFFFFLL;
      }

      v59 = BYTE1(__dst[9]);
      if (v9)
      {
        break;
      }

      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v49, v34);

      sub_1DD3C6A9C(v49);
      v14 = v6;
      v15 = v7;
LABEL_13:
      v18 = v50;
      v34[0] = v61;
      v34[1] = v31;
      v35 = v30;
      *v36 = v47[0];
      *&v36[3] = *(v47 + 3);
      v37 = v29;
      v38 = v28;
      v39 = v27;
      v40 = v26;
      v41 = v6;
      v42 = v7;
      v43 = v25;
      v44 = v24;
      sub_1DD3C6A9C(v34);
      sub_1DD5E15E4(__dst);
      v47[0] = *v45;
      *(v47 + 3) = *&v45[3];
      *v33 = *v45;
      *&v33[3] = *&v45[3];
      *v32 = *v46;
      *&v32[6] = *&v46[6];
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      v60 = v3;
      if (v20 >= v19 >> 1)
      {
        sub_1DD42C10C(v19 > 1, v20 + 1, 1);
        v3 = v60;
      }

      *(v3 + 16) = v20 + 1;
      v21 = v3 + 88 * v20;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      *(v21 + 48) = v18;
      *(v21 + 49) = *v33;
      *(v21 + 52) = *&v33[3];
      *(v21 + 56) = 0;
      *(v21 + 64) = 0xE000000000000000;
      *(v21 + 72) = 0;
      *(v21 + 80) = 0xE000000000000000;
      *(v21 + 88) = v14;
      *(v21 + 96) = v15;
      *(v21 + 104) = 512;
      *(v21 + 106) = *v32;
      *(v21 + 112) = *&v32[6];
      if (!--v2)
      {
        return v3;
      }
    }

    v10 = *a2;
    if (*(*a2 + 16))
    {
      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v49, v34);
      v11 = sub_1DD3978DC();
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v14 = *v13;
        v15 = v13[1];

LABEL_12:
        sub_1DD3C6A9C(v49);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3DD9B4(__dst, v34, &qword_1ECCDCAE0, &unk_1DD649FF0);
      sub_1DD3C6A40(v49, v34);
    }

    sub_1DD5E13F8();
    v14 = v16;
    v15 = v17;

    swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *a2;
    sub_1DD3FFBC0();
    *a2 = v34[0];
    goto LABEL_12;
  }

  return v3;
}

uint64_t sub_1DD5E0D30(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v2;
    v6 = *v2;
    if (!*(v6 + 16) || (v7 = sub_1DD3978DC(), (v8 & 1) == 0))
    {
      sub_1DD5E13F8();
      v10 = v9;

      swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      sub_1DD3FFBC0();
      *v5 = v12;
      return v10;
    }

    v3 = *(*(v6 + 56) + 16 * v7);
  }

  return v3;
}

uint64_t sub_1DD5E0E10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for Contact(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  sub_1DD5E1524(a1, a3, type metadata accessor for ContactMatchRuntimeData);
  *(v13 + 16) = 2;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0xE000000000000000;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0xE000000000000000;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0xE000000000000000;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0xE000000000000000;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0xE000000000000000;
  *(v13 + 104) = 0;
  *(v13 + 112) = 0xE000000000000000;
  *(v13 + 120) = 0;
  *(v13 + 128) = 0xE000000000000000;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0xE000000000000000;
  *(v13 + 152) = 0;
  *(v13 + 160) = 0xE000000000000000;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0xE000000000000000;
  *(v13 + 184) = 0;
  *(v13 + 192) = 0xE000000000000000;
  *(v13 + 200) = 0;
  *(v13 + 208) = 0xE000000000000000;
  *(v13 + 216) = MEMORY[0x1E69E7CC0];
  v14 = v10[21];
  v15 = sub_1DD63CBB8();
  __swift_storeEnumTagSinglePayload(v13 + v14, 1, 1, v15);
  v36 = v10[22];
  *(v13 + v10[23]) = 0;
  v16 = (v13 + v10[24]);
  *v16 = 0;
  v16[1] = 0;
  *(v13 + v10[25]) = 2;
  v17 = (v13 + v10[26]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *v13 = sub_1DD5E0D30(*a3, *(a3 + 8));
  *(v13 + 8) = v18;
  v19 = (a3 + v10[24]);
  v21 = *v19;
  v20 = v19[1];

  *v16 = v21;
  v16[1] = v20;
  *(v13 + v36) = sub_1DD5DFDB8(*(a3 + v10[22]), a2);
  sub_1DD5E1584(v13, a3, type metadata accessor for Contact);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v37 = *(matched + 20);
  sub_1DD5E1524(a3 + v37, v8, type metadata accessor for ContactResolver.SignalSet);
  memcpy(v40, (v8 + 8), sizeof(v40));
  v22 = v40[0];
  v23 = v40[1];
  v24 = v40[30];
  sub_1DD3C9478(v40, v43);
  v25 = sub_1DD5E0D30(v22, v23);
  v27 = v26;
  sub_1DD5E02F0(v24, a2);
  v29 = v28;
  sub_1DD3C9580(v40);
  memcpy(v43, (v8 + 8), 0x108uLL);
  sub_1DD3C9580(v43);
  *(v8 + 8) = v25;
  *(v8 + 16) = v27;
  *(v8 + 24) = 0;
  *(v8 + 25) = *v42;
  *(v8 + 28) = *&v42[3];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0xE000000000000000;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0xE000000000000000;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0xE000000000000000;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0xE000000000000000;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0xE000000000000000;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0xE000000000000000;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0xE000000000000000;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0xE000000000000000;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 240) = 0;
  *(v8 + 248) = v29;
  *(v8 + 256) = 1;
  *(v8 + 257) = *v41;
  *(v8 + 260) = *&v41[3];
  *(v8 + 264) = 0;
  v30 = sub_1DD5E0680(*(v8 + 272), a2);

  *(v8 + 272) = v30;
  sub_1DD5E1584(v8, a3 + v37, type metadata accessor for ContactResolver.SignalSet);
  v31 = a3 + *(matched + 24);
  LOBYTE(v30) = *v31;
  v32 = *(v31 + 8);

  v34 = sub_1DD5E096C(v33, a2);

  *v31 = v30;
  *(v31 + 8) = v32;
  *(v31 + 16) = v34;
  return result;
}

uint64_t sub_1DD5E11D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  sub_1DD3DD9B4(a1, &v17[-v11], &qword_1ECCDBEE0, &unk_1DD645510);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v13 = sub_1DD5DFFC0(*v12, v2);

      *a2 = v13;
      OUTLINED_FUNCTION_52();
      break;
    case 3u:
      OUTLINED_FUNCTION_52();
      break;
    default:
      sub_1DD3C95D4(v12, v9);
      Contact.init()(a2);
      sub_1DD5E0D30(*v9, *(v9 + 8));

      OUTLINED_FUNCTION_1_123();

      v14 = OUTLINED_FUNCTION_3_93();
      v15 = *(v5 + 80);

      *(a2 + v15) = v14;
      sub_1DD415B40(v9);
      OUTLINED_FUNCTION_52();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DD5E13F8()
{
  v0 = 0;
  v5[1] = 0;
  v5[2] = 0xE000000000000000;
  while (("potentialRetryIntervalBucket" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v1 = sub_1DD63FF08();
    if (v1 < 0)
    {
      goto LABEL_11;
    }

    v2 = v1;
    if (!v1)
    {
      goto LABEL_12;
    }

    v5[0] = 0;
    MEMORY[0x1E12B3DC0](v5, 8);
    if (v2 > v5[0] * v2)
    {
      v3 = -v2 % v2;
      while (v3 > v5[0] * v2)
      {
        v5[0] = 0;
        MEMORY[0x1E12B3DC0](v5, 8);
      }
    }

    ++v0;
    sub_1DD63FF38();
    v4 = sub_1DD640038();
    MEMORY[0x1E12B2250](v4);

    if (v0 == 6)
    {
      return;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1DD5E1524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5E1584(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1DD5E15E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAE0, &unk_1DD649FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_93()
{
  *v5 = v4;
  v5[1] = v1;
  v7 = *(v2 + *(v3 + 80));

  return sub_1DD5DFDB8(v7, v0);
}

uint64_t sub_1DD5E1680(uint64_t a1)
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

uint64_t sub_1DD5E1848()
{
  sub_1DD5E17D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5E18B4()
{
  sub_1DD640E28();
  sub_1DD5E1714(v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD5E193C(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD5E1714(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD5E1988(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
    [v3 setCountLimit_];
  }

  *(v2 + 16) = v3;
  return v2;
}

uint64_t sub_1DD5E19F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (!v5)
  {
    return sub_1DD5E1B00(a1, a2);
  }

  v6 = v5;
  v7 = sub_1DD63FDA8();
  v8 = [v6 objectForKey_];
  if (v8)
  {
    v9 = v8;

    v10 = v9[2];
  }

  else
  {
    v10 = sub_1DD5E1B00(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA38, &qword_1DD662470);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;

    [v6 setObject:v12 forKey:v7];
  }

  return v10;
}

uint64_t sub_1DD5E1B00(uint64_t a1, uint64_t a2)
{
  sub_1DD5E1E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA28, &qword_1DD662460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD643F90;
  v5 = *MEMORY[0x1E69779C8];
  *(v4 + 32) = *MEMORY[0x1E69779C8];
  v6 = v5;
  v7 = sub_1DD5E1CC4(v4);
  sub_1DD5E1E8C(a1, a2, v7);
  v18 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA30, &qword_1DD662468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  v9 = *MEMORY[0x1E6977938];
  v10 = *MEMORY[0x1E6977948];
  *(inited + 32) = *MEMORY[0x1E6977938];
  *(inited + 40) = v10;
  v11 = *MEMORY[0x1E6977980];
  v12 = *MEMORY[0x1E69779A8];
  *(inited + 48) = *MEMORY[0x1E6977980];
  *(inited + 56) = v12;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1DD56BC10();
  sub_1DD640578();

  return v18;
}

id sub_1DD5E1CC4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v2 = sub_1DD6400F8();

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t sub_1DD5E1D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    if (sub_1DD47EFA0(v9, a4))
    {
    }

    else
    {
      v10 = sub_1DD640058();
      v11 = MEMORY[0x1E12B2190](v10);
      v13 = v12;

      sub_1DD3BDF34();
      v14 = *(*a5 + 16);
      sub_1DD3BE0F8(v14);

      v15 = *a5;
      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  return 1;
}

unint64_t sub_1DD5E1E48()
{
  result = qword_1ECCDFA20;
  if (!qword_1ECCDFA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDFA20);
  }

  return result;
}

void sub_1DD5E1E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setString_];
}

uint64_t StreetAddress.CrossStreetJoin.init(rawValue:)@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DD640AA8();

  *a2 = v3 != 0;
  return result;
}

__n128 StreetAddress.init(streetName:streetNumber:streetType:crossStreetName:crossStreetType:crossStreetJoin:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, __n128 *a4@<X3>, __int16 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = *a3;
  v10 = a4[1].n128_u8[0];
  v11 = *a5;
  v12 = *a6;
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 24) = *a2;
  *(a7 + 40) = v8;
  *(a7 + 41) = v9;
  result = *a4;
  *(a7 + 48) = *a4;
  *(a7 + 64) = v10;
  *(a7 + 65) = v11;
  *(a7 + 67) = v12;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  return result;
}

uint64_t StreetAddress.streetName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t StreetAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t static StreetAddress.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = *(a1 + 41);
  v5 = *(a2 + 8);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  if (!a1[1])
  {
    if (v5)
    {
      goto LABEL_13;
    }

    LODWORD(v71) = *(a1 + 65);
    HIDWORD(v71) = *(a2 + 64);
    v73 = *(a2 + 48);
    HIDWORD(v74) = *(a1 + 64);
    v76 = a1[6];
    v78 = *(a2 + 56);
    LODWORD(v68) = *(a1 + 67);
    HIDWORD(v68) = *(a2 + 65);
    v80 = a1[7];
    HIDWORD(v66) = *(a2 + 67);

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v85 = *a1;
  if (!v5)
  {
    goto LABEL_13;
  }

  v70 = __PAIR64__(*(a2 + 64), *(a1 + 65));
  v72 = *(a2 + 48);
  HIDWORD(v74) = *(a1 + 64);
  v75 = a1[6];
  v77 = *(a2 + 56);
  v67 = __PAIR64__(*(a2 + 65), *(a1 + 67));
  v79 = a1[7];
  v82 = *a2;
  HIDWORD(v66) = *(a2 + 67);
  LOWORD(v84) = *(a2 + 16);
  swift_bridgeObjectRetain_n();

  v18 = OUTLINED_FUNCTION_7_67(v10, v11, v12, v13, v14, v15, v16, v17, v66, v67, v70, v72, v74, v75, v77, v79, v82, v5, v84, v85);
  v20 = static StreetName.== infix(_:_:)(v18, v19);

  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_13;
  }

  LOBYTE(v84) = v8;
  swift_bridgeObjectRetain_n();

  v29 = OUTLINED_FUNCTION_7_67(v21, v22, v23, v24, v25, v26, v27, v28, v66, v68, v71, v73, v74, v76, v78, v80, v7, v6, v84, v3);
  v31 = static StreetNumber.== infix(_:_:)(v29, v30);

  if ((v31 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v4 & 0xFF00) == 0x900)
  {
    if ((v9 & 0xFF00) != 0x900)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v9 & 0xFF00) == 0x900)
    {
      goto LABEL_14;
    }

    LOWORD(v81) = v9;
    v42 = OUTLINED_FUNCTION_7_67(v32, v33, v34, v35, v36, v37, v38, v39, v66, v68, v71, v73, v74, v76, v78, v80, v81, v83, v84, v4);
    if ((static StreetType.== infix(_:_:)(v42, v43) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v80)
  {
    if (v78)
    {
      LOBYTE(v84) = BYTE4(v71);
      swift_bridgeObjectRetain_n();

      v52 = OUTLINED_FUNCTION_7_67(v44, v45, v46, v47, v48, v49, v50, v51, v66, v68, v71, v73, v74, v76, v78, v80, v73, v78, v84, v76);
      v54 = static CrossStreetName.== infix(_:_:)(v52, v53);

      if ((v54 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v78)
  {
    goto LABEL_13;
  }

LABEL_30:
  if ((v71 & 0xFF00) == 0x900)
  {
    if (((WORD2(v68) & 0xFF00) != 2304) | v68 & 1)
    {
      v40 = ((WORD2(v68) & 0xFF00) == 2304) & BYTE4(v66);
      return v40 & 1;
    }

LABEL_36:
    v40 = BYTE4(v66) ^ 1;
    return v40 & 1;
  }

  if ((WORD2(v68) & 0xFF00) != 0x900)
  {
    LOWORD(v81) = WORD2(v68);
    v63 = OUTLINED_FUNCTION_7_67(v55, v56, v57, v58, v59, v60, v61, v62, v66, v68, v71, v73, v74, v76, v78, v80, v81, v83, v84, v71);
    v65 = static StreetType.== infix(_:_:)(v63, v64);
    if (v69 & 1 | ((v65 & 1) == 0))
    {
      v40 = v65 & BYTE4(v66);
      return v40 & 1;
    }

    goto LABEL_36;
  }

LABEL_14:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1DD5E2484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x754E746565727473 && a2 == 0xEC0000007265626DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7954746565727473 && a2 == 0xEA00000000006570;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72745373736F7263 && a2 == 0xEF656D614E746565;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72745373736F7263 && a2 == 0xEF65707954746565;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72745373736F7263 && a2 == 0xEF6E696F4A746565;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x80000001DD6748F0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD5E26D0(char a1)
{
  result = 0x614E746565727473;
  switch(a1)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 0x7954746565727473;
      break;
    case 3:
    case 4:
    case 5:
      result = 0x72745373736F7263;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E27B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5E2484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5E27DC(uint64_t a1)
{
  v2 = sub_1DD5E30B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E2818(uint64_t a1)
{
  v2 = sub_1DD5E30B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA40, &qword_1DD662478);
  OUTLINED_FUNCTION_0();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 8);
  v11 = v1[4];
  v30 = v1[3];
  v31 = v11;
  v37 = *(v1 + 40);
  v29 = *(v1 + 41);
  v12 = v1[6];
  v27 = v1[7];
  v28 = v12;
  LODWORD(v12) = *(v1 + 64);
  v25 = *(v1 + 65);
  v26 = v12;
  v24 = *(v1 + 67);
  v13 = v1[10];
  v23[0] = v1[9];
  v23[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E30B4();

  sub_1DD640EF8();
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v38 = 0;
  sub_1DD5E3108();
  OUTLINED_FUNCTION_1_124();
  v14 = v32;
  sub_1DD640C08();
  if (v14)
  {

    return (*(v33 + 8))(v7, v3);
  }

  else
  {
    v16 = v29;
    v17 = v26;
    v19 = v27;
    v18 = v28;
    v20 = v33;

    v34 = v30;
    v35 = v31;
    LOBYTE(v36) = v37;
    v38 = 1;
    v21 = sub_1DD5E315C();

    OUTLINED_FUNCTION_1_124();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640C08();
    if (v21)
    {
    }

    else
    {

      LOWORD(v34) = v16;
      v38 = 2;
      sub_1DD5E31B0();
      OUTLINED_FUNCTION_1_124();
      OUTLINED_FUNCTION_5_85();
      sub_1DD640C08();
      v34 = v18;
      v35 = v19;
      LOBYTE(v36) = v17;
      v38 = 3;
      v22 = sub_1DD5E3204();

      OUTLINED_FUNCTION_1_124();
      OUTLINED_FUNCTION_5_85();
      sub_1DD640C08();

      if (!v22)
      {
        LOWORD(v34) = v25;
        v38 = 4;
        OUTLINED_FUNCTION_1_124();
        OUTLINED_FUNCTION_5_85();
        sub_1DD640C08();
        LOBYTE(v34) = v24;
        v38 = 5;
        sub_1DD5E3258();
        OUTLINED_FUNCTION_1_124();
        OUTLINED_FUNCTION_5_85();
        sub_1DD640C08();
        LOBYTE(v34) = 6;
        OUTLINED_FUNCTION_5_85();
        sub_1DD640BC8();
      }
    }

    return (*(v20 + 8))(v7, v3);
  }
}

uint64_t StreetAddress.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFA78, &qword_1DD662480);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E30B4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1DD5E32AC();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v11 = v34;
  v50 = v35;
  v12 = v36;
  OUTLINED_FUNCTION_6_73(1);
  sub_1DD5E3300();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v29 = v12;
  v30 = v34;
  v32 = v35;
  v31 = v36;
  OUTLINED_FUNCTION_6_73(2);
  v13 = sub_1DD5E3354();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v28 = v13;
  v27 = v11;
  v26 = v34;
  OUTLINED_FUNCTION_6_73(3);
  sub_1DD5E33A8();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v24 = v34;
  v25 = v35;
  LODWORD(v13) = v36;
  OUTLINED_FUNCTION_6_73(4);
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  LODWORD(v28) = v13;
  LODWORD(v13) = v34;
  OUTLINED_FUNCTION_6_73(5);
  sub_1DD5E33FC();
  OUTLINED_FUNCTION_0_139();
  OUTLINED_FUNCTION_4_90();
  sub_1DD640B18();
  v49 = v34;
  v48 = 6;
  OUTLINED_FUNCTION_4_90();
  v14 = sub_1DD640AD8();
  v16 = v15;
  (*(v7 + 8))(v10, v5);
  __src[0] = v27;
  v17 = v50;
  __src[1] = v50;
  v18 = v13;
  v23 = v13;
  LOWORD(v13) = v29;
  LOWORD(__src[2]) = v29;
  v19 = v32;
  __src[3] = v30;
  __src[4] = v32;
  LOBYTE(__src[5]) = v31;
  *(&__src[5] + 1) = v26;
  v20 = v25;
  __src[6] = v24;
  __src[7] = v25;
  LOBYTE(__src[8]) = v28;
  *(&__src[8] + 1) = v18;
  v22 = v49;
  BYTE3(__src[8]) = v49;
  __src[9] = v14;
  __src[10] = v16;
  memcpy(a2, __src, 0x58uLL);
  sub_1DD5E3450(__src, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34 = v27;
  v35 = v17;
  v36 = v13;
  v37 = v30;
  v38 = v19;
  v39 = v31;
  v40 = v26;
  v41 = v24;
  v42 = v20;
  v43 = v28;
  v44 = v23;
  v45 = v22;
  v46 = v14;
  v47 = v16;
  return sub_1DD501440(&v34);
}

unint64_t sub_1DD5E30B4()
{
  result = qword_1ECCDFA48;
  if (!qword_1ECCDFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA48);
  }

  return result;
}

unint64_t sub_1DD5E3108()
{
  result = qword_1ECCDFA50;
  if (!qword_1ECCDFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA50);
  }

  return result;
}

unint64_t sub_1DD5E315C()
{
  result = qword_1ECCDFA58;
  if (!qword_1ECCDFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA58);
  }

  return result;
}

unint64_t sub_1DD5E31B0()
{
  result = qword_1ECCDFA60;
  if (!qword_1ECCDFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA60);
  }

  return result;
}

unint64_t sub_1DD5E3204()
{
  result = qword_1ECCDFA68;
  if (!qword_1ECCDFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA68);
  }

  return result;
}

unint64_t sub_1DD5E3258()
{
  result = qword_1ECCDFA70;
  if (!qword_1ECCDFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA70);
  }

  return result;
}

unint64_t sub_1DD5E32AC()
{
  result = qword_1ECCDFA80;
  if (!qword_1ECCDFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA80);
  }

  return result;
}

unint64_t sub_1DD5E3300()
{
  result = qword_1ECCDFA88;
  if (!qword_1ECCDFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA88);
  }

  return result;
}

unint64_t sub_1DD5E3354()
{
  result = qword_1ECCDFA90;
  if (!qword_1ECCDFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA90);
  }

  return result;
}

unint64_t sub_1DD5E33A8()
{
  result = qword_1ECCDFA98;
  if (!qword_1ECCDFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFA98);
  }

  return result;
}

unint64_t sub_1DD5E33FC()
{
  result = qword_1ECCDFAA0;
  if (!qword_1ECCDFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAA0);
  }

  return result;
}

unint64_t sub_1DD5E348C()
{
  result = qword_1ECCDFAA8;
  if (!qword_1ECCDFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAA8);
  }

  return result;
}

uint64_t sub_1DD5E34E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5E3534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetAddress.CrossStreetJoin(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5E3738()
{
  result = qword_1ECCDFAB0;
  if (!qword_1ECCDFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAB0);
  }

  return result;
}

unint64_t sub_1DD5E3790()
{
  result = qword_1ECCDFAB8;
  if (!qword_1ECCDFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAB8);
  }

  return result;
}

unint64_t sub_1DD5E37E8()
{
  result = qword_1ECCDFAC0;
  if (!qword_1ECCDFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAC0);
  }

  return result;
}

unint64_t sub_1DD5E383C()
{
  result = qword_1ECCDFAC8;
  if (!qword_1ECCDFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
}

SiriInference::StreetName __swiftcall StreetName.init(name:prefix:suffix:)(SiriInference::StreetName name, SiriInference::StreetName::Prefix_optional prefix, SiriInference::StreetName::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *v3 = name.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  name.prefix = prefix;
  return name;
}

SiriInference::StreetName::Prefix_optional __swiftcall StreetName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E39A4@<X0>(uint64_t *a1@<X8>)
{
  result = StreetName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::StreetName::Suffix_optional __swiftcall StreetName.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t StreetName.Suffix.rawValue.getter()
{
  result = 0x79617765657266;
  switch(*v0)
  {
    case 1:
      return 0x726176656C756F62;
    case 2:
      return 0x7954746565727473;
    case 3:
      return 0x7773736572707865;
    case 4:
      return 0x656461637261;
    case 5:
      return 0x7472756F63;
    case 6:
      return 7954807;
    case 7:
      return 0x617A616C70;
    case 8:
      return 0x746E656373657263;
    case 9:
      return 1684107122;
    case 0xA:
      return 0x746565727473;
    case 0xB:
      return 0x65756E657661;
    case 0xC:
      return 0x7961776573756163;
    case 0xD:
      v3 = 1667329136;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0xE:
      v2 = 1751607656;
      goto LABEL_19;
    case 0xF:
      v3 = 1986622052;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x10:
      return 0x656C63726963;
    case 0x11:
      return 0x79656C6C61;
    case 0x12:
      v2 = 1802658160;
LABEL_19:
      result = v2 | 0x79617700000000;
      break;
    case 0x13:
      result = 1701732716;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E3D8C@<X0>(uint64_t *a1@<X8>)
{
  result = StreetName.Suffix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StreetName.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static StreetName.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 == 4 || (sub_1DD3B18F4() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 20 && v3 == 20;
  if (v3 != 20 && v5 != 20)
  {

    return sub_1DD3B19C0(v3, v5);
  }

  return result;
}

uint64_t sub_1DD5E3F84(uint64_t a1)
{
  v2 = sub_1DD5E43F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E3FC0(uint64_t a1)
{
  v2 = sub_1DD5E43F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetName.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFAD0, &qword_1DD662788);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD5E43F8();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD5E444C();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD5E44A0();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t StreetName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFAF0, &qword_1DD662790);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E43F8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD5E44F4();
  OUTLINED_FUNCTION_3_4(&type metadata for StreetName.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD5E4548();
  OUTLINED_FUNCTION_3_4(&type metadata for StreetName.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E43F8()
{
  result = qword_1ECCDFAD8;
  if (!qword_1ECCDFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAD8);
  }

  return result;
}

unint64_t sub_1DD5E444C()
{
  result = qword_1ECCDFAE0;
  if (!qword_1ECCDFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAE0);
  }

  return result;
}

unint64_t sub_1DD5E44A0()
{
  result = qword_1ECCDFAE8;
  if (!qword_1ECCDFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAE8);
  }

  return result;
}

unint64_t sub_1DD5E44F4()
{
  result = qword_1ECCDFAF8;
  if (!qword_1ECCDFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFAF8);
  }

  return result;
}

unint64_t sub_1DD5E4548()
{
  result = qword_1ECCDFB00;
  if (!qword_1ECCDFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB00);
  }

  return result;
}

unint64_t sub_1DD5E45A0()
{
  result = qword_1ECCDFB08;
  if (!qword_1ECCDFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB08);
  }

  return result;
}

unint64_t sub_1DD5E45F8()
{
  result = qword_1ECCDFB10;
  if (!qword_1ECCDFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetName.Suffix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5E48E8()
{
  result = qword_1ECCDFB18;
  if (!qword_1ECCDFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB18);
  }

  return result;
}

unint64_t sub_1DD5E4940()
{
  result = qword_1ECCDFB20;
  if (!qword_1ECCDFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB20);
  }

  return result;
}

unint64_t sub_1DD5E4998()
{
  result = qword_1ECCDFB28;
  if (!qword_1ECCDFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB28);
  }

  return result;
}

unint64_t sub_1DD5E49EC()
{
  result = qword_1ECCDFB30;
  if (!qword_1ECCDFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB30);
  }

  return result;
}

unint64_t sub_1DD5E4A40()
{
  result = qword_1ECCDFB38;
  if (!qword_1ECCDFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB38);
  }

  return result;
}

SiriInference::StreetNumber __swiftcall StreetNumber.init(value:prefix:)(SiriInference::StreetNumber value, SiriInference::StreetNumber::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = value.value;
  *(v2 + 16) = v3;
  value.prefix = prefix;
  return value;
}

SiriInference::StreetNumber::Prefix_optional __swiftcall StreetNumber.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetNumber.Prefix.rawValue.getter()
{
  result = 0x7265626D756ELL;
  switch(*v0)
  {
    case 1:
      result = 0x7954746565727473;
      break;
    case 2:
      result = 28265;
      break;
    case 3:
      result = 1918985582;
      break;
    case 4:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E4BA8@<X0>(uint64_t *a1@<X8>)
{
  result = StreetNumber.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StreetNumber.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static StreetNumber.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 5 && (v2 == 5);
    if (v2 != 5 && v3 != 5)
    {

      return sub_1DD3B12CC(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD5E4D58(uint64_t a1)
{
  v2 = sub_1DD5E515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E4D94(uint64_t a1)
{
  v2 = sub_1DD5E515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB40, &qword_1DD662BB8);
  OUTLINED_FUNCTION_0();
  v11 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E515C();
  sub_1DD640EF8();
  v15 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DD5E51B0();
    sub_1DD640C08();
  }

  return (*(v11 + 8))(v8, v4);
}

uint64_t StreetNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB58, &qword_1DD662BC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E515C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DD640B28();
  v8 = v7;
  sub_1DD5E5204();
  sub_1DD640B18();
  v9 = OUTLINED_FUNCTION_41();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E515C()
{
  result = qword_1ECCDFB48;
  if (!qword_1ECCDFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB48);
  }

  return result;
}

unint64_t sub_1DD5E51B0()
{
  result = qword_1ECCDFB50;
  if (!qword_1ECCDFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB50);
  }

  return result;
}

unint64_t sub_1DD5E5204()
{
  result = qword_1ECCDFB60;
  if (!qword_1ECCDFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB60);
  }

  return result;
}

unint64_t sub_1DD5E525C()
{
  result = qword_1ECCDFB68;
  if (!qword_1ECCDFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetNumber.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetNumber.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5E547C()
{
  result = qword_1ECCDFB70;
  if (!qword_1ECCDFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB70);
  }

  return result;
}

unint64_t sub_1DD5E54D4()
{
  result = qword_1ECCDFB78;
  if (!qword_1ECCDFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB78);
  }

  return result;
}

unint64_t sub_1DD5E552C()
{
  result = qword_1ECCDFB80;
  if (!qword_1ECCDFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB80);
  }

  return result;
}

unint64_t sub_1DD5E5580()
{
  result = qword_1ECCDFB88;
  if (!qword_1ECCDFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB88);
  }

  return result;
}

SiriInference::StreetType::Value_optional __swiftcall StreetType.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -94;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        LOBYTE(v3) = -109;
        goto LABEL_2;
      case 0x14uLL:
        LOBYTE(v3) = -108;
        goto LABEL_2;
      case 0x15uLL:
        LOBYTE(v3) = -107;
        goto LABEL_2;
      case 0x16uLL:
        LOBYTE(v3) = -106;
        goto LABEL_2;
      case 0x17uLL:
        LOBYTE(v3) = -105;
        goto LABEL_2;
      case 0x18uLL:
        LOBYTE(v3) = -104;
        goto LABEL_2;
      case 0x19uLL:
        LOBYTE(v3) = -103;
        goto LABEL_2;
      case 0x1AuLL:
        LOBYTE(v3) = -102;
        goto LABEL_2;
      case 0x1BuLL:
        LOBYTE(v3) = -101;
        goto LABEL_2;
      case 0x1CuLL:
        LOBYTE(v3) = -100;
        goto LABEL_2;
      case 0x1DuLL:
        LOBYTE(v3) = -99;
        goto LABEL_2;
      case 0x1EuLL:
        LOBYTE(v3) = -98;
        goto LABEL_2;
      case 0x1FuLL:
        LOBYTE(v3) = -97;
        goto LABEL_2;
      case 0x20uLL:
        LOBYTE(v3) = -96;
        goto LABEL_2;
      case 0x21uLL:
        LOBYTE(v3) = -95;
        goto LABEL_2;
      case 0x22uLL:
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      case 0x25uLL:
        v6 = -91;
        break;
      case 0x26uLL:
        v6 = -90;
        break;
      case 0x27uLL:
        v6 = -89;
        break;
      case 0x28uLL:
        v6 = -88;
        break;
      case 0x29uLL:
        v6 = -87;
        break;
      case 0x2AuLL:
        v6 = -86;
        break;
      case 0x2BuLL:
        v6 = -85;
        break;
      case 0x2CuLL:
        v6 = -84;
        break;
      case 0x2DuLL:
        v6 = -83;
        break;
      case 0x2EuLL:
        v6 = -82;
        break;
      case 0x2FuLL:
        v6 = -81;
        break;
      case 0x30uLL:
        v6 = -80;
        break;
      case 0x31uLL:
        v6 = -79;
        break;
      case 0x32uLL:
        v6 = -78;
        break;
      case 0x33uLL:
        v6 = -77;
        break;
      default:
        v6 = -76;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

SiriInference::StreetType __swiftcall StreetType.init(value:suffix:)(SiriInference::StreetType::Value value, SiriInference::StreetType::Suffix_optional suffix)
{
  v3 = *suffix.value;
  *v2 = *value;
  v2[1] = v3;
  result.value = value;
  return result;
}

uint64_t StreetType.Value.rawValue.getter()
{
  result = 0x79656C6C61;
  switch(*v0)
  {
    case 1:
      return 0x78656E6E61;
    case 2:
      return 0x6164696E657661;
    case 3:
      return 0x65756E657661;
    case 4:
      v3 = 1870225762;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 5:
      v15 = 1667327330;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      return 1684956514;
    case 7:
      return 0x6666756C62;
    case 8:
      v20 = 1718971490;
      return v20 & 0xFFFF0000FFFFFFFFLL | 0x736600000000;
    case 9:
      return 0x6D6F74746F62;
    case 0xA:
      return 0x726176656C756F62;
    case 0xB:
      return 0x68636E617262;
    case 0xC:
      return 0x656764697262;
    case 0xD:
      v2 = 1869574754;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0xE:
      return 0x736B6F6F7262;
    case 0xF:
      return 1735554402;
    case 0x10:
      v11 = 1735554402;
      goto LABEL_204;
    case 0x11:
      return 0x737361707962;
    case 0x12:
      v4 = 1819042147;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x13:
      return 0x6F6E696D6163;
    case 0x14:
      return 1886216547;
    case 0x15:
      return 0x6E6F796E6163;
    case 0x16:
      return 1701863779;
    case 0x17:
      v10 = 0x776573756163;
      return v10 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
    case 0x18:
      return 0x7265746E6563;
    case 0x19:
      v6 = 0x7265746E6563;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x1A:
      return 0x656C63726963;
    case 0x1B:
      v6 = 0x656C63726963;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x1C:
      return 0x6666696C63;
    case 0x1D:
      v20 = 1718185059;
      return v20 & 0xFFFF0000FFFFFFFFLL | 0x736600000000;
    case 0x1E:
      return 1651862627;
    case 0x1F:
      return 0x6E6F6D6D6F63;
    case 0x20:
      v6 = 0x6E6F6D6D6F63;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x21:
      return 0x72656E726F63;
    case 0x22:
      return 0x657372756F63;
    case 0x23:
      v7 = 1920298851;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x24:
      v14 = 1920298851;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x25:
      return 1702260579;
    case 0x26:
      v11 = 1702260579;
      goto LABEL_204;
    case 0x27:
      v2 = 1701147235;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0x28:
      return 0x746E656373657263;
    case 0x29:
      v7 = 1936028259;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x2A:
      return 0x676E6973736F7263;
    case 0x2B:
      return 0x616F7273736F7263;
    case 0x2C:
      v4 = 1987212643;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x2D:
      return 1701601636;
    case 0x2E:
      return 7168356;
    case 0x2F:
      return 0x656469766964;
    case 0x30:
      v4 = 1986622052;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x31:
      v17 = 1986622052;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x32:
      return 0x657461747365;
    case 0x33:
      v6 = 0x657461747365;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x34:
      return 0x7773736572707865;
    case 0x35:
      return 0x6F69736E65747865;
    case 0x36:
      return 0x6F69736E65747865;
    case 0x37:
      return 0x646C656966;
    case 0x38:
      v5 = 1818585446;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x736400000000;
    case 0x39:
      return 1952541798;
    case 0x3A:
      v11 = 1952541798;
      goto LABEL_204;
    case 0x3B:
      return 1685221222;
    case 0x3C:
      v11 = 1685221222;
      goto LABEL_204;
    case 0x3D:
      return 0x747365726F66;
    case 0x3E:
      v4 = 1735552870;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x3F:
      v17 = 1735552870;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x40:
      return 1802661734;
    case 0x41:
      v11 = 1802661734;
      goto LABEL_204;
    case 0x42:
      return 1953656678;
    case 0x43:
      v8 = 1701147238;
      return v8 | 0x79617700000000;
    case 0x44:
      return 0x6E6564726167;
    case 0x45:
      v6 = 0x6E6564726167;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x46:
      v8 = 1702125927;
      return v8 | 0x79617700000000;
    case 0x47:
      return 1852140647;
    case 0x48:
      v11 = 1852140647;
      goto LABEL_204;
    case 0x49:
      v9 = 1701147239;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x4A:
      v12 = 1701147239;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0x4B:
      v4 = 1987015271;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x4C:
      v17 = 1987015271;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x4D:
      return 0x726F62726168;
    case 0x4E:
      v6 = 0x726F62726168;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x4F:
      v9 = 1702257000;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x50:
      v6 = 0x746867696568;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x51:
      v8 = 1751607656;
      return v8 | 0x79617700000000;
    case 0x52:
      return 1819044200;
    case 0x53:
      return 0x736C6C6968;
    case 0x54:
      v23 = 1819045736;
      return v23 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
    case 0x55:
      v7 = 1701604969;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x56:
      return 0x6E6F6974636E756ALL;
    case 0x57:
      return 0x6E6F6974636E756ALL;
    case 0x58:
      return 7955819;
    case 0x59:
      return 1937335659;
    case 0x5A:
      v16 = 1819242091;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0x5B:
      v13 = 1819242091;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x736C00000000;
    case 0x5C:
      return 1701536108;
    case 0x5D:
      v11 = 1701536108;
      goto LABEL_204;
    case 0x5E:
      return 0x676E69646E616CLL;
    case 0x5F:
      return 1701732716;
    case 0x60:
      v7 = 1751607660;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x61:
      v14 = 1751607660;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x62:
      return 1717661548;
    case 0x63:
      return 1801678700;
    case 0x64:
      v11 = 1801678700;
      goto LABEL_204;
    case 0x65:
      return 0x6567646F6CLL;
    case 0x66:
      return 1886351212;
    case 0x67:
      v22 = 1869504877;
      return v22 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 0x68:
      return 0x73726F6E616DLL;
    case 0x69:
      v23 = 1684104557;
      return v23 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
    case 0x6A:
      v6 = 0x776F6461656DLL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x6B:
      return 1819044205;
    case 0x6C:
      return 0x736C6C696DLL;
    case 0x6D:
      v10 = 0x77726F746F6DLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
    case 0x6E:
      return 0x6E6961746E756F6DLL;
    case 0x6F:
      return 0x6E6961746E756F6DLL;
    case 0x70:
      v7 = 1853189997;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x71:
      return 1801676142;
    case 0x72:
      return 0x6472616863726FLL;
    case 0x73:
      return 0x737361707265766FLL;
    case 0x74:
      v8 = 1802658160;
      return v8 | 0x79617700000000;
    case 0x75:
      return 0x737961776B726170;
    case 0x76:
      v3 = 1702060400;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 0x77:
      v19 = 1936941424;
      goto LABEL_114;
    case 0x78:
      return 1701734768;
    case 0x79:
      v11 = 1701734768;
      goto LABEL_204;
    case 0x7A:
      v4 = 1667329136;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x7B:
      v9 = 1767992432;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x7C:
      v12 = 1767992432;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0x7D:
      v21 = 2053205104;
      return v21 & 0xFFFF0000FFFFFFFFLL | 0x6100000000;
    case 0x7E:
      v7 = 1852403568;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x7F:
      v14 = 1852403568;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x80:
      return 1953656688;
    case 0x81:
      v11 = 1953656688;
      goto LABEL_204;
    case 0x82:
      v18 = 0x697269617270;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x83:
      return 0x6C6169646172;
    case 0x84:
      v15 = 1668178290;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 0x85:
      return 0x6469706172;
    case 0x86:
      v5 = 1768972658;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x736400000000;
    case 0x87:
      return 1953719666;
    case 0x88:
      v4 = 1734633842;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x89:
      v17 = 1734633842;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x8A:
      v22 = 1702259058;
      return v22 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 0x8B:
      return 1684107122;
    case 0x8C:
      v11 = 1684107122;
      goto LABEL_204;
    case 0x8D:
      v4 = 1953853298;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x8E:
      return 6649202;
    case 0x8F:
      v16 = 1634691187;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0x90:
      v13 = 1634691187;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x736C00000000;
    case 0x91:
      v4 = 1919903859;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x92:
      v17 = 1919903859;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x93:
      return 0x796177796B73;
    case 0x94:
      return 0x676E69727073;
    case 0x95:
      v6 = 0x676E69727073;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x96:
      return 0x657261757173;
    case 0x97:
      v6 = 0x657261757173;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x98:
      return 0x6E6F6974617473;
    case 0x99:
      return 0x756E657661727473;
    case 0x9A:
      return 0x6D6165727473;
    case 0x9B:
      v6 = 0x746565727473;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x9C:
      return 0x746565727473;
    case 0x9D:
      return 0x74696D6D7573;
    case 0x9E:
      v18 = 0x636172726574;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x9F:
      return 0x776867756F726874;
    case 0xA0:
      return 0x6563617274;
    case 0xA1:
      v2 = 1667330676;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0xA2:
      return 0x7763696666617274;
    case 0xA3:
      v16 = 1767993972;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0xA4:
      return 0x6C656E6E7574;
    case 0xA5:
      return 0x656B69706E727574;
    case 0xA6:
      return 0x7361707265646E75;
    case 0xA7:
      v12 = 1869180533;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0xA8:
      v9 = 1869180533;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0xA9:
      v6 = 0x79656C6C6176;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0xAA:
      return 0x79656C6C6176;
    case 0xAB:
      v11 = 2003134838;
      goto LABEL_204;
    case 0xAC:
      return 2003134838;
    case 0xAD:
      return 0x736567616C6C6976;
    case 0xAE:
      v19 = 1819044214;
LABEL_114:
      v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x676100000000;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0xAF:
      return 0x656C6C6976;
    case 0xB0:
      v21 = 1953720694;
      return v21 & 0xFFFF0000FFFFFFFFLL | 0x6100000000;
    case 0xB1:
      return 7954807;
    case 0xB2:
      v11 = 1819043191;
LABEL_204:
      result = v11 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 0xB3:
      result = 1819043191;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E64FC@<X0>(uint64_t *a1@<X8>)
{
  result = StreetType.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::StreetType::Suffix_optional __swiftcall StreetType.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetType.Suffix.rawValue.getter()
{
  result = 0x7361456874756F53;
  switch(*v0)
  {
    case 1:
      v2 = 1953656654;
      goto LABEL_9;
    case 2:
      return 1953719639;
    case 3:
      v3 = 1953853267;
      goto LABEL_6;
    case 4:
      v3 = 1953656654;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      v2 = 1953853267;
LABEL_9:
      result = v2 | 0x7365576800000000;
      break;
    case 6:
      result = 1953718597;
      break;
    case 7:
      result = 0x7361456874726F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E672C@<X0>(uint64_t *a1@<X8>)
{
  result = StreetType.Suffix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static StreetType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B173C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 8 && v2 == 8;
  if (v2 != 8 && v3 != 8)
  {

    return sub_1DD3B1754(v2);
  }

  return result;
}

uint64_t sub_1DD5E6898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD5E6958(char a1)
{
  if (a1)
  {
    return 0x786966667573;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD5E6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5E6898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5E69B8(uint64_t a1)
{
  v2 = sub_1DD5E6DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E69F4(uint64_t a1)
{
  v2 = sub_1DD5E6DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB90, &qword_1DD662EA8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E6DA4();
  sub_1DD640EF8();
  v17 = v10;
  v16 = 0;
  sub_1DD5E6DF8();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DD5E6E4C();
    sub_1DD640C08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t StreetType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFBB0, &qword_1DD662EB0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E6DA4();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    sub_1DD5E6EA0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v11 = v18;
    v15 = 1;
    sub_1DD5E6EF4();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E6DA4()
{
  result = qword_1ECCDFB98;
  if (!qword_1ECCDFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB98);
  }

  return result;
}

unint64_t sub_1DD5E6DF8()
{
  result = qword_1ECCDFBA0;
  if (!qword_1ECCDFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBA0);
  }

  return result;
}

unint64_t sub_1DD5E6E4C()
{
  result = qword_1ECCDFBA8;
  if (!qword_1ECCDFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBA8);
  }

  return result;
}

unint64_t sub_1DD5E6EA0()
{
  result = qword_1ECCDFBB8;
  if (!qword_1ECCDFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBB8);
  }

  return result;
}

unint64_t sub_1DD5E6EF4()
{
  result = qword_1ECCDFBC0;
  if (!qword_1ECCDFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBC0);
  }

  return result;
}

unint64_t sub_1DD5E6F4C()
{
  result = qword_1ECCDFBC8;
  if (!qword_1ECCDFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBC8);
  }

  return result;
}

unint64_t sub_1DD5E6FA4()
{
  result = qword_1ECCDFBD0;
  if (!qword_1ECCDFBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDFBD8, &qword_1DD662F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBD0);
  }

  return result;
}

unint64_t sub_1DD5E700C()
{
  result = qword_1ECCDFBE0;
  if (!qword_1ECCDFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreetType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 65288 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65288 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65289;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 9;
  if (v6 < 8)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StreetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65288 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65288 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 16) + 1;
    *result = a2 - 248;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreetType.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x4D)
  {
    if (a2 + 179 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 179) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 180;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB4;
  v5 = v6 - 180;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StreetType.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 179 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 179) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x4D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x4C)
  {
    v6 = ((a2 - 77) >> 8) + 1;
    *result = a2 - 77;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 - 77;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetType.Suffix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5E74EC()
{
  result = qword_1ECCDFBE8;
  if (!qword_1ECCDFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBE8);
  }

  return result;
}

unint64_t sub_1DD5E7544()
{
  result = qword_1ECCDFBF0;
  if (!qword_1ECCDFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBF0);
  }

  return result;
}

unint64_t sub_1DD5E759C()
{
  result = qword_1ECCDFBF8;
  if (!qword_1ECCDFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBF8);
  }

  return result;
}

unint64_t sub_1DD5E75F0()
{
  result = qword_1ECCDFC00;
  if (!qword_1ECCDFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC00);
  }

  return result;
}

unint64_t sub_1DD5E7644()
{
  result = qword_1ECCDFC08;
  if (!qword_1ECCDFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC08);
  }

  return result;
}

uint64_t sub_1DD5E7698(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v12 = result + 40;
LABEL_2:
  v6 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v13;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_20;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = v9 == a2 && v8 == a3;
    if (v10 || (sub_1DD640CD8() & 1) != 0)
    {
      return 2;
    }

    v16 = a2;
    v18 = v9;
    v19 = v8;
    v17 = a3;
    sub_1DD3B7F10();

    if (OUTLINED_FUNCTION_0_140(&v16))
    {

LABEL_15:
      v13 = 1;
      v5 = v12;
      v3 = v7;
      goto LABEL_2;
    }

    v18 = a2;
    v19 = a3;
    v16 = v9;
    v17 = v8;
    v11 = OUTLINED_FUNCTION_0_140(&v16);

    ++v3;
    v6 += 2;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DD5E77D4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

uint64_t sub_1DD5E7828(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, __n128 a3)
{
  v28 = a1;
  v29 = a2;
  v5 = sub_1DD63DAE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v30 = v3;
  sub_1DD63DA58();
  v12 = MEMORY[0x1E69B2880];
  sub_1DD5E9928(&qword_1EE165CB0, MEMORY[0x1E69B2880], MEMORY[0x1E69B2888]);

  sub_1DD640068();
  sub_1DD5E9928(&qword_1EE165CA8, v12, MEMORY[0x1E69B2890]);
  v13 = (v6 + 32);
  v14 = (v6 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
    {

      return v27;
    }

    (*v13)(v8, v11, v5);
    v28(&v30, v8);
    if (v4)
    {
      break;
    }

    (*v14)(v8, v5);
    v15 = v31;
    if (v31)
    {
      v26 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v27 = v20;
      }

      v16 = *(v27 + 16);
      v17 = v16 + 1;
      if (v16 >= *(v27 + 24) >> 1)
      {
        v24 = *(v27 + 16);
        v25 = v16 + 1;
        sub_1DD3BE2A4();
        v16 = v24;
        v17 = v25;
        v27 = v21;
      }

      v18 = v27;
      *(v27 + 16) = v17;
      v19 = v18 + 16 * v16;
      *(v19 + 32) = v26;
      *(v19 + 40) = v15;
    }
  }

  (*v14)(v8, v5);
  v22 = v27;

  return v22;
}

uint64_t sub_1DD5E7B34(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v34 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *(a3 + 16);
  v16 = (a3 + 64);
  v17 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    while (1)
    {
      v18 = *(v16 - 3);
      v19 = *(v16 - 2);
      v20 = *v16;
      v21 = *(v16 - 2);
      v36[0] = *(v16 - 4);
      v36[1] = v18;
      v36[2] = v19;
      v37 = v21;
      v38 = v20;

      v39(v36);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v7, 1, v35) == 1)
      {
        sub_1DD3ADFD0(v7, &qword_1ECCDFC10, &unk_1DD664BA0);
      }

      else
      {
        sub_1DD3C69D0(v7, v14);
        sub_1DD3C69D0(v14, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = OUTLINED_FUNCTION_12();
          sub_1DD3BEC44(v27, v28, v29, v17);
          v17 = v30;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DD3BEC44(v22 > 1, v23 + 1, 1, v17);
          v17 = v31;
        }

        *(v17 + 16) = v23 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD3C69D0(v26, v17 + v24 + *(v25 + 72) * v23);
      }

      v16 += 5;
      if (!--v15)
      {
        return v17;
      }
    }
  }

  return v17;
}

void sub_1DD5E7DC8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(a3 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6)));
      v13 = v12[1];
      v14 = v12[2];
      v27[0] = *v12;
      v27[1] = v13;
      v27[2] = v14;

      a1(&v24, v27);
      if (v3)
      {
        break;
      }

      v15 = v25;
      if (v25)
      {
        v21 = v24;
        v16 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_12();
          sub_1DD3BF1BC();
          v10 = v19;
        }

        v17 = *(v10 + 16);
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1DD3BF1BC();
          v10 = v20;
        }

        *(v10 + 16) = v17 + 1;
        v18 = (v10 + 24 * v17);
        v18[4] = v21;
        v18[5] = v15;
        v18[6] = v16;
      }

      v7 &= v7 - 1;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DD5E7FBC()
{
  OUTLINED_FUNCTION_7_68();
  v4 = (v3 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    while (1)
    {
      v6 = *v4;
      v16[0] = *(v4 - 1);
      v16[1] = v6;

      v1(&v17, v16);
      if (v0)
      {
        break;
      }

      v7 = v17;
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_12();
          sub_1DD3BFB54(v10, v11, v12, v5);
          v5 = v13;
        }

        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1DD3BFB54(v8 > 1, v9 + 1, 1, v5);
          v5 = v14;
        }

        *(v5 + 16) = v9 + 1;
        *(v5 + 8 * v9 + 32) = v7;
      }

      v4 += 2;
      if (!--v2)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1DD5E80D8()
{
  OUTLINED_FUNCTION_7_68();
  v4 = (v3 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    while (1)
    {
      v16 = *v4;

      v1(&v15, &v16);
      if (v0)
      {
        break;
      }

      v6 = v15;
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = OUTLINED_FUNCTION_12();
          sub_1DD3BFB30(v9, v10, v11, v5);
          v5 = v12;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DD3BFB30(v7 > 1, v8 + 1, 1, v5);
          v5 = v13;
        }

        *(v5 + 16) = v8 + 1;
        *(v5 + 8 * v8 + 32) = v6;
      }

      ++v4;
      if (!--v2)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1DD5E81F4(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 32);
  if (v6)
  {
    while (1)
    {
      v11 = *v7;
      v8 = a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1E12B23F0](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();
        v5 = v12;
      }

      ++v7;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

id sub_1DD5E82F0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC18, &qword_1DD6635E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1DD63D8D8();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_74();
  MEMORY[0x1EEE9AC00](v13);
  v27 = &v26 - v14;
  result = sub_1DD3CC020();
  v16 = 0;
  v34 = a3 & 0xC000000000000001;
  v35 = result;
  v33 = a3 & 0xFFFFFFFFFFFFFF8;
  v28 = v11;
  v31 = (v11 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  v29 = a1;
  v30 = a3;
  while (1)
  {
    if (v35 == v16)
    {
      return v17;
    }

    if (v34)
    {
      result = MEMORY[0x1E12B2C10](v16, a3);
    }

    else
    {
      if (v16 >= *(v33 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v16 + 32);
    }

    v18 = result;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v36 = result;
    a1(&v36);
    if (v3)
    {

      return v17;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      result = sub_1DD3ADFD0(v8, &qword_1ECCDFC18, &qword_1DD6635E8);
    }

    else
    {
      v19 = *v31;
      v20 = v27;
      (*v31)(v27, v8, v9);
      v19(v32, v20, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3C05D4();
        v17 = v24;
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_1DD3C05D4();
        v17 = v25;
      }

      *(v17 + 16) = v21 + 1;
      OUTLINED_FUNCTION_18_3();
      result = (v19)(v17 + v22 + *(v23 + 72) * v21, v32, v9);
      a1 = v29;
      a3 = v30;
    }

    ++v16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_1DD5E85CC(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v30 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_74();
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  result = sub_1DD3CC020();
  v13 = result;
  v14 = 0;
  v35 = a3 & 0xC000000000000001;
  v15 = a3 & 0xFFFFFFFFFFFFFF8;
  v16 = MEMORY[0x1E69E7CC0];
  v31 = a3;
  while (1)
  {
    if (v13 == v14)
    {
      return v16;
    }

    if (v35)
    {
      result = MEMORY[0x1E12B2C10](v14, a3);
    }

    else
    {
      if (v14 >= *(v15 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v14 + 32);
    }

    v17 = result;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v36 = result;
    v34(&v36);
    if (v3)
    {

      return v16;
    }

    if (__swift_getEnumTagSinglePayload(v7, 1, v33) == 1)
    {
      result = sub_1DD3ADFD0(v7, &qword_1ECCDFC10, &unk_1DD664BA0);
    }

    else
    {
      v18 = v29;
      sub_1DD3C69D0(v7, v29);
      sub_1DD3C69D0(v18, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = OUTLINED_FUNCTION_12();
        sub_1DD3BEC44(v23, v24, v25, v16);
        v16 = v26;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DD3BEC44(v19 > 1, v20 + 1, 1, v16);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      OUTLINED_FUNCTION_18_3();
      result = sub_1DD3C69D0(v32, v16 + v21 + *(v22 + 72) * v20);
      a3 = v31;
    }

    ++v14;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v6 = a2;
  v7 = a1;
  if (a4)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v18[5] = a1;
    v18[6] = a2;
    v18[7] = 0;
    v18[8] = v8;

    while (1)
    {
      v9 = sub_1DD63FF88();
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      if ((sub_1DD63FD38() & 1) == 0)
      {
        MEMORY[0x1E12B2250](v11, v12);
      }
    }

    v7 = v19;
    v6 = v20;
  }

  else
  {
  }

  if (*v4 && (a3 & 1) != 0)
  {

    sub_1DD63DAF8();

    v16 = MEMORY[0x1EEE9AC00](v15);
    v18[2] = v4;
    v17 = sub_1DD5E7828(sub_1DD5E97BC, v18, v16);
  }

  else
  {
    sub_1DD5E90CC(v7, v6);
    v17 = v13;
  }

  return v17;
}

uint64_t StringTokenizer.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(v6 + 16))(v10, a1, v4, v8);
  if (sub_1DD4F9BB8(v11))
  {
    v12 = 1;
  }

  else
  {
    v15[2] = sub_1DD63D118();
    v15[3] = v13;
    v15[0] = 24938;
    v15[1] = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v12 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v10, v12 & 1, a2);
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_1DD5E8CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringTokenizer(0) + 20);
  v4 = sub_1DD63D168();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DD5E8D74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = 0;
  if (a2)
  {
    (*(v8 + 16))(&v16 - v11, a1, v6, v12);
    sub_1DD63DB18();
    swift_allocObject();
    v13 = sub_1DD63DB08();
  }

  *a3 = v13;
  v14 = type metadata accessor for StringTokenizer(0);
  return (*(v8 + 32))(a3 + *(v14 + 20), a1, v6);
}

void sub_1DD5E90CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v37 = a1;
  v38 = a2;
  v8 = *(type metadata accessor for StringTokenizer(0) + 20);
  v9 = sub_1DD63D168();
  (*(*(v9 - 8) + 16))(v7, v2 + v8, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_1DD3B7F10();
  v10 = sub_1DD640648();
  v12 = v11;
  sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v17 = sub_1DD5E9470(0x7FFFFFFFFFFFFFFFLL, 1, v10, v12);
  v18 = *(v17 + 16);
  if (v18)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v18, 0, v13, v14, v15, v16);
    v19 = 0;
    v20 = v37;
    v21 = (v17 + 56);
    while (v19 < *(v17 + 16))
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;

      v26 = MEMORY[0x1E12B2190](v22, v23, v24, v25);
      v28 = v27;

      v37 = v20;
      v34 = *(v20 + 16);
      v33 = *(v20 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1DD42A2D4(v33 > 1, v34 + 1, 1, v29, v30, v31, v32);
        v20 = v37;
      }

      ++v19;
      *(v20 + 16) = v34 + 1;
      v35 = v20 + 16 * v34;
      *(v35 + 32) = v26;
      *(v35 + 40) = v28;
      v21 += 4;
      if (v18 == v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t sub_1DD5E930C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  result = sub_1DD63DAD8();
  if (result)
  {
    v14[0] = sub_1DD63DAC8();
    v14[1] = v8;
    v9 = *(type metadata accessor for StringTokenizer(0) + 20);
    v10 = sub_1DD63D168();
    (*(*(v10 - 8) + 16))(v6, a1 + v9, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    sub_1DD3B7F10();
    v11 = sub_1DD640648();
    v13 = v12;
    sub_1DD3ADFD0(v6, &qword_1ECCDC3F0, &unk_1DD64AF50);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1DD5E9470(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1DD640058();
    v7 = v26;
    v8 = v27;
    v9 = v28;

    sub_1DD3BE928();
    v12 = v29;
    v4 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_34:
    v5 = v4 + 1;
    if (v4 < v30 >> 1)
    {
LABEL_35:
      *(v12 + 16) = v5;
      v34 = (v12 + 32 * v4);
      v34[4] = v6;
      v34[5] = v7;
      v34[6] = v8;
      v34[7] = v9;
      return v12;
    }

LABEL_38:
    sub_1DD3BE928();
    v12 = v35;
    goto LABEL_35;
  }

  v7 = 4 * v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 15;
  while (1)
  {
    for (i = v13; ; i = sub_1DD63FF18())
    {
      v8 = i >> 14;
      if (i >> 14 == v7)
      {
        goto LABEL_27;
      }

      sub_1DD640038();
      v9 = v15;
      v16 = sub_1DD63FD08();

      if (v16)
      {
        break;
      }
    }

    v18 = (v13 >> 14 == v8) & a2;
    if (v18)
    {
      goto LABEL_19;
    }

    if (v8 < v13 >> 14)
    {
      break;
    }

    v19 = sub_1DD640058();
    v38 = v21;
    v39 = v20;
    v37 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE928();
      v12 = v24;
    }

    v8 = *(v12 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v12 + 24) >> 1)
    {
      sub_1DD3BE928();
      v12 = v25;
    }

    *(v12 + 16) = v9;
    v23 = (v12 + 32 * v8);
    v23[4] = v19;
    v23[5] = v39;
    v23[6] = v38;
    v23[7] = v37;
LABEL_19:
    v13 = sub_1DD63FF18();
    if ((v18 & 1) == 0 && *(v12 + 16) == a1)
    {
LABEL_27:
      if (v13 >> 14 == v7 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v7 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1DD640058();
        v7 = v31;
        v8 = v32;
        v9 = v33;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v4 = *(v12 + 16);
          v30 = *(v12 + 24);
          goto LABEL_34;
        }
      }

      sub_1DD3BE928();
      v12 = v36;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StringTokenizer(uint64_t a1)
{
  result = qword_1EE1665E0;
  if (!qword_1EE1665E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5E984C(uint64_t a1)
{
  sub_1DD5E98D0(319);
  if (v1 <= 0x3F)
  {
    sub_1DD63D168();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5E98D0(uint64_t a1)
{
  if (!qword_1EE1637A8)
  {
    sub_1DD63DB18();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1637A8);
    }
  }
}

uint64_t sub_1DD5E9928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD5E9970@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v29 - v8);
  sub_1DD4BF298(a1, v29 - v8);
  OUTLINED_FUNCTION_0_141(v9[3]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v10)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v11 = v32;
  v9[3] = v31;
  v9[4] = v11;
  OUTLINED_FUNCTION_0_141(v9[7]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v12)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v13 = v32;
  v9[7] = v31;
  v9[8] = v13;
  OUTLINED_FUNCTION_0_141(v9[9]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v14)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v15 = v32;
  v9[9] = v31;
  v9[10] = v15;
  OUTLINED_FUNCTION_0_141(v9[11]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v16)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v17 = v32;
  v9[11] = v31;
  v9[12] = v17;
  OUTLINED_FUNCTION_0_141(v9[5]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v18)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v19 = v32;
  v9[5] = v31;
  v9[6] = v19;
  OUTLINED_FUNCTION_0_141(v9[15]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v20)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v21 = v32;
  v9[15] = v31;
  v9[16] = v21;
  OUTLINED_FUNCTION_0_141(v9[17]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v22)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v23 = v32;
  v9[17] = v31;
  v9[18] = v23;
  OUTLINED_FUNCTION_0_141(v9[19]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v24)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v25 = v32;
  v9[19] = v31;
  v9[20] = v25;
  if ((static ContactQuery.== infix(_:_:)(a1, v9) & 1) != 0 && static ContactResolver.SignalSet.== infix(_:_:)((a1 + *(v7 + 36)), (v9 + *(v7 + 36))))
  {
    sub_1DD5C224C(v9);
    v26 = a4;
    v27 = 1;
  }

  else
  {
    v30[0] = 1;
    swift_setAtWritableKeyPath();
    sub_1DD5C22B4(v9, a4);
    v26 = a4;
    v27 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v7);
}

uint64_t sub_1DD5E9D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69[-v9];
  sub_1DD4BF298(a1, &v69[-v9]);
  v12 = v10[3];
  v11 = v10[4];
  OUTLINED_FUNCTION_0_142();
  if (v13)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v14 = OUTLINED_FUNCTION_4_91();
    v15(v14);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v12 && v2 == v11)
    {

      LOBYTE(v13) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v13) = v12 ^ 1;
    }

    v10[3] = a1;
    v10[4] = v2;
  }

  v69[56] = v13 & 1;
  v18 = v10[5];
  v17 = v10[6];
  OUTLINED_FUNCTION_0_142();
  if (v19)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v20 = OUTLINED_FUNCTION_4_91();
    v21(v20);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v18 && v2 == v17)
    {

      LOBYTE(v19) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v19) = v18 ^ 1;
    }

    v10[5] = a1;
    v10[6] = v2;
  }

  v69[57] = v19 & 1;
  v24 = v10[7];
  v23 = v10[8];
  OUTLINED_FUNCTION_0_142();
  if (v25)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v26 = OUTLINED_FUNCTION_4_91();
    v27(v26);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v24 && v2 == v23)
    {

      LOBYTE(v25) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v25) = v24 ^ 1;
    }

    v10[7] = a1;
    v10[8] = v2;
  }

  v69[58] = v25 & 1;
  v30 = v10[9];
  v29 = v10[10];
  OUTLINED_FUNCTION_0_142();
  if (v31)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v32 = OUTLINED_FUNCTION_4_91();
    v33(v32);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v30 && v2 == v29)
    {

      LOBYTE(v31) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v31) = v30 ^ 1;
    }

    v10[9] = a1;
    v10[10] = v2;
  }

  v69[59] = v31 & 1;
  v36 = v10[11];
  v35 = v10[12];
  OUTLINED_FUNCTION_0_142();
  if (v37)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v38 = OUTLINED_FUNCTION_4_91();
    v39(v38);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v36 && v2 == v35)
    {

      LOBYTE(v37) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v37) = v36 ^ 1;
    }

    v10[11] = a1;
    v10[12] = v2;
  }

  v69[60] = v37 & 1;
  v42 = v10[15];
  v41 = v10[16];
  OUTLINED_FUNCTION_0_142();
  if (v43)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v44 = OUTLINED_FUNCTION_4_91();
    v45(v44);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v42 && v2 == v41)
    {

      LOBYTE(v43) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v43) = v42 ^ 1;
    }

    v10[15] = a1;
    v10[16] = v2;
  }

  v69[61] = v43 & 1;
  v48 = v10[17];
  v47 = v10[18];
  OUTLINED_FUNCTION_0_142();
  if (v49)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v50 = OUTLINED_FUNCTION_4_91();
    v51(v50);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v48 && v2 == v47)
    {

      LOBYTE(v49) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v49) = v48 ^ 1;
    }

    v10[17] = a1;
    v10[18] = v2;
  }

  v69[62] = v49 & 1;
  v54 = v10[19];
  v53 = v10[20];
  OUTLINED_FUNCTION_0_142();
  if (v55)
  {
    OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126();
    v56 = OUTLINED_FUNCTION_4_91();
    v57(v56);
    OUTLINED_FUNCTION_3_95();

    OUTLINED_FUNCTION_5_87();
    v58 = sub_1DD6406C8();
    v60 = v59;
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (v58 == v54 && v60 == v53)
    {

      LOBYTE(v55) = 0;
    }

    else
    {
      v62 = sub_1DD640CD8();

      LOBYTE(v55) = v62 ^ 1;
    }

    v10[19] = v58;
    v10[20] = v60;
  }

  v69[63] = v55 & 1;
  v63 = 32;
  while (v63 != 40)
  {
    v64 = v69[v63++ + 24];
    if (v64)
    {
      v65 = v10 + *(v8 + 36);
      v65[*(type metadata accessor for ContactResolver.SignalSet(0) + 152)] = 1;
      sub_1DD5C22B4(v10, a2);
      v66 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v66, 1, v8);
    }
  }

  v67 = v10 + *(v8 + 36);
  v66 = 1;
  v67[*(type metadata accessor for ContactResolver.SignalSet(0) + 152)] = 1;
  sub_1DD3ADFD0(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
  return __swift_storeEnumTagSinglePayload(a2, v66, 1, v8);
}

uint64_t type metadata accessor for StripDiacriticsQueryExpander(uint64_t a1)
{
  result = qword_1EE160E08;
  if (!qword_1EE160E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5EA474(uint64_t a1)
{
  result = sub_1DD63D168();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_95()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return sub_1DD3B7F10();
}

_BYTE *storeEnumTagSinglePayload for SuggestedContactsFilter(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD5EA5F0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1DD640EA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  *v19 = a1;
  *&v19[8] = a2;
  *&v19[16] = a3;
  v19[26] = BYTE2(a4);
  *&v19[24] = a4;
  v18 = &type metadata for PICSRuntimeMetrics;
  v10 = swift_allocObject();
  v17 = v10;
  v20[0] = *v19;
  v11 = *&v19[11];
  *(v20 + 11) = *&v19[11];
  *(v10 + 16) = *v19;
  *(v10 + 27) = v11;
  sub_1DD5F1244(v20, v16);
  sub_1DD640E88();
  sub_1DD640E98();
  v12 = OUTLINED_FUNCTION_20_35();
  v13(v12);
  sub_1DD395950();
  v14 = sub_1DD63FC88();
  OUTLINED_FUNCTION_25_25(v14);
  OUTLINED_FUNCTION_11_52();
  return v4;
}

uint64_t sub_1DD5EA774()
{
  sub_1DD640EA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v3 = v0[1];
  v14 = *v0;
  v15 = v3;
  v16 = *(v0 + 4);
  v13 = &type metadata for SportsResolverMetrics;
  v4 = swift_allocObject();
  v12 = v4;
  v5 = v0[1];
  v17[0] = *v0;
  v17[1] = v5;
  v18 = *(v0 + 4);
  v6 = v18;
  *(v4 + 16) = v17[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  sub_1DD5F1310(v17, v11);
  sub_1DD640E88();
  sub_1DD640E98();
  v7 = OUTLINED_FUNCTION_40();
  v8(v7);
  sub_1DD395950();
  v9 = sub_1DD63FC88();
  sub_1DD46D298(v9, sub_1DD5F136C);
  OUTLINED_FUNCTION_11_52();
  return v1;
}

uint64_t sub_1DD5EA8F4()
{
  sub_1DD640EA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_10_0();
  memcpy(v10, v0, sizeof(v10));
  v9 = &type metadata for BaseContactResolverMetric;
  v8 = swift_allocObject();
  memcpy(__dst, v0, 0x89uLL);
  memcpy((v8 + 16), v0, 0x89uLL);
  sub_1DD5F14A8(__dst, &v7);
  sub_1DD640E88();
  sub_1DD640E98();
  v2 = OUTLINED_FUNCTION_16_51();
  v3(v2);
  sub_1DD395950();
  v4 = sub_1DD63FC88();
  v5 = OUTLINED_FUNCTION_24_25(v4);

  return v5;
}

uint64_t sub_1DD5EAA80()
{
  sub_1DD640EA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_10_0();
  memcpy(v10, v0, sizeof(v10));
  v9 = &type metadata for CancellableStitcherMetric;
  v8 = swift_allocObject();
  memcpy(__dst, v0, 0x51uLL);
  memcpy((v8 + 16), v0, 0x51uLL);
  sub_1DD5F1520(__dst, &v7);
  sub_1DD640E88();
  sub_1DD640E98();
  v2 = OUTLINED_FUNCTION_16_51();
  v3(v2);
  sub_1DD395950();
  v4 = sub_1DD63FC88();
  v5 = OUTLINED_FUNCTION_24_25(v4);

  return v5;
}

uint64_t sub_1DD5EAC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD640EA8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  *&v20 = a3;
  *(&v20 + 1) = a4;
  v18 = &type metadata for ContactResolverTaskMetrics;
  v10 = swift_allocObject();
  v17 = v10;
  v11 = v20;
  v21[0] = v19;
  v21[1] = v20;
  *(v10 + 16) = v19;
  *(v10 + 32) = v11;
  sub_1DD5F13DC(v21, v16);
  sub_1DD640E88();
  sub_1DD640E98();
  v12 = OUTLINED_FUNCTION_20_35();
  v13(v12);
  sub_1DD395950();
  v14 = sub_1DD63FC88();
  OUTLINED_FUNCTION_25_25(v14);
  OUTLINED_FUNCTION_11_52();
  return v4;
}

uint64_t sub_1DD5EAD78()
{
  v1 = sub_1DD640EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v17[0] = *v0;
  v17[1] = v5;
  v18 = *(v0 + 4);
  v16 = &type metadata for FIASuggestedContactsMetric;
  v6 = swift_allocObject();
  v15 = v6;
  v7 = *v0;
  v19 = v0[1];
  v8 = v19;
  v20 = v7;
  *(v6 + 16) = v7;
  *(v6 + 32) = v8;
  *(v6 + 48) = *(v0 + 4);
  sub_1DD406EC4(&v20, v14);
  sub_1DD406EC4(&v19, v14);
  sub_1DD640E88();
  sub_1DD640E98();
  (*(v2 + 8))(v4, v1);
  sub_1DD395950();
  v9 = sub_1DD63FC88();
  v13 = v17;
  v10 = sub_1DD46D298(v9, sub_1DD5F11D4);

  return v10;
}

uint64_t sub_1DD5EAF24()
{
  OUTLINED_FUNCTION_13_48();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  v11 = &type metadata for ContactResolverSearchMetrics;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v1, 0x58uLL);
  sub_1DD640E88();
  sub_1DD640E98();
  v3 = OUTLINED_FUNCTION_7_70();
  v4(v3);
  sub_1DD395950();
  v13 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v12)
    {

      return v13;
    }

    v5 = OUTLINED_FUNCTION_2_112();
    sub_1DD5EF5D0(v5, v6, v7);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v9, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD5EB0C0()
{
  OUTLINED_FUNCTION_13_48();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  v11 = &unk_1F58B5200;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v1, 0x52uLL);
  sub_1DD640E88();
  sub_1DD640E98();
  v3 = OUTLINED_FUNCTION_7_70();
  v4(v3);
  sub_1DD395950();
  v13 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v12)
    {

      return v13;
    }

    v5 = OUTLINED_FUNCTION_2_112();
    sub_1DD5EFE64(v5, v6, v7);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v9, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}