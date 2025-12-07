_BYTE *_s17ClusterComparatorV18DiagnosticReporterC6ReasonO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7091F80(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7092030()
{
  result = qword_1EC216A48;
  if (!qword_1EC216A48)
  {
    result = swift_getWitnessTable(byte_1C7565C44, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO19AssetUUIDCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A48);
  }

  return result;
}

unint64_t sub_1C7092088()
{
  result = qword_1EC216A50;
  if (!qword_1EC216A50)
  {
    result = swift_getWitnessTable(aM1, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO21ClusterSizeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A50);
  }

  return result;
}

unint64_t sub_1C70920E0()
{
  result = qword_1EC216A58;
  if (!qword_1EC216A58)
  {
    result = swift_getWitnessTable(byte_1C7565DB4, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO17BestWinCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A58);
  }

  return result;
}

unint64_t sub_1C7092138()
{
  result = qword_1EC216A60;
  if (!qword_1EC216A60)
  {
    result = swift_getWitnessTable(byte_1C7565E6C, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO29NumberOfBetterRanksCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A60);
  }

  return result;
}

unint64_t sub_1C7092190()
{
  result = qword_1EC216A68;
  if (!qword_1EC216A68)
  {
    result = swift_getWitnessTable(asc_1C7565F24, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A68);
  }

  return result;
}

unint64_t sub_1C70921E8()
{
  result = qword_1EC216A70;
  if (!qword_1EC216A70)
  {
    result = swift_getWitnessTable(aM_23, &_s18TimeBasedClustererV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A70);
  }

  return result;
}

unint64_t sub_1C7092240()
{
  result = qword_1EC216A78;
  if (!qword_1EC216A78)
  {
    result = swift_getWitnessTable(byte_1C7566094, &_s17ClusterComparatorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A78);
  }

  return result;
}

unint64_t sub_1C7092298()
{
  result = qword_1EC216A80;
  if (!qword_1EC216A80)
  {
    result = swift_getWitnessTable(aM_24, &_s18TimeBasedClustererV5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC216A80);
  }

  return result;
}

unint64_t sub_1C70922F0()
{
  result = qword_1EC216A88;
  if (!qword_1EC216A88)
  {
    result = swift_getWitnessTable(byte_1C7566004, &_s17ClusterComparatorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A88);
  }

  return result;
}

unint64_t sub_1C7092348()
{
  result = qword_1EC216A90;
  if (!qword_1EC216A90)
  {
    result = swift_getWitnessTable(byte_1C756602C, &_s17ClusterComparatorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A90);
  }

  return result;
}

unint64_t sub_1C70923A0()
{
  result = qword_1EC216A98;
  if (!qword_1EC216A98)
  {
    result = swift_getWitnessTable(byte_1C7565F4C, &_s18TimeBasedClustererV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216A98);
  }

  return result;
}

unint64_t sub_1C70923F8()
{
  result = qword_1EC216AA0;
  if (!qword_1EC216AA0)
  {
    result = swift_getWitnessTable(byte_1C7565F74, &_s18TimeBasedClustererV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AA0);
  }

  return result;
}

unint64_t sub_1C7092450()
{
  result = qword_1EC216AA8;
  if (!qword_1EC216AA8)
  {
    result = swift_getWitnessTable(byte_1C7565DDC, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO29NumberOfBetterRanksCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AA8);
  }

  return result;
}

unint64_t sub_1C70924A8()
{
  result = qword_1EC216AB0;
  if (!qword_1EC216AB0)
  {
    result = swift_getWitnessTable(a9_11, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO29NumberOfBetterRanksCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AB0);
  }

  return result;
}

unint64_t sub_1C7092500()
{
  result = qword_1EC216AB8;
  if (!qword_1EC216AB8)
  {
    result = swift_getWitnessTable(byte_1C7565D24, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO17BestWinCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AB8);
  }

  return result;
}

unint64_t sub_1C7092558()
{
  result = qword_1EC216AC0;
  if (!qword_1EC216AC0)
  {
    result = swift_getWitnessTable(byte_1C7565D4C, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO17BestWinCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AC0);
  }

  return result;
}

unint64_t sub_1C70925B0()
{
  result = qword_1EC216AC8;
  if (!qword_1EC216AC8)
  {
    result = swift_getWitnessTable(byte_1C7565C6C, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO21ClusterSizeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AC8);
  }

  return result;
}

unint64_t sub_1C7092608()
{
  result = qword_1EC216AD0;
  if (!qword_1EC216AD0)
  {
    result = swift_getWitnessTable(byte_1C7565C94, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO21ClusterSizeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AD0);
  }

  return result;
}

unint64_t sub_1C7092660()
{
  result = qword_1EC216AD8;
  if (!qword_1EC216AD8)
  {
    result = swift_getWitnessTable(asc_1C7565BB4, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO19AssetUUIDCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AD8);
  }

  return result;
}

unint64_t sub_1C70926B8()
{
  result = qword_1EC216AE0;
  if (!qword_1EC216AE0)
  {
    result = swift_getWitnessTable(aU_30, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO19AssetUUIDCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AE0);
  }

  return result;
}

unint64_t sub_1C7092710()
{
  result = qword_1EC216AE8;
  if (!qword_1EC216AE8)
  {
    result = swift_getWitnessTable(asc_1C7565E94, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AE8);
  }

  return result;
}

unint64_t sub_1C7092768()
{
  result = qword_1EC216AF0;
  if (!qword_1EC216AF0)
  {
    result = swift_getWitnessTable(aU8, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216AF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_54_8(uint64_t a1)
{

  return sub_1C7551CBC();
}

uint64_t OUTLINED_FUNCTION_55_7(uint64_t a1, uint64_t a2)
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_1C6FC2E14(v1, v0, v2, v3);
}

uint64_t Story.storyCompletion.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t sub_1C7092AC0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_10_20();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_6_2(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x7372657470616863 && a2 == 0xE800000000000000;
    if (v8 || (OUTLINED_FUNCTION_6_2(0x7372657470616863, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000015 && 0x80000001C759B7D0 == a2;
      if (v9 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, 0x80000001C759B7D0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v10 || (OUTLINED_FUNCTION_6_2(25705, 0xE200000000000000) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74657373416C6C61 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_6_2(0x74657373416C6C61, 0xE900000000000073);

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C7092C18()
{
  result = OUTLINED_FUNCTION_10_20();
  switch(v1)
  {
    case 1:
      result = 0x7372657470616863;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x74657373416C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7092CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7092AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7092CE0(uint64_t a1)
{
  v2 = sub_1C7094FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7092D1C(uint64_t a1)
{
  v2 = sub_1C7094FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Story.__allocating_init(storyCompletion:chapters:memoryLocalIdentifier:allAssets:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  Story.init(storyCompletion:chapters:memoryLocalIdentifier:allAssets:id:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t Story.init(storyCompletion:chapters:memoryLocalIdentifier:allAssets:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 40) = *(a1 + 24);
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 96) = a5;
  return v7;
}

uint64_t Story.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755D200;
  *(v1 + 32) = 0xD000000000000018;
  *(v1 + 40) = 0x80000001C759B6C0;
  *(v1 + 48) = StoryCompletion.description.getter();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0xD000000000000016;
  *(v1 + 72) = 0x80000001C759B6E0;
  *(v1 + 80) = MEMORY[0x1CCA5D090](v0[7], &type metadata for StoryChapter);
  *(v1 + 88) = v3;
  *(v1 + 96) = 0xD000000000000010;
  *(v1 + 104) = 0x80000001C759B700;
  if (v0[9])
  {
    v4 = v0[8];
    v5 = v0[9];
  }

  else
  {
    v5 = 0x80000001C759B720;
    v4 = 0xD000000000000011;
  }

  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v6 = sub_1C75505FC();

  return v6;
}

uint64_t StoryCompletion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x746974627553090ALL, 0xEC000000203A656CLL);
  OUTLINED_FUNCTION_11_17();
  MEMORY[0x1CCA5CD70](0x656972657551090ALL, 0xEB000000000A3A73);
  v4 = 0;
  result = 0;
  v6 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v6 == v4)
    {
      MEMORY[0x1CCA5CD70](result, 0xE000000000000000);

      return 0x203A656C74695409;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;
    v9 = *(i - 1);
    v8 = *i;
    v10 = result;
    sub_1C75504FC();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](547520738, 0xA400000000000000);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v9, v8);

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);

    result = v10;
  }

  __break(1u);
  return result;
}

void Story.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B18, &unk_1C75663A0);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C7094FAC();
  sub_1C755200C();
  v34 = [*(v25 + 96) fetchedObjects];
  if (v34)
  {
    v35 = v34;
    v61 = v25;
    v62 = v24;
    v63 = v33;
    v64 = v30;
    v65 = v28;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v36 = sub_1C7550B5C();

    v37 = sub_1C6FB6304();
    v38 = 0;
    v66 = MEMORY[0x1E69E7CC0];
    while (v37 != v38)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1CCA5DDD0](v38, v36);
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v42 = sub_1C70CAC04(v39);
      v44 = v43;

      ++v38;
      if (v44)
      {
        v45 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v45 = v50;
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        v66 = v45;
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_15(v46);
          sub_1C6FB1814();
          v66 = v51;
        }

        v48 = v66;
        *(v66 + 16) = v47 + 1;
        v49 = v48 + 16 * v47;
        *(v49 + 32) = v42;
        *(v49 + 40) = v44;
        v38 = v41;
      }
    }

    *&v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    v52 = v65;
    v54 = v62;
    v53 = v63;
    sub_1C7551D2C();
    if (v54)
    {
      (*(v64 + 8))(v53, v52);
    }

    else
    {

      v55 = v61;
      v56 = v61[3];
      v57 = v61[4];
      v58 = v61[5];
      v59 = v61[6];
      *&v67 = v61[2];
      *(&v67 + 1) = v56;
      v68 = v57;
      v69 = v58;
      v70 = v59;
      sub_1C7095054();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_9_18();
      sub_1C7551D2C();
      v60 = v64;

      v67 = *(v55 + 4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
      sub_1C70950A8();
      OUTLINED_FUNCTION_9_18();
      sub_1C7551D2C();
      *&v67 = v55[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B38, &unk_1C75663B0);
      sub_1C7095124();
      OUTLINED_FUNCTION_9_18();
      sub_1C7551D2C();
      LOBYTE(v67) = 3;
      sub_1C7551CCC();
      (*(v60 + 8))(v53, v52);
    }
  }

  else
  {
    sub_1C7095000();
    swift_allocError();
    swift_willThrow();
    (*(v30 + 8))(v33, v28);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t Story.deinit()
{

  return v0;
}

uint64_t Story.__deallocating_deinit()
{
  Story.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7093638@<X0>(uint64_t *a1@<X8>)
{
  result = Story.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C70936F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  __swift_allocate_value_buffer(v0, qword_1EC216AF8);
  __swift_project_value_buffer(v0, qword_1EC216AF8);
  return sub_1C7551A0C();
}

uint64_t static StoryChapter.photoLibraryUserInfoKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  v3 = __swift_project_value_buffer(v2, qword_1EC216AF8);

  return sub_1C70951FC(v3, a1);
}

id sub_1C70937F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C754DD2C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6F65BE8(0, &qword_1EDD10110, 0x1E69789A8);
  v5 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C754DCCC();

  result = sub_1C70938C0(v4);
  qword_1EC216B10 = result;
  return result;
}

id sub_1C70938C0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C754DC8C();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1C754DD2C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id static StoryChapter.library.getter()
{
  if (qword_1EC213D48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC216B10;

  return v1;
}

uint64_t StoryChapter.description.getter()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 32) fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v4 = sub_1C7550B5C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = [v1 fetchedObjects];
  if (v5)
  {
    v6 = v5;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v7 = sub_1C7550B5C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_18();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759B740);
  OUTLINED_FUNCTION_11_17();
  MEMORY[0x1CCA5CD70](0x73416C6C61202C22, 0xEE00282073746573);
  v8 = sub_1C6FB6304();
  v9 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v9);

  OUTLINED_FUNCTION_16_13();
  if (v8)
  {
    result = OUTLINED_FUNCTION_12_19();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v11 = 0;
    v12 = v8;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1CCA5DDD0](v11, v4);
      }

      else
      {
        v13 = *(v4 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = sub_1C70CAC04(v13);
      v17 = v16;

      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_15(v18);
        sub_1C716C9F0(v21, v19 + 1, 1);
      }

      ++v11;
      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v8 != v11);

    OUTLINED_FUNCTION_15_18();
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
  MEMORY[0x1CCA5D090](v12, v22);

  OUTLINED_FUNCTION_11_17();

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C759B770);
  v23 = sub_1C6FB6304();
  v24 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v24);

  OUTLINED_FUNCTION_16_13();
  if (!v23)
  {

    v26 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v36 = MEMORY[0x1CCA5D090](v26, v22);
    v38 = v37;

    MEMORY[0x1CCA5CD70](v36, v38);

    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    return 0;
  }

  result = OUTLINED_FUNCTION_12_19();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v23;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1CCA5DDD0](v25, v7);
      }

      else
      {
        v27 = *(v7 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = sub_1C70CAC04(v27);
      v31 = v30;

      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        v35 = OUTLINED_FUNCTION_15(v32);
        sub_1C716C9F0(v35, v33 + 1, 1);
      }

      ++v25;
      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
    }

    while (v23 != v25);

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t StoryChapter.init(id:searchQuery:allAssets:curatedAssets:similarityScoreByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

PhotosIntelligence::StoryChapter::CodingKeys_optional __swiftcall StoryChapter.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::StoryChapter::CodingKeys_optional __swiftcall StoryChapter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = StoryChapter.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t StoryChapter.CodingKeys.stringValue.getter()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0x7551686372616573;
      break;
    case 2:
      result = 0x74657373416C6C61;
      break;
    case 3:
      result = 0x4164657461727563;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7093F54@<X0>(unint64_t *a1@<X8>)
{
  result = StoryChapter.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7093F88(uint64_t a1)
{
  v2 = sub_1C709526C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7093FC4(uint64_t a1)
{
  v2 = sub_1C709526C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryChapter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v80 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B58, &unk_1C75663C0);
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v74 - v28;
  v30 = *v20;
  v78 = v20[1];
  v79 = v30;
  v31 = v20[2];
  v74[3] = v20[3];
  v74[4] = v31;
  v32 = v20[4];
  v81 = v20[5];
  v74[2] = v20[6];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1C709526C();
  sub_1C755200C();
  v33 = [v32 fetchedObjects];
  if (v33)
  {
    v34 = v33;
    v75 = v29;
    v76 = v26;
    v77 = v24;
    v74[1] = sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v35 = sub_1C7550B5C();

    v36 = sub_1C6FB6304();
    v37 = 0;
    v82 = MEMORY[0x1E69E7CC0];
    while (v36 != v37)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1CCA5DDD0](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v41 = sub_1C70CAC04(v38);
      v43 = v42;

      ++v37;
      if (v43)
      {
        v44 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v44 = v49;
        }

        v46 = *(v44 + 16);
        v45 = *(v44 + 24);
        v82 = v44;
        if (v46 >= v45 >> 1)
        {
          sub_1C6FB1814();
          v82 = v50;
        }

        v47 = v82;
        *(v82 + 16) = v46 + 1;
        v48 = v47 + 16 * v46;
        *(v48 + 32) = v41;
        *(v48 + 40) = v43;
        v37 = v40;
      }
    }

    v51 = [v81 fetchedObjects];
    if (!v51)
    {

      sub_1C70952C0();
      swift_allocError();
      swift_willThrow();
      (*(v76 + 8))(v75, v77);
      goto LABEL_34;
    }

    v52 = v51;
    v53 = sub_1C7550B5C();

    v54 = sub_1C6FB6304();
    v55 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    while (v54 != v55)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x1CCA5DDD0](v55, v53);
      }

      else
      {
        if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v56 = *(v53 + 8 * v55 + 32);
      }

      v57 = v56;
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v59 = sub_1C70CAC04(v56);
      v61 = v60;

      ++v55;
      if (v61)
      {
        v62 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v62 = v67;
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v81 = v62;
        if (v64 >= v63 >> 1)
        {
          OUTLINED_FUNCTION_15(v63);
          sub_1C6FB1814();
          v81 = v68;
        }

        v65 = v81;
        *(v81 + 2) = v64 + 1;
        v66 = &v65[16 * v64];
        *(v66 + 4) = v59;
        *(v66 + 5) = v61;
        v55 = v58;
      }
    }

    v69 = v80;
    sub_1C7551CCC();
    if (v69)
    {
      v70 = OUTLINED_FUNCTION_2_20();
      v71(v70);

      goto LABEL_34;
    }

    v83 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_3_23();
    sub_1C7551D2C();

    sub_1C7551CCC();
    v83 = 3;
    OUTLINED_FUNCTION_3_23();
    sub_1C7551D2C();
LABEL_37:

    v83 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
    sub_1C7095314();
    OUTLINED_FUNCTION_3_23();
    sub_1C7551D2C();
    v72 = OUTLINED_FUNCTION_2_20();
    v73(v72);
  }

  else
  {
    sub_1C70952C0();
    swift_allocError();
    swift_willThrow();
    (*(v26 + 8))(v29, v24);
  }

LABEL_34:
  OUTLINED_FUNCTION_125();
}

void static StoryChapter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v9 = a1[6];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[6];
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (v7 || (sub_1C7551DBC() & 1) != 0)
  {
    v8 = v2 == v4 && v3 == v5;
    if (v8 || (sub_1C7551DBC() & 1) != 0)
    {
      sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
      if (sub_1C75513EC() & 1) != 0 && (sub_1C75513EC())
      {

        sub_1C708C5DC(v9, v6);
      }
    }
  }
}

uint64_t StoryChapter.hash(into:)(const void *a1)
{
  v3 = *(v1 + 48);
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C75513FC();

  return sub_1C7090D88(a1, v3);
}

uint64_t StoryChapter.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C75513FC();
  sub_1C7090D88(v3, v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7094834@<X0>(uint64_t *a1@<X8>)
{
  result = StoryChapter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7094864(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v5[72] = *v1;
  v6 = v2;
  v3 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v3;
  sub_1C7551F3C();
  StoryChapter.hash(into:)(v5);
  return sub_1C7551FAC();
}

void __swiftcall StoryCompletion.init(title:subtitle:queries:)(PhotosIntelligence::StoryCompletion *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::OpaquePointer queries)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->queries = queries;
}

unint64_t sub_1C7094934(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7094980(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 0x73656972657571;
}

unint64_t sub_1C70949FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C7094934(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C7094A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7094980(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C7094A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7094934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7094A88(uint64_t a1)
{
  v2 = sub_1C7095398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7094AC4(uint64_t a1)
{
  v2 = sub_1C7095398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryCompletion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B70, &qword_1C75663D0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C7095398();
  sub_1C7551FFC();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v30 = sub_1C7551B6C();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    v33 = 0xE000000000000000;
    if (v31)
    {
      v33 = v31;
    }

    v44 = v33;
    v42 = sub_1C7551B6C();
    v43 = v32;
    v41 = v34;
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C7551BAC();
    v36 = v35;
    if (v41)
    {
      v37 = v42;
    }

    else
    {
      v37 = 0;
    }

    if (v45)
    {
      v38 = v45;
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = OUTLINED_FUNCTION_4();
    v40(v39);
    *v28 = v43;
    v28[1] = v44;
    v28[2] = v37;
    v28[3] = v36;
    v28[4] = v38;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_125();
}

void StoryCompletion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v41 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B80, &qword_1C75663D8);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v37 - v32;
  v34 = v24[2];
  v39 = v24[3];
  v40 = v34;
  v38 = v24[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C7095398();
  sub_1C755200C();
  v35 = v41;
  sub_1C7551CCC();
  if (!v35)
  {
    v36 = v38;
    sub_1C7551CCC();
    v42 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    sub_1C7551D2C();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7094FAC()
{
  result = qword_1EC216B20;
  if (!qword_1EC216B20)
  {
    result = swift_getWitnessTable(aI6, &type metadata for Story.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B20);
  }

  return result;
}

unint64_t sub_1C7095000()
{
  result = qword_1EC216B28;
  if (!qword_1EC216B28)
  {
    result = swift_getWitnessTable(byte_1C7566B30, &type metadata for Story.Error, v0, v1);
    atomic_store(result, &qword_1EC216B28);
  }

  return result;
}

unint64_t sub_1C7095054()
{
  result = qword_1EC216B30;
  if (!qword_1EC216B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryCompletion, &type metadata for StoryCompletion, v0, v1);
    atomic_store(result, &qword_1EC216B30);
  }

  return result;
}

unint64_t sub_1C70950A8()
{
  result = qword_1EDD06C00;
  if (!qword_1EDD06C00)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215620, &qword_1C756EAF0);
    v4[0] = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD06C00);
  }

  return result;
}

unint64_t sub_1C7095124()
{
  result = qword_1EC216B40;
  if (!qword_1EC216B40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216B38, &unk_1C75663B0);
    v4[0] = sub_1C70951A8();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC216B40);
  }

  return result;
}

unint64_t sub_1C70951A8()
{
  result = qword_1EC216B48;
  if (!qword_1EC216B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter, &type metadata for StoryChapter, v0, v1);
    atomic_store(result, &qword_1EC216B48);
  }

  return result;
}

uint64_t sub_1C70951FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216B50, &qword_1C756EA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C709526C()
{
  result = qword_1EC216B60;
  if (!qword_1EC216B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter.CodingKeys, &type metadata for StoryChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B60);
  }

  return result;
}

unint64_t sub_1C70952C0()
{
  result = qword_1EC216B68;
  if (!qword_1EC216B68)
  {
    result = swift_getWitnessTable(byte_1C7566AF0, &type metadata for StoryChapter.Error, v0, v1);
    atomic_store(result, &qword_1EC216B68);
  }

  return result;
}

unint64_t sub_1C7095314()
{
  result = qword_1EDD06C30;
  if (!qword_1EDD06C30)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215708, &qword_1C7570280);
    v4[0] = MEMORY[0x1E69E6160];
    v4[1] = MEMORY[0x1E69E63C0];
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EDD06C30);
  }

  return result;
}

unint64_t sub_1C7095398()
{
  result = qword_1EC216B78;
  if (!qword_1EC216B78)
  {
    result = swift_getWitnessTable(byte_1C7566AA0, &type metadata for StoryCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B78);
  }

  return result;
}

unint64_t sub_1C70953F0()
{
  result = qword_1EC216B88;
  if (!qword_1EC216B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter.CodingKeys, &type metadata for StoryChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B88);
  }

  return result;
}

unint64_t sub_1C7095448()
{
  result = qword_1EC216B90;
  if (!qword_1EC216B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter.CodingKeys, &type metadata for StoryChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B90);
  }

  return result;
}

unint64_t sub_1C70954A0()
{
  result = qword_1EC216B98;
  if (!qword_1EC216B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter.CodingKeys, &type metadata for StoryChapter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216B98);
  }

  return result;
}

unint64_t sub_1C70954F8()
{
  result = qword_1EC216BA0;
  if (!qword_1EC216BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryChapter, &type metadata for StoryChapter, v0, v1);
    atomic_store(result, &qword_1EC216BA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C70956B8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C7095764(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7095844()
{
  result = qword_1EC216BA8;
  if (!qword_1EC216BA8)
  {
    result = swift_getWitnessTable(byte_1C75668B8, &type metadata for Story.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BA8);
  }

  return result;
}

unint64_t sub_1C709589C()
{
  result = qword_1EC216BB0;
  if (!qword_1EC216BB0)
  {
    result = swift_getWitnessTable(asc_1C7566920, &type metadata for Story.Error, v0, v1);
    atomic_store(result, &qword_1EC216BB0);
  }

  return result;
}

unint64_t sub_1C70958F4()
{
  result = qword_1EC216BB8;
  if (!qword_1EC216BB8)
  {
    result = swift_getWitnessTable(byte_1C7566988, &type metadata for StoryChapter.Error, v0, v1);
    atomic_store(result, &qword_1EC216BB8);
  }

  return result;
}

unint64_t sub_1C709594C()
{
  result = qword_1EC216BC0;
  if (!qword_1EC216BC0)
  {
    result = swift_getWitnessTable(byte_1C7566A78, &type metadata for StoryCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BC0);
  }

  return result;
}

unint64_t sub_1C70959A4()
{
  result = qword_1EC216BC8;
  if (!qword_1EC216BC8)
  {
    result = swift_getWitnessTable(aA1, &type metadata for StoryCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BC8);
  }

  return result;
}

unint64_t sub_1C70959FC()
{
  result = qword_1EC216BD0;
  if (!qword_1EC216BD0)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for StoryCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BD0);
  }

  return result;
}

unint64_t sub_1C7095A54()
{
  result = qword_1EC216BD8;
  if (!qword_1EC216BD8)
  {
    result = swift_getWitnessTable(byte_1C7566828, &type metadata for Story.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BD8);
  }

  return result;
}

unint64_t sub_1C7095AAC()
{
  result = qword_1EC216BE0;
  if (!qword_1EC216BE0)
  {
    result = swift_getWitnessTable(byte_1C7566850, &type metadata for Story.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216BE0);
  }

  return result;
}

uint64_t StoryPrompt.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

Swift::String __swiftcall StoryPrompt.fullyRendered()()
{
  v29 = *(v0 + 48);
  v3 = StoryPrompt.gmsPromptTemplated()();
  v4 = sub_1C75504DC() + 64;
  OUTLINED_FUNCTION_11();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  sub_1C75504FC();
  countAndFlagsBits = sub_1C75504FC();
  v12 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_11_18();
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_6_25();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v1, v2);

      v14 = OUTLINED_FUNCTION_7_17();
      MEMORY[0x1CCA5CD70](v14);
      v1 = v30;
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_4_21();
      OUTLINED_FUNCTION_1_31();
      sub_1C755155C();
      v2 = v15;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v13 >= v9)
    {
      break;
    }

    ++v12;
    if (*(v4 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_11();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  sub_1C75504FC();
  countAndFlagsBits = sub_1C75504FC();
  v21 = 0;
  if (v18)
  {
    while (1)
    {
LABEL_10:
      OUTLINED_FUNCTION_11_18();
      v24 = (*(v29 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      OUTLINED_FUNCTION_6_25();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v25, v26);

      v27 = OUTLINED_FUNCTION_7_17();
      MEMORY[0x1CCA5CD70](v27);
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_4_21();
      OUTLINED_FUNCTION_1_31();
      sub_1C755155C();
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      countAndFlagsBits = v3._countAndFlagsBits;
      object = v3._object;
      goto LABEL_14;
    }

    ++v21;
    if (*(v29 + 64 + 8 * v22))
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  __break(1u);
LABEL_14:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void __swiftcall StoryPrompt.init(systemPrompt:userPrompt:bindings:)(PhotosIntelligence::StoryPrompt *__return_ptr retstr, Swift::String systemPrompt, Swift::String userPrompt, Swift::OpaquePointer bindings)
{
  object = userPrompt._object;
  countAndFlagsBits = userPrompt._countAndFlagsBits;
  retstr->systemPrompt = systemPrompt;
  retstr->unrenderedUserPrompt = userPrompt;
  retstr->bindings = bindings;
  v8 = bindings._rawValue + 64;
  OUTLINED_FUNCTION_11();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      retstr->userPrompt._countAndFlagsBits = countAndFlagsBits;
      retstr->userPrompt._object = object;
      return;
    }

    v11 = *&v8[8 * v15];
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        OUTLINED_FUNCTION_17_17();
        OUTLINED_FUNCTION_6_25();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v4, v5);

        v16 = OUTLINED_FUNCTION_7_17();
        MEMORY[0x1CCA5CD70](v16);
        v4 = v19;
        sub_1C6FB5E8C();
        OUTLINED_FUNCTION_4_21();
        OUTLINED_FUNCTION_1_31();
        countAndFlagsBits = sub_1C755155C();
        v5 = v17;

        object = v5;
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
}

uint64_t StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)@<X0>(int a1@<W2>, unint64_t a2@<X3>, char a3@<W4>, unint64_t *a4@<X8>)
{
  v117 = a2;
  LODWORD(v111) = a1;
  v103 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BE8, &unk_1C7566BC0);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v100 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF0, &qword_1C758D580);
  OUTLINED_FUNCTION_3_0();
  v107 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  OUTLINED_FUNCTION_3_0();
  v110 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C00, &qword_1C7566BD8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C08, &qword_1C7566BE0);
  OUTLINED_FUNCTION_3_0();
  v105 = v19;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C10, &qword_1C7566BE8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v100 - v25;
  if (a3)
  {
    v110 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C28, &qword_1C7566C18);
    OUTLINED_FUNCTION_3_24();
    sub_1C7099594(v27, v28, v29, v30);
    sub_1C754EE4C();
    OUTLINED_FUNCTION_90();
    sub_1C755184C();
    v31 = v112;
    sub_1C754EE5C();
    if (v31)
    {
      OUTLINED_FUNCTION_14_18();
      v33 = v26;
      v34 = v22;
LABEL_6:
      v32(v33, v34);
    }

    v41 = v108;
    if (__swift_getEnumTagSinglePayload(v18, 1, v108) == 1)
    {

      sub_1C7030CDC(v18, &qword_1EC216C00, &qword_1C7566BD8);
      sub_1C7098F94();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_14_18();
      v43 = v26;
      v44 = v22;
      return v42(v43, v44);
    }

    v107 = v26;
    v109 = v22;
    v112 = 0;
    v105[4](v104, v18, v41);
    swift_getKeyPath();
    sub_1C754EE7C();

    OUTLINED_FUNCTION_16_14();
    v106 = v46;
    v111 = v47;

    swift_getKeyPath();
    sub_1C754EE7C();

    OUTLINED_FUNCTION_16_14();
    v49 = v48;
    v51 = v50;

    v52 = v117 + 64;
    OUTLINED_FUNCTION_11();
    v55 = v54 & v53;
    v57 = (v56 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    result = swift_bridgeObjectRetain_n();
    v58 = 0;
    v101 = v51;
    v102 = v49;
    v59 = v49;
    if (v55)
    {
      while (1)
      {
LABEL_16:
        OUTLINED_FUNCTION_8_17();
        v62 = *v61;
        v63 = v61[1];
        v66 = (v65 + v64);
        v68 = *v66;
        v67 = v66[1];
        v115 = v59;
        v116 = v51;
        OUTLINED_FUNCTION_15_19();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v62, v63);

        v69 = OUTLINED_FUNCTION_7_17();
        MEMORY[0x1CCA5CD70](v69);
        v113 = v68;
        v114 = v67;
        sub_1C6FB5E8C();
        OUTLINED_FUNCTION_10_21();
        OUTLINED_FUNCTION_1_31();
        v59 = sub_1C755155C();
        v71 = v70;

        v51 = v71;
      }
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v57)
      {
        v74 = v51;
        v94 = v101;

        v95 = v117;

        (v105[1])(v104, v108);
        result = (*(v110 + 8))(v107, v109);
        v96 = v106;
        goto LABEL_24;
      }

      ++v58;
      if (*(v52 + 8 * v60))
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
    OUTLINED_FUNCTION_3_24();
    sub_1C7099594(v35, v36, v37, v38);
    sub_1C754EE4C();
    OUTLINED_FUNCTION_90();
    sub_1C755184C();
    v39 = v112;
    sub_1C754EE5C();
    if (v39)
    {
      OUTLINED_FUNCTION_14_18();
      v33 = v15;
      v34 = v11;
      goto LABEL_6;
    }

    v45 = v109;
    if (__swift_getEnumTagSinglePayload(v7, 1, v109) == 1)
    {

      sub_1C7030CDC(v7, &qword_1EC216BE8, &unk_1C7566BC0);
      sub_1C7098F94();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_14_18();
      v43 = v15;
      v44 = v11;
      return v42(v43, v44);
    }

    v105 = v15;
    v108 = v11;
    v112 = 0;
    v107[4](v106, v7, v45);
    v111 = 0x80000001C759B7F0;
    swift_getKeyPath();
    sub_1C754EE7C();

    OUTLINED_FUNCTION_16_14();
    v59 = v72;
    v74 = v73;

    v75 = v117 + 64;
    OUTLINED_FUNCTION_11();
    v78 = v77 & v76;
    v80 = (v79 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    result = swift_bridgeObjectRetain_n();
    v81 = 0;
    v101 = v74;
    v102 = v59;
    if (v78)
    {
      while (1)
      {
LABEL_21:
        OUTLINED_FUNCTION_8_17();
        v84 = *v83;
        v85 = v83[1];
        v88 = (v87 + v86);
        v90 = *v88;
        v89 = v88[1];
        v115 = v59;
        v116 = v74;
        OUTLINED_FUNCTION_15_19();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v84, v85);

        v91 = OUTLINED_FUNCTION_7_17();
        MEMORY[0x1CCA5CD70](v91);
        v113 = v90;
        v114 = v89;
        sub_1C6FB5E8C();
        OUTLINED_FUNCTION_10_21();
        OUTLINED_FUNCTION_1_31();
        v59 = sub_1C755155C();
        v93 = v92;

        v74 = v93;
      }
    }

    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v82 >= v80)
      {
        v94 = v101;

        v95 = v117;

        (v107[1])(v106, v109);
        OUTLINED_FUNCTION_14_18();
        result = v97(v105, v108);
        v96 = 0xD000000000000036;
LABEL_24:
        v98 = v103;
        *v103 = v96;
        v98[1] = v111;
        v98[2] = v59;
        v99 = v102;
        v98[3] = v74;
        v98[4] = v99;
        v98[5] = v94;
        v98[6] = v95;
        return result;
      }

      ++v81;
      if (*(v75 + 8 * v82))
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7096A14@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v45 = sub_1C754EDEC();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C58, &qword_1C7566F20);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30 - v16;
  v49 = 0xD000000000000075;
  v50 = 0x80000001C759B900;
  v35 = sub_1C7099334();
  MEMORY[0x1CCA5AA40](v51, &v49, MEMORY[0x1E69E6158], v35);
  sub_1C754E55C();
  sub_1C7097C34(v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  v31 = v9;
  v32 = v1;
  sub_1C754EDBC();
  v38 = *(v2 + 8);
  v39 = v2 + 8;
  v38(v6, v1);
  v18 = *(v10 + 8);
  v36 = v10 + 8;
  v37 = v18;
  v18(v12, v45);
  MEMORY[0x1CCA5AA90](v9, v17);
  v19 = sub_1C7099594(&qword_1EDD0CB50, &qword_1EC216C58, &qword_1C7566F20, MEMORY[0x1E69E8278]);
  v20 = v33;
  v21 = v44;
  MEMORY[0x1CCA5AA40](v14, v44, v19);
  v22 = *(v46 + 8);
  v46 += 8;
  v34 = v22;
  v22(v14, v21);
  v47 = 0xD00000000000004FLL;
  v48 = 0x80000001C759B8B0;
  MEMORY[0x1CCA5AA40](&v49, &v47, MEMORY[0x1E69E6158], v35);
  v47 = v51[0];
  v48 = v51[1];
  sub_1C754E53C();

  sub_1C754E55C();
  v23 = v40;
  v24 = v32;
  sub_1C754EDAC();
  v25 = v31;
  v26 = v20;
  v27 = v44;
  sub_1C754ED9C();
  v28 = v38;
  v38(v23, v24);
  v37(v12, v45);
  sub_1C746C854(v25, v49, v50, v43);

  (*(v41 + 8))(v25, v42);
  v28(v6, v24);
  return v34(v26, v27);
}

uint64_t sub_1C7096F6C@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C10, &qword_1C7566BE8);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v68 - v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v68 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C58, &qword_1C7566F20);
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v92 = sub_1C754EDEC();
  v99 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C68, &qword_1C7566F30);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v68 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C70, &qword_1C7566F38);
  v97 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v68 - v28;
  v107 = 0xD000000000000020;
  v108 = 0x80000001C759B9A0;
  v29 = sub_1C7099334();
  MEMORY[0x1CCA5AA40](v109, &v107, MEMORY[0x1E69E6158], v29);
  v30 = sub_1C754EE2C();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v30);
  sub_1C754E55C();
  v86 = v16;
  sub_1C7097BA4(v31);
  v70 = MEMORY[0x1E69E9290];
  v81 = sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  v32 = MEMORY[0x1E69E67B0];
  v33 = v10;
  sub_1C754EDDC();
  v34 = *(v100 + 8);
  v100 += 8;
  v34(v16, v10);
  v35 = v34;
  v94 = v34;
  v84 = *(v99 + 8);
  v99 += 8;
  v84(v21, v92);
  sub_1C7030CDC(v24, &qword_1EC216C68, &qword_1C7566F30);
  MEMORY[0x1CCA5AA60](v19, v32);
  v36 = sub_1C7099594(&qword_1EC216C78, &qword_1EC216C70, &qword_1C7566F38, MEMORY[0x1E69E8220]);
  v37 = v89;
  MEMORY[0x1CCA5AA40](v26, v89, v36);
  v38 = *(v97 + 8);
  v97 += 8;
  v71 = v38;
  v38(v26, v37);
  v105 = 8224032;
  v106 = 0xE300000000000000;
  v69 = v29;
  MEMORY[0x1CCA5AA40](&v107, &v105, MEMORY[0x1E69E6158], v29);
  sub_1C754E55C();
  sub_1C7097C34(v19);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
  v40 = v88;
  v68 = v39;
  v91 = v33;
  sub_1C754EDBC();
  v35(v19, v33);
  v41 = v92;
  v84(v21, v92);
  v42 = v87;
  MEMORY[0x1CCA5AA90](v40, v39);
  v82 = sub_1C7099594(&qword_1EDD0CB50, &qword_1EC216C58, &qword_1C7566F20, MEMORY[0x1E69E8278]);
  v43 = v96;
  MEMORY[0x1CCA5AA40](v42, v96, v82);
  v44 = *(v98 + 8);
  v98 += 8;
  v85 = v44;
  v44(v42, v43);
  v103 = 0xD00000000000004ALL;
  v104 = 0x80000001C759B860;
  MEMORY[0x1CCA5AA40](&v105, &v103, MEMORY[0x1E69E6158], v29);
  sub_1C754E55C();
  v83 = v19;
  sub_1C7097C34(v19);
  v45 = v68;
  v46 = v91;
  sub_1C754EDBC();
  v94(v19, v46);
  v47 = v84;
  v84(v21, v41);
  v48 = v72;
  v49 = v40;
  MEMORY[0x1CCA5AA90](v40, v45);
  v50 = v96;
  MEMORY[0x1CCA5AA40](v48, v96, v82);
  v85(v48, v50);
  v101 = 0xD00000000000004FLL;
  v102 = 0x80000001C759B8B0;
  MEMORY[0x1CCA5AA40](&v103, &v101, MEMORY[0x1E69E6158], v69);
  v101 = v109[0];
  v102 = v109[1];
  sub_1C754E53C();

  sub_1C70980AC(v93, v86);
  v51 = v107;
  v52 = v108;
  sub_1C754E55C();
  sub_1C7099388(v51, v52, v90);

  v53 = v92;
  v47(v21, v92);
  sub_1C754E55C();
  v54 = v73;
  v55 = v91;
  sub_1C754EDAC();
  v56 = v96;
  sub_1C754ED9C();
  v94(v54, v55);
  v47(v21, v53);
  v57 = v47;
  v58 = v74;
  sub_1C746C854(v49, v105, v106, v74);

  sub_1C754E55C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C28, &qword_1C7566C18);
  sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8, &qword_1C7566BD0, v70);
  v59 = v76;
  v60 = v58;
  v61 = v87;
  v62 = v75;
  sub_1C754ED9C();
  v57(v21, v53);
  sub_1C709832C(v59, v103, v104, v79);

  (*(v78 + 8))(v59, v80);
  v63 = *(v77 + 8);
  v63(v60, v62);
  v63(v88, v62);
  v64 = v91;
  v65 = v94;
  v94(v90, v91);
  v65(v86, v64);
  v65(v83, v64);
  v66 = v85;
  v85(v61, v56);
  v66(v95, v56);
  return v71(v93, v89);
}

uint64_t sub_1C7097BA4(__n128 a1)
{
  v3 = 0x746C75616665642ELL;
  v4 = 0xE800000000000000;
  v1 = sub_1C7099334();
  MEMORY[0x1CCA5AA40](v5, &v3, MEMORY[0x1E69E6158], v1);
  v3 = v5[0];
  v4 = v5[1];
  sub_1C754E53C();
}

uint64_t sub_1C7097C34@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1C754E56C();
  OUTLINED_FUNCTION_3_0();
  v49 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  OUTLINED_FUNCTION_3_0();
  v51 = v10;
  v52 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v44 - v16;
  v50 = sub_1C754EDEC();
  OUTLINED_FUNCTION_3_0();
  v48 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C68, &qword_1C7566F30);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C80, &unk_1C7566F40);
  OUTLINED_FUNCTION_3_0();
  v46 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_78();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v45 = &v44 - v30;
  v31 = sub_1C754EE2C();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v31);
  sub_1C754E55C();
  sub_1C754EE0C();
  v32 = sub_1C709953C();
  MEMORY[0x1CCA5AA40](v6, v1, v32);
  v33 = *(v49 + 8);
  v33(v6, v1);
  sub_1C754E53C();
  v33(v9, v1);
  OUTLINED_FUNCTION_3_24();
  sub_1C7099594(v34, &qword_1EC216C60, &qword_1C7566F28, v35);
  v36 = MEMORY[0x1E69E67B0];
  v37 = v47;
  v38 = v51;
  v39 = v44;
  sub_1C754EDCC();
  (*(v52 + 8))(v14, v38);
  (*(v48 + 8))(v39, v50);
  sub_1C7030CDC(v22, &qword_1EC216C68, &qword_1C7566F30);
  MEMORY[0x1CCA5AAA0](v37, v36);
  v40 = sub_1C7099594(&qword_1EDD0CB48, &qword_1EC216C80, &unk_1C7566F40, MEMORY[0x1E69E8290]);
  v41 = v45;
  MEMORY[0x1CCA5AA40](v28, v23, v40);
  v42 = *(v46 + 8);
  v42(v28, v23);
  sub_1C754E53C();
  return (v42)(v41, v23);
}

uint64_t sub_1C70980AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v16 = sub_1C754EDEC();
  v10 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E55C();
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  sub_1C754EDAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C70, &qword_1C7566F38);
  sub_1C7099594(&qword_1EC216C78, &qword_1EC216C70, &qword_1C7566F38, MEMORY[0x1E69E8220]);
  sub_1C754EDAC();
  sub_1C754ED9C();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_1C709832C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v16 = sub_1C754EDEC();
  v10 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E55C();
  v19 = a2;
  v20 = a3;
  sub_1C7099334();
  sub_1C754EDAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C28, &qword_1C7566C18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C10, &qword_1C7566BE8);
  v13 = MEMORY[0x1E69E9290];
  sub_1C7099594(&qword_1EC216C30, &qword_1EC216C10, &qword_1C7566BE8, MEMORY[0x1E69E9290]);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, v13);
  sub_1C754ED9C();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v16);
}

uint64_t static StoryPrompt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C7551DBC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_90();

      return sub_1C7551DBC();
    }
  }

  return result;
}

uint64_t sub_1C709865C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72506D6574737973 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F725072657375 && a2 == 0xEA00000000007470;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C759B980 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73676E69646E6962 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

unint64_t sub_1C70987C8(char a1)
{
  result = 0x72506D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x6D6F725072657375;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x73676E69646E6962;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7098864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C709865C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C709888C(uint64_t a1)
{
  v2 = sub_1C7098FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70988C8(uint64_t a1)
{
  v2 = sub_1C7098FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryPrompt.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C38, &unk_1C7566C60);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7098FE8();
  sub_1C755200C();
  v25 = 0;
  v11 = v20;
  sub_1C7551CCC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1C7551CCC();
    v23 = 2;
    sub_1C7551CCC();
    v21 = v12;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C703195C(&qword_1EDD06C70, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t StoryPrompt.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C40, &qword_1C7566C70);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7098FE8();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v18 = v7;
  v8 = sub_1C7551BBC();
  v17 = v9;
  v15 = v8;
  v14 = sub_1C7551BBC();
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  sub_1C703195C(&qword_1EC216128, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C7551C1C();
  v12 = OUTLINED_FUNCTION_2_10();
  v13(v12);
  *a2 = v6;
  a2[1] = v18;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = v19;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::String __swiftcall StoryPrompt.gmsPromptTemplated()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *v0 == 0xD000000000000036 && 0x80000001C759B7F0 == v2;
  if (v5 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C755180C();
    v6 = "ialToken.chat.role.assistant }}";
    v7 = 0xD000000000000075;
  }

  else
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C759B830);
    MEMORY[0x1CCA5CD70](v1, v2);
    v6 = "chat.role.system }}";
    v7 = 0xD00000000000004ALL;
  }

  MEMORY[0x1CCA5CD70](v7, v6 | 0x8000000000000000);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD00000000000004FLL, 0x80000001C759B8B0);
  v8 = 0;
  v9 = 0xE000000000000000;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_1C7098F94()
{
  result = qword_1EC216C20;
  if (!qword_1EC216C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryPrompt.Error, &type metadata for StoryPrompt.Error, v0, v1);
    atomic_store(result, &qword_1EC216C20);
  }

  return result;
}

unint64_t sub_1C7098FE8()
{
  result = qword_1EDD0C450;
  if (!qword_1EDD0C450)
  {
    result = swift_getWitnessTable(byte_1C7566ED0, &type metadata for StoryPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C450);
  }

  return result;
}

unint64_t sub_1C7099040()
{
  result = qword_1EC216C48;
  if (!qword_1EC216C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryPrompt.Error, &type metadata for StoryPrompt.Error, v0, v1);
    atomic_store(result, &qword_1EC216C48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryPrompt.Error(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for StoryPrompt.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7099230()
{
  result = qword_1EC216C50;
  if (!qword_1EC216C50)
  {
    result = swift_getWitnessTable(byte_1C7566EA8, &type metadata for StoryPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216C50);
  }

  return result;
}

unint64_t sub_1C7099288()
{
  result = qword_1EDD0C440;
  if (!qword_1EDD0C440)
  {
    result = swift_getWitnessTable(byte_1C7566E18, &type metadata for StoryPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C440);
  }

  return result;
}

unint64_t sub_1C70992E0()
{
  result = qword_1EDD0C448;
  if (!qword_1EDD0C448)
  {
    result = swift_getWitnessTable(byte_1C7566E40, &type metadata for StoryPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0C448);
  }

  return result;
}

unint64_t sub_1C7099334()
{
  result = qword_1EDD0D0B8;
  if (!qword_1EDD0D0B8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E82B0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EDD0D0B8);
  }

  return result;
}

uint64_t sub_1C7099388@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v15[2] = a2;
  v15[3] = a3;
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  sub_1C754EDAC();
  sub_1C7099334();
  sub_1C754EDAC();
  sub_1C754ED9C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  return (v13)(v12, v6);
}

unint64_t sub_1C709953C()
{
  result = qword_1EDD0CB58;
  if (!qword_1EDD0CB58)
  {
    v3 = sub_1C754E56C();
    result = swift_getWitnessTable(MEMORY[0x1E69E8248], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CB58);
  }

  return result;
}

uint64_t sub_1C7099594(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ShufflePreference.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7099600@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ShufflePreference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_1C7099648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70996BC(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C70996BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___PNAssetElectionOptions_collectionType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C7099710(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___PNAssetElectionOptions_collectionType;
  result = OUTLINED_FUNCTION_0_27(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C709979C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C75504FC();
  return sub_1C7099820(v1, v2);
}

uint64_t sub_1C70997DC(uint64_t a1)
{
  OUTLINED_FUNCTION_8_18(a1);
  v2 = *v1;
  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C7099820(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_7(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C70998B8(uint64_t a1)
{
  v2 = OBJC_IVAR___PNAssetElectionOptions_limit;
  OUTLINED_FUNCTION_1_6(a1);
  return *(v1 + v2);
}

uint64_t sub_1C70998EC(uint64_t a1)
{
  v3 = OBJC_IVAR___PNAssetElectionOptions_limit;
  result = OUTLINED_FUNCTION_0_27(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C7099978(uint64_t a1)
{
  v2 = OBJC_IVAR___PNAssetElectionOptions_shufflePreference;
  OUTLINED_FUNCTION_1_6(a1);
  return *(v1 + v2);
}

uint64_t sub_1C70999AC(uint64_t a1)
{
  v3 = OBJC_IVAR___PNAssetElectionOptions_shufflePreference;
  result = OUTLINED_FUNCTION_0_27(a1);
  *(v1 + v3) = a1;
  return result;
}

void sub_1C7099A78()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_1_7(v0);
  OUTLINED_FUNCTION_3_25();
}

uint64_t sub_1C7099B6C(uint64_t a1)
{
  v3 = OBJC_IVAR___PNAssetElectionOptions_assetUUIDsToAvoid;
  OUTLINED_FUNCTION_0_27(a1);
  *(v1 + v3) = a1;
}

void sub_1C7099C40()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_1_7(v0);
  OUTLINED_FUNCTION_3_25();
}

void sub_1C7099D0C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_1_7(v0);
  OUTLINED_FUNCTION_3_25();
}

void sub_1C7099E0C()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_1_7(v0);
  OUTLINED_FUNCTION_3_25();
}

id AssetElectionOptions.init(collectionType:collectionLocalIdentifier:)()
{
  *&v0[OBJC_IVAR___PNAssetElectionOptions_limit] = 20;
  *&v0[OBJC_IVAR___PNAssetElectionOptions_shufflePreference] = 0;
  v1 = &v0[OBJC_IVAR___PNAssetElectionOptions_customSeed];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR___PNAssetElectionOptions_assetUUIDsToAvoid] = 0;
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_6_26();
  v0[OBJC_IVAR___PNAssetElectionOptions_collectionType] = v2;
  v3 = &v0[OBJC_IVAR___PNAssetElectionOptions_collectionLocalIdentifier];
  *v3 = v4;
  v3[1] = v5;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AssetElectionOptions();
  return objc_msgSendSuper2(&v7, sel_init);
}

id AssetElectionOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetElectionOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetElectionOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C709A06C()
{
  result = qword_1EC216CD0;
  if (!qword_1EC216CD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShufflePreference, &type metadata for ShufflePreference, v0, v1);
    atomic_store(result, &qword_1EC216CD0);
  }

  return result;
}

uint64_t keypath_get_9Tm()
{
  OUTLINED_FUNCTION_7();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t static FeatureSurveyYesNoAnswer.string(for:)(_BYTE *a1)
{
  v1 = 7562585;
  if (*a1 != 1)
  {
    v1 = 28494;
  }

  if (*a1)
  {
    return v1;
  }

  else
  {
    return 0x726577736E616E55;
  }
}

PhotosIntelligence::FeatureSurveyYesNoAnswer_optional __swiftcall FeatureSurveyYesNoAnswer.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x10200u >> (8 * (rawValue + 1));
  if ((rawValue + 1) >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C709A8B4@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureSurveyYesNoAnswer.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FeatureSurveyYesNoViewType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void *sub_1C709A974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C709A9E8(a2, &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1C709A9E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = OUTLINED_FUNCTION_0_34(a1);
  *a2 = *(v2 + 89);
  return result;
}

uint64_t sub_1C709AA1C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 89) = v2;
  return result;
}

uint64_t FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  v12 = *a11;
  *(v11 + 89) = 0;
  *(v11 + 90) = v12;
  return sub_1C6FE5B58(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1C709AB90(uint64_t a1)
{
  OUTLINED_FUNCTION_0_34(a1);
  if (*(v1 + 89))
  {
    return *(v1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C709ABC4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_34(a1);
  v2 = *(v1 + 89);
  if (*(v1 + 89))
  {
    v3 = 32;
    if (v2 != 1)
    {
      v3 = 48;
    }

    v2 = *(v1 + v3);
    sub_1C75504FC();
  }

  return v2;
}

uint64_t sub_1C709AC64()
{
  v0 = sub_1C6FA7014();
  OUTLINED_FUNCTION_0_34(v0);
  return sub_1C75513CC();
}

uint64_t FeatureSurveyYesNoQuestion.__deallocating_deinit()
{
  FeatureSurveyQuestion.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C709ACE8()
{
  result = qword_1EC216CD8;
  if (!qword_1EC216CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureSurveyYesNoAnswer, &type metadata for FeatureSurveyYesNoAnswer, v0, v1);
    atomic_store(result, &qword_1EC216CD8);
  }

  return result;
}

unint64_t sub_1C709AD40()
{
  result = qword_1EC216CE0;
  if (!qword_1EC216CE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureSurveyYesNoViewType, &type metadata for FeatureSurveyYesNoViewType, v0, v1);
    atomic_store(result, &qword_1EC216CE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureSurveyYesNoAnswer(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FeatureSurveyYesNoViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C709B020()
{
  OUTLINED_FUNCTION_16_15();
  if (*(v1 + 24))
  {
    sub_1C6FCABEC(v1, &v10);
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v0;
    sub_1C6FC8180();

    *v0 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    sub_1C6FD7FC8(v3, v4, v5);
    OUTLINED_FUNCTION_15_20();
    sub_1C7236C60();

    OUTLINED_FUNCTION_95_1();
    return sub_1C6FD7FC8(v6, v7, v8);
  }

  return result;
}

uint64_t sub_1C709B0DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1C6FCABEC(a1, v17);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1C6FC8B58();
    *v2 = v16;
    sub_1C7551A1C();
    OUTLINED_FUNCTION_12();
    return (*(v4 + 8))(a2);
  }

  else
  {
    sub_1C6FD7FC8(a1, &qword_1EC216D30, &unk_1C7583DB0);
    sub_1C7236DF8(a2, v6, v7, v8, v9, v10, v11, v12, v14, v15);
    sub_1C7551A1C();
    OUTLINED_FUNCTION_12();
    (*(v13 + 8))(a2);
    return sub_1C6FD7FC8(v17, &qword_1EC216D30, &unk_1C7583DB0);
  }
}

void sub_1C709B1F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D28, &qword_1C756CB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PromptSuggestionPersistedBundle(0);
  OUTLINED_FUNCTION_29();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    sub_1C6FD7FC8(a1, &qword_1EC216D28, &qword_1C756CB00);
    v14 = sub_1C6FCABE8();
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152F8, &qword_1C755CBF0);
      sub_1C7551A2C();
      v17 = v20;
      sub_1C709DB50(*(v20 + 56) + *(v9 + 72) * v16, v6, type metadata accessor for PromptSuggestionPersistedBundle);
      sub_1C708039C();
      sub_1C7551A4C();
      v18 = 0;
      *v2 = v17;
    }

    else
    {
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v18, 1, v7);
    sub_1C6FD7FC8(v6, &qword_1EC216D28, &qword_1C756CB00);
  }

  else
  {
    sub_1C709DB50(a1, v13, type metadata accessor for PromptSuggestionPersistedBundle);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1C6FC8E00();
    *v2 = v20;
  }
}

uint64_t sub_1C709B448()
{
  OUTLINED_FUNCTION_16_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    sub_1C6FD7FC8(v2, &qword_1EC2155A8, &unk_1C7570210);
    OUTLINED_FUNCTION_15_20();
    sub_1C72370A0();

    return sub_1C6FD7FC8(v5, &qword_1EC2155A8, &unk_1C7570210);
  }

  else
  {
    sub_1C709DB50(v2, v9, type metadata accessor for PromptSuggestion);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v0;
    sub_1C6FC9914();

    *v0 = v13;
  }

  return result;
}

uint64_t sub_1C709B5C8()
{
  OUTLINED_FUNCTION_16_15();
  if (*(v1 + 24))
  {
    sub_1C6F699F8(v1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v0;
    sub_1C6FC9C84();

    *v0 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    sub_1C6FD7FC8(v3, v4, v5);
    OUTLINED_FUNCTION_15_20();
    sub_1C72371B4();

    OUTLINED_FUNCTION_95_1();
    return sub_1C6FD7FC8(v6, v7, v8);
  }

  return result;
}

uint64_t StoryMusicCurator.curateFlexMusic(using:with:maestroKeywords:mood:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a2;
  v6[28] = a3;
  v8 = sub_1C754F38C();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  memcpy(v6 + 2, a4, 0x80uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C709B75C, 0, 0);
}

uint64_t sub_1C709B75C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));
  sub_1C754F1CC();
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  *(v0 + 272) = __swift_project_value_buffer(v1, &dword_1EDD28D48);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755118C();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_96_0();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "(Flex) Technique is ignored. Will always use keywordBasedCuration", v4, 2u);
    v5 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v5);
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);

  *(v0 + 280) = StoryMusicCurator.prepareFlexMusicCurationOptions(using:with:mood:)(v6, v7, (v0 + 16));
  *(v0 + 320) = 1;
  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_1C709BB70;

  return StoryMusicCurator.requestMaestroMusicCuration(for:with:eventRecorder:)();
}

uint64_t sub_1C709BB70(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[37] = a2;
  v5[38] = v2;

  if (v2)
  {
    v6 = sub_1C709BFF8;
  }

  else
  {
    v5[39] = a1;
    v6 = sub_1C709BCA8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C709BCA8()
{
  v32 = v0;
  v2 = v0[38];
  v3 = static MusicCurationJsonParser.musicCurationSongs(fromFlexMusicJson:)(v0[39], v0[37]);
  if (v2)
  {
    v4 = v0[29];

    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    OUTLINED_FUNCTION_17_18();
    OUTLINED_FUNCTION_95_1();
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_29_10();
    v6(v5);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_1C755180C();
    v0[24] = 0;
    v0[25] = 0xE000000000000000;
    OUTLINED_FUNCTION_34_8();
    v0[26] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C75519EC();
    v7 = v0[24];
    v8 = v0[25];
    OUTLINED_FUNCTION_24_15();
    v9 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 136);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_27_13();
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v1 + v9) = v11;
    swift_endAccess();
    sub_1C75504FC();
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_13_3();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 136315138;
      v16 = sub_1C6F765A4(v7, v8, v31);

      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_12_20(&dword_1C6F5C000, v17, v18, "(Flex Music Curation Failed) %s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = v3;

    if (qword_1EC213DA8 != -1)
    {
      swift_once();
    }

    v21 = v0[32];
    v20 = v0[33];
    v23 = v0[30];
    v22 = v0[31];
    v24 = v0[29];
    v25 = type metadata accessor for MusicMobileAssetsConfigUtility(0);
    v26 = __swift_project_value_buffer(v25, qword_1EC217400);
    v27 = v23 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    swift_beginAccess();
    v28 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    sub_1C709CFB4(v26, v27 + *(v28 + 144));
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_1C754F1AC();
    (*(v21 + 8))(v20, v22);
  }

  v29 = v0[1];

  return v29(v19);
}

uint64_t sub_1C709BFF8()
{
  v22 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));
  OUTLINED_FUNCTION_17_18();
  sub_1C754F1AC();
  v2 = *(v0 + 304);
  v3 = OUTLINED_FUNCTION_29_10();
  v4(v3);
  OUTLINED_FUNCTION_36_8();
  v5 = v21[1];
  *(v0 + 192) = v21[0];
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_34_8();
  *(v0 + 208) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  sub_1C75519EC();
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  OUTLINED_FUNCTION_24_15();
  v8 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 136);
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_27_13();
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v1 + v8) = v10;
  swift_endAccess();
  sub_1C75504FC();
  v11 = sub_1C754FEEC();
  v12 = sub_1C755119C();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_13_3();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315138;
    v15 = sub_1C6F765A4(v6, v7, v21);

    *(v13 + 4) = v15;
    OUTLINED_FUNCTION_12_20(&dword_1C6F5C000, v16, v17, "(Flex Music Curation Failed) %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v18 = *(v0 + 8);
  v19 = MEMORY[0x1E69E7CC0];

  return v18(v19);
}

uint64_t *StoryMusicCurator.prepareFlexMusicCurationOptions(using:with:mood:)(uint64_t a1, uint64_t a2, void *__src)
{
  memcpy(__dst, __src, 0x80uLL);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  sub_1C75504DC();
  sub_1C755068C();
  StoryMusicCurator.packageMaestroKeywords(using:)(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
  OUTLINED_FUNCTION_35_6(v5);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v8 = OUTLINED_FUNCTION_9_19(v7);
  v9(v8);
  sub_1C709D04C();
  __swift_destroy_boxed_opaque_existential_1(v99);

  LOBYTE(v10) = v98[0];
  sub_1C755068C();
  memcpy(v100, __dst, sizeof(v100));
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(&v100[1] + 1) = sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  *&v100[0] = v11;
  sub_1C6FCABEC(v100, v99);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  (*(v15 + 16))(v14 - v13);
  sub_1C709D72C();
  __swift_destroy_boxed_opaque_existential_1(v99);

  v16 = v98[0];
  v92 = a2;
  if (*(*(a2 + 72) + 16))
  {
    sub_1C755068C();
    v10 = &unk_1EC217A00;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_35_6(v17);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    __swift_mutable_project_boxed_opaque_existential_0(v99, *(&v99[1] + 1));
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v18);
    v20 = OUTLINED_FUNCTION_1_32(v19, v90);
    v21(v20);
    sub_1C709D04C();
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v102 = 1;
  memcpy(v100, __dst, sizeof(v100));
  CGRectMake();
  memcpy(v99, v100, sizeof(v99));
  sub_1C709D4BC(__dst, v98);
  v22 = a2;
  StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(&v102, a2, v99);
  if (v91)
  {
    memcpy(v98, v99, sizeof(v98));
    sub_1C6FD7FC8(v98, &qword_1EC216CF0, &qword_1C7567228);
  }

  else
  {
    v24 = v23;
    memcpy(v98, v99, sizeof(v98));
    sub_1C6FD7FC8(v98, &qword_1EC216CF0, &qword_1C7567228);
    if (*(v24 + 16))
    {
      OUTLINED_FUNCTION_26_13();
      if (!v25)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v26 = sub_1C754FF1C();
      __swift_project_value_buffer(v26, &dword_1EDD28D48);
      v27 = sub_1C754FEEC();
      v28 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v28))
      {
        OUTLINED_FUNCTION_96_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        v34 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v34);
      }

      sub_1C755068C();
      v97 = MEMORY[0x1E69E6370];
      LOBYTE(v96) = 1;
      sub_1C6FCABEC(&v96, &v94);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v35);
      v37 = OUTLINED_FUNCTION_1_32(v36, v90);
      v38(v37);
      sub_1C709D30C();
      __swift_destroy_boxed_opaque_existential_1(&v94);

      sub_1C755068C();
      v10 = &qword_1EC216CF8;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8, &qword_1C757EAE0);
      *&v96 = v24;
      sub_1C6FCABEC(&v96, &v94);
      swift_isUniquelyReferenced_nonNull_native();
      __swift_mutable_project_boxed_opaque_existential_0(&v94, v95);
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v39);
      OUTLINED_FUNCTION_14_0();
      (*(v42 + 16))(v41 - v40);
      sub_1C709D04C();
      __swift_destroy_boxed_opaque_existential_1(&v94);

      v22 = v92;
      v16 = v93;
    }

    else
    {

      OUTLINED_FUNCTION_26_13();
      if (!v25)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v43 = sub_1C754FF1C();
      __swift_project_value_buffer(v43, &dword_1EDD28D48);
      v44 = sub_1C754FEEC();
      v45 = sub_1C755118C();
      if (OUTLINED_FUNCTION_23_0(v45))
      {
        OUTLINED_FUNCTION_96_0();
        v46 = swift_slowAlloc();
        LOBYTE(v10) = v46;
        *v46 = 0;
        OUTLINED_FUNCTION_8();
        _os_log_impl(v47, v48, v49, v50, v51, 2u);
        v52 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v52);
      }
    }

    v53 = (v22 + *(type metadata accessor for StoryMusicCurationOptions(0) + 68));
    v54 = v53[1];
    v55 = &unk_1C755E000;
    if (v54)
    {
      v56 = *v53;
      sub_1C75504FC();
      if (PFOSVariantHasInternalUI())
      {
        OUTLINED_FUNCTION_26_13();
        if (!v25)
        {
          OUTLINED_FUNCTION_0_35();
          swift_once();
        }

        v57 = sub_1C754FF1C();
        __swift_project_value_buffer(v57, &dword_1EDD28D48);
        sub_1C75504FC();
        v58 = sub_1C754FEEC();
        v59 = sub_1C755117C();

        if (os_log_type_enabled(v58, v59))
        {
          OUTLINED_FUNCTION_13_3();
          v10 = swift_slowAlloc();
          OUTLINED_FUNCTION_98();
          v60 = swift_slowAlloc();
          *&v96 = v60;
          *v10 = 136315138;
          *(v10 + 4) = sub_1C6F765A4(v56, v54, &v96);
          OUTLINED_FUNCTION_8();
          _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          v66 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x1CCA5F8E0](v66);
        }

        v67 = sub_1C755068C();
        v69 = v68;
        v97 = MEMORY[0x1E69E6158];
        *&v96 = v56;
        *(&v96 + 1) = v54;
        sub_1C6FCABEC(&v96, &v94);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_22_17();
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v70);
        v72 = OUTLINED_FUNCTION_1_32(v71, v90);
        v73(v72);
        sub_1C709D52C(*v16, v16[1], v67, v69, v10, &v93);
        __swift_destroy_boxed_opaque_existential_1(&v94);

        v16 = v93;
        v55 = &unk_1C755E000;
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_26_13();
    if (!v25)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v74 = sub_1C754FF1C();
    __swift_project_value_buffer(v74, &dword_1EDD28D48);
    v75 = sub_1C754FEEC();
    v76 = sub_1C755117C();
    if (OUTLINED_FUNCTION_23_0(v76))
    {
      OUTLINED_FUNCTION_13_3();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v78 = swift_slowAlloc();
      *&v96 = v78;
      *v77 = v55[350];
      sub_1C75504FC();
      v79 = sub_1C75504BC();
      v81 = v80;

      v82 = sub_1C6F765A4(v79, v81, &v96);

      *(v77 + 4) = v82;
      OUTLINED_FUNCTION_8();
      _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v88 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v88);
    }
  }

  return v16;
}

void static StoryMusicCurator.prewarmFlexMusic()()
{
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v0 = sub_1C754FF1C();
  __swift_project_value_buffer(v0, &dword_1EDD28D48);
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_96_0();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Prewarm FlexMusicKit started...", v3, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C6F65BE8(0, &qword_1EC216D00, 0x1E699F6F8);
  v4 = static FMSongLibrary.sharedLibraryForMusicCuration()();
  if (v4)
  {
    v5 = v4;
    oslog = [objc_allocWithZone(MEMORY[0x1E699F6D8]) init];
    v6 = [v5 fetchSongsWithOptions_];
    sub_1C6F65BE8(0, &qword_1EC216D08, 0x1E699F6F0);
    sub_1C7550B5C();

    sub_1C75504FC();
    v7 = sub_1C754FEEC();
    v8 = sub_1C755117C();
    if (!os_log_type_enabled(v7, v8))
    {

      swift_bridgeObjectRelease_n();
      return;
    }

    OUTLINED_FUNCTION_13_3();
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = sub_1C6FB6304();

    *(v9 + 4) = v10;

    _os_log_impl(&dword_1C6F5C000, v7, v8, "Prewarm FlexMusicKit done. Found %ld FlexMusic songs", v9, 0xCu);
    v11 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v11);
  }

  else
  {
    oslog = sub_1C754FEEC();
    v12 = sub_1C755119C();
    if (os_log_type_enabled(oslog, v12))
    {
      OUTLINED_FUNCTION_96_0();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, v12, "Prewarm FlexMusicKit failed. Unable to create FMSongLibrary.sharedLibraryForMusicCuration", v13, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }
}

uint64_t sub_1C709CFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CE8, &unk_1C7569C40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C709D04C()
{
  OUTLINED_FUNCTION_11_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v14[3] = v3;
  v14[0] = v0;
  OUTLINED_FUNCTION_14_19();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
  if (OUTLINED_FUNCTION_30_10(v7))
  {
    OUTLINED_FUNCTION_14_19();
    if ((v6 & 1) != (v8 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v6)
  {
    return OUTLINED_FUNCTION_38_8();
  }

  __swift_mutable_project_boxed_opaque_existential_0(v14, v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_1_32(v11, v14[0]);
  v13(v12);
  OUTLINED_FUNCTION_10_22();
  sub_1C709DAB8();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_1C75504FC();
}

_OWORD *sub_1C709D1AC()
{
  OUTLINED_FUNCTION_25_11();
  v21[0] = v2;
  v3 = MEMORY[0x1E69E6810];
  OUTLINED_FUNCTION_37_12(v2, v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
  if (OUTLINED_FUNCTION_31_9(v9))
  {
    sub_1C6F78124(v1, v0);
    if ((v8 & 1) != (v10 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v8)
  {
    return OUTLINED_FUNCTION_39_10();
  }

  __swift_mutable_project_boxed_opaque_existential_0(v21, v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v14 = OUTLINED_FUNCTION_9_19(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_28_7();
  sub_1C709D914(v16, v17, v18, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1C75504FC();
}

_OWORD *sub_1C709D30C()
{
  OUTLINED_FUNCTION_25_11();
  LOBYTE(v21[0]) = v2;
  v3 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_37_12(v2, v4, v5);
  OUTLINED_FUNCTION_0_2();
  if (v7)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
  if (OUTLINED_FUNCTION_31_9(v9))
  {
    sub_1C6F78124(v1, v0);
    if ((v8 & 1) != (v10 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v8)
  {
    return OUTLINED_FUNCTION_39_10();
  }

  __swift_mutable_project_boxed_opaque_existential_0(v21, v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v14 = OUTLINED_FUNCTION_9_19(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_28_7();
  sub_1C709D890(v16, v17, v18, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1C75504FC();
}

_OWORD *sub_1C709D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v10 = *a6;
  v11 = sub_1C6F78124(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1C6F78124(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a6;
  if (v14)
  {
    v18 = (v17[7] + 32 * v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return sub_1C6FCABEC(&v25, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_0(&v25, v9);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    sub_1C709D998(v13, a3, a4, *v23, v23[1], v17);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    return sub_1C75504FC();
  }
}

_OWORD *sub_1C709D72C()
{
  OUTLINED_FUNCTION_11_19();
  v3 = sub_1C6F65BE8(0, v1, v2);
  v14[3] = v3;
  v14[0] = v0;
  OUTLINED_FUNCTION_14_19();
  OUTLINED_FUNCTION_0_2();
  if (v5)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2197F0, qword_1C7579E70);
  if (OUTLINED_FUNCTION_30_10(v7))
  {
    OUTLINED_FUNCTION_14_19();
    if ((v6 & 1) != (v8 & 1))
    {
      goto LABEL_9;
    }
  }

  if (v6)
  {
    return OUTLINED_FUNCTION_38_8();
  }

  __swift_mutable_project_boxed_opaque_existential_0(v14, v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_1_32(v11, v14[0]);
  v13(v12);
  OUTLINED_FUNCTION_10_22();
  sub_1C709DA1C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_1C75504FC();
}

_OWORD *sub_1C709D890(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x1E69E6370];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C6FCABEC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1C709D914(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x1E69E6810];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C6FCABEC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1C709D998(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1C6FCABEC(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_1C709DA1C()
{
  OUTLINED_FUNCTION_20_16();
  v13 = sub_1C6F65BE8(0, v5, v6);
  *&v12 = v1;
  v0[(v4 >> 6) + 8] |= 1 << v4;
  v7 = (v0[6] + 16 * v4);
  *v7 = v3;
  v7[1] = v2;
  result = sub_1C6FCABEC(&v12, (v0[7] + 32 * v4));
  v9 = v0[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v0[2] = v11;
  }

  return result;
}

_OWORD *sub_1C709DAB8()
{
  OUTLINED_FUNCTION_20_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  *&v12 = v1;
  v0[(v4 >> 6) + 8] |= 1 << v4;
  v7 = (v0[6] + 16 * v4);
  *v7 = v3;
  v7[1] = v2;
  result = sub_1C6FCABEC(&v12, (v0[7] + 32 * v4));
  v9 = v0[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v0[2] = v11;
  }

  return result;
}

uint64_t sub_1C709DB50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  *(v0 + 104) = v1;
  v3 = *(v0 + 256);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 232, v3);
}

_OWORD *OUTLINED_FUNCTION_35_6(uint64_t a1)
{
  *(v1 + 384) = a1;
  *(v1 + 360) = v2;

  return sub_1C6FCABEC((v1 + 360), (v1 + 232));
}

id defaultUtilitiesCollectionFetcher(photoLibrary:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for UtilitiesCollectionFetcher();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  a2[3] = v3;
  a2[4] = &off_1F469CED8;
  *a2 = v4;

  return a1;
}

uint64_t PNUtilitiesCollectionFetcherOptions.init(sharingFilter:includeChapterHeaders:localizedTitle:identifier:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 2) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

void sub_1C709DCB8(char *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v16 = *a1;
  v12 = v3;
  v13 = v4;
  v14 = *(a2 + 4);
  v15 = *(a2 + 12);
  v5 = sub_1C709DE1C(&v16, &v12);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C755BAB0;
    *(v7 + 56) = sub_1C70A07E8();
    *(v7 + 32) = v6;
    v8 = *(v2 + 16);
    sub_1C755068C();
    objc_allocWithZone(MEMORY[0x1E69788E0]);
    v9 = v8;
  }

  else
  {
    v10 = *(v2 + 16);
    sub_1C755068C();
    objc_allocWithZone(MEMORY[0x1E69788E0]);
    v11 = v10;
  }

  sub_1C71C8A5C();
}

id sub_1C709DE1C(char *a1, __int16 *a2)
{
  if (*a1 - 8 > 2)
  {
    return 0;
  }

  v2 = *(a2 + 2);
  v3 = *a2;
  v9 = *a1;
  v5 = v3;
  v6 = v2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 12);
  return sub_1C709DE80(&v9, &v5);
}

id sub_1C709DE80(unsigned __int8 *a1, unsigned __int16 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = [*(v2 + 16) librarySpecificFetchOptions];
  [v5 setIncludeDuplicatesAlbums_];
  [v5 setIncludeTrashBinAlbum_];
  [v5 setSharingFilter_];
  if ((v3 - 8) >= 3)
  {

    return 0;
  }

  else
  {
    v6 = v3 - 8;
    v7 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:qword_1C7567B18[v6] options:v5];
    v8 = [v7 firstObject];
  }

  return v8;
}

uint64_t sub_1C709DF7C()
{

  return swift_deallocClassInstance();
}

void *sub_1C709DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C709E01C(a1, a2, a3, a4, a5, a6, a7);
  qword_1EC216D50 = result;
  return result;
}

void *sub_1C709E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C(0, 7, 0, a4, a5, a6, a7);
  v11 = 0;
  v12 = v19;
  do
  {
    v13 = 0xE700000000000000;
    v14 = 0x7365646F437271;
    switch(byte_1F46A06D0[v11 + 32])
    {
      case 1:
        v14 = 0x68736E6565726373;
        v13 = 0xEB0000000073746FLL;
        break;
      case 2:
        v13 = 0xE800000000000000;
        v14 = 0x7374706965636572;
        break;
      case 3:
        v14 = 0x61727473756C6C69;
        v13 = 0xED0000736E6F6974;
        break;
      case 4:
        v14 = 0x74697277646E6168;
        v13 = 0xEB00000000676E69;
        break;
      case 5:
        v13 = 0xE400000000000000;
        v14 = 1936744813;
        break;
      case 6:
        break;
      default:
        v13 = 0xE300000000000000;
        v14 = 7105633;
        break;
    }

    v20 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1C6F7ED9C(v15 > 1, v16 + 1, 1, v7, v8, v9, v10);
      v12 = v20;
    }

    ++v11;
    *(v12 + 16) = v16 + 1;
    v17 = v12 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
  }

  while (v11 != 7);
  sub_1C6FD2568(v12);
  return &unk_1F46A06F8;
}

uint64_t PNDocumentSubCollectionKind.rawValue.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x68736E6565726373;
      break;
    case 2:
      result = 0x7374706965636572;
      break;
    case 3:
      result = 0x61727473756C6C69;
      break;
    case 4:
      result = 0x74697277646E6168;
      break;
    case 5:
      result = 1936744813;
      break;
    case 6:
      result = 0x7365646F437271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PNUtilityCollectionKind.allValueStrings.getter()
{
  if (qword_1EC213D50 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t static PNUtilityCollectionKind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 7:
      if (v2 == 7)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 8:
      if (v2 == 8)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    case 0xA:
      if (v2 != 10)
      {
        goto LABEL_11;
      }

LABEL_9:
      result = 1;
      break;
    default:
      if ((v2 - 7) >= 4u)
      {
        result = sub_1C6FA0000();
      }

      else
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1C709E3F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F706D69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746163696C707564 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C709E5AC(char a1)
{
  result = 0x7374726F706D69;
  switch(a1)
  {
    case 1:
      result = 0x746163696C707564;
      break;
    case 2:
      result = 0x6E6564646968;
      break;
    case 3:
      result = 0x796C746E65636572;
      break;
    case 4:
      result = 0x746E656D75636F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C709E658(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C709E6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C709E3F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C709E704(uint64_t a1)
{
  v2 = sub_1C709EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E740(uint64_t a1)
{
  v2 = sub_1C709EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C709E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C709E658(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C709E7AC(uint64_t a1)
{
  v2 = sub_1C709EF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E7E8(uint64_t a1)
{
  v2 = sub_1C709EF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C709E824(uint64_t a1)
{
  v2 = sub_1C709F098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E860(uint64_t a1)
{
  v2 = sub_1C709F098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C709E89C(uint64_t a1)
{
  v2 = sub_1C709F044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E8D8(uint64_t a1)
{
  v2 = sub_1C709F044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C709E914(uint64_t a1)
{
  v2 = sub_1C709F0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E950(uint64_t a1)
{
  v2 = sub_1C709F0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C709E98C(uint64_t a1)
{
  v2 = sub_1C709EFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C709E9C8(uint64_t a1)
{
  v2 = sub_1C709EFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PNUtilityCollectionKind.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D58, &qword_1C7567260);
  OUTLINED_FUNCTION_3_0();
  v53 = v4;
  v54 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v52 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D60, &qword_1C7567268);
  OUTLINED_FUNCTION_3_0();
  v50 = v8;
  v51 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D68, &qword_1C7567270);
  OUTLINED_FUNCTION_3_0();
  v47 = v12;
  v48 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D70, &qword_1C7567278);
  OUTLINED_FUNCTION_3_0();
  v44 = v16;
  v45 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D78, &qword_1C7567280);
  OUTLINED_FUNCTION_3_0();
  v43 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D80, &qword_1C7567288);
  OUTLINED_FUNCTION_3_0();
  v55 = v26;
  v56 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v27);
  v28 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C709EEF4();
  sub_1C755200C();
  switch(v28)
  {
    case 7:
      v57 = 0;
      sub_1C709F0EC();
      v29 = v56;
      sub_1C7551C6C();
      (*(v43 + 8))(v24, v20);
      v30 = OUTLINED_FUNCTION_6_27();
      v32 = v29;
      goto LABEL_8;
    case 8:
      v58 = 1;
      sub_1C709F098();
      OUTLINED_FUNCTION_4_23(&type metadata for PNUtilityCollectionKind.DuplicatesCodingKeys, &v58);
      v34 = v45;
      v35 = *(v44 + 8);
      v33 = v19;
      goto LABEL_7;
    case 9:
      v59 = 2;
      sub_1C709F044();
      OUTLINED_FUNCTION_4_23(&type metadata for PNUtilityCollectionKind.HiddenCodingKeys, &v59);
      goto LABEL_5;
    case 10:
      v60[0] = 3;
      sub_1C709EFF0();
      OUTLINED_FUNCTION_4_23(&type metadata for PNUtilityCollectionKind.RecentlyDeletedCodingKeys, v60);
LABEL_5:
      v33 = OUTLINED_FUNCTION_7_18();
LABEL_7:
      v35(v33, v34);
      v30 = OUTLINED_FUNCTION_6_27();
      v32 = v20;
LABEL_8:
      result = v31(v30, v32);
      break;
    default:
      v60[2] = 4;
      sub_1C709EF48();
      v37 = v52;
      v38 = v56;
      sub_1C7551C6C();
      v60[1] = v28;
      sub_1C709EF9C();
      v39 = v54;
      sub_1C7551D2C();
      (*(v53 + 8))(v37, v39);
      v40 = OUTLINED_FUNCTION_6_27();
      result = v41(v40, v38);
      break;
  }

  return result;
}

unint64_t sub_1C709EEF4()
{
  result = qword_1EDD09878[0];
  if (!qword_1EDD09878[0])
  {
    result = swift_getWitnessTable(byte_1C7567AB4, &type metadata for PNUtilityCollectionKind.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD09878);
  }

  return result;
}

unint64_t sub_1C709EF48()
{
  result = qword_1EDD09840;
  if (!qword_1EDD09840)
  {
    result = swift_getWitnessTable(aU_31, &type metadata for PNUtilityCollectionKind.DocumentsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09840);
  }

  return result;
}

unint64_t sub_1C709EF9C()
{
  result = qword_1EDD08CA0;
  if (!qword_1EDD08CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PNDocumentSubCollectionKind, &type metadata for PNDocumentSubCollectionKind, v0, v1);
    atomic_store(result, &qword_1EDD08CA0);
  }

  return result;
}

unint64_t sub_1C709EFF0()
{
  result = qword_1EDD09818;
  if (!qword_1EDD09818)
  {
    result = swift_getWitnessTable(byte_1C7567A14, &type metadata for PNUtilityCollectionKind.RecentlyDeletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09818);
  }

  return result;
}

unint64_t sub_1C709F044()
{
  result = qword_1EC216D88;
  if (!qword_1EC216D88)
  {
    result = swift_getWitnessTable(byte_1C75679C4, &type metadata for PNUtilityCollectionKind.HiddenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216D88);
  }

  return result;
}

unint64_t sub_1C709F098()
{
  result = qword_1EC216D90;
  if (!qword_1EC216D90)
  {
    result = swift_getWitnessTable(aE_27, &type metadata for PNUtilityCollectionKind.DuplicatesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216D90);
  }

  return result;
}

unint64_t sub_1C709F0EC()
{
  result = qword_1EC216D98;
  if (!qword_1EC216D98)
  {
    result = swift_getWitnessTable(byte_1C7567924, &type metadata for PNUtilityCollectionKind.ImportsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216D98);
  }

  return result;
}

uint64_t PNUtilityCollectionKind.hash(into:)()
{
  switch(*v0)
  {
    case 7:
      v1 = 0;
      goto LABEL_6;
    case 8:
      v1 = 1;
      goto LABEL_6;
    case 9:
      v1 = 2;
      goto LABEL_6;
    case 0xA:
      v1 = 3;
LABEL_6:
      result = MEMORY[0x1CCA5E460](v1);
      break;
    default:
      MEMORY[0x1CCA5E460](4);

      result = sub_1C6FF7E68();
      break;
  }

  return result;
}

uint64_t PNUtilityCollectionKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  switch(v1)
  {
    case 7:
      v2 = 0;
      goto LABEL_6;
    case 8:
      v2 = 1;
      goto LABEL_6;
    case 9:
      v2 = 2;
      goto LABEL_6;
    case 10:
      v2 = 3;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      break;
    default:
      MEMORY[0x1CCA5E460](4);
      sub_1C6FF7E68();
      break;
  }

  return sub_1C7551FAC();
}

uint64_t PNUtilityCollectionKind.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DA0, &qword_1C7567290);
  OUTLINED_FUNCTION_3_0();
  v78 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_36();
  v83 = v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DA8, &qword_1C7567298);
  OUTLINED_FUNCTION_3_0();
  v77 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v82 = v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DB0, &qword_1C75672A0);
  OUTLINED_FUNCTION_3_0();
  v74 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v79 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DB8, &qword_1C75672A8);
  OUTLINED_FUNCTION_3_0();
  v72 = v13;
  v73 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DC0, &qword_1C75672B0);
  OUTLINED_FUNCTION_3_0();
  v71 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216DC8, &unk_1C75672B8);
  OUTLINED_FUNCTION_3_0();
  v24 = v23;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  v28 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1C709EEF4();
  v29 = v85;
  sub_1C7551FFC();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v68 = v17;
  v69 = v21;
  v70 = v16;
  v30 = v81;
  v85 = v24;
  sub_1C7551C5C();
  result = sub_1C6FD80E0();
  if (v33 == v34 >> 1)
  {
    goto LABEL_7;
  }

  if (v33 >= (v34 >> 1))
  {
    __break(1u);
    return result;
  }

  v67 = *(v32 + v33);
  sub_1C6FD80C8();
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_7:
    v45 = sub_1C75518EC();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v47 = &type metadata for PNUtilityCollectionKind;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_1_33();
    v49(v48);
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v39 = v80;
  switch(v67)
  {
    case 1:
      v87 = 1;
      sub_1C709F098();
      OUTLINED_FUNCTION_2_21(&type metadata for PNUtilityCollectionKind.DuplicatesCodingKeys, &v87);
      swift_unknownObjectRelease();
      v59 = OUTLINED_FUNCTION_7_18();
      v60(v59);
      v61 = OUTLINED_FUNCTION_1_33();
      v62(v61);
      v44 = 8;
      break;
    case 2:
      v88 = 2;
      sub_1C709F044();
      OUTLINED_FUNCTION_2_21(&type metadata for PNUtilityCollectionKind.HiddenCodingKeys, &v88);
      swift_unknownObjectRelease();
      v50 = OUTLINED_FUNCTION_7_18();
      v51(v50, v30);
      v52 = OUTLINED_FUNCTION_1_33();
      v53(v52);
      v44 = 9;
      break;
    case 3:
      v89[0] = 3;
      sub_1C709EFF0();
      OUTLINED_FUNCTION_2_21(&type metadata for PNUtilityCollectionKind.RecentlyDeletedCodingKeys, v89);
      swift_unknownObjectRelease();
      v54 = OUTLINED_FUNCTION_7_18();
      v55(v54, v75);
      v56 = OUTLINED_FUNCTION_1_33();
      v57(v56);
      v44 = 10;
      break;
    case 4:
      v89[2] = 4;
      sub_1C709EF48();
      sub_1C7551B4C();
      sub_1C709FC98();
      sub_1C7551C1C();
      v58 = v85;
      swift_unknownObjectRelease();
      v63 = OUTLINED_FUNCTION_9_20();
      v64(v63);
      (*(v58 + 8))(v27, v22);
      v44 = v89[1];
      break;
    default:
      v86 = 0;
      sub_1C709F0EC();
      OUTLINED_FUNCTION_2_21(&type metadata for PNUtilityCollectionKind.ImportsCodingKeys, &v86);
      swift_unknownObjectRelease();
      v40 = OUTLINED_FUNCTION_7_18();
      v41(v40, v68);
      v42 = OUTLINED_FUNCTION_1_33();
      v43(v42);
      v44 = 7;
      break;
  }

  v65 = v84;
  *v39 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1C709FA74(uint64_t a1)
{
  v2 = *v1;
  sub_1C7551F3C();
  switch(v2)
  {
    case 7:
      v3 = 0;
      goto LABEL_6;
    case 8:
      v3 = 1;
      goto LABEL_6;
    case 9:
      v3 = 2;
      goto LABEL_6;
    case 10:
      v3 = 3;
LABEL_6:
      MEMORY[0x1CCA5E460](v3);
      break;
    default:
      MEMORY[0x1CCA5E460](4);
      sub_1C6FF7E68();
      break;
  }

  return sub_1C7551FAC();
}

PhotosIntelligence::PNDocumentSubCollectionKind_optional __swiftcall PNDocumentSubCollectionKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C709FB8C@<X0>(uint64_t *a1@<X8>)
{
  result = PNDocumentSubCollectionKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C709FC98()
{
  result = qword_1EDD08C90;
  if (!qword_1EDD08C90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PNDocumentSubCollectionKind, &type metadata for PNDocumentSubCollectionKind, v0, v1);
    atomic_store(result, &qword_1EDD08C90);
  }

  return result;
}

unint64_t sub_1C709FCF0()
{
  result = qword_1EC216DD0;
  if (!qword_1EC216DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PNUtilityCollectionKind, &type metadata for PNUtilityCollectionKind, v0, v1);
    atomic_store(result, &qword_1EC216DD0);
  }

  return result;
}

unint64_t sub_1C709FD48()
{
  result = qword_1EC216DD8;
  if (!qword_1EC216DD8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216DE0, &qword_1C75673E0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC216DD8);
  }

  return result;
}

unint64_t sub_1C709FDB0()
{
  result = qword_1EC216DE8;
  if (!qword_1EC216DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PNDocumentSubCollectionKind, &type metadata for PNDocumentSubCollectionKind, v0, v1);
    atomic_store(result, &qword_1EC216DE8);
  }

  return result;
}

uint64_t sub_1C709FE2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C709FE80(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for PNUtilityCollectionKind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 7)
    {
      v7 = v6 - 6;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 5)
    {
      return (v7 - 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 10;
    if (a2 + 10 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 10);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PNUtilityCollectionKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF6)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF5)
  {
    v7 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C70A0060(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C70A0074(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PNDocumentSubCollectionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PNUtilityCollectionKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PNUtilityCollectionKind.DocumentsCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70A031C()
{
  result = qword_1EC216DF0;
  if (!qword_1EC216DF0)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for PNUtilityCollectionKind.DocumentsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216DF0);
  }

  return result;
}

unint64_t sub_1C70A0374()
{
  result = qword_1EC216DF8;
  if (!qword_1EC216DF8)
  {
    result = swift_getWitnessTable(aM_25, &type metadata for PNUtilityCollectionKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216DF8);
  }

  return result;
}

unint64_t sub_1C70A03CC()
{
  result = qword_1EDD09848;
  if (!qword_1EDD09848)
  {
    result = swift_getWitnessTable(byte_1C756781C, &type metadata for PNUtilityCollectionKind.ImportsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09848);
  }

  return result;
}

unint64_t sub_1C70A0424()
{
  result = qword_1EDD09850;
  if (!qword_1EDD09850)
  {
    result = swift_getWitnessTable(byte_1C7567844, &type metadata for PNUtilityCollectionKind.ImportsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09850);
  }

  return result;
}

unint64_t sub_1C70A047C()
{
  result = qword_1EDD09820;
  if (!qword_1EDD09820)
  {
    result = swift_getWitnessTable(asc_1C75677CC, &type metadata for PNUtilityCollectionKind.DuplicatesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09820);
  }

  return result;
}

unint64_t sub_1C70A04D4()
{
  result = qword_1EDD09828;
  if (!qword_1EDD09828)
  {
    result = swift_getWitnessTable(asc_1C75677F4, &type metadata for PNUtilityCollectionKind.DuplicatesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09828);
  }

  return result;
}

unint64_t sub_1C70A052C()
{
  result = qword_1EDD09858;
  if (!qword_1EDD09858)
  {
    result = swift_getWitnessTable(aU_32, &type metadata for PNUtilityCollectionKind.HiddenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09858);
  }

  return result;
}

unint64_t sub_1C70A0584()
{
  result = qword_1EDD09860;
  if (!qword_1EDD09860)
  {
    result = swift_getWitnessTable(byte_1C75677A4, &type metadata for PNUtilityCollectionKind.HiddenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09860);
  }

  return result;
}

unint64_t sub_1C70A05DC()
{
  result = qword_1EDD09808;
  if (!qword_1EDD09808)
  {
    result = swift_getWitnessTable(byte_1C756772C, &type metadata for PNUtilityCollectionKind.RecentlyDeletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09808);
  }

  return result;
}

unint64_t sub_1C70A0634()
{
  result = qword_1EDD09810;
  if (!qword_1EDD09810)
  {
    result = swift_getWitnessTable(byte_1C7567754, &type metadata for PNUtilityCollectionKind.RecentlyDeletedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09810);
  }

  return result;
}

unint64_t sub_1C70A068C()
{
  result = qword_1EDD09830;
  if (!qword_1EDD09830)
  {
    result = swift_getWitnessTable(asc_1C7567674, &type metadata for PNUtilityCollectionKind.DocumentsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09830);
  }

  return result;
}

unint64_t sub_1C70A06E4()
{
  result = qword_1EDD09838;
  if (!qword_1EDD09838)
  {
    result = swift_getWitnessTable(byte_1C756769C, &type metadata for PNUtilityCollectionKind.DocumentsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09838);
  }

  return result;
}

unint64_t sub_1C70A073C()
{
  result = qword_1EDD09868;
  if (!qword_1EDD09868)
  {
    result = swift_getWitnessTable(byte_1C756786C, &type metadata for PNUtilityCollectionKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09868);
  }

  return result;
}

unint64_t sub_1C70A0794()
{
  result = qword_1EDD09870;
  if (!qword_1EDD09870)
  {
    result = swift_getWitnessTable(byte_1C7567894, &type metadata for PNUtilityCollectionKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09870);
  }

  return result;
}

unint64_t sub_1C70A07E8()
{
  result = qword_1EDD069D0;
  if (!qword_1EDD069D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD069D0);
  }

  return result;
}

unint64_t sub_1C70A082C()
{
  result = qword_1EDD08C98;
  if (!qword_1EDD08C98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PNDocumentSubCollectionKind, &type metadata for PNDocumentSubCollectionKind, v0, v1);
    atomic_store(result, &qword_1EDD08C98);
  }

  return result;
}

uint64_t static Spatial3DModelAvailability.fetch()@<X0>(char *a1@<X8>)
{
  sub_1C754E7AC();
  OUTLINED_FUNCTION_26_14();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1C754E85C();
  sub_1C754E7BC();
  (*(v4 + 16))(v7, v10, v1);
  v11 = (*(v4 + 88))(v7, v1);
  if (v11 == *MEMORY[0x1E698A780])
  {
    v12 = 0;
LABEL_9:
    result = (*(v4 + 8))(v10, v1);
    *a1 = v12;
    return result;
  }

  if (v11 == *MEMORY[0x1E698A768])
  {
    v12 = 1;
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x1E698A760])
  {
    v12 = 2;
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x1E698A770])
  {
    v12 = 3;
    goto LABEL_9;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C759BC50);
  sub_1C75519EC();
  result = OUTLINED_FUNCTION_41_9("Fatal error", v14, v15, v16, v17, "PhotosIntelligence/Spatial3DModelAvailability.swift");
  __break(1u);
  return result;
}

uint64_t static Spatial3DModelAvailability.observeDownloadProgress(using:)()
{
  OUTLINED_FUNCTION_42();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_1C75519BC();
  v0[9] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[10] = v4;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v5 = sub_1C75519CC();
  v0[13] = v5;
  OUTLINED_FUNCTION_18(v5);
  v0[14] = v6;
  v0[15] = swift_task_alloc();
  v7 = sub_1C754DF6C();
  v0[16] = v7;
  OUTLINED_FUNCTION_18(v7);
  v0[17] = v8;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v0[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70A0C68, 0, 0);
}

uint64_t sub_1C70A0C68()
{
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E20, &qword_1C7567B50);
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 28) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;

  *(v0 + 176) = sub_1C6FEB80C(0, 0, v2, &unk_1C7567B60, v8);
  sub_1C754DF5C();
  if (sub_1C7550E5C())
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock((*(v0 + 168) + 28));
  OUTLINED_FUNCTION_43_9();
  if (v2)
  {
    if (v2 == 1)
    {
      v9 = *(v0 + 136);
      swift_willThrow();
      v1 = *(v9 + 8);
LABEL_13:
      OUTLINED_FUNCTION_9_21();
      v1(v8);
      sub_1C7550E1C();

      OUTLINED_FUNCTION_43();
      goto LABEL_14;
    }

LABEL_5:
    v10 = OUTLINED_FUNCTION_13_19();
    v11(v10);
    sub_1C7550E1C();

    OUTLINED_FUNCTION_43();
LABEL_14:

    return v12();
  }

  v13 = 0.0;
  if (v3 != 0.0)
  {
    OUTLINED_FUNCTION_19_15();
    v14 = OUTLINED_FUNCTION_43_2();
    v15(v14);
    v16 = OUTLINED_FUNCTION_33_11();
    v17(v16);
    v13 = v3;
  }

  *(v0 + 184) = v13;
  OUTLINED_FUNCTION_19_15();
  sub_1C754DEAC();
  v18 = OUTLINED_FUNCTION_12_21();
  v1(v18);
  if (v3 < 0.0 || v3 > 30.0)
  {
    v20 = sub_1C70A3994();
    v21 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v20);
    OUTLINED_FUNCTION_17_19(v21, v22);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_16_16(xmmword_1C7567B30);
  OUTLINED_FUNCTION_7_19();
  v26 = sub_1C70A3F98(v24, v25, MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_39_11(v26);
  OUTLINED_FUNCTION_6_28();
  v29 = sub_1C70A3F98(v27, v28, MEMORY[0x1E69E8818]);
  OUTLINED_FUNCTION_30_11(v29);
  v30 = OUTLINED_FUNCTION_20_17();
  v31(v30);
  v32 = swift_task_alloc();
  *(v0 + 224) = v32;
  *v32 = v0;
  v33 = OUTLINED_FUNCTION_3_26(v32);

  return MEMORY[0x1EEE6DE58](v33);
}

uint64_t sub_1C70A1030()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 232) = v0;

  (*(v3 + 208))(*(v3 + 96), *(v3 + 72));
  if (v0)
  {
    v6 = sub_1C70A1480;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_43_2();
    v8(v7);
    v6 = sub_1C70A1174;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C70A1174(uint64_t a1)
{
  v6 = *(v3 + 184);
  if (sub_1C7550E5C())
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock((*(v3 + 168) + 28));
  OUTLINED_FUNCTION_43_9();
  if (v1)
  {
    if (v1 == 1)
    {
      v7 = *(v3 + 136);
      swift_willThrow();
      v5 = *(v7 + 8);
LABEL_13:
      OUTLINED_FUNCTION_9_21();
      v5(v4);
      sub_1C7550E1C();

      OUTLINED_FUNCTION_43();
      goto LABEL_14;
    }

LABEL_5:
    v8 = OUTLINED_FUNCTION_13_19();
    v9(v8);
    sub_1C7550E1C();

    OUTLINED_FUNCTION_43();
LABEL_14:

    return v10();
  }

  if (v6 != v2)
  {
    OUTLINED_FUNCTION_19_15();
    v11 = OUTLINED_FUNCTION_43_2();
    v12(v11);
    v13 = OUTLINED_FUNCTION_33_11();
    v14(v13);
    v6 = v2;
  }

  *(v3 + 184) = v6;
  OUTLINED_FUNCTION_19_15();
  sub_1C754DEAC();
  v15 = OUTLINED_FUNCTION_12_21();
  v5(v15);
  if (v6 < 0.0 || v6 > 30.0)
  {
    v17 = sub_1C70A3994();
    v18 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v17);
    OUTLINED_FUNCTION_17_19(v18, v19);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_16_16(xmmword_1C7567B30);
  OUTLINED_FUNCTION_7_19();
  v23 = sub_1C70A3F98(v21, v22, MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_39_11(v23);
  OUTLINED_FUNCTION_6_28();
  v26 = sub_1C70A3F98(v24, v25, MEMORY[0x1E69E8818]);
  OUTLINED_FUNCTION_30_11(v26);
  v27 = OUTLINED_FUNCTION_20_17();
  v28(v27);
  v29 = swift_task_alloc();
  *(v3 + 224) = v29;
  *v29 = v3;
  v30 = OUTLINED_FUNCTION_3_26(v29);

  return MEMORY[0x1EEE6DE58](v30);
}

uint64_t sub_1C70A1480()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  OUTLINED_FUNCTION_9_21();
  v2(v1);
  sub_1C7550E1C();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C70A1588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = sub_1C754E7AC();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = sub_1C754FFBC();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = sub_1C754FFDC();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E38, &unk_1C7567D00);
  v6[30] = swift_task_alloc();
  v10 = sub_1C754FF6C();
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_1C754E7CC();
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v12 = sub_1C754E81C();
  v6[42] = v12;
  v13 = *(v12 - 8);
  v6[43] = v13;
  v6[44] = *(v13 + 64);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BA8, &qword_1C75600B8);
  v6[51] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BB0, &qword_1C75600C0);
  v6[52] = v14;
  v6[53] = *(v14 - 8);
  v6[54] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BB8, &qword_1C75600C8);
  v6[55] = v15;
  v6[56] = *(v15 - 8);
  v6[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70A1A40, 0, 0);
}

uint64_t sub_1C70A1A40()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  sub_1C754FF8C();
  swift_allocObject();
  *(v0 + 464) = sub_1C754FF7C();
  *(v0 + 472) = sub_1C754E85C();
  sub_1C754E83C();
  sub_1C7550DBC();
  (*(v2 + 8))(v1, v3);
  *(v0 + 528) = *MEMORY[0x1E698A7B8];
  *(v0 + 532) = *MEMORY[0x1E698A788];
  *(v0 + 536) = *MEMORY[0x1E698A798];
  *(v0 + 540) = *MEMORY[0x1E698A7B0];
  *(v0 + 544) = *MEMORY[0x1E698A7A0];
  *(v0 + 548) = *MEMORY[0x1E698A7C0];
  *(v0 + 552) = *MEMORY[0x1E698A7C8];
  *(v0 + 556) = *MEMORY[0x1E698A7A8];
  *(v0 + 560) = *MEMORY[0x1E698A790];
  *(v0 + 564) = *MEMORY[0x1E698A780];
  *(v0 + 568) = *MEMORY[0x1E6977D30];
  *(v0 + 480) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 488) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_36(v4);

  return MEMORY[0x1EEE6D9C8](v6);
}

uint64_t sub_1C70A1BE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C70A1CD0, 0, 0);
}

void sub_1C70A1CD0()
{
  v179 = v0;
  v2 = *(v0 + 408);
  v3 = *(v0 + 336);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 104);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

    os_unfair_lock_lock((v4 + 28));
    sub_1C70A3BD4(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = 0;
    *(v4 + 24) = 2;
    os_unfair_lock_unlock((v4 + 28));
    goto LABEL_22;
  }

  v5 = *(v0 + 480);
  v6 = *(*(v0 + 344) + 32);
  v6(*(v0 + 400), v2, v3);
  sub_1C7550E6C();
  v7 = v5;
  if (v5)
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

LABEL_21:
    v61 = OUTLINED_FUNCTION_35_7();
    v62(v61);
    v63 = swift_task_alloc();
    OUTLINED_FUNCTION_29_11(v63);
    sub_1C70A3BE8(&v1[4]);
    os_unfair_lock_unlock(v1 + 7);

LABEL_22:
    OUTLINED_FUNCTION_11_20();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_15_21();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 528);
  v9 = *(v0 + 328);
  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  sub_1C754E7EC();
  v12 = (*(v11 + 88))(v9, v10);
  if (v12 == v8)
  {
LABEL_6:
    if (qword_1EC213D60 != -1)
    {
      OUTLINED_FUNCTION_1_34(&qword_1EC213D60);
    }

    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EC216E08);
    v14 = OUTLINED_FUNCTION_27_14();
    v15(v14);
    v16 = sub_1C754FEEC();
    v17 = sub_1C755119C();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_42_11();
      v18 = OUTLINED_FUNCTION_31_0();
      v178[0] = v18;
      *v10 = 136315138;
      sub_1C754E7EC();
      v19 = sub_1C75506EC();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_23_14();
      v23(v22);
      v24 = sub_1C6F765A4(v19, v21, v178);

      *(v10 + 4) = v24;
      OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v25, v26, "Error occured during download: %s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v51 = OUTLINED_FUNCTION_23_14();
      v52(v51);
    }

    v53 = *(v0 + 456);
    v1 = *(v0 + 464);
    v54 = *(v0 + 440);
    v55 = *(v0 + 448);
    sub_1C754E7EC();
    v56 = sub_1C75506EC();
    v58 = v57;
    v59 = sub_1C70A3994();
    v7 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v59);
    *v60 = v56;
    v60[1] = v58;
    swift_willThrow();

    (*(v55 + 8))(v53, v54);
    goto LABEL_21;
  }

  if (v12 == *(v0 + 532) || v12 == *(v0 + 536))
  {
    if (qword_1EC213D60 != -1)
    {
      OUTLINED_FUNCTION_1_34(&qword_1EC213D60);
    }

    v28 = *(v0 + 400);
    v30 = *(v0 + 376);
    v29 = *(v0 + 384);
    v31 = *(v0 + 336);
    v32 = *(v0 + 344);
    v33 = sub_1C754FF1C();
    v34 = __swift_project_value_buffer(v33, qword_1EC216E08);
    v35 = *(v32 + 16);
    *(v0 + 496) = v34;
    v35(v29, v28, v31);
    v173 = v35;
    v35(v30, v28, v31);
    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 376);
    v39 = *(v0 + 384);
    v42 = *(v0 + 336);
    v41 = *(v0 + 344);
    if (v38)
    {
      v166 = *(v0 + 376);
      v171 = v37;
      v43 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v178[0] = v169;
      *v43 = 136315394;
      sub_1C754E7EC();
      log = v36;
      v44 = sub_1C75506EC();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v39, v42);
      v48 = sub_1C6F765A4(v44, v46, v178);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2048;
      sub_1C754E80C();
      v50 = v49;
      v47(v166, v42);
      *(v43 + 14) = v50;
      _os_log_impl(&dword_1C6F5C000, log, v171, "observeDownloadProgress: %s progress:%f", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v169);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v47 = *(v41 + 8);
      v47(v40, v42);
      v47(v39, v42);
    }

    *(v0 + 504) = v47;
    v86 = *(v0 + 104);
    v87 = swift_task_alloc();
    OUTLINED_FUNCTION_29_11(v87);
    sub_1C70A3FE0(&v86[4]);
    os_unfair_lock_unlock(v86 + 7);
    v88 = *(v0 + 400);
    v89 = *(v0 + 368);
    v163 = *(v0 + 344);
    v90 = *(v0 + 336);
    v91 = *(v0 + 296);
    v170 = *(v0 + 288);
    v172 = v47;
    v92 = *(v0 + 120);
    loga = v91;
    v168 = *(v0 + 112);

    v93 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v93);
    v173(v89, v88, v90);
    sub_1C7550D1C();

    v94 = sub_1C7550D0C();
    v95 = (*(v163 + 80) + 48) & ~*(v163 + 80);
    v96 = swift_allocObject();
    v97 = MEMORY[0x1E69E85E0];
    *(v96 + 2) = v94;
    *(v96 + 3) = v97;
    *(v96 + 4) = v168;
    *(v96 + 5) = v92;
    v6(&v96[v95], v89, v90);
    sub_1C70A3CFC(loga, v170);
    LODWORD(v89) = __swift_getEnumTagSinglePayload(v170, 1, v93);

    if (v89 == 1)
    {
      sub_1C6F678CC(*(v0 + 288));
    }

    else
    {
      sub_1C7550D4C();
      v115 = OUTLINED_FUNCTION_43_2();
      v116(v115);
    }

    v117 = *(v96 + 2);
    swift_unknownObjectRetain();

    v110 = v172;
    if (v117)
    {
      swift_getObjectType();
      v118 = sub_1C7550C8C();
      v120 = v119;
      swift_unknownObjectRelease();
    }

    else
    {
      v118 = 0;
      v120 = 0;
    }

    sub_1C6F678CC(*(v0 + 296));
    OUTLINED_FUNCTION_30();
    v121 = swift_allocObject();
    *(v121 + 16) = &unk_1C7567D30;
    *(v121 + 24) = v96;
    if (v120 | v118)
    {
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v118;
      *(v0 + 72) = v120;
    }

    swift_task_create();

    sub_1C754E80C();
    if (v122 != 0.0)
    {
      goto LABEL_81;
    }

    sub_1C754FF5C();
    sub_1C70A3F98(&qword_1EC216E40, MEMORY[0x1E6977C78], MEMORY[0x1E6977C80]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 512) = v123;
    *v123 = v124;
    v123[1] = sub_1C70A2DC4;
    OUTLINED_FUNCTION_15_21();

    MEMORY[0x1EEE6D8C8](v125, v126, v127);
  }

  else
  {
    if (v12 == *(v0 + 540) || v12 == *(v0 + 544))
    {
      goto LABEL_6;
    }

    if (v12 != *(v0 + 548))
    {
      if (v12 == *(v0 + 552) || v12 == *(v0 + 556) || v12 == *(v0 + 560))
      {
        goto LABEL_6;
      }

      if (qword_1EC213D60 != -1)
      {
        OUTLINED_FUNCTION_1_34(&qword_1EC213D60);
      }

      v100 = sub_1C754FF1C();
      __swift_project_value_buffer(v100, qword_1EC216E08);
      v101 = OUTLINED_FUNCTION_27_14();
      v102(v101);
      v103 = sub_1C754FEEC();
      v104 = sub_1C755119C();
      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v0 + 344);
      if (v105)
      {
        OUTLINED_FUNCTION_42_11();
        v176 = OUTLINED_FUNCTION_31_0();
        v178[0] = v176;
        *v10 = 136315138;
        sub_1C754E7EC();
        v107 = sub_1C75506EC();
        v109 = v108;
        v110 = *(v106 + 8);
        v111 = OUTLINED_FUNCTION_23_14();
        v110(v111);
        v112 = sub_1C6F765A4(v107, v109, v178);

        *(v10 + 4) = v112;
        OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v113, v114, "Unhandled state occurred during download: %s");
        __swift_destroy_boxed_opaque_existential_1(v176);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        v110 = *(v106 + 8);
        v140 = OUTLINED_FUNCTION_23_14();
        v110(v140);
      }

      if (sub_1C754E7FC())
      {
        v141 = *(v0 + 456);
        v1 = *(v0 + 464);
        v142 = *(v0 + 440);
        v143 = *(v0 + 448);
        v177 = *(v0 + 328);
        v144 = *(v0 + 304);
        v145 = *(v0 + 312);
        sub_1C754E7EC();
        v146 = sub_1C75506EC();
        v148 = v147;
        v149 = sub_1C70A3994();
        v7 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v149);
        *v150 = v146;
        v150[1] = v148;
        swift_willThrow();

        (*(v143 + 8))(v141, v142);
        (*(v145 + 8))(v177, v144);
        goto LABEL_21;
      }

      (*(*(v0 + 312) + 8))(*(v0 + 328), *(v0 + 304));
      goto LABEL_81;
    }

    v67 = *(v0 + 564);
    v69 = *(v0 + 144);
    v68 = *(v0 + 152);
    v70 = *(v0 + 128);
    v71 = *(v0 + 136);
    sub_1C754E7BC();
    (*(v71 + 16))(v69, v68, v70);
    v72 = (*(v71 + 88))(v69, v70);
    if (v72 == v67)
    {
      v73 = *(v0 + 400);
      v74 = *(v0 + 104);
      (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
      *(swift_task_alloc() + 16) = v73;
      os_unfair_lock_lock(v74 + 7);
      sub_1C70A3C04(&v74[4]);
      os_unfair_lock_unlock(v74 + 7);
      v75 = *(v0 + 400);
      v76 = *(v0 + 368);
      v77 = *(v0 + 344);
      v78 = *(v0 + 336);
      v79 = *(v0 + 280);
      v175 = *(v0 + 272);
      v167 = *(v0 + 120);
      v174 = *(v0 + 112);

      v80 = sub_1C7550D5C();
      __swift_storeEnumTagSinglePayload(v79, 1, 1, v80);
      (*(v77 + 16))(v76, v75, v78);
      sub_1C7550D1C();

      v81 = sub_1C7550D0C();
      v82 = (*(v77 + 80) + 48) & ~*(v77 + 80);
      v83 = swift_allocObject();
      v84 = MEMORY[0x1E69E85E0];
      *(v83 + 2) = v81;
      *(v83 + 3) = v84;
      *(v83 + 4) = v174;
      *(v83 + 5) = v167;
      v6(&v83[v82], v76, v78);
      sub_1C70A3CFC(v79, v175);
      LODWORD(v79) = __swift_getEnumTagSinglePayload(v175, 1, v80);

      v85 = *(v0 + 272);
      if (v79 == 1)
      {
        sub_1C6F678CC(*(v0 + 272));
      }

      else
      {
        sub_1C7550D4C();
        (*(*(v80 - 8) + 8))(v85, v80);
      }

      v153 = *(v83 + 2);
      swift_unknownObjectRetain();

      if (v153)
      {
        swift_getObjectType();
        v154 = sub_1C7550C8C();
        v156 = v155;
        swift_unknownObjectRelease();
      }

      else
      {
        v154 = 0;
        v156 = 0;
      }

      sub_1C6F678CC(*(v0 + 280));
      OUTLINED_FUNCTION_30();
      v157 = swift_allocObject();
      *(v157 + 16) = &unk_1C7567D18;
      *(v157 + 24) = v83;
      if (v156 | v154)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v154;
        *(v0 + 40) = v156;
      }

      v158 = *(v0 + 344);
      swift_task_create();

      v110 = *(v158 + 8);
LABEL_81:
      (v110)(*(v0 + 400), *(v0 + 336));
      *(v0 + 480) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 488) = v159;
      *v159 = v160;
      OUTLINED_FUNCTION_0_36(v159);
      OUTLINED_FUNCTION_15_21();

      MEMORY[0x1EEE6D9C8](v161);
      return;
    }

    if (v72 == *MEMORY[0x1E698A768] || v72 == *MEMORY[0x1E698A760] || v72 == *MEMORY[0x1E698A770])
    {
      (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
      if (qword_1EC213D60 != -1)
      {
        OUTLINED_FUNCTION_1_34(&qword_1EC213D60);
      }

      v131 = sub_1C754FF1C();
      __swift_project_value_buffer(v131, qword_1EC216E08);
      v132 = sub_1C754FEEC();
      v133 = sub_1C755119C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_1C6F5C000, v132, v133, "Error occured after download: model not available after download completed", v134, 2u);
        OUTLINED_FUNCTION_109();
      }

      v135 = *(v0 + 456);
      v1 = *(v0 + 464);
      v136 = *(v0 + 440);
      v137 = *(v0 + 448);

      v138 = sub_1C70A3994();
      v7 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v138);
      *v139 = 0xD00000000000002CLL;
      v139[1] = 0x80000001C759BC70;
      swift_willThrow();

      (*(v137 + 8))(v135, v136);
      goto LABEL_21;
    }

    v178[0] = 0;
    v178[1] = 0xE000000000000000;
    sub_1C755180C();
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C759BC50);
    sub_1C75519EC();
    OUTLINED_FUNCTION_41_9("Fatal error", v151, v152, *(v0 + 80), *(v0 + 88), "PhotosIntelligence/Spatial3DModelAvailability.swift");
    OUTLINED_FUNCTION_15_21();
  }
}

uint64_t sub_1C70A2DC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 520) = v0;

  if (v0)
  {
    v5 = sub_1C70A3478;
  }

  else
  {
    v5 = sub_1C70A2EC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C70A2EE4()
{
  v62 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  }

  else
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = *(v0 + 200);
    (*(v6 + 32))(v3, v1, v2);
    v7 = *(v6 + 16);
    v7(v4, v3, v2);
    v7(v5, v3, v2);
    v8 = sub_1C754FEEC();
    v9 = sub_1C75511BC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 224);
    if (v10)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 208);
      v14 = *(v0 + 192);
      swift_slowAlloc();
      v58 = OUTLINED_FUNCTION_31_0();
      v61 = v58;
      *v8 = 136315394;
      v7(v13, v11, v14);
      v15 = sub_1C75506EC();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v14);
      v19 = v15;
      v20 = v18;
      v21 = sub_1C6F765A4(v19, v17, &v61);

      *(v8 + 4) = v21;
      *(v8 + 12) = 1024;
      v22 = sub_1C754FF9C() & 1;
      v23 = OUTLINED_FUNCTION_23_14();
      (v18)(v23);
      *(v8 + 14) = v22;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "observeDownloadProgress path: %s isConstrained:%{BOOL}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v24 = *(v0 + 192);
      v20 = *(*(v0 + 200) + 8);
      v25 = OUTLINED_FUNCTION_43_2();
      v20(v25);

      (v20)(v11, v24);
    }

    v26 = *(v0 + 568);
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    sub_1C754FFCC();
    (*(v30 + 104))(v28, v26, v29);
    v31 = sub_1C754FFAC();
    v32 = *(v30 + 8);
    v32(v28, v29);
    v32(v27, v29);
    if (v31)
    {
      v60 = *(v0 + 456);
      v33 = *(v0 + 448);
      v34 = *(v0 + 256);
      v57 = *(v0 + 264);
      v59 = *(v0 + 440);
      v56 = *(v0 + 248);
      v35 = v20;
      v36 = *(v0 + 232);
      v37 = *(v0 + 192);
      v38 = sub_1C70A3994();
      v39 = OUTLINED_FUNCTION_166_0(&type metadata for Spatial3DModelAvailability.DownloadError, v38);
      *v40 = 0xD000000000000015;
      v40[1] = 0x80000001C759BCA0;
      swift_willThrow();

      (v35)(v36, v37);
      (*(v34 + 8))(v57, v56);
      v41 = *(v33 + 8);
      v33 += 8;
      v41(v60, v59);
      v42 = OUTLINED_FUNCTION_35_7();
      v43(v42);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_29_11(v44);
      sub_1C70A3BE8(v33 + 16);
      os_unfair_lock_unlock((v33 + 28));

      OUTLINED_FUNCTION_11_20();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_38_4();

      __asm { BRAA            X1, X16 }
    }

    v46 = *(v0 + 256);
    v45 = *(v0 + 264);
    v47 = *(v0 + 248);
    (v20)(*(v0 + 232), *(v0 + 192));
    (*(v46 + 8))(v45, v47);
  }

  v48 = *(v0 + 520);
  (*(v0 + 504))(*(v0 + 400), *(v0 + 336));
  *(v0 + 480) = v48;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 488) = v49;
  *v49 = v50;
  OUTLINED_FUNCTION_0_36(v49);
  OUTLINED_FUNCTION_38_4();

  return MEMORY[0x1EEE6D9C8](v51);
}

uint64_t sub_1C70A3478()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 96) = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1C70A3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1C7550D1C();
  v6[5] = sub_1C7550D0C();
  v8 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C70A3FF8, v8, v7);
}

void sub_1C70A35B0(uint64_t a1)
{
  sub_1C70A3BD4(*a1, *(a1 + 8));
  sub_1C754E80C();
  *a1 = v2;
  *(a1 + 8) = 0;
}

uint64_t sub_1C70A35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1C7550D1C();
  v6[5] = sub_1C7550D0C();
  v8 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C70A3698, v8, v7);
}

uint64_t sub_1C70A3698()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);

  v2 = sub_1C754E80C();
  v1(v2);
  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C70A370C(uint64_t a1, void *a2)
{
  sub_1C70A3BD4(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = 1;
  return a2;
}

uint64_t sub_1C70A3760()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EC216E00 = result;
  return result;
}

uint64_t sub_1C70A37C8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216E08);
  __swift_project_value_buffer(v0, qword_1EC216E08);
  if (qword_1EC213D58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC216E00;
  return sub_1C754FF2C();
}

uint64_t Spatial3DModelAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C70A38D4()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1C6F738F4;
  v5 = OUTLINED_FUNCTION_2_22();

  return sub_1C70A1588(v5, v6, v7, v8, v9, v1);
}

id sub_1C70A3980(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1C70A3994()
{
  result = qword_1EC216E28;
  if (!qword_1EC216E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DModelAvailability.DownloadError, &type metadata for Spatial3DModelAvailability.DownloadError, v0, v1);
    atomic_store(result, &qword_1EC216E28);
  }

  return result;
}

unint64_t sub_1C70A39EC()
{
  result = qword_1EC216E30;
  if (!qword_1EC216E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DModelAvailability, &type metadata for Spatial3DModelAvailability, v0, v1);
    atomic_store(result, &qword_1EC216E30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Spatial3DModelAvailability(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C70A3B1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C70A3B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence26Spatial3DModelAvailabilityO13DownloadState33_B95F4573C2C116D77A29A5FC8C722FEBLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1C70A3BD4(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1C70A3C20()
{
  sub_1C754E81C();
  OUTLINED_FUNCTION_37_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  v3 = OUTLINED_FUNCTION_2_22();

  return sub_1C70A3514(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C70A3CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_16Tm()
{
  sub_1C754E81C();
  OUTLINED_FUNCTION_26_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1C70A3E28()
{
  sub_1C754E81C();
  OUTLINED_FUNCTION_37_13();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  v3 = OUTLINED_FUNCTION_2_22();

  return sub_1C70A35FC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C70A3F04()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C70A3F98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_10()
{

  return sub_1C7551E7C();
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_43_9()
{
  sub_1C70A3980(*(v0 + 16), *(v0 + 24));

  os_unfair_lock_unlock((v0 + 28));
}

BOOL static Cropping.Utilities.isFaceAreaCutoff(by:for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, void *a5)
{
  v14.origin.x = static Cropping.Utilities.normalizedFaceAreaRect(for:)(a5);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectIsNull(v14))
  {
    return 0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (CGRectIsEmpty(v15))
  {
    return 0;
  }

  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  return !CGRectContainsRect(v16, v17);
}

double static Cropping.Utilities.normalizedFaceAreaRect(for:)(void *a1)
{
  [a1 faceAreaMinX];
  v3 = v2;
  [a1 faceAreaMinY];
  [a1 faceAreaMaxX];
  [a1 faceAreaMaxY];
  return v3;
}

double static Cropping.Utilities.normalizedSuggestedCropRect(for:targetSize:)(void *a1, double a2, double a3)
{
  v6 = [a1 pixelWidth];
  [a1 pixelHeight];
  [a1 suggestedCropForTargetSize_];
  return v7 / v6;
}

_BYTE *_s9UtilitiesVwst(_BYTE *result, int a2, int a3)
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

char *sub_1C70A4320(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_41_0();
    v11 = OUTLINED_FUNCTION_20_1();
    v48[0] = v11;
    *v10 = 136315138;
    v12 = [v7 localIdentifier];
    v13 = sub_1C755068C();
    v15 = v14;

    v16 = sub_1C6F765A4(v13, v15, v48);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Person %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v17 = sub_1C70A49C8(a2);
  type metadata accessor for PersonCuration();
  v18 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(v7, v17, 0);
  if ([v18 count])
  {
    OUTLINED_FUNCTION_4_24();
    sub_1C70A5244(v18, a2, v19, v20, v21);
    v23 = v22;
    v24 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
    v25 = AssetElectionResult.init(fetchResult:)(v23);

    sub_1C6F85170();

    return v25;
  }

  else
  {
    v27 = v7;
    v28 = sub_1C754FEEC();
    v29 = sub_1C755117C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_41_0();
      v47 = OUTLINED_FUNCTION_20_1();
      v48[0] = v47;
      *v30 = 136315138;
      v31 = [v27 localIdentifier];
      v32 = sub_1C755068C();
      v34 = v33;

      v35 = sub_1C6F765A4(v32, v34, v48);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1C6F5C000, v28, v29, "Found 0 curated asset for person %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v36 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
    v37 = v18;
    v38 = AssetElectionResult.init(fetchResult:)(v37);
    v39 = [v27 localIdentifier];
    v40 = sub_1C755068C();
    v42 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E48, &unk_1C7567D60);
    sub_1C7099594(&qword_1EC216E50, &qword_1EC216E48, &unk_1C7567D60, byte_1C75866C0);
    v43 = swift_allocError();
    *v44 = 0;
    *(v44 + 8) = v40;
    *(v44 + 16) = v42;
    *(v44 + 24) = 1;

    v45 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
    swift_beginAccess();
    v46 = *&v38[v45];
    *&v38[v45] = v43;

    sub_1C6F85170();

    return v38;
  }
}

id sub_1C70A47E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EC21B180;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  v14 = sub_1C755146C();
  *&v3[v13] = v14;
  v15 = v14;
  sub_1C754FF2C();
  (*(v9 + 32))(&v3[qword_1EDD28CE0], v12, v7);
  *&v3[qword_1EDD28CE8] = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18.receiver = v3;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

id PersonAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonAssetElector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C70A49C8(uint64_t a1)
{
  v3 = [*(v1 + qword_1EDD28CE8) librarySpecificFetchOptions];
  v4 = OBJC_IVAR___PNAssetElectionOptions_assetUUIDsToAvoid;
  OUTLINED_FUNCTION_5(a1 + OBJC_IVAR___PNAssetElectionOptions_assetUUIDsToAvoid, v9);
  v5 = *(a1 + v4);
  if (v5)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C75604F0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6F6D524();
    *(v6 + 32) = 1684632949;
    *(v6 + 40) = 0xE400000000000000;
    *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *(v6 + 104) = sub_1C7099594(&qword_1EDD0FAF0, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E6969E28]);
    *(v6 + 72) = v5;
    sub_1C75504FC();
    v7 = sub_1C755112C();
    [v3 setPredicate_];
  }

  return v3;
}

uint64_t sub_1C70A4BF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___PNAssetElectionOptions_shufflePreference;
  v10 = OUTLINED_FUNCTION_5(a2 + OBJC_IVAR___PNAssetElectionOptions_shufflePreference, v39);
  v11 = *(a2 + v9);
  switch(v11)
  {
    case 2:
      v26 = a2 + OBJC_IVAR___PNAssetElectionOptions_customSeed;
      OUTLINED_FUNCTION_3_27(v10, v38);
      v11 = *v26;
      if (*(v26 + 8))
      {
        v16 = 0;
      }

      else
      {
        v16 = *v26;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      __break(1u);
      break;
    case 1:
      v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v13 = sub_1C755065C();
      [v12 setDateFormat_];

      sub_1C754DF5C();
      v14 = sub_1C754DECC();
      (*(v5 + 8))(v8, v3);
      v15 = [v12 stringFromDate_];

      v16 = sub_1C755068C();
      v18 = v17;

      v11 = HIBYTE(v18) & 0xF;
      v19 = v16 & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v20 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        if ((v18 & 0x1000000000000000) == 0)
        {
          if ((v18 & 0x2000000000000000) == 0)
          {
            if ((v16 & 0x1000000000000000) == 0)
            {
              goto LABEL_87;
            }

            for (i = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1C75518FC())
            {
              v11 = *i;
              if (v11 == 43)
              {
                if (v19 < 1)
                {
                  goto LABEL_90;
                }

                if (v19 != 1)
                {
                  v16 = 0;
                  if (!i)
                  {
                    goto LABEL_70;
                  }

                  while (1)
                  {
                    OUTLINED_FUNCTION_1_9();
                    if (!v23 && v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_11_21();
                    if (!v23)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_9_22();
                    if (v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_10_23();
                    if (v23)
                    {
                      goto LABEL_81;
                    }
                  }
                }
              }

              else if (v11 == 45)
              {
                if (v19 < 1)
                {
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

                if (v19 != 1)
                {
                  v16 = 0;
                  if (!i)
                  {
                    goto LABEL_70;
                  }

                  while (1)
                  {
                    OUTLINED_FUNCTION_1_9();
                    if (!v23 && v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_11_21();
                    if (!v23)
                    {
                      break;
                    }

                    v22 = 10 * v16 >= v24;
                    v16 = 10 * v16 - v24;
                    if (!v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_10_23();
                    if (v23)
                    {
                      goto LABEL_81;
                    }
                  }
                }
              }

              else if (v19)
              {
                v16 = 0;
                if (!i)
                {
LABEL_70:
                  v25 = 0;
                  goto LABEL_81;
                }

                while (1)
                {
                  v28 = *i - 48;
                  if (v28 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v16, 0xAuLL))
                  {
                    break;
                  }

                  v22 = __CFADD__(10 * v16, v28);
                  v16 = 10 * v16 + v28;
                  if (v22)
                  {
                    break;
                  }

                  ++i;
                  if (!--v19)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_80:
              v16 = 0;
              v25 = 1;
LABEL_81:
              v37 = v25;
              if ((v25 & 1) == 0)
              {
                goto LABEL_82;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              ;
            }
          }

          v38[0] = v16;
          v38[1] = v18 & 0xFFFFFFFFFFFFFFLL;
          if (v16 != 43)
          {
            if (v16 != 45)
            {
              if (v11)
              {
                v16 = 0;
                while (1)
                {
                  OUTLINED_FUNCTION_1_9();
                  if (!v23 && v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_11_21();
                  if (!v23)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_9_22();
                  if (v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_10_23();
                  if (v23)
                  {
                    goto LABEL_81;
                  }
                }
              }

              goto LABEL_80;
            }

            if (v11)
            {
              if (v11 != 1)
              {
                OUTLINED_FUNCTION_17_20();
                while (1)
                {
                  OUTLINED_FUNCTION_1_9();
                  if (!v23 && v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_11_21();
                  if (!v23)
                  {
                    break;
                  }

                  v22 = 10 * v16 >= v27;
                  v16 = 10 * v16 - v27;
                  if (!v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_10_23();
                  if (v23)
                  {
                    goto LABEL_81;
                  }
                }
              }

              goto LABEL_80;
            }

            goto LABEL_89;
          }

          if (v11)
          {
            if (v11 != 1)
            {
              OUTLINED_FUNCTION_17_20();
              while (1)
              {
                OUTLINED_FUNCTION_1_9();
                if (!v23 && v22)
                {
                  break;
                }

                OUTLINED_FUNCTION_11_21();
                if (!v23)
                {
                  break;
                }

                OUTLINED_FUNCTION_9_22();
                if (v22)
                {
                  break;
                }

                OUTLINED_FUNCTION_10_23();
                if (v23)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_80;
          }

LABEL_91:
          __break(1u);
          break;
        }
      }

      else
      {
        __break(1u);
      }

      v37 = 0;
      sub_1C75504FC();
      v16 = sub_1C71CD354();
      v35 = v34;

      if (v35)
      {
        goto LABEL_86;
      }

LABEL_82:

LABEL_83:
      v29 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
      v30 = sub_1C7550B3C();
      v31 = PFShuffledArrayWithRandomNumberGenerator();

      v32 = sub_1C7550B5C();
      return v32;
    case 0:
      v38[0] = 0;
      MEMORY[0x1CCA5F900](v38, 8);
      v16 = v38[0];
      goto LABEL_83;
  }

  v38[0] = v11;
  result = sub_1C7551E1C();
  __break(1u);
  return result;
}

void sub_1C70A5244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16_17();
  v10 = &selRef_clsSceneClassifications;
  v50 = v11;
  if ([v11 count] >= 2)
  {
    v12 = qword_1EDD28CE0;
    v13 = v50;
    v51 = v12;
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v7;
      v17 = a5;
      v18 = OUTLINED_FUNCTION_41_0();
      *v18 = 134217984;
      *(v18 + 4) = [v13 count];

      _os_log_impl(&dword_1C6F5C000, v14, v15, "Start post processing %ld assets", v18, 0xCu);
      a5 = v17;
      v7 = v16;
      v10 = &selRef_clsSceneClassifications;
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v14 = v13;
    }

    v22 = *(v5 + qword_1EC21B180);
    type metadata accessor for PerformanceMeasure(0);
    swift_allocObject();
    v23 = v22;
    PerformanceMeasure.init(name:log:)();
    v24 = sub_1C70A50A4(v13, v6);
    sub_1C70A5600(v24, v6, v8, v7, a5);
    v26 = v25;
    v27 = [v25 fetchedObjectIDs];
    if (!v27)
    {

LABEL_23:
      OUTLINED_FUNCTION_19_16();
      return;
    }

    v28 = v27;
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    v29 = sub_1C7550B5C();

    v30 = OBJC_IVAR___PNAssetElectionOptions_limit;
    OUTLINED_FUNCTION_5(v6 + OBJC_IVAR___PNAssetElectionOptions_limit, v52);
    v31 = sub_1C7034064(*(v6 + v30), v29);
    v33 = v32;
    v35 = v34;
    v37 = v36;
    if (v36)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v42 = swift_dynamicCastClass();
      if (!v42)
      {
        swift_unknownObjectRelease();
        v42 = MEMORY[0x1E69E7CC0];
      }

      v43 = *(v42 + 16);

      if (__OFSUB__(v37 >> 1, v35))
      {
        __break(1u);
      }

      else if (v43 == (v37 >> 1) - v35)
      {
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v10 = &selRef_clsSceneClassifications;
        v40 = &unk_1C755C000;
        v41 = v51;
        if (v39)
        {
LABEL_19:
          v44 = sub_1C70A4B5C(v39);

          v45 = v44;
          v46 = v5 + v41;
          v47 = sub_1C754FEEC();
          v48 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_7_0(v48))
          {
            v49 = OUTLINED_FUNCTION_41_0();
            *v49 = v40[397];
            *(v49 + 4) = [v45 v10[32]];

            _os_log_impl(&dword_1C6F5C000, v47, v46, "Found %ld post processed assets", v49, 0xCu);
            OUTLINED_FUNCTION_109();
          }

          else
          {

            v47 = v45;
          }

          sub_1C6F85170();

          goto LABEL_23;
        }

        v39 = MEMORY[0x1E69E7CC0];
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
      v10 = &selRef_clsSceneClassifications;
    }

    sub_1C739C730(v31, v33, v35, v37);
    v39 = v38;
    v40 = &unk_1C755C000;
    v41 = v51;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_19_16();

  v21 = v19;
}

void sub_1C70A5600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16_17();
  v157 = v9;
  v11 = (v10 + OBJC_IVAR___PNAssetElectionOptions_minimumCropScore);
  v12 = OUTLINED_FUNCTION_3_27(v9, v167);
  if (v11[1] & 1) != 0 || (v13 = *v11, v14 = &v6[OBJC_IVAR___PNAssetElectionOptions_portraitAspectRatio], v15 = OUTLINED_FUNCTION_3_27(v12, v166), (v14[8]) || (v16 = *v14, v17 = &v6[OBJC_IVAR___PNAssetElectionOptions_landscapeAspectRatio], OUTLINED_FUNCTION_3_27(v15, v165), (v17[8]) || (v18 = *v17, v19 = [v157 count], v20 = OBJC_IVAR___PNAssetElectionOptions_limit, OUTLINED_FUNCTION_5(&v6[OBJC_IVAR___PNAssetElectionOptions_limit], v164), *&v6[v20] >= v19))
  {
    v43 = v5 + qword_1EDD28CE0;
    v44 = sub_1C754FEEC();
    v45 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C6F5C000, v44, v43, "minimumCropScore/aspectRatio is nil or asset count <= limit, skip checking cropScore", v46, 2u);
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_19_16();

    v49 = v47;
  }

  else
  {
    v149 = v20;
    v21 = *&v5[qword_1EC21B180];
    type metadata accessor for PerformanceMeasure(0);
    swift_allocObject();
    v22 = v21;
    v147 = PerformanceMeasure.init(name:log:)();
    v23 = OUTLINED_FUNCTION_13_20();
    v24 = MEMORY[0x1E69E7CD0];
    *(v23 + 16) = MEMORY[0x1E69E7CD0];
    v25 = OUTLINED_FUNCTION_13_20();
    *(v25 + 16) = v24;
    v26 = (v25 + 16);
    v27 = OUTLINED_FUNCTION_13_20();
    *(v27 + 16) = v24;
    v140 = (v27 + 16);
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v5;
    v29[3] = v16;
    v29[4] = v18;
    v29[5] = v25;
    v29[6] = v6;
    v29[7] = v13;
    v29[8] = v23;
    v29[9] = v27;
    v170 = v7;
    v171 = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C7067B48;
    v169 = a5;
    v30 = _Block_copy(aBlock);
    v31 = v5;

    v142 = v6;

    v146 = v27;

    [v157 enumerateObjectsUsingBlock_];
    _Block_release(v30);
    v32 = OUTLINED_FUNCTION_5(v26, v162);
    *&v144 = v26;
    v33 = *v26;
    OUTLINED_FUNCTION_3_27(v32, v161);
    v34 = v23 + 16;
    sub_1C75504FC();
    v35 = sub_1C75504FC();
    sub_1C707446C(v35, v33);
    v37 = sub_1C739C704(v36);

    v163 = v37;
    v38 = qword_1EDD28CE0;

    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    v155 = v28;
    v156 = v23;
    v154 = v38;
    if (OUTLINED_FUNCTION_7_0(v40))
    {
      HIDWORD(v139) = v31 + v38;
      v41 = OUTLINED_FUNCTION_20_1();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v41 = 134218498;
      if ((*v34 & 0xC000000000000001) != 0)
      {
        sub_1C75504FC();
        v42 = sub_1C75516BC();
      }

      else
      {
        v42 = *(*v34 + 16);
      }

      *(v41 + 4) = v42;

      *(v41 + 12) = 2080;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v51 = OUTLINED_FUNCTION_95(v50);
      v152 = 2;
      *(v51 + 16) = xmmword_1C755BAB0;
      v52 = MEMORY[0x1E69E63B0];
      *(v51 + 56) = MEMORY[0x1E69E63B0];
      v38 = MEMORY[0x1E69E6438];
      *(v51 + 64) = MEMORY[0x1E69E6438];
      *(v51 + 32) = v13;
      v53 = OUTLINED_FUNCTION_8_19();
      v55 = sub_1C6F765A4(v53, v54, aBlock);

      *(v41 + 14) = v55;
      *(v41 + 22) = 2080;
      v56 = OUTLINED_FUNCTION_95(v50);
      *(v56 + 16) = xmmword_1C755BAB0;
      *(v56 + 56) = v52;
      *(v56 + 64) = v38;
      *(v56 + 32) = v16;
      v57 = OUTLINED_FUNCTION_8_19();
      v59 = sub_1C6F765A4(v57, v58, aBlock);

      *(v41 + 24) = v59;
      _os_log_impl(&dword_1C6F5C000, v39, BYTE4(v139), "Found %ld assets with minimumCropScore:%s, portraitAspectRatio:%s", v41, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

      LOBYTE(v38) = v154;
    }

    else
    {
    }

    v60 = sub_1C754FEEC();
    v61 = sub_1C75511BC();
    v151 = v31;
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_20_1();
      aBlock[0] = swift_slowAlloc();
      *v62 = 134218498;
      if ((*v144 & 0xC000000000000001) != 0)
      {
        sub_1C75504FC();
        v63 = sub_1C75516BC();
      }

      else
      {
        v63 = *(*v144 + 16);
      }

      *(v62 + 4) = v63;

      *(v62 + 12) = 2080;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v64 = OUTLINED_FUNCTION_95(v31);
      v144 = xmmword_1C755BAB0;
      *(v64 + 16) = xmmword_1C755BAB0;
      v65 = MEMORY[0x1E69E63B0];
      *(v64 + 56) = MEMORY[0x1E69E63B0];
      v66 = MEMORY[0x1E69E6438];
      *(v64 + 64) = MEMORY[0x1E69E6438];
      *(v64 + 32) = v13;
      v67 = OUTLINED_FUNCTION_8_19();
      v69 = sub_1C6F765A4(v67, v68, aBlock);

      *(v62 + 14) = v69;
      *(v62 + 22) = 2080;
      v70 = OUTLINED_FUNCTION_95(v31);
      *(v70 + 16) = xmmword_1C755BAB0;
      *(v70 + 56) = v65;
      *(v70 + 64) = v66;
      *(v70 + 32) = v18;
      v71 = OUTLINED_FUNCTION_8_19();
      v38 = sub_1C6F765A4(v71, v72, aBlock);

      *(v62 + 24) = v38;
      _os_log_impl(&dword_1C6F5C000, v60, v61, "Found %ld assets with minimumCropScore:%s, landscapeAspectRatio:%s", v62, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

      LOBYTE(v31) = v151;
      LOBYTE(v38) = v154;
    }

    else
    {
    }

    v73 = sub_1C754FEEC();
    v74 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v74))
    {
      v75 = OUTLINED_FUNCTION_41_0();
      *v75 = 134217984;
      *(v75 + 4) = sub_1C6FB6304();
      _os_log_impl(&dword_1C6F5C000, v73, (v31 + v38), "Found %ld assets combined that meet portrait and/or landscape crop requirements", v75, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    v76 = sub_1C6FB6304();
    v77 = *&v6[v149];
    if (v76 >= v77)
    {
      goto LABEL_35;
    }

    v78 = sub_1C6FB6304();
    v79 = v77 - v78;
    if (!__OFSUB__(v77, v78))
    {
      OUTLINED_FUNCTION_5(v140, v160);
      sub_1C75504FC();
      v80 = sub_1C733C094();

      if (v80 >= v79)
      {
        v81 = v79;
      }

      else
      {
        v81 = v80;
      }

      v82 = *v140;
      sub_1C75504FC();
      sub_1C7033F5C(v81, v82);
      v84 = v169;
      v83 = v170;
      v85 = v171;
      v86 = v172;
      OUTLINED_FUNCTION_20_18(&v163, v159);
      sub_1C75504FC();
      v87 = OUTLINED_FUNCTION_0_37();
      sub_1C6FD8078(v87, v88, v89);
      LODWORD(v144) = v85;
      sub_1C6FD8078(v84, v83, v85);
      sub_1C6FD2C20(aBlock);
      swift_endAccess();
      v90 = sub_1C75504FC();
      sub_1C71BA844(v90, v98, v99, v91, v92, v93, v94, v95, v96, v97, v138, v139, v86, v142, v144, *(&v144 + 1), v146, v147, v83, v149, v151, v152, v153, v154, v155, v156);
      v101 = v100;

      v102 = sub_1C70A4BF4(v101, v143);

      v103 = sub_1C71BBCB0(v102);

      if (!v103)
      {
        v157;
        v119 = OUTLINED_FUNCTION_0_37();
        sub_1C6F9ED50(v119, v120, v121);
        v122 = OUTLINED_FUNCTION_2_23();
        sub_1C6F9ED50(v122, v123, v124);

LABEL_36:
        OUTLINED_FUNCTION_19_16();
        return;
      }

      v158 = v143;
      sub_1C75504FC();
      v104 = OUTLINED_FUNCTION_0_37();
      sub_1C6FD8078(v104, v105, v106);
      v107 = OUTLINED_FUNCTION_2_23();
      sub_1C6FD8078(v107, v108, v109);
      v110 = sub_1C754FEEC();
      v111 = sub_1C75511BC();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 134218240;
        *(v112 + 4) = *&v6[v150];

        *(v112 + 12) = 2048;
        v113 = OUTLINED_FUNCTION_0_37();
        *(v112 + 14) = sub_1C707FA7C(v113, v114, v115, v84, v148, v145, v141);
        v116 = OUTLINED_FUNCTION_0_37();
        sub_1C6F9ED50(v116, v117, v118);
        sub_1C6F9ED50(v84, v148, v145);

        _os_log_impl(&dword_1C6F5C000, v110, v111, "Required %ld, backfill %ld", v112, 0x16u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
        v125 = OUTLINED_FUNCTION_0_37();
        sub_1C6F9ED50(v125, v126, v127);
        v128 = OUTLINED_FUNCTION_2_23();
        sub_1C6F9ED50(v128, v129, v130);
      }

      v131 = OUTLINED_FUNCTION_0_37();
      sub_1C6F9ED50(v131, v132, v133);
      v134 = OUTLINED_FUNCTION_2_23();
      sub_1C6F9ED50(v134, v135, v136);

LABEL_35:
      sub_1C6F85170();
      v137 = sub_1C75504FC();
      sub_1C70A4B5C(v137);
      swift_bridgeObjectRelease_n();

      goto LABEL_36;
    }

    __break(1u);
  }
}

void sub_1C70A6080(void *a1, double a2, double a3, double a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50[3] = *MEMORY[0x1E69E9840];
  if ([a1 pixelWidth] >= 1 && objc_msgSend(a1, sel_pixelHeight) >= 1)
  {
    oslog = a6;
    v44 = 0.0;
    v45 = 0.0;
    OUTLINED_FUNCTION_15_22();
    [a1 v20];
    OUTLINED_FUNCTION_15_22();
    [a1 v21];
    OUTLINED_FUNCTION_5(a8 + 16, v50);
    sub_1C75504FC();
    v22 = sub_1C733C094();

    v23 = OBJC_IVAR___PNAssetElectionOptions_limit;
    OUTLINED_FUNCTION_5(a9 + OBJC_IVAR___PNAssetElectionOptions_limit, v49);
    v24 = v44 >= a4 && v22 < *(a9 + v23);
    v25 = !v24;
    if (v24)
    {
      v26 = [a1 objectID];
      OUTLINED_FUNCTION_20_18(a8 + 16, v48);
      sub_1C70F25A0(v47);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_5(a10 + 16, v48);
    sub_1C75504FC();
    v27 = sub_1C733C094();

    if (v27 >= *(a9 + v23) || v45 < a4)
    {
      if (!v25)
      {
        goto LABEL_25;
      }

      [a1 objectID];
      OUTLINED_FUNCTION_20_18(a11 + 16, v47);
    }

    else
    {
      [a1 objectID];
      OUTLINED_FUNCTION_20_18(a10 + 16, v47);
    }

    sub_1C70F25A0(v46);
    swift_endAccess();

LABEL_25:
    OUTLINED_FUNCTION_5(a10 + 16, v47);
    sub_1C75504FC();
    v40 = sub_1C733C094();

    if (v40 >= *(a9 + v23))
    {
      OUTLINED_FUNCTION_5(a8 + 16, v46);
      sub_1C75504FC();
      v41 = sub_1C733C094();

      if (v41 >= *(a9 + v23))
      {
        LOBYTE(oslog->isa) = 1;
      }
    }

    goto LABEL_28;
  }

  v29 = a1;
  osloga = sub_1C754FEEC();
  v30 = sub_1C75511BC();

  if (os_log_type_enabled(osloga, v30))
  {
    v31 = OUTLINED_FUNCTION_41_0();
    v32 = OUTLINED_FUNCTION_20_1();
    v50[0] = v32;
    *v31 = 136315138;
    v33 = [v29 localIdentifier];
    v34 = sub_1C755068C();
    v36 = v35;

    v37 = sub_1C6F765A4(v34, v36, v50);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1C6F5C000, osloga, v30, "Asset %s has 0 pixel height or width. Skipping", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

LABEL_28:
    OUTLINED_FUNCTION_22_18();
    return;
  }

  OUTLINED_FUNCTION_22_18();
}

uint64_t type metadata accessor for PersonAssetElector(uint64_t a1)
{
  result = qword_1EC216E58;
  if (!qword_1EC216E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

PhotosIntelligence::PromptBindingContext __swiftcall PromptBindingContext.init(numberOfPersonAndPetNames:numberOfLocationNames:)(Swift::Int numberOfPersonAndPetNames, Swift::Int numberOfLocationNames)
{
  *v2 = numberOfPersonAndPetNames;
  v2[1] = numberOfLocationNames;
  result.numberOfLocationNames = numberOfLocationNames;
  result.numberOfPersonAndPetNames = numberOfPersonAndPetNames;
  return result;
}

uint64_t PromptBindings.currentDate.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

void __swiftcall PromptBindings.init(currentDate:personNames:petNames:locationNames:)(PhotosIntelligence::PromptBindings *__return_ptr retstr, Swift::String currentDate, Swift::OpaquePointer personNames, Swift::OpaquePointer petNames, Swift::OpaquePointer locationNames)
{
  retstr->currentDate = currentDate;
  retstr->personNames = personNames;
  retstr->petNames = petNames;
  retstr->locationNames = locationNames;
}

uint64_t PromptBindings.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x44746E6572727563, 0xED0000203A657461);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x4E6E6F737265700ALL, 0xEE00203A73656D61);
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](0x656D614E7465700ALL, 0xEB00000000203A73);
  v8 = MEMORY[0x1CCA5D090](v3, v6);
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759BD40);
  v9 = MEMORY[0x1CCA5D090](v5, v6);
  MEMORY[0x1CCA5CD70](v9);

  return 0;
}

uint64_t sub_1C70A67BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E6572727563 && a2 == 0xEB00000000657461;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E6E6F73726570 && a2 == 0xEB0000000073656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656D614E746570 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED000073656D614ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C70A6924(char a1)
{
  result = 0x44746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x614E6E6F73726570;
      break;
    case 2:
      result = 0x73656D614E746570;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70A69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70A67BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70A69F4(uint64_t a1)
{
  v2 = sub_1C70A6FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70A6A30(uint64_t a1)
{
  v2 = sub_1C70A6FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptBindings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E88, &unk_1C7567DC0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70A6FCC();
  sub_1C755200C();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_1C7551CCC();
  if (!v10)
  {
    v11 = v15;
    v12 = v16;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_1();
    v20 = v12;
    v19 = 2;
    OUTLINED_FUNCTION_1();
    v20 = v11;
    v19 = 3;
    OUTLINED_FUNCTION_1();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PromptBindings.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E98, &qword_1C7567DD0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70A6FCC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12) = 0;
  v10 = sub_1C7551BBC();
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_0_38();
  v8 = OUTLINED_FUNCTION_2_24();
  v9(v8);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v12;
  a2[4] = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}