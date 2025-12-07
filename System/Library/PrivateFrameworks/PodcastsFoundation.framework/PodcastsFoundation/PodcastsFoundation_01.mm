uint64_t getEnumTagSinglePayload for FairPlayKeyLoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for EpisodeDownloadReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t MediaIdentifier.encode(to:)(void *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA320, &qword_1D91B3E20);
  v51[6] = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v51 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA328, &qword_1D91B3E28);
  v51[5] = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v51 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA330, &qword_1D91B3E30);
  v51[4] = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v51 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA338, &qword_1D91B3E38);
  v51[3] = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA340, &qword_1D91B3E40);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = v51 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA348, &qword_1D91B3E48);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v68 = v51 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA350, &qword_1D91B3E50);
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA358, &qword_1D91B3E58);
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v51 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA360, &qword_1D91B3E60);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v16 = v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA368, &qword_1D91B3E68);
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v18 = v1[1];
  v72 = *v1;
  v66 = v18;
  v19 = v1[3];
  v51[2] = v1[2];
  v51[1] = v19;
  v20 = *(v1 + 32);
  v21 = a1[3];
  v22 = a1;
  v24 = v51 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1D8CFE96C();
  v76 = v24;
  sub_1D9179F1C();
  if (v20 > 3)
  {
    if (v20 <= 5)
    {
      if (v20 == 4)
      {
        LOBYTE(v78) = 5;
        sub_1D90BEC24();
        v25 = v58;
        v26 = v74;
        sub_1D917993C();
        LOBYTE(v78) = 0;
        v27 = v59;
        v44 = v75;
        sub_1D91799BC();
        if (!v44)
        {
          LOBYTE(v78) = 1;
          sub_1D917994C();
        }

        v28 = &v78;
      }

      else
      {
        LOBYTE(v78) = 6;
        sub_1D90BEB48();
        v25 = v60;
        v26 = v74;
        sub_1D917993C();
        v78 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA3A8, &unk_1D91B3E80);
        sub_1D90BEB9C(&qword_1ECABA3B0, &qword_1ECAB2C20, &protocol conformance descriptor for PodcastsMediaLibrary.MediaItemSnapshot, MEMORY[0x1E69E6300]);
        v27 = v61;
        sub_1D91799FC();
        v28 = &v79;
      }
    }

    else if (v20 == 6)
    {
      LOBYTE(v78) = 7;
      sub_1D90BEAF4();
      v25 = v62;
      v26 = v74;
      sub_1D917993C();
      v78 = v72;
      v77 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
      sub_1D90BEF54(&qword_1ECABA398, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6300]);
      v27 = v64;
      v45 = v75;
      sub_1D91799FC();
      if (!v45)
      {
        LOBYTE(v78) = 1;
        sub_1D91799AC();
      }

      v28 = &v80;
    }

    else
    {
      if (v20 != 7)
      {
        LOBYTE(v78) = 0;
        sub_1D8CFE9C0();
        v49 = v74;
        v50 = v76;
        sub_1D917993C();
        (*(v52 + 8))(v16, v53);
        return (*(v73 + 8))(v50, v49);
      }

      LOBYTE(v78) = 8;
      sub_1D90BEA4C();
      v25 = v63;
      v26 = v74;
      sub_1D917993C();
      v78 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA378, &unk_1D91B3E70);
      sub_1D90BEE88(&qword_1ECABA380, sub_1D90BEAA0, MEMORY[0x1E69E6300]);
      v27 = v65;
      sub_1D91799FC();
      v28 = &v81;
    }

    (*(*(v28 - 32) + 8))(v25, v27);
    v42 = *(v73 + 8);
    v43 = v76;
    v48 = v26;
    return v42(v43, v48);
  }

  v29 = v14;
  v31 = v67;
  v30 = v68;
  v32 = v69;
  v33 = v70;
  v34 = v71;
  if (v20 > 1)
  {
    v38 = v74;
    if (v20 == 2)
    {
      LOBYTE(v78) = 3;
      sub_1D90BECCC();
      v39 = v30;
      v40 = v76;
      sub_1D917993C();
      v78 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D90906C8(&qword_1ECAAFEE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v41 = v55;
      sub_1D91799FC();
      (*(v56 + 8))(v39, v41);
      v42 = *(v73 + 8);
      v43 = v40;
    }

    else
    {
      LOBYTE(v78) = 4;
      sub_1D90BEC78();
      v47 = v76;
      sub_1D917993C();
      sub_1D91799BC();
      (*(v33 + 8))(v32, v34);
      v42 = *(v73 + 8);
      v43 = v47;
    }

    v48 = v38;
    return v42(v43, v48);
  }

  v35 = v74;
  if (v20)
  {
    LOBYTE(v78) = 2;
    sub_1D90BED20();
    v36 = v76;
    sub_1D917993C();
    v78 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    sub_1D90BF004(&qword_1ECABA3D8, sub_1D8EF1720, MEMORY[0x1E69E6300]);
    v46 = v54;
    sub_1D91799FC();
    (*(v57 + 8))(v11, v46);
  }

  else
  {
    LOBYTE(v78) = 1;
    sub_1D90BED74();
    v36 = v76;
    sub_1D917993C();
    v78 = v72;
    sub_1D8EF1720();
    sub_1D91799FC();
    (*(v31 + 8))(v29, v12);
  }

  return (*(v73 + 8))(v36, v35);
}

unint64_t sub_1D8D0A340()
{
  result = qword_1ECAB2298;
  if (!qword_1ECAB2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2298);
  }

  return result;
}

unint64_t sub_1D8D0A398()
{
  result = qword_1ECAB22A0;
  if (!qword_1ECAB22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22A0);
  }

  return result;
}

unint64_t sub_1D8D0A400()
{
  result = qword_1ECAB2340;
  if (!qword_1ECAB2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2340);
  }

  return result;
}

unint64_t sub_1D8D0A458()
{
  result = qword_1ECAB2348;
  if (!qword_1ECAB2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2348);
  }

  return result;
}

unint64_t sub_1D8D0A4C0()
{
  result = qword_1ECAB22C8;
  if (!qword_1ECAB22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22C8);
  }

  return result;
}

unint64_t sub_1D8D0A518()
{
  result = qword_1ECAB22D0;
  if (!qword_1ECAB22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22D0);
  }

  return result;
}

unint64_t sub_1D8D0A580()
{
  result = qword_1ECAB22E8;
  if (!qword_1ECAB22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22E8);
  }

  return result;
}

unint64_t sub_1D8D0A5D8()
{
  result = qword_1ECAB22F0;
  if (!qword_1ECAB22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22F0);
  }

  return result;
}

unint64_t sub_1D8D0A660()
{
  result = qword_1ECAB22D8;
  if (!qword_1ECAB22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22D8);
  }

  return result;
}

unint64_t sub_1D8D0A6B8()
{
  result = qword_1ECAB22E0;
  if (!qword_1ECAB22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22E0);
  }

  return result;
}

unint64_t sub_1D8D0A714()
{
  result = qword_1ECAB2300;
  if (!qword_1ECAB2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2300);
  }

  return result;
}

unint64_t sub_1D8D0A780()
{
  result = qword_1ECAB2318;
  if (!qword_1ECAB2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2318);
  }

  return result;
}

uint64_t sub_1D8D0A7E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7972617262696CLL;
    v6 = 0x7365646F73697065;
    if (a1 != 2)
    {
      v6 = 0x6970456C61636F6CLL;
    }

    if (a1)
    {
      v5 = 0x74736163646F70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746F687370616E73;
    v2 = 0x657551616964656DLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646F506C61636F6CLL;
    if (a1 != 4)
    {
      v3 = 0x6E6F6974617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for FileFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8D0A9B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736E6F6974706FLL;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x766C6F7365527369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496C616974696E69;
  if (v1 != 1)
  {
    v5 = 0x747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15MediaIdentifierOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19EpisodeListSettingsVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8D0AAA0()
{
  result = qword_1ECAB24C8;
  if (!qword_1ECAB24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24C8);
  }

  return result;
}

unint64_t sub_1D8D0AAF8()
{
  result = qword_1ECAB24D0;
  if (!qword_1ECAB24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24D0);
  }

  return result;
}

unint64_t sub_1D8D0AB4C()
{
  result = qword_1ECAB24D8;
  if (!qword_1ECAB24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24D8);
  }

  return result;
}

unint64_t sub_1D8D0ABA0()
{
  result = qword_1ECAB24E0;
  if (!qword_1ECAB24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB24E0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ArtworkRequest.SubsampleFactor(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkRequest.SubsampleFactor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t PlaybackIntent.Origin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA038, &qword_1D91B1ED0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA040, &qword_1D91B1ED8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA048, &qword_1D91B1EE0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA050, &qword_1D91B1EE8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA058, &qword_1D91B1EF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CFF13C();
  sub_1D9179F1C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D90A9CAC();
      v18 = v27;
      sub_1D917993C();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D90A9C58();
      v18 = v30;
      sub_1D917993C();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8D0B298();
    v18 = v24;
    sub_1D917993C();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D90A9D00();
  sub_1D917993C();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1D8D0B184()
{
  result = qword_1ECAB2530;
  if (!qword_1ECAB2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2530);
  }

  return result;
}

unint64_t sub_1D8D0B1F0()
{
  result = qword_1ECAB2560;
  if (!qword_1ECAB2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2560);
  }

  return result;
}

unint64_t sub_1D8D0B244()
{
  result = qword_1ECAB2568;
  if (!qword_1ECAB2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2568);
  }

  return result;
}

unint64_t sub_1D8D0B298()
{
  result = qword_1ECAB2520;
  if (!qword_1ECAB2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CategoriesSyncUtil.CategoriesSyncError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D8D0B37C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1D8D092C0(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1D8D0B390()
{
  result = qword_1ECAB1E60;
  if (!qword_1ECAB1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E60);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EpisodeListSettings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpisodeListSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t EpisodeListType.encode(to:)(void *a1)
{
  v2 = v1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E90, &qword_1D919CCD0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v100 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E98, &qword_1D919CCD8);
  v127 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EA0, &qword_1D919CCE0);
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v100 - v7;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EA8, &qword_1D919CCE8);
  v126 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v100 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EB0, &qword_1D919CCF0);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v100 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EB8, &qword_1D919CCF8);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v100 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EC0, &qword_1D919CD00);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v100 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EC8, &qword_1D919CD08);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v100 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7ED0, &qword_1D919CD10);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v100 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7ED8, &qword_1D919CD18);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EE0, &qword_1D919CD20);
  v136 = *(v15 - 8);
  v137 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v100 - v16;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EE8, &qword_1D919CD28);
  v131 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v150 = &v100 - v17;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EF0, &qword_1D919CD30);
  v125 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v100 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7EF8, &qword_1D919CD38);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F00, &qword_1D919CD40);
  v146 = *(v20 - 8);
  v147 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v100 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F08, &qword_1D919CD48);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F10, &qword_1D919CD50);
  v129 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v100 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F18, &qword_1D919CD58);
  v128 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7F20, &unk_1D919CD60);
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v30 = &v100 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CFFEF4();
  v154 = v30;
  sub_1D9179F1C();
  v31 = *(v2 + 1);
  v32 = *(v2 + 2);
  v33 = *(v2 + 3);
  v34 = v2[64];
  v35 = *v2 | (v2[1] << 8) | (*(v2 + 2) << 16) | (*(v2 + 3) << 48);
  if (v34 <= 4)
  {
    v144 = v23;
    v46 = v145;
    v45 = v146;
    v47 = v147;
    v48 = v148;
    v50 = v149;
    v49 = v150;
    if (v34 <= 1)
    {
      v63 = v35;
      if (v34)
      {
        LOBYTE(v155) = 1;
        sub_1D8F99804();
        v79 = v25;
        v81 = v153;
        v80 = v154;
        sub_1D917993C();
        v155 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
        sub_1D8F9C788(&qword_1ECAB7FB8, &qword_1ECAB2CB0, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        v82 = v144;
        sub_1D91799FC();
        (*(v129 + 8))(v79, v82);
        return (*(v151 + 8))(v80, v81);
      }

      else
      {
        LOBYTE(v155) = 0;
        sub_1D8F99858();
        v64 = v28;
        v66 = v153;
        v65 = v154;
        sub_1D917993C();
        v155 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
        sub_1D8F9C788(&qword_1ECAB7FB8, &qword_1ECAB2CB0, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
        sub_1D91799FC();
        (*(v128 + 8))(v64, v26);
        return (*(v151 + 8))(v65, v66);
      }
    }

    else
    {
      v51 = v152;
      v52 = v154;
      if (v34 == 2)
      {
        LOBYTE(v155) = 3;
        sub_1D8F9975C();
        v67 = v153;
        sub_1D917993C();
        sub_1D91799BC();
        (*(v45 + 8))(v46, v47);
        return (*(v151 + 8))(v52, v67);
      }

      else
      {
        v53 = v153;
        if (v34 == 3)
        {
          LOBYTE(v155) = 5;
          sub_1D8F996B4();
          v54 = v154;
          sub_1D917993C();
          sub_1D91799BC();
          (*(v125 + 8))(v48, v50);
          return (*(v151 + 8))(v54, v53);
        }

        else
        {
          v76 = v32;
          LOBYTE(v155) = 6;
          sub_1D8F99660();
          v77 = v154;
          sub_1D917993C();
          LOBYTE(v155) = 0;
          v78 = v130;
          sub_1D91799BC();
          if (v51)
          {
            (*(v131 + 8))(v49, v78);
            return (*(v151 + 8))(v77, v153);
          }

          else
          {
            v90 = v153;
            v155 = v76;
            v157 = 1;
            type metadata accessor for MTEpisodeTypeFilter(0);
            sub_1D8F9C824(&qword_1ECAB7F88, type metadata accessor for MTEpisodeTypeFilter, &protocol conformance descriptor for MTEpisodeTypeFilter);
            sub_1D91799FC();
            LOBYTE(v155) = 2;
            sub_1D917995C();
            (*(v131 + 8))(v49, v78);
            return (*(v151 + 8))(v154, v90);
          }
        }
      }
    }
  }

  else
  {
    v37 = *(v2 + 4);
    v36 = *(v2 + 5);
    v39 = *(v2 + 6);
    v38 = *(v2 + 7);
    if (v2[64] > 7u)
    {
      v56 = *(v2 + 2);
      v57 = v33;
      v58 = v153;
      if (v34 == 8)
      {
        LOBYTE(v155) = 15;
        sub_1D8F9936C();
        v72 = v141;
        v73 = v154;
        sub_1D917993C();
        LOBYTE(v155) = 0;
        v74 = v144;
        v75 = v152;
        sub_1D91799BC();
        if (!v75)
        {
          v155 = v56;
          v156 = v57;
          v157 = 1;
          sub_1D8F993C0();
          sub_1D91799FC();
        }

        (*(v143 + 8))(v72, v74);
        return (*(v151 + 8))(v73, v58);
      }

      else
      {
        v59 = v154;
        if (v34 == 9)
        {
          LOBYTE(v155) = 16;
          sub_1D8F99318();
          v60 = v59;
          v61 = v140;
          sub_1D917993C();
          v62 = v142;
          sub_1D91799BC();
          (*(v127 + 8))(v61, v62);
          return (*(v151 + 8))(v60, v58);
        }

        else
        {
          v85 = v32 | v31 | v33;
          if (v85 | v37 | v36 | v35 | v39 | v38)
          {
            v86 = v85 | v37 | v36 | v39 | v38;
            if (v35 != 1 || v86)
            {
              if (v35 != 2 || v86)
              {
                if (v35 != 3 || v86)
                {
                  if (v35 != 4 || v86)
                  {
                    if (v35 != 5 || v86)
                    {
                      if (v35 != 6 || v86)
                      {
                        LOBYTE(v155) = 17;
                        sub_1D8F992C4();
                        v99 = v104;
                        v88 = v58;
                        sub_1D917993C();
                        (*(v105 + 8))(v99, v106);
                      }

                      else
                      {
                        LOBYTE(v155) = 13;
                        sub_1D8F99468();
                        v98 = v101;
                        v88 = v58;
                        sub_1D917993C();
                        (*(v102 + 8))(v98, v103);
                      }
                    }

                    else
                    {
                      LOBYTE(v155) = 12;
                      sub_1D8F994BC();
                      v97 = v107;
                      v88 = v58;
                      sub_1D917993C();
                      (*(v108 + 8))(v97, v109);
                    }
                  }

                  else
                  {
                    LOBYTE(v155) = 11;
                    sub_1D8F99510();
                    v95 = v110;
                    v88 = v58;
                    sub_1D917993C();
                    (*(v111 + 8))(v95, v112);
                  }
                }

                else
                {
                  LOBYTE(v155) = 10;
                  sub_1D8F99564();
                  v93 = v113;
                  v88 = v58;
                  sub_1D917993C();
                  (*(v114 + 8))(v93, v115);
                }
              }

              else
              {
                LOBYTE(v155) = 9;
                sub_1D8F995B8();
                v92 = v116;
                v88 = v58;
                sub_1D917993C();
                (*(v117 + 8))(v92, v118);
              }
            }

            else
            {
              LOBYTE(v155) = 4;
              sub_1D8F99708();
              v87 = v119;
              v88 = v58;
              sub_1D917993C();
              (*(v120 + 8))(v87, v121);
            }

            return (*(v151 + 8))(v59, v88);
          }

          else
          {
            LOBYTE(v155) = 2;
            sub_1D8F997B0();
            v91 = v122;
            sub_1D917993C();
            (*(v123 + 8))(v91, v124);
            return (*(v151 + 8))(v59, v58);
          }
        }
      }
    }

    else
    {
      v40 = v153;
      if (v34 == 5)
      {
        v149 = *(v2 + 2);
        v150 = v33;
        LOBYTE(v155) = 7;
        sub_1D8F9960C();
        v68 = v135;
        v69 = v154;
        sub_1D917993C();
        LOBYTE(v155) = 0;
        v70 = v137;
        v71 = v152;
        sub_1D91799BC();
        if (v71)
        {
          (*(v136 + 8))(v68, v70);
          return (*(v151 + 8))(v69, v153);
        }

        else
        {
          v89 = v153;
          LOBYTE(v155) = 1;
          sub_1D91799BC();
          LOBYTE(v155) = 2;
          v94 = v68;
          sub_1D917994C();
          LOBYTE(v155) = 3;
          sub_1D91799BC();
          v96 = v154;
          (*(v136 + 8))(v94, v70);
          return (*(v151 + 8))(v96, v89);
        }
      }

      else
      {
        if (v34 != 6)
        {
          LOBYTE(v155) = 14;
          sub_1D8F99414();
          v83 = v138;
          v42 = v154;
          sub_1D917993C();
          v84 = v139;
          sub_1D91799BC();
          (*(v126 + 8))(v83, v84);
          return (*(v151 + 8))(v42, v40);
        }

        LOBYTE(v155) = 8;
        sub_1D8CFFF48();
        v41 = v132;
        v42 = v154;
        sub_1D917993C();
        LOBYTE(v155) = 0;
        v43 = v134;
        v44 = v152;
        sub_1D91799CC();
        if (v44)
        {
          (*(v133 + 8))(v41, v43);
          return (*(v151 + 8))(v42, v40);
        }

        LOBYTE(v155) = 1;
        sub_1D91799CC();
        (*(v133 + 8))(v41, v43);
        return (*(v151 + 8))(v154, v40);
      }
    }
  }
}

unint64_t sub_1D8D0CD90()
{
  result = qword_1ECAB2428;
  if (!qword_1ECAB2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2428);
  }

  return result;
}

unint64_t sub_1D8D0CE14()
{
  result = qword_1ECAB2458;
  if (!qword_1ECAB2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2458);
  }

  return result;
}

unint64_t sub_1D8D0CE90()
{
  result = qword_1ECAB23E0;
  if (!qword_1ECAB23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23E0);
  }

  return result;
}

unint64_t sub_1D8D0CEF8()
{
  result = qword_1ECAB23E8;
  if (!qword_1ECAB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23E8);
  }

  return result;
}

unint64_t sub_1D8D0CF64()
{
  result = qword_1ECAB2388;
  if (!qword_1ECAB2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2388);
  }

  return result;
}

unint64_t sub_1D8D0CFB8()
{
  result = qword_1ECAB2390;
  if (!qword_1ECAB2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2390);
  }

  return result;
}

unint64_t sub_1D8D0D020()
{
  result = qword_1ECAB2430;
  if (!qword_1ECAB2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2430);
  }

  return result;
}

unint64_t sub_1D8D0D07C()
{
  result = qword_1ECAB2400;
  if (!qword_1ECAB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2400);
  }

  return result;
}

unint64_t sub_1D8D0D0D4()
{
  result = qword_1ECAB23B0;
  if (!qword_1ECAB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23B0);
  }

  return result;
}

unint64_t sub_1D8D0D12C()
{
  result = qword_1ECAB2448;
  if (!qword_1ECAB2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2448);
  }

  return result;
}

unint64_t sub_1D8D0D188()
{
  result = qword_1ECAB23C0;
  if (!qword_1ECAB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23C0);
  }

  return result;
}

unint64_t sub_1D8D0D1E4()
{
  result = qword_1ECAB2370;
  if (!qword_1ECAB2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2370);
  }

  return result;
}

unint64_t sub_1D8D0D24C()
{
  result = qword_1ECAB2470;
  if (!qword_1ECAB2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2470);
  }

  return result;
}

unint64_t sub_1D8D0D300()
{
  result = qword_1ECAB2358;
  if (!qword_1ECAB2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2358);
  }

  return result;
}

unint64_t sub_1D8D0D3A4()
{
  result = qword_1ECAB2350;
  if (!qword_1ECAB2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2350);
  }

  return result;
}

unint64_t sub_1D8D0D3F8@<X0>(unint64_t *a1@<X8>)
{
  result = EpisodeSortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1D8D0D474()
{
  result = qword_1ECAB1E68;
  if (!qword_1ECAB1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E68);
  }

  return result;
}

uint64_t EpisodeListSettings.InitialItemBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E28, &qword_1D919C4D0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E30, &qword_1D919C4D8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E38, &qword_1D919C4E0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E40, &qword_1D919C4E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D0DA60();
  sub_1D9179F1C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8F956EC();
      v9 = v21;
      sub_1D917993C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8D0DAB4();
      v9 = v24;
      sub_1D917993C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8F95740();
    sub_1D917993C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D8D0D83C()
{
  result = qword_1ECAB1EB0;
  if (!qword_1ECAB1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EB0);
  }

  return result;
}

unint64_t sub_1D8D0D8A0()
{
  result = qword_1ECAB1E88;
  if (!qword_1ECAB1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E88);
  }

  return result;
}

unint64_t sub_1D8D0D8F8()
{
  result = qword_1ECAB1E70;
  if (!qword_1ECAB1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E70);
  }

  return result;
}

unint64_t sub_1D8D0D950()
{
  result = qword_1ECAB1E78;
  if (!qword_1ECAB1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E78);
  }

  return result;
}

unint64_t sub_1D8D0D9B4()
{
  result = qword_1ECAB1E90;
  if (!qword_1ECAB1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E90);
  }

  return result;
}

unint64_t sub_1D8D0DA0C()
{
  result = qword_1ECAB1E98;
  if (!qword_1ECAB1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E98);
  }

  return result;
}

unint64_t sub_1D8D0DA60()
{
  result = qword_1ECAB1EA0;
  if (!qword_1ECAB1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EA0);
  }

  return result;
}

unint64_t sub_1D8D0DAB4()
{
  result = qword_1ECAB1EB8;
  if (!qword_1ECAB1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EB8);
  }

  return result;
}

unint64_t sub_1D8D0DB08()
{
  v1 = 0x65746F6D6F7270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646165486D697274;
  }
}

uint64_t sub_1D8D0DBA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA160, &qword_1D91B1FE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlaybackIntent.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0A8, &qword_1D91B1F30);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0B0, &qword_1D91B1F38);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0B8, &qword_1D91B1F40);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0C0, &qword_1D91B1F48);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0C8, &qword_1D91B1F50);
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0D0, &qword_1D91B1F58);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0D8, &qword_1D91B1F60);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA0E0, &qword_1D91B1F68);
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = a1[3];
  v23 = a1;
  v25 = &v36 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1D8D00B80();
  sub_1D9179F1C();
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v19 > 1)
      {
        if (v19 ^ 2 | v20)
        {
          v61 = 4;
          sub_1D90A9F4C();
          v33 = v44;
          v26 = v56;
          sub_1D917993C();
          v35 = v45;
          v34 = v46;
        }

        else
        {
          v60 = 3;
          sub_1D90A9FA0();
          v33 = v41;
          v26 = v56;
          sub_1D917993C();
          v35 = v42;
          v34 = v43;
        }
      }

      else
      {
        if (!(v19 | v20))
        {
          v57 = 0;
          sub_1D90AA048();
          v26 = v56;
          sub_1D917993C();
          (*(v36 + 8))(v17, v37);
          return (*(v55 + 8))(v25, v26);
        }

        v59 = 2;
        sub_1D8D00BD4();
        v33 = v38;
        v26 = v56;
        sub_1D917993C();
        v35 = v39;
        v34 = v40;
      }

      (*(v35 + 8))(v33, v34);
      return (*(v55 + 8))(v25, v26);
    }

    v64[0] = 6;
    sub_1D90A9E50();
    v28 = v52;
    v29 = v56;
    sub_1D917993C();
    v63 = v19;
    sub_1D90A9EA4();
    v30 = v54;
    sub_1D91799FC();
    v31 = v53;
LABEL_7:
    (*(v31 + 8))(v28, v30);
    return (*(v55 + 8))(v25, v29);
  }

  if (v21)
  {
    v62 = 5;
    sub_1D90A9EF8();
    v28 = v49;
    v29 = v56;
    sub_1D917993C();
    v30 = v51;
    sub_1D91799BC();
    v31 = v50;
    goto LABEL_7;
  }

  v58 = 1;
  sub_1D90A9FF4();
  v26 = v56;
  sub_1D917993C();
  v27 = v48;
  sub_1D91799DC();
  (*(v47 + 8))(v15, v27);
  return (*(v55 + 8))(v25, v26);
}

unint64_t sub_1D8D0E3A0()
{
  result = qword_1ECAB25C8;
  if (!qword_1ECAB25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25C8);
  }

  return result;
}

unint64_t sub_1D8D0E3F8()
{
  result = qword_1ECAB25D0;
  if (!qword_1ECAB25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25D0);
  }

  return result;
}

unint64_t sub_1D8D0E44C()
{
  result = qword_1ECAB2610;
  if (!qword_1ECAB2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2610);
  }

  return result;
}

unint64_t sub_1D8D0E4A0()
{
  result = qword_1ECAB2618;
  if (!qword_1ECAB2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2618);
  }

  return result;
}

unint64_t sub_1D8D0E4F4()
{
  result = qword_1ECAB25A0;
  if (!qword_1ECAB25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25A0);
  }

  return result;
}

unint64_t sub_1D8D0E54C()
{
  result = qword_1ECAB2588;
  if (!qword_1ECAB2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2588);
  }

  return result;
}

unint64_t sub_1D8D0E5A0()
{
  result = qword_1ECAB2590;
  if (!qword_1ECAB2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2590);
  }

  return result;
}

unint64_t sub_1D8D0E60C()
{
  result = qword_1ECAB25B0;
  if (!qword_1ECAB25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25B0);
  }

  return result;
}

unint64_t sub_1D8D0E664()
{
  result = qword_1ECAB25B8;
  if (!qword_1ECAB25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25B8);
  }

  return result;
}

void *sub_1D8D0E6B8()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD00, &qword_1D91BA5D0);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 16) = 0xD000000000000014;
  *(v3 + 24) = 0x80000001D91D7B90;
  *(v3 + 40) = v2;
  *(v3 + 48) = &type metadata for BoolTransform;
  *(v3 + 56) = &off_1F5485E80;
  v0[2] = v3;
  v4 = [v1 &selRef_setTimeStyle_ + 6];
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0xD000000000000016;
  *(v5 + 24) = 0x80000001D91D7BB0;
  *(v5 + 40) = v4;
  *(v5 + 48) = &type metadata for BoolTransform;
  *(v5 + 56) = &off_1F5485E80;
  v0[3] = v5;
  v6 = [v1 &selRef_setTimeStyle_ + 6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD08, &qword_1D91BA4B0);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  strcpy((v7 + 16), "MTSyncVersion");
  *(v7 + 30) = -4864;
  *(v7 + 48) = v6;
  *(v7 + 56) = &type metadata for StringTransform;
  *(v7 + 64) = &off_1F5485E68;
  v0[4] = v7;
  v8 = [v1 &selRef_setTimeStyle_ + 6];
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  strcpy((v9 + 16), "MTSyncVersion3");
  *(v9 + 31) = -18;
  *(v9 + 48) = v8;
  *(v9 + 56) = &type metadata for StringTransform;
  *(v9 + 64) = &off_1F5485E68;
  v0[5] = v9;
  v10 = [v1 &selRef_setTimeStyle_ + 6];
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = 0xD00000000000001DLL;
  *(v11 + 24) = 0x80000001D91D7BD0;
  *(v11 + 40) = v10;
  *(v11 + 48) = &type metadata for BoolTransform;
  *(v11 + 56) = &off_1F5485E80;
  v0[6] = v11;
  v12 = [v1 &selRef_setTimeStyle_ + 6];
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = 0xD00000000000001CLL;
  *(v13 + 24) = 0x80000001D91D7BF0;
  *(v13 + 40) = v12;
  *(v13 + 48) = &type metadata for BoolTransform;
  *(v13 + 56) = &off_1F5485E80;
  v0[7] = v13;
  v14 = [v1 &selRef_setTimeStyle_ + 6];
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = 0xD00000000000001DLL;
  *(v15 + 24) = 0x80000001D91D7C10;
  *(v15 + 40) = v14;
  *(v15 + 48) = &type metadata for BoolTransform;
  *(v15 + 56) = &off_1F5485E80;
  v0[8] = v15;
  v16 = [v1 &selRef_setTimeStyle_ + 6];
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = 0xD000000000000020;
  *(v17 + 24) = 0x80000001D91D7C30;
  *(v17 + 40) = v16;
  *(v17 + 48) = &type metadata for BoolTransform;
  *(v17 + 56) = &off_1F5485E80;
  v0[9] = v17;
  v18 = [v1 &selRef_setTimeStyle_ + 6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAD10, &qword_1D91BA4B8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0x80000001D91D7C60;
  *(v19 + 32) = 0;
  *(v19 + 40) = 1;
  *(v19 + 16) = 0xD00000000000002ALL;
  *(v19 + 48) = v18;
  *(v19 + 56) = &type metadata for DoubleTransform;
  *(v19 + 64) = &off_1F5485E98;
  v0[10] = v19;
  v20 = [v1 &selRef_setTimeStyle_ + 6];
  v21 = swift_allocObject();
  v21[4] = 0;
  v21[5] = 0;
  v21[2] = 0xD000000000000024;
  v21[3] = 0x80000001D91D7C90;
  v21[6] = v20;
  v21[7] = &type metadata for StringTransform;
  v21[8] = &off_1F5485E68;
  v0[11] = v21;
  v22 = [v1 &selRef_setTimeStyle_ + 6];
  v23 = swift_allocObject();
  *(v23 + 24) = 0x80000001D91D7CC0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  *(v23 + 16) = 0xD000000000000024;
  *(v23 + 48) = v22;
  *(v23 + 56) = &type metadata for DoubleTransform;
  *(v23 + 64) = &off_1F5485E98;
  v0[12] = v23;
  v24 = [v1 &selRef_setTimeStyle_ + 6];
  v25 = swift_allocObject();
  *(v25 + 32) = 0;
  *(v25 + 16) = 0xD000000000000016;
  *(v25 + 24) = 0x80000001D91D7CF0;
  *(v25 + 40) = v24;
  *(v25 + 48) = &type metadata for BoolTransform;
  *(v25 + 56) = &off_1F5485E80;
  v0[13] = v25;
  v26 = [v1 &selRef_setTimeStyle_ + 6];
  v27 = swift_allocObject();
  v27[4] = 0;
  v27[5] = 0;
  v27[2] = 0xD00000000000001DLL;
  v27[3] = 0x80000001D91D7D10;
  v27[6] = v26;
  v27[7] = &type metadata for StringTransform;
  v27[8] = &off_1F5485E68;
  v0[14] = v27;
  v28 = [v1 &selRef_setTimeStyle_ + 6];
  v29 = swift_allocObject();
  *(v29 + 24) = 0x80000001D91D7D30;
  *(v29 + 32) = 0;
  *(v29 + 40) = 1;
  *(v29 + 16) = 0xD00000000000002ELL;
  *(v29 + 48) = v28;
  *(v29 + 56) = &type metadata for DoubleTransform;
  *(v29 + 64) = &off_1F5485E98;
  v0[15] = v29;
  v30 = [v1 &selRef_setTimeStyle_ + 6];
  v31 = swift_allocObject();
  *(v31 + 24) = 0x80000001D91D7D60;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  *(v31 + 16) = 0xD00000000000002ELL;
  *(v31 + 48) = v30;
  *(v31 + 56) = &type metadata for DoubleTransform;
  *(v31 + 64) = &off_1F5485E98;
  v0[16] = v31;
  return v0;
}

uint64_t sub_1D8D0ECDC(uint64_t a1)
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

uint64_t sub_1D8D0ED94()
{
  (*(v0[8] + 8))(v3, v0[6], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  if ((swift_dynamicCast() & 1) != 0 && v3[5] != 1)
  {
    return v3[4];
  }

  v1 = v0[4];

  return v1;
}

id sub_1D8D0EED0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1D8D0EF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8D0EF84()
{
  result = qword_1ECAAFDF0;
  if (!qword_1ECAAFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFDF0);
  }

  return result;
}

uint64_t sub_1D8D0EFD8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8D0F08C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D0F110(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 48) = a1;
}

uint64_t sub_1D8D0F164(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 56) = a1;
}

uint64_t sub_1D8D0F1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t StorageChangeStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 8);
  v9 = type metadata accessor for StorageChangeStream.StorageChange(0, *(a2 + 16), *(a2 + 16), *(a2 + 24));
  v10 = MEMORY[0x1E69E73E0];

  return MEMORY[0x1EEDB5BC8](a1, v8, v9, v10, a3, a4);
}

uint64_t sub_1D8D0F278(double a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v41 - v4;
  v5 = sub_1D9178DFC();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5188, &qword_1D918E308);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5190, &qword_1D918E310);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5198, &qword_1D918E318);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51A0, &qword_1D918E320);
  v18 = *(v17 - 8);
  v51 = v17;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v41 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51A8, &qword_1D918E328);
  v21 = *(v20 - 8);
  v54 = v20;
  v55 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v41 - v22;
  v60[0] = v1[26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  sub_1D8CF48EC(&qword_1EDCD0B18, &qword_1ECAB4B40, &qword_1D918C100, MEMORY[0x1E695BFB0]);
  sub_1D9177B9C();

  v23 = v1[11];
  v24 = v1[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  (*(v24 + 8))(v60, v23, v24);
  v58 = v60[0];
  v59 = v60[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51B0, &qword_1D918E330);
  sub_1D8CF48EC(qword_1EDCD3D30, &qword_1ECAB51B0, &qword_1D918E330, &protocol conformance descriptor for StorageChangeStream<A>);
  sub_1D9177B9C();

  v60[0] = v1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  v25 = MEMORY[0x1E695BD60];
  sub_1D8CF48EC(&qword_1EDCD0CC8, &qword_1ECAB5190, &qword_1D918E310, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(qword_1EDCD0CF0, &qword_1ECAB5188, &qword_1D918E308, v25);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF88]);
  v26 = v42;
  v27 = v45;
  sub_1D9177C0C();
  (*(v46 + 8))(v10, v27);
  (*(v43 + 8))(v12, v26);
  v28 = v48;
  sub_1D9178DDC();
  v60[0] = v1[2];
  v29 = v60[0];
  v30 = sub_1D9178DBC();
  v31 = v53;
  (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C58, &qword_1ECAB5198, &qword_1D918E318, MEMORY[0x1E695BDE8]);
  sub_1D8D02DF0();
  v32 = v29;
  v33 = v44;
  v34 = v49;
  sub_1D9177CFC();
  sub_1D8D08A50(v31, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v56 + 8))(v28, v57);
  (*(v50 + 8))(v16, v34);
  sub_1D8CF48EC(&qword_1EDCD0C20, &qword_1ECAB51A0, &qword_1D918E320, MEMORY[0x1E695BE50]);

  v35 = v47;
  v36 = v51;
  sub_1D9177B2C();

  (*(v52 + 8))(v33, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D8E7B884;
  *(v37 + 24) = v1;
  sub_1D8CF48EC(&qword_1EDCD0EB0, &qword_1ECAB51A8, &qword_1D918E328, MEMORY[0x1E695BC80]);

  v38 = v54;
  v39 = sub_1D9177D9C();

  (*(v55 + 8))(v35, v38);
  v2[27] = v39;
}

uint64_t sub_1D8D0FB34@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D8D0FB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall MediaCacheDeleteProcessor.start()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 264);
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    if ((v5 & 0xFE) == 2)
    {
      sub_1D8D01ED4();
    }

    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));
  }

  return 1;
}

uint64_t sub_1D8D0FC40(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177E0C();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 264);
  os_unfair_lock_lock((v13 + 20));
  *(v13 + 16) = a1;
  os_unfair_lock_unlock((v13 + 20));
  aBlock[4] = a2;
  v21 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v14);
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_1D8D0FF00(void *a1)
{
  v1 = a1[33];
  os_unfair_lock_lock((v1 + 20));
  if (!*(v1 + 16))
  {
    *(v1 + 16) = 1;
  }

  os_unfair_lock_unlock((v1 + 20));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF80]);
  sub_1D9177A6C();

  sub_1D9177A6C();
}

uint64_t MediaCacheDeleteRemovalProcessor.init(managedObjectContext:workQueue:userDefaults:debounceInterval:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v50 = sub_1D9178E0C();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v46);
  v42 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v39[1] = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  v52 = a4;
  *(a4 + 24) = v14;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  MediaCacheDeleteRemovalProcessorDataSource.init(userDefaults:)(a3, v58);
  v15 = type metadata accessor for CoreDataEpisodeAndShowStorage();
  swift_allocObject();
  v16 = a1;
  v17 = a2;
  v51 = a3;
  v18 = CoreDataEpisodeAndShowStorage.init(context:)(v16);
  v20 = v58[0];
  v19 = v58[1];
  v39[0] = v58[0];
  v21 = v58[2];
  v22 = v58[3];
  v23 = v59;
  type metadata accessor for DebouncedEpisodeAndShowProcessor();
  v24 = swift_allocObject();
  v57[3] = &type metadata for MediaCacheDeleteRemovalProcessorDataSource;
  v57[4] = &protocol witness table for MediaCacheDeleteRemovalProcessorDataSource;
  v25 = swift_allocObject();
  v57[0] = v25;
  v25[2] = v20;
  v25[3] = v19;
  v44 = v21;
  v25[4] = v21;
  v25[5] = v22;
  v47 = v22;
  v25[6] = v23;
  v56[4] = &protocol witness table for CoreDataEpisodeAndShowStorage;
  v56[3] = v15;
  v56[0] = v18;
  v41 = v18;
  v55[3] = &type metadata for MediaCacheDeleteRemovalProcessorDelegate;
  v55[4] = &protocol witness table for MediaCacheDeleteRemovalProcessorDelegate;
  v55[0] = v16;
  v55[1] = v17;
  *(v24 + 152) = 0u;
  *(v24 + 168) = 0u;
  *(v24 + 184) = 0;
  *(v24 + 216) = 0u;
  *(v24 + 232) = 0u;
  *(v24 + 248) = 0;
  *(v24 + 256) = 5;
  *(v24 + 272) = 0;
  *(v24 + 280) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v26 = v23;
  v27 = v16;
  v28 = v17;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v40 = v26;
  v45 = v27;
  v43 = v28;

  *(v24 + 192) = sub_1D91778DC();
  swift_allocObject();
  *(v24 + 200) = sub_1D91778DC();
  sub_1D8CFD9D8(v57, v24 + 24);
  sub_1D8CFD9D8(v56, v24 + 64);
  sub_1D8CFD888();
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1D917946C();

  v53 = 0xD00000000000001DLL;
  v54 = 0x80000001D91CA5F0;
  MEMORY[0x1DA7298F0](v39[0], v19);
  sub_1D9177E4C();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v49 + 104))(v48, *MEMORY[0x1E69E8090], v50);
  *(v24 + 16) = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B38, &qword_1D918C0F8);
  v29 = swift_allocObject();
  *(v29 + 20) = 0;
  *(v29 + 16) = 3;
  *(v24 + 264) = v29;
  v53 = [objc_opt_self() falsePredicate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  swift_allocObject();
  *(v24 + 208) = sub_1D917795C();
  sub_1D8CFD9D8(v55, v24 + 112);
  *(v24 + 104) = 100;
  v30 = *(v24 + 96);
  __swift_project_boxed_opaque_existential_1((v24 + 64), *(v24 + 88));
  v31 = *(v24 + 48);
  v32 = *(v24 + 56);
  __swift_project_boxed_opaque_existential_1((v24 + 24), v31);
  (*(v32 + 16))(v31, v32);
  (*(v30 + 24))();

  v33 = *(v24 + 96);
  __swift_project_boxed_opaque_existential_1((v24 + 64), *(v24 + 88));
  v34 = *(v24 + 48);
  v35 = *(v24 + 56);
  __swift_project_boxed_opaque_existential_1((v24 + 24), v34);
  (*(v35 + 24))(v34, v35);
  (*(v33 + 32))();

  sub_1D8D01824(a5);
  sub_1D8D0F278(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);

  v36 = v43;

  v37 = v45;

  *(v52 + 32) = v24;
  return result;
}

uint64_t sub_1D8D10748()
{

  return swift_deallocObject();
}

Swift::Bool __swiftcall MediaCacheDeleteRemovalProcessor.start()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v3 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v3 & 1) == 0)
  {
    v4 = *(v2 + 264);
    os_unfair_lock_lock((v4 + 20));
    v5 = *(v4 + 16);
    os_unfair_lock_unlock((v4 + 20));
    if ((v5 & 0xFE) == 2)
    {
      sub_1D8D01ED4();
    }

    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));
  }

  return 1;
}

uint64_t sub_1D8D10840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8D1091C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void *sub_1D8D10A70(void *a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9D8, &qword_1D91B9668);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v32 = v29 - v5;
  v30 = sub_1D9178E0C();
  v6 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v29[0] = "expectedPodcastStatesByUuid";
  v29[1] = v11;
  sub_1D9177E4C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD7F8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v30);
  v1[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v1[3] = v12;
  v1[5] = 0;
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x1E69E7CC8];
  v1[8] = MEMORY[0x1E69E7CD0];
  v1[9] = v13;
  v1[10] = v13;
  v14 = objc_opt_self();
  v15 = @"MTPodcast";
  v16 = [v14 predicateForNotHiddenPodcasts];
  v17 = [v31 importContext];
  v18 = v1[2];
  v19 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v20 = v18;
  v21 = [v19 initWithEntityName_];

  [v21 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v22 = sub_1D91785DC();
  [v21 setSortDescriptors_];

  [v21 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9E0, &qword_1D91B9670);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;

  v23[14] = v24;
  v23[2] = 0xD00000000000001DLL;
  v23[3] = 0x80000001D91B9550;
  v23[4] = v21;
  v23[5] = v17;
  v23[6] = v20;
  v23[7] = sub_1D8D3E3D0;
  v23[8] = 0;
  v23[9] = sub_1D8DA53E0;
  v23[10] = 0;
  v23[11] = sub_1D8D38B78;
  v23[12] = 0;
  v35 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9E8, &qword_1D91B9678);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABA9F0, &unk_1D91B9680);
  sub_1D8CF48EC(qword_1EDCD2760, &qword_1ECABA9E8, &qword_1D91B9678, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v25 = v32;
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1EDCD0CE8, &qword_1ECABA9D8, &qword_1D91B9668, MEMORY[0x1E695BD60]);
  v26 = v33;
  v27 = sub_1D9177B1C();
  (*(v34 + 8))(v25, v26);
  v2[4] = v27;
  return v2;
}

void *LibraryPodcastStateDataSource.init(contextProvider:)(void *a1)
{
  v1 = sub_1D8D10A70(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D8D110D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D8D11114()
{
  result = qword_1EDCD23D8;
  if (!qword_1EDCD23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD23D8);
  }

  return result;
}

uint64_t sub_1D8D11168(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176EAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D111AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D111F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D11338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t UninitializedCurrentValueSubject.init()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1D917793C();
  (*(*(a1 - 8) + 56))(v6, 1, 1, a1);
  result = sub_1D917794C();
  *a2 = result;
  return result;
}

uint64_t CacheDomain.init(diskLocation:maxMemorySpace:notificationCenter:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v23 = a7;
  v24 = a8;
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  (*(v17 + 16))(v20, a1, v16, v18);
  CacheDomain.init(diskLocation:maxMemoryUse:notificationCenter:)(v20, v21, a3, a4, a5, a6, v23, v24, a9);
  return (*(v17 + 8))(a1, v16);
}

void CacheDomain.init(diskLocation:maxMemoryUse:notificationCenter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v48 = a6;
  v46 = a9;
  v16 = sub_1D9176C2C();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9178FBC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 * 0.1;
  if (v23 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v23 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v23 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v42 = v20;
  v43 = v16;
  v49 = a3;
  v44 = a1;
  v24 = a2;
  v25 = v23;
  v40 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = a4;
  v51 = AssociatedTypeWitness;
  v27 = v48;
  v52 = v48;
  v53 = a7;
  v28 = a7;
  v54 = a8;
  type metadata accessor for InMemoryAssetCache(0, &v50);
  v29 = a8;
  v41 = v25;
  if (v24 >= v25)
  {
    sub_1D9178FCC();
    sub_1D8D119CC(&qword_1EDCD5B10, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v30 = v42;
    v31 = sub_1D8D11AA4(v24 - v25);
    (*(v19 + 8))(v22, v30);
    v33 = v46;
    v32 = v47;
    *v46 = v31;
    v34 = v44;
    v35 = v45;
    v36 = v43;
    (*(v32 + 16))(v45, v44, v43);
    v37 = v40;
    v50 = a4;
    v51 = v40;
    v52 = v27;
    v53 = v28;
    v54 = v29;
    v38 = type metadata accessor for CacheDomain(0, &v50);
    CacheDomain.DiskCaches.init(directory:maxMemoryBuffer:)(v35, v41, a4, v37, v27, v28, v29, v33 + *(v38 + 60));

    (*(v32 + 8))(v34, v36);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D8D119CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D11A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8D11A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CacheDomain.DiskCaches.init(directory:maxMemoryBuffer:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v63 = a7;
  v64 = a2;
  v67 = a6;
  v68 = a4;
  v59 = a8;
  v60 = a5;
  v66 = a1;
  v11 = sub_1D9176C2C();
  v56 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v15 = *(v14 - 8);
  v61 = v14;
  v62 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v49 - v16;
  v17 = sub_1D9178E0C();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1D9177E9C();
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = *(v12 + 16);
  v55 = v12 + 16;
  v57 = v22;
  (v22)(a8, a1, v11, v21);
  v51 = sub_1D8CFD888();
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D917946C();

  v69 = 0xD000000000000015;
  v70 = 0x80000001D91CA7C0;
  v23 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v23);

  sub_1D9177E7C();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D8D119CC(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8090], v54);
  v54 = sub_1D9178E4C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = a3;
  v70 = AssociatedTypeWitness;
  v25 = a3;
  v50 = a3;
  v26 = v60;
  v27 = v67;
  v71 = v60;
  v72 = v67;
  v28 = v63;
  v73 = v63;
  type metadata accessor for InMemoryAssetCache(0, &v69);
  v29 = v58;
  sub_1D9177A1C();
  sub_1D8CF48EC(qword_1EDCD5C70, &qword_1ECAB4C60, &unk_1D918CD70, MEMORY[0x1E695C018]);
  v30 = v61;
  v31 = sub_1D8D11AA4(v64);
  v64 = v31;
  (*(v62 + 8))(v29, v30);
  v69 = v25;
  v70 = AssociatedTypeWitness;
  v71 = v26;
  v72 = v27;
  v32 = v26;
  v73 = v28;
  type metadata accessor for DiskAssetCache(0, &v69);
  v33 = v65;
  v34 = v66;
  v35 = v56;
  v36 = v57;
  v57(v65, v66, v56);
  LOBYTE(v69) = 1;
  v37 = v31;
  v38 = v54;
  v39 = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v33, v37, v54, 0x100000000uLL);
  v69 = v50;
  v70 = v68;
  v71 = v32;
  v72 = v67;
  v73 = v28;
  v40 = type metadata accessor for CacheDomain.DiskCaches(0, &v69);
  v41 = v59;
  *&v59[v40[15]] = v39;
  v42 = v34;
  v43 = v35;
  v36(v33, v42, v35);
  LOBYTE(v69) = 0;
  v44 = v64;
  *&v41[v40[16]] = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v33, v64, v38, 0x200uLL);
  v45 = v41;
  v46 = v66;
  v36(v33, v66, v43);
  LOBYTE(v69) = 0;
  *&v45[v40[17]] = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v33, v44, v38, 0x400uLL);
  v36(v33, v46, v43);
  LOBYTE(v69) = 0;
  *&v45[v40[18]] = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v33, v44, v38, 0x800uLL);
  LOBYTE(v69) = 0;
  *&v45[v40[19]] = DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v46, v44, v38, 0x8000uLL);
  swift_retain_n();
  v47 = v38;

  return v47;
}

uint64_t DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  DiskAssetCache.init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32));
  return v8;
}

uint64_t DiskAssetCache.init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1EDCDE890;
  v10 = sub_1D9176C2C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = v4 + qword_1EDCDE888;
  *v11 = a4;
  *(v11 + 4) = BYTE4(a4) & 1;
  *(v4 + qword_1EDCD6AC0) = a3;
  *(v4 + qword_1EDCD6AC8) = a2;
  return v4;
}

unint64_t sub_1D8D123F8()
{
  result = qword_1EDCD7B90;
  if (!qword_1EDCD7B90)
  {
    sub_1D9177E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B90);
  }

  return result;
}

double URLTaskAssetSource.init<A>(downloader:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  AssetURLSessionProtocol.eraseToAnySession()(a2, a3, &v8);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

uint64_t AnyAssetBackgroundSession.init<A>(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = *(a3 - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  result = (*(v10 + 32))(v12 + v11, a1, a3);
  *a5 = sub_1D8EB4704;
  a5[1] = v12;
  return result;
}

uint64_t sub_1D8D125B8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t AnyAssetSource.init<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1)@<X8>)
{
  v12 = *(a4 - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  result = (*(v12 + 32))(v14 + v13, a1, a4);
  *a6 = sub_1D8E6B570;
  a6[1] = v14;
  return result;
}

uint64_t sub_1D8D12738()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

id AddingPodcastStateDataSource.init()()
{
  v1 = v0;
  v15 = sub_1D9178E0C();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = &v0[OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate];
  *v7 = 0;
  *(v7 + 1) = 0;
  v14 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_refreshQueue;
  v8 = sub_1D8CFD888();
  v13[1] = &unk_1D91B92A0;
  v13[2] = v8;
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = sub_1D9178E4C();
  v9 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v1[v9] = v10;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows] = MEMORY[0x1E69E7CD0];
  v11 = type metadata accessor for AddingPodcastStateDataSource();
  v16.receiver = v1;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t static FeedManagerBagConfiguration.getConfigurationOrLocalDefault(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D8D5E1C8;
  *(v7 + 24) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D5A2A8;
  *(v8 + 24) = v7;
  v11[4] = sub_1D8D596B4;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D5960C;
  v11[3] = &block_descriptor_17_4;
  v9 = _Block_copy(v11);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8D12C64()
{

  return swift_deallocObject();
}

void sub_1D8D12CA8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1D8D12D1C(uint64_t a1)
{
  sub_1D8CF1DB0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1D8D12E34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D12EBC()
{
  v1 = v0[14];
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(0, v5);
  sub_1D8D0566C(sub_1D8D3E3B4, v0, v1, v3);
  return *&v5[0];
}

uint64_t sub_1D8D12F7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v6 = *(v4 + 96);
    v23[0] = *(v4 + 80);
    v23[1] = v6;
    v20 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(0, v23);
    v7 = a1[3];
    v24 = a1[2];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[8];
    v21 = a1[9];
    v22 = a1[7];
    v12 = a1[10];
    v19 = a1[11];
    v13 = a1[12];

    v18 = v8;
    v14 = v9;
    v15 = v10;

    v16 = objc_allocWithZone(v20);
    v17 = sub_1D8D30F88(v24, v7, v18, v14, v15, v22, v11, v21, v12, v19, v13);
    swift_unknownObjectWeakAssign();
    result = v17;
  }

  *a2 = result;
  return result;
}

char *sub_1D8D1313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v8 = *v7;
  v9 = *(*v7 + 88);
  v10 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = *(v8 + 80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = *(v8 + 96);
  v19 = type metadata accessor for ProducerInner.State(0, v13, v9, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v7 + 2) = v23;
  (*(v14 + 16))(v17, v28, v13);
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  v24 = sub_1D91777EC();
  sub_1D8D05D9C(v17, v12, v29, v30, v31, v32, v33, v34, v22, v24, v13, v9, v18);
  active = type metadata accessor for ProducerInner.ActiveState(0, v13, v9, v18);
  (*(*(active - 8) + 56))(v22, 0, 1, active);
  (*(v20 + 32))(&v7[*(*v7 + 112)], v22, v19);
  return v7;
}

id sub_1D8D13428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9176EAC();
  v4 = *(a1 + 96);
  v7[0] = *(a1 + 80);
  v7[1] = v4;
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher(255, v7);
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  result = sub_1D8D134AC(a2);
  *(a2 + v5) = result;
  return result;
}

id sub_1D8D134AC(uint64_t a1)
{
  sub_1D9176E9C();

  return v2;
}

uint64_t sub_1D8D134E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id static PurchaseControllerWrapper.sharedInstance.getter()
{
  if (qword_1EDCD2AC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2AC8;

  return v1;
}

id sub_1D8D135CC()
{
  result = [objc_allocWithZone(type metadata accessor for PurchaseControllerWrapper()) init];
  qword_1EDCD2AC8 = result;
  return result;
}

void sub_1D8D135FC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1D91791BC();
  if (v1 <= 0x3F)
  {
    sub_1D8D344B4(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for MusicSubscriptionInfoSyncUtil(uint64_t a1)
{
  result = qword_1EDCD21F0;
  if (!qword_1EDCD21F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D13794(uint64_t a1)
{
  result = sub_1D9176E3C();
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

Class __getASDSubscriptionEntitlementsClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDSubscriptionEntitlementsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getASDSubscriptionEntitlementsClass_block_invoke_cold_1();
    return AppStoreDaemonLibrary();
  }

  return result;
}

uint64_t AppStoreDaemonLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E856B080;
    v5 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AppStoreDaemonLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1D8D13AAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1D8D13AD8(__int128 *a1)
{
  v2 = v1;
  v4 = 0;
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  v171 = *MEMORY[0x1E69E7D40] & v5;
  v160 = sub_1D9177E0C();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v157 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D9177E9C();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = *((v6 & v5) + 0x58);
  v179 = sub_1D91791BC();
  v178 = sub_1D91791BC();
  v170 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v177 = v154 - v9;
  v172 = *((v6 & v5) + 0x50);
  v180 = sub_1D91791BC();
  v176 = sub_1D91791BC();
  v169 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = v154 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v182 = v154 - v12;
  v187 = sub_1D917705C();
  v184 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1D917734C();
  v14 = *(v185 - 1);
  MEMORY[0x1EEE9AC00](v185);
  v16 = v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v154 - v18;
  v20 = sub_1D917739C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0F68 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v20, qword_1ECAB0F70);
  v167 = v21;
  v25 = *(v21 + 16);
  v168 = v20;
  v25(v23, v24, v20);
  sub_1D917737C();
  sub_1D917731C();
  v26 = v2;
  v166 = v23;
  v27 = sub_1D917737C();
  v28 = sub_1D9178F5C();

  v29 = sub_1D917918C();
  v174 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v201 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1D8CFA924(*&v26[qword_1ECAB85F8], *&v26[qword_1ECAB85F8 + 8], &v201);
    v32 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v27, v28, v32, "FRP.RegenerateResults", "Identifier: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v33 = v185;
  (*(v14 + 16))(v16, v19, v185);
  sub_1D91773FC();
  swift_allocObject();
  v34 = sub_1D91773EC();
  (*(v14 + 8))(v19, v33);
  v183 = v26;
  v35 = [*&v26[qword_1ECAB8630] sections];
  v36 = MEMORY[0x1E69E7CC0];
  v165 = v34;
  if (v35)
  {
    v37 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8678, &qword_1D91A2230);
    v38 = sub_1D91785FC();

    if (v38 >> 62)
    {
      v39 = sub_1D917935C();
      if (v39)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_8:
        *&v201 = v36;
        result = sub_1D8D4214C(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
          return result;
        }

        v41 = 0;
        v36 = v201;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x1DA72AA90](v41, v38);
          }

          else
          {
            v42 = *(v38 + 8 * v41 + 32);
            swift_unknownObjectRetain();
          }

          v43 = [v42 numberOfObjects];
          swift_unknownObjectRelease();
          *&v201 = v36;
          v45 = *(v36 + 16);
          v44 = *(v36 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1D8D4214C(v44 > 1, v45 + 1, 1);
            v36 = v201;
          }

          ++v41;
          *(v36 + 16) = v45 + 1;
          *(v36 + 8 * v45 + 32) = v43;
        }

        while (v39 != v41);
      }
    }
  }

  WitnessTable = v182;
  v47 = *(v36 + 16);
  if (v47)
  {
    v48 = 0;
    v49 = (v36 + 32);
    do
    {
      v50 = *v49++;
      v51 = __OFADD__(v48, v50);
      v48 += v50;
      if (v51)
      {
        goto LABEL_85;
      }

      --v47;
    }

    while (v47);
  }

  else
  {
    v48 = 0;
  }

  sub_1D8D42180();
  if (v48 >= v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v48;
  }

  v185 = v54;
  v164 = v48;
  if (v54 > 10000)
  {
    if (qword_1EDCD0F80 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_87;
  }

  if (v54 < 0)
  {
    goto LABEL_86;
  }

  if (v54)
  {
    goto LABEL_36;
  }

  v63 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *&v201 = v63;
    MEMORY[0x1EEE9AC00](v62);
    v81 = v183;
    v154[-2] = v183;
    v82 = v81;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8670, &unk_1D91A2220);
    v84 = v171;
    v85 = *(v171 + 96);
    v186 = MEMORY[0x1E69E6340];
    v86 = sub_1D8CF48EC(&qword_1ECAAFFB8, &qword_1ECAB8670, &unk_1D91A2220, MEMORY[0x1E69E6340]);
    v88 = sub_1D8D175AC(sub_1D8D41844, &v154[-4], v83, v85, MEMORY[0x1E69E73E0], v86, MEMORY[0x1E69E7410], v87);

    v185 = v154;
    *&v201 = v88;
    MEMORY[0x1EEE9AC00](v89);
    v90 = v174;
    v154[-2] = v82;
    v154[-1] = v90;
    sub_1D91786FC();
    v187 = sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    v91 = v172;
    v92 = v173;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    swift_getWitnessTable();
    v94 = sub_1D917843C();

    MEMORY[0x1EEE9AC00](v95);
    v154[-4] = v91;
    v154[-3] = v92;
    v96 = *(v84 + 104);
    *&v181 = v85;
    v154[-2] = v85;
    v154[-1] = v96;
    v97 = Array.groupBy<A>(keyForValue:)(sub_1D8D38B84, &v154[-6], v94, TupleTypeMetadata3, v92, v96);

    v185 = v154;
    *&v201 = v97;
    MEMORY[0x1EEE9AC00](v98);
    v154[-4] = v91;
    v154[-3] = v92;
    v154[-2] = v85;
    v154[-1] = v96;
    sub_1D91786FC();
    swift_getTupleTypeMetadata2();
    v99 = sub_1D91786FC();
    v100 = type metadata accessor for FRPSectionInfo(0, v187, v92, v96);
    WitnessTable = swift_getWitnessTable();
    v154[1] = v100;
    v171 = sub_1D8D175AC(sub_1D8D38DB8, &v154[-6], v99, v100, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v101);
    *&v201 = v97;
    MEMORY[0x1EEE9AC00](v171);
    v154[-4] = v91;
    v154[-3] = v92;
    v154[-2] = v181;
    v154[-1] = v96;
    v163 = v96;
    v102 = type metadata accessor for FRPSectionInfo(0, v91, v92, v96);
    v104 = sub_1D8D175AC(sub_1D8D39024, &v154[-6], v99, v102, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v103);

    swift_beginAccess();
    v105 = sub_1D8D05854(&qword_1EDCD09C8, MEMORY[0x1E69E81B8]);
    nullsub_1();
    *&v201 = v106;
    sub_1D917809C();

    swift_getWitnessTable();
    sub_1D9178B5C();
    v107 = v174;
    v161 = *(v174 + 1);
    v108 = sub_1D9178ABC();
    *(v107 + 5) = sub_1D9178B0C();
    v186 = v105;
    v162 = v104;
    if ((v108 & 0xC000000000000001) != 0)
    {
      sub_1D917931C();
      sub_1D9178B3C();
      v108 = v196;
      v182 = v197;
      v109 = v198;
      v110 = v199;
      v111 = v200;
    }

    else
    {
      v110 = 0;
      v112 = -1 << *(v108 + 32);
      v113 = *(v108 + 56);
      v182 = (v108 + 56);
      v109 = ~v112;
      v114 = -v112;
      v115 = v114 < 64 ? ~(-1 << v114) : -1;
      v111 = v115 & v113;
    }

    v116 = v170;
    v170 = v109;
    v117 = (v109 + 64) >> 6;
    v185 = (v169 + 8);
    v184 = v116 + 8;
    v36 = v187;
    if (v108 < 0)
    {
      break;
    }

LABEL_58:
    v118 = v111;
    v4 = v110;
    if (v111)
    {
LABEL_63:
      v120 = (v118 - 1) & v118;
      WitnessTable = *(*(v108 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v118)))));
      if (WitnessTable)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    }

    v119 = v110;
    while (1)
    {
      v4 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v4 >= v117)
      {
        goto LABEL_69;
      }

      v118 = *&v182[8 * v4];
      ++v119;
      if (v118)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_30:
    v55 = sub_1D917744C();
    __swift_project_value_buffer(v55, qword_1EDCD0F88);
    v56 = v183;
    v57 = sub_1D917741C();
    v58 = sub_1D9178CFC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v201 = v60;
      *v59 = 136315394;
      *(v59 + 4) = sub_1D8CFA924(*&v56[qword_1ECAB85F8], *&v56[qword_1ECAB85F8 + 8], &v201);
      *(v59 + 12) = 2048;
      v54 = v185;
      *(v59 + 14) = v185;
      _os_log_impl(&dword_1D8CEC000, v57, v58, "FRC %s has requested %ld items. Loading this many items may cause performance issues for the entire app.", v59, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      v61 = v60;
      WitnessTable = v182;
      MEMORY[0x1DA72CB90](v61, -1, -1);
      MEMORY[0x1DA72CB90](v59, -1, -1);
    }

    else
    {

      v54 = v185;
    }

LABEL_36:
    v64 = 0;
    v65 = (v184 + 56);
    v66 = (v184 + 32);
    v63 = MEMORY[0x1E69E7CC0];
    *&v53 = 138412290;
    v181 = v53;
    do
    {
      sub_1D8D4229C(v64, v36);
      if (v4)
      {
        if (qword_1EDCD0F80 != -1)
        {
          swift_once();
        }

        v67 = sub_1D917744C();
        __swift_project_value_buffer(v67, qword_1EDCD0F88);
        v68 = v4;
        v69 = sub_1D917741C();
        v70 = sub_1D9178D0C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v71 = v181;
          v73 = v4;
          v74 = _swift_stdlib_bridgeErrorToNSError();
          *(v71 + 4) = v74;
          *v72 = v74;
          _os_log_impl(&dword_1D8CEC000, v69, v70, "FRC failed to create IndexPath with error: %@", v71, 0xCu);
          sub_1D8D08A50(v72, &unk_1ECAB6C70, &unk_1D9188C30);
          v75 = v72;
          v54 = v185;
          MEMORY[0x1DA72CB90](v75, -1, -1);
          v76 = v71;
          WitnessTable = v182;
          MEMORY[0x1DA72CB90](v76, -1, -1);
        }

        else
        {
        }

        (*v65)(WitnessTable, 1, 1, v187);
        sub_1D8D08A50(WitnessTable, &qword_1ECAB8668, &qword_1D91A2218);
        v4 = 0;
      }

      else
      {
        v77 = v187;
        (*v65)(WitnessTable, 0, 1, v187);
        v78 = *v66;
        (*v66)(v186, WitnessTable, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_1D8D4181C(0, *(v63 + 2) + 1, 1, v63);
        }

        v80 = *(v63 + 2);
        v79 = *(v63 + 3);
        if (v80 >= v79 >> 1)
        {
          v63 = sub_1D8D4181C((v79 > 1), v80 + 1, 1, v63);
        }

        *(v63 + 2) = v80 + 1;
        v78(&v63[((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v80], v186, v187);
        v54 = v185;
      }

      ++v64;
    }

    while (v54 != v64);
  }

  while (1)
  {
    v121 = sub_1D917938C();
    if (!v121)
    {
      break;
    }

    aBlock = v121;
    swift_dynamicCast();
    WitnessTable = v201;
    v4 = v110;
    v120 = v111;
    if (!v201)
    {
      break;
    }

LABEL_67:
    aBlock = WitnessTable;
    swift_beginAccess();
    sub_1D91780DC();
    v122 = v175;
    sub_1D917807C();
    (*v185)(v122, v176);
    swift_endAccess();
    aBlock = WitnessTable;
    swift_beginAccess();
    sub_1D91780DC();
    v123 = v177;
    sub_1D917807C();
    (*v184)(v123, v178);
    swift_endAccess();

    v110 = v4;
    v111 = v120;
    if ((v108 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_69:
  sub_1D8D1B144(v108);
  v124 = v174;
  v125 = v173;
  v126 = v172;
  v127 = v183;
  v128 = v181;
  v129 = v163;
  if ((*(v174 + 56) & 1) == 0)
  {
    if (!*&v183[qword_1EDCD1620] || (v188 = sub_1D8D05854(&qword_1EDCD09C0, MEMORY[0x1E69E81C0]), , , swift_getWitnessTable(), v130 = sub_1D917870C(), , , (v130 & 1) == 0))
    {
      *&v201 = v126;
      *(&v201 + 1) = v125;
      *&v202 = v128;
      *(&v202 + 1) = v129;
      type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &v201);
      *(v124 + 56) = 1;
    }
  }

  v131 = v164;
  if ((v161 & 0xC000000000000001) != 0)
  {
    v132 = sub_1D917935C();
  }

  else
  {
    v132 = *(v161 + 16);
  }

  v187 = v132;
  if (v132 < v131 != v127[qword_1EDCD1638])
  {
    *&v201 = v126;
    *(&v201 + 1) = v125;
    *&v202 = v128;
    *(&v202 + 1) = v129;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &v201);
    *(v124 + 56) = 1;
  }

  *(v124 + 6) = v131;
  v133 = v131;
  if (v131 != *&v127[qword_1EDCD1610])
  {
    *&v201 = v126;
    *(&v201 + 1) = v125;
    *&v202 = v128;
    *(&v202 + 1) = v129;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &v201);
    *(v124 + 56) = 1;
  }

  v134 = v124[1];
  v201 = *v124;
  v202 = v134;
  *v203 = v124[2];
  *&v203[9] = *(v124 + 41);
  v135 = v129;
  v136 = *&v127[qword_1ECAB85F8];
  v137 = *&v127[qword_1ECAB85F8 + 8];
  aBlock = v126;
  v191 = v125;
  v192 = v128;
  v193 = v135;
  v138 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &aBlock);
  sub_1D8D17CD0(v136, v137, v138);
  v139 = qword_1ECAB8638;
  v140 = swift_beginAccess();
  v141 = *&v127[v139];
  MEMORY[0x1EEE9AC00](v140);
  v154[-6] = v126;
  v154[-5] = v125;
  v154[-4] = v128;
  v154[-3] = v135;
  v154[-2] = v124;
  v154[-1] = v133;

  aBlock = v126;
  v191 = v125;
  v192 = v128;
  v193 = v135;
  v142 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging(0, &aBlock);
  Synchronized.modify(_:)(sub_1D8D334F4, &v154[-8], v141, v142);

  if (*(v124 + 56) == 1)
  {
    v143 = v187 < v133;
    *&v127[qword_1EDCD1620] = v171;

    v127[qword_1EDCD1638] = v143;
    *&v127[qword_1EDCD1610] = v133;
    v187 = *&v127[qword_1ECAB8610];
    v144 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v145 = swift_allocObject();
    *(v145 + 16) = v126;
    *(v145 + 24) = v125;
    *(v145 + 32) = v128;
    *(v145 + 40) = v135;
    v146 = v162;
    *(v145 + 48) = v144;
    *(v145 + 56) = v146;
    *(v145 + 64) = v143;
    *(v145 + 72) = v133;
    v194 = sub_1D8D4BF44;
    v195 = v145;
    aBlock = MEMORY[0x1E69E9820];
    v191 = 1107296256;
    v192 = sub_1D8CF5F60;
    v193 = &block_descriptor_69;
    v147 = _Block_copy(&aBlock);

    v148 = v155;
    sub_1D9177E4C();
    v189 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v149 = v157;
    v150 = v160;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v148, v149, v147);
    _Block_release(v147);
    (*(v159 + 8))(v149, v150);
    (*(v156 + 8))(v148, v158);
  }

  else
  {
  }

  v151 = v168;
  v152 = v167;
  v153 = v166;
  sub_1D8D335AC(v166, v165);

  return (*(v152 + 8))(v153, v151);
}

uint64_t sub_1D8D15508()
{

  return swift_deallocObject();
}

char *sub_1D8D15568(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_1D8D15664(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8D15674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D8D156BC(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v126 = a6;
  v134 = a5;
  v137 = a2;
  v132 = a1;
  v8 = *a3;
  v9 = *MEMORY[0x1E69E7D40];
  v127 = *MEMORY[0x1E69E7D40] & *a3;
  v115 = *(*((v9 & v8) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v111 = &v107 - v10;
  v128 = v11;
  v12 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v114 = &v107 - v13;
  v119 = sub_1D91791BC();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v125 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v107 - v16;
  v136 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v107 - v22;
  v130 = *((v9 & v8) + 0x50);
  v23 = sub_1D91791BC();
  v122 = sub_1D91791BC();
  v24 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122);
  v124 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v107 - v27;
  v29 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v135 = &v107 - v33;
  swift_beginAccess();
  v138 = a4;
  v34 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v35 = sub_1D8D05854(&qword_1EDCD09C8, MEMORY[0x1E69E81B8]);

  v36 = a4;
  sub_1D91780FC();

  v37 = v29;

  v38 = (*(v29 + 48))(v28, 1, v23);
  v131 = v34;
  v129 = v35;
  if (v38 == 1)
  {
    v121 = v36;
    v123 = v12;
    result = (*(v24 + 8))(v28, v122);
    v40 = v136;
    goto LABEL_5;
  }

  v122 = *(v29 + 32);
  v110 = v29 + 32;
  v122(v135, v28, v23);
  swift_beginAccess();
  v138 = v36;
  v41 = v36;

  v42 = v133;
  sub_1D91780FC();

  v40 = v136;
  if ((*(v136 + 48))(v42, 1, v12) != 1)
  {
    v119 = v23;
    v60 = v40 + 32;
    v61 = *(v40 + 32);
    v62 = v121;
    v61(v121, v133, v12);
    v63 = v134;
    v64 = v41;
    v65 = *v134;

    v133 = v64;
    LOBYTE(v64) = sub_1D8DA4C5C(v64, v65);

    if ((v64 & 1) == 0)
    {
      v122(v132, v135, v119);
      return (v61)(v137, v62, v12);
    }

    v109 = v61;
    v118 = v60;
    v123 = v12;
    v66 = v63[3];
    v44 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v44)
    {
      goto LABEL_26;
    }

    v63[3] = v67;
    v68 = v120;
    v69 = (*(a3 + qword_1ECAB8618))(v126);
    v126 = &v107;
    *&v70 = MEMORY[0x1EEE9AC00](v69);
    v71 = v128;
    *(&v107 - 6) = v130;
    *(&v107 - 5) = v71;
    v73 = *(v127 + 96);
    v72 = *(v127 + 104);
    *(&v107 - 4) = v73;
    *(&v107 - 3) = v72;
    *(&v107 - 1) = v70;
    v74 = v117;
    sub_1D8D349E4(sub_1D8FBD994, (&v107 - 8), MEMORY[0x1E69E73E0], v71, v75, v117);
    if (sub_1D8DA50E8(v135, v68))
    {
      v138 = v130;
      v139 = v71;
      v140 = v73;
      v141 = v72;
      type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &v138);
      *(v63 + 56) = 1;
      v76 = v133;
LABEL_24:
      v97 = v124;
      v98 = v119;
      (*(v37 + 16))(v124, v120, v119);
      (*(v37 + 56))(v97, 0, 1, v98);
      v142 = v76;
      swift_beginAccess();
      sub_1D91780DC();
      v99 = v76;
      sub_1D917810C();
      swift_endAccess();
      v100 = v136;
      v101 = v37;
      v102 = v125;
      v103 = v74;
      v104 = v74;
      v105 = v123;
      (*(v136 + 16))(v125, v103, v123);
      (*(v100 + 56))(v102, 0, 1, v105);
      v142 = v99;
      swift_beginAccess();
      sub_1D91780DC();
      v106 = v99;
      sub_1D917810C();
      swift_endAccess();
      (*(v100 + 8))(v121, v105);
      (*(v101 + 8))(v135, v98);
      v122(v132, v120, v98);
      return v109(v137, v104, v105);
    }

    v126 = v72;
    v108 = v73;
    v127 = v37;
    v77 = *(TupleTypeMetadata2 + 48);
    v78 = *(v136 + 16);
    v79 = v114;
    v80 = v123;
    v78();
    (v78)(&v79[v77], v121, v80);
    v81 = v115;
    v82 = *(v115 + 48);
    if (v82(v79, 1, v71) == 1)
    {
      v83 = v82(&v79[v77], 1, v71);
      v37 = v127;
      v84 = v134;
      v85 = v126;
      if (v83 == 1)
      {
        result = (*(v136 + 8))(v79, v123);
        v74 = v117;
LABEL_21:
        v95 = v84[4];
        v44 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v44)
        {
LABEL_27:
          __break(1u);
          return result;
        }

        v84[4] = v96;
        goto LABEL_23;
      }
    }

    else
    {
      (v78)(v113, v79, v80);
      v86 = v77;
      v87 = v82(&v79[v77], 1, v71);
      v88 = v80;
      v89 = v79;
      v90 = v71;
      v85 = v126;
      if (v87 != 1)
      {
        v91 = v111;
        (*(v81 + 32))(v111, &v89[v86], v90);
        v92 = v113;
        v93 = sub_1D91781BC();
        v94 = *(v81 + 8);
        v94(v91, v90);
        v94(v92, v90);
        result = (*(v136 + 8))(v89, v88);
        v37 = v127;
        v84 = v134;
        v74 = v117;
        if (v93)
        {
          goto LABEL_21;
        }

LABEL_19:
        v138 = v130;
        v139 = v128;
        v140 = v108;
        v141 = v85;
        type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update(0, &v138);
        *(v84 + 56) = 1;
LABEL_23:
        v76 = v133;
        goto LABEL_24;
      }

      (*(v81 + 8))(v113, v71);
      v37 = v127;
      v84 = v134;
      v79 = v89;
    }

    (*(v112 + 8))(v79, TupleTypeMetadata2);
    v74 = v117;
    goto LABEL_19;
  }

  v121 = v36;
  v123 = v12;
  (*(v37 + 8))(v135, v23);
  result = (*(v118 + 8))(v133, v119);
LABEL_5:
  v43 = v134[2];
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  v46 = v130;
  if (v44)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v134[2] = v45;
  v47 = v132;
  v48 = (*(a3 + qword_1ECAB8618))(v126);
  *&v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = v128;
  *(&v107 - 6) = v46;
  *(&v107 - 5) = v50;
  *(&v107 - 2) = *(v127 + 96);
  *(&v107 - 1) = v49;
  v51 = v37;
  sub_1D8D349E4(sub_1D8D38B48, (&v107 - 8), MEMORY[0x1E69E73E0], v50, v52, v137);
  v53 = *(v37 + 16);
  v54 = v124;
  v53(v124, v47, v23);
  (*(v51 + 56))(v54, 0, 1, v23);
  v55 = v121;
  v142 = v121;
  swift_beginAccess();
  sub_1D91780DC();
  v56 = v55;
  sub_1D917810C();
  swift_endAccess();
  v57 = v125;
  v58 = v123;
  (*(v40 + 16))(v125, v137, v123);
  (*(v40 + 56))(v57, 0, 1, v58);
  v142 = v56;
  swift_beginAccess();
  sub_1D91780DC();
  v59 = v56;
  sub_1D917810C();
  return swift_endAccess();
}

void sub_1D8D1665C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4[2] = *(a2 + 16);
  v4[3] = a1;
  sub_1D8D056BC(sub_1D8D3E424, v4, v3);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12PodcastStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8D166F4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v55 = a3;
  v48 = *(*((*MEMORY[0x1E69E7D40] & *v3) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v45 - v6;
  v9 = *(*((v8 & v7) + 0x50) - 8);
  v49 = *((v8 & v7) + 0x50);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v12;
  v54 = v11;
  v13 = sub_1D91791BC();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = sub_1D91791BC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v26 = [a1 objectID];
  sub_1D8D418D4(&v56, v26);

  v27 = a2;
  v28 = v49;
  sub_1D8D156BC(v25, v17, v3, v26, v27, a1);
  v29 = v25;
  v30 = v50;
  (*(v19 + 32))(v21, v29, v18);
  if ((*(v30 + 48))(v21, 1, v28) == 1)
  {
    (*(v51 + 8))(v17, v52);

    (*(v19 + 8))(v21, v18);
LABEL_5:
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    return (*(*(TupleTypeMetadata3 - 8) + 56))(v55, 1, 1, TupleTypeMetadata3);
  }

  v31 = v26;
  v32 = *(v30 + 32);
  v32(v53, v21, v28);
  v33 = v51;
  v34 = v46;
  v35 = v17;
  v36 = v52;
  (*(v51 + 32))(v46, v35, v52);
  v37 = v54;
  if ((*(v48 + 48))(v34, 1, v54) == 1)
  {
    (*(v30 + 8))(v53, v28);

    (*(v33 + 8))(v34, v36);
    goto LABEL_5;
  }

  v52 = *(v48 + 32);
  v52(v47, v34, v37);
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  v40 = v37;
  v41 = swift_getTupleTypeMetadata3();
  v42 = *(v41 + 48);
  v43 = *(v41 + 64);
  v44 = v55;
  v32(v55, v53, v28);
  v52(&v44[v42], v47, v40);
  *&v44[v43] = v31;
  return (*(*(v41 - 8) + 56))(v44, 0, 1, v41);
}

uint64_t Array.groupBy<A>(keyForValue:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a1;
  v75 = a2;
  v9 = sub_1D91786FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = &v58 - v10;
  v60 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v79 = sub_1D91791BC();
  v16 = *(v79 - 1);
  MEMORY[0x1EEE9AC00](v79);
  v18 = &v58 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v59 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  v66 = a3;
  v84 = a3;
  swift_getWitnessTable();
  v76 = v9;
  sub_1D9178BDC();
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v16 + 8))(v18, v79);
    swift_getTupleTypeMetadata2();
    return sub_1D917866C();
  }

  v68 = *(v19 + 32);
  v69 = v19 + 32;
  v68(v30, v18, a4);
  v32 = TupleTypeMetadata2;
  v84 = sub_1D9177FFC();
  v80 = v15;
  v74(v30);
  v33 = sub_1D9177FFC();
  v83 = v33;
  v34 = sub_1D91786AC();
  v70 = v19;
  v58 = v30;
  if (v34)
  {
    v35 = 0;
    v79 = (v19 + 16);
    v62 = (v60 + 16);
    v77 = (v60 + 8);
    v36 = (v19 + 8);
    v37 = v66;
    v63 = a4;
    v67 = v26;
    v61 = (v19 + 8);
    while (1)
    {
      v42 = sub_1D917868C();
      sub_1D917862C();
      if (v42)
      {
        v43 = *(v70 + 16);
        v43(v26, (v37 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v35), a4);
        v44 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1D91794BC();
        if (v59 != 8)
        {
          __break(1u);
          return result;
        }

        v82 = result;
        v43 = *v79;
        (*v79)(v26, &v82, a4);
        swift_unknownObjectRelease();
        v44 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v52 = a5;
          v33 = v83;
          v32 = TupleTypeMetadata2;
          goto LABEL_16;
        }
      }

      v78 = v43;
      v45 = v81;
      v68(v81, v26, a4);
      v46 = v72;
      v74(v45);
      if ((sub_1D91781BC() & 1) == 0)
      {
        v47 = v83;
        v48 = v64;
        v49 = *(TupleTypeMetadata2 + 48);
        v50 = *v62;
        (*v62)(v64, v80, a5);
        *&v48[v49] = v47;
        v37 = v66;
        v51 = v80;
        sub_1D91786FC();
        sub_1D91786BC();
        (*v77)(v51, a5);
        v50(v51, v46, a5);
        v36 = v61;
        a4 = v63;
        v83 = sub_1D917866C();
      }

      v38 = v37;
      v39 = v81;
      v78(v71, v81, a4);
      sub_1D91786BC();
      (*v77)(v46, a5);
      v40 = v39;
      v37 = v38;
      (*v36)(v40, a4);
      v41 = sub_1D91786AC();
      ++v35;
      v26 = v67;
      if (v44 == v41)
      {
        goto LABEL_14;
      }
    }
  }

  v52 = a5;
LABEL_16:
  v53 = *(v32 + 48);
  v54 = v60;
  v55 = v64;
  v56 = v80;
  (*(v60 + 16))(v64, v80, v52);
  *&v55[v53] = v33;
  sub_1D91786FC();
  sub_1D91786BC();
  swift_getTupleTypeMetadata2();
  v57 = sub_1D917963C();

  (*(v54 + 8))(v56, v52);
  (*(v70 + 8))(v58, a4);
  return v57;
}

uint64_t sub_1D8D17438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, TupleTypeMetadata3, v9);
  v13 = *(TupleTypeMetadata3 + 48);

  (*(*(a3 - 8) + 32))(a4, &v11[v13], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_1D8D175AC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D9178B9C();
  if (!v19)
  {
    return sub_1D917866C();
  }

  v41 = v19;
  v45 = sub_1D917960C();
  v32 = sub_1D917961C();
  sub_1D91795BC();
  result = sub_1D9178B8C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D9178BFC();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D91795FC();
      result = sub_1D9178BBC();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D179CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata3, v9);
  v13 = *(TupleTypeMetadata3 + 48);
  *a4 = *&v11[*(TupleTypeMetadata3 + 64)];
  (*(*(a3 - 8) + 8))(&v11[v13], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_1D8D17B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata3, v9);
  v13 = *(TupleTypeMetadata3 + 48);

  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

void sub_1D8D17CD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F88);
  v9 = *(a3 - 8);
  (*(v9 + 16))(v16, v3, a3);

  v10 = sub_1D917741C();
  v11 = sub_1D9178CEC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136316674;
    *(v12 + 4) = sub_1D8CFA924(a1, a2, v16);
    *(v12 + 12) = 1024;
    *(v12 + 14) = *(v4 + 56) & 1;
    v14 = *(v4 + 8);
    *(v12 + 20) = *(v4 + 16);
    *(v12 + 30) = *(v4 + 24);
    *(v12 + 40) = *(v4 + 40);
    *(v12 + 18) = 2048;
    *(v12 + 28) = 2048;
    *(v12 + 38) = 2048;
    *(v12 + 48) = 2048;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1D917935C();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(v12 + 50) = v15;
    *(v12 + 58) = 2048;
    *(v12 + 60) = *(v4 + 48);
    (*(v9 + 8))(v4, a3);
    _os_log_impl(&dword_1D8CEC000, v10, v11, "FetchedResultsPublisher (%s):\nUpdate Stats\n    Update pushed: %{BOOL}d\n    Added to cache: %ld\n    Items updated: %ld\n    Items removed: %ld\n    Total paged items: %ld\n    Total items in DB: %ld", v12, 0x44u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v4, a3);
  }
}

uint64_t sub_1D8D17F20@<X0>(uint64_t *a2@<X8>)
{

  v4 = sub_1D8D17F68(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_1D8D17F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D18038();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for LibraryPodcastStateDataSource.State, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_1D8D1808C(v13, v10);
      sub_1D8D180E8(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_1D8D183D4(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1D8D18038()
{
  result = qword_1EDCD23E0;
  if (!qword_1EDCD23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD23E0);
  }

  return result;
}

uint64_t sub_1D8D180E8(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1D9179DBC();
  sub_1D910DB90(v56);
  v5 = sub_1D9179E1C();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    v11 = a2[1];
    v48 = v4;
    v12 = *(v4 + 48);
    v51 = *a2;
    v52 = v11;
    do
    {
      v13 = v12 + 72 * v8;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      v18 = *(v13 + 48);
      v53 = *(v13 + 64);
      v54 = *(v13 + 56);
      if (*v13 != v10 || *(v13 + 8) != v11)
      {
        v20 = v9;
        v21 = a2;
        v22 = v6;
        v23 = v12;
        v24 = v8;
        v25 = *(v13 + 32);
        v26 = *(v13 + 16);
        v27 = *(v13 + 24);
        v28 = sub_1D9179ACC();
        v15 = v27;
        v14 = v26;
        LOBYTE(v16) = v25;
        v8 = v24;
        v12 = v23;
        v6 = v22;
        a2 = v21;
        v9 = v20;
        v10 = v51;
        v11 = v52;
        if ((v28 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v29 = *(a2 + 24);
      if (v15)
      {
        if (!*(a2 + 24))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v14 != a2[2])
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_4;
        }
      }

      v30 = a2[6];
      if (v18)
      {
        if (v18 == 1)
        {
          if (v30 == 1)
          {
            goto LABEL_32;
          }
        }

        else if (v18 == 2)
        {
          if (v30 == 2)
          {
            goto LABEL_32;
          }
        }

        else if (v30 >= 3 && (a2[4] & 1) == (v16 & 1))
        {
          v31 = a2[8];
          v32 = *(a2 + 56);
          v33 = v17 == a2[5] && v18 == v30;
          if (v33 || (v34 = a2, v35 = v6, v36 = v12, v37 = sub_1D9179ACC(), v12 = v36, v6 = v35, a2 = v34, (v37 & 1) != 0))
          {
            if (((v32 ^ v54) & 1) == 0 && v53 == v31)
            {
LABEL_32:
              sub_1D8D183D4(a2);
              v38 = *(v48 + 48) + 72 * v8;
              v56[0] = *v38;
              v40 = *(v38 + 32);
              v39 = *(v38 + 48);
              v41 = *(v38 + 64);
              v56[1] = *(v38 + 16);
              v56[2] = v40;
              v57 = v41;
              v56[3] = v39;
              v42 = *(v38 + 48);
              *(a1 + 32) = *(v38 + 32);
              *(a1 + 48) = v42;
              *(a1 + 64) = *(v38 + 64);
              v43 = *(v38 + 16);
              *a1 = *v38;
              *(a1 + 16) = v43;
              sub_1D8D1808C(v56, v55);
              return 0;
            }
          }
        }
      }

      else if (!v30)
      {
        goto LABEL_32;
      }

LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = *v49;
  sub_1D8D1808C(a2, v56);
  sub_1D8D18428(a2, v8, isUniquelyReferenced_nonNull_native);
  *v49 = v55[0];
  v46 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v46;
  *(a1 + 64) = a2[8];
  v47 = *(a2 + 1);
  result = 1;
  *a1 = *a2;
  *(a1 + 16) = v47;
  return result;
}

uint64_t sub_1D8D18428(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_1D8EFE0FC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D8F00E8C();
      goto LABEL_40;
    }

    sub_1D8F02B9C(v6 + 1);
  }

  v8 = *v3;
  sub_1D9179DBC();
  sub_1D910DB90(v49);
  result = sub_1D9179E1C();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v5;
    v13 = *(v5 + 8);
    v14 = *(v8 + 48);
    v45 = v13;
    v46 = v5;
    do
    {
      v15 = v14 + 72 * a2;
      result = *v15;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      v47 = *(v15 + 64);
      v48 = *(v15 + 56);
      if (*v15 != v12 || *(v15 + 8) != v13)
      {
        v22 = v12;
        v23 = v11;
        v24 = v9;
        v25 = v14;
        v26 = *(v15 + 48);
        v27 = *(v15 + 16);
        v28 = a2;
        v29 = *(v15 + 24);
        result = sub_1D9179ACC();
        v17 = v29;
        a2 = v28;
        v16 = v27;
        v20 = v26;
        v14 = v25;
        v9 = v24;
        v11 = v23;
        v12 = v22;
        v13 = v45;
        v5 = v46;
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(v5 + 24);
      if (v17)
      {
        if (!*(v5 + 24))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v16 != *(v5 + 16))
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_11;
        }
      }

      v31 = *(v5 + 48);
      if (v20)
      {
        if (v20 == 1)
        {
          if (v31 == 1)
          {
            goto LABEL_39;
          }
        }

        else if (v20 == 2)
        {
          if (v31 == 2)
          {
            goto LABEL_39;
          }
        }

        else if (v31 >= 3 && (*(v5 + 32) & 1) == (v19 & 1))
        {
          v32 = *(v5 + 64);
          v33 = *(v5 + 56);
          v34 = v18 == *(v5 + 40) && v20 == v31;
          if (v34 || (v35 = v9, v36 = v14, result = sub_1D9179ACC(), v14 = v36, v9 = v35, (result & 1) != 0))
          {
            if (((v33 ^ v48) & 1) == 0 && v47 == v32)
            {
LABEL_39:
              result = sub_1D9179CEC();
              __break(1u);
              break;
            }
          }
        }
      }

      else if (!v31)
      {
        goto LABEL_39;
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_40:
  v37 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = *(v37 + 48) + 72 * a2;
  *(v38 + 64) = *(v5 + 64);
  v39 = *(v5 + 48);
  *(v38 + 32) = *(v5 + 32);
  *(v38 + 48) = v39;
  v40 = *(v5 + 16);
  *v38 = *v5;
  *(v38 + 16) = v40;
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v43;
  }

  return result;
}

uint64_t sub_1D8D186F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8D18754(v2);
  }

  return result;
}

uint64_t sub_1D8D18754(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + 24);
    MEMORY[0x1EEE9AC00](result);
    *&v14[-16] = v1;
    *&v14[-8] = a1;
    MEMORY[0x1EEE9AC00](v12);
    *&v14[-16] = sub_1D8D18EF4;
    *&v14[-8] = v13;
    os_unfair_lock_lock(v11 + 4);
    sub_1D8D18F10(&v15);
    os_unfair_lock_unlock(v11 + 4);
    sub_1D8D1B714(v15, *(&v15 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D18910@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = MEMORY[0x1E69E7CD0];
  v64 = MEMORY[0x1E69E7CD0];
  v5 = a1[8];
  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    *&v65[0] = a1[8];

    result = sub_1D8D19950(a2);
    v7 = v5;
  }

  else
  {

    result = sub_1D8D18F6C(a2, v5);
    v7 = result;
  }

  v8 = 0;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  v13 = (v10 + 63) >> 6;
  v58 = v7;
LABEL_9:
  if (v12)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      v29 = a1[8];
      if (*(v29 + 16) <= *(a2 + 16) >> 3)
      {
        *&v65[0] = a2;

        sub_1D8D19950(v29);

        v30 = *&v65[0];
      }

      else
      {

        v30 = sub_1D8D18F6C(v29, a2);
      }

      v31 = 0;
      v32 = v30 + 56;
      v33 = 1 << *(v30 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v30 + 56);
      v36 = (v33 + 63) >> 6;
      v59 = v30;
      while (v35)
      {
        v37 = v31;
LABEL_35:
        v38 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v39 = *(v30 + 48) + 72 * (v38 | (v37 << 6));
        v41 = *v39;
        v40 = *(v39 + 8);
        v61 = *(v39 + 16);
        v42 = *(v39 + 24);
        v43 = *(v39 + 64);
        v44 = *(v39 + 48);
        v65[0] = *(v39 + 32);
        v65[1] = v44;
        v66 = v43;
        swift_bridgeObjectRetain_n();
        sub_1D8D19AA0(v65, &v63);
        sub_1D8D19AFC(&v63, v41, v40);

        swift_beginAccess();
        sub_1D8D19AA0(v65, &v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = a1[10];
        a1[10] = 0x8000000000000000;
        sub_1D8D1A004(v65, v41, v40, isUniquelyReferenced_nonNull_native);
        a1[10] = v63;
        swift_endAccess();

        if (v42 == 1)
        {
          result = sub_1D8D1A4BC(v65);
        }

        else
        {
          sub_1D8D1A770(&v63, v61);
          swift_beginAccess();
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v62 = a1[9];
          a1[9] = 0x8000000000000000;
          sub_1D8D1AC70(v65, v61, v46);
          a1[9] = v62;
          result = swift_endAccess();
        }

        v31 = v37;
        v30 = v59;
      }

      while (1)
      {
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_47;
        }

        if (v37 >= v36)
        {
          break;
        }

        v35 = *(v32 + 8 * v37);
        ++v31;
        if (v35)
        {
          goto LABEL_35;
        }
      }

      a1[8] = a2;

      v47 = v67;
      v48 = *(v67 + 16);
      if (v48)
      {
        v49 = sub_1D8D1B418(*(v67 + 16), 0);
        v50 = sub_1D8D1B42C(&v63, v49 + 4, v48, v47);
        sub_1D8D1B144(v63);
        v51 = a3;
        if (v50 != v48)
        {
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
LABEL_40:

        v49 = MEMORY[0x1E69E7CC0];
        v51 = a3;
      }

      *v51 = v49;
      v52 = v64;
      v53 = *(v64 + 16);
      if (v53)
      {
        v54 = sub_1D8D1B584(*(v64 + 16), 0);
        v55 = sub_1D8D1B614(&v63, v54 + 4, v53, v52);
        result = sub_1D8D1B144(v63);
        if (v55 != v53)
        {
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
LABEL_44:

        v54 = MEMORY[0x1E69E7CC0];
      }

      v51[1] = v54;
      return result;
    }

    v12 = *(v9 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
LABEL_14:
      v15 = *(v7 + 48) + 72 * (__clz(__rbit64(v12)) | (v8 << 6));
      v17 = *v15;
      v16 = *(v15 + 8);
      v60 = *(v15 + 16);
      v18 = *(v15 + 24);
      swift_bridgeObjectRetain_n();
      sub_1D8D19AFC(v65, v17, v16);

      swift_beginAccess();
      v19 = sub_1D8D33C70(v17, v16);
      if (v20)
      {
        v21 = v19;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = a1[10];
        v63 = v23;
        a1[10] = 0x8000000000000000;
        if (!v22)
        {
          sub_1D8F85F60();
          v23 = v63;
        }

        sub_1D8D1D59C(*(*(v23 + 56) + 40 * v21), *(*(v23 + 56) + 40 * v21 + 8), *(*(v23 + 56) + 40 * v21 + 16));
        sub_1D8F818F0(v21, v23);
        a1[10] = v23;
      }

      v12 &= v12 - 1;
      swift_endAccess();

      v7 = v58;
      if ((v18 & 1) == 0)
      {
        sub_1D8D1A770(v65, v60);
        swift_beginAccess();
        v24 = sub_1D8D1AC44(v60);
        if (v25)
        {
          v26 = v24;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v28 = a1[9];
          v63 = v28;
          a1[9] = 0x8000000000000000;
          if (!v27)
          {
            sub_1D8F85DE4();
            v28 = v63;
          }

          sub_1D8D1D59C(*(*(v28 + 56) + 40 * v26), *(*(v28 + 56) + 40 * v26 + 8), *(*(v28 + 56) + 40 * v26 + 16));
          sub_1D8F81750(v26, v28);
          a1[9] = v28;
        }

        result = swift_endAccess();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

double sub_1D8D18F28@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1D8D18F6C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v144 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v4 = a1;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v108 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v127 = (a2 + 56);

    v12 = 0;
    v107 = 0;
    v116 = v10;
    v111 = v11;
    v112 = v3;
    v110 = v6;
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_9:
    v14 = v12;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v51 = v4;
        goto LABEL_120;
      }

      v9 = *(v6 + 8 * v13);
      ++v14;
      if (v9)
      {
        while (1)
        {
          v15 = *(v4 + 48) + 72 * (__clz(__rbit64(v9)) | (v13 << 6));
          v135 = *v15;
          v17 = *(v15 + 32);
          v16 = *(v15 + 48);
          v18 = *(v15 + 16);
          v139 = *(v15 + 64);
          v137 = v17;
          v138 = v16;
          v136 = v18;
          sub_1D9179DBC();
          v19 = v135;
          sub_1D8D1808C(&v135, &v129);
          v125 = *(&v19 + 1);
          v126 = v19;
          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
          v20 = v136;
          v121 = BYTE8(v136);
          if (BYTE8(v136) == 1)
          {
            sub_1D9179DDC();
          }

          else
          {
            sub_1D9179DDC();
            MEMORY[0x1DA72B3C0](v20);
          }

          v114 = *(&v138 + 1);
          v2 = v138;
          v115 = v137;
          v113 = v139;
          v109 = *(&v137 + 1);
          v120 = v138;
          v118 = v13;
          if (v138)
          {
            if (v138 == 1)
            {
              v21 = 1;
            }

            else
            {
              if (v138 != 2)
              {
                MEMORY[0x1DA72B390](2);
                sub_1D9179DDC();
                _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
                sub_1D9179DDC();
                MEMORY[0x1DA72B3C0](v113);
                goto LABEL_24;
              }

              v21 = 3;
            }
          }

          else
          {
            v21 = 0;
          }

          MEMORY[0x1DA72B390](v21);
LABEL_24:
          v9 &= v9 - 1;
          v22 = sub_1D9179E1C();
          v23 = -1 << *(v3 + 32);
          v24 = v22 & ~v23;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if (((1 << v24) & v127[v24 >> 6]) == 0)
          {
            sub_1D8D183D4(&v135);
            v12 = v118;
            v10 = v116;
            if (v9)
            {
              goto LABEL_8;
            }

            goto LABEL_9;
          }

          v119 = v20;
          v117 = v9;
          v27 = ~v23;
          v28 = *(v3 + 48);
          v30 = v125;
          v29 = v126;
          do
          {
            v31 = v28 + 72 * v24;
            v32 = *(v31 + 16);
            v33 = *(v31 + 24);
            v35 = *(v31 + 32);
            v34 = *(v31 + 40);
            v36 = *(v31 + 48);
            v2 = *(v31 + 56);
            v37 = *(v31 + 64);
            if (*v31 != v29 || *(v31 + 8) != v30)
            {
              v123 = v25;
              v124 = v26;
              v122 = v2;
              v39 = v37;
              v40 = v28;
              v41 = v27;
              v42 = v24;
              v43 = v34;
              v44 = v35;
              v45 = v33;
              v46 = sub_1D9179ACC();
              v33 = v45;
              LODWORD(v35) = v44;
              v34 = v43;
              v24 = v42;
              v27 = v41;
              v28 = v40;
              v37 = v39;
              v2 = v122;
              v25 = v123;
              v26 = v124;
              v30 = v125;
              v29 = v126;
              if ((v46 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            if (v33)
            {
              if (!v121)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v47 = v121;
              if (v32 != v119)
              {
                v47 = 1;
              }

              if (v47)
              {
                goto LABEL_27;
              }
            }

            if (v36)
            {
              if (v36 == 1)
              {
                if (v120 == 1)
                {
                  goto LABEL_60;
                }
              }

              else if (v36 == 2)
              {
                if (v120 == 2)
                {
                  goto LABEL_60;
                }
              }

              else if (v120 >= 3 && ((v35 ^ v115) & 1) == 0)
              {
                v48 = v34 == v109 && v36 == v120;
                if (v48 || (v49 = v27, v50 = sub_1D9179ACC(), v27 = v49, v30 = v125, v29 = v126, (v50 & 1) != 0))
                {
                  if (((v114 ^ v2) & 1) == 0 && v37 == v113)
                  {
LABEL_60:
                    v52 = v117;
                    v141 = v108;
                    v142 = v118;
                    v143 = v117;
                    v53 = v110;
                    v2 = v111;
                    v140[0] = v111;
                    v140[1] = v110;
                    v54 = sub_1D8D183D4(&v135);
                    v55 = v112;
                    v56 = *(v112 + 32);
                    v57 = v56 & 0x3F;
                    v58 = ((1 << v56) + 63) >> 6;
                    v104[0] = v58;
                    if (v57 <= 0xD)
                    {
                      goto LABEL_61;
                    }

                    v101 = 8 * v58;

                    if (swift_stdlib_isStackAllocationSafe())
                    {

LABEL_61:
                      v104[1] = v104;
                      MEMORY[0x1EEE9AC00](v54);
                      v60 = v104 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
                      memcpy(v60, v127, v59);
                      *&v60[8 * v25] &= ~v26;
                      v105 = *(v55 + 16) - 1;
                      v106 = v60;
                      v61 = v116;
                      v62 = v118;
                      while (2)
                      {
                        if (!v52)
                        {
                          v64 = v62;
                          while (1)
                          {
                            v63 = v64 + 1;
                            if (__OFADD__(v64, 1))
                            {
                              goto LABEL_123;
                            }

                            if (v63 >= v61)
                            {
                              v3 = sub_1D90A8694(v106, v104[0], v105, v55);
                              goto LABEL_119;
                            }

                            v52 = *(v53 + 8 * v63);
                            ++v64;
                            if (v52)
                            {
                              goto LABEL_70;
                            }
                          }
                        }

                        v63 = v62;
LABEL_70:
                        v65 = *(v2 + 48) + 72 * (__clz(__rbit64(v52)) | (v63 << 6));
                        v130 = *v65;
                        v67 = *(v65 + 32);
                        v66 = *(v65 + 48);
                        v68 = *(v65 + 16);
                        v134 = *(v65 + 64);
                        v132 = v67;
                        v133 = v66;
                        v131 = v68;
                        sub_1D9179DBC();
                        v69 = v130;
                        sub_1D8D1808C(&v130, &v128);
                        v125 = *(&v69 + 1);
                        v126 = v69;
                        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
                        v70 = v131;
                        v121 = BYTE8(v131);
                        if (BYTE8(v131) == 1)
                        {
                          sub_1D9179DDC();
                        }

                        else
                        {
                          sub_1D9179DDC();
                          MEMORY[0x1DA72B3C0](v70);
                        }

                        v114 = *(&v133 + 1);
                        v115 = v132;
                        v113 = v134;
                        v109 = *(&v132 + 1);
                        v120 = v133;
                        v118 = v63;
                        if (v133)
                        {
                          if (v133 != 1)
                          {
                            if (v133 == 2)
                            {
                              v71 = 3;
                              break;
                            }

                            MEMORY[0x1DA72B390](2);
                            sub_1D9179DDC();
                            _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
                            sub_1D9179DDC();
                            MEMORY[0x1DA72B3C0](v113);
LABEL_81:
                            v117 = (v52 - 1) & v52;
                            v72 = sub_1D9179E1C();
                            v73 = -1 << *(v55 + 32);
                            v74 = v72 & ~v73;
                            v75 = v74 >> 6;
                            v76 = 1 << v74;
                            if (((1 << v74) & v127[v74 >> 6]) == 0)
                            {
                              sub_1D8D183D4(&v130);
                              v62 = v118;
LABEL_63:
                              v61 = v116;
                              v52 = v117;
                              continue;
                            }

                            v119 = v70;
                            v77 = ~v73;
                            v78 = *(v55 + 48);
                            v80 = v125;
                            v79 = v126;
LABEL_85:
                            v81 = v78 + 72 * v74;
                            v82 = *(v81 + 16);
                            v83 = *(v81 + 24);
                            v84 = *(v81 + 32);
                            v85 = *(v81 + 40);
                            v86 = *(v81 + 48);
                            v87 = *(v81 + 56);
                            v88 = *(v81 + 64);
                            v89 = *v81 == v79 && *(v81 + 8) == v80;
                            if (v89 || (v123 = *(v81 + 64), v124 = v87, v90 = v78, v91 = v77, v122 = v76, v92 = v75, v93 = v86, v87 = v82, v94 = sub_1D9179ACC(), v82 = v87, v86 = v93, v75 = v92, v77 = v91, v78 = v90, v76 = v122, v88 = v123, LODWORD(v87) = v124, v80 = v125, v79 = v126, (v94 & 1) != 0))
                            {
                              if (v83)
                              {
                                if (v121)
                                {
LABEL_96:
                                  if (v86)
                                  {
                                    if (v86 == 1)
                                    {
                                      if (v120 == 1)
                                      {
                                        goto LABEL_112;
                                      }
                                    }

                                    else if (v86 == 2)
                                    {
                                      if (v120 == 2)
                                      {
                                        goto LABEL_112;
                                      }
                                    }

                                    else if (v120 >= 3 && ((v84 ^ v115) & 1) == 0)
                                    {
                                      v96 = v85 == v109 && v86 == v120;
                                      if (v96 || (v97 = v77, v98 = sub_1D9179ACC(), v77 = v97, v80 = v125, v79 = v126, (v98 & 1) != 0))
                                      {
                                        if (((v114 ^ v87) & 1) == 0 && v88 == v113)
                                        {
LABEL_112:
                                          sub_1D8D183D4(&v130);
                                          v99 = v106[v75];
                                          v106[v75] = v99 & ~v76;
                                          v61 = v116;
                                          if ((v99 & v76) != 0)
                                          {
                                            v2 = v111;
                                            v55 = v112;
                                            v53 = v110;
                                            v62 = v118;
                                            if (__OFSUB__(v105, 1))
                                            {
                                              __break(1u);
                                            }

                                            v52 = v117;
                                            if (v105 == 1)
                                            {
                                              goto LABEL_124;
                                            }

                                            --v105;
                                          }

                                          else
                                          {
                                            v52 = v117;
                                            v62 = v118;
                                            v2 = v111;
                                            v55 = v112;
                                            v53 = v110;
                                          }

                                          continue;
                                        }
                                      }
                                    }
                                  }

                                  else if (!v120)
                                  {
                                    goto LABEL_112;
                                  }
                                }
                              }

                              else
                              {
                                v95 = v121;
                                if (v82 != v119)
                                {
                                  v95 = 1;
                                }

                                if ((v95 & 1) == 0)
                                {
                                  goto LABEL_96;
                                }
                              }
                            }

                            v74 = (v74 + 1) & v77;
                            v75 = v74 >> 6;
                            v76 = 1 << v74;
                            if ((v127[v74 >> 6] & (1 << v74)) == 0)
                            {
                              sub_1D8D183D4(&v130);
                              v62 = v118;
                              v2 = v111;
                              v55 = v112;
                              v53 = v110;
                              goto LABEL_63;
                            }

                            goto LABEL_85;
                          }

                          v71 = 1;
                        }

                        else
                        {
                          v71 = 0;
                        }

                        break;
                      }

                      MEMORY[0x1DA72B390](v71);
                      goto LABEL_81;
                    }

                    v102 = swift_slowAlloc();
                    memcpy(v102, v127, v101);
                    v103 = sub_1D90A748C(v102, v104[0], v112, v24, v140);

                    MEMORY[0x1DA72CB90](v102, -1, -1);
                    v2 = v140[0];
                    v108 = v141;
                    v3 = v103;
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (!v120)
            {
              goto LABEL_60;
            }

LABEL_27:
            v24 = (v24 + 1) & v27;
            v25 = v24 >> 6;
            v26 = 1 << v24;
          }

          while ((v127[v24 >> 6] & (1 << v24)) != 0);
          sub_1D8D183D4(&v135);
          v9 = v117;
          v12 = v118;
          v4 = v111;
          v3 = v112;
          v6 = v110;
          v10 = v116;
          if (!v117)
          {
            goto LABEL_9;
          }

LABEL_8:
          v13 = v12;
        }
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:

    v3 = MEMORY[0x1E69E7CD0];
LABEL_119:
    v51 = v2;
LABEL_120:
    sub_1D8D1B144(v51);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t sub_1D8D19950(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_1D91109D8(v17))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + 72 * (v10 | (v9 << 6));
      v19[0] = *v11;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      v20 = *(v11 + 64);
      v19[2] = v13;
      v19[3] = v12;
      v19[1] = v14;
      sub_1D8D1808C(v19, v17);
      sub_1D910F494(v19, v15);
      sub_1D8D183D4(v19);
      v17[2] = v15[2];
      v17[3] = v15[3];
      v18 = v16;
      v17[0] = v15[0];
      v17[1] = v15[1];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D19AFC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1D9179E1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D9179ACC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D8D19E84(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D8D19C4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_1D8D19E84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D8D1A510(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1D8F00040();
      goto LABEL_16;
    }

    sub_1D8D19C4C(v8 + 1);
  }

  v10 = *v4;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1D9179E1C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1D9179ACC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1D9179CEC();
  __break(1u);
}

uint64_t sub_1D8D1A004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D33C70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F85F60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8D1A14C(v16, a4 & 1);
    v11 = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1D8F51A44(a1, v22);
  }

  else
  {
    sub_1D8D1A460(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D8D1A14C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A88, &unk_1D91A6B40);
  v46 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v14 = result + 64;
    v45 = result;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 40 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      if ((v46 & 1) == 0)
      {

        sub_1D8D1C3BC(v28, v29, v30);
      }

      v48 = v30;
      v33 = v29;
      v34 = v28;
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v7 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        v17 = v32;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v32;
      v18 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v45 + 48) + 16 * v15);
      *v19 = v49;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 40 * v15);
      *v20 = v34;
      v20[1] = v33;
      v20[2] = v16;
      v20[3] = v18;
      v20[4] = v17;
      ++*(v45 + 16);
      v5 = v44;
      v12 = v47;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1D8D1A460(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_1D8D1A510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6768, &qword_1D9193708);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8D1A770(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a2);
  v6 = sub_1D9179E1C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D8D1AA88(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8D1A868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v16);
      result = sub_1D9179E1C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D8D1AA88(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8D1B14C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D8EFFDC0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D8D1A868(v5 + 1);
  }

  v8 = *v3;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](v4);
  result = sub_1D9179E1C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

unint64_t sub_1D8D1ABF0()
{
  result = qword_1ECAB1140;
  if (!qword_1ECAB1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1140);
  }

  return result;
}

unint64_t sub_1D8D1AC70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F85DE4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D1AD94(v14, a3 & 1);
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_1D8F51A44(a1, v20);
  }

  else
  {

    return sub_1D8D1B0EC(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8D1AD94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
  v38 = v4;
  result = sub_1D917978C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v40 = *(*(v5 + 48) + 8 * v21);
      v22 = (*(v5 + 56) + 40 * v21);
      v23 = *v22;
      v24 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v27 = v22[4];
      if ((v38 & 1) == 0)
      {
        sub_1D8D1C3BC(v23, v24, v26);
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v40);
      result = sub_1D9179E1C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v25;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v40;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v26;
      v17[3] = v16;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1D8D1B080(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D8D1B0EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D8D1B14C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v17);
      result = sub_1D9179E1C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_1D8D1B39C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1D8D1B42C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D8D1B598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1D8D1B614(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1D8D1B714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  v13 = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return;
    }

    goto LABEL_8;
  }

  v14 = *(v3 + 24);
  MEMORY[0x1EEE9AC00](v13);
  *&v20[-16] = sub_1D8D1B9B0;
  *&v20[-8] = v3;
  os_unfair_lock_lock(v14 + 4);
  sub_1D8D1B980(&v21);
  os_unfair_lock_unlock(v14 + 4);
  if (v21)
  {
    v15 = *(&v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(a1, ObjectType, v15);
    v13 = swift_unknownObjectRelease();
  }

  if (*(a2 + 16))
  {
LABEL_8:
    v17 = *(v3 + 24);
    MEMORY[0x1EEE9AC00](v13);
    *&v20[-16] = sub_1D8D1B9B0;
    *&v20[-8] = v3;
    os_unfair_lock_lock(v17 + 4);
    sub_1D8D1B980(&v21);
    os_unfair_lock_unlock(v17 + 4);
    if (v21)
    {
      v18 = *(&v21 + 1);
      v19 = swift_getObjectType();
      (*(v18 + 8))(a2, v19, v18);
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1D8D1B9C8(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v3 = a1[3];
    v38 = a1[2];
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v30 = a1[8];
    v31 = a1[7];
    v32 = a1[10];
    v33 = a1[9];
    v34 = a1[11];
    v7 = a1[12];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB8570, &qword_1D91A1C08);
    v8 = objc_allocWithZone(v35);
    v9 = qword_1ECAB8638;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8690, &qword_1D91A2238);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 0;
    *&v8[v9] = v10;
    v11 = MEMORY[0x1E69E7CC8];
    *&v8[qword_1ECAB8640] = MEMORY[0x1E69E7CC8];
    v12 = &v8[qword_1ECAB8648];
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    v13 = &v8[qword_1ECAB8650];
    *v13 = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    *(v13 + 41) = 0u;
    v14 = qword_1EDCD15F8;
    v15 = sub_1D917734C();
    (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
    *&v8[qword_1EDCD1620] = 0;
    *&v8[qword_1EDCD1628] = v11;
    *&v8[qword_1EDCD1600] = v11;
    v8[qword_1EDCD1638] = 0;
    *&v8[qword_1EDCD1610] = 0;
    v16 = &v8[qword_1ECAB85F8];
    *v16 = v38;
    v16[1] = v3;
    swift_bridgeObjectRetain_n();
    v17 = [v5 fetchBatchSize];
    *&v8[qword_1ECAB8600] = v17;
    *&v8[qword_1ECAB8608] = v4;
    *&v8[qword_1ECAB8610] = v6;
    v18 = &v8[qword_1ECAB8618];
    *v18 = v31;
    v18[1] = v30;
    v19 = &v8[qword_1ECAB8620];
    *v19 = v33;
    v19[1] = v32;
    v20 = &v8[qword_1ECAB8628];
    *v20 = v34;
    v20[1] = v7;
    v21 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v22 = v4;
    v23 = v6;

    v24 = [v21 initWithFetchRequest:v5 managedObjectContext:v22 sectionNameKeyPath:0 cacheName:0];
    *&v8[qword_1ECAB8630] = v24;
    v37.receiver = v8;
    v37.super_class = v35;
    v25 = objc_msgSendSuper2(&v37, sel_init);
    v26 = *(v25 + qword_1ECAB8630);
    v27 = v25;
    [v26 setDelegate_];
    v28 = swift_allocObject();
    v28[2] = v38;
    v28[3] = v3;
    v28[4] = v27;
    aBlock[4] = sub_1D8FBD8A4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_86_2;
    v29 = _Block_copy(aBlock);

    [v22 performBlock_];
    _Block_release(v29);

    swift_unknownObjectWeakAssign();
    return v27;
  }

  return result;
}

uint64_t sub_1D8D1BD70@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 56);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8D1BDA8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_1D8D1BEA4(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1D8D1BE24@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v7);
  if (!v2)
  {
    v5 = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v5;
  }

  return result;
}

id sub_1D8D1BEA4(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);

      result = [*(v2 + 104) v7[224]];
      __break(1u);
      return result;
    }

    v5 = (v5 + 1);
    v3 = v9 + 2;
    v2 = *(v9 - 1);
    v10 = *v9;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 48);
    swift_unknownObjectRetain();
    v12(v30, v4, a2, ObjectType, v10);
    v28 = v30[1];
    v26 = v30[0];
    v13 = v31;
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    v9 = v3;
    if (v28 != 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0(0, *(v25 + 16) + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
      }

      v15 = *(v25 + 16);
      v14 = *(v25 + 24);
      v2 = v15 + 1;
      v16 = v26;
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0((v14 > 1), v15 + 1, 1, v25);
        v16 = v26;
        v25 = isUniquelyReferenced_nonNull_native;
      }

      *(v25 + 16) = v2;
      v17 = v25 + 40 * v15;
      *(v17 + 32) = v16;
      *(v17 + 48) = v28;
      *(v17 + 64) = v13;
      v8 = v6 + 40;
      goto LABEL_2;
    }
  }

  v34 = 0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 2;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  type metadata accessor for PodcastStateMachine();
  v3 = 0;
  sub_1D9178E2C();
  v2 = *&v32[0];
  v18 = *(v25 + 16);
  swift_beginAccess();
  v19 = -1;
  v20 = 32;
  v7 = &selRef_setParent_;
  do
  {
    if (v19 - v18 == -1)
    {
      break;
    }

    if (++v19 >= *(v25 + 16))
    {
      goto LABEL_17;
    }

    v21 = *(v25 + v20);
    v22 = *(v25 + v20 + 16);
    v33 = *(v25 + v20 + 32);
    v32[0] = v21;
    v32[1] = v22;
    v23 = *(v2 + 104);
    sub_1D8D19AA0(v32, v29);
    [v23 lock];
    sub_1D8D1CB88(v2, v32, v29);
    v20 += 40;
    sub_1D8D1A4BC(v32);
    [*(v2 + 104) unlock];
  }

  while ((v29[0] & 1) == 0);
}

double sub_1D8D1C234@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1D8D1C2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 80);
  if (*(v9 + 16))
  {

    v10 = sub_1D8D33C70(a2, a3);
    if (v11)
    {
      v12 = (*(v9 + 56) + 40 * v10);
      v13 = *v12;
      v14 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      sub_1D8D1C3BC(*v12, v14, v16);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v17 = 0;
      v16 = 3;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 3;
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v16;
  a4[3] = v15;
  a4[4] = v17;
  return result;
}

uint64_t sub_1D8D1C3BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

char *sub_1D8D1C3D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1D8D1C50C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
}

double sub_1D8D1C520@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D8D1C554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_1D8D33C70(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v15 = *(a1 + 40);
    type metadata accessor for PodcastStateMachine();
    v13 = swift_allocObject();
    *(v13 + 88) = MEMORY[0x1E69E7CC0];
    v16 = objc_allocWithZone(MEMORY[0x1E696AE68]);

    sub_1D8D19AA0(a4, &v20);

    v17 = [v16 init];
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    v18 = *(a4 + 16);
    *(v13 + 48) = *a4;
    *(v13 + 64) = v18;
    *(v13 + 80) = *(a4 + 32);
    *(v13 + 96) = v15;
    *(v13 + 104) = v17;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_1D8D1C894(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v21;
    result = swift_endAccess();
    goto LABEL_6;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

LABEL_6:
  *a5 = v13;
  return result;
}

uint64_t sub_1D8D1C728(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1D8D33C70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_1D8D1C8E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_1D8D1CB88(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1D917744C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 64);
  switch(v10)
  {
    case 0uLL:
      v11 = *(a2 + 2);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    case 1uLL:
      v11 = *(a2 + 2);
      if (v11 == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    case 2uLL:
      v11 = *(a2 + 2);
      if (v11 == 2)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
  }

  v11 = *(a2 + 2);
  if (v11 < 3 || (*a2 & 1) != (*(a1 + 48) & 1))
  {
    goto LABEL_12;
  }

  v67 = v6;
  v41 = *(a1 + 72);
  v42 = *(a2 + 24);
  v43 = *(a2 + 4);
  if (*(a1 + 56) == *(a2 + 1) && v10 == v11)
  {
    v11 = v10;
    if (((v42 ^ v41) & 1) == 0)
    {
      v44 = *(a1 + 80) == v43;
      goto LABEL_43;
    }

LABEL_48:
    v6 = v67;
    goto LABEL_12;
  }

  v64 = *(a1 + 80);
  v66 = v7;
  if ((sub_1D9179ACC() & 1) == 0)
  {
    v6 = v67;
    v7 = v66;
    goto LABEL_12;
  }

  v7 = v66;
  if ((v42 ^ v41))
  {
    goto LABEL_48;
  }

  v44 = v64 == v43;
LABEL_43:
  v6 = v67;
  if (v44)
  {
    goto LABEL_28;
  }

LABEL_12:
  v12 = *(a1 + 96);
  v13 = 0xE700000000000000;
  v14 = 0x6E776F6E6B6E75;
  v15 = 0xE500000000000000;
  v16 = 0x6465646461;
  if (v11 == 1)
  {
    v16 = 0x676E69646461;
    v15 = 0xE600000000000000;
  }

  if (v11 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (v11)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x656C6261646461;
  }

  if (v11)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_27;
  }

  v66 = v7;
  v67 = v6;
  v19 = sub_1D8D33C70(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_27:
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v28 = *(a1 + 64);
    v29 = a2[1];
    *(a1 + 48) = *a2;
    *(a1 + 64) = v29;
    *(a1 + 80) = *(a2 + 4);
    sub_1D8D1D59C(v26, v27, v28);
    sub_1D8D19AA0(a2, v73);
    sub_1D8D1D2F8();
LABEL_28:
    *a3 = 1;
    return;
  }

  v65 = a3;
  sub_1D8CFD9D8(*(v12 + 56) + 40 * v19, v76);
  sub_1D8D04E9C(v76, v73);
  v22 = v74;
  v23 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v24 = *(a1 + 64);
  v76[0] = *(a1 + 48);
  v76[1] = v24;
  v77 = *(a1 + 80);
  v25 = *(v23 + 8);
  sub_1D8D19AA0(v76, v72);
  LOBYTE(v22) = v25(v76, a2, v22, v23);
  sub_1D8D1A4BC(v76);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    a3 = v65;
    goto LABEL_27;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v30 = v67;
  v31 = __swift_project_value_buffer(v67, qword_1ECAAFC48);
  swift_beginAccess();
  v32 = v66;
  (*(v66 + 16))(v9, v31, v30);
  sub_1D8CFD9D8(v73, v72);

  sub_1D8D19AA0(a2, &v69);
  v33 = sub_1D917741C();
  v34 = sub_1D9178CEC();

  sub_1D8D1A4BC(a2);
  v35 = os_log_type_enabled(v33, v34);
  v36 = v65;
  if (!v35)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    (*(v32 + 8))(v9, v30);
LABEL_47:
    *v36 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    return;
  }

  LODWORD(v64) = v34;
  v37 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v78 = v63;
  *v37 = 136315906;
  if ((*(a1 + 24) & 1) == 0)
  {
    *&v69 = *(a1 + 16);
    sub_1D8E40D20();
    v40 = sub_1D917927C();
    v38 = v45;
    goto LABEL_46;
  }

  v38 = *(a1 + 40);
  if (v38)
  {
    v39 = *(a1 + 32);

    v40 = v39;
LABEL_46:
    v46 = sub_1D8CFA924(v40, v38, &v78);

    *(v37 + 4) = v46;
    *(v37 + 12) = 2080;
    v47 = *(a1 + 56);
    v48 = *(a1 + 64);
    v49 = *(a1 + 72);
    v50 = *(a1 + 80);
    *&v69 = *(a1 + 48);
    *(&v69 + 1) = v47;
    *&v70 = v48;
    *(&v70 + 1) = v49;
    v71 = v50;
    sub_1D8D1C3BC(v69, v47, v48);
    v51 = sub_1D917826C();
    v53 = sub_1D8CFA924(v51, v52, &v78);

    *(v37 + 14) = v53;
    *(v37 + 22) = 2080;
    v54 = a2[1];
    v69 = *a2;
    v70 = v54;
    v71 = *(a2 + 4);
    sub_1D8D19AA0(a2, v68);
    v55 = sub_1D917826C();
    v57 = sub_1D8CFA924(v55, v56, &v78);

    *(v37 + 24) = v57;
    *(v37 + 32) = 2080;
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    *&v69 = swift_getDynamicType();
    *(&v69 + 1) = v72[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8A8, &unk_1D91B89B0);
    v58 = sub_1D917826C();
    v60 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v61 = sub_1D8CFA924(v58, v60, &v78);

    *(v37 + 34) = v61;
    _os_log_impl(&dword_1D8CEC000, v33, v64, "Denied state change for %s: %s -> %s, rule: %s", v37, 0x2Au);
    v62 = v63;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v62, -1, -1);
    MEMORY[0x1DA72CB90](v37, -1, -1);

    (*(v66 + 8))(v9, v67);
    v36 = v65;
    goto LABEL_47;
  }

  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8D1D2F8()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v9 = sub_1D9178E1C();
  aBlock[4] = sub_1D8D81A8C;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_89;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBF10(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D8D1D59C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

unint64_t sub_1D8D1D5B0()
{
  result = qword_1EDCD7B80;
  if (!qword_1EDCD7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B80);
  }

  return result;
}

id sub_1D8D1D614(uint64_t isUniquelyReferenced_nonNull_native)
{
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);

      result = [*(v1 + 104) v3[224]];
      __break(1u);
      return result;
    }

    ++v5;
    v2 = v9 + 2;
    v1 = *(v9 - 1);
    v3 = *v9;
    ObjectType = swift_getObjectType();
    v11 = v3[5];
    swift_unknownObjectRetain();
    (v11)(v28, v4, ObjectType, v3);
    v26 = v28[1];
    v25 = v28[0];
    v12 = v29;
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    v9 = v2;
    if (v26 != 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0(0, *(v24 + 16) + 1, 1, v24);
        v24 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      v1 = v14 + 1;
      v15 = v25;
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0((v13 > 1), v14 + 1, 1, v24);
        v15 = v25;
        v24 = isUniquelyReferenced_nonNull_native;
      }

      *(v24 + 16) = v1;
      v16 = v24 + 40 * v14;
      *(v16 + 32) = v15;
      *(v16 + 48) = v26;
      *(v16 + 64) = v12;
      v8 = v6 + 40;
      goto LABEL_2;
    }
  }

  v32 = 0;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 2;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  type metadata accessor for PodcastStateMachine();
  v2 = 0;
  sub_1D9178E2C();
  v1 = *&v30[0];
  v17 = *(v24 + 16);
  swift_beginAccess();
  v18 = -1;
  v19 = 32;
  v3 = &selRef_setParent_;
  do
  {
    if (v18 - v17 == -1)
    {
      break;
    }

    if (++v18 >= *(v24 + 16))
    {
      goto LABEL_17;
    }

    v20 = *(v24 + v19);
    v21 = *(v24 + v19 + 16);
    v31 = *(v24 + v19 + 32);
    v30[0] = v20;
    v30[1] = v21;
    v22 = *(v1 + 104);
    sub_1D8D19AA0(v30, v27);
    [v22 lock];
    sub_1D8D1CB88(v1, v30, v27);
    v19 += 40;
    sub_1D8D1A4BC(v30);
    [*(v1 + 104) unlock];
  }

  while ((v27[0] & 1) == 0);
}

void *sub_1D8D1D954(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result + 4;
    do
    {
      v3 = *v2++;
      result = sub_1D8D1D614(v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1D8D1D994@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1D8D1DA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 72);
  if (*(v7 + 16) && (result = sub_1D8D1AC44(a2), (v8 & 1) != 0))
  {
    v9 = (*(v7 + 56) + 40 * result);
    v10 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[4];
    result = sub_1D8D1C3BC(*v9, v11, v13);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v13 = 3;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v12;
  a3[4] = v14;
  return result;
}

double sub_1D8D1DB18@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v5;
  }

  return result;
}

double sub_1D8D1DB64@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1DC70(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

BOOL sub_1D8D1DBEC@<W0>(void *a1@<X8>)
{
  result = sub_1D8D1DC88(*(v1 + 24), *(*(v1 + 16) + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows));
  v4 = 3;
  *a1 = 0;
  a1[1] = 0;
  if (result)
  {
    v4 = 1;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v4;
  return result;
}

BOOL sub_1D8D1DC88(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a1);
  v4 = sub_1D9179E1C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D8D1DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16) && (v9 = sub_1D8D1AC44(a2), (v10 & 1) != 0))
  {
    *a4 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = *(a1 + 40);
    type metadata accessor for PodcastStateMachine();
    v13 = swift_allocObject();
    *(v13 + 88) = MEMORY[0x1E69E7CC0];
    v14 = objc_allocWithZone(MEMORY[0x1E696AE68]);

    v15 = [v14 init];
    *(v13 + 16) = a2;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    v16 = *(a3 + 16);
    *(v13 + 48) = *a3;
    *(v13 + 64) = v16;
    *(v13 + 80) = *(a3 + 32);
    *(v13 + 96) = v12;
    *(v13 + 104) = v15;
    swift_beginAccess();
    sub_1D8D19AA0(a3, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    sub_1D8D1DEE0(v13, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v18[0];
    result = swift_endAccess();
    *a4 = v13;
  }

  return result;
}

uint64_t sub_1D8D1DEE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F857FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D1E004(v14, a3 & 1);
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8D1E018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_1D917978C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v22);
      result = sub_1D9179E1C();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}