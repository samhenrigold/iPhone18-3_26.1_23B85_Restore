uint64_t sub_1D524E984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D524E9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D524EA38()
{
  result = qword_1EC7F2868;
  if (!qword_1EC7F2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2868);
  }

  return result;
}

unint64_t sub_1D524EA90()
{
  result = qword_1EC7F2870;
  if (!qword_1EC7F2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2870);
  }

  return result;
}

unint64_t sub_1D524EAE8()
{
  result = qword_1EC7F2878;
  if (!qword_1EC7F2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2878);
  }

  return result;
}

unint64_t sub_1D524EB40()
{
  result = qword_1EC7F2880;
  if (!qword_1EC7F2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2880);
  }

  return result;
}

unint64_t sub_1D524EB98()
{
  result = qword_1EC7F2888;
  if (!qword_1EC7F2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2888);
  }

  return result;
}

unint64_t sub_1D524EBF0()
{
  result = qword_1EC7F2890;
  if (!qword_1EC7F2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2890);
  }

  return result;
}

unint64_t sub_1D524EC4C()
{
  result = qword_1EC7F2898;
  if (!qword_1EC7F2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2898);
  }

  return result;
}

unint64_t sub_1D524ECA4()
{
  result = qword_1EC7F28A0;
  if (!qword_1EC7F28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28A0);
  }

  return result;
}

unint64_t sub_1D524ECFC()
{
  result = qword_1EC7F28A8;
  if (!qword_1EC7F28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28A8);
  }

  return result;
}

unint64_t sub_1D524ED54()
{
  result = qword_1EC7F28B0;
  if (!qword_1EC7F28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28B0);
  }

  return result;
}

unint64_t sub_1D524EDAC()
{
  result = qword_1EC7F28B8;
  if (!qword_1EC7F28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28B8);
  }

  return result;
}

unint64_t sub_1D524EE04()
{
  result = qword_1EC7F28C0;
  if (!qword_1EC7F28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28C0);
  }

  return result;
}

unint64_t sub_1D524EE5C()
{
  result = qword_1EC7F28C8;
  if (!qword_1EC7F28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28C8);
  }

  return result;
}

unint64_t sub_1D524EEB4()
{
  result = qword_1EC7F28D0;
  if (!qword_1EC7F28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28D0);
  }

  return result;
}

unint64_t sub_1D524EF08()
{
  result = qword_1EC7F28E0;
  if (!qword_1EC7F28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28E0);
  }

  return result;
}

void sub_1D524EF5C()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D5246D68(&unk_1EC7ED168);
    sub_1D5246D68(&unk_1EC7ED170);
    OUTLINED_FUNCTION_222();
    atomic_store(swift_getWitnessTable(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

void sub_1D524F020()
{
  OUTLINED_FUNCTION_70_1();
  if (!OUTLINED_FUNCTION_46_0(v1))
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    OUTLINED_FUNCTION_61();
    sub_1D524EF5C();
    atomic_store(OUTLINED_FUNCTION_44_1(), v0);
  }

  OUTLINED_FUNCTION_69_3();
}

unint64_t sub_1D524F080()
{
  result = qword_1EC7F28F8;
  if (!qword_1EC7F28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F28F8);
  }

  return result;
}

unint64_t sub_1D524F0D4()
{
  result = qword_1EC7F2900;
  if (!qword_1EC7F2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2900);
  }

  return result;
}

unint64_t sub_1D524F128()
{
  result = qword_1EC7F2910;
  if (!qword_1EC7F2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogInternalSearchRawResponse.Metadata.Results.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D524F27C()
{
  result = qword_1EC7F2918;
  if (!qword_1EC7F2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2918);
  }

  return result;
}

unint64_t sub_1D524F2D4()
{
  result = qword_1EC7F2920;
  if (!qword_1EC7F2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2920);
  }

  return result;
}

unint64_t sub_1D524F32C()
{
  result = qword_1EC7F2928;
  if (!qword_1EC7F2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2928);
  }

  return result;
}

unint64_t sub_1D524F384()
{
  result = qword_1EC7F2930;
  if (!qword_1EC7F2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2930);
  }

  return result;
}

unint64_t sub_1D524F3DC()
{
  result = qword_1EC7F2938;
  if (!qword_1EC7F2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2938);
  }

  return result;
}

unint64_t sub_1D524F434()
{
  result = qword_1EC7F2940;
  if (!qword_1EC7F2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2940);
  }

  return result;
}

unint64_t sub_1D524F48C()
{
  result = qword_1EC7F2948;
  if (!qword_1EC7F2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2948);
  }

  return result;
}

unint64_t sub_1D524F4E0()
{
  result = qword_1EC7F2958;
  if (!qword_1EC7F2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2958);
  }

  return result;
}

_BYTE *sub_1D524F534(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D524F5E4()
{
  result = qword_1EC7F2968;
  if (!qword_1EC7F2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2968);
  }

  return result;
}

unint64_t sub_1D524F63C()
{
  result = qword_1EC7F2970;
  if (!qword_1EC7F2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2970);
  }

  return result;
}

unint64_t sub_1D524F694()
{
  result = qword_1EC7F2978;
  if (!qword_1EC7F2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2978);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616028();
}

uint64_t OUTLINED_FUNCTION_61_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5616398();
}

uint64_t type metadata accessor for MusicDownloadedSongCatalogProperties(uint64_t a1)
{
  result = qword_1EDD59A98;
  if (!qword_1EDD59A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicDownloadedSongCatalogProperties.audioAnalysis.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v7 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  OUTLINED_FUNCTION_57_26(*(v7 + 40));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v4, 1, v8);
  if (v15)
  {
    v9 = &qword_1EC7EDEE8;
    v10 = &qword_1D5628A68;
    v11 = v4;
  }

  else
  {
    sub_1D4F39AB0(&v4[*(v8 + 36)], v0, &qword_1EC7F1548, &unk_1D5649E50);
    sub_1D4E50004(v4, &qword_1EC7EDF00, &unk_1D5628A80);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
    v13 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v13, v14, v12);
    if (!v15)
    {
      sub_1D4EC9674();
      OUTLINED_FUNCTION_24_0();
      return (*(v17 + 8))(v0, v12);
    }

    v9 = &qword_1EC7F1548;
    v10 = &unk_1D5649E50;
    v11 = v0;
  }

  sub_1D4E50004(v11, v9, v10);
  v16 = type metadata accessor for AudioAnalysis(0);
  return OUTLINED_FUNCTION_64_7(v16);
}

uint64_t MusicDownloadedSongCatalogProperties.flexAnalysis.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v7 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  OUTLINED_FUNCTION_57_26(*(v7 + 44));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_57(v4, 1, v8);
  if (v15)
  {
    v9 = &qword_1EC7EDEE0;
    v10 = &qword_1D5628A60;
    v11 = v4;
  }

  else
  {
    sub_1D4F39AB0(&v4[*(v8 + 36)], v0, &qword_1EC7F1558, &unk_1D5649E60);
    sub_1D4E50004(v4, &qword_1EC7EDEF8, &qword_1D5628A78);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
    v13 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v13, v14, v12);
    if (!v15)
    {
      sub_1D4EC9728();
      OUTLINED_FUNCTION_24_0();
      return (*(v17 + 8))(v0, v12);
    }

    v9 = &qword_1EC7F1558;
    v10 = &unk_1D5649E60;
    v11 = v0;
  }

  sub_1D4E50004(v11, v9, v10);
  v16 = type metadata accessor for FlexAnalysis(0);
  return OUTLINED_FUNCTION_64_7(v16);
}

uint64_t MusicDownloadedSongCatalogProperties.spatialTimingInformation.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogProperties(0) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0xB0uLL);
  return sub_1D4F39AB0(__dst, &v5, &qword_1EC7F1608, &qword_1D56409F8);
}

uint64_t MusicDownloadedSongCatalogProperties.fulfilledProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicDownloadedSongCatalogProperties(0) + 48));

  return sub_1D52D48E0(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MusicDownloadedSongCatalogProperties.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogProperties(0) + 60);
  sub_1D560C328();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static MusicDownloadedSongCatalogProperties.== infix(_:_:)(void *a1, void *a2)
{
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v137[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v138 = v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2980, &qword_1D5649E70);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v137 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v139 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v142 = v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2988, &qword_1D5649E78);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v145 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_71_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v137 - v29;
  v31 = *a1 == *a2 && a1[1] == a2[1];
  if (!v31 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_16;
  }

  v137[0] = v13;
  v32 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  v148 = a2;
  v33 = *(v32 + 20);
  v34 = *(v27 + 48);
  v146 = v32;
  v147 = a1;
  sub_1D4F39AB0(a1 + v33, v30, &qword_1EC7EA788, &unk_1D56223A0);
  v35 = v148 + v33;
  v36 = v148;
  sub_1D4F39AB0(v35, &v30[v34], &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_10(v30);
  if (v31)
  {
    OUTLINED_FUNCTION_10(&v30[v34]);
    if (v31)
    {
      sub_1D4E50004(v30, &qword_1EC7EA788, &unk_1D56223A0);
      goto LABEL_19;
    }

LABEL_14:
    v38 = &qword_1EC7EB668;
    v39 = &qword_1D5637E60;
    v40 = v30;
LABEL_15:
    sub_1D4E50004(v40, v38, v39);
    goto LABEL_16;
  }

  sub_1D4F39AB0(v30, v3, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_10(&v30[v34]);
  if (v37)
  {
    (*(v23 + 8))(v3, v21);
    goto LABEL_14;
  }

  (*(v23 + 32))(v2, &v30[v34], v21);
  sub_1D4F217AC();
  v43 = sub_1D5614D18();
  v44 = *(v23 + 8);
  v44(v2, v21);
  v44(v3, v21);
  sub_1D4E50004(v30, &qword_1EC7EA788, &unk_1D56223A0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v45 = v146;
  v46 = v146[6];
  v47 = (v147 + v46);
  v48 = *(v147 + v46 + 8);
  v49 = (v36 + v46);
  v41 = *(v36 + v46 + 8);
  if (v48)
  {
    if (!v41)
    {
      return v41 & 1;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_16;
    }
  }

  v50 = v146[7];
  memcpy(v156, v147 + v50, sizeof(v156));
  v51 = v146[7];
  memcpy(v157, v148 + v51, sizeof(v157));
  memcpy(v155, v147 + v50, 0xB0uLL);
  v52 = v148 + v51;
  v53 = v148;
  memcpy(&v155[176], v52, 0xB0uLL);
  memcpy(v158, v147 + v50, 0xB0uLL);
  if (sub_1D5012280(v158) == 1)
  {
    memcpy(v153, &v155[176], 0xB0uLL);
    if (sub_1D5012280(v153) == 1)
    {
      OUTLINED_FUNCTION_44_29(v154);
      OUTLINED_FUNCTION_20_58();
      sub_1D4F39AB0(v54, v55, v56, v57);
      OUTLINED_FUNCTION_20_58();
      sub_1D4F39AB0(v58, v59, v60, v61);
      OUTLINED_FUNCTION_25_47();
      sub_1D4E50004(v62, v63, v64);
      goto LABEL_33;
    }

    sub_1D4F39AB0(v156, v154, &qword_1EC7F1608, &qword_1D56409F8);
    sub_1D4F39AB0(v157, v154, &qword_1EC7F1608, &qword_1D56409F8);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_44_29(v154);
  OUTLINED_FUNCTION_44_29(v152);
  memcpy(v153, &v155[176], 0xB0uLL);
  if (sub_1D5012280(v153) == 1)
  {
    OUTLINED_FUNCTION_44_29(v151);
    OUTLINED_FUNCTION_41_32(v156);
    OUTLINED_FUNCTION_41_32(v157);
    OUTLINED_FUNCTION_41_32(v154);
    sub_1D524528C(v151);
LABEL_31:
    memcpy(v153, v155, sizeof(v153));
    v38 = &unk_1EC7F2990;
    v39 = &unk_1D5649E80;
    v40 = v153;
    goto LABEL_15;
  }

  memcpy(v151, &v155[176], sizeof(v151));
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v65, v66, v67, v68);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v69, v70, v71, v72);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v73, v74, v75, v76);
  static SpatialTimingInformation.== infix(_:_:)(v152, v151);
  v78 = v77;
  memcpy(v149, v151, sizeof(v149));
  sub_1D524528C(v149);
  memcpy(v150, v152, sizeof(v150));
  sub_1D524528C(v150);
  OUTLINED_FUNCTION_44_29(v151);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v79, v80, v81);
  if ((v78 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  v82 = v45[8];
  v83 = *(v147 + v82);
  v84 = *(v53 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v84 == 2 || ((v84 ^ v83) & 1) != 0)
  {
    goto LABEL_16;
  }

  if ((sub_1D560C2E8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v85 = *(v143 + 48);
  v86 = v145;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v87, v88, v89, v90);
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v91, v92, v93, v94);
  OUTLINED_FUNCTION_57(v86, 1, v144);
  if (v31)
  {
    OUTLINED_FUNCTION_10(v86 + v85);
    if (v31)
    {
      sub_1D4E50004(v86, &qword_1EC7EDEE8, &qword_1D5628A68);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v95 = v142;
  sub_1D4F39AB0(v86, v142, &qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_10(v86 + v85);
  if (v96)
  {
    sub_1D4E50004(v95, &qword_1EC7EDF00, &unk_1D5628A80);
LABEL_47:
    v38 = &qword_1EC7F2988;
    v39 = &qword_1D5649E78;
    v40 = v86;
    goto LABEL_15;
  }

  v97 = v139;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39A1C(v98, v99, v100, v101);
  v102 = v86;
  v103 = sub_1D5250D3C(v95, v97);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v104, v105, v106);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v107, v108, v109);
  sub_1D4E50004(v102, &qword_1EC7EDEE8, &qword_1D5628A68);
  if (!v103)
  {
    goto LABEL_16;
  }

LABEL_49:
  v110 = *(v140 + 48);
  v111 = v137[0];
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v112, v113, v114, v115);
  v116 = v148;
  OUTLINED_FUNCTION_20_58();
  sub_1D4F39AB0(v117, v118, v119, v120);
  OUTLINED_FUNCTION_57(v111, 1, v141);
  if (v31)
  {
    OUTLINED_FUNCTION_10(v111 + v110);
    if (v31)
    {
      sub_1D4E50004(v111, &qword_1EC7EDEE0, &qword_1D5628A60);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v121 = v138;
  sub_1D4F39AB0(v111, v138, &qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_10(v111 + v110);
  if (v122)
  {
    sub_1D4E50004(v121, &qword_1EC7EDEF8, &qword_1D5628A78);
LABEL_57:
    v38 = &qword_1EC7F2980;
    v39 = &qword_1D5649E70;
    v40 = v111;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20_58();
  sub_1D4F39A1C(v123, v124, v125, v126);
  v127 = OUTLINED_FUNCTION_39_4();
  v129 = sub_1D5251058(v127, v128);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v130, v131, v132);
  OUTLINED_FUNCTION_25_47();
  sub_1D4E50004(v133, v134, v135);
  sub_1D4E50004(v111, &qword_1EC7EDEE0, &qword_1D5628A60);
  if (v129)
  {
LABEL_59:
    v136 = v147;
    if (*(v147 + v45[12]) == *(v116 + v45[12]) && *(v147 + v45[13]) == *(v116 + v45[13]) && (sub_1D560C2E8() & 1) != 0 && (sub_1D560C2E8() & 1) != 0)
    {
      LOBYTE(v41) = *(v136 + v45[16]) ^ *(v116 + v45[16]) ^ 1;
      return v41 & 1;
    }
  }

LABEL_16:
  LOBYTE(v41) = 0;
  return v41 & 1;
}

uint64_t MusicDownloadedSongCatalogProperties.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v46 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v49 = v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v45 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v47 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  sub_1D5614E28();
  v24 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  sub_1D4F39AB0(v2 + v24[5], v23, &qword_1EC7EA788, &unk_1D56223A0);
  v25 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v25, v26, v14);
  if (v27)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    OUTLINED_FUNCTION_25_47();
    v28();
    OUTLINED_FUNCTION_42_29();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v16 + 8))(v19, v14);
  }

  v29 = (v2 + v24[6]);
  if (*(v29 + 8) == 1)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v30 = *v29;
    OUTLINED_FUNCTION_42_29();
    if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x1DA6EC100](v31);
  }

  v32 = v24[7];
  memcpy(v54, (v2 + v32), sizeof(v54));
  memcpy(v55, (v2 + v32), 0xB0uLL);
  if (sub_1D5012280(v55) == 1)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    memcpy(v51, v54, sizeof(v51));
    OUTLINED_FUNCTION_42_29();
    memcpy(v52, v54, sizeof(v52));
    sub_1D51D2A24(v52, v53);
    SpatialTimingInformation.hash(into:)();
    memcpy(v53, v51, sizeof(v53));
    sub_1D524528C(v53);
  }

  if (*(v2 + v24[8]) != 2)
  {
    OUTLINED_FUNCTION_42_29();
  }

  sub_1D56162F8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v33, v34, MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_43_26();
  v35 = v47;
  sub_1D4F39AB0(v2 + v24[10], v47, &qword_1EC7EDEE8, &qword_1D5628A68);
  v36 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v36, v37, v48);
  if (v27)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v38 = v45;
    sub_1D4F39A1C(v35, v45, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_42_29();
    sub_1D525189C(a1);
    sub_1D4E50004(v38, &qword_1EC7EDF00, &unk_1D5628A80);
  }

  v39 = v49;
  sub_1D4F39AB0(v2 + v24[11], v49, &qword_1EC7EDEE0, &qword_1D5628A60);
  v40 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v40, v41, v50);
  if (v27)
  {
    OUTLINED_FUNCTION_45_29();
  }

  else
  {
    v42 = v46;
    sub_1D4F39A1C(v39, v46, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_42_29();
    sub_1D5251684(a1);
    sub_1D4E50004(v42, &qword_1EC7EDEF8, &qword_1D5628A78);
  }

  MEMORY[0x1DA6EC0D0](*(v2 + v24[12]));
  MEMORY[0x1DA6EC0D0](*(v2 + v24[13]));
  OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_43_26();
  return sub_1D56162F8();
}

uint64_t MusicDownloadedSongCatalogProperties.hashValue.getter()
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.hash(into:)(v1);
  return sub_1D5616328();
}

BOOL sub_1D5250D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29E8, &qword_1D564A130);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v21 = v5;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80) + 36);
  v15 = *(v11 + 48);
  sub_1D4F39AB0(a1 + v14, v13, &qword_1EC7F1548, &unk_1D5649E50);
  sub_1D4F39AB0(a2 + v14, &v13[v15], &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) == 1)
    {
      sub_1D4E50004(v13, &qword_1EC7F1548, &unk_1D5649E50);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D4F39AB0(v13, v10, &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_7:
    sub_1D4E50004(v13, &qword_1EC7F29E8, &qword_1D564A130);
    return 0;
  }

  v17 = v21;
  (*(v21 + 32))(v7, &v13[v15], v4);
  sub_1D52543B8();
  v18 = sub_1D5614D18();
  v19 = *(v17 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1D4E50004(v13, &qword_1EC7F1548, &unk_1D5649E50);
  return (v18 & 1) != 0;
}

BOOL sub_1D5251058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29F8, &qword_1D564A138);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v21 = v5;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78) + 36);
  v15 = *(v11 + 48);
  sub_1D4F39AB0(a1 + v14, v13, &qword_1EC7F1558, &unk_1D5649E60);
  sub_1D4F39AB0(a2 + v14, &v13[v15], &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) == 1)
    {
      sub_1D4E50004(v13, &qword_1EC7F1558, &unk_1D5649E60);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D4F39AB0(v13, v10, &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_7:
    sub_1D4E50004(v13, &qword_1EC7F29F8, &qword_1D564A138);
    return 0;
  }

  v17 = v21;
  (*(v21 + 32))(v7, &v13[v15], v4);
  sub_1D525446C();
  v18 = sub_1D5614D18();
  v19 = *(v17 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1D4E50004(v13, &qword_1EC7F1558, &unk_1D5649E60);
  return (v18 & 1) != 0;
}

BOOL sub_1D5251374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v36 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4();
  v35 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19_0();
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v33 = v12;
  v34 = v9;
  v22 = *(type metadata accessor for MusicDownloadedSongCatalogProperties.UpdatableProperty(0, a3, a4, v21) + 36);
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v15 + 16);
  v24(v4, a1 + v22, v13);
  v24(v4 + v23, a2 + v22, v13);
  OUTLINED_FUNCTION_10(v4);
  if (!v27)
  {
    v24(v36, v4, v13);
    OUTLINED_FUNCTION_10(v4 + v23);
    if (!v27)
    {
      (*(v34 + 32))(v33, v4 + v23, a3);
      v29 = sub_1D5614D18();
      v30 = *(v34 + 8);
      v30(v33, a3);
      v30(v36, a3);
      v31 = OUTLINED_FUNCTION_48_27();
      v32(v31);
      return (v29 & 1) != 0;
    }

    (*(v34 + 8))(v36, a3);
LABEL_10:
    (*(v35 + 8))(v4, TupleTypeMetadata2);
    return 0;
  }

  OUTLINED_FUNCTION_10(v4 + v23);
  if (!v27)
  {
    goto LABEL_10;
  }

  v25 = OUTLINED_FUNCTION_48_27();
  v26(v25);
  return 1;
}

uint64_t sub_1D5251684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D560C328();
  sub_1D5254520(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  sub_1D4F39AB0(v1 + *(v9 + 36), v8, &qword_1EC7F1558, &unk_1D5649E60);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D56162F8();
  sub_1D5254250();
  sub_1D5614CB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D525189C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D560C328();
  sub_1D5254520(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  sub_1D4F39AB0(v1 + *(v9 + 36), v8, &qword_1EC7F1548, &unk_1D5649E50);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D56162F8();
  sub_1D5254304();
  sub_1D5614CB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D5251AB4(uint64_t a1, uint64_t a2)
{
  sub_1D560C328();
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v2, v3, MEMORY[0x1E6969540]);
  sub_1D5614CB8();
  sub_1D56158D8();
  return sub_1D56158F8();
}

uint64_t sub_1D5251B44(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5251AB4(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D5251B98(uint64_t a1)
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D5251BE8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5251AB4(v4, a2);
  return sub_1D5616328();
}

unint64_t MusicDownloadedSongCatalogProperties.description.getter()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2998, &qword_1D5649E88);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v114 = type metadata accessor for FlexAnalysis(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  v118 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v117 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v112 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v113 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v109 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_3(&v108 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29A0, &qword_1D5649E90);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19_0();
  v28 = type metadata accessor for AudioAnalysis(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_9_0();
  v123 = 0xD000000000000025;
  v124 = v35;
  __dst[0] = 0x22203A6469;
  __dst[1] = 0xE500000000000000;
  v36 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v36);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_9_79();
  OUTLINED_FUNCTION_34_41();

  v37 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  sub_1D4F39AB0(v0 + v37[5], v2, &qword_1EC7EA788, &unk_1D56223A0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_57(v2, 1, v38);
  if (v39)
  {
    sub_1D4E50004(v2, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    OUTLINED_FUNCTION_22_47(&qword_1EC7EB778, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_24_48();
    sub_1D56155F8();
    OUTLINED_FUNCTION_24_0();
    (*(v40 + 8))(v2, v38);
  }

  MusicDownloadedSongCatalogProperties.audioAnalysis.getter();
  v41 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v41, v42, v28);
  if (v39)
  {
    sub_1D4E50004(v1, &qword_1EC7F29A0, &qword_1D5649E90);
  }

  else
  {
    sub_1D52537B4(v1, v32, type metadata accessor for AudioAnalysis);
    OUTLINED_FUNCTION_29_41();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v43);
    OUTLINED_FUNCTION_7_88();
    *(v44 - 256) = v1;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_22(v45);
    v46 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v46);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    v47 = OUTLINED_FUNCTION_4_85();
    v1 = *(v48 - 256);
    MEMORY[0x1DA6EAC70](v47, v1);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_27_44();

    v49 = OUTLINED_FUNCTION_39_4();
    sub_1D5253810(v49, v50);
  }

  v51 = v118;
  sub_1D4F39AB0(v0 + v37[10], v16, &qword_1EC7EDEE8, &qword_1D5628A68);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v16, 1, v52);
  if (v39)
  {
    sub_1D4E50004(v16, &qword_1EC7EDEE8, &qword_1D5628A68);
  }

  else
  {
    OUTLINED_FUNCTION_47_31();
    v53 = v109;
    v54(v109, v16, v51);
    sub_1D4E50004(v16, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_40_3();
    v55 = v110;
    v56(v110, v53, v51);
    OUTLINED_FUNCTION_14_62();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v57);
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v58, v59, MEMORY[0x1E6969570]);
    v60 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v60);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52();

    (*(v1 + 8))(v55, v51);
  }

  v61 = v115;
  if ((*(v3 + v37[6] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_14_62();
    MEMORY[0x1DA6EAC70](0x697461727564202CLL, 0xEC000000203A6E6FLL);
    sub_1D5615568();
    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52();
  }

  MusicDownloadedSongCatalogProperties.flexAnalysis.getter();
  v62 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v62, v63, v114);
  if (v39)
  {
    sub_1D4E50004(v61, &qword_1EC7F2998, &qword_1D5649E88);
  }

  else
  {
    v64 = v111;
    sub_1D52537B4(v61, v111, type metadata accessor for FlexAnalysis);
    OUTLINED_FUNCTION_29_41();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v65);
    OUTLINED_FUNCTION_7_88();
    *(v66 - 256) = v61;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v67);
    v68 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v68);

    MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
    v69 = OUTLINED_FUNCTION_4_85();
    v61 = *(v70 - 256);
    MEMORY[0x1DA6EAC70](v69, v61);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_27_44();

    sub_1D5253810(v64, type metadata accessor for FlexAnalysis);
  }

  v71 = v116;
  sub_1D4F39AB0(v3 + v37[11], v116, &qword_1EC7EDEE0, &qword_1D5628A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  v72 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v72, v73, v74);
  if (v39)
  {
    sub_1D4E50004(v71, &qword_1EC7EDEE0, &qword_1D5628A60);
  }

  else
  {
    OUTLINED_FUNCTION_47_31();
    v75 = v112;
    v76(v112, v71, v51);
    sub_1D4E50004(v71, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_40_3();
    v77 = v113;
    v78(v113, v75, v51);
    OUTLINED_FUNCTION_14_62();
    sub_1D5615B68();
    OUTLINED_FUNCTION_59_20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_80(v79);
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v80, v81, MEMORY[0x1E6969570]);
    v82 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v82);

    OUTLINED_FUNCTION_9_79();
    OUTLINED_FUNCTION_21_52();

    v83 = *(v61 + 8);
    v61 += 8;
    v83(v77, v51);
  }

  memcpy(__dst, (v3 + v37[7]), sizeof(__dst));
  if (sub_1D5012280(__dst) != 1)
  {
    v61 = 0xE000000000000000;
    OUTLINED_FUNCTION_7_88();
    *(v84 - 256) = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v85);
    v86 = __dst[20];
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v119 = 0xD000000000000022;
    v120 = v87;
    v88 = MEMORY[0x1DA6EAF70](v86, &type metadata for SpatialOffset);
    MEMORY[0x1DA6EAC70](v88);

    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](v119, v120);

    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_21_52();
  }

  OUTLINED_FUNCTION_39_32();
  v89 = *(v3 + v37[8]);
  if (v89 != 2)
  {
    v121[0] = 0;
    v121[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_5_88(v90);
    if (v89)
    {
      v91 = v2;
    }

    else
    {
      v91 = v61;
    }

    if (v89)
    {
      v92 = 0xE400000000000000;
    }

    else
    {
      v92 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v91, v92);

    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_21_52();
  }

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  v93 = *(v3 + v37[16]);
  strcpy(v121, ", isBackfill: ");
  HIBYTE(v121[1]) = -18;
  if (v93)
  {
    v94 = v2;
  }

  else
  {
    v94 = v61;
  }

  if (v93)
  {
    v95 = 0xE400000000000000;
  }

  else
  {
    v95 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v94, v95);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_21_52();

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_88(v96);
  v119 = *(v3 + v37[13]);
  v97 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v97);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_21_52();

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_88(v98);
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v99, v100, MEMORY[0x1E6969570]);
  OUTLINED_FUNCTION_39_4();
  v101 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v101);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_27_44();

  strcpy(v121, ", addedDate: ");
  HIWORD(v121[1]) = -4864;
  OUTLINED_FUNCTION_39_4();
  v102 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v102);

  OUTLINED_FUNCTION_4_85();
  OUTLINED_FUNCTION_27_44();

  OUTLINED_FUNCTION_6_83();
  sub_1D5615B68();
  OUTLINED_FUNCTION_35_40();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_49_22(v103);
  OUTLINED_FUNCTION_39_4();
  v104 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v104);

  v105 = OUTLINED_FUNCTION_4_85();
  MEMORY[0x1DA6EAC70](v105, *(v106 - 256));

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v123;
}

unint64_t MusicDownloadedSongCatalogProperties.debugDescription.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v117 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2998, &qword_1D5649E88);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v116 = v8;
  v115 = type metadata accessor for FlexAnalysis(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v112 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v108 - v14;
  sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v118 = v17;
  v119 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v113 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v114 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v110 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F29A0, &qword_1D5649E90);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - v27;
  v29 = type metadata accessor for AudioAnalysis(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v109 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_9_0();
  v131 = 0xD000000000000025;
  v132 = v35;
  v130[0] = 0x22203A646920200ALL;
  v130[1] = 0xE800000000000000;
  v36 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v36);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v130[0], v130[1]);

  v37 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  sub_1D4F39AB0(v0 + v37[5], v1, &qword_1EC7EA788, &unk_1D56223A0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_57(v1, 1, v38);
  if (v39)
  {
    sub_1D4E50004(v1, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    OUTLINED_FUNCTION_22_47(&qword_1EC7EB778, &qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_24_48();
    sub_1D56155F8();
    OUTLINED_FUNCTION_24_0();
    (*(v40 + 8))(v1, v38);
  }

  MusicDownloadedSongCatalogProperties.audioAnalysis.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  v42 = MEMORY[0x1E69E6158];
  v120 = v37;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v28, &qword_1EC7F29A0, &qword_1D5649E90);
  }

  else
  {
    v43 = v109;
    sub_1D52537B4(v28, v109, type metadata accessor for AudioAnalysis);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v130[0] = 0xD000000000000013;
    v130[1] = v44;
    v45 = AudioAnalysis.debugDescription.getter();
    OUTLINED_FUNCTION_36_36(v45, v46);
    v125 = 2105354;
    v126 = v47;
    sub_1D4F53278();
    OUTLINED_FUNCTION_31_36();
    v108 = v42;
    v109 = v48;
    OUTLINED_FUNCTION_3_31();
    sub_1D5615968();
    OUTLINED_FUNCTION_58_25();
    MEMORY[0x1DA6EAC70](v42, v37);
    v37 = v120;

    OUTLINED_FUNCTION_32_42();

    sub_1D5253810(v43, type metadata accessor for AudioAnalysis);
  }

  sub_1D4F39AB0(v0 + v37[10], v15, &qword_1EC7EDEE8, &qword_1D5628A68);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
  OUTLINED_FUNCTION_57(v15, 1, v49);
  if (v39)
  {
    sub_1D4E50004(v15, &qword_1EC7EDEE8, &qword_1D5628A68);
    v54 = v119;
  }

  else
  {
    v51 = v118;
    v50 = v119;
    v52 = v110;
    (*(v118 + 16))(v110, v15, v119);
    v53 = v15;
    v54 = v50;
    sub_1D4E50004(v53, &qword_1EC7EDF00, &unk_1D5628A80);
    OUTLINED_FUNCTION_40_3();
    v55 = v111;
    v56(v111, v52, v50);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v130[0] = 0xD000000000000022;
    v130[1] = v57;
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v58, v59, MEMORY[0x1E6969570]);
    v60 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v60);

    OUTLINED_FUNCTION_32_42();

    (*(v51 + 8))(v55, v50);
  }

  v61 = v116;
  if ((*(v2 + v37[6] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_1D5615568();
    OUTLINED_FUNCTION_32_42();
  }

  MusicDownloadedSongCatalogProperties.flexAnalysis.getter();
  v62 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v62, v63, v115);
  if (v39)
  {
    sub_1D4E50004(v61, &qword_1EC7F2998, &qword_1D5649E88);
  }

  else
  {
    v64 = v112;
    sub_1D52537B4(v61, v112, type metadata accessor for FlexAnalysis);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v130[0] = 0xD000000000000012;
    v130[1] = v65;
    v66 = FlexAnalysis.debugDescription.getter();
    OUTLINED_FUNCTION_36_36(v66, v67);
    v125 = 2105354;
    v126 = v68;
    sub_1D4F53278();
    OUTLINED_FUNCTION_31_36();
    v109 = v69;
    v108 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v70 = sub_1D5615968();
    v72 = v71;

    v73 = v70;
    v37 = v120;
    MEMORY[0x1DA6EAC70](v73, v72);

    MEMORY[0x1DA6EAC70](v130[0], v130[1]);

    sub_1D5253810(v64, type metadata accessor for FlexAnalysis);
  }

  v74 = v117;
  sub_1D4F39AB0(v2 + v37[11], v117, &qword_1EC7EDEE0, &qword_1D5628A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
  v75 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v75, v76, v77);
  if (v39)
  {
    sub_1D4E50004(v74, &qword_1EC7EDEE0, &qword_1D5628A60);
  }

  else
  {
    v78 = v118;
    v79 = v113;
    (*(v118 + 16))(v113, v74, v54);
    sub_1D4E50004(v74, &qword_1EC7EDEF8, &qword_1D5628A78);
    OUTLINED_FUNCTION_40_3();
    v80 = v114;
    v81(v114, v79, v54);
    OUTLINED_FUNCTION_15_70();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v130[0] = 0xD000000000000021;
    v130[1] = v82;
    OUTLINED_FUNCTION_0_147();
    sub_1D5254520(v83, v84, MEMORY[0x1E6969570]);
    v85 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v85);

    OUTLINED_FUNCTION_32_42();

    (*(v78 + 8))(v80, v54);
  }

  v86 = MEMORY[0x1E69E6158];
  memcpy(v130, (v2 + v37[7]), sizeof(v130));
  if (sub_1D5012280(v130) != 1)
  {
    OUTLINED_FUNCTION_55_22();

    OUTLINED_FUNCTION_9_0();
    v128 = 0xD00000000000001ELL;
    v129 = v87;
    memcpy(v127, v130, sizeof(v127));
    v125 = SpatialTimingInformation.debugDescription.getter();
    v126 = v88;
    v123 = 10;
    v124 = 0xE100000000000000;
    v121 = 2105354;
    v122 = 0xE300000000000000;
    v110 = sub_1D4F53278();
    v111 = v110;
    v108 = v86;
    v109 = v110;
    OUTLINED_FUNCTION_3_31();
    sub_1D5615968();
    OUTLINED_FUNCTION_58_25();
    MEMORY[0x1DA6EAC70](v86, v37);
    v37 = v120;

    OUTLINED_FUNCTION_34_41();
  }

  OUTLINED_FUNCTION_39_32();
  v89 = *(v2 + v37[8]);
  if (v89 != 2)
  {
    OUTLINED_FUNCTION_55_22();

    OUTLINED_FUNCTION_9_0();
    v127[0] = 0xD00000000000001ELL;
    v127[1] = v90;
    if (v89)
    {
      v91 = 2105354;
    }

    else
    {
      v91 = v86;
    }

    if (v89)
    {
      v92 = 0xE400000000000000;
    }

    else
    {
      v92 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v91, v92);

    OUTLINED_FUNCTION_34_41();
  }

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v93 = v120;
  v94 = *(v2 + v120[16]);
  v127[0] = 0xD000000000000010;
  v127[1] = v95;
  if (v94)
  {
    v96 = 2105354;
  }

  else
  {
    v96 = v86;
  }

  if (v94)
  {
    v97 = 0xE400000000000000;
  }

  else
  {
    v97 = 0xE500000000000000;
  }

  MEMORY[0x1DA6EAC70](v96, v97);

  OUTLINED_FUNCTION_34_41();

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v127[0] = 0xD000000000000019;
  v127[1] = v98;
  v128 = *(v2 + v93[13]);
  v99 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v99);

  OUTLINED_FUNCTION_34_41();

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v127[0] = 0xD000000000000020;
  v127[1] = v100;
  OUTLINED_FUNCTION_0_147();
  sub_1D5254520(v101, v102, MEMORY[0x1E6969570]);
  v103 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v103);

  MEMORY[0x1DA6EAC70](v127[0], v127[1]);

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  v127[0] = 0x6564646120200A2CLL;
  v127[1] = 0xEF203A6574614464;
  v104 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v104);

  MEMORY[0x1DA6EAC70](v127[0], v127[1]);

  OUTLINED_FUNCTION_37_27();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v127[0] = 0xD000000000000015;
  v127[1] = v105;
  v106 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v106);

  MEMORY[0x1DA6EAC70](v127[0], v127[1]);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v131;
}

uint64_t MusicDownloadedSongCatalogProperties.FulfilledProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D525376C(uint64_t a1)
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogProperties.FulfilledProperty.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52537B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D5253810(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D52538F8()
{
  result = qword_1EC7F29C0;
  if (!qword_1EC7F29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29C0);
  }

  return result;
}

uint64_t sub_1D5253974(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD55628, &type metadata for SpatialTimingInformation);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          v2 = sub_1D560C328();
          if (v10 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD59AA8, &qword_1EC7EDF00, &unk_1D5628A80);
            if (v12 > 0x3F)
            {
              return v11;
            }

            sub_1D4E6D600(319, qword_1EDD59AB0, &qword_1EC7EDEF8, &qword_1D5628A78);
            if (v13 > 0x3F)
            {
              return v11;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for MusicDownloadedSongCatalogProperties.FulfilledProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
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
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5253C20(uint64_t a1)
{
  result = sub_1D560C328();
  if (v2 <= 0x3F)
  {
    result = sub_1D56158D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5253CA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D560C328();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v12);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v11)
      {
LABEL_31:
        if (v7 >= v10)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v6);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v12, v9, *(a3 + 16));
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_1D5253EE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D560C328();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = *(*(v8 - 8) + 84);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(*(v8 - 8) + 64) + v16;
  v18 = v17 & ~v16;
  v19 = *(v12 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v18 + v20;
  v22 = 8 * (v18 + v20);
  if (a3 > v15)
  {
    if (v21 <= 3)
    {
      v23 = ((a3 - v15 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v23))
      {
        v9 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v9 = v24;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v21] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v21] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v21] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v10 >= v14)
        {
          v32 = a1;
          v33 = a2;
          v11 = v8;
        }

        else
        {
          v28 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v20 <= 3)
            {
              v29 = ~(-1 << (8 * v20));
            }

            else
            {
              v29 = -1;
            }

            if (v20)
            {
              v30 = v29 & (~v14 + a2);
              if (v20 <= 3)
              {
                v31 = v20;
              }

              else
              {
                v31 = 4;
              }

              bzero(v28, v20);
              switch(v31)
              {
                case 2:
                  *v28 = v30;
                  break;
                case 3:
                  *v28 = v30;
                  v28[2] = BYTE2(v30);
                  break;
                case 4:
                  *v28 = v30;
                  break;
                default:
                  *v28 = v30;
                  break;
              }
            }

            return;
          }

          v33 = (a2 + 1);
          v32 = v28;
          v10 = v13;
        }

        __swift_storeEnumTagSinglePayload(v32, v33, v10, v11);
        break;
    }
  }

  else
  {
    v25 = ~v15 + a2;
    if (v21 < 4)
    {
      v26 = (v25 >> v22) + 1;
      if (v21)
      {
        v27 = v25 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v21 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v25;
      v26 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v21] = v26;
        break;
      case 2:
        *&a1[v21] = v26;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v21] = v26;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D5254250()
{
  result = qword_1EC7F29C8;
  if (!qword_1EC7F29C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA4F8, &unk_1D5648890);
    sub_1D5254520(&qword_1EC7F29D0, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29C8);
  }

  return result;
}

unint64_t sub_1D5254304()
{
  result = qword_1EC7F29D8;
  if (!qword_1EC7F29D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA508, &unk_1D561C480);
    sub_1D5254520(&qword_1EC7F29E0, type metadata accessor for AudioAnalysis, &protocol conformance descriptor for AudioAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29D8);
  }

  return result;
}

unint64_t sub_1D52543B8()
{
  result = qword_1EC7F29F0;
  if (!qword_1EC7F29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA508, &unk_1D561C480);
    sub_1D5254520(qword_1EDD57AB8, type metadata accessor for AudioAnalysis, &protocol conformance descriptor for AudioAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F29F0);
  }

  return result;
}

unint64_t sub_1D525446C()
{
  result = qword_1EC7F2A00;
  if (!qword_1EC7F2A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA4F8, &unk_1D5648890);
    sub_1D5254520(qword_1EDD57C90, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A00);
  }

  return result;
}

uint64_t sub_1D5254520(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_34_41()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_42_29()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_57_26@<X0>(uint64_t a1@<X8>)
{

  return sub_1D4F39AB0(v1 + a1, v2, v3, v4);
}

uint64_t type metadata accessor for TVSeasonPropertyProvider(uint64_t a1)
{
  result = qword_1EC7F2A08;
  if (!qword_1EC7F2A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5254680(uint64_t a1)
{
  sub_1D5254AF8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD52820, &qword_1EC7EA3D0, &unk_1D56223F0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D5254AF8(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_1D5254AF8(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
          if (v13 > 0x3F)
          {
            return v12;
          }

          sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
          if (v14 > 0x3F)
          {
            return v10;
          }

          sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
          if (v16 > 0x3F)
          {
            return v15;
          }

          sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
          if (v17 > 0x3F)
          {
            return v10;
          }

          sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
          if (v18 > 0x3F)
          {
            return v10;
          }

          sub_1D4E6D600(319, &qword_1EDD52850, &qword_1EC7ECBC0, &qword_1D562BF20);
          if (v19 > 0x3F)
          {
            return v10;
          }

          sub_1D5254AF8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v20 > 0x3F)
          {
            return v10;
          }

          sub_1D4E6D600(319, &qword_1EC7F0458, &qword_1EC7EA370, &unk_1D561C080);
          if (v21 > 0x3F)
          {
            return v10;
          }

          sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
          if (v22 > 0x3F)
          {
            return v10;
          }

          sub_1D4E6D600(319, &qword_1EC7F0450, &qword_1EC7EA380, &qword_1D561C090);
          if (v23 > 0x3F)
          {
            return v10;
          }

          sub_1D5254AF8(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
          if (v24 > 0x3F)
          {
            return v10;
          }

          v10 = sub_1D560D838();
          if (v25 > 0x3F)
          {
            return v10;
          }

          v10 = sub_1D5610088();
          if (v26 > 0x3F)
          {
            return v10;
          }

          else
          {
            sub_1D4E5CF94(319);
            v2 = v27;
            if (v28 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D5254AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5254BA4()
{
  OUTLINED_FUNCTION_47();
  v145 = v0;
  v146 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v142 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v141 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v143 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v144 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v141 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v141 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v141 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v141 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5688FC0);
    v149 = v3;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v140 = 45;
    goto LABEL_139;
  }

  v40 = v39;
  v41 = qword_1EC7E8B58;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_47_32(&qword_1EC7E8B58);
  }

  *&v147 = qword_1EC87BFB0;
  v149 = v40;
  sub_1D4EC5794(&qword_1EC7F2A40, &qword_1EC7ECDB0, &qword_1D562BE00);
  if (OUTLINED_FUNCTION_13_66())
  {
    sub_1D4F1C460(v145, v38, &qword_1EC7E9CA0, &unk_1D561A0C0);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v38);
    if (!v42)
    {
LABEL_136:
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_15_1();
      v110 = *(v135 + 32);
      goto LABEL_15;
    }

    v43 = &qword_1EC7E9CA0;
    v44 = &unk_1D561A0C0;
    v45 = v38;
LABEL_8:
    sub_1D4E50004(v45, v43, v44);
    v147 = 0u;
    v148 = 0u;
LABEL_16:
    v51 = v148;
    v52 = v146;
    *v146 = v147;
    v52[1] = v51;
    goto LABEL_84;
  }

  v46 = qword_1EC7E8B60;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_46_25(&qword_1EC7E8B60);
  }

  v47 = OUTLINED_FUNCTION_1_115(qword_1EC87BFB8);

  if (v47)
  {
    type metadata accessor for TVSeasonPropertyProvider(0);
    OUTLINED_FUNCTION_82_0();
    if (v20)
    {
      v48 = &qword_1EC7EA3D0;
      v49 = &unk_1D56223F0;
LABEL_14:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);

LABEL_83:

      v97 = v146;
      *v146 = v20;
      v97[1] = 0;
      v97[2] = 0;
      v97[3] = v50;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  v53 = qword_1EC7E8B68;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_45_30(&qword_1EC7E8B68);
  }

  v54 = OUTLINED_FUNCTION_1_115(qword_1EC87BFC0);

  if (v54)
  {
    v55 = (v145 + *(type metadata accessor for TVSeasonPropertyProvider(0) + 24));
    v56 = v55[1];
    if (!v56)
    {
      v58 = 0;
      v57 = 0;
      goto LABEL_34;
    }

LABEL_21:
    v57 = *v55;

    v58 = MEMORY[0x1E69E6158];
LABEL_34:

    v67 = v146;
    *v146 = v57;
    v67[1] = v56;
    v67[2] = 0;
    v67[3] = v58;
    goto LABEL_84;
  }

  v59 = qword_1EC7E8B70;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_43_27(&qword_1EC7E8B70);
  }

  v60 = OUTLINED_FUNCTION_1_115(qword_1EC87BFC8);

  if (v60)
  {
    v61 = type metadata accessor for TVSeasonPropertyProvider(0);
    v62 = OUTLINED_FUNCTION_61_4(*(v61 + 28));
    sub_1D4F1C460(v62, v34, v63, v64);
    sub_1D560C328();
    OUTLINED_FUNCTION_1(v34);
    if (!v42)
    {
      goto LABEL_136;
    }

    v43 = &qword_1EC7EA3B8;
    v44 = &unk_1D561E370;
    v45 = v34;
    goto LABEL_8;
  }

  v65 = qword_1EC7E8B78;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_6_84(&qword_1EC7E8B78);
  }

  v66 = OUTLINED_FUNCTION_1_115(qword_1EC87BFD0);

  if (v66)
  {
    type metadata accessor for TVSeasonPropertyProvider(0);
    OUTLINED_FUNCTION_82_0();
    if (v20)
    {
      v48 = &qword_1EC7EC480;
      v49 = &unk_1D56222E0;
      goto LABEL_14;
    }

LABEL_82:
    v50 = 0;
    goto LABEL_83;
  }

  v68 = qword_1EC7E8B80;

  if (v68 != -1)
  {
    OUTLINED_FUNCTION_61_25(&qword_1EC7E8B80);
  }

  v69 = OUTLINED_FUNCTION_1_115(qword_1EC87BFD8);

  if (v69)
  {
    v70 = type metadata accessor for TVSeasonPropertyProvider(0);
    v71 = OUTLINED_FUNCTION_61_4(*(v70 + 36));
    sub_1D4F1C460(v71, v23, v72, v73);
    sub_1D5610978();
    OUTLINED_FUNCTION_1(v23);
    if (!v42)
    {
      goto LABEL_136;
    }

    v43 = &qword_1EC7EAC98;
    v44 = &unk_1D561DA80;
    v45 = v23;
    goto LABEL_8;
  }

  *&v147 = sub_1D4F849F8();
  v149 = v40;
  v74 = OUTLINED_FUNCTION_13_66();

  if (v74)
  {
    type metadata accessor for TVSeasonPropertyProvider(0);
    OUTLINED_FUNCTION_82_0();
    if (v20)
    {
      v48 = &qword_1EC7EC9E8;
      v49 = &qword_1D562B870;
      goto LABEL_14;
    }

    goto LABEL_82;
  }

  v75 = qword_1EC7E8B88;

  if (v75 != -1)
  {
    OUTLINED_FUNCTION_33_8(&qword_1EC7E8B88);
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFE0);
  OUTLINED_FUNCTION_85_13();
  if (v75)
  {
    v76 = 0;
    v77 = 0;
    v78 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 44);
LABEL_48:
    v79 = (v145 + v78);
    if ((v79[1] & 1) == 0)
    {
      v77 = *v79;
      v76 = MEMORY[0x1E69E6530];
    }

    v80 = v146;
    *v146 = v77;
    v80[1] = 0;
    v80[2] = 0;
    v80[3] = v76;
    goto LABEL_84;
  }

  v81 = qword_1EC7E8B90;

  if (v81 != -1)
  {
    OUTLINED_FUNCTION_38_0(&qword_1EC7E8B90);
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFE8);
  OUTLINED_FUNCTION_85_13();
  if (v81)
  {
    type metadata accessor for TVSeasonPropertyProvider(0);
    OUTLINED_FUNCTION_82_0();
    if (v20)
    {
      v48 = &qword_1EC7EABD8;
      v49 = &unk_1D561D780;
      goto LABEL_14;
    }

    goto LABEL_82;
  }

  v82 = qword_1EC7E8B98;

  if (v82 != -1)
  {
    OUTLINED_FUNCTION_58_26(&qword_1EC7E8B98);
  }

  OUTLINED_FUNCTION_1_115(qword_1EC87BFF0);
  OUTLINED_FUNCTION_85_13();
  if (v82)
  {
    v83 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 52);
  }

  else
  {
    v84 = qword_1EC7E8BA0;

    if (v84 != -1)
    {
      OUTLINED_FUNCTION_57_27(&qword_1EC7E8BA0);
    }

    OUTLINED_FUNCTION_1_115(qword_1EC87BFF8);
    OUTLINED_FUNCTION_85_13();
    if ((v84 & 1) == 0)
    {
      v88 = qword_1EC7E8BA8;

      if (v88 != -1)
      {
        OUTLINED_FUNCTION_56_22(&qword_1EC7E8BA8);
      }

      OUTLINED_FUNCTION_1_115(qword_1EC87C000);
      OUTLINED_FUNCTION_85_13();
      if (v88)
      {
        v89 = type metadata accessor for TVSeasonPropertyProvider(0);
        v90 = OUTLINED_FUNCTION_61_4(*(v89 + 60));
        sub_1D4F1C460(v90, v32, v91, v92);
        sub_1D560C328();
        OUTLINED_FUNCTION_1(v32);
        if (!v42)
        {
          goto LABEL_136;
        }

        v43 = &qword_1EC7EA3B8;
        v44 = &unk_1D561E370;
        v45 = v32;
        goto LABEL_8;
      }

      v93 = qword_1EC7E8BB0;

      if (v93 != -1)
      {
        OUTLINED_FUNCTION_55_23(&qword_1EC7E8BB0);
      }

      v94 = OUTLINED_FUNCTION_1_115(qword_1EC87C008);

      if ((v94 & 1) == 0)
      {
        v95 = qword_1EC7E8BB8;

        if (v95 != -1)
        {
          OUTLINED_FUNCTION_54_23(&qword_1EC7E8BB8);
        }

        v96 = OUTLINED_FUNCTION_1_115(qword_1EC87C010);

        if (v96)
        {
          type metadata accessor for TVSeasonPropertyProvider(0);
          OUTLINED_FUNCTION_82_0();
          if (v20)
          {
            v48 = &qword_1EC7ECBC0;
            v49 = &qword_1D562BF20;
            goto LABEL_14;
          }

          goto LABEL_82;
        }

        v98 = qword_1EC7E8BF0;

        if (v98 != -1)
        {
          OUTLINED_FUNCTION_10_81(&qword_1EC7E8BF0);
        }

        v99 = OUTLINED_FUNCTION_1_115(qword_1EC7EE5C0);

        if (v99)
        {
          v100 = type metadata accessor for TVSeasonPropertyProvider(0);
          v101 = OUTLINED_FUNCTION_61_4(*(v100 + 72));
          sub_1D4F1C460(v101, v20, v102, v103);
          v104 = sub_1D5610978();
          OUTLINED_FUNCTION_57(v20, 1, v104);
          if (!v42)
          {
            *(&v148 + 1) = v104;
            __swift_allocate_boxed_opaque_existential_0(&v147);
            v110 = *(*(v104 - 8) + 32);
LABEL_15:
            v110();

            goto LABEL_16;
          }

          v43 = &qword_1EC7EAC98;
          v44 = &unk_1D561DA80;
          v45 = v20;
          goto LABEL_8;
        }

        v105 = qword_1EC7E8BC0;

        if (v105 != -1)
        {
          OUTLINED_FUNCTION_53_24(&qword_1EC7E8BC0);
        }

        OUTLINED_FUNCTION_1_115(qword_1EC87C018);
        OUTLINED_FUNCTION_63();
        if (v105)
        {
          v106 = type metadata accessor for TVSeasonPropertyProvider(0);
          v107 = OUTLINED_FUNCTION_61_4(*(v106 + 76));
          sub_1D4F1C460(v107, v28, v108, v109);
          sub_1D560C328();
          OUTLINED_FUNCTION_1(v28);
          if (!v42)
          {
            goto LABEL_136;
          }

          v43 = &qword_1EC7EA3B8;
          v44 = &unk_1D561E370;
          v45 = v28;
          goto LABEL_8;
        }

        v111 = qword_1EC7E8BC8;

        if (v111 != -1)
        {
          OUTLINED_FUNCTION_52_26(&qword_1EC7E8BC8);
        }

        OUTLINED_FUNCTION_1_115(qword_1EC87C020);
        OUTLINED_FUNCTION_63();
        if (v111)
        {
          v112 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 80);
        }

        else
        {
          v113 = qword_1EC7E8BD0;

          if (v113 != -1)
          {
            OUTLINED_FUNCTION_51_26(&qword_1EC7E8BD0);
          }

          OUTLINED_FUNCTION_1_115(qword_1EC87C028);
          OUTLINED_FUNCTION_63();
          if (v113)
          {
            v112 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 84);
          }

          else
          {
            v114 = qword_1EC7E8BD8;

            if (v114 != -1)
            {
              OUTLINED_FUNCTION_50_25(&qword_1EC7E8BD8);
            }

            OUTLINED_FUNCTION_1_115(qword_1EC87C030);
            OUTLINED_FUNCTION_63();
            if (v114)
            {
              v112 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 88);
            }

            else
            {
              v115 = qword_1EC7E8BE0;

              if (v115 != -1)
              {
                OUTLINED_FUNCTION_49_23(&qword_1EC7E8BE0);
              }

              OUTLINED_FUNCTION_1_115(qword_1EC87C038);
              OUTLINED_FUNCTION_63();
              if ((v115 & 1) == 0)
              {
                v116 = qword_1EC7E8BE8;

                if (v116 != -1)
                {
                  OUTLINED_FUNCTION_34_1(&qword_1EC7E8BE8);
                }

                OUTLINED_FUNCTION_1_115(qword_1EC87C040);
                OUTLINED_FUNCTION_63();
                if (v116)
                {
                  v117 = type metadata accessor for TVSeasonPropertyProvider(0);
                  v118 = v144;
                  sub_1D4F1C460(v145 + *(v117 + 96), v144, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  sub_1D560C0A8();
                  OUTLINED_FUNCTION_1(v118);
                  if (!v42)
                  {
                    goto LABEL_136;
                  }

                  v43 = &unk_1EC7E9CA8;
                  v44 = &unk_1D561D1D0;
                  v45 = v144;
                }

                else
                {
                  v20 = qword_1EC7E8BF8;

                  if (v20 != -1)
                  {
                    goto LABEL_140;
                  }

                  while (1)
                  {
                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5C8);
                    OUTLINED_FUNCTION_63();
                    if (v20)
                    {
                      v119 = type metadata accessor for TVSeasonPropertyProvider(0);
                      v120 = OUTLINED_FUNCTION_61_4(*(v119 + 100));
                      v121 = v143;
                      sub_1D4F1C460(v120, v143, v122, v123);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
                      OUTLINED_FUNCTION_1(v121);
                      if (!v42)
                      {
                        goto LABEL_136;
                      }

                      v43 = &qword_1EC7ECBA8;
                      v44 = &unk_1D56223B0;
                      v45 = v143;
                      goto LABEL_8;
                    }

                    v124 = qword_1EC7E8C00;

                    if (v124 != -1)
                    {
                      OUTLINED_FUNCTION_8_79(&qword_1EC7E8C00);
                    }

                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5D0);
                    OUTLINED_FUNCTION_63();
                    if (v124)
                    {
                      v125 = type metadata accessor for TVSeasonPropertyProvider(0);
                      v126 = OUTLINED_FUNCTION_61_4(*(v125 + 104));
                      v127 = v141;
                      sub_1D4F1C460(v126, v141, v128, v129);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                      OUTLINED_FUNCTION_1(v127);
                      if (!v42)
                      {
                        goto LABEL_136;
                      }

                      v43 = &qword_1EC7EA788;
                      v44 = &unk_1D56223A0;
                      v45 = v141;
                      goto LABEL_8;
                    }

                    v20 = qword_1EC7E8C08;

                    if (v20 != -1)
                    {
                      OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
                    }

                    OUTLINED_FUNCTION_1_115(qword_1EC7EE5D8);
                    OUTLINED_FUNCTION_63();
                    if (v20)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_30();
                    sub_1D5615B68();
                    OUTLINED_FUNCTION_16_6();
                    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                    v149 = v3;
                    sub_1D560CDE8();
                    sub_1D5615D48();
                    OUTLINED_FUNCTION_33_0();
                    OUTLINED_FUNCTION_28();
                    v140 = 100;
LABEL_139:
                    v141 = v140;
                    OUTLINED_FUNCTION_12_3("Fatal error", v136, v137, v138, v139, "MusicKitInternal/TVSeasonPropertyProvider.swift");
                    __break(1u);
LABEL_140:
                    OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
                  }

                  v130 = type metadata accessor for TVSeasonPropertyProvider(0);
                  v131 = OUTLINED_FUNCTION_61_4(*(v130 + 108));
                  v132 = v142;
                  sub_1D4F1C460(v131, v142, v133, v134);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
                  OUTLINED_FUNCTION_1(v132);
                  if (!v42)
                  {
                    goto LABEL_136;
                  }

                  v43 = &qword_1EC7ECBA0;
                  v44 = &unk_1D56270F0;
                  v45 = v142;
                }

                goto LABEL_8;
              }

              v112 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 92);
            }
          }
        }

        v55 = (v145 + v112);
        v56 = v55[1];
        if (!v56)
        {
          v57 = 0;
          v58 = 0;
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      v77 = 0;
      v76 = 0;
      v78 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 64);
      goto LABEL_48;
    }

    v83 = *(type metadata accessor for TVSeasonPropertyProvider(0) + 56);
  }

  v85 = *(v145 + v83);

  v86 = MEMORY[0x1E69E6370];
  if (v85 == 2)
  {
    v86 = 0;
  }

  v87 = v146;
  *v146 = v85 & 1;
  v87[1] = 0;
  v87[2] = 0;
  v87[3] = v86;
LABEL_84:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5255CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB0, &qword_1D562BE00);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D5688F90);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_22;
  }

  v5 = qword_1EC7E8B78;
  swift_retain_n();
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_6_84(&qword_1EC7E8B78);
  }

  v6 = sub_1D4EC5794(&qword_1EC7F2A40, &qword_1EC7ECDB0, &qword_1D562BE00);
  OUTLINED_FUNCTION_39_0(v6, v7, v8);
  OUTLINED_FUNCTION_77_0();
  if (v2)
  {
    goto LABEL_9;
  }

  v35 = sub_1D4F849F8();
  v11 = OUTLINED_FUNCTION_39_0(v35, v9, v10);

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = qword_1EC7E8BF0;

  if (v12 != -1)
  {
    v13 = OUTLINED_FUNCTION_10_81(&qword_1EC7E8BF0);
  }

  OUTLINED_FUNCTION_39_0(v13, v14, v15);
  OUTLINED_FUNCTION_77_0();
  if (v12)
  {
LABEL_9:
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_37();
    sub_1D5259E18(v16, v17, &unk_1D564A1D8);
    OUTLINED_FUNCTION_52();
    sub_1D5612248();
  }

  else
  {
    v19 = qword_1EC7E8BF8;

    if (v19 != -1)
    {
      v20 = OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
    }

    OUTLINED_FUNCTION_39_0(v20, v21, v22);
    OUTLINED_FUNCTION_77_0();
    if ((v19 & 1) == 0)
    {
      v23 = qword_1EC7E8C00;

      if (v23 != -1)
      {
        v24 = OUTLINED_FUNCTION_8_79(&qword_1EC7E8C00);
      }

      OUTLINED_FUNCTION_39_0(v24, v25, v26);
      OUTLINED_FUNCTION_77_0();
      if ((v23 & 1) == 0)
      {
        v27 = qword_1EC7E8C08;

        if (v27 != -1)
        {
          v28 = OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
        }

        OUTLINED_FUNCTION_39_0(v28, v29, v30);
        OUTLINED_FUNCTION_82();

        if ((v4 & 1) == 0)
        {
          while (1)
          {
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
            sub_1D560CDE8();
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
LABEL_22:
            OUTLINED_FUNCTION_12_3("Fatal error", v33, v34, 0, 0xE000000000000000, "MusicKitInternal/TVSeasonPropertyProvider.swift");
            __break(1u);
          }
        }
      }
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_36_37();
    sub_1D5259E18(v31, v32, &unk_1D564A1D8);
    OUTLINED_FUNCTION_52();
    sub_1D5612238();
  }

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D52560F4()
{
  OUTLINED_FUNCTION_47();
  v80 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v76 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v77 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v74 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  v75 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v78 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v79 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA350, &unk_1D561C060);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  v33 = type metadata accessor for TVSeasonPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A30, &unk_1D564A2B8);
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000002ELL, 0x80000001D5688EF0);
    v82 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v70 = 132;
    goto LABEL_49;
  }

  v1 = v38;
  sub_1D4E628D4(v3, v81);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v71 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v71, v72, 1, v33);
    sub_1D4E50004(v32, &qword_1EC7EA350, &unk_1D561C060);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000031, 0x80000001D5688F20);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v70 = 135;
    goto LABEL_49;
  }

  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  sub_1D5259D58(v32, v37);
  v39 = qword_1EC7E8B78;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_6_84(&qword_1EC7E8B78);
  }

  v81[0] = qword_1EC87BFD0;
  v82 = v1;
  sub_1D4EC5794(&qword_1EC7F2A38, &qword_1EC7F2A30, &unk_1D564A2B8);
  sub_1D5614D18();
  OUTLINED_FUNCTION_48_14();
  if (v39)
  {

    v40 = *(v37 + v33[8]);

    sub_1D5259DBC(v37);
    v41 = v33[8];
LABEL_9:
    v43 = v80;
    if (!v40)
    {
    }

    *(v43 + v41) = v40;
    goto LABEL_46;
  }

  v81[0] = sub_1D4F84C7C();
  v82 = v1;
  v42 = sub_1D5614D18();

  if (v42)
  {

    v40 = *(v37 + v33[10]);

    sub_1D5259DBC(v37);
    v41 = v33[10];
    goto LABEL_9;
  }

  v44 = qword_1EC7E8BF0;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_10_81(&qword_1EC7E8BF0);
  }

  OUTLINED_FUNCTION_14_37(qword_1EC7EE5C0);
  OUTLINED_FUNCTION_48_14();
  if (v44)
  {

    sub_1D4F1C460(v37 + v33[18], v25, &qword_1EC7EAC98, &unk_1D561DA80);
    sub_1D5259DBC(v37);
    v45 = sub_1D5610978();
    OUTLINED_FUNCTION_1(v25);
    if (v46)
    {
      v42 = v80;
      sub_1D4F1C460(v80 + v33[18], v28, &qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_1(v25);
      if (!v46)
      {
        sub_1D4E50004(v25, &qword_1EC7EAC98, &unk_1D561DA80);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_1();
      (*(v49 + 32))(v28, v25, v45);
      OUTLINED_FUNCTION_40_35(v28);
    }

    v50 = &qword_1EC7EAC98;
    v51 = &unk_1D561DA80;
    v52 = v42 + v33[18];
    v53 = v28;
  }

  else
  {
    v47 = qword_1EC7E8BF8;

    if (v47 != -1)
    {
      OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
    }

    OUTLINED_FUNCTION_14_37(qword_1EC7EE5C8);
    OUTLINED_FUNCTION_48_14();
    if (v47)
    {

      v48 = v78;
      sub_1D4F1C460(v37 + v33[25], v78, &qword_1EC7ECBA8, &unk_1D56223B0);
      sub_1D5259DBC(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
      OUTLINED_FUNCTION_1(v48);
      if (v46)
      {
        v56 = v79;
        v42 = v80;
        sub_1D4F1C460(v80 + v33[25], v79, &qword_1EC7ECBA8, &unk_1D56223B0);
        OUTLINED_FUNCTION_1(v48);
        if (!v46)
        {
          sub_1D4E50004(v48, &qword_1EC7ECBA8, &unk_1D56223B0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_1();
        v56 = v79;
        v57 = OUTLINED_FUNCTION_32_15();
        v58(v57);
        OUTLINED_FUNCTION_40_35(v56);
      }

      v59 = v33[25];
      v50 = &qword_1EC7ECBA8;
      v51 = &unk_1D56223B0;
    }

    else
    {
      v54 = qword_1EC7E8C00;

      if (v54 != -1)
      {
        OUTLINED_FUNCTION_8_79(&qword_1EC7E8C00);
      }

      OUTLINED_FUNCTION_14_37(qword_1EC7EE5D0);
      OUTLINED_FUNCTION_48_14();
      if (v54)
      {

        v55 = v74;
        sub_1D4F1C460(v37 + v33[26], v74, &qword_1EC7EA788, &unk_1D56223A0);
        sub_1D5259DBC(v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
        OUTLINED_FUNCTION_1(v55);
        if (v46)
        {
          v42 = v80;
          v56 = v75;
          sub_1D4F1C460(v80 + v33[26], v75, &qword_1EC7EA788, &unk_1D56223A0);
          OUTLINED_FUNCTION_1(v55);
          if (!v46)
          {
            sub_1D4E50004(v55, &qword_1EC7EA788, &unk_1D56223A0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_1();
          v56 = v75;
          v62 = OUTLINED_FUNCTION_32_15();
          v63(v62);
          OUTLINED_FUNCTION_40_35(v56);
        }

        v59 = v33[26];
        v50 = &qword_1EC7EA788;
        v51 = &unk_1D56223A0;
      }

      else
      {
        v60 = qword_1EC7E8C08;

        if (v60 != -1)
        {
          OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
        }

        OUTLINED_FUNCTION_14_37(qword_1EC7EE5D8);
        OUTLINED_FUNCTION_48_14();
        if ((v60 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            OUTLINED_FUNCTION_16_6();
            MEMORY[0x1DA6EAC70](0xD000000000000025, 0x80000001D5688F60);
            v82 = v1;
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v70 = 154;
LABEL_49:
            v73 = v70;
            OUTLINED_FUNCTION_12_3("Fatal error", v66, v67, v68, v69, "MusicKitInternal/TVSeasonPropertyProvider.swift");
            __break(1u);
          }
        }

        v61 = v76;
        sub_1D4F1C460(v37 + v33[27], v76, &qword_1EC7ECBA0, &unk_1D56270F0);
        sub_1D5259DBC(v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
        OUTLINED_FUNCTION_1(v61);
        if (v46)
        {
          v42 = v80;
          v56 = v77;
          sub_1D4F1C460(v80 + v33[27], v77, &qword_1EC7ECBA0, &unk_1D56270F0);
          OUTLINED_FUNCTION_1(v61);
          if (!v46)
          {
            sub_1D4E50004(v61, &qword_1EC7ECBA0, &unk_1D56270F0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_1();
          v56 = v77;
          v64 = OUTLINED_FUNCTION_32_15();
          v65(v64);
          OUTLINED_FUNCTION_40_35(v56);
        }

        v59 = v33[27];
        v50 = &qword_1EC7ECBA0;
        v51 = &unk_1D56270F0;
      }
    }

    v52 = v42 + v59;
    v53 = v56;
  }

  sub_1D4F1C350(v53, v52, v50, v51);
LABEL_46:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5256B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D564A140;
  if (qword_1EC7E8B58 != -1)
  {
    OUTLINED_FUNCTION_47_32(&qword_1EC7E8B58);
  }

  *(v0 + 32) = qword_1EC87BFB0;
  v1 = qword_1EC7E8B60;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_46_25(&qword_1EC7E8B60);
  }

  *(v0 + 40) = qword_1EC87BFB8;
  v2 = qword_1EC7E8B68;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_45_30(&qword_1EC7E8B68);
  }

  *(v0 + 48) = qword_1EC87BFC0;
  v3 = qword_1EC7E8B70;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_43_27(&qword_1EC7E8B70);
  }

  *(v0 + 56) = qword_1EC87BFC8;
  v4 = qword_1EC7E8B78;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_6_84(&qword_1EC7E8B78);
  }

  *(v0 + 64) = qword_1EC87BFD0;
  v5 = qword_1EC7E8B80;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_61_25(&qword_1EC7E8B80);
  }

  *(v0 + 72) = qword_1EC87BFD8;

  *(v0 + 80) = sub_1D4F849F8();
  if (qword_1EC7E8B88 != -1)
  {
    OUTLINED_FUNCTION_33_8(&qword_1EC7E8B88);
  }

  *(v0 + 88) = qword_1EC87BFE0;
  v6 = qword_1EC7E8B90;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_38_0(&qword_1EC7E8B90);
  }

  *(v0 + 96) = qword_1EC87BFE8;
  v7 = qword_1EC7E8B98;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_58_26(&qword_1EC7E8B98);
  }

  *(v0 + 104) = qword_1EC87BFF0;
  v8 = qword_1EC7E8BA0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_57_27(&qword_1EC7E8BA0);
  }

  *(v0 + 112) = qword_1EC87BFF8;
  v9 = qword_1EC7E8BA8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_56_22(&qword_1EC7E8BA8);
  }

  *(v0 + 120) = qword_1EC87C000;
  v10 = qword_1EC7E8BB0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_55_23(&qword_1EC7E8BB0);
  }

  *(v0 + 128) = qword_1EC87C008;
  v11 = qword_1EC7E8BB8;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_54_23(&qword_1EC7E8BB8);
  }

  *(v0 + 136) = qword_1EC87C010;
  v12 = qword_1EC7E8BF0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_10_81(&qword_1EC7E8BF0);
  }

  *(v0 + 144) = qword_1EC7EE5C0;
  v13 = qword_1EC7E8BC0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_53_24(&qword_1EC7E8BC0);
  }

  *(v0 + 152) = qword_1EC87C018;
  v14 = qword_1EC7E8BC8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_52_26(&qword_1EC7E8BC8);
  }

  *(v0 + 160) = qword_1EC87C020;
  v15 = qword_1EC7E8BD0;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_51_26(&qword_1EC7E8BD0);
  }

  *(v0 + 168) = qword_1EC87C028;
  v16 = qword_1EC7E8BD8;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_50_25(&qword_1EC7E8BD8);
  }

  *(v0 + 176) = qword_1EC87C030;
  v17 = qword_1EC7E8BE0;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_49_23(&qword_1EC7E8BE0);
  }

  *(v0 + 184) = qword_1EC87C038;
  v18 = qword_1EC7E8BE8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_34_1(&qword_1EC7E8BE8);
  }

  *(v0 + 192) = qword_1EC87C040;
  v19 = qword_1EC7E8BF8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_9_4(&qword_1EC7E8BF8);
  }

  *(v0 + 200) = qword_1EC7EE5C8;
  v20 = qword_1EC7E8C00;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_8_79(&qword_1EC7E8C00);
  }

  *(v0 + 208) = qword_1EC7EE5D0;
  v21 = qword_1EC7E8C08;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_7_0(&qword_1EC7E8C08);
  }

  *(v0 + 216) = qword_1EC7EE5D8;
  qword_1EC87C4B8 = v0;
}

void sub_1D5256FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v363 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_4();
  v343 = v26;
  v344 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F04A0, &qword_1D5637E50);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v338 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v41);
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4();
  v333 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v47);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0498, &unk_1D5637E40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v49);
  v329 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v328 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v55);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v57);
  v356 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v353 = v58;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  v351 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v62 = OUTLINED_FUNCTION_22(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13();
  v346 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_2();
  v352 = v65;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  v348 = v67;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  v354 = v69;
  OUTLINED_FUNCTION_70_0();
  v361 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v359 = v70;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  v357 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v74 = OUTLINED_FUNCTION_22(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  v345 = v75;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v76);
  v349 = &v325 - v77;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_2();
  v358 = v79;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  v347 = v81;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v82);
  v350 = &v325 - v83;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v325 - v85;
  v87 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v89 = v88;
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v93 = v92 - v91;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v94);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v325 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v98);
  OUTLINED_FUNCTION_11();
  v100 = MEMORY[0x1EEE9AC00](v99);
  v102 = &v325 - v101;
  v103 = *(v100 + 56);
  v362 = v24;
  v104 = OUTLINED_FUNCTION_85();
  sub_1D4F1C460(v104, v105, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D4F1C460(v363, &v102[v103], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v102, 1, v87);
  if (v106)
  {
    OUTLINED_FUNCTION_57(&v102[v103], 1, v87);
    if (v106)
    {
      sub_1D4E50004(v102, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_13;
    }

LABEL_9:
    v107 = &qword_1EC7E9FB8;
    v108 = &unk_1D561B9C0;
    v109 = v102;
LABEL_10:
    sub_1D4E50004(v109, v107, v108);
    goto LABEL_11;
  }

  sub_1D4F1C460(v102, v97, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(&v102[v103], 1, v87);
  if (v106)
  {
    (*(v89 + 8))(v97, v87);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_18();
  v110(v93, &v102[v103], v87);
  OUTLINED_FUNCTION_37_28();
  sub_1D5259E18(v111, v112, MEMORY[0x1E6976F80]);
  v113 = sub_1D5614D18();
  v114 = *(v89 + 8);
  v114(v93, v87);
  v114(v97, v87);
  sub_1D4E50004(v102, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v113 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v115 = type metadata accessor for TVSeasonPropertyProvider(0);
  v116 = v115[5];
  v118 = v362;
  v117 = v363;
  v119 = *(v363 + v116);
  if (*(v362 + v116))
  {
    if (!v119)
    {
      goto LABEL_11;
    }

    sub_1D4EF828C();
    v121 = v120;

    if ((v121 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v119)
  {
    goto LABEL_11;
  }

  v122 = v115[6];
  v123 = *(v117 + v122 + 8);
  if (*(v118 + v122 + 8))
  {
    if (!v123)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v118 + v122);
    v126 = v106 && v124 == v125;
    if (!v126 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v123)
  {
    goto LABEL_11;
  }

  v127 = v115[7];
  v128 = *(v360 + 48);
  sub_1D4F1C460(v118 + v127, v86, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F1C460(v117 + v127, &v86[v128], &qword_1EC7EA3B8, &unk_1D561E370);
  v129 = v361;
  OUTLINED_FUNCTION_57(v86, 1, v361);
  if (v106)
  {
    OUTLINED_FUNCTION_57(&v86[v128], 1, v129);
    if (v106)
    {
      sub_1D4E50004(v86, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_38;
    }

LABEL_35:
    v107 = &qword_1EC7EB578;
    v108 = &unk_1D5644D10;
LABEL_36:
    v109 = v86;
    goto LABEL_10;
  }

  v130 = v358;
  sub_1D4F1C460(v86, v358, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(&v86[v128], 1, v129);
  if (v131)
  {
    (*(v359 + 8))(v130, v129);
    goto LABEL_35;
  }

  v132 = v359;
  v133 = v357;
  (*(v359 + 32))(v357, &v86[v128], v129);
  OUTLINED_FUNCTION_0_148();
  sub_1D5259E18(v134, v135, MEMORY[0x1E6969550]);
  v136 = sub_1D5614D18();
  v137 = *(v132 + 8);
  v137(v133, v129);
  v137(v130, v129);
  sub_1D4E50004(v86, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v136 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_38:
  v138 = v115[8];
  v139 = *(v118 + v138);
  v140 = *(v117 + v138);
  if (v139)
  {
    if (!v140)
    {
      goto LABEL_11;
    }

    sub_1D4F28F1C();
    OUTLINED_FUNCTION_82();

    if ((v139 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v140)
  {
    goto LABEL_11;
  }

  v141 = v115[9];
  v142 = v354;
  v143 = *(v355 + 48);
  OUTLINED_FUNCTION_39_33(v118 + v141);
  v86 = v142;
  sub_1D4F1C460(v117 + v141, v142 + v143, &qword_1EC7EAC98, &unk_1D561DA80);
  v144 = OUTLINED_FUNCTION_95_0();
  v145 = v356;
  OUTLINED_FUNCTION_57(v144, v146, v356);
  if (v106)
  {
    v147 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v147, v148, v145);
    if (v106)
    {
      sub_1D4E50004(v142, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v149 = v352;
  sub_1D4F1C460(v142, v352, &qword_1EC7EAC98, &unk_1D561DA80);
  v150 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v150, v151, v145);
  if (v152)
  {
    (*(v353 + 8))(v149, v145);
LABEL_51:
    v107 = &qword_1EC7EF648;
    v108 = &unk_1D5632470;
    goto LABEL_36;
  }

  v153 = v353;
  v154 = v351;
  (*(v353 + 32))(v351, &v86[v143], v145);
  OUTLINED_FUNCTION_3_115();
  sub_1D5259E18(v155, v156, MEMORY[0x1E6975E60]);
  LODWORD(v358) = sub_1D5614D18();
  v157 = *(v153 + 8);
  v157(v154, v145);
  v157(v149, v145);
  sub_1D4E50004(v86, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v358 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_53:
  v158 = v115[10];
  v159 = *(v118 + v158);
  v160 = *(v117 + v158);
  if (v159)
  {
    if (!v160)
    {
      goto LABEL_11;
    }

    sub_1D4F29174();
    OUTLINED_FUNCTION_82();

    if ((v159 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v160)
  {
    goto LABEL_11;
  }

  v161 = v115[11];
  v162 = *(v118 + v161 + 8);
  v163 = *(v117 + v161 + 8);
  if (v162)
  {
    if (!v163)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v164)
    {
      goto LABEL_11;
    }
  }

  v165 = v115[12];
  v166 = *(v117 + v165);
  if (*(v118 + v165))
  {
    if (!v166)
    {
      goto LABEL_11;
    }

    sub_1D4EF81E0();
    if ((v167 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v166)
  {
    goto LABEL_11;
  }

  v168 = v115[13];
  v169 = *(v118 + v168);
  v170 = *(v117 + v168);
  if (v169 == 2)
  {
    if (v170 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v170 == 2 || ((v170 ^ v169) & 1) != 0)
  {
    goto LABEL_11;
  }

  v171 = v115[14];
  v172 = *(v118 + v171);
  v173 = *(v117 + v171);
  if (v172 == 2)
  {
    v174 = v362;
    v175 = v363;
    if (v173 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v173 == 2)
    {
      goto LABEL_11;
    }

    v176 = v173 ^ v172;
    v174 = v362;
    v175 = v363;
    if (v176)
    {
      goto LABEL_11;
    }
  }

  v177 = v115[15];
  v178 = *(v360 + 48);
  v179 = v350;
  sub_1D4F1C460(v174 + v177, v350, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F1C460(v175 + v177, v179 + v178, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v179, 1, v361);
  if (v106)
  {
    OUTLINED_FUNCTION_57(v350 + v178, 1, v361);
    if (v106)
    {
      sub_1D4E50004(v350, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  sub_1D4F1C460(v350, v349, &qword_1EC7EA3B8, &unk_1D561E370);
  v180 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v180, v181, v361);
  if (v182)
  {
    (*(v359 + 8))(v349, v361);
LABEL_85:
    v107 = &qword_1EC7EB578;
    v108 = &unk_1D5644D10;
    v109 = v350;
    goto LABEL_10;
  }

  v183 = v359;
  v184 = v350;
  v179 = v357;
  v185 = v361;
  (*(v359 + 32))(v357, v350 + v178, v361);
  OUTLINED_FUNCTION_0_148();
  sub_1D5259E18(v186, v187, MEMORY[0x1E6969550]);
  v188 = v349;
  v189 = sub_1D5614D18();
  v190 = *(v183 + 8);
  v190(v179, v185);
  v190(v188, v185);
  sub_1D4E50004(v184, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v189 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_87:
  v191 = v115[16];
  v192 = *(v362 + v191 + 8);
  v193 = *(v363 + v191 + 8);
  if (v192)
  {
    if (!v193)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v194)
    {
      goto LABEL_11;
    }
  }

  v195 = v115[17];
  v196 = *(v362 + v195);
  v197 = *(v363 + v195);
  if (v196)
  {
    if (!v197)
    {
      goto LABEL_11;
    }

    sub_1D4EF84DC(v196, v197);
    OUTLINED_FUNCTION_82();

    if ((v196 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v197)
  {
    goto LABEL_11;
  }

  v198 = *(v355 + 48);
  v199 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v199);
  OUTLINED_FUNCTION_19_2();
  v200 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v200, v201, v356);
  if (v106)
  {
    OUTLINED_FUNCTION_57(v348 + v198, 1, v356);
    if (v106)
    {
      sub_1D4E50004(v348, &qword_1EC7EAC98, &unk_1D561DA80);
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v202 = v348;
  sub_1D4F1C460(v348, v346, &qword_1EC7EAC98, &unk_1D561DA80);
  v203 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v203, v204, v356);
  if (v205)
  {
    (*(v353 + 8))(v346, v356);
LABEL_104:
    v107 = &qword_1EC7EF648;
    v108 = &unk_1D5632470;
    v109 = v348;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_81();
  v179 = v348;
  v206 = v348 + v198;
  v207 = v356;
  v208(v351, v206, v356);
  OUTLINED_FUNCTION_3_115();
  sub_1D5259E18(v209, v210, MEMORY[0x1E6975E60]);
  sub_1D5614D18();
  v211 = OUTLINED_FUNCTION_51();
  v207(v211);
  v212 = OUTLINED_FUNCTION_85();
  v207(v212);
  sub_1D4E50004(v179, &qword_1EC7EAC98, &unk_1D561DA80);
  if ((v202 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_106:
  v213 = *(v360 + 48);
  v214 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v214);
  OUTLINED_FUNCTION_19_2();
  v215 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v215, v216, v361);
  if (v106)
  {
    OUTLINED_FUNCTION_57(v347 + v213, 1, v361);
    if (v106)
    {
      sub_1D4E50004(v347, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  v217 = v347;
  sub_1D4F1C460(v347, v345, &qword_1EC7EA3B8, &unk_1D561E370);
  v218 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v218, v219, v361);
  if (v220)
  {
    (*(v359 + 8))(v345, v361);
LABEL_114:
    v107 = &qword_1EC7EB578;
    v108 = &unk_1D5644D10;
    v109 = v347;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_81();
  v221 = v347;
  v222 = v347 + v213;
  v223 = v361;
  v224(v357, v222, v361);
  OUTLINED_FUNCTION_0_148();
  sub_1D5259E18(v225, v226, MEMORY[0x1E6969550]);
  v179 = v345;
  sub_1D5614D18();
  v227 = OUTLINED_FUNCTION_51();
  v223(v227);
  (v223)(v179, v223);
  sub_1D4E50004(v221, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v217 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_116:
  OUTLINED_FUNCTION_62();
  if (v230)
  {
    if (!v228)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v229);
    v233 = v106 && v231 == v232;
    if (!v233 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v228)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62();
  if (v236)
  {
    if (!v234)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v235);
    v239 = v106 && v237 == v238;
    if (!v239 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v234)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62();
  if (v242)
  {
    if (!v240)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v241);
    v245 = v106 && v243 == v244;
    if (!v245 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v240)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62();
  if (v248)
  {
    if (!v246)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v247);
    v251 = v106 && v249 == v250;
    if (!v251 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v246)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62_0();
  v252 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v252);
  OUTLINED_FUNCTION_19_2();
  v253 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v253, v254, v329);
  if (v106)
  {
    v255 = OUTLINED_FUNCTION_86_1(&v355);
    OUTLINED_FUNCTION_57(v255, v256, v329);
    if (!v106)
    {
      goto LABEL_159;
    }

    sub_1D4E50004(v327, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v257 = OUTLINED_FUNCTION_145_0(&v355);
    sub_1D4F1C460(v257, v326, v258, v259);
    v260 = OUTLINED_FUNCTION_72_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v260, v261, v329);
    if (EnumTagSinglePayload == 1)
    {
      (*(v328 + 8))(v326, v329);
LABEL_159:
      v107 = &qword_1EC7E9FB0;
      v108 = &qword_1D562C590;
      v263 = &v355;
LABEL_188:
      v109 = *(v263 - 32);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_79_5();
    v264 = OUTLINED_FUNCTION_78();
    v265(v264);
    OUTLINED_FUNCTION_38_30();
    sub_1D5259E18(v266, v267, MEMORY[0x1E6968FC8]);
    OUTLINED_FUNCTION_76();
    v268 = OUTLINED_FUNCTION_51();
    (unk_1D561D1D0)(v268);
    v269 = OUTLINED_FUNCTION_85();
    (unk_1D561D1D0)(v269);
    sub_1D4E50004(v179, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((&unk_1EC7E9CA8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_62_0();
  v270 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v270);
  OUTLINED_FUNCTION_19_2();
  v271 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v271, v272, v334);
  if (v106)
  {
    v273 = OUTLINED_FUNCTION_86_1(&v361);
    OUTLINED_FUNCTION_57(v273, v274, v334);
    if (!v106)
    {
      goto LABEL_168;
    }

    sub_1D4E50004(v332, &qword_1EC7ECBA8, &unk_1D56223B0);
  }

  else
  {
    v275 = OUTLINED_FUNCTION_145_0(&v361);
    sub_1D4F1C460(v275, v331, v276, v277);
    v278 = OUTLINED_FUNCTION_72_1();
    v280 = __swift_getEnumTagSinglePayload(v278, v279, v334);
    if (v280 == 1)
    {
      (*(v333 + 8))(v331, v334);
LABEL_168:
      v107 = &qword_1EC7F0498;
      v108 = &unk_1D5637E40;
      v263 = &v361;
      goto LABEL_188;
    }

    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_79_5();
    v281 = OUTLINED_FUNCTION_78();
    v282(v281);
    sub_1D512BA50();
    OUTLINED_FUNCTION_76();
    v283 = OUTLINED_FUNCTION_51();
    (unk_1D56223B0)(v283);
    v284 = OUTLINED_FUNCTION_85();
    (unk_1D56223B0)(v284);
    sub_1D4E50004(v179, &qword_1EC7ECBA8, &unk_1D56223B0);
    if ((&qword_1EC7ECBA8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_62_0();
  v285 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v285);
  OUTLINED_FUNCTION_19_2();
  v286 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v286, v287, v339);
  if (v106)
  {
    v288 = OUTLINED_FUNCTION_86_1(&a11);
    OUTLINED_FUNCTION_57(v288, v289, v339);
    if (!v106)
    {
      goto LABEL_177;
    }

    sub_1D4E50004(v337, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v290 = OUTLINED_FUNCTION_145_0(&a11);
    sub_1D4F1C460(v290, v336, v291, v292);
    v293 = OUTLINED_FUNCTION_72_1();
    v295 = __swift_getEnumTagSinglePayload(v293, v294, v339);
    if (v295 == 1)
    {
      (*(v338 + 8))(v336, v339);
LABEL_177:
      v107 = &qword_1EC7EB668;
      v108 = &qword_1D5637E60;
      v263 = &a11;
      goto LABEL_188;
    }

    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_79_5();
    v296 = OUTLINED_FUNCTION_78();
    v297(v296);
    sub_1D4F217AC();
    OUTLINED_FUNCTION_76();
    v298 = OUTLINED_FUNCTION_51();
    (unk_1D56223A0)(v298);
    v299 = OUTLINED_FUNCTION_85();
    (unk_1D56223A0)(v299);
    sub_1D4E50004(v179, &qword_1EC7EA788, &unk_1D56223A0);
    if ((&qword_1EC7EA788 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_62_0();
  v300 = OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_39_33(v300);
  OUTLINED_FUNCTION_19_2();
  v301 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v301, v302, v344);
  if (!v106)
  {
    v305 = OUTLINED_FUNCTION_145_0(&a17);
    sub_1D4F1C460(v305, v341, v306, v307);
    v308 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v308, v309, v344);
    if (!v310)
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_79_5();
      v311 = OUTLINED_FUNCTION_78();
      v312(v311);
      sub_1D512BBB8();
      OUTLINED_FUNCTION_76();
      v313 = OUTLINED_FUNCTION_51();
      (unk_1D56270F0)(v313);
      v314 = OUTLINED_FUNCTION_85();
      (unk_1D56270F0)(v314);
      sub_1D4E50004(v179, &qword_1EC7ECBA0, &unk_1D56270F0);
      if ((&qword_1EC7ECBA0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_190;
    }

    (*(v343 + 8))(v341, v344);
LABEL_187:
    v107 = &qword_1EC7F04A0;
    v108 = &qword_1D5637E50;
    v263 = &a17;
    goto LABEL_188;
  }

  v303 = OUTLINED_FUNCTION_86_1(&a17);
  OUTLINED_FUNCTION_57(v303, v304, v344);
  if (!v106)
  {
    goto LABEL_187;
  }

  sub_1D4E50004(v342, &qword_1EC7ECBA0, &unk_1D56270F0);
LABEL_190:
  OUTLINED_FUNCTION_30_41(v115[28]);
  sub_1D4EF6F7C();
  if ((v315 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62();
  if (!v318)
  {
    if (v316)
    {
      goto LABEL_11;
    }

    goto LABEL_202;
  }

  if (v316)
  {
    OUTLINED_FUNCTION_31_0(v317);
    v321 = v106 && v319 == v320;
    if (v321 || (sub_1D5616168() & 1) != 0)
    {
LABEL_202:
      OUTLINED_FUNCTION_30_41(v115[32]);
      sub_1D4F286E0();
      if (v322)
      {
        OUTLINED_FUNCTION_30_41(v115[33]);
        sub_1D4F286E0();
        if (v323)
        {
          OUTLINED_FUNCTION_30_41(v115[34]);
          sub_1D4F286E0();
          if (v324)
          {
            OUTLINED_FUNCTION_30_41(v115[35]);
            sub_1D4F286E0();
          }
        }
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_46();
}

void sub_1D5258A80()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_4();
  v150 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v149 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v165 = v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v148 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v147 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v163 = v15;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_4();
  v146 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v161 = v21;
  OUTLINED_FUNCTION_70_0();
  v160 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v144 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v159 = v27;
  OUTLINED_FUNCTION_70_0();
  v167 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v156 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v155 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v153 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  v151 = v35;
  OUTLINED_FUNCTION_70_0();
  v36 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v158 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v157 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v154 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  v152 = &v143 - v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v143 - v46;
  v48 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v143 - v57;
  sub_1D4F1C460(v1, &v143 - v57, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v59 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v59, v60, v48);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v62(v54, v58, v48);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_37_28();
    sub_1D5259E18(v63, v64, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v50 + 8))(v54, v48);
  }

  v65 = type metadata accessor for TVSeasonPropertyProvider(0);
  v66 = *(v1 + v65[5]);
  v67 = v157;
  v68 = v151;
  if (v66)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F07EA0(v3, v66);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v65[6] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v69 = v158;
  v70 = v167;
  sub_1D4F1C460(v1 + v65[7], v47, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v47, 1, v36);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v71 = OUTLINED_FUNCTION_74_17();
    v72(v71, v47, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_148();
    sub_1D5259E18(v73, v74, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v75 = OUTLINED_FUNCTION_89_13();
    v76(v75);
  }

  if (*(v1 + v65[8]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F1C460(v1 + v65[9], v68, &qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_57(v68, 1, v70);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v78 = v155;
    v77 = v156;
    OUTLINED_FUNCTION_11_18();
    v79(v78);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_115();
    sub_1D5259E18(v80, v81, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v77 + 8))(v78, v70);
  }

  if (*(v1 + v65[10]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v82 = v1 + v65[11];
  if (*(v82 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v83 = *v82;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v83);
  }

  if (*(v1 + v65[12]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v65[13]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v65[14]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v84 = v152;
  sub_1D4F1C460(v1 + v65[15], v152, &qword_1EC7EA3B8, &unk_1D561E370);
  v85 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v85, v86, v36);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v87 = OUTLINED_FUNCTION_74_17();
    v88(v87, v84, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_148();
    sub_1D5259E18(v89, v90, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v91 = OUTLINED_FUNCTION_89_13();
    v92(v91);
  }

  v93 = v1 + v65[16];
  if (*(v93 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v94 = *v93;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v94);
  }

  if (*(v1 + v65[17]))
  {
    OUTLINED_FUNCTION_27();
    v95 = OUTLINED_FUNCTION_24();
    sub_1D4F07E0C(v95, v96);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v97 = v153;
  sub_1D4F1C460(v1 + v65[18], v153, &qword_1EC7EAC98, &unk_1D561DA80);
  v98 = OUTLINED_FUNCTION_35_1();
  v99 = v167;
  OUTLINED_FUNCTION_57(v98, v100, v167);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v102 = v155;
    v101 = v156;
    OUTLINED_FUNCTION_11_18();
    v103(v102, v97, v99);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_115();
    sub_1D5259E18(v104, v105, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v101 + 8))(v102, v99);
  }

  v106 = v160;
  v107 = v154;
  sub_1D4F1C460(v1 + v65[19], v154, &qword_1EC7EA3B8, &unk_1D561E370);
  v108 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v108, v109, v36);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v110 = OUTLINED_FUNCTION_74_17();
    v111(v110, v107, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_148();
    sub_1D5259E18(v112, v113, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v69 + 8))(v67, v36);
  }

  v114 = v162;
  OUTLINED_FUNCTION_33_5();
  if (v99)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v99)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v99)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v99)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v115 = v166;
  v116 = v164;
  v117 = v159;
  sub_1D4F1C460(v1 + v65[24], v159, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v118 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v118, v119, v106);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v120 = v144;
    v121 = v143;
    (*(v144 + 32))(v143, v117, v106);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_38_30();
    sub_1D5259E18(v122, v123, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v120 + 8))(v121, v106);
  }

  v124 = v161;
  sub_1D4F1C460(v1 + v65[25], v161, &qword_1EC7ECBA8, &unk_1D56223B0);
  v125 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v125, v126, v114);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v127 = v146;
    v128 = v145;
    (*(v146 + 32))(v145, v124, v114);
    OUTLINED_FUNCTION_27();
    sub_1D512BF3C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v127 + 8))(v128, v114);
  }

  v129 = v163;
  sub_1D4F1C460(v1 + v65[26], v163, &qword_1EC7EA788, &unk_1D56223A0);
  v130 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v130, v131, v116);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v133 = v147;
    v132 = v148;
    (*(v148 + 32))(v147, v129, v116);
    OUTLINED_FUNCTION_27();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v132 + 8))(v133, v116);
  }

  v134 = v165;
  sub_1D4F1C460(v1 + v65[27], v165, &qword_1EC7ECBA0, &unk_1D56270F0);
  v135 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v135, v136, v115);
  if (v61)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v138 = v149;
    v137 = v150;
    OUTLINED_FUNCTION_11_18();
    v139(v138, v134, v115);
    OUTLINED_FUNCTION_27();
    sub_1D512BDD4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v137 + 8))(v138, v115);
  }

  v140 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v140, v141);
  sub_1D560D838();
  sub_1D5259E18(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v142 = sub_1D5610088();
  sub_1D5259E18(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  OUTLINED_FUNCTION_33_5();
  if (v142)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D525993C()
{
  sub_1D56162D8();
  sub_1D5258A80();
  return sub_1D5616328();
}

void (*sub_1D5259984(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D5254BA4();
  return sub_1D52599F0;
}

void sub_1D52599F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D5255CF4(v2 + 32, v3);
    v4 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v4, v5, &qword_1D561C420);
  }

  else
  {

    sub_1D5255CF4(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D5259AAC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5258A80();
  return sub_1D5616328();
}

uint64_t sub_1D5259B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5259E18(&qword_1EC7F2A28, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A1D8);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D5259BC4(uint64_t a1)
{
  v2 = sub_1D5259E18(&qword_1EC7F2A28, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A1D8);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D5259C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5259E18(&qword_1EC7F2A18, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A1B0);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5259CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5259E18(&qword_1EC7F2A20, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A170);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D5259D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVSeasonPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5259DBC(uint64_t a1)
{
  v2 = type metadata accessor for TVSeasonPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5259E18(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_46_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_61_25(uint64_t a1)
{

  return swift_once();
}

uint64_t type metadata accessor for CloudVideoCredit(uint64_t a1)
{
  result = qword_1EDD56C58;
  if (!qword_1EDD56C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5259FF8(uint64_t a1)
{
  v126 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v138 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v125 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v100 - v8;
  v117 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v113 = v13 - v12;
  v14 = type metadata accessor for CloudVideoCredit(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v116 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A68, &unk_1D564A480);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v136 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - v23;
  v135 = type metadata accessor for VideoCredit(0);
  OUTLINED_FUNCTION_4();
  v114 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v130 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB160, &qword_1D561DEE0);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v100 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2268, &qword_1D5660330);
  sub_1D525BE38();
  v107 = sub_1D5614BD8();
  v34 = a1 + 64;
  OUTLINED_FUNCTION_15_0();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v129 = v31 + 16;
  v112 = (v10 + 32);
  v111 = (v10 + 16);
  v110 = (v10 + 8);
  v100 = v31;
  v128 = (v31 + 8);
  v123 = *MEMORY[0x1E69763E0];
  v121 = (v138 + 16);
  v122 = (v138 + 104);
  v120 = (v138 + 8);
  v104 = v40;
  v41 = v29;

  v42 = 0;
  v119 = 0;
  v124 = v29;
  v102 = v34;
  v101 = v39;
  v115 = v24;
  if (v37)
  {
    while (1)
    {
      v43 = v134;
LABEL_8:
      v106 = v37;
      v105 = v42;
      v45 = __clz(__rbit64(v37)) | (v42 << 6);
      v46 = *(v104 + 56);
      v47 = (*(v104 + 48) + 16 * v45);
      v48 = v47[1];
      v109 = *v47;
      v49 = *(*(v46 + 8 * v45) + 16);
      v108 = v48;
      if (v49)
      {
        break;
      }

      v137 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v86 = v107;
      LODWORD(v138) = swift_isUniquelyReferenced_nonNull_native();
      v139 = v86;
      v87 = sub_1D4F15A78();
      if (__OFADD__(*(v86 + 16), (v88 & 1) == 0))
      {
        goto LABEL_40;
      }

      v89 = v87;
      v90 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A78, &qword_1D564A490);
      if (sub_1D5615D78())
      {
        v91 = v108;
        v92 = sub_1D4F15A78();
        if ((v90 & 1) != (v93 & 1))
        {
          goto LABEL_42;
        }

        v89 = v92;
      }

      else
      {
        v91 = v108;
      }

      v94 = v139;
      v107 = v139;
      if (v90)
      {
        *(v139[7] + 8 * v89) = v137;
      }

      else
      {
        v139[(v89 >> 6) + 8] |= 1 << v89;
        v95 = (v94[6] + 16 * v89);
        *v95 = v109;
        v95[1] = v91;
        *(v94[7] + 8 * v89) = v137;
        v96 = v94[2];
        v97 = __OFADD__(v96, 1);
        v98 = v96 + 1;
        if (v97)
        {
          goto LABEL_41;
        }

        v94[2] = v98;
      }

      v37 = (v106 - 1) & v106;
      v34 = v102;
      v39 = v101;
      v42 = v105;
      if (!v37)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_6_4();
    v52 = v51 + v50;
    v54 = *(v53 + 72);
    v132 = *(v53 + 16);
    v133 = v54;
    v55 = v51;

    v103 = v55;

    v137 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v138 = v49;
      v132(v43, v52, v41);
      v56 = v131;
      sub_1D5610708();
      v57 = *v56;
      v58 = v56[1];

      OUTLINED_FUNCTION_4_86();
      sub_1D525BDE0(v56, v59);
      if (v58)
      {
        v127 = v57;
        v60 = v116;
        sub_1D5610708();
        v61 = v118;
        sub_1D50D019C(v60 + *(v14 + 20), v118);
        OUTLINED_FUNCTION_4_86();
        sub_1D525BDE0(v60, v62);
        v63 = v117;
        if (__swift_getEnumTagSinglePayload(v61, 1, v117) != 1)
        {
          v70 = v14;
          v71 = v113;
          (*v112)(v113, v61, v63);
          v73 = v135;
          v72 = v136;
          (*v111)(v136 + *(v135 + 20), v71, v63);
          v74 = v63;
          v75 = sub_1D5610718();
          v76 = v71;
          v14 = v70;
          (*v110)(v76, v74);
          (*v128)(v43, v41);
          v69 = 0;
          *v72 = v127;
          v72[1] = v58;
          *(v72 + *(v73 + 24)) = v75;
          v24 = v115;
          goto LABEL_16;
        }

        sub_1D4E50004(v61, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v64 = v125;
        *v125 = 7107189;
        v65 = 0xE300000000000000;
        v24 = v115;
      }

      else
      {
        v64 = v125;
        *v125 = 1701667182;
        v65 = 0xE400000000000000;
      }

      v64[1] = v65;
      v66 = v126;
      (*v122)(v64, v123, v126);
      sub_1D525BE8C(&qword_1EC7EE070, MEMORY[0x1E69763F0], MEMORY[0x1E69763F8]);
      v67 = swift_allocError();
      (*v121)(v68, v64, v66);
      swift_willThrow();
      (*v120)(v64, v66);
      v43 = v134;
      v41 = v124;
      (*v128)(v134, v124);

      v119 = 0;
      v69 = 1;
LABEL_16:
      v77 = v136;
      __swift_storeEnumTagSinglePayload(v136, v69, 1, v135);
      sub_1D525BED4(v77, v24, &qword_1EC7F2A68, &unk_1D564A480);
      OUTLINED_FUNCTION_10(v24);
      if (v78)
      {
        sub_1D4E50004(v24, &qword_1EC7F2A68, &unk_1D564A480);
      }

      else
      {
        sub_1D525BF34(v24, v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D4EFFB5C();
          v137 = v84;
        }

        v80 = *(v137 + 16);
        if (v80 >= *(v137 + 24) >> 1)
        {
          sub_1D4EFFB5C();
          v137 = v85;
        }

        *(v137 + 16) = v80 + 1;
        OUTLINED_FUNCTION_6_4();
        sub_1D525BF34(v130, v82 + v81 + *(v83 + 72) * v80);
        v43 = v134;
      }

      v52 += v133;
      v49 = v138 - 1;
      if (v138 == 1)
      {

        goto LABEL_27;
      }
    }
  }

LABEL_3:
  v43 = v134;
  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v39)
    {

      return v107;
    }

    v37 = *(v34 + 8 * v44);
    ++v42;
    if (v37)
    {
      v42 = v44;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

void *sub_1D525AA6C(uint64_t a1)
{
  v80 = type metadata accessor for CloudVideoCredit(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v75 = (v4 - v3);
  v74 = type metadata accessor for VideoCredit(0);
  OUTLINED_FUNCTION_4();
  v62 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v73 = (v8 - v7);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB160, &qword_1D561DEE0);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED060, &qword_1D5623EC0);
  v14 = sub_1D5614BD8();
  v15 = a1 + 64;
  OUTLINED_FUNCTION_15_0();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v70 = v10 + 32;
  v71 = v10;

  v21 = 0;
  v63 = a1;
  v61 = a1 + 64;
  v60 = v20;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_6:
      v23 = __clz(__rbit64(v18)) | (v22 << 6);
      v24 = *(a1 + 56);
      v25 = (*(a1 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v68 = v27;
      v69 = v26;
      v28 = *(v24 + 8 * v23);
      v29 = *(v28 + 16);
      if (v29)
      {
        v65 = v14;
        v66 = v22;
        v67 = v18;
        v81 = MEMORY[0x1E69E7CC0];

        sub_1D4F03FDC(0, v29, 0);
        v30 = v81;
        OUTLINED_FUNCTION_6_4();
        v64 = v28;
        v32 = v28 + v31;
        v76 = *(v33 + 72);
        do
        {
          v78 = type metadata accessor for VideoCredit;
          v79 = v29;
          v34 = v73;
          sub_1D525BD80(v32, v73, type metadata accessor for VideoCredit);
          v35 = v34[1];
          v77 = *v34;
          v36 = *(v80 + 20);
          v37 = v13;
          v38 = *(v74 + 20);
          v39 = sub_1D560C0A8();
          OUTLINED_FUNCTION_14();
          v41 = v75;
          v42 = v34 + v38;
          v13 = v37;
          (*(v40 + 16))(v75 + v36, v42, v39);
          __swift_storeEnumTagSinglePayload(v41 + v36, 0, 1, v39);
          *v41 = v77;
          v41[1] = v35;

          sub_1D56106F8();
          sub_1D525BDE0(v34, v78);
          v81 = v30;
          v44 = v30[2];
          v43 = v30[3];
          if (v44 >= v43 >> 1)
          {
            sub_1D4F03FDC(v43 > 1, v44 + 1, 1);
            v30 = v81;
          }

          v30[2] = v44 + 1;
          OUTLINED_FUNCTION_6_4();
          (*(v46 + 32))(v30 + v45 + *(v46 + 72) * v44, v37);
          v32 += v76;
          v29 = v79 - 1;
        }

        while (v79 != 1);
        v79 = v30;

        v15 = v61;
        v20 = v60;
        v22 = v66;
        v18 = v67;
        v14 = v65;
        v27 = v68;
      }

      else
      {

        v79 = MEMORY[0x1E69E7CC0];
      }

      swift_isUniquelyReferenced_nonNull_native();
      v81 = v14;
      v47 = sub_1D4E4EFA0(v69, v27);
      if (__OFADD__(v14[2], (v48 & 1) == 0))
      {
        break;
      }

      v49 = v47;
      v50 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A60, &qword_1D564A478);
      if (sub_1D5615D78())
      {
        v51 = v68;
        v52 = sub_1D4E4EFA0(v69, v68);
        if ((v50 & 1) != (v53 & 1))
        {
          goto LABEL_28;
        }

        v49 = v52;
      }

      else
      {
        v51 = v68;
      }

      v18 &= v18 - 1;
      if (v50)
      {

        v14 = v81;
        *(v81[7] + 8 * v49) = v79;
      }

      else
      {
        v14 = v81;
        v81[(v49 >> 6) + 8] |= 1 << v49;
        v54 = (v14[6] + 16 * v49);
        *v54 = v69;
        v54[1] = v51;
        *(v14[7] + 8 * v49) = v79;
        v55 = v14[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_27;
        }

        v14[2] = v57;
      }

      v21 = v22;
      a1 = v63;
      if (!v18)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return v14;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

BOOL sub_1D525AFBC(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *a1 == *a2 && v19 == v20;
    if (!v21 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(type metadata accessor for CloudVideoCredit(0) + 20);
  v23 = *(v15 + 48);
  sub_1D50D019C(a1 + v22, v18);
  sub_1D50D019C(a2 + v22, &v18[v23]);
  OUTLINED_FUNCTION_10(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_10(&v18[v23]);
    if (v21)
    {
      sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_18;
  }

  sub_1D50D019C(v18, v14);
  OUTLINED_FUNCTION_10(&v18[v23]);
  if (v24)
  {
    (*(v6 + 8))(v14, v4);
LABEL_18:
    sub_1D4E50004(v18, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  (*(v6 + 32))(v10, &v18[v23], v4);
  OUTLINED_FUNCTION_0_149();
  sub_1D525BE8C(v26, v27, MEMORY[0x1E6968FC8]);
  v28 = sub_1D5614D18();
  v29 = *(v6 + 8);
  v29(v10, v4);
  v29(v14, v4);
  sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v28 & 1) != 0;
}

uint64_t sub_1D525B280(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A58, &unk_1D564A468);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D525BD2C();
  sub_1D56163D8();
  sub_1D5616028();
  if (!v1)
  {
    type metadata accessor for CloudVideoCredit(0);
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_149();
    sub_1D525BE8C(v8, v9, MEMORY[0x1E6968FB8]);
    sub_1D5616068();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1D525B410(uint64_t a1)
{
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  if (*(v1 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v12 = type metadata accessor for CloudVideoCredit(0);
  sub_1D50D019C(v1 + *(v12 + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_1D56162F8();
  }

  v14 = OUTLINED_FUNCTION_6_2();
  v15(v14);
  sub_1D56162F8();
  OUTLINED_FUNCTION_0_149();
  sub_1D525BE8C(v16, v17, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_1D525B5C4()
{
  v2 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  sub_1D56162D8();
  if (*(v0 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v11 = type metadata accessor for CloudVideoCredit(0);
  sub_1D50D019C(v0 + *(v11 + 20), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_2();
    v13(v12);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_149();
    sub_1D525BE8C(v14, v15, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D525B794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2A48, &qword_1D564A460);
  OUTLINED_FUNCTION_4();
  v27 = v9;
  v28 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for CloudVideoCredit(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D525BD2C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v13;
  v18 = v27;
  v30 = 0;
  v19 = v17;
  *v17 = sub_1D5615F38();
  v17[1] = v20;
  sub_1D560C0A8();
  v29 = 1;
  OUTLINED_FUNCTION_0_149();
  sub_1D525BE8C(v21, v22, MEMORY[0x1E6968FD0]);
  v23 = v28;
  sub_1D5615F78();
  (*(v18 + 8))(v12, v23);
  sub_1D525BED4(v7, v19 + *(v25 + 20), &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D525BD80(v19, v26, type metadata accessor for CloudVideoCredit);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D525BDE0(v19, type metadata accessor for CloudVideoCredit);
}

uint64_t sub_1D525BA5C(uint64_t a1)
{
  v2 = sub_1D525BD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D525BA98(uint64_t a1)
{
  v2 = sub_1D525BD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D525BB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  if (*(v2 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  sub_1D50D019C(v2 + *(a2 + 20), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D56162F8();
    sub_1D525BE8C(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D5616328();
}

unint64_t sub_1D525BD2C()
{
  result = qword_1EC7F2A50;
  if (!qword_1EC7F2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A50);
  }

  return result;
}

uint64_t sub_1D525BD80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D525BDE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D525BE38()
{
  result = qword_1EC7F2A70;
  if (!qword_1EC7F2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A70);
  }

  return result;
}

uint64_t sub_1D525BE8C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D525BED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D525BF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoCredit(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudVideoCredit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D525C078()
{
  result = qword_1EC7F2A80;
  if (!qword_1EC7F2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A80);
  }

  return result;
}

unint64_t sub_1D525C0D0()
{
  result = qword_1EC7F2A88;
  if (!qword_1EC7F2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A88);
  }

  return result;
}

unint64_t sub_1D525C128()
{
  result = qword_1EC7F2A90;
  if (!qword_1EC7F2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F2A90);
  }

  return result;
}

unint64_t sub_1D525C17C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v20[2] = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v11)
    {

      return v21;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    sub_1D526D7D8();
    v13 = v22(v10);
    if (v3)
    {
      sub_1D526D3A4(v10, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      v19 = v21;

      return v19;
    }

    if (v13)
    {
      sub_1D526D94C();
      v14 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F04774(0, *(v14 + 16) + 1, 1);
        v14 = v24;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v21 = v17 + 1;
        v20[1] = v17;
        sub_1D4F04774(v16 > 1, v17 + 1, 1);
        v18 = v21;
        v14 = v24;
      }

      ++v11;
      *(v14 + 16) = v18;
      v21 = v14;
      result = sub_1D526D94C();
    }

    else
    {
      result = sub_1D526D3A4(v10, type metadata accessor for InternalMusicPlayer.Queue.Entry);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D525C410(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D525C454()
{
  OUTLINED_FUNCTION_69_0();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

void sub_1D525C4DC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  for (i = v6; (i ^ v1) >= 0x4000; i = sub_1D5615908())
  {
    OUTLINED_FUNCTION_123_7();
    if (sub_1D5615928() == v5 && v8 == v3)
    {

      break;
    }

    v10 = sub_1D5616168();

    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_123_7();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D525C5A8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; i >> 14 != v7; i = sub_1D5614E48())
  {
    OUTLINED_FUNCTION_128();
    if (sub_1D5614F58() == v4 && v9 == v2)
    {

      break;
    }

    v11 = sub_1D5616168();

    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_128();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D525C678()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_69_0();
  v2 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v3 = OUTLINED_FUNCTION_69(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v4 = 0;
  v5 = *(v0 + 16);
  while (v5 != v4)
  {
    OUTLINED_FUNCTION_43_3();
    sub_1D526D7D8();
    v6 = sub_1D560C348();
    sub_1D526D3A4(v1, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
    if (v6)
    {
      break;
    }

    ++v4;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D525C7E4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v19 = v7(0);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *v6;
    v14 = *(v6 + 1);
    v15 = v6;
    v16 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v17 = *(v8 + 72);
    while (1)
    {
      sub_1D526D7D8();
      v18 = *v10 == v13 && *(v10 + 1) == v14;
      if (v18 || (OUTLINED_FUNCTION_111_10(), (sub_1D5616168() & 1) != 0))
      {
        if (v20(&v10[*(v19 + 20)], &v15[*(v19 + 20)]))
        {
          break;
        }
      }

      sub_1D526D3A4(v10, v1);
      ++v12;
      v16 += v17;
      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

    sub_1D526D3A4(v10, v1);
  }

LABEL_12:
  OUTLINED_FUNCTION_46();
}

void sub_1D525C958()
{
  OUTLINED_FUNCTION_191();
  v0 = 0;
  v2 = *(v1 + 16);
  while (v2 != v0)
  {
    sub_1D5613838();
    OUTLINED_FUNCTION_120_8();
    sub_1D4E64524(&unk_1EC7F2BF0, MEMORY[0x1E6976BE8], MEMORY[0x1E6976C00]);
    OUTLINED_FUNCTION_93();
    if (sub_1D5614D18())
    {
      break;
    }

    ++v0;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D525CA60(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B455C(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1D4F0B2D4((v3 + 16 * a1 + 48), v7 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v8;
    *v1 = v3;
    OUTLINED_FUNCTION_46_1();
  }
}

void sub_1D525CB8C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = v6(v9);
  }

  v10 = *(v9 + 16);
  if (v10 <= v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_69(v11);
    v14 = *(v13 + 72);
    v15 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v14 * v8;
    sub_1D526D94C();
    v2(v15 + v14, v10 - 1 - v8, v15);
    *(v9 + 16) = v10 - 1;
    *v0 = v9;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D525CC8C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B4634(v3, v4, v5, v6);
    v3 = v9;
  }

  v7 = *(v3 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1D4EA729C((v3 + 16 * a1 + 48), v7 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v8;
    *v1 = v3;
  }
}

void sub_1D525CD18()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B464C(v5, v6, v7, v8);
    v5 = v13;
  }

  v9 = *(v5 + 16);
  if (v9 <= v2)
  {
    __break(1u);
  }

  else
  {
    sub_1D5613838();
    OUTLINED_FUNCTION_14();
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * v2;
    (*(v10 + 32))(v4, v12);
    sub_1D4F037CC(v12 + v11, v9 - 1 - v2, v12);
    *(v5 + 16) = v9 - 1;
    *v0 = v5;
    OUTLINED_FUNCTION_190();
  }
}

void InternalMusicPlayer.Queue.init<A, B>(for:startingAt:playbackSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v117 = v24;
  v116 = v25;
  v27 = v26;
  v29 = v28;
  v119 = v28;
  v31 = v30;
  v115 = v32;
  v120 = v33;
  v34 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v36 - v35);
  v114 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v39 - v38);
  v108 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v118 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v43);
  OUTLINED_FUNCTION_1_0();
  v113 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v47 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v51);
  v52 = MEMORY[0x1E69E7CC0];
  v109 = *v31;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v53 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry;
  v54 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v110 = v53;
  v55 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  v111 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v52;
  v58 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v23;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 4) = 0;
  v59 = v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed;
  *(v59 + 32) = 0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v60 = v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0;
  type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v106 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource) = 2;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = 2;
  v65 = (v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *v65 = 0u;
  v65[1] = 0u;
  v65[2] = 0u;
  OUTLINED_FUNCTION_91_14();
  v66 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v70);
  v124[0] = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v71, v72, &unk_1D564F050);
  sub_1D5610A88();
  v122[2] = v119;
  v122[3] = v27;
  v122[4] = v116;
  v122[5] = v117;
  v74 = sub_1D4FD9450(sub_1D526CDC4, v122, v119, v54, MEMORY[0x1E69E73E0], v116, MEMORY[0x1E69E7410], v73);
  OUTLINED_FUNCTION_21_42(v23 + 16, &v125);
  *(v23 + 16) = v74;

  OUTLINED_FUNCTION_169_0(&a18);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v54);
  v78 = *(v118 + 16);
  v78(v107, v115, v108);
  OUTLINED_FUNCTION_23_1(v107);
  if (v79)
  {
    v80 = OUTLINED_FUNCTION_164_4();
    v81(v80);
  }

  else
  {
    OUTLINED_FUNCTION_150();
    (*(v82 + 32))(v104, v107, v27);
    v83 = OUTLINED_FUNCTION_171_3();
    (*(v118 + 16))(v83, v104, v27);
    sub_1D4E628D4(v124, v123);
    v84 = (v105 + *(v54 + 20));
    sub_1D51038C0(v123, v84);
    (*(v118 + 8))(v104, v27);
    sub_1D4E50004(v121, &qword_1EC7F2AA8, &unk_1D564A5C0);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v85 = *v84;
    v86 = v84[1];
    *v105 = v85;
    v105[1] = v86;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v54);
    sub_1D4F0AB3C();
  }

  OUTLINED_FUNCTION_54_0(v23 + v110, v124);
  sub_1D526CE34();
  swift_endAccess();
  *(v23 + v106) = v109;
  (*(v114 + 16))(v112, v120, v119);
  v90 = sub_1D5615318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  v91 = sub_1D5615D38();

  *(v23 + v111) = v91;

  v92 = OUTLINED_FUNCTION_169_0(&a9);
  v78(v92, v115, v108);
  OUTLINED_FUNCTION_23_1(v90);
  if (v79)
  {
    OUTLINED_FUNCTION_150();
    v93 = OUTLINED_FUNCTION_125_9();
    v94(v93, v108);
    memset(v124, 0, sizeof(v124));
  }

  else
  {
    v95 = OUTLINED_FUNCTION_171_3();
    (*(v113 + 32))(v95, v90, v27);
  }

  v96 = OUTLINED_FUNCTION_169_0(&v126);
  OUTLINED_FUNCTION_54_0(v96, v97);
  sub_1D526DFE4();
  swift_endAccess();
  *(v23 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  v102 = OUTLINED_FUNCTION_164_4();
  v103(v102);
  (*(v114 + 8))(v120, v119);
  sub_1D4E50004(v121, &qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

double sub_1D525D8B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, int **a4@<X8>)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_1D4E628D4(v12, v11);
  v8 = (a4 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry(0) + 20));
  sub_1D51038C0(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = v8[1];
  *a4 = *v8;
  a4[1] = v9;

  return result;
}

uint64_t sub_1D525D978()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_68_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D5610A98();
  v4 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);
  v5 = _s5QueueC3KeyVMa(0);
  OUTLINED_FUNCTION_6_85();
  sub_1D526D7D8();
  *v1 = v4;
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);

  sub_1D52D6DE8(v1);
}

uint64_t InternalMusicPlayer.Queue.__allocating_init<A>(container:startingAt:playbackSource:)()
{
  OUTLINED_FUNCTION_126_4();
  v0 = OUTLINED_FUNCTION_110_10();
  OUTLINED_FUNCTION_123_7();
  InternalMusicPlayer.Queue.init<A>(container:startingAt:playbackSource:)();
  return v0;
}

void InternalMusicPlayer.Queue.init<A>(container:startingAt:playbackSource:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v74 = v8;
  v9 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AA8, &unk_1D564A5C0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = MEMORY[0x1E69E7CC0];
  v73 = *v7;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry;
  v18 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v71 = v17;
  v19 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  v72 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v16;
  v22.n128_f64[0] = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest);
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_56_23(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, v22);
  v24 = v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem;
  *v24 = v25;
  *(v24 + 16) = v25;
  *(v24 + 32) = 0;
  type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v70 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource) = 2;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = 2;
  *&v30 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v31 + 32) = v30;
  OUTLINED_FUNCTION_91_14();
  v32 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_activeMonitoringPublisher;
  v37 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v37);
  v79[0] = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v38, v39, &unk_1D564F050);
  sub_1D5610A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AE0, &unk_1D561DBC0);
  OUTLINED_FUNCTION_120_8();
  v41 = OUTLINED_FUNCTION_104_14(v40);
  *(v41 + 16) = xmmword_1D561C050;
  v42 = (v41 + v36);
  v43 = *(v3 + 8);
  v79[3] = v5;
  v79[4] = v43;
  v68 = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79);
  v45 = *(v5 - 8);
  v67 = *(v45 + 16);
  v67(boxed_opaque_existential_0, v74, v5);
  sub_1D4E628D4(v79, &v77);
  v46 = (v42 + *(v18 + 20));
  sub_1D51038C0(&v77, v46);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v47 = *v46;
  v48 = v46[1];
  *v42 = v47;
  v42[1] = v48;
  OUTLINED_FUNCTION_21_42(v1 + 16, &v76);
  *(v1 + 16) = v41;

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v18);
  sub_1D4F0AE7C();
  if (v78)
  {
    sub_1D4E48324(&v77, v79);
    sub_1D4E628D4(v79, &v77);
    sub_1D4E628D4(&v77, v75);
    v52 = (v66 + *(v18 + 20));
    sub_1D51038C0(v75, v52);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    __swift_destroy_boxed_opaque_existential_1(v79);
    sub_1D4E50004(v69, &qword_1EC7F2AA8, &unk_1D564A5C0);
    v53 = *v52;
    v54 = v52[1];
    *v66 = v53;
    v66[1] = v54;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
    sub_1D4F0AB3C();
  }

  else
  {
    sub_1D4E50004(&v77, &unk_1EC7F65C0, &qword_1D562E6B0);
  }

  OUTLINED_FUNCTION_54_0(v1 + v71, v79);
  sub_1D526CE34();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC0, &qword_1D561DBB0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D561C050;
  *(v58 + 56) = v5;
  *(v58 + 64) = v68;
  v59 = __swift_allocate_boxed_opaque_existential_0((v58 + 32));
  v67(v59, v74, v5);
  *(v1 + v72) = v58;

  OUTLINED_FUNCTION_54_0(v24, v79);
  OUTLINED_FUNCTION_97_1();
  sub_1D526CE34();
  swift_endAccess();
  *(v1 + v70) = v73;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  v64 = OUTLINED_FUNCTION_132_1();
  sub_1D4E50004(v64, v65, &qword_1D562E6B0);
  (*(v45 + 8))(v74, v5);
  sub_1D4E50004(v69, &qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

uint64_t InternalMusicPlayer.Queue.__allocating_init<A>(for:startItem:)()
{
  v0 = OUTLINED_FUNCTION_110_10();
  OUTLINED_FUNCTION_75_2();
  InternalMusicPlayer.Queue.init<A>(for:startItem:)();
  return v0;
}

void InternalMusicPlayer.Queue.init<A>(for:startItem:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v9 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v10;
  v15 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest + v1;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  OUTLINED_FUNCTION_56_23(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, 0);
  v16 = v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem;
  *v16 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = 0;
  type metadata accessor for MusicPlaybackIntent(0);
  v18 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_129_6(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v22;
  *&v23 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v24 + 32) = v23;
  OUTLINED_FUNCTION_91_14();
  v25 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v29);
  v41[0] = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v30, v31, &unk_1D564F050);
  sub_1D5610A88();
  v41[3] = v5;
  v41[4] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v39, v5);
  OUTLINED_FUNCTION_54_0(v15, &v40);
  sub_1D526DFE4();
  swift_endAccess();
  OUTLINED_FUNCTION_54_0(v16, v41);
  sub_1D526CE34();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  sub_1D4E50004(v7, &unk_1EC7F65C0, &qword_1D562E6B0);
  v37 = OUTLINED_FUNCTION_61();
  v38(v37);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

uint64_t InternalMusicPlayer.Queue.__allocating_init<A>(stationSeed:)()
{
  v0 = OUTLINED_FUNCTION_110_10();
  OUTLINED_FUNCTION_61();
  InternalMusicPlayer.Queue.init<A>(stationSeed:)();
  return v0;
}

void InternalMusicPlayer.Queue.init<A>(stationSeed:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v9;
  v14.n128_f64[0] = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest);
  *(v15 + 32) = 0;
  v16 = v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed;
  *(v16 + 32) = 0;
  *v16 = v14;
  *(v16 + 16) = v14;
  OUTLINED_FUNCTION_121_8(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, v14);
  type metadata accessor for MusicPlaybackIntent(0);
  v17 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_129_6(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v21;
  *&v22 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v23 + 32) = v22;
  OUTLINED_FUNCTION_91_14();
  v24 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v28);
  v39[0] = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v29, v30, &unk_1D564F050);
  sub_1D5610A88();
  v39[3] = v5;
  v39[4] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v7, v5);
  OUTLINED_FUNCTION_54_0(v16, &v38);
  sub_1D526DFE4();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  v36 = OUTLINED_FUNCTION_61();
  v37(v36);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

void sub_1D525E7CC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v7;
  v12.n128_f64[0] = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest);
  *(v13 + 32) = 0;
  OUTLINED_FUNCTION_56_23(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, v12);
  OUTLINED_FUNCTION_121_8(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, v14);
  v15 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackIntent;
  v16 = type metadata accessor for MusicPlaybackIntent(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_129_6(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v20;
  *&v21 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v22 + 32) = v21;
  OUTLINED_FUNCTION_91_14();
  v23 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v27);
  v38 = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v28, v29, &unk_1D564F050);
  sub_1D5610A88();
  OUTLINED_FUNCTION_5_89();
  sub_1D526D7D8();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v16);
  OUTLINED_FUNCTION_54_0(v1 + v15, &v38);
  sub_1D526DFE4();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  OUTLINED_FUNCTION_0_150();
  sub_1D526D3A4(v3, v37);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

void sub_1D525EAA0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v5 = v4;
  v37 = v6;
  v7 = OUTLINED_FUNCTION_23_48();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_pendingStartEntry;
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  v14 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v8;
  v15.n128_f64[0] = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest);
  *(v16 + 32) = 0;
  OUTLINED_FUNCTION_56_23(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, v15);
  v17 = v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem;
  *v17 = v18;
  *(v17 + 16) = v18;
  *(v17 + 32) = 0;
  type metadata accessor for MusicPlaybackIntent(0);
  v19 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_129_6(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v23;
  *&v24 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v25 + 32) = v24;
  OUTLINED_FUNCTION_91_14();
  v26 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v30);
  v41 = sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v31, v32, &unk_1D564F050);
  sub_1D5610A88();
  OUTLINED_FUNCTION_21_42(v1 + 16, &v41);
  *(v1 + 16) = v37;

  OUTLINED_FUNCTION_54_0(v1 + v9, v40);
  sub_1D526CE34();
  swift_endAccess();
  *(v1 + v14) = v38;

  OUTLINED_FUNCTION_54_0(v17, v40);
  sub_1D526CE34();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = &unk_1F50A32C8;
  sub_1D560C358();
  sub_1D560C368();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_4_87();
  sub_1D526D94C();
  sub_1D525D978();
  sub_1D4E50004(v39, &unk_1EC7F65C0, &qword_1D562E6B0);
  sub_1D4E50004(v5, &qword_1EC7F2AA8, &unk_1D564A5C0);
  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D525EDAC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_134_7();
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData) = xmmword_1D564A5B0;
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent) = 3;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableItems) = v4;
  v9.n128_f64[0] = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playableRequest);
  *(v10 + 32) = 0;
  OUTLINED_FUNCTION_56_23(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_stationSeed, v9);
  OUTLINED_FUNCTION_121_8(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_startItem, v11);
  type metadata accessor for MusicPlaybackIntent(0);
  v12 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_129_6(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playbackSource);
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v16;
  *&v17 = OUTLINED_FUNCTION_26_51(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath);
  *(v18 + 32) = v17;
  OUTLINED_FUNCTION_91_14();
  v19 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = _s7MonitorCMa(0);
  OUTLINED_FUNCTION_2_19(v23);
  sub_1D4E6786C();
  OUTLINED_FUNCTION_2_115();
  sub_1D4E64524(v24, v25, &unk_1D564F050);
  sub_1D5610A88();
  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components) = a1;
  sub_1D560C368();
  v26 = OUTLINED_FUNCTION_18_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_1D525D978();
  return v2;
}

uint64_t InternalMusicPlayer.Queue.currentEntry.getter()
{
  v0 = OUTLINED_FUNCTION_55_24(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties);
  OUTLINED_FUNCTION_59(v0, v1);
  v2 = _s5QueueC10PropertiesVMa(0);
  v3 = OUTLINED_FUNCTION_35_1();
  if (!__swift_getEnumTagSinglePayload(v3, v4, v2))
  {
    return sub_1D4F0AE7C();
  }

  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_33();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

double InternalMusicPlayer.Queue.historyEntries.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties;
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties, a2);
  v4 = _s5QueueC10PropertiesVMa(0);
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
  }

  return result;
}

double InternalMusicPlayer.Queue.upNextEntries.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);
  if (!OUTLINED_FUNCTION_39_34())
  {
  }

  return result;
}

double InternalMusicPlayer.Queue.continuePlayingEntries.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);
  if (!OUTLINED_FUNCTION_39_34())
  {
  }

  return result;
}

double InternalMusicPlayer.Queue.autoPlayEntries.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);
  if (!OUTLINED_FUNCTION_39_34())
  {
  }

  return result;
}

uint64_t InternalMusicPlayer.Queue.totalEntryCount.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);
  if (OUTLINED_FUNCTION_39_34())
  {
    return 0;
  }

  v3 = v1 + *(v2 + 48);
  if (*(v3 + 8))
  {
    return 0;
  }

  result = *v3;
  if (!*v3)
  {
    return 0;
  }

  return result;
}

double InternalMusicPlayer.Queue.pendingEntries.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_72_5(v2 + 16, a2);

  return result;
}

uint64_t sub_1D525F2BC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t InternalMusicPlayer.Queue.player.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_21_42(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v3);
  swift_weakAssign();
  sub_1D525F3A0();
}

uint64_t sub_1D525F3A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D5610A98();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1D4E6F2FC(Strong);
}

uint64_t InternalMusicPlayer.Queue.player.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_54_0(v1 + v4, v3);
  v3[3] = swift_weakLoadStrong();
  return OUTLINED_FUNCTION_145_7();
}

void sub_1D525F4A4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1D525F3A0();
  }

  free(v3);
}

uint64_t InternalMusicPlayer.Queue.playActivityRecommendationData.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);
  v1 = OUTLINED_FUNCTION_159();
  sub_1D50BA3D8(v1, v2);
  return OUTLINED_FUNCTION_159();
}

uint64_t InternalMusicPlayer.Queue.playActivityRecommendationData.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_55_24(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData);
  OUTLINED_FUNCTION_21_42(v5, v6);
  v7 = *v2;
  v8 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1D50153E4(v7, v8);
}

uint64_t InternalMusicPlayer.Queue.replaceIntent.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent;
  result = OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent, a1);
  *a2 = *(v2 + v4);
  return result;
}

uint64_t InternalMusicPlayer.Queue.replaceIntent.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent;
  result = OUTLINED_FUNCTION_21_42(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent, v5);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D525F754(uint64_t a1)
{
  OUTLINED_FUNCTION_33_42(a1);

  return OUTLINED_FUNCTION_159();
}

uint64_t sub_1D525F79C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_55_24(*a3);
  OUTLINED_FUNCTION_21_42(v6, v7);
  *v3 = a1;
  v3[1] = a2;
}

void InternalMusicPlayer.Queue.repeatMode.getter(char *a1@<X8>)
{
  OUTLINED_FUNCTION_152_6();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_55_24(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties);
    OUTLINED_FUNCTION_59(v5, v6);
    v7 = _s5QueueC10PropertiesVMa(0);
    v8 = OUTLINED_FUNCTION_35_1();
    if (__swift_getEnumTagSinglePayload(v8, v9, v7))
    {
      v3 = 3;
    }

    else
    {
      v3 = *(v1 + *(v7 + 36));
    }
  }

  *a1 = v3;
}

uint64_t sub_1D525F948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D5610A98();

  v0 = OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1D4E62A60(&unk_1EDD5D880, &qword_1EC7F12E0, &qword_1D564ABD0, MEMORY[0x1E695BF80]);
  sub_1D560C8A8();
}

void sub_1D525FA0C(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v15 = [*(Strong + 88) response], , v15) && (v16 = objc_msgSend(v15, sel_musicKit_playerResponse_tracklist), swift_unknownObjectRelease(), v17 = objc_msgSend(v16, sel_musicKit_responseTracklist_repeatCommand), swift_unknownObjectRelease(), v17))
  {
    v33 = [v17 musicKit:qword_1D564ABE8[v13] repeatCommand:? setRepeatType:?];
    v36 = v33;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    sub_1D5612878();
    v18 = sub_1D5615458();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
    v19 = swift_weakLoadStrong();
    v32 = v17;
    v20 = v34;
    (*(v34 + 16))(v10, v12, v7);
    v21 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v19;
    (*(v20 + 32))(&v23[v21], v10, v7);
    *&v23[v22] = v2;

    sub_1D4F405A0(0, 0, v6, &unk_1D564ABC8, v23);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D4E50004(v6, &qword_1EC7EB710, &qword_1D561F440);
    (*(v20 + 8))(v12, v7);
  }

  else
  {
    if (qword_1EDD54498 != -1)
    {
      swift_once();
    }

    v24 = sub_1D560C758();
    __swift_project_value_buffer(v24, qword_1EDD76AC0);
    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446210;
      v35 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C68, &qword_1D564ABB8);
      v29 = sub_1D5614DB8();
      v31 = sub_1D4E6835C(v29, v30, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "InternalMusicPlayer could not apply repeat mode %{public}s because there is no underlying repeat command.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1DA6ED200](v28, -1, -1);
      MEMORY[0x1DA6ED200](v27, -1, -1);
    }

    *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientRepeatMode) = 3;
  }
}

uint64_t InternalMusicPlayer.Queue.repeatMode.modify(void *a1)
{
  OUTLINED_FUNCTION_162_6(a1);
  InternalMusicPlayer.Queue.repeatMode.getter(v1);
  return OUTLINED_FUNCTION_145_7();
}

void InternalMusicPlayer.Queue.shuffleMode.getter(char *a1@<X8>)
{
  OUTLINED_FUNCTION_152_6();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_55_24(OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_properties);
    OUTLINED_FUNCTION_59(v5, v6);
    v7 = _s5QueueC10PropertiesVMa(0);
    v8 = OUTLINED_FUNCTION_35_1();
    if (__swift_getEnumTagSinglePayload(v8, v9, v7))
    {
      v3 = 3;
    }

    else
    {
      v3 = *(v1 + *(v7 + 40));
    }
  }

  *a1 = v3;
}

uint64_t sub_1D5260018(char *a1, void *a2, uint64_t (*a3)(_BYTE *))
{
  v6 = *a1;
  sub_1D525F948();
  *(v3 + *a2) = v6;
  OUTLINED_FUNCTION_72_5(v3 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v7);
  result = swift_weakLoadStrong();
  if (result)
  {

    v9[0] = v6;
    return a3(v9);
  }

  return result;
}

void sub_1D526008C(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v15 = [*(Strong + 88) response], , v15) && (v16 = objc_msgSend(v15, sel_musicKit_playerResponse_tracklist), swift_unknownObjectRelease(), v17 = objc_msgSend(v16, sel_musicKit_responseTracklist_shuffleCommand), swift_unknownObjectRelease(), v17))
  {
    v33 = [v17 musicKit:qword_1D564ABE8[v13] shuffleCommand:? setShuffleType:?];
    v36 = v33;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
    sub_1D5612878();
    v18 = sub_1D5615458();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
    v19 = swift_weakLoadStrong();
    v32 = v17;
    v20 = v34;
    (*(v34 + 16))(v10, v12, v7);
    v21 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v19;
    (*(v20 + 32))(&v23[v21], v10, v7);
    *&v23[v22] = v2;

    sub_1D4F405A0(0, 0, v6, &unk_1D564ABB0, v23);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D4E50004(v6, &qword_1EC7EB710, &qword_1D561F440);
    (*(v20 + 8))(v12, v7);
  }

  else
  {
    if (qword_1EDD54498 != -1)
    {
      swift_once();
    }

    v24 = sub_1D560C758();
    __swift_project_value_buffer(v24, qword_1EDD76AC0);
    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446210;
      v35 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C60, &qword_1D564ABA0);
      v29 = sub_1D5614DB8();
      v31 = sub_1D4E6835C(v29, v30, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "InternalMusicPlayer could not apply shuffle mode %{public}s because there is no underlying shuffle command.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1DA6ED200](v28, -1, -1);
      MEMORY[0x1DA6ED200](v27, -1, -1);
    }

    *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientShuffleMode) = 3;
  }
}

uint64_t InternalMusicPlayer.Queue.shuffleMode.modify(void *a1)
{
  OUTLINED_FUNCTION_162_6(a1);
  InternalMusicPlayer.Queue.shuffleMode.getter(v1);
  return OUTLINED_FUNCTION_145_7();
}

uint64_t sub_1D5260584(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t InternalMusicPlayer.Queue.isAutoPlayEnabled.getter()
{
  result = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled);
  if (result == 2)
  {
    OUTLINED_FUNCTION_33_42(result);
    if (OUTLINED_FUNCTION_39_34())
    {
      return 2;
    }

    else
    {
      return *(v0 + *(v1 + 44));
    }
  }

  return result;
}

void InternalMusicPlayer.Queue.isAutoPlayEnabled.setter(uint64_t a1)
{
  v2 = a1;
  sub_1D525F948();
  *(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = v2;
  OUTLINED_FUNCTION_72_5(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v3);
  if (swift_weakLoadStrong())
  {

    sub_1D5260694(v2);
  }
}

void sub_1D5260694(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = [*(Strong + 88) response];

    if (v14)
    {
      v15 = [v14 musicKit_playerResponse_tracklist];
      swift_unknownObjectRelease();
      v16 = [v15 musicKit_responseTracklist_actionAtQueueEndCommand];
      swift_unknownObjectRelease();
      if (v16)
      {
        if ([v16 musicKit_actionAtQueueEndCommand_isAutoPlaySupported])
        {
          if (a1 == 2 || (a1 & 1) == 0)
          {
            v17 = 2;
          }

          else
          {
            v17 = 3;
          }

          v32 = [v16 musicKit:v17 actionAtQueueEndCommand:? setQueueEndActionCommandRequest:?];
          v35 = v32;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
          sub_1D5612878();
          v26 = sub_1D5615458();
          __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
          v31 = swift_weakLoadStrong();
          v27 = v33;
          (*(v33 + 16))(v10, v12, v7);
          v28 = (*(v27 + 80) + 40) & ~*(v27 + 80);
          v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
          v30 = swift_allocObject();
          *(v30 + 2) = 0;
          *(v30 + 3) = 0;
          *(v30 + 4) = v31;
          (*(v27 + 32))(&v30[v28], v10, v7);
          *&v30[v29] = v2;

          sub_1D4F405A0(0, 0, v6, &unk_1D564AB98, v30);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_1D4E50004(v6, &qword_1EC7EB710, &qword_1D561F440);
          (*(v27 + 8))(v12, v7);
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_1EDD54498 != -1)
  {
    swift_once();
  }

  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EDD76AC0);
  v19 = sub_1D560C738();
  v20 = sub_1D56156C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136446210;
    v34 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F13B0, &qword_1D563FF08);
    v23 = sub_1D5614DB8();
    v25 = sub_1D4E6835C(v23, v24, &v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1D4E3F000, v19, v20, "InternalMusicPlayer could not apply auto-play %{public}s because there is no underlying auto-play command.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA6ED200](v22, -1, -1);
    MEMORY[0x1DA6ED200](v21, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_transientAutoPlayEnabled) = 2;
}

void (*InternalMusicPlayer.Queue.isAutoPlayEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = InternalMusicPlayer.Queue.isAutoPlayEnabled.getter();
  return sub_1D5260B9C;
}

uint64_t InternalMusicPlayer.Queue.objectWillChange.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1D4E62A60(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100, MEMORY[0x1E6975F78]);
  return sub_1D560C938();
}

uint64_t InternalMusicPlayer.Queue.insert<A, B>(_:position:playActivityFeatureName:playActivityRecommendationData:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 32) = *a2;
  *(v2 + 33) = 2;
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1D4FD0428;
  OUTLINED_FUNCTION_89();

  return InternalMusicPlayer.Queue.insert<A, B>(_:position:playActivityFeatureName:playActivityRecommendationData:playbackSource:)();
}

uint64_t InternalMusicPlayer.Queue.insert<A, B>(_:position:playActivityFeatureName:playActivityRecommendationData:playbackSource:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  *(v1 + 88) = v20;
  *(v1 + 96) = v0;
  *(v1 + 72) = v19;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = v9;
  *(v1 + 24) = v10;
  *(v1 + 32) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AE8, &qword_1D564A600);
  *(v1 + 104) = v12;
  OUTLINED_FUNCTION_69(v12);
  *(v1 + 112) = v13;
  *(v1 + 120) = OUTLINED_FUNCTION_127();
  *(v1 + 146) = *v5;
  *(v1 + 147) = *v3;
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5260E3C()
{
  v1 = *(v0 + 146);
  v2 = swift_task_alloc();
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  *(v2 + 16) = v9;
  *(v2 + 32) = v8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  v5 = sub_1D4FD9450(sub_1D526CE84, v2, v9, v3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v4);

  *(v0 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AF0, &qword_1D564A608);
  sub_1D5612878();
  *(v0 + 144) = v1;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1D5260FAC;
  OUTLINED_FUNCTION_93_0(*(v0 + 120));

  return sub_1D52611F8();
}

uint64_t sub_1D5260FAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52610A4()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_125_9();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5261114()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_125_9();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5261188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_1D52611F8()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  *(v1 + 544) = v0;
  *(v1 + 536) = v6;
  *(v1 + 528) = v7;
  *(v1 + 520) = v8;
  *(v1 + 504) = v9;
  *(v1 + 512) = v10;
  v11 = type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  *(v1 + 552) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 560) = v12;
  *(v1 + 568) = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  OUTLINED_FUNCTION_22(v13);
  *(v1 + 576) = OUTLINED_FUNCTION_127();
  v14 = type metadata accessor for MusicPlaybackIntent(0);
  *(v1 + 584) = v14;
  OUTLINED_FUNCTION_69(v14);
  *(v1 + 592) = v15;
  *(v1 + 600) = OUTLINED_FUNCTION_167();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  *(v1 + 632) = v16;
  OUTLINED_FUNCTION_69(v16);
  *(v1 + 640) = v17;
  *(v1 + 648) = OUTLINED_FUNCTION_127();
  v18 = sub_1D560DB08();
  *(v1 + 656) = v18;
  OUTLINED_FUNCTION_69(v18);
  *(v1 + 664) = v19;
  *(v1 + 672) = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C48, &qword_1D564AB78);
  *(v1 + 680) = v20;
  OUTLINED_FUNCTION_22(v20);
  *(v1 + 688) = OUTLINED_FUNCTION_167();
  *(v1 + 696) = swift_task_alloc();
  v21 = sub_1D560E728();
  *(v1 + 704) = v21;
  OUTLINED_FUNCTION_69(v21);
  *(v1 + 712) = v22;
  *(v1 + 720) = OUTLINED_FUNCTION_127();
  v23 = sub_1D560D838();
  *(v1 + 728) = v23;
  OUTLINED_FUNCTION_69(v23);
  *(v1 + 736) = v24;
  *(v1 + 744) = OUTLINED_FUNCTION_167();
  *(v1 + 752) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  OUTLINED_FUNCTION_22(v25);
  *(v1 + 760) = OUTLINED_FUNCTION_167();
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 888) = *v5;
  *(v1 + 889) = *v3;
  sub_1D56153C8();
  *(v1 + 800) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  v27 = sub_1D5615338();
  *(v1 + 808) = v27;
  *(v1 + 816) = v26;

  return MEMORY[0x1EEE6DFA0](sub_1D526157C, v27, v26);
}

uint64_t sub_1D526157C()
{
  v1 = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AE8, &qword_1D564A600);
  sub_1D5612858();
  v2 = *(v0 + 464);
  *(v0 + 824) = v2;
  OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_player, v0 + 248);
  Strong = swift_weakLoadStrong();
  *(v0 + 832) = Strong;
  if (Strong)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v127 = *(v0 + 680);
      v5 = *(v0 + 664);
      v6 = v2 + 32;
      v125 = (*(v0 + 736) + 8);
      v119 = (v5 + 16);
      v123 = (*(v0 + 712) + 8);
      v122 = *MEMORY[0x1E6975040];
      v126 = (v5 + 104);
      v118 = (v5 + 32);
      v121 = (v5 + 8);
      v7 = &unk_1EC7F2C50;
      v120 = *MEMORY[0x1E6975030];
      v8 = &unk_1D564AB80;
      while (1)
      {
        v9 = v8;
        v10 = v7;
        v128 = v6;
        v129 = v4;
        v11 = *(v0 + 752);
        v12 = *(v0 + 728);
        sub_1D4E628D4(v6, v0 + 136);
        __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
        sub_1D560EC98();
        sub_1D560D588();
        v124 = *v125;
        (*v125)(v11, v12);
        sub_1D4E64524(&qword_1EDD5D740, MEMORY[0x1E6975358], MEMORY[0x1E6975368]);
        sub_1D5615608();
        sub_1D5615648();
        if (*(v0 + 472) == *(v0 + 480))
        {
          v13 = 1;
        }

        else
        {
          v14 = *(v0 + 792);
          v15 = sub_1D5615688();
          (*v119)(v14);
          v15(v0 + 216, 0);
          v13 = 0;
        }

        v16 = *(v0 + 792);
        v17 = *(v0 + 784);
        v18 = *(v0 + 696);
        v19 = *(v0 + 656);
        (*v123)(*(v0 + 720), *(v0 + 704));
        __swift_storeEnumTagSinglePayload(v16, v13, 1, v19);
        v20 = *v126;
        (*v126)(v17, v122, v19);
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
        v24 = *(v127 + 48);
        v25 = v10;
        v8 = v9;
        sub_1D4F0AE7C();
        v7 = v25;
        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_23_1(v18);
        if (v26)
        {
          break;
        }

        v33 = *(v0 + 656);
        OUTLINED_FUNCTION_181_4();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18 + v24, 1, v33);
        if (EnumTagSinglePayload == 1)
        {
          OUTLINED_FUNCTION_69_22();
          sub_1D4E50004(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_71();
          v39(v38);
LABEL_14:
          v40 = v20;
          sub_1D4E50004(*(v0 + 696), &qword_1EC7F2C48, &qword_1D564AB78);
          goto LABEL_15;
        }

        v40 = v20;
        v63 = *(v0 + 672);
        v64 = *(v0 + 656);
        (*v118)(v63, v18 + v24, v64);
        OUTLINED_FUNCTION_70_16();
        sub_1D4E64524(&qword_1EDD5D760, v65, MEMORY[0x1E6975078]);
        v66 = sub_1D5614D18();
        v67 = *v121;
        (*v121)(v63, v64);
        OUTLINED_FUNCTION_69_22();
        sub_1D4E50004(v68, v69, v70);
        v71 = OUTLINED_FUNCTION_128();
        (v67)(v71);
        OUTLINED_FUNCTION_69_22();
        sub_1D4E50004(v72, v73, v74);
        if (v66)
        {
          goto LABEL_28;
        }

LABEL_15:
        v41 = *(v0 + 688);
        v42 = *(v0 + 656);
        v40(*(v0 + 768), v120, v42);
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
        v46 = *(v127 + 48);
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_181_4();
        OUTLINED_FUNCTION_181_4();
        v47 = OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_57(v47, v48, v42);
        if (v26)
        {
          OUTLINED_FUNCTION_69_22();
          sub_1D4E50004(v49, v50, v51);
          OUTLINED_FUNCTION_1(v41 + v46);
          if (v26)
          {
            OUTLINED_FUNCTION_69_22();
            sub_1D4E50004(v52, v53, v54);
LABEL_27:
            __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
            sub_1D560EC98();
            sub_1D560D7E8();
            v86 = OUTLINED_FUNCTION_128();
            v124(v86);
            goto LABEL_28;
          }

LABEL_22:
          v30 = *(v0 + 688);
          v31 = &qword_1EC7F2C48;
          v32 = &qword_1D564AB78;
LABEL_23:
          sub_1D4E50004(v30, v31, v32);
          goto LABEL_28;
        }

        v55 = *(v0 + 656);
        OUTLINED_FUNCTION_181_4();
        v56 = __swift_getEnumTagSinglePayload(v41 + v46, 1, v55);
        v57 = *(v0 + 760);
        if (v56 == 1)
        {
          OUTLINED_FUNCTION_69_22();
          sub_1D4E50004(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_71();
          v62(v61);
          goto LABEL_22;
        }

        v75 = *(v0 + 672);
        v76 = *(v0 + 656);
        (*v118)(v75, v41 + v46, v76);
        OUTLINED_FUNCTION_70_16();
        sub_1D4E64524(&qword_1EDD5D760, v77, MEMORY[0x1E6975078]);
        v78 = sub_1D5614D18();
        v79 = *v121;
        (*v121)(v75, v76);
        OUTLINED_FUNCTION_69_22();
        sub_1D4E50004(v80, v81, v82);
        v79(v57, v76);
        OUTLINED_FUNCTION_69_22();
        sub_1D4E50004(v83, v84, v85);
        if (v78)
        {
          goto LABEL_27;
        }

LABEL_28:
        OUTLINED_FUNCTION_69_22();
        sub_1D4E50004(v87, v88, v89);
        __swift_destroy_boxed_opaque_existential_1((v0 + 136));
        v6 = v128 + 40;
        v4 = v129 - 1;
        if (v129 == 1)
        {
          goto LABEL_29;
        }
      }

      OUTLINED_FUNCTION_69_22();
      sub_1D4E50004(v27, v28, v29);
      OUTLINED_FUNCTION_1(v18 + v24);
      if (v26)
      {
        OUTLINED_FUNCTION_69_22();
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_29:
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 840) = v90;
    *v90 = v91;
    v90[1] = sub_1D5262014;
    v92 = *(v0 + 648);

    return sub_1D5433A24(v92);
  }

  else
  {
    v94 = v0 + 344;
    v95 = v0 + 440;

    v96 = *(v2 + 16);
    if (v96)
    {
      v97 = *(v0 + 568);
      v98 = *(v0 + 552);
      v130 = MEMORY[0x1E69E7CC0];
      sub_1D4F04774(0, v96, 0);
      v99 = v130;
      v100 = v2 + 32;
      do
      {
        v101 = *(v0 + 568);
        sub_1D4E628D4(v100, v0 + 16);
        sub_1D4E628D4(v0 + 16, v0 + 56);
        sub_1D4E628D4(v0 + 56, v0 + 96);
        v102 = (v101 + *(v98 + 20));
        sub_1D51038C0((v0 + 96), v102);
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v103 = v102[1];
        *v101 = *v102;
        *(v97 + 8) = v103;
        v105 = *(v130 + 16);
        v104 = *(v130 + 24);

        if (v105 >= v104 >> 1)
        {
          sub_1D4F04774(v104 > 1, v105 + 1, 1);
        }

        *(v130 + 16) = v105 + 1;
        OUTLINED_FUNCTION_43_3();
        OUTLINED_FUNCTION_25_48();
        sub_1D526D94C();
        v100 += 40;
        --v96;
      }

      while (v96);

      v95 = v0 + 440;
      v94 = v0 + 344;
    }

    else
    {

      v99 = MEMORY[0x1E69E7CC0];
    }

    v106 = *(v0 + 544);
    switch(*(v0 + 888))
    {
      case 1:
        v107 = v106 + 16;
        goto LABEL_46;
      case 2:
        OUTLINED_FUNCTION_54_0(v106 + 16, v94);
        sub_1D4EF3760(v99);
        goto LABEL_47;
      case 3:
        v107 = v106 + 16;
        v95 = v0 + 272;
        goto LABEL_46;
      default:
        OUTLINED_FUNCTION_59(v106 + 16, v0 + 368);
        v107 = v106 + 16;
        if (*(*(v106 + 16) + 16) < 2uLL)
        {
          v95 = v0 + 392;
LABEL_46:
          OUTLINED_FUNCTION_54_0(v107, v95);
          sub_1D4EF3760(v99);
        }

        else
        {
          OUTLINED_FUNCTION_54_0(v107, v0 + 416);
          sub_1D526D00C(1, 1, v99);
        }

LABEL_47:
        v108 = swift_endAccess();
        v109 = (*(v0 + 544) + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityFeatureName);
        v110 = OUTLINED_FUNCTION_97_13(v108, v0 + 296);
        if (!v109[1])
        {
          v111 = *(v0 + 520);
          *v109 = *(v0 + 512);
          v109[1] = v111;
        }

        v112 = (*(v0 + 544) + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_playActivityRecommendationData);
        OUTLINED_FUNCTION_97_13(v110, v0 + 320);
        if (v112[1] >> 60 == 15)
        {
          v113 = *(v0 + 536);
          v114 = *(v0 + 528);
          *v112 = v114;
          v112[1] = v113;
          sub_1D50BA3D8(v114, v113);
          v115 = OUTLINED_FUNCTION_98();
          sub_1D50153E4(v115, v116);
        }

        OUTLINED_FUNCTION_65_22();

        OUTLINED_FUNCTION_22_1();

        result = v117();
        break;
    }
  }

  return result;
}

uint64_t sub_1D5262014()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  v4 = *(v1 + 816);
  v5 = *(v1 + 808);

  return MEMORY[0x1EEE6DFA0](sub_1D5262128, v5, v4);
}

uint64_t sub_1D5262128()
{
  v1 = *(v0 + 889);
  v2 = *(v0 + 544);
  sub_1D5612858();
  v3 = OUTLINED_FUNCTION_159();
  v4(v3);
  *(v0 + 176) = 0u;
  v5 = *(v0 + 488);
  *(v0 + 848) = v5;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  v6 = *(v2 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_resolvedPlayerPath + 40);
  if (v6)
  {
    [v6 musicKit_playerPath_isLocal];
  }

  sub_1D542497C();
  v43 = v7;

  sub_1D4E50004(v0 + 176, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v5)
  {
    v8 = [objc_msgSend(v5 musicKit:sel_musicKit_responseTracklist_insertCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 856) = v8;
  v9 = *(v0 + 888);
  *(v0 + 496) = MEMORY[0x1E69E7CC0];
  v10 = v43;
  v11 = *(v43 + 16);
  switch(v9)
  {
    case 1:
      if (!v11)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_108_10();
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        OUTLINED_FUNCTION_5_89();
        sub_1D526D7D8();
        if (v8 && [v8 musicKit:**(v0 + 616) insertItemsCommand:? insertAtEndOfTracklistCommandRequestWithPlaybackIntent:?])
        {
          v28 = swift_unknownObjectRetain();
          MEMORY[0x1DA6EAF30](v28);
          OUTLINED_FUNCTION_148_8();
          if (*(v29 + 16) >= *(v29 + 24) >> 1)
          {
            OUTLINED_FUNCTION_135_9();
          }

          OUTLINED_FUNCTION_164_4();
          sub_1D56151F8();
          swift_unknownObjectRelease();
          v12 = *(v0 + 496);
        }

        OUTLINED_FUNCTION_0_150();
        sub_1D526D3A4(v30, v31);
        v2 += v1;
        --v11;
      }

      while (v11);
      goto LABEL_43;
    case 2:
      if (!v11)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_108_10();
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        OUTLINED_FUNCTION_5_89();
        sub_1D526D7D8();
        if (v8 && [v8 musicKit:**(v0 + 608) insertItemsCommand:? insertAtEndOfUpNextCommandRequestWithPlaybackIntent:?])
        {
          v17 = swift_unknownObjectRetain();
          MEMORY[0x1DA6EAF30](v17);
          OUTLINED_FUNCTION_148_8();
          if (*(v18 + 16) >= *(v18 + 24) >> 1)
          {
            OUTLINED_FUNCTION_135_9();
          }

          OUTLINED_FUNCTION_164_4();
          sub_1D56151F8();
          swift_unknownObjectRelease();
          v12 = *(v0 + 496);
        }

        OUTLINED_FUNCTION_0_150();
        sub_1D526D3A4(v19, v20);
        v2 += v1;
        --v11;
      }

      while (v11);
      goto LABEL_43;
    case 3:
      if (v11 >= 2)
      {
        if (qword_1EDD54498 != -1)
        {
          OUTLINED_FUNCTION_3_116(&qword_1EDD54498);
        }

        v21 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v21, qword_1EDD76AC0);
        v22 = sub_1D560C738();
        v23 = sub_1D56156D8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = OUTLINED_FUNCTION_63_12();
          *v24 = 0;
          _os_log_impl(&dword_1D4E3F000, v22, v23, "Cannot insert multiple playback intents after last section. Choosing first playback intent.", v24, 2u);
          OUTLINED_FUNCTION_122();
        }
      }

      v25 = *(v0 + 584);
      v26 = *(v0 + 576);
      sub_1D4ECA3C4(v43);

      OUTLINED_FUNCTION_57(v26, 1, v25);
      if (v27)
      {
        sub_1D4E50004(*(v0 + 576), &qword_1EC7F2AC0, &qword_1D564A5E0);
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_24_49();
      sub_1D526D94C();
      if (!v8)
      {
        goto LABEL_52;
      }

      v32 = [v8 musicKit_insertItemCommand_insertAfterLastSection];
      if (!v32)
      {
        goto LABEL_52;
      }

      v33 = [v32 musicKit:**(v0 + 600) insertWithPlaybackIntent:?];
      v34 = swift_unknownObjectRelease();
      if (!v33)
      {
        goto LABEL_52;
      }

      MEMORY[0x1DA6EAF30](v34);
      OUTLINED_FUNCTION_148_8();
      if (*(v35 + 16) >= *(v35 + 24) >> 1)
      {
        sub_1D56151B8();
      }

      v36 = *(v0 + 600);
      OUTLINED_FUNCTION_93();
      sub_1D56151F8();
      v12 = *(v0 + 496);
      OUTLINED_FUNCTION_0_150();
      sub_1D526D3A4(v36, v37);
      goto LABEL_54;
    default:
      if (v11)
      {
        OUTLINED_FUNCTION_43_3();
        v12 = MEMORY[0x1E69E7CC0];
        while (v11 <= *(v10 + 16))
        {
          --v11;
          OUTLINED_FUNCTION_5_89();
          sub_1D526D7D8();
          if (v8 && [v8 musicKit:**(v0 + 624) insertItemsCommand:? insertAfterPlayingItemCommandRequestWithPlaybackIntent:?])
          {
            v13 = swift_unknownObjectRetain();
            MEMORY[0x1DA6EAF30](v13);
            OUTLINED_FUNCTION_148_8();
            if (*(v14 + 16) >= *(v14 + 24) >> 1)
            {
              sub_1D56151B8();
            }

            sub_1D56151F8();
            swift_unknownObjectRelease();
            v12 = *(v0 + 496);
            v10 = v43;
          }

          OUTLINED_FUNCTION_0_150();
          sub_1D526D3A4(v15, v16);
          if (!v11)
          {
LABEL_43:

            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_0_150();
        sub_1D526D3A4(v38, v39);
      }

      else
      {
LABEL_44:
      }

LABEL_53:
      v12 = MEMORY[0x1E69E7CC0];
LABEL_54:
      *(v0 + 864) = v12;
      v40 = swift_task_alloc();
      *(v0 + 872) = v40;
      *v40 = v0;
      v40[1] = sub_1D5262718;
      OUTLINED_FUNCTION_89();

      return sub_1D5433B74();
  }
}

uint64_t sub_1D5262718()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[110] = v0;

  if (v0)
  {
    v7 = v3[102];
    v8 = v3[101];
    v9 = sub_1D526297C;
  }

  else
  {

    v7 = v3[102];
    v8 = v3[101];
    v9 = sub_1D5262824;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D5262824()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_22();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D526297C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t InternalMusicPlayer.Queue.insert<A>(_:position:playActivityFeatureName:playActivityRecommendationData:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a1;
  *(v9 + 32) = a3;
  *(v9 + 113) = *a2;
  v10 = OUTLINED_FUNCTION_12_1();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5262B5C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 113);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  sub_1D504A3C8(v2, v2);
  v4 = *(v2 - 8);
  swift_allocObject();
  v5 = sub_1D5615198();
  (*(v4 + 16))(v6, v3, v2);
  v7 = sub_1D5047750(v5, v2);
  *(v0 + 16) = v7;
  *(v0 + 88) = v7;
  *(v0 + 112) = v1;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  sub_1D56152D8();
  swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_1D5262D04;
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_153_1();

  return InternalMusicPlayer.Queue.insert<A, B>(_:position:playActivityFeatureName:playActivityRecommendationData:)(v9, v10);
}

uint64_t sub_1D5262D04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t InternalMusicPlayer.Queue.insert<A>(_:position:playActivityFeatureName:playActivityRecommendationData:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  OUTLINED_FUNCTION_1_0();
  *(v1 + 80) = v11;
  *(v1 + 88) = OUTLINED_FUNCTION_127();
  v12 = sub_1D5612868();
  *(v1 + 96) = v12;
  OUTLINED_FUNCTION_69(v12);
  *(v1 + 104) = v13;
  *(v1 + 112) = OUTLINED_FUNCTION_127();
  *(v1 + 137) = *v3;
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 32) = v9;
  *(v1 + 40) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AE8, &qword_1D564A600);
  *(v1 + 96) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 104) = v12;
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 138) = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1D55CCBA4, 0, 0);
}

uint64_t sub_1D5262F68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 137);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 16), *(v0 + 56));
  OUTLINED_FUNCTION_128();
  sub_1D5612878();
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1D5263050;
  v3 = OUTLINED_FUNCTION_93_0(*(v0 + 112));

  return sub_1D526323C(v3, (v0 + 136), v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D5263050()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5263148()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_125_9();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D52631C0()
{
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_125_9();
  v1(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}