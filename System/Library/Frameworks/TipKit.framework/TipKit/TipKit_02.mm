uint64_t sub_1A35CFD7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CFD48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A35CFDA8(uint64_t a1)
{
  v2 = sub_1A35CFF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35CFDE4(uint64_t a1)
{
  v2 = sub_1A35CFF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Tips.EmptyDonation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C8, &qword_1A3624E00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35CFF34();
  sub_1A362353C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A35CFF34()
{
  result = qword_1EB0EE4D0;
  if (!qword_1EB0EE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE4D0);
  }

  return result;
}

uint64_t _s13EmptyDonationVwet(unsigned int *a1, int a2)
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

_BYTE *_s13EmptyDonationVwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1A35D00E4()
{
  result = qword_1EB0EE4D8;
  if (!qword_1EB0EE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE4D8);
  }

  return result;
}

unint64_t sub_1A35D013C()
{
  result = qword_1EB0EE4E0;
  if (!qword_1EB0EE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE4E0);
  }

  return result;
}

uint64_t sub_1A35D0190@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_1A3620D6C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = sub_1A3620D7C();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  OUTLINED_FUNCTION_5();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  v23 = *v1;
  v24 = *(v1 + 1);
  (*(v12 + 104))(v15, **(&unk_1E76F2B40 + v23), v10, v20);
  (*(v12 + 32))(v18, v15, v10);
  sub_1A3620D3C();
  sub_1A3620D2C();
  v28 = *(v4 + 8);
  v28(v9, v2);
  (*(v12 + 8))(v18, v10);
  if (__swift_getEnumTagSinglePayload(v22, 1, v2) != 1)
  {
    return (*(v4 + 32))(v29, v22, v2);
  }

  v25 = v27;
  sub_1A3620D3C();
  switch(v23)
  {
    case 1:
      v30 = v24;
      sub_1A35B060C();
      sub_1A362357C();
      break;
    case 2:
      v30 = v24;
      sub_1A35B060C();
      sub_1A362356C();
      break;
    case 3:
      v30 = v24;
      sub_1A35B060C();
      sub_1A362358C();
      break;
    default:
      v30 = v24;
      sub_1A35B060C();
      sub_1A362359C();
      break;
  }

  sub_1A3620D1C();
  v28(v25, v2);
  result = __swift_getEnumTagSinglePayload(v22, 1, v2);
  if (result != 1)
  {
    return sub_1A35D204C(v22);
  }

  return result;
}

uint64_t static Tips.DonationTimeRange.minutes(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1A35D0594(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953066613 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A362345C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1A362345C();

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

uint64_t sub_1A35D0658(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1953066613;
  }
}

uint64_t sub_1A35D06A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35D0594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A35D06F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35CE984();
  *a1 = result;
  return result;
}

uint64_t sub_1A35D0718(uint64_t a1)
{
  v2 = sub_1A35D0B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D0754(uint64_t a1)
{
  v2 = sub_1A35D0B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Tips.DonationTimeRange.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_9();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4E8, &qword_1A3624F20);
  OUTLINED_FUNCTION_3();
  v25 = v24;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v29 - v27;
  v29[1] = *(v19 + 8);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1A35D0B2C();
  sub_1A362353C();
  sub_1A35D0B80();
  sub_1A362340C();
  if (!v20)
  {
    OUTLINED_FUNCTION_6_1();
    sub_1A36233FC();
  }

  (*(v25 + 8))(v28, v23);
  OUTLINED_FUNCTION_8_0();
}

uint64_t Tips.DonationTimeRange.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1A58F3B60](*v0);
  return MEMORY[0x1A58F3B60](v1);
}

uint64_t Tips.DonationTimeRange.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  MEMORY[0x1A58F3B60](v2);
  return sub_1A36234EC();
}

void Tips.DonationTimeRange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_9();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE500, &qword_1A3624F28);
  OUTLINED_FUNCTION_3();
  v28 = v27;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1A35D0B2C();
  sub_1A362352C();
  if (!v19)
  {
    BYTE6(a10) = 0;
    sub_1A35D1ADC();
    sub_1A36233AC();
    v32 = BYTE7(a10);
    OUTLINED_FUNCTION_6_1();
    v33 = sub_1A362339C();
    (*(v28 + 8))(v31, v26);
    *v25 = v32;
    *(v25 + 8) = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_8_0();
}

unint64_t sub_1A35D0B2C()
{
  result = qword_1EB0EE4F0;
  if (!qword_1EB0EE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE4F0);
  }

  return result;
}

unint64_t sub_1A35D0B80()
{
  result = qword_1EB0EE4F8;
  if (!qword_1EB0EE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE4F8);
  }

  return result;
}

uint64_t sub_1A35D0BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574756E696DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1A362345C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1920298856 && a2 == 0xE400000000000000;
    if (v6 || (sub_1A362345C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7954788 && a2 == 0xE300000000000000;
      if (v7 || (sub_1A362345C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1801807223 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1A362345C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1A35D0D30(char a1)
{
  result = 0x6574756E696DLL;
  switch(a1)
  {
    case 1:
      result = 1920298856;
      break;
    case 2:
      result = 7954788;
      break;
    case 3:
      result = 1801807223;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1A35D0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v24;
  a24 = v25;
  v66 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE538, &qword_1A3625218);
  OUTLINED_FUNCTION_3();
  v64 = v30;
  v65 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7();
  v63 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE540, &qword_1A3625220);
  OUTLINED_FUNCTION_3();
  v61 = v34;
  v62 = v33;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7();
  v60 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE548, &qword_1A3625228);
  OUTLINED_FUNCTION_3();
  v58 = v38;
  v59 = v37;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v56 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE550, &qword_1A3625230);
  OUTLINED_FUNCTION_3();
  v57 = v43;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v56 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE558, &qword_1A3625238);
  OUTLINED_FUNCTION_3();
  v49 = v48;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v56 - v51;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1A35D1EA8();
  sub_1A362353C();
  switch(v66)
  {
    case 1:
      OUTLINED_FUNCTION_6_1();
      sub_1A35D1FA4();
      OUTLINED_FUNCTION_5_3(&_s17DonationTimeRangeV21DonationTimeRangeUnitO14HourCodingKeysON, &a12);
      (*(v58 + 8))(v41, v59);
      break;
    case 2:
      a13 = 2;
      sub_1A35D1F50();
      v53 = v60;
      OUTLINED_FUNCTION_5_3(&_s17DonationTimeRangeV21DonationTimeRangeUnitO13DayCodingKeysON, &a13);
      v55 = v61;
      v54 = v62;
      goto LABEL_5;
    case 3:
      a14 = 3;
      sub_1A35D1EFC();
      v53 = v63;
      OUTLINED_FUNCTION_5_3(&_s17DonationTimeRangeV21DonationTimeRangeUnitO14WeekCodingKeysON, &a14);
      v55 = v64;
      v54 = v65;
LABEL_5:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      a11 = 0;
      sub_1A35D1FF8();
      OUTLINED_FUNCTION_5_3(&_s17DonationTimeRangeV21DonationTimeRangeUnitO16MinuteCodingKeysON, &a11);
      (*(v57 + 8))(v46, v42);
      break;
  }

  (*(v49 + 8))(v52, v47);
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_1A35D1174(unsigned __int8 a1)
{
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](a1);
  return sub_1A36234EC();
}

void sub_1A35D11BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9();
  a23 = v25;
  a24 = v26;
  v90 = v24;
  v28 = v27;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE588, &qword_1A3625240);
  OUTLINED_FUNCTION_3();
  v86 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7();
  v88 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE590, &qword_1A3625248);
  OUTLINED_FUNCTION_3();
  v83 = v33;
  v84 = v32;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7();
  v85 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE598, &qword_1A3625250);
  OUTLINED_FUNCTION_3();
  v81 = v37;
  v82 = v36;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v75 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5A0, &qword_1A3625258);
  OUTLINED_FUNCTION_3();
  v80 = v42;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v75 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5A8, &unk_1A3625260);
  OUTLINED_FUNCTION_3();
  v87 = v47;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v75 - v49;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1A35D1EA8();
  v51 = v90;
  sub_1A362352C();
  if (v51)
  {
    goto LABEL_8;
  }

  v77 = v41;
  v78 = v45;
  v79 = v40;
  v52 = v88;
  v53 = v89;
  v90 = v28;
  v54 = v50;
  v55 = sub_1A36233BC();
  sub_1A35D8388(v55, 0);
  if (v57 == v58 >> 1)
  {
LABEL_7:
    v68 = sub_1A36231FC();
    swift_allocError();
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B0, &qword_1A3625DC0);
    *v70 = &_s17DonationTimeRangeV21DonationTimeRangeUnitON;
    sub_1A362337C();
    sub_1A36231EC();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x1E69E6AF8], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v87 + 8))(v54, v46);
    v28 = v90;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_8_0();
    return;
  }

  v76 = 0;
  if (v57 < (v58 >> 1))
  {
    v59 = *(v56 + v57);
    sub_1A35D83D4(v57 + 1);
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    if (v61 == v63 >> 1)
    {
      v64 = v59;
      v66 = v86;
      v65 = v87;
      switch(v64)
      {
        case 1:
          OUTLINED_FUNCTION_6_1();
          sub_1A35D1FA4();
          v71 = v79;
          OUTLINED_FUNCTION_4_1(&_s17DonationTimeRangeV21DonationTimeRangeUnitO14HourCodingKeysON, &a12);
          swift_unknownObjectRelease();
          v73 = v81;
          v72 = v82;
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_1A35D1F50();
          v71 = v85;
          OUTLINED_FUNCTION_4_1(&_s17DonationTimeRangeV21DonationTimeRangeUnitO13DayCodingKeysON, &a13);
          swift_unknownObjectRelease();
          v73 = v83;
          v72 = v84;
LABEL_15:
          (*(v73 + 8))(v71, v72);
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_1A35D1EFC();
          v74 = v76;
          sub_1A362336C();
          if (v74)
          {
            (*(v65 + 8))(v54, v46);
            swift_unknownObjectRelease();
            v28 = v90;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v66 + 8))(v52, v53);
LABEL_16:
          (*(v65 + 8))(v54, v46);
          __swift_destroy_boxed_opaque_existential_1(v90);
          break;
        default:
          a11 = 0;
          sub_1A35D1FF8();
          v67 = v78;
          OUTLINED_FUNCTION_4_1(&_s17DonationTimeRangeV21DonationTimeRangeUnitO16MinuteCodingKeysON, &a11);
          swift_unknownObjectRelease();
          (*(v80 + 8))(v67, v77);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1A35D179C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  MEMORY[0x1A58F3B60](v2);
  return sub_1A36234EC();
}

uint64_t sub_1A35D1834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35D0BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A35D185C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35D0D28();
  *a1 = result;
  return result;
}

uint64_t sub_1A35D1884(uint64_t a1)
{
  v2 = sub_1A35D1EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D18C0(uint64_t a1)
{
  v2 = sub_1A35D1EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D18FC(uint64_t a1)
{
  v2 = sub_1A35D1F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D1938(uint64_t a1)
{
  v2 = sub_1A35D1F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D1974(uint64_t a1)
{
  v2 = sub_1A35D1FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D19B0(uint64_t a1)
{
  v2 = sub_1A35D1FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D19EC(uint64_t a1)
{
  v2 = sub_1A35D1FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D1A28(uint64_t a1)
{
  v2 = sub_1A35D1FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D1A64(uint64_t a1)
{
  v2 = sub_1A35D1EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D1AA0(uint64_t a1)
{
  v2 = sub_1A35D1EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A35D1ADC()
{
  result = qword_1EB0EE508;
  if (!qword_1EB0EE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE508);
  }

  return result;
}

unint64_t sub_1A35D1B34()
{
  result = qword_1EB0EE510;
  if (!qword_1EB0EE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE510);
  }

  return result;
}

uint64_t _s17DonationTimeRangeVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[16])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
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

uint64_t _s17DonationTimeRangeVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

_BYTE *_s17DonationTimeRangeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A35D1D04()
{
  result = qword_1EB0EE518;
  if (!qword_1EB0EE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE518);
  }

  return result;
}

unint64_t sub_1A35D1D5C()
{
  result = qword_1EB0EE520;
  if (!qword_1EB0EE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE520);
  }

  return result;
}

unint64_t sub_1A35D1DFC()
{
  result = qword_1EB0EE528;
  if (!qword_1EB0EE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE528);
  }

  return result;
}

unint64_t sub_1A35D1E54()
{
  result = qword_1EB0EE530;
  if (!qword_1EB0EE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE530);
  }

  return result;
}

unint64_t sub_1A35D1EA8()
{
  result = qword_1EB0EE560;
  if (!qword_1EB0EE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE560);
  }

  return result;
}

unint64_t sub_1A35D1EFC()
{
  result = qword_1EB0EE568;
  if (!qword_1EB0EE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE568);
  }

  return result;
}

unint64_t sub_1A35D1F50()
{
  result = qword_1EB0EE570;
  if (!qword_1EB0EE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE570);
  }

  return result;
}

unint64_t sub_1A35D1FA4()
{
  result = qword_1EB0EE578;
  if (!qword_1EB0EE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE578);
  }

  return result;
}

unint64_t sub_1A35D1FF8()
{
  result = qword_1EB0EE580;
  if (!qword_1EB0EE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE580);
  }

  return result;
}

uint64_t sub_1A35D204C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B8, &unk_1A3625270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1A35D20B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A35D21D4()
{
  result = qword_1EB0EE5C0;
  if (!qword_1EB0EE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5C0);
  }

  return result;
}

unint64_t sub_1A35D222C()
{
  result = qword_1EB0EE5C8;
  if (!qword_1EB0EE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5C8);
  }

  return result;
}

unint64_t sub_1A35D2284()
{
  result = qword_1EB0EE5D0;
  if (!qword_1EB0EE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5D0);
  }

  return result;
}

unint64_t sub_1A35D22DC()
{
  result = qword_1EB0EE5D8;
  if (!qword_1EB0EE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5D8);
  }

  return result;
}

unint64_t sub_1A35D2334()
{
  result = qword_1EB0EE5E0;
  if (!qword_1EB0EE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5E0);
  }

  return result;
}

unint64_t sub_1A35D238C()
{
  result = qword_1EB0EE5E8;
  if (!qword_1EB0EE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5E8);
  }

  return result;
}

unint64_t sub_1A35D23E4()
{
  result = qword_1EB0EE5F0;
  if (!qword_1EB0EE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5F0);
  }

  return result;
}

unint64_t sub_1A35D243C()
{
  result = qword_1EB0EE5F8;
  if (!qword_1EB0EE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE5F8);
  }

  return result;
}

unint64_t sub_1A35D2494()
{
  result = qword_1EB0EE600;
  if (!qword_1EB0EE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE600);
  }

  return result;
}

unint64_t sub_1A35D24EC()
{
  result = qword_1EB0EE608;
  if (!qword_1EB0EE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE608);
  }

  return result;
}

unint64_t sub_1A35D2544()
{
  result = qword_1EB0EE610;
  if (!qword_1EB0EE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE610);
  }

  return result;
}

uint64_t sub_1A35D25B8(char a1)
{
  sub_1A35D274C();
  sub_1A35D27A0();
  v2 = sub_1A36235EC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A35E4F98(0, v3, 0);
    v4 = 32;
    v5 = v17;
    do
    {
      v6 = *(v2 + v4);
      v7 = sub_1A362223C();
      v8 = sub_1A362225C();
      v9 = v8;
      if (v6 != v7)
      {
        v9 = a1;
        if (v6 == v8)
        {
          v9 = sub_1A362223C();
        }
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A35E4F98(v10 > 1, v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + v11 + 32) = v9;
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1A362224C();
  v13 = *(v5 + 16);
  if (v13)
  {
    v14 = (v5 + 32);
    do
    {
      v15 = *v14++;
      sub_1A362224C();
      if (v15 != sub_1A362224C())
      {
        v12 = sub_1A362224C();
      }

      --v13;
    }

    while (v13);
  }

  return v12;
}

unint64_t sub_1A35D274C()
{
  result = qword_1EB0EE1E0;
  if (!qword_1EB0EE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE1E0);
  }

  return result;
}

unint64_t sub_1A35D27A0()
{
  result = qword_1EB0EE190;
  if (!qword_1EB0EE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE190);
  }

  return result;
}

uint64_t Tips.Event.id.getter()
{
  v1 = *(*v0 + 16);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

uint64_t Tips.Event.donations.getter(void *a1)
{
  sub_1A35D3FF0();
  type metadata accessor for Tips.Event.Donation(0, a1[2], a1[3], a1[4]);
  v2 = sub_1A3620FBC();

  if (!v2)
  {
    return sub_1A3622D6C();
  }

  return v2;
}

uint64_t sub_1A35D28F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A3620D6C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3620E2C();
  if (!sub_1A3620E1C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE4C0, &qword_1A36291B0);
    sub_1A3622B1C();
  }

  return sub_1A35CE5C4(v10, a1, a2, a3, a4);
}

uint64_t Tips.Event.init(id:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  _s14descr1F1647EB9C9CoreValueCMa(0, a1, a2, a3);
  v5 = OUTLINED_FUNCTION_0_3();
  result = sub_1A35D40B8(v5, v6);
  *a4 = result;
  return result;
}

uint64_t Tips.Event.init<>(id:donationLimit:)()
{
  OUTLINED_FUNCTION_2_3();
  v2 = *(v1 + 8);
  if (v2 == 4)
  {
    v3 = 0;
  }

  else
  {
    switch(*(v1 + 8))
    {
      case 1:
        sub_1A35B060C();
        sub_1A362357C();
        break;
      case 2:
        sub_1A35B060C();
        sub_1A362356C();
        break;
      case 3:
        sub_1A35B060C();
        sub_1A362358C();
        break;
      default:
        sub_1A35B060C();
        sub_1A362359C();
        break;
    }

    sub_1A362354C();
    v3 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE618, &qword_1A3625648);
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_1_5();
  result = sub_1A35D2D00(v5, v6, v7, v3, v2 == 4);
  *v0 = result;
  return result;
}

uint64_t Tips.Event.init(id:donationLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_3();
  if (*(v10 + 8) != 4)
  {
    switch(*(v10 + 8))
    {
      case 1:
        sub_1A35B060C();
        sub_1A362357C();
        break;
      case 2:
        sub_1A35B060C();
        sub_1A362356C();
        break;
      case 3:
        sub_1A35B060C();
        sub_1A362358C();
        break;
      default:
        sub_1A35B060C();
        sub_1A362359C();
        break;
    }

    sub_1A362354C();
  }

  _s14descr1F1647EB9C9CoreValueCMa(0, a4, a5, a6);
  OUTLINED_FUNCTION_1_5();
  result = sub_1A35D4108();
  *v6 = result;
  return result;
}

uint64_t sub_1A35D2CD8@<X0>(uint64_t *a1@<X8>)
{
  result = Tips.Event.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A35D2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1A362102C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1A362100C();
  (*(v9 + 32))(v5 + qword_1ED823318, v11, v8);
  return v5;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1A35D2EC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A35D2F04(uint64_t result, int a2, int a3)
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

uint64_t Tips.Event.donate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_1A35D2F5C()
{
  OUTLINED_FUNCTION_2_4();
  v1 = v0[4];
  v0[2] = v0[5];
  v0[6] = sub_1A35D27F4();
  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *v2 = v0;
  v2[1] = sub_1A35D3014;
  v6 = v0[3];

  return MEMORY[0x1EEE495D8](v6, v3, v4, v5);
}

uint64_t sub_1A35D3014()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5_1();

  return v3();
}

uint64_t Tips.Event.sendDonation<>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *v2;
  v9 = sub_1A3622E6C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  sub_1A35B5EA0(a1, a2);
  sub_1A35D34A0(0, 0, v7, &unk_1A36256F8, v10);
}

uint64_t sub_1A35D3218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A35D323C, 0, 0);
}

uint64_t sub_1A35D323C()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 40) = sub_1A35C0AB0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1A35D32D8;

  return MEMORY[0x1EEE495D0]();
}

uint64_t sub_1A35D32D8()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A35D3FE8, 0, 0);
}

uint64_t sub_1A35D33E0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_4(v8);
  *v9 = v10;
  v9[1] = sub_1A35D3FEC;

  return sub_1A35D3218(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1A35D34A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1A35D3EE0(a3, v24 - v10);
  v12 = sub_1A3622E6C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1A35A2564(v11);
  }

  else
  {
    sub_1A3622E5C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A3622DFC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A3622BEC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1A35A2564(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A35A2564(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t Tips.Event.sendDonation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v8 = *(a4 + 16);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  v17 = *v4;
  v18 = sub_1A3622E6C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v18);
  (*(v10 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v8;
  *(v20 + 40) = *(a4 + 24);
  *(v20 + 56) = v17;
  (*(v10 + 32))(v20 + v19, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v21 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v25;
  *v21 = a2;
  v21[1] = v22;

  sub_1A35B5EA0(a2, v22);
  sub_1A35D34A0(0, 0, v16, &unk_1A3625708, v20);
}

uint64_t sub_1A35D3938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  v11 = swift_task_alloc();
  v8[5] = v11;
  v12 = type metadata accessor for Tips.Event(0, a8, v15, v16);
  *v11 = v8;
  v11[1] = sub_1A35D3A10;

  return Tips.Event.donate(_:)(a5, v12);
}

uint64_t sub_1A35D3A10()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A35D3AFC, 0, 0);
}

uint64_t sub_1A35D3AFC()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 24);
  if (v1)
  {
    v1();
  }

  OUTLINED_FUNCTION_5_1();

  return v2();
}

uint64_t sub_1A35D3B60(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[7];
  OUTLINED_FUNCTION_1();
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_4(v12);
  *v13 = v14;
  v13[1] = sub_1A35A3334;

  return sub_1A35D3938(a1, v7, v8, v3, v1 + v5, v10, v11, v2);
}

uint64_t Tips.Event.deleteDonations()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_1A35D3CB8()
{
  OUTLINED_FUNCTION_2_4();
  v0[2] = v0[4];
  v0[5] = sub_1A35D27F4();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1A35D3D5C;

  return MEMORY[0x1EEE495C8]();
}

uint64_t sub_1A35D3D5C()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A35D3E84, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v6();
  }
}

uint64_t sub_1A35D3E84()
{
  OUTLINED_FUNCTION_2_4();

  OUTLINED_FUNCTION_5_1();

  return v0();
}

uint64_t sub_1A35D3EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35D3F50()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_2(v1);

  return v4(v3);
}

uint64_t sub_1A35D3FF0()
{
  sub_1A362103C();
  v1 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = v1;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v2 = sub_1A3620FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE628, &unk_1A3625730);
  sub_1A3622AEC();

  v2(v4, 0);
  return v7;
}

uint64_t sub_1A35D40B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A35D4238(a1, a2);
  return v4;
}

uint64_t sub_1A35D4108()
{
  OUTLINED_FUNCTION_0_5();
  v0 = swift_allocObject();
  sub_1A35D4310();
  return v0;
}

uint64_t sub_1A35D4168@<X0>(uint64_t *a2@<X8>)
{
  sub_1A362103C();
  swift_getWitnessTable();
  sub_1A362158C();

  sub_1A362156C();
  result = sub_1A362104C();
  *a2 = result;
  return result;
}

uint64_t sub_1A35D4238(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A362102C();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1A362101C();
  (*(v7 + 32))(v2 + qword_1ED823318, v10, v5);
  return v2;
}

uint64_t sub_1A35D4310()
{
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1A362102C();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1A362100C();
  (*(v5 + 32))(v0 + qword_1ED823318, v8, v3);
  return v0;
}

uint64_t sub_1A35D4400()
{

  v1 = qword_1ED823318;
  v2 = sub_1A362102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A35D4468()
{
  sub_1A35D4400();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A35D44C0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

__n128 Tips.DonationLimit.maximumAge.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 Tips.DonationLimit.init(maximumCount:maximumAge:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s13DonationLimitVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 24))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = *(a1 + 8);
      }

      v5 = v4 - 5;
      if (v3 < 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s13DonationLimitVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1A35D45EC()
{
  sub_1A3620F6C();
  v0 = OUTLINED_FUNCTION_7_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1A35D4628()
{
  sub_1A3620F2C();
  v0 = OUTLINED_FUNCTION_7_0();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1A35D4774@<X0>(unsigned int *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A3620F6C();
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 104))(a2, v3, v4);
  OUTLINED_FUNCTION_6_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void sub_1A35D4904()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  v33 = sub_1A3620F6C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  sub_1A3620F1C();
  OUTLINED_FUNCTION_1();
  v34 = v15;
  v35 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_0();
  v32 = v17 - v16;
  v18 = *(v3 + 32);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_0();
  (*(v22 + 16))(v21 - v20, &v0[*(v3 + 84)], v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE640, &unk_1A3625A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_5();
    sub_1A35A6588(v36, &qword_1EB0EE648, qword_1A36258C8);
    goto LABEL_5;
  }

  v31 = v0;
  sub_1A35A63BC(v36, v37);
  v23 = v38;
  v24 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v24 + 40))(v5, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (!v1)
  {
    v0 = v31;
LABEL_5:
    v25 = v33;
    (*(v7 + 104))(v10, **(&unk_1E76F2B60 + *v0), v33);
    (*(v7 + 32))(v13, v10, v25);
    sub_1A362152C();
    sub_1A362151C();
    v26 = v32;
    sub_1A3620F0C();

    (*(v7 + 8))(v13, v25);
    v27 = *(type metadata accessor for EventPredicateParser(0) + 28);
    sub_1A35D5360(sub_1A35E1AC8);
    v28 = *(*(v5 + v27) + 16);
    sub_1A35D53BC(v28, sub_1A35E1AC8);
    v29 = *(v5 + v27);
    *(v29 + 16) = v28 + 1;
    (*(v34 + 32))(v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v26, v35);
    *(v5 + v27) = v29;
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_1A35D4CC0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A35D4CFC()
{
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1A3620EDC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v8 = *(v4 + 24);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_0();
  (*(v12 + 16))(v11 - v10, v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE640, &unk_1A3625A60);
  if (swift_dynamicCast())
  {
    sub_1A35A63BC(v21, v22);
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v14 + 40))(v6, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v22);
    if (v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    sub_1A35A6588(v21, &qword_1EB0EE648, qword_1A36258C8);
  }

  v15 = (v2 + *(v4 + 60));
  v16 = *v15;
  v17 = *(v15 + 1);
  switch(v16)
  {
    case 1:
      v22[0] = v17;
      sub_1A35B060C();
      sub_1A362357C();
      break;
    case 2:
      v22[0] = v17;
      sub_1A35B060C();
      sub_1A362356C();
      break;
    case 3:
      v22[0] = v17;
      sub_1A35B060C();
      sub_1A362358C();
      break;
    default:
      v22[0] = v17;
      sub_1A35B060C();
      sub_1A362359C();
      break;
  }

  sub_1A3620ECC();
  v18 = (v6 + *(type metadata accessor for EventPredicateParser(0) + 32));
  sub_1A35D5360(sub_1A35E1B04);
  OUTLINED_FUNCTION_5_4();
  v19 = OUTLINED_FUNCTION_2_5();
  v20(v19);
  *v18 = v18;
LABEL_11:
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_1A35D4FF8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D5060(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A35D509C()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  sub_1A3620F1C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_0();
  v10 = *(v6 + 32);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  (*(v14 + 16))(v13 - v12, v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE640, &unk_1A3625A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_5();
    sub_1A35A6588(v21, &qword_1EB0EE648, qword_1A36258C8);
    goto LABEL_5;
  }

  v20 = v3;
  sub_1A35A63BC(v21, v22);
  v16 = v23;
  v15 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v15 + 40))(v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (!v1)
  {
    v3 = v20;
LABEL_5:
    sub_1A362152C();
    sub_1A362151C();
    v3();

    v17 = (v8 + *(type metadata accessor for EventPredicateParser(0) + 28));
    sub_1A35D5360(sub_1A35E1AC8);
    OUTLINED_FUNCTION_5_4();
    v18 = OUTLINED_FUNCTION_2_5();
    v19(v18);
    *v17 = v17;
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_1A35D5324(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D5360(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1A35D53BC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *PredicateExpressions.DonationFilter.evaluate(_:)(uint64_t a1, uint64_t *a2)
{
  result = sub_1A3620BDC();
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for Tips.Event.Donation(255, a2[2], a2[5], a2[6]);
    sub_1A3622D7C();
    swift_getWitnessTable();
    return sub_1A362322C();
  }

  return result;
}

uint64_t sub_1A35D5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v28 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v14;
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = v17;
  v30[3] = v18;
  v30[4] = v19;
  v30[5] = v20;
  v30[6] = v22;
  v30[7] = v21;
  v23 = type metadata accessor for PredicateExpressions.DonationFilter(0, v30);
  sub_1A362152C();
  v24 = sub_1A362151C();
  v25 = type metadata accessor for Tips.Event.Donation(0, a3, v28, a7);
  Tips.Event.Donation.subscript.getter(v24, v25);

  LOBYTE(v23) = sub_1A35D6A7C(v13, a2 + *(v23 + 92), a4);
  (*(v11 + 8))(v13, a4);
  return v23 & 1;
}

uint64_t sub_1A35D56FC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a9 = *a1;
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v18 = type metadata accessor for PredicateExpressions.DonationFilter(0, v22);
  (*(*(a7 - 8) + 32))(&a9[v18[21]], a2, a7);
  v19 = v18[22];
  sub_1A362152C();
  OUTLINED_FUNCTION_5_0();
  (*(v20 + 32))(&a9[v19], a3);
  return (*(*(a6 - 8) + 32))(&a9[v18[23]], a4, a6);
}

void *sub_1A35D5838@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = PredicateExpressions.DonationFilter.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static PredicateExpressions.build_DonationFilter<A, B, C>(_:keyPath:op:value:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v36 = a9;
  v37 = a7;
  v38 = a6;
  v33 = a4;
  v34 = a10;
  v32 = a11;
  v14 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v21 = *v20;
  v22 = sub_1A362152C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v32 - v23;
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_0();
  v28 = v27 - v26;
  v39 = *a3;
  (*(v29 + 16))(v27 - v26, a1, a5);

  sub_1A362153C();
  (*(v16 + 16))(v19, v33, v14);
  *(&v31 + 1) = v34;
  *&v31 = v37;
  return sub_1A35D56FC(&v39, v28, v24, v19, v21, v14, a5, v38, v36, v31, v32, v35);
}

uint64_t PredicateExpressions.DonatedWithin.evaluate(_:)(uint64_t a1, uint64_t a2)
{
  sub_1A3620BDC();
  if (!v3)
  {
    v5 = v2 + *(a2 + 60);
    v6 = *v5;
    v7 = *(v5 + 8);
    v14[0] = v6;
    v15 = v7;
    v16 = v17;
    v8 = *(a2 + 16);
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    type metadata accessor for Tips.Event.Donation(255, v8, v10, v9);
    v11 = sub_1A3622D7C();
    OUTLINED_FUNCTION_0_6();
    WitnessTable = swift_getWitnessTable();
    v2 = Sequence.donatedWithin<A>(_:)(v14, v11, v8, WitnessTable, v10, v9);
  }

  return v2;
}

uint64_t sub_1A35D5B94()
{
  OUTLINED_FUNCTION_3_6();
  v6 = v5;
  v8 = *v7;
  v9 = *(v7 + 1);
  OUTLINED_FUNCTION_5_0();
  (*(v10 + 32))(v6, v12, v11);
  v15 = v4;
  v16 = v3;
  v17 = v2;
  v18 = v1;
  v19 = v0;
  result = type metadata accessor for PredicateExpressions.DonatedWithin(0, &v15);
  v14 = v6 + *(result + 60);
  *v14 = v8;
  *(v14 + 8) = v9;
  return result;
}

uint64_t sub_1A35D5C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PredicateExpressions.DonatedWithin.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t static PredicateExpressions.build_donatedWithin<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_3_0();
  (*(v3 + 16))(v2 - v1, v5, v4);
  return sub_1A35D5B94();
}

uint64_t sub_1A35D5D90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = PredicateExpressions.LargestSubset.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A35D5E20(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_1A3620BDC();
  if (!v4)
  {
    v7 = a2[2];
    sub_1A362152C();
    v8 = sub_1A362151C();
    v9 = a2[5];
    v10 = a2[6];
    type metadata accessor for Tips.Event.Donation(255, v7, v9, v10);
    v11 = sub_1A3622D7C();
    OUTLINED_FUNCTION_0_6();
    WitnessTable = swift_getWitnessTable();
    v3 = a3(v8, v11, WitnessTable, v9, v10, a2[9]);
  }

  return v3;
}

uint64_t sub_1A35D5F28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t (*a11)(void, void *))
{
  OUTLINED_FUNCTION_5_0();
  (*(v19 + 32))(a8);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v24 = a9;
  v25 = a10;
  v20 = *(a11(0, v23) + 92);
  sub_1A362152C();
  OUTLINED_FUNCTION_5_0();
  return (*(v21 + 32))(a8 + v20, a1);
}

uint64_t sub_1A35D6034@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = PredicateExpressions.SmallestSubset.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1A35D6098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void *))
{
  v27 = a6;
  v28 = a8;
  v30 = a5;
  v31 = a7;
  v29 = a4;
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1A362152C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_0();
  (*(v23 + 16))(v22 - v21, a1, a3);

  sub_1A362153C();
  *(&v25 + 1) = a10;
  *&v25 = v28;
  return sub_1A35D5F28(v19, v15, v16, a3, v29, v30, v31, a9, v25, v27, a11);
}

uint64_t sub_1A35D6244(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D6280(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D62BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D62F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D6334(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D6370(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A35D63AC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A362152C();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A35D64A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A35D6520(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFC)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 4)
      {
        return v16 - 3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1A35D6654(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0xFC)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0xFC)
            {
              *v17 = (a2 - 253);
              v17[1] = 0;
            }

            else
            {
              *v17 = a2 + 3;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1A35D687C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A362152C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_13Tm(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[4];
  if (*(*(v4 - 8) + 84) != a2)
  {
    sub_1A362152C();
    a1 = OUTLINED_FUNCTION_4_3();
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = a4[4];
  if (*(*(v5 - 8) + 84) != a3)
  {
    sub_1A362152C();
    a1 = OUTLINED_FUNCTION_4_3();
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v5);
}

uint64_t sub_1A35D6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3620F6C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-v14];
  (*(v8 + 104))(v11, **(&unk_1E76F2B90 + *v3), v6, v13);
  (*(v8 + 32))(v15, v11, v6);
  v20[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  v17 = sub_1A3620F5C();
  (*(v8 + 8))(v15, v6);
  sub_1A35B1500(v20);
  return v17 & 1;
}

uint64_t sub_1A35D6D0C(char a1, uint64_t a2)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000002ELL, 0x80000001A3638E30);
  sub_1A362329C();
  MEMORY[0x1A58F3290](0x6C617620726F6620, 0xEB00000000206575);
  v2 = sub_1A36235FC();
  MEMORY[0x1A58F3290](v2);

  return 0;
}

uint64_t sub_1A35D6E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61757165 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A362345C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61757145746F6ELL && a2 == 0xE800000000000000;
    if (v6 || (sub_1A362345C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1A362345C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6168547373656CLL && a2 == 0xEF6C61757145724FLL;
        if (v8 || (sub_1A362345C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1A362345C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001A3638E10 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1A362345C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A35D7000(char a1)
{
  result = 0x6C61757165;
  switch(a1)
  {
    case 1:
      result = 0x6C61757145746F6ELL;
      break;
    case 2:
    case 3:
      result = 0x6E6168547373656CLL;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A35D70C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35D6E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A35D70F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A35D6FF8();
  *a1 = result;
  return result;
}

uint64_t sub_1A35D7118(uint64_t a1)
{
  v2 = sub_1A35D794C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D7154(uint64_t a1)
{
  v2 = sub_1A35D794C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D7190(uint64_t a1)
{
  v2 = sub_1A35D7B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D71CC(uint64_t a1)
{
  v2 = sub_1A35D7B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D7208(uint64_t a1)
{
  v2 = sub_1A35D79F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D7244(uint64_t a1)
{
  v2 = sub_1A35D79F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D7280(uint64_t a1)
{
  v2 = sub_1A35D79A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D72BC(uint64_t a1)
{
  v2 = sub_1A35D79A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D72F8(uint64_t a1)
{
  v2 = sub_1A35D7A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D7334(uint64_t a1)
{
  v2 = sub_1A35D7A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D7370(uint64_t a1)
{
  v2 = sub_1A35D7A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D73AC(uint64_t a1)
{
  v2 = sub_1A35D7A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35D73E8(uint64_t a1)
{
  v2 = sub_1A35D7AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35D7424(uint64_t a1)
{
  v2 = sub_1A35D7AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredicateExpressions.DonationFilterOperator.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE860, &qword_1A3625D50);
  OUTLINED_FUNCTION_3();
  v52 = v4;
  v53 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  v51 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE868, &qword_1A3625D58);
  OUTLINED_FUNCTION_3();
  v49 = v8;
  v50 = v7;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v48 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE870, &qword_1A3625D60);
  OUTLINED_FUNCTION_3();
  v46 = v12;
  v47 = v11;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7();
  v45 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE878, &qword_1A3625D68);
  OUTLINED_FUNCTION_3();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7();
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE880, &qword_1A3625D70);
  OUTLINED_FUNCTION_3();
  v40 = v20;
  v41 = v19;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE888, &qword_1A3625D78);
  OUTLINED_FUNCTION_3();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v38 - v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE890, &qword_1A3625D80);
  OUTLINED_FUNCTION_3();
  v30 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v38 - v32;
  v34 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35D794C();
  sub_1A362353C();
  switch(v34)
  {
    case 1:
      v55[1] = 1;
      sub_1A35D7AF0();
      v34 = v54;
      sub_1A36233DC();
      (*(v40 + 8))(v23, v41);
      return (*(v30 + 8))(v33, v34);
    case 2:
      v56 = 2;
      sub_1A35D7A9C();
      v28 = v42;
      OUTLINED_FUNCTION_1_6(&_s22DonationFilterOperatorO18LessThanCodingKeysON, &v56);
      v36 = v43;
      v35 = v44;
      goto LABEL_8;
    case 3:
      v57 = 3;
      sub_1A35D7A48();
      v28 = v45;
      OUTLINED_FUNCTION_1_6(&_s22DonationFilterOperatorO25LessThanOrEqualCodingKeysON, &v57);
      v36 = v46;
      v35 = v47;
      goto LABEL_8;
    case 4:
      v58 = 4;
      sub_1A35D79F4();
      v28 = v48;
      OUTLINED_FUNCTION_1_6(&_s22DonationFilterOperatorO21GreaterThanCodingKeysON, &v58);
      v36 = v49;
      v35 = v50;
      goto LABEL_8;
    case 5:
      v59 = 5;
      sub_1A35D79A0();
      v28 = v51;
      OUTLINED_FUNCTION_1_6(&_s22DonationFilterOperatorO28GreaterThanOrEqualCodingKeysON, &v59);
      v36 = v52;
      v35 = v53;
      goto LABEL_8;
    default:
      v55[0] = 0;
      sub_1A35D7B44();
      OUTLINED_FUNCTION_1_6(&_s22DonationFilterOperatorO15EqualCodingKeysON, v55);
      v36 = v38;
      v35 = v39;
LABEL_8:
      (*(v36 + 8))(v28, v35);
      return (*(v30 + 8))(v33, v34);
  }
}

unint64_t sub_1A35D794C()
{
  result = qword_1EB0EE898;
  if (!qword_1EB0EE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE898);
  }

  return result;
}

unint64_t sub_1A35D79A0()
{
  result = qword_1EB0EE8A0;
  if (!qword_1EB0EE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8A0);
  }

  return result;
}

unint64_t sub_1A35D79F4()
{
  result = qword_1EB0EE8A8;
  if (!qword_1EB0EE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8A8);
  }

  return result;
}

unint64_t sub_1A35D7A48()
{
  result = qword_1EB0EE8B0;
  if (!qword_1EB0EE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8B0);
  }

  return result;
}

unint64_t sub_1A35D7A9C()
{
  result = qword_1EB0EE8B8;
  if (!qword_1EB0EE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8B8);
  }

  return result;
}

unint64_t sub_1A35D7AF0()
{
  result = qword_1EB0EE8C0;
  if (!qword_1EB0EE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8C0);
  }

  return result;
}

unint64_t sub_1A35D7B44()
{
  result = qword_1EB0EE8C8;
  if (!qword_1EB0EE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE8C8);
  }

  return result;
}

uint64_t PredicateExpressions.DonationFilterOperator.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

uint64_t PredicateExpressions.DonationFilterOperator.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8D0, &qword_1A3625D88);
  OUTLINED_FUNCTION_3();
  v76 = v3;
  v77 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  v78 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8D8, &qword_1A3625D90);
  OUTLINED_FUNCTION_3();
  v74 = v7;
  v75 = v8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v83 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8E0, &qword_1A3625D98);
  OUTLINED_FUNCTION_3();
  v72 = v12;
  v73 = v11;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7();
  v79 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8E8, &qword_1A3625DA0);
  OUTLINED_FUNCTION_3();
  v70 = v16;
  v71 = v15;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7();
  v82 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8F0, &qword_1A3625DA8);
  OUTLINED_FUNCTION_3();
  v68 = v20;
  v69 = v19;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE8F8, &qword_1A3625DB0);
  OUTLINED_FUNCTION_3();
  v67 = v25;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE900, &qword_1A3625DB8);
  OUTLINED_FUNCTION_3();
  v81 = v30;
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35D794C();
  v34 = v84;
  sub_1A362352C();
  v84 = v34;
  if (v34)
  {
LABEL_12:
    v58 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v63 = v28;
  v62 = v24;
  v64 = v23;
  v65 = a1;
  v35 = v82;
  v36 = v83;
  v37 = v81;
  v66 = v33;
  v38 = sub_1A36233BC();
  result = sub_1A35D838C(v38, 0);
  v43 = v29;
  if (v41 == v42 >> 1)
  {
    v44 = v37;
LABEL_10:
    v53 = sub_1A36231FC();
    v54 = swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE5B0, &qword_1A3625DC0);
    *v56 = &type metadata for PredicateExpressions.DonationFilterOperator;
    v57 = v66;
    sub_1A362337C();
    sub_1A36231EC();
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v53);
    v84 = v54;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v57, v43);
LABEL_11:
    a1 = v65;
    goto LABEL_12;
  }

  if (v41 < (v42 >> 1))
  {
    v45 = *(v40 + v41);
    sub_1A35D83D8(v41 + 1, v42 >> 1, result, v40, v41, v42);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v80;
      v51 = v66;
      switch(v45)
      {
        case 1:
          v86 = 1;
          sub_1A35D7AF0();
          v35 = v64;
          OUTLINED_FUNCTION_2_6(&_s22DonationFilterOperatorO18NotEqualCodingKeysON, &v86);
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v68;
          v60 = v69;
          goto LABEL_25;
        case 2:
          v87 = 2;
          sub_1A35D7A9C();
          OUTLINED_FUNCTION_2_6(&_s22DonationFilterOperatorO18LessThanCodingKeysON, &v87);
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v70;
          v60 = v71;
          goto LABEL_25;
        case 3:
          v88[0] = 3;
          sub_1A35D7A48();
          v35 = v79;
          OUTLINED_FUNCTION_2_6(&_s22DonationFilterOperatorO25LessThanOrEqualCodingKeysON, v88);
          v84 = 0;
          swift_unknownObjectRelease();
          v61 = v72;
          v60 = v73;
          goto LABEL_25;
        case 4:
          v88[1] = 4;
          sub_1A35D79F4();
          v59 = v84;
          sub_1A362336C();
          v84 = v59;
          if (v59)
          {
            (*(v37 + 8))(v51, v29);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v75 + 8))(v36, v74);
LABEL_26:
          (*(v37 + 8))(v51, v29);
          *v50 = v45;
          v58 = v65;
          break;
        case 5:
          v89 = 5;
          sub_1A35D79A0();
          v35 = v78;
          OUTLINED_FUNCTION_2_6(&_s22DonationFilterOperatorO28GreaterThanOrEqualCodingKeysON, &v89);
          v84 = 0;
          swift_unknownObjectRelease();
          v60 = v76;
          v61 = v77;
LABEL_25:
          (*(v61 + 8))(v35, v60);
          goto LABEL_26;
        default:
          v85 = 0;
          sub_1A35D7B44();
          v52 = v63;
          OUTLINED_FUNCTION_2_6(&_s22DonationFilterOperatorO15EqualCodingKeysON, &v85);
          v84 = 0;
          swift_unknownObjectRelease();
          (*(v67 + 8))(v52, v62);
          goto LABEL_26;
      }

      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    v44 = v37;
    v43 = v29;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35D838C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A35D83D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1A35D8458()
{
  result = qword_1EB0EE908;
  if (!qword_1EB0EE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE908);
  }

  return result;
}

uint64_t sub_1A35D84BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1A35D8544(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1A35D8684()
{
  result = qword_1EB0EE910;
  if (!qword_1EB0EE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE910);
  }

  return result;
}

unint64_t sub_1A35D86DC()
{
  result = qword_1EB0EE918;
  if (!qword_1EB0EE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE918);
  }

  return result;
}

unint64_t sub_1A35D8734()
{
  result = qword_1EB0EE920;
  if (!qword_1EB0EE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE920);
  }

  return result;
}

unint64_t sub_1A35D878C()
{
  result = qword_1EB0EE928;
  if (!qword_1EB0EE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE928);
  }

  return result;
}

unint64_t sub_1A35D87E4()
{
  result = qword_1EB0EE930;
  if (!qword_1EB0EE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE930);
  }

  return result;
}

unint64_t sub_1A35D883C()
{
  result = qword_1EB0EE938;
  if (!qword_1EB0EE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE938);
  }

  return result;
}

unint64_t sub_1A35D8894()
{
  result = qword_1EB0EE940;
  if (!qword_1EB0EE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE940);
  }

  return result;
}

unint64_t sub_1A35D88EC()
{
  result = qword_1EB0EE948;
  if (!qword_1EB0EE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE948);
  }

  return result;
}

unint64_t sub_1A35D8944()
{
  result = qword_1EB0EE950;
  if (!qword_1EB0EE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE950);
  }

  return result;
}

unint64_t sub_1A35D899C()
{
  result = qword_1EB0EE958;
  if (!qword_1EB0EE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE958);
  }

  return result;
}

unint64_t sub_1A35D89F4()
{
  result = qword_1EB0EE960;
  if (!qword_1EB0EE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE960);
  }

  return result;
}

unint64_t sub_1A35D8A4C()
{
  result = qword_1EB0EE968;
  if (!qword_1EB0EE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE968);
  }

  return result;
}

unint64_t sub_1A35D8AA4()
{
  result = qword_1EB0EE970;
  if (!qword_1EB0EE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE970);
  }

  return result;
}

unint64_t sub_1A35D8AFC()
{
  result = qword_1EB0EE978;
  if (!qword_1EB0EE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE978);
  }

  return result;
}

unint64_t sub_1A35D8B54()
{
  result = qword_1EB0EE980;
  if (!qword_1EB0EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE980);
  }

  return result;
}

double sub_1A35D8BDC(double a1)
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&qword_1ED81DA40);
  sub_1A35CD844();
  sub_1A3622C7C();
  sub_1A35CD718(&qword_1ED81DA38, MEMORY[0x1E697E3D8]);
  sub_1A3622FEC();
  sub_1A362300C();
  sub_1A3622FFC();
  sub_1A35B220C();
  sub_1A36232BC();
  return v4 + v2 * a1 - a1;
}

double sub_1A35D8D00(uint64_t a1)
{
  sub_1A3621AEC();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2(&qword_1ED81DA40);
  sub_1A35CD8C0();
  sub_1A3622C6C();
  result = v2;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

id sub_1A35D8EBC()
{
  v1 = sub_1A3621CEC();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990, "B~");
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = sub_1A362178C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v14 = *v0;
  v13 = *(v0 + 8);
  v15 = *(v0 + 16);
  v16 = type metadata accessor for Tips.MicaView(0);
  sub_1A35DC300(v0 + *(v16 + 20), v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = v13;
  v35 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v12, v6, v7);
    sub_1A35DC370(v14, v13, v15);
  }

  else
  {
    sub_1A35DC370(v14, v13, v15);
    sub_1A362303C();
    v18 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v31 + 8))(v3, v32);
  }

  v19 = v34;
  if (v15)
  {
    v20 = *(v8 + 104);
    v21 = v35;
    v20(v34, *MEMORY[0x1E697DBB8], v35);
    v22 = v14;
    v23 = sub_1A362177C();
    v24 = *(v8 + 8);
    v24(v19, v21);
    if (v23)
    {
      v24(v12, v21);
      sub_1A35D9A44(v14, v33, 1);
    }

    else
    {

      v20(v19, *MEMORY[0x1E697DBA8], v21);
      v26 = v33;
      v27 = v33;
      v28 = sub_1A362177C();
      v24(v19, v21);
      if (v28)
      {
        v24(v12, v21);
        sub_1A35D9A44(v14, v26, 1);
        return v26;
      }

      else
      {

        v29 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
        v24(v12, v21);
        sub_1A35D9A44(v14, v26, 1);
        return v29;
      }
    }
  }

  else
  {
    (*(v8 + 8))(v12, v35);
  }

  return v14;
}

uint64_t Tips.MicaView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for Tips.MicaView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A35D99E0(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A35D9A9C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_1A35D9B00;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for Tips.MicaView(uint64_t a1)
{
  result = qword_1EB0EE9B8;
  if (!qword_1EB0EE9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A35D941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v5 = type metadata accessor for Tips.MicaView(0);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9E8, &qword_1A3626668);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9F0, &qword_1A3626670);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9F8, &qword_1A3626678);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA00, &qword_1A3626680);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v41 - v14;
  sub_1A3622E3C();
  v49 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_1A35D8EBC();
  if (v15)
  {
    v16 = v15;
    sub_1A362188C();
    v18 = v17;
    v20 = v19;
    sub_1A35D99E0(a2, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = v10;
    v21 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v22 = swift_allocObject();
    sub_1A35D9A9C(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = sub_1A35CDC10(0, &qword_1EB0EEA08, 0x1E6979398);
    v44 = a3;
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v16;
    v25[3] = v18;
    v25[4] = v20;
    v25[5] = sub_1A35DBEC8;
    v25[6] = v22;
    sub_1A362185C();
    sub_1A35D99E0(a2, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = swift_allocObject();
    sub_1A35D9A9C(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v21);
    v27 = &v9[*(v7 + 36)];
    *v27 = sub_1A35DBF30;
    v27[1] = v26;
    v27[2] = 0;
    v27[3] = 0;
    v51 = v16;
    sub_1A35D99E0(a2, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = swift_allocObject();
    sub_1A35D9A9C(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v21);
    v29 = sub_1A35DC0F4();
    v30 = sub_1A35DC1AC();
    v31 = v45;
    v32 = v9;
    v33 = v47;
    sub_1A362266C();

    sub_1A35A6588(v32, &qword_1EB0EE9E8, &qword_1A3626668);
    v34 = v46;
    v35 = v42;
    (*(v46 + 16))(v33, v31, v42);
    swift_storeEnumTagMultiPayload();
    v51 = v7;
    v52 = v24;
    a3 = v44;
    v53 = v29;
    v54 = v30;
    swift_getOpaqueTypeConformance2();
    v36 = v50;
    sub_1A3621F1C();

    (*(v34 + 8))(v31, v35);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v37 = sub_1A35CDC10(255, &qword_1EB0EEA08, 0x1E6979398);
    v38 = sub_1A35DC0F4();
    v39 = sub_1A35DC1AC();
    v51 = v7;
    v52 = v37;
    v53 = v38;
    v54 = v39;
    swift_getOpaqueTypeConformance2();
    v36 = v50;
    sub_1A3621F1C();
  }

  sub_1A35C60EC(v36, a3);
}

uint64_t sub_1A35D99E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.MicaView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A35D9A44(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1A35D9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.MicaView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35D9B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_14(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1A35D941C(a1, v7, a2);
}

void sub_1A35D9B7C()
{
  v1 = v0;
  v2 = type metadata accessor for Tips.MicaView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1A35D8EBC();
  if (v9)
  {
    v41 = v9;
    v10 = [v9 superlayer];
    if (v10)
    {

      v11 = sub_1A35CDA84();
      v12 = sub_1A36208D0();
      v40 = v3;
      if (v12)
      {
        sub_1A36208D8();
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1A58F3850](0, v11);
        }

        else
        {
          v13 = *(v11 + 32);
        }

        v14 = v13;

        v15 = (v1 + v2[8]);
        v17 = *v15;
        v16 = v15[1];
        v43 = *v15;
        v44 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA30, &qword_1A3626690);
        sub_1A362289C();
        v18 = v42;
        if (v42)
        {
        }

        else
        {
          v20 = objc_allocWithZone(MEMORY[0x1E69794D0]);
          v21 = [v20 initWithLayer_];
          v43 = v17;
          v44 = v16;
          v42 = v21;
          sub_1A36228AC();
          v43 = v17;
          v44 = v16;
          sub_1A362289C();
          v22 = v42;
          if (v42)
          {
            v23 = v14;
            sub_1A35CDD5C(v14, v41, 0, v24);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v25 = sub_1A35CDA84();
      v26 = sub_1A35DA268(v25);

      if (v26 >= 2)
      {
        v27 = v1 + v2[7];
        v28 = *v27;
        v29 = *(v27 + 8);
        LOBYTE(v43) = *v27;
        v44 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
        sub_1A362289C();
        if ((v42 & 1) == 0)
        {
          LOBYTE(v43) = v28;
          v44 = v29;
          LOBYTE(v42) = 1;
          sub_1A36228AC();
          v30 = (v1 + v2[6]);
          v31 = *v30;
          v32 = v30[1];
          v43 = *v30;
          v44 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA40, &qword_1A36266A0);
          sub_1A362289C();
          if (v42)
          {
            sub_1A3622F1C();
          }

          v33 = sub_1A3622E6C();
          __swift_storeEnumTagSinglePayload(v8, 1, 1, v33);
          sub_1A35D99E0(v1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1A3622E3C();
          v34 = sub_1A3622E2C();
          v35 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v36 = swift_allocObject();
          v37 = MEMORY[0x1E69E85E0];
          *(v36 + 16) = v34;
          *(v36 + 24) = v37;
          sub_1A35D9A9C(v5, v36 + v35);
          v38 = sub_1A35D34A0(0, 0, v8, &unk_1A36266B0, v36);
          v43 = v31;
          v44 = v32;
          v42 = v38;
          sub_1A36228AC();
        }
      }
    }

    else
    {
      v19 = v41;
    }
  }
}

uint64_t sub_1A35D9FB0(uint64_t a1, uint64_t a2)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35D9B7C();
}

uint64_t Tips.MicaView.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v21 = a1[1];
  v22 = v7;
  v8 = *(a1 + 16);
  v10 = *(v9 + 20);
  *&v6[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990, "B~");
  swift_storeEnumTagMultiPayload();
  v11 = &v6[v3[6]];
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE998, &qword_1A36264B0);
  sub_1A362288C();
  v12 = v26;
  *v11 = v25;
  *(v11 + 1) = v12;
  v13 = &v6[v3[7]];
  LOBYTE(v24) = 0;
  sub_1A362288C();
  v14 = v26;
  *v13 = v25;
  *(v13 + 1) = v14;
  v15 = &v6[v3[8]];
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE9A0, &qword_1A36264B8);
  sub_1A362288C();
  v17 = v25;
  v16 = v26;
  *v15 = v25;
  *(v15 + 1) = v16;
  if (v8 == 255)
  {
    sub_1A35A6588(&v6[v10], &qword_1EB0EE9A8, &qword_1A36264C0);

    return __swift_storeEnumTagSinglePayload(v23, 1, 1, v3);
  }

  else
  {
    v18 = v21;
    *v6 = v22;
    *(v6 + 1) = v18;
    v6[16] = v8 & 1;
    v19 = v23;
    sub_1A35D99E0(v6, v23);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
    return sub_1A35DBB5C(v6);
  }
}

uint64_t sub_1A35DA268(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1A362313C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1A35DA28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_1A3622E3C();
  v4[5] = sub_1A3622E2C();
  v6 = sub_1A3622DFC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A35DA324, v6, v5);
}

uint64_t sub_1A35DA324()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for Tips.MicaView(0) + 28));
  v3 = *v2;
  *(v0 + 81) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 64) = v4;
  *(v0 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
  sub_1A362289C();
  if (*(v0 + 80) == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_2_7(v5);

    return sub_1A35DA60C();
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v7();
  }
}

uint64_t sub_1A35DA41C()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A35DA530, v5, v4);
}

uint64_t sub_1A35DA530()
{
  OUTLINED_FUNCTION_2_4();
  *(v0 + 16) = *(v0 + 81);
  *(v0 + 24) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
  sub_1A362289C();
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_2_7(v1);

    return sub_1A35DA60C();
  }

  else
  {

    OUTLINED_FUNCTION_5_1();

    return v3();
  }
}

uint64_t sub_1A35DA60C()
{
  v1[11] = v0;
  sub_1A3622E3C();
  v1[12] = sub_1A3622E2C();
  v3 = sub_1A3622DFC();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A35DA6A4, v3, v2);
}

uint64_t sub_1A35DA6A4()
{
  v1 = sub_1A35D8EBC();
  *(v0 + 120) = v1;
  if (!v1)
  {

    goto LABEL_32;
  }

  *(v0 + 128) = sub_1A35CDA84();
  v2 = sub_1A36208D0();
  v4 = 0;
  *(v0 + 136) = v2;
  for (i = 1; ; i = 0)
  {
    v6 = *(v0 + 128);
    if (v4 == v2)
    {
      v17 = *(v0 + 120);

      goto LABEL_31;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A58F3850](v4);
    }

    else
    {
      if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x1EEE499D0](v3);
      }

      v7 = *(v6 + 8 * v4 + 32);
    }

    v8 = v7;
    *(v0 + 144) = v7;
    *(v0 + 152) = v4 + 1;
    v9 = type metadata accessor for Tips.MicaView(0);
    OUTLINED_FUNCTION_3_7(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
    sub_1A362289C();
    if (*(v0 + 168) != 1)
    {
      v17 = *(v0 + 120);

LABEL_31:

LABEL_32:
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_7_1();

      __asm { BRAA            X1, X16 }
    }

    if ((i & 1) == 0)
    {
      goto LABEL_37;
    }

    *(v0 + 48) = *(*(v0 + 88) + *(v9 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA30, &qword_1A3626690);
    sub_1A362289C();
    v10 = *(v0 + 80);
    if (v10)
    {
      v11 = [*(v0 + 80) stateOfLayer_];
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_1A35CDA84();
    v13 = v12;
    if (v12 >> 62)
    {
      break;
    }

    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1A58F3850](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;

    if (v11)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      sub_1A35CDC10(0, &qword_1EB0EE418, 0x1E69794B8);
      v16 = sub_1A36230AC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v15)
    {
      goto LABEL_36;
    }

LABEL_26:

    v2 = *(v0 + 136);
    v4 = 1;
  }

  if (sub_1A362313C())
  {
    goto LABEL_14;
  }

LABEL_25:

  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_35:
  v15 = v11;
LABEL_36:

LABEL_37:
  *(v0 + 32) = *(*(v0 + 88) + *(v9 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA30, &qword_1A3626690);
  sub_1A362289C();
  v20 = *(v0 + 64);
  if (v20)
  {
    v21 = *(v0 + 120);
    v22 = v8;
    sub_1A35CDD5C(v8, v21, 1, v23);
  }

  *(v0 + 72) = 1;
  sub_1A35B060C();
  sub_1A3622FAC();
  v24 = swift_task_alloc();
  *(v0 + 160) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_1_8(v24);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE499D0](v3);
}

uint64_t sub_1A35DAA30()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  if (v0)
  {

    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1A35DC3B0;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1A35DAB4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A35DAB4C()
{
  for (i = *(v0 + 152); ; i = 1)
  {
    v3 = *(v0 + 128);
    if (i == *(v0 + 136))
    {
      v14 = *(v0 + 120);

      goto LABEL_30;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A58F3850](i);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v4 = *(v3 + 8 * i + 32);
    }

    v5 = v4;
    *(v0 + 144) = v4;
    *(v0 + 152) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return MEMORY[0x1EEE499D0](v1);
    }

    v6 = type metadata accessor for Tips.MicaView(0);
    OUTLINED_FUNCTION_3_7(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38, &qword_1A3626698);
    sub_1A362289C();
    if (*(v0 + 168) != 1)
    {
      v14 = *(v0 + 120);

LABEL_30:

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_7_1();

      __asm { BRAA            X1, X16 }
    }

    if (i)
    {
      goto LABEL_35;
    }

    *(v0 + 48) = *(*(v0 + 88) + *(v6 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA30, &qword_1A3626690);
    sub_1A362289C();
    v7 = *(v0 + 80);
    if (v7)
    {
      v8 = [*(v0 + 80) stateOfLayer_];
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_1A35CDA84();
    v10 = v9;
    if (v9 >> 62)
    {
      break;
    }

    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1A58F3850](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v11 = *(v10 + 32);
    }

    v12 = v11;

    if (v8)
    {
      if (!v12)
      {
        goto LABEL_33;
      }

      sub_1A35CDC10(0, &qword_1EB0EE418, 0x1E69794B8);
      v13 = sub_1A36230AC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v12)
    {
      goto LABEL_34;
    }

LABEL_26:
  }

  if (sub_1A362313C())
  {
    goto LABEL_14;
  }

LABEL_25:

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_33:
  v12 = v8;
LABEL_34:

LABEL_35:
  *(v0 + 32) = *(*(v0 + 88) + *(v6 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA30, &qword_1A3626690);
  sub_1A362289C();
  v17 = *(v0 + 64);
  if (v17)
  {
    v18 = *(v0 + 120);
    v19 = v5;
    sub_1A35CDD5C(v5, v18, 1, v20);
  }

  *(v0 + 72) = 1;
  sub_1A35B060C();
  sub_1A3622FAC();
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_1_8(v21);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE499D0](v1);
}

id static Tips.MicaView.Asset.layer(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

id static Tips.MicaView.Asset.layers(lightMode:darkMode:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  v3 = a1;

  return a2;
}

void static Tips.MicaView.Asset.url(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3620CEC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35CDC10(0, &qword_1EB0EE9B0, 0x1E6979400);
  (*(v6 + 16))(v9, a1, v4);
  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4();
  v14 = sub_1A35DB040(v10, v11, v12, v13);
  if (v14)
  {
    v16 = sub_1A35DB208(v14);
    v15 = -1;
    if (v18 == -1)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      v15 = v18 & 1;
      *a2 = v16;
      *(a2 + 8) = v17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
  }

  *(a2 + 16) = v15;
}

id sub_1A35DB040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A3620CBC();
  v7 = sub_1A3622B5C();

  if (a4)
  {
    v8 = sub_1A3622ADC();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1A3620CEC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1A3620C6C();

    swift_willThrow();
    v15 = sub_1A3620CEC();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_1A35DB208(void *a1)
{
  v2 = [a1 rootLayer];
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    [a1 isGeometryFlipped];
    sub_1A362154C();

    return v5;
  }

  else
  {

    return 0;
  }
}

void static Tips.MicaView.Asset.urls(lightMode:darkMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A3620CEC();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30[-v13];
  sub_1A35CDC10(0, &qword_1EB0EE9B0, 0x1E6979400);
  v15 = *(v8 + 16);
  v15(v14, a1, v6);
  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4();
  v20 = sub_1A35DB040(v16, v17, v18, v19);
  if (!v20)
  {
    goto LABEL_4;
  }

  v15(v11, a2, v6);
  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_6_4();
  v25 = sub_1A35DB040(v21, v22, v23, v24);
  if (!v25)
  {

LABEL_4:
    OUTLINED_FUNCTION_12_0();
    goto LABEL_5;
  }

  v27 = sub_1A35DB490(v20, v25);
  v26 = -1;
  if (v29 == -1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v26 = v29 & 1;
    *a3 = v27;
    *(a3 + 8) = v28;
  }

LABEL_5:
  *(a3 + 16) = v26;
}

uint64_t sub_1A35DB490(void *a1, void *a2)
{
  v4 = [a1 rootLayer];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [a2 rootLayer];
  if (!v6)
  {

LABEL_5:
    return 0;
  }

  v7 = v6;
  swift_getKeyPath();
  [a1 isGeometryFlipped];
  sub_1A362154C();

  v8 = v10;
  swift_getKeyPath();
  [a2 isGeometryFlipped];
  sub_1A362154C();

  return v8;
}

void static Tips.MicaView.Asset.asset(_:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  objc_allocWithZone(MEMORY[0x1E69DB798]);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v8 = sub_1A35DBBB8(a1, a2, a3);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = sub_1A35CDC10(0, &qword_1EB0EE9B0, 0x1E6979400);
  v11 = [v9 data];
  v12 = sub_1A3620D0C();
  v14 = v13;

  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  v17 = sub_1A35DB720(v12, v14, v15, v16, 0);
  if (!v17)
  {

LABEL_4:
    OUTLINED_FUNCTION_12_0();
LABEL_5:
    *(a4 + 16) = v18;
    return;
  }

  sub_1A35DB208(v17);
  OUTLINED_FUNCTION_11_3();
  v20 = v14 & ~v19;

  if (v20)
  {
    v18 = v12 & 1;
    *a4 = v10;
    *(a4 + 8) = 0;
    goto LABEL_5;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v14;
}

id sub_1A35DB720(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1A3620CFC();
  v9 = sub_1A3622B5C();

  if (a5)
  {
    v10 = sub_1A3622ADC();
  }

  else
  {
    v10 = 0;
  }

  v15[0] = 0;
  v11 = [swift_getObjCClassFromMetadata() packageWithData:v8 type:v9 options:v10 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_1A3620C6C();

    swift_willThrow();
  }

  sub_1A35BD2FC(a1, a2);
  return v11;
}

void static Tips.MicaView.Asset.assets(lightMode:darkMode:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  objc_allocWithZone(MEMORY[0x1E69DB798]);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v12 = a5;
  v13 = sub_1A35DBBB8(a1, a2, v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  v38 = a3;
  v15 = sub_1A35CDC10(0, &qword_1EB0EE9B0, 0x1E6979400);
  v16 = [v14 data];
  v17 = sub_1A3620D0C();
  v19 = v18;

  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  v22 = sub_1A35DB720(v17, v19, v20, v21, 0);
  v23 = v22;
  if (!v22)
  {
    goto LABEL_3;
  }

  v25 = objc_allocWithZone(MEMORY[0x1E69DB798]);
  v26 = v12;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v27 = sub_1A35DBBB8(v38, a4, v26);
  if (!v27)
  {

    goto LABEL_4;
  }

  v28 = v27;
  v29 = [v27 data];
  v30 = sub_1A3620D0C();
  v32 = v31;

  sub_1A3622B8C();
  OUTLINED_FUNCTION_4_4();
  v35 = sub_1A35DB720(v30, v32, v33, v34, 0);
  if (!v35)
  {

LABEL_3:
    v23 = v14;
LABEL_4:

LABEL_5:
    OUTLINED_FUNCTION_12_0();
LABEL_6:
    *(a6 + 16) = v24;
    return;
  }

  sub_1A35DB490(v23, v35);
  OUTLINED_FUNCTION_11_3();
  v37 = v15 & ~v36;

  if (v37)
  {
    v24 = v23 & 1;
    *a6 = v15;
    *(a6 + 8) = 0;
    goto LABEL_6;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = v15;
}

uint64_t sub_1A35DBA94(uint64_t a1)
{
  v2 = sub_1A362178C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A3621B7C();
}

uint64_t sub_1A35DBB5C(uint64_t a1)
{
  v2 = type metadata accessor for Tips.MicaView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A35DBBB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A3622B5C();

  v6 = [v3 initWithName:v5 bundle:a3];

  return v6;
}

void sub_1A35DBC60(uint64_t a1)
{
  sub_1A35DBD54(319);
  if (v1 <= 0x3F)
  {
    sub_1A35DBDAC(319, &qword_1ED81EA70, &qword_1EB0EE998, &qword_1A36264B0);
    if (v2 <= 0x3F)
    {
      sub_1A35C52D4();
      if (v3 <= 0x3F)
      {
        sub_1A35DBDAC(319, &qword_1EB0EE9D0, &qword_1EB0EE9A0, &qword_1A36264B8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A35DBD54(uint64_t a1)
{
  if (!qword_1EB0EE9C8)
  {
    sub_1A362178C();
    v1 = sub_1A36217AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB0EE9C8);
    }
  }
}

void sub_1A35DBDAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1A36228CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A35DBE1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1A35DBE5C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1A35DBEC8()
{
  v0 = type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_14(v0);
  sub_1A35D9B7C();
}

uint64_t objectdestroyTm()
{
  type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v3 + 16) & ~v3;
  v7 = v1 + v6;
  sub_1A35D9A44(*(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16));
  v8 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990, "B~");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A362178C();
    OUTLINED_FUNCTION_0_0();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v6 + v5, v3 | 7);
}

uint64_t sub_1A35DC094(uint64_t a1)
{
  v3 = type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_14(v3);
  return sub_1A35D9FB0(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

unint64_t sub_1A35DC0F4()
{
  result = qword_1EB0EEA10;
  if (!qword_1EB0EEA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE9E8, &qword_1A3626668);
    sub_1A35A9B30(&qword_1EB0EEA18, &qword_1EB0EEA20, &qword_1A3626688, MEMORY[0x1E697E030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEA10);
  }

  return result;
}

unint64_t sub_1A35DC1AC()
{
  result = qword_1EB0EEA28;
  if (!qword_1EB0EEA28)
  {
    sub_1A35CDC10(255, &qword_1EB0EEA08, 0x1E6979398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEA28);
  }

  return result;
}

uint64_t sub_1A35DC214(uint64_t a1)
{
  v4 = type metadata accessor for Tips.MicaView(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A35C1718;

  return sub_1A35DA28C(a1, v7, v8, v1 + v6);
}

uint64_t sub_1A35DC300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE990, "B~");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A35DC370(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t MiniTipViewStyle.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A362178C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1A35DC408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48, &qword_1A36266C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35DC478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TipViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35B63C8(a1, v8);
  sub_1A360344C(v8, a3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA50, &qword_1A36266C8);
  sub_1A35DCB74(a2, a3 + *(v9 + 36));
}

uint64_t sub_1A35DC5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35B63C8(a1, a3);
  v6 = type metadata accessor for MiniTipView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA70, &qword_1A3626750);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v6[7];
  sub_1A362288C();
  *v9 = v12;
  *(v9 + 8) = v13;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA58, &qword_1A36266D0);
  sub_1A35DCB74(a2, a3 + *(v10 + 36));
}

unint64_t sub_1A35DC728()
{
  result = qword_1ED81E1D0;
  if (!qword_1ED81E1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEA50, &qword_1A36266C8);
    sub_1A35B6380(qword_1ED81E540, type metadata accessor for MiniTipSolariumView, &unk_1A3629B04);
    sub_1A35DC7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1D0);
  }

  return result;
}

unint64_t sub_1A35DC7E4()
{
  result = qword_1ED81E0E0;
  if (!qword_1ED81E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEA60, &qword_1A36266D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E0E0);
  }

  return result;
}

unint64_t sub_1A35DC848()
{
  result = qword_1ED81E1C8;
  if (!qword_1ED81E1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEA58, &qword_1A36266D0);
    sub_1A35B6380(qword_1ED81E9D0, type metadata accessor for MiniTipView, &unk_1A362955C);
    sub_1A35DC7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1C8);
  }

  return result;
}

void sub_1A35DC92C(uint64_t a1)
{
  sub_1A35DC998(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A35DC998(uint64_t a1)
{
  if (!qword_1ED81E6F8)
  {
    sub_1A362178C();
    v1 = sub_1A36230DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED81E6F8);
    }
  }
}

unint64_t sub_1A35DC9F0()
{
  result = qword_1ED81E0A0;
  if (!qword_1ED81E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EEA68, &qword_1A3626718);
    sub_1A35DC728();
    sub_1A35DC848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E0A0);
  }

  return result;
}

uint64_t sub_1A35DCAAC(uint64_t a1, double a2)
{
  v3 = sub_1A3621A2C();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1A3621BAC();
}

uint64_t sub_1A35DCB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48, &qword_1A36266C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A35DCBE8()
{
  v8[1] = *MEMORY[0x1E69E9840];
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  canShowWhileLockedSbyF_0 = _s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();
  result = [objc_opt_self() defaultWorkspace];
  v2 = result;
  if (canShowWhileLockedSbyF_0)
  {
    if (result)
    {
      v3 = sub_1A3620CBC();
      [v2 openSensitiveURL:v3 withOptions:0];

      goto LABEL_9;
    }

    __break(1u);
  }

  else if (result)
  {
    v4 = sub_1A3620CBC();
    v8[0] = 0;
    v3 = [v2 openURL:v4 configuration:0 error:v8];

    if (!v3)
    {
      v6 = v8[0];
      v7 = sub_1A3620C6C();

      swift_willThrow();
      goto LABEL_10;
    }

    v5 = v8[0];
LABEL_9:

LABEL_10:
    sub_1A36218EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35DCE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v7);
  type metadata accessor for Tips.Parameter(0, v4, v5, v6);
  return Tips.Parameter.wrappedValue.setter(v9);
}

void (*Tips.Parameter.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_0_8();
  Tips.Parameter.wrappedValue.getter();
  return sub_1A35DCFE8;
}

void sub_1A35DCFE8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    Tips.Parameter.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Tips.Parameter.wrappedValue.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Tips.Parameter.init<A>(_:_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = sub_1A35DD2CC(a1, a3);
  v13 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = sub_1A35A133C(v12, v14, a2, a3, v13, a4, a5);

  *a6 = v15;
  v16 = type metadata accessor for Tips.Parameter(0, v13, a4, a5);
  sub_1A35A57D0(v16);
  sub_1A35A58E0();

  OUTLINED_FUNCTION_5_0();
  v18 = *(v17 + 8);

  return v18(a2, v13);
}

uint64_t sub_1A35DD1F4@<X0>(uint64_t *a1@<X8>)
{
  result = Tips.Parameter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Tips.ParameterOption.id(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &unk_1F164A298;
  a3[4] = sub_1A35DD278();
  *a3 = a1;
  a3[1] = a2;

  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

unint64_t sub_1A35DD278()
{
  result = qword_1EB0EEA78;
  if (!qword_1EB0EEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEA78);
  }

  return result;
}

uint64_t sub_1A35DD2CC(uint64_t *a1, uint64_t a2)
{
  sub_1A3622D4C();
  OUTLINED_FUNCTION_10_0();
  swift_getMetatypeMetadata();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_5(v2);
  if (v6[1])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_8();
    v3 = OUTLINED_FUNCTION_6();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_8();
    v4 = sub_1A3622BBC();
    MEMORY[0x1A58F3290](v4);

    MEMORY[0x1A58F3290](45, 0xE100000000000000);
    v3 = sub_1A36230FC();
  }

  MEMORY[0x1A58F3290](v3);

  return v6[4];
}

uint64_t sub_1A35DD468(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1A35F38A4(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A35DD4B8(uint64_t a1)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x6574656D61726150, 0xEE00203A64692872);
  MEMORY[0x1A58F3290](*(a1 + 24), *(a1 + 32));
  MEMORY[0x1A58F3290](0xD000000000000023, 0x80000001A3638F80);
  return 0;
}

uint64_t sub_1A35DD554(uint64_t a1)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0x6574656D61726150, 0xEE00203A64692872);
  MEMORY[0x1A58F3290](*(a1 + 24), *(a1 + 32));
  MEMORY[0x1A58F3290](0xD000000000000025, 0x80000001A3638F50);
  return 0;
}

void *sub_1A35DD5F0()
{

  sub_1A35A5074(*(v0 + 56));
  return v0;
}

uint64_t sub_1A35DD628()
{
  sub_1A35DD5F0();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1A35DD65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE49500](a1, WitnessTable);
}

uint64_t sub_1A35DD6B0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t sub_1A35DD6E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAA8, &qword_1A3626B80);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35DDE3C();
  sub_1A362353C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1A35DD818(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A362345C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A35DD8B0()
{
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](0);
  return sub_1A36234EC();
}

uint64_t sub_1A35DD900(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAC8, &unk_1A3626B90);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35DDE90();
  sub_1A362353C();
  sub_1A36233EC();
  return (*(v6 + 8))(v9, v4);
}

void *sub_1A35DDA34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAB8, &qword_1A3626B88);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A35DDE90();
  sub_1A362352C();
  if (!v1)
  {
    v9 = sub_1A362338C();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1A35DDB84(uint64_t a1)
{
  v2 = sub_1A35DDE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35DDBC0(uint64_t a1)
{
  v2 = sub_1A35DDE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A35DDC38()
{
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](0);
  return sub_1A36234EC();
}

uint64_t sub_1A35DDC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A35DD818(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A35DDCA8(uint64_t a1)
{
  v2 = sub_1A35DDE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A35DDCE4(uint64_t a1)
{
  v2 = sub_1A35DDE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A35DDD20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A35DDA34(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1A35DDD94()
{
  result = qword_1EB0EEA98;
  if (!qword_1EB0EEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEA98);
  }

  return result;
}

unint64_t sub_1A35DDDE8()
{
  result = qword_1EB0EEAA0;
  if (!qword_1EB0EEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAA0);
  }

  return result;
}

unint64_t sub_1A35DDE3C()
{
  result = qword_1EB0EEAB0;
  if (!qword_1EB0EEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAB0);
  }

  return result;
}

unint64_t sub_1A35DDE90()
{
  result = qword_1EB0EEAC0;
  if (!qword_1EB0EEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAC0);
  }

  return result;
}

_BYTE *_s11ParameterIDV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1A35DDFAC()
{
  result = qword_1EB0EEAD0;
  if (!qword_1EB0EEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAD0);
  }

  return result;
}

unint64_t sub_1A35DE004()
{
  result = qword_1EB0EEAD8;
  if (!qword_1EB0EEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAD8);
  }

  return result;
}

unint64_t sub_1A35DE05C()
{
  result = qword_1EB0EEAE0;
  if (!qword_1EB0EEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAE0);
  }

  return result;
}

unint64_t sub_1A35DE0B4()
{
  result = qword_1EB0EEAE8;
  if (!qword_1EB0EEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAE8);
  }

  return result;
}

unint64_t sub_1A35DE10C()
{
  result = qword_1EB0EEAF0;
  if (!qword_1EB0EEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEAF0);
  }

  return result;
}

uint64_t sub_1A35DE188(char a1, double a2, double a3, double a4, double a5, double a6)
{
  switch(a1)
  {
    case 1:
      v186.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v186);
      v187.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v187);
      sub_1A362237C();
      v188.origin.x = OUTLINED_FUNCTION_0_11();
      v109 = CGRectGetMaxX(v188) - a6 * 0.631494;
      v189.origin.x = OUTLINED_FUNCTION_0_11();
      v102 = a6 * 0.0749114 + CGRectGetMinY(v189);
      v190.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v190);
      OUTLINED_FUNCTION_4_6();
      v79 = v77 - v78;
      v191.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v191);
      v192.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v192);
      OUTLINED_FUNCTION_3_9();
      v193.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v193);
      v81.n128_f64[0] = v102;
      v80.n128_f64[0] = v109;
      v82.n128_f64[0] = v79;
      OUTLINED_FUNCTION_2_9(v80, v81, v82, v83, v84);
      v194.origin.x = OUTLINED_FUNCTION_0_11();
      *&v116 = CGRectGetMaxX(v194) - a6 * 0.0749114;
      v195.origin.x = OUTLINED_FUNCTION_0_11();
      *&v122 = a6 * 0.631494 + CGRectGetMinY(v195);
      v196.origin.x = OUTLINED_FUNCTION_0_11();
      *&v110 = CGRectGetMaxX(v196) - a6 * 0.372824;
      v197.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v197);
      v198.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v198);
      v199.origin.x = OUTLINED_FUNCTION_0_11();
      v85.n128_f64[0] = CGRectGetMinY(v199);
      OUTLINED_FUNCTION_1_9(v85, v94, v95, v96, v97, v86, v87, v88, v89, v90, v91, v92, v93, *&v102, v110, v116, v122);
      v200.origin.x = OUTLINED_FUNCTION_0_11();
      MaxX = CGRectGetMaxX(v200);
      v201.origin.x = OUTLINED_FUNCTION_0_11();
      v55 = a6 * 1.52866 + CGRectGetMinY(v201);
      v202.origin.x = OUTLINED_FUNCTION_0_11();
      MinX = CGRectGetMaxX(v202);
      v203.origin.x = OUTLINED_FUNCTION_0_11();
      v57 = v123 + CGRectGetMinY(v203);
      v204.origin.x = OUTLINED_FUNCTION_0_11();
      v58 = CGRectGetMaxX(v204);
      v205.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v205);
      goto LABEL_7;
    case 2:
      v146.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v146);
      v147.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v147);
      sub_1A362237C();
      v148.origin.x = OUTLINED_FUNCTION_0_11();
      v105 = a6 * 0.631494 + CGRectGetMinX(v148);
      v149.origin.x = OUTLINED_FUNCTION_0_11();
      v100 = CGRectGetMaxY(v149) - a6 * 0.0749114;
      v150.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v150);
      OUTLINED_FUNCTION_4_6();
      v36 = v35 + v34;
      v151.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v151);
      v152.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v152);
      OUTLINED_FUNCTION_3_9();
      v153.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v153);
      v38.n128_f64[0] = v100;
      v37.n128_f64[0] = v105;
      v39.n128_f64[0] = v36;
      OUTLINED_FUNCTION_2_9(v37, v38, v39, v40, v41);
      v154.origin.x = OUTLINED_FUNCTION_0_11();
      *&v113 = a6 * 0.0749114 + CGRectGetMinX(v154);
      v155.origin.x = OUTLINED_FUNCTION_0_11();
      *&v119 = CGRectGetMaxY(v155) - a6 * 0.631494;
      v156.origin.x = OUTLINED_FUNCTION_0_11();
      *&v106 = a6 * 0.372824 + CGRectGetMinX(v156);
      v157.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v157);
      v158.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v158);
      v159.origin.x = OUTLINED_FUNCTION_0_11();
      v42.n128_f64[0] = CGRectGetMaxY(v159);
      OUTLINED_FUNCTION_1_9(v42, v51, v52, v53, v54, v43, v44, v45, v46, v47, v48, v49, v50, *&v100, v106, v113, v119);
      v160.origin.x = OUTLINED_FUNCTION_0_11();
      MaxX = CGRectGetMinX(v160);
      v161.origin.x = OUTLINED_FUNCTION_0_11();
      v55 = CGRectGetMaxY(v161) + a6 * -1.52866;
      v162.origin.x = OUTLINED_FUNCTION_0_11();
      MinX = CGRectGetMinX(v162);
      v163.origin.x = OUTLINED_FUNCTION_0_11();
      v57 = CGRectGetMaxY(v163) - v123;
      v164.origin.x = OUTLINED_FUNCTION_0_11();
      v58 = CGRectGetMinX(v164);
      v165.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v165);
LABEL_7:
      v29.n128_f64[0] = MaxX;
      v30.n128_f64[0] = v55;
      v31.n128_f64[0] = MinX;
      v32.n128_f64[0] = v57;
      v33.n128_f64[0] = v58;
      goto LABEL_8;
    case 3:
      v166.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v166);
      v167.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v167);
      sub_1A362237C();
      v168.origin.x = OUTLINED_FUNCTION_0_11();
      v114 = CGRectGetMaxX(v168) - a6 * 0.0749114;
      v169.origin.x = OUTLINED_FUNCTION_0_11();
      v107 = CGRectGetMaxY(v169) - a6 * 0.631494;
      v170.origin.x = OUTLINED_FUNCTION_0_11();
      v101 = CGRectGetMaxX(v170);
      v171.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v171);
      OUTLINED_FUNCTION_4_6();
      v172.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v172);
      v173.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v173);
      OUTLINED_FUNCTION_3_9();
      v60.n128_f64[0] = v107;
      v59.n128_f64[0] = v114;
      v61.n128_u64[0] = v101;
      OUTLINED_FUNCTION_2_9(v59, v60, v61, v62, v63);
      v174.origin.x = OUTLINED_FUNCTION_0_11();
      *&v115 = CGRectGetMaxX(v174) - a6 * 0.631494;
      v175.origin.x = OUTLINED_FUNCTION_0_11();
      *&v121 = CGRectGetMaxY(v175) - a6 * 0.0749114;
      v176.origin.x = OUTLINED_FUNCTION_0_11();
      *&v108 = CGRectGetMaxX(v176) - a6 * 0.16906;
      v177.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v177);
      v178.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxX(v178);
      v179.origin.x = OUTLINED_FUNCTION_0_11();
      v64.n128_f64[0] = CGRectGetMaxY(v179);
      OUTLINED_FUNCTION_1_9(v64, v73, v74, v75, v76, v65, v66, v67, v68, v69, v70, v71, v72, v101, v108, v115, v121);
      v180.origin.x = OUTLINED_FUNCTION_0_11();
      v118 = CGRectGetMaxX(v180) + a6 * -1.52866;
      v181.origin.x = OUTLINED_FUNCTION_0_11();
      MaxY = CGRectGetMaxY(v181);
      v182.origin.x = OUTLINED_FUNCTION_0_11();
      v26 = CGRectGetMaxX(v182) - v123;
      v183.origin.x = OUTLINED_FUNCTION_0_11();
      MinY = CGRectGetMaxY(v183);
      v184.origin.x = OUTLINED_FUNCTION_0_11();
      v28 = CGRectGetMaxX(v184) - v124;
      v185.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMaxY(v185);
      goto LABEL_5;
    default:
      v126.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v126);
      v127.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v127);
      sub_1A362237C();
      v128.origin.x = OUTLINED_FUNCTION_0_11();
      v111 = a6 * 0.0749114 + CGRectGetMinX(v128);
      v129.origin.x = OUTLINED_FUNCTION_0_11();
      v103 = a6 * 0.631494 + CGRectGetMinY(v129);
      v130.origin.x = OUTLINED_FUNCTION_0_11();
      v99 = CGRectGetMinX(v130);
      v131.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v131);
      OUTLINED_FUNCTION_4_6();
      v132.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v132);
      v133.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v133);
      OUTLINED_FUNCTION_3_9();
      v8.n128_f64[0] = v103;
      v7.n128_f64[0] = v111;
      v9.n128_u64[0] = v99;
      OUTLINED_FUNCTION_2_9(v7, v8, v9, v10, v11);
      v134.origin.x = OUTLINED_FUNCTION_0_11();
      *&v112 = a6 * 0.631494 + CGRectGetMinX(v134);
      v135.origin.x = OUTLINED_FUNCTION_0_11();
      *&v117 = a6 * 0.0749114 + CGRectGetMinY(v135);
      v136.origin.x = OUTLINED_FUNCTION_0_11();
      *&v104 = a6 * 0.16906 + CGRectGetMinX(v136);
      v137.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v137);
      v138.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinX(v138);
      v139.origin.x = OUTLINED_FUNCTION_0_11();
      v12.n128_f64[0] = CGRectGetMinY(v139);
      OUTLINED_FUNCTION_1_9(v12, v21, v22, v23, v24, v13, v14, v15, v16, v17, v18, v19, v20, v99, v104, v112, v117);
      v140.origin.x = OUTLINED_FUNCTION_0_11();
      v118 = a6 * 1.52866 + CGRectGetMinX(v140);
      v141.origin.x = OUTLINED_FUNCTION_0_11();
      MaxY = CGRectGetMinY(v141);
      v142.origin.x = OUTLINED_FUNCTION_0_11();
      v26 = v123 + CGRectGetMinX(v142);
      v143.origin.x = OUTLINED_FUNCTION_0_11();
      MinY = CGRectGetMinY(v143);
      v144.origin.x = OUTLINED_FUNCTION_0_11();
      v28 = v124 + CGRectGetMinX(v144);
      v145.origin.x = OUTLINED_FUNCTION_0_11();
      CGRectGetMinY(v145);
LABEL_5:
      v29.n128_f64[0] = v118;
      v30.n128_f64[0] = MaxY;
      v31.n128_f64[0] = v26;
      v32.n128_f64[0] = MinY;
      v33.n128_f64[0] = v28;
LABEL_8:

      return MEMORY[0x1EEDE2FD0](v29, v30, v31, v32, v33);
  }
}

void View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  v98 = v23;
  v96 = v24;
  v26 = v25;
  v28 = v27;
  v101 = v29;
  v99 = v30;
  v100 = v31;
  v33 = v32;
  v104 = v34;
  sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v102 = v36;
  v103 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3_0();
  v105 = v38 - v37;
  OUTLINED_FUNCTION_31_0();
  v106 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_3_0();
  v42 = OUTLINED_FUNCTION_28();
  v43 = type metadata accessor for PopoverTip(v42);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_12();
  v47 = (v45 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v91 - v49;
  sub_1A35AE1BC(v33, v108);
  if (v108[3])
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v109[3] = &type metadata for EmptyTip;
    v109[4] = sub_1A35DED64();
  }

  v97 = v40;
  v93 = *(v40 + 16);
  v93(v22, v28, v106);
  if (v26 == 4)
  {
    v92 = 0;
  }

  else
  {
    v92 = MEMORY[0x1A58F2900](v26);
  }

  v95 = a22;
  v94 = a21;
  v91 = v26 == 4;
  sub_1A36221BC();
  v51 = v43[13];
  *(v47 + v51) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  swift_storeEnumTagMultiPayload();
  v52 = v43[14];
  *(v47 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_30(KeyPath);
  v54 = (v47 + v43[16]);
  v55 = objc_allocWithZone(_s13PopoverBridgeCMa());
  v56 = v98;

  v107 = [v55 init];
  OUTLINED_FUNCTION_14_1();
  v57 = v108[1];
  *v54 = v108[0];
  v54[1] = v57;
  v58 = v47 + v43[17];
  LOBYTE(v107) = 0;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_15();
  *v58 = v59;
  *(v58 + 1) = v60;
  v61 = v47 + v43[18];
  LOBYTE(v107) = 0;
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_15();
  *v61 = v62;
  *(v61 + 1) = v63;
  v64 = v47 + v43[19];
  v65 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v65);
  sub_1A362288C();
  OUTLINED_FUNCTION_15();
  *v64 = v66;
  *(v64 + 1) = v67;
  OUTLINED_FUNCTION_4();
  v68 = OUTLINED_FUNCTION_9_1();
  sub_1A35A63D4(v68, v69, v70);
  v71 = OUTLINED_FUNCTION_2_10();
  v47[5] = sub_1A35ADF54(v71, v72);
  v47[6] = v73;
  v74 = OUTLINED_FUNCTION_2_10();
  v76 = sub_1A35A6624(v74, v75);
  v77 = v96;
  v47[7] = v76;
  v47[8] = v77;
  v47[9] = v56;
  v93(v47 + v43[8], v22, v106);
  v78 = v47 + v43[9];
  *v78 = v92;
  v78[1] = v91;
  v80 = v102;
  v79 = v103;
  v81 = OUTLINED_FUNCTION_38(v43[10]);
  v82(v81);
  v83 = v47 + v43[11];
  v84 = v99;
  v85 = v100;
  *v83 = v99;
  *(v83 + 1) = v85;
  v83[16] = v101;
  sub_1A35E0534(v84, v85);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED81E670);
  }

  OUTLINED_FUNCTION_13_0();
  v86 = v97;
  if (v87)
  {
    v89 = sub_1A362274C();
  }

  else
  {
    v88 = [objc_opt_self() systemBackgroundColor];
    v89 = sub_1A362268C();
  }

  v90 = v89;
  (*(v80 + 8))(v105, v79);
  (*(v86 + 8))(v22, v106);
  *(v47 + v43[12]) = v90;
  sub_1A35AE338(v47, v50);
  __swift_destroy_boxed_opaque_existential_1(v109);
  MEMORY[0x1A58F2CC0](v50, v94, v43, v95);
  sub_1A35AE3BC(v50);
  OUTLINED_FUNCTION_24();
}

unint64_t sub_1A35DED64()
{
  result = qword_1ED81D958;
  if (!qword_1ED81D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D958);
  }

  return result;
}

void View.popoverTip(_:isPresented:attachmentAnchor:arrowEdges:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_26();
  v89 = v23;
  v87 = v24;
  v90 = v25;
  v27 = v26;
  v93 = v28;
  v91 = v29;
  v92 = v30;
  v32 = v31;
  v95 = sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3_0();
  v38 = v37 - v36;
  v39 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_3_0();
  v43 = OUTLINED_FUNCTION_28();
  v44 = type metadata accessor for PopoverTip(v43);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_12();
  v48 = (v46 - v47);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_45();
  v88 = v50;
  sub_1A35AE1BC(v32, v96);
  if (v96[3])
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v97[3] = &type metadata for EmptyTip;
    v97[4] = sub_1A35DED64();
  }

  v94 = v41;
  v86 = *(v41 + 16);
  v86(v22, v27, v39);
  sub_1A36221BC();
  v51 = v44[13];
  *(v48 + v51) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  swift_storeEnumTagMultiPayload();
  v52 = v44[14];
  *(v48 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  swift_storeEnumTagMultiPayload();
  v53 = v48 + v44[15];
  *v53 = swift_getKeyPath();
  v53[40] = 0;
  v54 = v22;
  v55 = v39;
  v56 = v38;
  v57 = (v48 + v44[16]);
  v58 = objc_allocWithZone(_s13PopoverBridgeCMa());

  [v58 init];
  OUTLINED_FUNCTION_25();
  v59 = v96[1];
  *v57 = v96[0];
  v57[1] = v59;
  v60 = v48 + v44[17];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  *v60 = v61;
  *(v60 + 1) = v62;
  v63 = v48 + v44[18];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  *v63 = v64;
  *(v63 + 1) = v65;
  v66 = v48 + v44[19];
  v67 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v67);
  sub_1A362288C();
  OUTLINED_FUNCTION_15();
  *v66 = v68;
  *(v66 + 1) = v69;
  OUTLINED_FUNCTION_33();
  v70 = OUTLINED_FUNCTION_27();
  sub_1A35A63D4(v70, v71, v72);
  OUTLINED_FUNCTION_33();
  v73 = OUTLINED_FUNCTION_27();
  v48[5] = sub_1A35ADF54(v73, v74);
  v48[6] = v75;
  OUTLINED_FUNCTION_33();
  v76 = OUTLINED_FUNCTION_27();
  v48[7] = sub_1A35A6624(v76, v77);
  v48[8] = v87;
  v48[9] = v89;
  v86(v48 + v44[8], v54, v55);
  v78 = v48 + v44[9];
  *v78 = v90;
  v78[1] = 0;
  v79 = OUTLINED_FUNCTION_38(v44[10]);
  v80(v79);
  v81 = v48 + v44[11];
  *v81 = v91;
  *(v81 + 1) = v92;
  v81[16] = v93;
  sub_1A35E0534(v91, v92);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED81E670);
  }

  OUTLINED_FUNCTION_13_0();
  if (v82)
  {
    v84 = sub_1A362274C();
  }

  else
  {
    v83 = [objc_opt_self() systemBackgroundColor];
    v84 = sub_1A362268C();
  }

  v85 = v84;
  (*(v34 + 8))(v56, v95);
  (*(v94 + 8))(v54, v55);
  *(v48 + v44[12]) = v85;
  sub_1A35AE338(v48, v88);
  __swift_destroy_boxed_opaque_existential_1(v97);
  MEMORY[0x1A58F2CC0](v88, a21, v44, a22);
  sub_1A35AE3BC(v88);
  OUTLINED_FUNCTION_24();
}

void View.popoverTip<A>(_:arrowEdge:action:)()
{
  OUTLINED_FUNCTION_26();
  v57 = v1;
  v52 = v3;
  v53 = v2;
  v5 = v4;
  v56 = v6;
  v50 = v7;
  v9 = v8;
  v51 = sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v49 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  v48 = v13 - v12;
  v14 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v58 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for PopoverTip(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_45();
  v54 = v28;
  v55 = v17;
  (*(v17 + 16))(v21, v9, v5);
  *v0 = sub_1A36228DC();
  v29 = OUTLINED_FUNCTION_36();
  v30(v29);
  sub_1A36221BC();
  v31 = v22[13];
  *(v26 + v31) = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  OUTLINED_FUNCTION_22(v32);
  v33 = v22[14];
  *(v26 + v33) = swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  OUTLINED_FUNCTION_22(v34);
  v35 = v26 + v22[15];
  *v35 = swift_getKeyPath();
  v35[40] = 0;
  v36 = (v26 + v22[16]);
  v37 = objc_allocWithZone(_s13PopoverBridgeCMa());

  [v37 init];
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  *v36 = v59;
  v36[1] = v60;
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_18_0();
  sub_1A3622DBC();
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_18_0();
  sub_1A35A63D4(v5, v52, v26);
  v26[5] = sub_1A35ADF54(v5, v52);
  v26[6] = v38;
  v26[7] = sub_1A35A6624(v5, v52);
  v26[8] = v53;
  v26[9] = v50;
  v39 = OUTLINED_FUNCTION_37(v22[8]);
  v40(v39, v0, v14);
  OUTLINED_FUNCTION_44();
  v42 = OUTLINED_FUNCTION_37(v41);
  v43(v42, v48, v51);
  OUTLINED_FUNCTION_39(v26 + v22[11]);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED81E670);
  }

  OUTLINED_FUNCTION_13_0();
  if (v44)
  {
    v46 = sub_1A362274C();
  }

  else
  {
    v45 = [objc_opt_self() systemBackgroundColor];
    v46 = sub_1A362268C();
  }

  v47 = v46;
  (*(v49 + 8))(v48, v51);
  (*(v58 + 8))(v0, v14);
  *(v26 + v22[12]) = v47;
  sub_1A35AE338(v26, v54);
  (*(v55 + 8))(v21, v5);
  MEMORY[0x1A58F2CC0](v54, v56, v22, v57);
  sub_1A35AE3BC(v54);
  OUTLINED_FUNCTION_24();
}

void View.popoverTip<A>(_:arrowEdge:)()
{
  OUTLINED_FUNCTION_26();
  v53 = v1;
  v51 = v2;
  v4 = v3;
  v52 = v5;
  v7 = v6;
  sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22 = type metadata accessor for PopoverTip(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_45();
  v49 = v28;
  v50 = v17;
  (*(v17 + 16))(v21, v7, v4);
  *v0 = sub_1A36228DC();
  v29 = OUTLINED_FUNCTION_36();
  v30(v29);
  sub_1A36221BC();
  v31 = v22[13];
  *(v26 + v31) = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  OUTLINED_FUNCTION_22(v32);
  v33 = v22[14];
  *(v26 + v33) = swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  OUTLINED_FUNCTION_22(v34);
  v35 = v26 + v22[15];
  *v35 = swift_getKeyPath();
  v35[40] = 0;
  v36 = (v26 + v22[16]);
  [objc_allocWithZone(_s13PopoverBridgeCMa()) init];
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  *v36 = v54;
  v36[1] = v55;
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_17_0();
  sub_1A3622DBC();
  OUTLINED_FUNCTION_11_4();
  sub_1A362288C();
  OUTLINED_FUNCTION_17_0();
  sub_1A35A63D4(v4, v51, v26);
  v26[5] = sub_1A35ADF54(v4, v51);
  v26[6] = v37;
  v26[7] = sub_1A35A6624(v4, v51);
  v26[8] = nullsub_1;
  v26[9] = 0;
  v38 = OUTLINED_FUNCTION_37(v22[8]);
  v39(v38, v0, v13);
  OUTLINED_FUNCTION_44();
  v41 = OUTLINED_FUNCTION_37(v40);
  v42(v41, v12, v47);
  OUTLINED_FUNCTION_39(v26 + v22[11]);
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED81E670);
  }

  OUTLINED_FUNCTION_13_0();
  if (v43)
  {
    v45 = sub_1A362274C();
  }

  else
  {
    v44 = [objc_opt_self() systemBackgroundColor];
    v45 = sub_1A362268C();
  }

  v46 = v45;
  (*(v48 + 8))(v12, v47);
  (*(v15 + 8))(v0, v13);
  *(v26 + v22[12]) = v46;
  sub_1A35AE338(v26, v49);
  (*(v50 + 8))(v21, v4);
  MEMORY[0x1A58F2CC0](v49, v52, v22, v53);
  sub_1A35AE3BC(v49);
  OUTLINED_FUNCTION_24();
}

void View.popoverTip(_:isPresented:attachmentAnchor:arrowEdges:backgroundInteraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v73 = v22;
  v24 = v23;
  v72 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_29(v28, v29, v30, v31);
  v33 = v32;
  v76 = sub_1A36221CC();
  OUTLINED_FUNCTION_3();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_0();
  v77 = v38 - v37;
  OUTLINED_FUNCTION_31_0();
  v75 = sub_1A362207C();
  OUTLINED_FUNCTION_3();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_3_0();
  v74 = v43 - v42;
  v44 = OUTLINED_FUNCTION_31_0();
  v45 = type metadata accessor for PopoverTip(v44);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_12();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_46();
  sub_1A35AE1BC(v33, v51);
  if (v78)
  {
    OUTLINED_FUNCTION_35();
  }

  else
  {
    v79[3] = &type metadata for EmptyTip;
    v79[4] = sub_1A35DED64();
  }

  v52 = *(v40 + 16);
  v52(v74, v27, v75);
  v71 = *(v35 + 16);
  v71(v77, v24, v76);
  v53 = v45[13];
  *(v49 + v53) = swift_getKeyPath();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB00, &qword_1A3629C90);
  OUTLINED_FUNCTION_23_0(v54);
  v55 = v45[14];
  *(v49 + v55) = swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0, &qword_1A3626780);
  OUTLINED_FUNCTION_23_0(v56);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_30(KeyPath);
  [objc_allocWithZone(_s13PopoverBridgeCMa()) init];
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_7_2();
  v58 = sub_1A3622DBC();
  OUTLINED_FUNCTION_6_5(v58);
  sub_1A362288C();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_4();
  v59 = OUTLINED_FUNCTION_9_1();
  sub_1A35A63D4(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_2_10();
  *(v49 + 40) = sub_1A35ADF54(v62, v63);
  *(v49 + 48) = v64;
  v65 = OUTLINED_FUNCTION_2_10();
  v67 = sub_1A35A6624(v65, v66);
  v68 = OUTLINED_FUNCTION_42(v67);
  v52(v68, v74, v75);
  *(v49 + v45[9]) = v72;
  v71(v49 + v45[10], v77, v76);
  OUTLINED_FUNCTION_19();
  if (qword_1ED81E670 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_1ED81E670);
  }

  OUTLINED_FUNCTION_13_0();
  if (v69)
  {
    sub_1A362274C();
  }

  else
  {
    v70 = [objc_opt_self() systemBackgroundColor];
    sub_1A362268C();
  }

  (*(v35 + 8))(v77, v76);
  (*(v40 + 8))(v74, v75);
  OUTLINED_FUNCTION_48();
  __swift_destroy_boxed_opaque_existential_1(v79);
  MEMORY[0x1A58F2CC0](v21, v73, v45, a21);
  sub_1A35AE3BC(v21);
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A35E0480(uint64_t a1)
{
  sub_1A3621A4C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1A3621BEC();
}

uint64_t sub_1A35E0534(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{
  v4 = v0 + *(v1 + 44);
  v5 = *(v2 - 272);
  v6 = *(v2 - 264);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = *(v2 - 252);

  return sub_1A35E0534(v5, v6);
}

void OUTLINED_FUNCTION_34()
{
  v2 = *(v1 - 160);
  *v0 = *(v1 - 168);
  v0[1] = v2;
  *(v1 - 176) = 0;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_1A35A63BC((v0 - 168), v0 - 128);
}

void OUTLINED_FUNCTION_41(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *(v6 - 192) = a4;
  *(v6 - 184) = v5;
  *(v6 - 208) = a5;
  *(v6 - 200) = a3;
  *(v6 - 232) = a2;
  *(v6 - 248) = a1;
}

char *OUTLINED_FUNCTION_42(uint64_t a1)
{
  v1[8] = 0;
  v1[9] = 0;
  v1[7] = a1;
  return v1 + *(v2 + 32);
}

void OUTLINED_FUNCTION_47()
{

  JUMPOUT(0x1A58F2CC0);
}

uint64_t OUTLINED_FUNCTION_48()
{
  *(v0 + *(v2 + 48)) = v1;

  return sub_1A35AE338(v0, v3);
}

uint64_t sub_1A35E07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  OUTLINED_FUNCTION_0_13();
  v9 = sub_1A35E0B08(v7, 255, v8, &unk_1A3626F10);

  return a4(a1, v6, v9);
}

uint64_t sub_1A35E0964()
{
  type metadata accessor for ImpossibleExecutor();
  swift_initStaticObject();
  OUTLINED_FUNCTION_0_13();
  sub_1A35E0B08(v0, 255, v1, &unk_1A3626F48);
  return sub_1A3622F4C();
}

uint64_t sub_1A35E0A54()
{
  type metadata accessor for ImpossibleActor();

  return swift_initStaticObject();
}

uint64_t sub_1A35E0A84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ImpossibleActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1A35E0B08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Tips.Rule.init(_:_:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A3620F6C();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *a1;
  v16 = *MEMORY[0x1E69DA120];
  sub_1A3620E9C();
  OUTLINED_FUNCTION_0_14();
  (*(v17 + 104))(a3, v16);
  v18 = MEMORY[0x1E69DA1A8];
  if (!v15)
  {
    v18 = MEMORY[0x1E69DA1A0];
  }

  (*(v8 + 104))(v11, *v18, v6);
  sub_1A3620FAC();
  (*(v8 + 32))(v14, v11, v6);
  v19 = sub_1A3620EEC();
  v20 = type metadata accessor for Tips.Rule(0);
  *(a3 + v20[5]) = v19;
  v21 = a3 + v20[6];
  *(v21 + 32) = 0;
  result = 0.0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(a3 + v20[7]) = a2;
  return result;
}

uint64_t Tips.Rule.CompoundOperation.hashValue.getter()
{
  v1 = *v0;
  sub_1A36234CC();
  MEMORY[0x1A58F3B60](v1);
  return sub_1A36234EC();
}

unint64_t sub_1A35E0DC4()
{
  result = qword_1EB0EEB38;
  if (!qword_1EB0EEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEB38);
  }

  return result;
}

_BYTE *_s17CompoundOperationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A35E0EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A35E0FB4(&qword_1ED81F148, _s9CoreValueVMa, &unk_1A36270CC);

  return MEMORY[0x1EEE494E0](a1, a2, a3, v6);
}

uint64_t sub_1A35E0F80@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
}

uint64_t sub_1A35E0FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A35E1008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35E1078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A35E10E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35E1154(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Rule(0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB70, &qword_1A3627150);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3627130;
  sub_1A35E1008(a1, v16 + v15);
  sub_1A35E1008(v16 + v15, v14);
  sub_1A35E1078(v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    sub_1A35E10E8(v11);
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1A35E18E4(v11, v7);
    v17 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_11();
      sub_1A35AD630(0, v20 + 1, 1, v17, v21, v22, v23, type metadata accessor for Tips.Rule);
      v17 = v24;
    }

    v18 = *(v17 + 16);
    if (v18 >= *(v17 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_11();
      sub_1A35AD630(v25, v18 + 1, 1, v17, v26, v27, v28, type metadata accessor for Tips.Rule);
      v17 = v29;
    }

    *(v17 + 16) = v18 + 1;
    sub_1A35E18E4(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
  }

  swift_setDeallocating();
  sub_1A35E1860();
  return v17;
}

uint64_t sub_1A35E1440(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Rule(0);
  OUTLINED_FUNCTION_3();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = *(v11 + 72);
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1A35E1008(v15, v13);
    sub_1A35E1078(v13, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
    {
      sub_1A35E10E8(v9);
    }

    else
    {
      sub_1A35E18E4(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1A35AD630(0, v20 + 1, 1, v17, &qword_1EB0EEB60, &qword_1A3627140, v21, type metadata accessor for Tips.Rule);
        v17 = v22;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A35AD630(v18 > 1, v19 + 1, 1, v17, &qword_1EB0EEB60, &qword_1A3627140, type metadata accessor for Tips.Rule, type metadata accessor for Tips.Rule);
        v17 = v23;
      }

      *(v17 + 16) = v19 + 1;
      sub_1A35E18E4(v6, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19);
    }

    v15 += v16;
    --v14;
  }

  while (v14);
  return v17;
}

void sub_1A35E16FC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1A35E5514(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_3();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1A35E17A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1A35E5640(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_3();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBA8, &qword_1A3627198);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1A35E1860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB68, &qword_1A3627148);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A35E18E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tips.Rule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1A35E1948(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_1A35E1968(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_1A35E1990(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_5_5();

    return MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_5_5();

    return MEMORY[0x1EEE6BCF8](v9);
  }

  return result;
}

char *sub_1A35E1A58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_1A35E1A80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

char *sub_1A35E1AA8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_16(a3, result);
  }

  return result;
}

_BYTE *_s11RuleBuilderVwst(_BYTE *result, int a2, int a3)
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

void sub_1A35E1BEC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC8, &qword_1A36271A8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 64);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[64 * v9] <= v13)
    {
      memmove(v13, v14, v9 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1A35E1D04(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_12();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB88, &qword_1A3627178);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }
}

uint64_t sub_1A35E1DFC@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1A3621D7C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3621D6C();
  sub_1A3621D5C();
  sub_1A3621D4C();
  sub_1A3621D5C();
  v8 = sub_1A35E1F70(a2, a3);
  v10 = v9;
  v12 = v11;
  sub_1A3621D4C();
  sub_1A35B72C8(v8, v10, v12 & 1);

  sub_1A3621D5C();
  sub_1A3621D9C();
  result = sub_1A36223CC();
  *a4 = result;
  *(a4 + 8) = v14;
  *(a4 + 16) = v15 & 1;
  *(a4 + 24) = v16;
  return result;
}

void *sub_1A35E1F70(uint64_t a1, void *a2)
{
  v159 = a2;
  v130 = sub_1A3620B7C();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A3620B8C();
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3620BAC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v123 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBD0, "XY");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBD8, &qword_1A36271F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v118 - v10;
  v131 = sub_1A3620BCC();
  v121 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v119 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v118 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBE0, &qword_1A3627200);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = &v118 - v15;
  v16 = sub_1A362116C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBE8, &qword_1A3627208);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v118 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBF0, &qword_1A3627210);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v144 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v148 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v118 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v118 - v35;
  v150 = sub_1A362119C();
  v147 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v160 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v137 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v138 = &v118 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v149 = &v118 - v42;
  v43 = sub_1A362115C();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1A58F1840](v45);
  v48 = (*(v44 + 88))(v47, v43);
  v49 = *MEMORY[0x1E69DA1F0];
  v156 = v17;
  if (v48 == v49)
  {
    v50 = sub_1A35E3710(a1, v159);
LABEL_9:
    v56 = v50;
    v57 = v51;
    v58 = v52;
    v59 = v53;
    goto LABEL_10;
  }

  if (v48 == *MEMORY[0x1E69DA200])
  {
    v50 = sub_1A35E3378();
    goto LABEL_9;
  }

  if (v48 == *MEMORY[0x1E69DA1F8])
  {
    v54 = sub_1A36211AC();
    if (!v55)
    {
      v54 = sub_1A3622BCC();
    }

    v164 = v54;
    v165 = v55;
    sub_1A35A03D8();
    v50 = sub_1A36223EC();
    goto LABEL_9;
  }

  v74 = sub_1A3622BCC();
  v75 = v47;
  v57 = v76;
  (*(v44 + 8))(v75, v43);
  v56 = v74;
  v58 = 0;
  v59 = MEMORY[0x1E69E7CC0];
LABEL_10:
  result = sub_1A36211DC();
  if (!result)
  {
    return v56;
  }

  v155 = result[2];
  if (!v155)
  {

    return v56;
  }

  v133 = v58;
  v134 = v59;
  v135 = v57;
  v136 = v56;
  v118 = a1;
  v61 = 0;
  v62 = result + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  v158 = v147 + 16;
  v146 = *MEMORY[0x1E69DA208];
  v157 = (v156 + 13);
  v140 = (v156 + 4);
  v145 = (v156 + 1);
  v156 = (v147 + 8);
  v159 = result;
  while (v61 < result[2])
  {
    v151 = *(v147 + 72);
    v64 = v149;
    v63 = v150;
    v154 = *(v147 + 16);
    v65 = v154(v149, &v62[v151 * v61], v150);
    v66 = v162;
    MEMORY[0x1A58F1800](v65);
    v153 = *v157;
    v153(v33, v146, v16);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v16);
    v67 = *(v161 + 48);
    sub_1A35E32B0(v66, v22);
    sub_1A35E32B0(v33, &v22[v67]);
    if (__swift_getEnumTagSinglePayload(v22, 1, v16) == 1)
    {
      sub_1A35B4F20(v33, &qword_1EB0EEBF0, &qword_1A3627210);
      sub_1A35B4F20(v162, &qword_1EB0EEBF0, &qword_1A3627210);
      v68 = *v156;
      (*v156)(v64, v63);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v67], 1, v16);
      v152 = v68;
      if (EnumTagSinglePayload == 1)
      {
        sub_1A35B4F20(v22, &qword_1EB0EEBF0, &qword_1A3627210);
LABEL_25:
        v164 = sub_1A36227AC();
        v77 = v133;
        v78 = v136;
        v79 = v135;
        v80 = sub_1A36223AC();
        v82 = v81;
        LODWORD(v162) = v83;
        v85 = v84;
        sub_1A35B72C8(v78, v79, v77 & 1);

        v134 = v85;
        v133 = v162;
        v135 = v82;
        v136 = v80;
        result = v159;
LABEL_26:
        v86 = 0;
        LODWORD(v162) = *MEMORY[0x1E69DA210];
        v87 = v150;
        v88 = v144;
        v89 = v143;
        while (2)
        {
          if (v86 >= result[2])
          {
            goto LABEL_47;
          }

          v90 = v154(v160, v62, v87);
          MEMORY[0x1A58F1800](v90);
          v91 = v89;
          v92 = v148;
          v153(v148, v162, v16);
          __swift_storeEnumTagSinglePayload(v92, 0, 1, v16);
          v93 = *(v161 + 48);
          v94 = v163;
          sub_1A35E32B0(v91, v163);
          sub_1A35E32B0(v92, v94 + v93);
          if (__swift_getEnumTagSinglePayload(v94, 1, v16) == 1)
          {
            sub_1A35B4F20(v92, &qword_1EB0EEBF0, &qword_1A3627210);
            sub_1A35B4F20(v91, &qword_1EB0EEBF0, &qword_1A3627210);
            v89 = v91;
            if (__swift_getEnumTagSinglePayload(v163 + v93, 1, v16) == 1)
            {
              sub_1A35B4F20(v163, &qword_1EB0EEBF0, &qword_1A3627210);
LABEL_37:

              v101 = *(v147 + 32);
              v102 = v137;
              v101(v137, v160, v87);
              v103 = v138;
              v101(v138, v102, v87);
              v104 = sub_1A36211AC();
              if (v105)
              {
                v106 = v104;
                v107 = v105;
                v108 = v132;
                sub_1A362118C();
                v109 = sub_1A36212CC();
                if (__swift_getEnumTagSinglePayload(v108, 1, v109) == 1)
                {
                  v152(v103, v150);

                  sub_1A35B4F20(v108, &qword_1EB0EEBE0, &qword_1A3627200);
                }

                else
                {
                  v110 = sub_1A362129C();
                  v112 = v111;
                  (*(*(v109 - 8) + 8))(v108, v109);
                  if (v112)
                  {
                    v164 = 91;
                    v165 = 0xE100000000000000;
                    MEMORY[0x1A58F3290](v106, v107);

                    MEMORY[0x1A58F3290](10333, 0xE200000000000000);
                    MEMORY[0x1A58F3290](v110, v112);

                    MEMORY[0x1A58F3290](41, 0xE100000000000000);
                    v113 = sub_1A3620CEC();
                    __swift_storeEnumTagSinglePayload(v122, 1, 1, v113);
                    (*(v125 + 104))(v126, *MEMORY[0x1E6968750], v127);
                    (*(v129 + 104))(v128, *MEMORY[0x1E6968728], v130);
                    sub_1A3620B9C();
                    v114 = v124;
                    sub_1A3620BBC();
                    v115 = v131;
                    __swift_storeEnumTagSinglePayload(v114, 0, 1, v131);
                    v116 = v121;
                    v117 = v120;
                    (*(v121 + 32))(v120, v114, v115);
                    (*(v116 + 16))(v119, v117, v115);
                    v56 = sub_1A36223DC();
                    sub_1A35B72C8(v136, v135, v133 & 1);

                    (*(v116 + 8))(v117, v115);
                    v152(v103, v150);
                    return v56;
                  }

                  v152(v103, v150);
LABEL_36:
                }
              }

              else
              {
                v152(v103, v87);
              }

              return v136;
            }

LABEL_33:
            sub_1A35B4F20(v163, &qword_1EB0EEBE8, &qword_1A3627208);
          }

          else
          {
            v95 = v163;
            sub_1A35E32B0(v163, v88);
            if (__swift_getEnumTagSinglePayload(v95 + v93, 1, v16) == 1)
            {
              sub_1A35B4F20(v148, &qword_1EB0EEBF0, &qword_1A3627210);
              v89 = v143;
              sub_1A35B4F20(v143, &qword_1EB0EEBF0, &qword_1A3627210);
              (*v145)(v88, v16);
              goto LABEL_33;
            }

            v96 = v163;
            v97 = v141;
            v98 = (*v140)(v141, v163 + v93, v16);
            sub_1A35E3320(v98);
            LODWORD(v149) = sub_1A3622B4C();
            v99 = *v145;
            v100 = v97;
            v88 = v144;
            (*v145)(v100, v16);
            sub_1A35B4F20(v148, &qword_1EB0EEBF0, &qword_1A3627210);
            v89 = v143;
            sub_1A35B4F20(v143, &qword_1EB0EEBF0, &qword_1A3627210);
            v99(v88, v16);
            v87 = v150;
            sub_1A35B4F20(v96, &qword_1EB0EEBF0, &qword_1A3627210);
            if (v149)
            {
              goto LABEL_37;
            }
          }

          ++v86;
          v152(v160, v87);
          v62 += v151;
          result = v159;
          if (v155 == v86)
          {
            goto LABEL_36;
          }

          continue;
        }
      }
    }

    else
    {
      v70 = v142;
      sub_1A35E32B0(v22, v142);
      if (__swift_getEnumTagSinglePayload(&v22[v67], 1, v16) != 1)
      {
        v71 = v141;
        v72 = (*v140)(v141, &v22[v67], v16);
        sub_1A35E3320(v72);
        v139 = sub_1A3622B4C();
        v73 = *v145;
        (*v145)(v71, v16);
        sub_1A35B4F20(v33, &qword_1EB0EEBF0, &qword_1A3627210);
        sub_1A35B4F20(v162, &qword_1EB0EEBF0, &qword_1A3627210);
        v152 = *v156;
        v152(v149, v150);
        v73(v70, v16);
        sub_1A35B4F20(v22, &qword_1EB0EEBF0, &qword_1A3627210);
        if (v139)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      sub_1A35B4F20(v33, &qword_1EB0EEBF0, &qword_1A3627210);
      sub_1A35B4F20(v162, &qword_1EB0EEBF0, &qword_1A3627210);
      v152 = *v156;
      v152(v149, v150);
      (*v145)(v70, v16);
    }

    sub_1A35B4F20(v22, &qword_1EB0EEBE8, &qword_1A3627208);
LABEL_21:
    ++v61;
    result = v159;
    if (v155 == v61)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1A35E32B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBF0, &qword_1A3627210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A35E3320(double a1)
{
  result = qword_1EB0EEBF8;
  if (!qword_1EB0EEBF8)
  {
    sub_1A362116C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EEBF8);
  }

  return result;
}

uint64_t sub_1A35E3378()
{
  v0 = sub_1A3621D7C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBE0, &qword_1A3627200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v25 - v2;
  v4 = sub_1A36212CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A36211CC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1A35B4F20(v3, &qword_1EB0EEBE0, &qword_1A3627200);
    return sub_1A3622BCC();
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_1A36212BC();
  if (!v8)
  {
    (*(v5 + 8))(v7, v4);
    return sub_1A3622BCC();
  }

  if (_s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0())
  {
    v9 = sub_1A36227FC();
  }

  else
  {
    v9 = sub_1A36227DC();
  }

  v11 = v9;
  v12 = sub_1A35CDF84();
  if (v12)
  {
    v13 = v12;
    sub_1A3621D6C();
    sub_1A3621D5C();

    v14 = sub_1A36223FC();
    v16 = v15;
    v18 = v17;
    v25[1] = v19;
    v29 = v13;
    v20 = sub_1A36223AC();
    v26 = v21;
    v27 = v11;
    v28 = v13;
    LOBYTE(v13) = v22;
    sub_1A35B72C8(v14, v16, v18 & 1);

    v23 = v26;
    sub_1A3621D4C();
    sub_1A35B72C8(v20, v23, v13 & 1);

    sub_1A3621D5C();
    sub_1A3621D9C();
    v10 = sub_1A36223CC();
  }

  else
  {
    v10 = sub_1A36223FC();
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1A35E3710(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBE0, &qword_1A3627200);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_1A35BAA38(v6, v7, &v26);
  if (!v27)
  {
    v11 = sub_1A35B4F20(&v26, &qword_1EB0EEC00, &qword_1A3627218);
    MEMORY[0x1EEE9AC00](v11);
    v12 = sub_1A36215CC();
    sub_1A36215BC();
    v12(v28, 0);
    sub_1A3621D8C();
    return sub_1A36223CC();
  }

  sub_1A35A63BC(&v26, v28);
  v8 = v29;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1A36211CC();
  v10 = sub_1A36212CC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_1A35B4F20(v5, &qword_1EB0EEBE0, &qword_1A3627200);
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = sub_1A362128C();
  v16 = v15;
  (*(*(v10 - 8) + 8))(v5, v10);
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = (*(v9 + 32))(v14, v8, v9);
  v18 = v17;
  v20 = v19;
  sub_1A3622BCC();
  v21 = sub_1A36223BC();

  if (v21)
  {
    sub_1A35B72C8(v13, v18, v20 & 1);

    MEMORY[0x1EEE9AC00](v22);
    v23 = sub_1A36215CC();
    sub_1A36215BC();
    v23(&v26, 0);
    sub_1A3621D8C();
    v13 = sub_1A36223CC();
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v13;
}

uint64_t sub_1A35E3AD4(void *a1)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000002ELL, 0x80000001A3639110);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v2 = sub_1A36235FC();
  MEMORY[0x1A58F3290](v2);

  MEMORY[0x1A58F3290](0xD000000000000022, 0x80000001A3639170);
  return 0;
}

uint64_t sub_1A35E3BA0(void *a1)
{
  sub_1A36231BC();
  MEMORY[0x1A58F3290](0xD00000000000002ELL, 0x80000001A3639110);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v2 = sub_1A36235FC();
  MEMORY[0x1A58F3290](v2);

  MEMORY[0x1A58F3290](0xD00000000000002BLL, 0x80000001A3639140);
  return 0;
}

uint64_t sub_1A35E3C70()
{
  v1[3] = &type metadata for EmptyTip;
  v1[4] = sub_1A35DED64();
  __swift_project_boxed_opaque_existential_1(v1, &type metadata for EmptyTip);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return sub_1A3622BBC();
}

uint64_t Tip.invalidate(reason:)()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_1_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_0_17();
  sub_1A35A6624(v1, v0);
  sub_1A362142C();
  sub_1A36213CC();
  v4 = OUTLINED_FUNCTION_2_12();
  v5(v4);
  if (v2)
  {
    sub_1A36210EC();
  }
}

uint64_t Tip.resetEligibility()()
{
  OUTLINED_FUNCTION_2_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1A362141C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A35E3FC8, 0, 0);
}

uint64_t sub_1A35E3FC8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = sub_1A35A6624(v0[2], v0[3]);
  sub_1A362142C();
  v4 = sub_1A36213CC();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A35E4100;

    return MEMORY[0x1EEE49798]();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A35E4100()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A35E41F0, 0, 0);
}

uint64_t sub_1A35E41F0()
{
  OUTLINED_FUNCTION_2_4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A35E4284()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_1_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_17();
  sub_1A35A6624(v2, v1);
  sub_1A362142C();
  sub_1A36213CC();
  v5 = OUTLINED_FUNCTION_2_12();
  v7 = v6(v5);
  if (v3)
  {
    v0(v7);
  }
}

Swift::Void __swiftcall Tip.reset()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE620, &qword_1A36256E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1A362141C();
  OUTLINED_FUNCTION_1_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_17();
  v9 = sub_1A35A6624(v4, v3);
  sub_1A362142C();
  sub_1A36213CC();
  v10 = OUTLINED_FUNCTION_2_12();
  v11(v10);
  if (v2)
  {
    v12 = sub_1A3622E6C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v9;
    sub_1A35D34A0(0, 0, v7, &unk_1A3627250, v13);
  }
}

uint64_t sub_1A35E44E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A35E4578;

  return MEMORY[0x1EEE49798]();
}

uint64_t sub_1A35E4578()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1A35E4694()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A35E4578;

  return sub_1A35E44E4();
}

uint64_t sub_1A35E47E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC10, &qword_1A3627228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Tips.Action.label.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Tips.Action.handler.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Tips.Action.init<A>(id:title:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v26 = a5;
  v12 = a1;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v18, v15);
  v19 = sub_1A3622C4C();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  if (!a2)
  {
    v12 = sub_1A3622BCC();
    a2 = v23;
  }

  result = (*(v14 + 8))(a3, a6);
  *a8 = v12;
  *(a8 + 8) = a2;
  *(a8 + 16) = 0;
  *(a8 + 24) = 1;
  *(a8 + 32) = sub_1A35E4A90;
  *(a8 + 40) = v22;
  v25 = v26;
  *(a8 + 48) = a4;
  *(a8 + 56) = v25;
  return result;
}

uint64_t sub_1A35E4A3C(uint64_t a1, uint64_t a2)
{
  sub_1A35A03D8();
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return sub_1A36223EC();
}

uint64_t sub_1A35E4A98()
{
  sub_1A362126C();
  sub_1A35A03D8();
  return sub_1A36223EC();
}

_OWORD *static Tips.ActionBuilder.buildExpression(_:)(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC8, &qword_1A36271A8);
  v2 = swift_allocObject();
  v4 = a1[1];
  v9[0] = *a1;
  v3 = v9[0];
  v9[1] = v4;
  v6 = a1[3];
  v10 = a1[2];
  v5 = v10;
  v11 = v6;
  v2[1] = xmmword_1A3627130;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  sub_1A35BBC68(v9, &v8);
  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static Tips.ActionBuilder.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A35E16FC(v2);
}

void static Tips.ActionBuilder.buildArray(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > *(v3 + 24) >> 1)
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        sub_1A35E1BEC(isUniquelyReferenced_nonNull_native, v9, 1, v3);
        v3 = v10;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t static Tips.ActionBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  return v1;
}

uint64_t static Tips.ActionBuilder.buildFinalResult(_:)(uint64_t a1)
{
  v33 = MEMORY[0x1E69E7CC0];
  sub_1A35E4F78(0, 0, 0);
  v2 = 0;
  v3 = v33;
  v20 = *(a1 + 16);
  v4 = (a1 + 32);
  while (v20 != v2)
  {
    v5 = v4[1];
    v26[0] = *v4;
    v26[1] = v5;
    v6 = v4[3];
    v27 = v4[2];
    v28 = v6;
    v30 = v26[0];
    v31 = v5;
    *v32 = v27;
    *&v32[16] = v6;
    v29 = v2;
    v8 = *(&v26[0] + 1);
    v7 = *&v26[0];
    sub_1A35BBC68(v26, &v23);
    if (v7 == sub_1A3622BCC() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1A362345C();

      if ((v11 & 1) == 0 && (sub_1A35B73A4(0x2E7865646E6940, 0xE700000000000000, v7, v8) & 1) == 0)
      {
        _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
        goto LABEL_12;
      }
    }

    v23 = 0x2E7865646E6940;
    v24 = 0xE700000000000000;
    v12 = sub_1A362342C();
    MEMORY[0x1A58F3290](v12);

    v7 = v23;
    v8 = v24;
LABEL_12:
    v13 = *&v32[24];
    v14 = *v32;
    v21 = *&v32[8];
    v25 = 0;

    sub_1A35E552C(&v29);
    v33 = v3;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1A35E4F78(v15 > 1, v16 + 1, 1);
      v3 = v33;
    }

    *(v3 + 16) = v16 + 1;
    v17 = v3 + (v16 << 6);
    v18 = v25;
    LODWORD(v22) = v23;
    *(&v22 + 3) = *(&v23 + 3);
    *(v17 + 32) = v7;
    *(v17 + 40) = v8;
    *(v17 + 48) = v2;
    *(v17 + 56) = v18;
    *(v17 + 57) = v22;
    *(v17 + 60) = *(&v22 + 3);
    *(v17 + 64) = v14;
    *(v17 + 72) = v21;
    *(v17 + 88) = v13;
    v4 += 4;
    ++v2;
  }

  return v3;
}

uint64_t sub_1A35E4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A35E4FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A35E4F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A35E50F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A35E4FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A35E51E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A35E4FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A35E5414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A35E4FF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC8, &qword_1A36271A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1A35E1948((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35E50F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC28, ":v");
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_1A35E1968((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35E51E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC58, &qword_1A3627330);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1A35E1A58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC0, &qword_1A36277A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35E52FC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC38, &qword_1A3627310);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1A35E1A58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC40, &qword_1A3627318);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35E5414(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC30, &qword_1A3627308);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1A35E1AA8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A35E552C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEC20, "2v");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s13ActionBuilderVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1A35E574C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEB50, &qword_1A3627058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A35E57B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A35A7550(&qword_1ED81F1D8, &unk_1A3627418);

  return MEMORY[0x1EEE49818](a1, a2, a3, v6);
}

uint64_t sub_1A35E5824(uint64_t a1)
{
  v2 = sub_1A35A7550(&qword_1ED81F1D8, &unk_1A3627418);

  return MEMORY[0x1EEE49810](a1, v2);
}

uint64_t AnyTip.id.getter()
{
  OUTLINED_FUNCTION_0_18();
  v0 = OUTLINED_FUNCTION_1_13();
  return v1(v0);
}

uint64_t AnyTip.title.getter()
{
  OUTLINED_FUNCTION_0_18();
  v0 = OUTLINED_FUNCTION_1_13();
  return v1(v0);
}

uint64_t AnyTip.message.getter()
{
  OUTLINED_FUNCTION_0_18();
  v0 = OUTLINED_FUNCTION_1_13();
  return v1(v0);
}

uint64_t AnyTip.image.getter()
{
  OUTLINED_FUNCTION_0_18();
  v0 = OUTLINED_FUNCTION_1_13();
  return v1(v0);
}

uint64_t AnyTip.actions.getter()
{
  OUTLINED_FUNCTION_0_18();
  v1 = OUTLINED_FUNCTION_1_13();
  v3 = v2(v1);
  static Tips.ActionBuilder.buildFinalResult(_:)(v3);
  OUTLINED_FUNCTION_2_13();

  return v0;
}

uint64_t AnyTip.rules.getter()
{
  OUTLINED_FUNCTION_0_18();
  v0 = OUTLINED_FUNCTION_1_13();
  return v1(v0);
}

uint64_t AnyTip.options.getter()
{
  OUTLINED_FUNCTION_0_18();
  v1 = OUTLINED_FUNCTION_1_13();
  v3 = v2(v1);
  sub_1A35E5A94(v3);
  OUTLINED_FUNCTION_2_13();

  v6[3] = &unk_1F164AB88;
  v6[4] = &off_1F164ABA0;
  v6[0] = sub_1A35ACEFC(v0);
  v4 = sub_1A35A7840(v6);
  sub_1A35A79EC(v4);
  OUTLINED_FUNCTION_2_13();

  return v0;
}

uint64_t sub_1A35E5A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A35E4FB8(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1A35A6350(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBB8, &qword_1A36271A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEBC0, &qword_1A36277A0);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A35E4FB8(v5 > 1, v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t AnyTip.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2, v9);
  AnyTip.init<A>(_:)(v11, a2, a3, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t sub_1A35E5D04@<X0>(uint64_t *a1@<X8>)
{
  result = AnyTip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A35E5D2C()
{
  v5 = &unk_1F164AC10;
  v6 = &off_1F164AC28;
  LOBYTE(v4[0]) = 0;
  v1 = sub_1A35A7840(v4);
  v5 = &unk_1F164AB88;
  v6 = &off_1F164ABA0;
  v4[0] = v1;
  v2 = sub_1A35A7840(v4);
  sub_1A35A79EC(v2);
  OUTLINED_FUNCTION_2_13();

  return v0;
}