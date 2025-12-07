unint64_t sub_1D4FE3308()
{
  result = qword_1EC7ED528;
  if (!qword_1EC7ED528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED528);
  }

  return result;
}

unint64_t sub_1D4FE3360()
{
  result = qword_1EC7ED530;
  if (!qword_1EC7ED530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED530);
  }

  return result;
}

unint64_t sub_1D4FE33B8()
{
  result = qword_1EC7ED538;
  if (!qword_1EC7ED538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED538);
  }

  return result;
}

unint64_t sub_1D4FE3410()
{
  result = qword_1EC7ED540;
  if (!qword_1EC7ED540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED540);
  }

  return result;
}

unint64_t sub_1D4FE3468()
{
  result = qword_1EC7ED548;
  if (!qword_1EC7ED548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED548);
  }

  return result;
}

unint64_t sub_1D4FE34C0()
{
  result = qword_1EC7ED550;
  if (!qword_1EC7ED550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED550);
  }

  return result;
}

unint64_t sub_1D4FE3518()
{
  result = qword_1EC7ED558;
  if (!qword_1EC7ED558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED558);
  }

  return result;
}

uint64_t sub_1D4FE356C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t MusicCatalogSearchResponse.TopResult.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v84 = v2;
  v85 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_0();
  v83 = v3;
  OUTLINED_FUNCTION_70_0();
  v82 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v81 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v80 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D560F8B8();
  OUTLINED_FUNCTION_4();
  v87 = v8;
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v86 = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v90 = v11;
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v89 = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v93 = v14;
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v92 = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v96 = v17;
  v97 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v95 = v18;
  OUTLINED_FUNCTION_70_0();
  sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v98 = v20;
  v99 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = sub_1D560DFB8();
  OUTLINED_FUNCTION_4();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  (*(v40 + 16))(v43 - v42, v101, v38);
  v45 = (*(v40 + 88))(v44, v38);
  if (v45 == *MEMORY[0x1E6975158])
  {
    v46 = OUTLINED_FUNCTION_3_30();
    v47(v46);
    (*(v33 + 32))(v37, v44, v31);
    Album.siriRepresentation.getter();
    return (*(v33 + 8))(v37, v31);
  }

  if (v45 == *MEMORY[0x1E6975160])
  {
    v49 = OUTLINED_FUNCTION_3_30();
    v50(v49);
    (*(v26 + 32))(v30, v44, v24);
    Artist.siriRepresentation.getter(a1);
    return (*(v26 + 8))(v30, v24);
  }

  if (v45 == *MEMORY[0x1E6975168])
  {
    v51 = OUTLINED_FUNCTION_3_30();
    v52(v51);
    (*(v98 + 32))(v23, v44, v99);
    Curator.siriRepresentation.getter(a1);
    return (*(v98 + 8))(v23, v99);
  }

  if (v45 == *MEMORY[0x1E6975140])
  {
    v53 = OUTLINED_FUNCTION_3_30();
    v54(v53);
    v55 = v95;
    v56 = v96;
    v57 = OUTLINED_FUNCTION_4_6();
    v58 = v97;
    v59(v57);
    MusicVideo.siriRepresentation.getter(a1);
  }

  else if (v45 == *MEMORY[0x1E6975178])
  {
    v60 = OUTLINED_FUNCTION_3_30();
    v61(v60);
    v55 = v92;
    v56 = v93;
    v62 = OUTLINED_FUNCTION_4_6();
    v58 = v94;
    v63(v62);
    Playlist.siriRepresentation.getter();
  }

  else if (v45 == *MEMORY[0x1E6975180])
  {
    v64 = OUTLINED_FUNCTION_3_30();
    v65(v64);
    v55 = v89;
    v56 = v90;
    v66 = OUTLINED_FUNCTION_4_6();
    v58 = v91;
    v67(v66);
    RadioShow.siriRepresentation.getter();
  }

  else if (v45 == *MEMORY[0x1E6975148])
  {
    v68 = OUTLINED_FUNCTION_3_30();
    v69(v68);
    v55 = v86;
    v56 = v87;
    v70 = OUTLINED_FUNCTION_4_6();
    v58 = v88;
    v71(v70);
    RecordLabel.siriRepresentation.getter(a1);
  }

  else if (v45 == *MEMORY[0x1E6975150])
  {
    v72 = OUTLINED_FUNCTION_3_30();
    v73(v72);
    v56 = v81;
    v55 = v80;
    v74 = v44;
    v58 = v82;
    (*(v81 + 32))(v80, v74, v82);
    Song.siriRepresentation.getter();
  }

  else
  {
    if (v45 != *MEMORY[0x1E6975170])
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5680E20);
      sub_1D4FE3E24();
      v79 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v79);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v75 = OUTLINED_FUNCTION_3_30();
    v76(v75);
    v55 = v83;
    v56 = v84;
    v77 = OUTLINED_FUNCTION_4_6();
    v58 = v85;
    v78(v77);
    Station.siriRepresentation.getter(a1);
  }

  return (*(v56 + 8))(v55, v58);
}

unint64_t sub_1D4FE3E24()
{
  result = qword_1EC7ED560;
  if (!qword_1EC7ED560)
  {
    sub_1D560DFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED560);
  }

  return result;
}

void static MusicLibraryPlaylistViewModel.Delta.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  *&v104 = v4;
  *&v103 = v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED570, &unk_1D5671D30);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  v94 = v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  v98 = v92 - v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v101 = v14;
  v102 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v92 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED580, &qword_1D56256E0);
  v35 = OUTLINED_FUNCTION_22(v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v92 - v37;
  v39 = v92 + *(v36 + 56) - v37;
  sub_1D4FE4934(v103, v92 - v37);
  sub_1D4FE4934(v104, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4FE4934(v38, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10);
      if (OUTLINED_FUNCTION_33_20() == 1)
      {
        v71 = v101;
        v70 = v102;
        (*(v101 + 32))(v2, v39, v102);
        sub_1D5614778();
        v72 = *(v71 + 8);
        v73 = OUTLINED_FUNCTION_130();
        v72(v73);
        (v72)(v1, v70);
        goto LABEL_33;
      }

      (*(v101 + 8))(v1, v102);
      goto LABEL_25;
    case 2u:
      sub_1D4FE4934(v38, v0);
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      if (OUTLINED_FUNCTION_33_20() != 2)
      {
        v74 = *(v101 + 8);
        v74(v0 + v46, v102);
        v75 = OUTLINED_FUNCTION_46_1();
        (v74)(v75);
        goto LABEL_25;
      }

      v48 = v101;
      v47 = v102;
      v49 = *(v101 + 32);
      v49(v96, v39, v102);
      v49(v100, (v0 + v46), v47);
      v49(v95, &v39[v46], v47);
      v50 = sub_1D5614778();
      v51 = *(v48 + 8);
      v51(v0, v47);
      if (v50)
      {
        v52 = v100;
        sub_1D5614778();
        v53 = OUTLINED_FUNCTION_130();
        (v51)(v53);
        v51(v52, v47);
      }

      else
      {
        v83 = OUTLINED_FUNCTION_130();
        (v51)(v83);
        v51(v100, v47);
      }

      v54 = OUTLINED_FUNCTION_217();
      (v51)(v54);
      goto LABEL_33;
    case 3u:
      sub_1D4FE4934(v38, v3);
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      if (OUTLINED_FUNCTION_33_20() != 3)
      {
        sub_1D4E50004(v3 + v55, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v101 + 8))(v3, v102);
        goto LABEL_25;
      }

      v57 = v101;
      v56 = v102;
      v58 = v99;
      *&v104 = *(v101 + 32);
      (v104)(v99, v39, v102);
      v59 = v98;
      sub_1D4FE49F4(v3 + v55, v98);
      v60 = v97;
      sub_1D4FE49F4(&v39[v55], v97);
      v61 = sub_1D5614778();
      v62 = *(v57 + 8);
      v63 = OUTLINED_FUNCTION_217();
      v62(v63);
      if ((v61 & 1) == 0)
      {
        OUTLINED_FUNCTION_47_15(v60);
        OUTLINED_FUNCTION_47_15(v59);
        (v62)(v58, v56);
        goto LABEL_33;
      }

      v64 = v60;
      v65 = *(v93 + 48);
      v66 = v59;
      v67 = v59;
      v68 = v94;
      sub_1D4FE4A64(v66, v94);
      sub_1D4FE4A64(v64, v68 + v65);
      OUTLINED_FUNCTION_9_25(v68);
      if (v84)
      {
        sub_1D4E50004(v64, &unk_1EC7F2BE0, &qword_1D56250F0);
        sub_1D4E50004(v67, &unk_1EC7F2BE0, &qword_1D56250F0);
        v69 = OUTLINED_FUNCTION_22_21();
        v62(v69);
        OUTLINED_FUNCTION_9_25(v68 + v65);
        if (v84)
        {
          sub_1D4E50004(v68, &unk_1EC7F2BE0, &qword_1D56250F0);
          goto LABEL_33;
        }
      }

      else
      {
        sub_1D4FE4A64(v68, v92[1]);
        OUTLINED_FUNCTION_9_25(v68 + v65);
        if (!v84)
        {
          v87 = v92[0];
          (v104)(v92[0], v68 + v65, v56);
          OUTLINED_FUNCTION_0_43();
          sub_1D4FE6FF0(v88, v89, MEMORY[0x1E6977328]);
          sub_1D5614D18();
          (v62)(v87, v56);
          sub_1D4E50004(v97, &unk_1EC7F2BE0, &qword_1D56250F0);
          sub_1D4E50004(v98, &unk_1EC7F2BE0, &qword_1D56250F0);
          v90 = OUTLINED_FUNCTION_22_21();
          v62(v90);
          v91 = OUTLINED_FUNCTION_217();
          v62(v91);
          sub_1D4E50004(v68, &unk_1EC7F2BE0, &qword_1D56250F0);
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_47_15(v97);
        OUTLINED_FUNCTION_47_15(v98);
        v85 = OUTLINED_FUNCTION_22_21();
        v62(v85);
        v86 = OUTLINED_FUNCTION_217();
        v62(v86);
      }

      sub_1D4E50004(v68, &unk_1EC7ED570, &unk_1D5671D30);
      goto LABEL_33;
    case 4u:
      sub_1D4FE4934(v38, v27);
      if (OUTLINED_FUNCTION_33_20() == 4)
      {
        v44 = v101;
        v43 = v102;
        (*(v101 + 32))(v17, v39, v102);
        sub_1D5614778();
        v45 = *(v44 + 8);
        v45(v17, v43);
        v45(v27, v43);
        goto LABEL_33;
      }

      (*(v101 + 8))(v27, v102);
      goto LABEL_25;
    case 5u:
      if (OUTLINED_FUNCTION_33_20() == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    default:
      sub_1D4FE4934(v38, v33);
      v40 = *(v33 + 1);
      v41 = *(v33 + 3);
      v42 = *(v33 + 5);
      if (OUTLINED_FUNCTION_33_20())
      {

LABEL_25:
        sub_1D4E50004(v38, &unk_1EC7ED580, &qword_1D56256E0);
      }

      else
      {
        v76 = v33[48];
        v77 = *(v33 + 4);
        v78 = *(v33 + 2);
        v79 = *v33;
        v80 = *v39;
        v81 = *(v39 + 5);
        v82 = v39[48];
        v110[0] = v79;
        v110[1] = v40;
        v110[2] = v78;
        v110[3] = v41;
        v110[4] = v77;
        v110[5] = v42;
        v111 = v76;
        v105 = v80;
        v103 = *(v39 + 8);
        v104 = *(v39 + 24);
        v106 = v103;
        v107 = v104;
        v108 = v81;
        v109 = v82;
        static MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.== infix(_:_:)(v110, &v105);

LABEL_33:
        sub_1D4FE4998(v38);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t type metadata accessor for MusicLibraryPlaylistViewModel.Delta(uint64_t a1)
{
  result = qword_1EC7ED5B8;
  if (!qword_1EC7ED5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FE4934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE4998(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FE49F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FE4A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicLibraryPlaylistViewModel.Delta.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v54 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  sub_1D4FE4934(v0, v23 - v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48));
      v47 = OUTLINED_FUNCTION_24_22();
      v48(v47);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v49, v50, MEMORY[0x1E6977320]);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
      MEMORY[0x1DA6EC0D0](v46);
      goto LABEL_8;
    case 2u:
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      v38 = *(v13 + 32);
      v39 = OUTLINED_FUNCTION_24_22();
      v38(v39);
      (v38)(v18, v24 + v37, v11);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v40, v41, MEMORY[0x1E6977320]);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
      sub_1D5614CB8();
      v42 = *(v13 + 8);
      v42(v18, v11);
      v42(v20, v11);
      break;
    case 3u:
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      v53 = *(v13 + 32);
      v53(v1, v24, v11);
      sub_1D4FE49F4(v24 + v43, v10);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v44, v45, MEMORY[0x1E6977320]);
      sub_1D5614CB8();
      sub_1D4FE4A64(v10, v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
      {
        sub_1D56162F8();
        sub_1D4E50004(v10, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v13 + 8))(v1, v11);
      }

      else
      {
        v53(v20, v7, v11);
        sub_1D56162F8();
        OUTLINED_FUNCTION_38_17();
        sub_1D5614CB8();
        v51 = *(v13 + 8);
        v51(v20, v11);
        sub_1D4E50004(v10, &unk_1EC7F2BE0, &qword_1D56250F0);
        v51(v1, v11);
      }

      break;
    case 4u:
      v33 = OUTLINED_FUNCTION_24_22();
      v34(v33);
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_0_43();
      sub_1D4FE6FF0(v35, v36, MEMORY[0x1E6977320]);
      OUTLINED_FUNCTION_38_17();
      sub_1D5614CB8();
LABEL_8:
      (*(v13 + 8))(v20, v11);
      break;
    case 5u:
      MEMORY[0x1DA6EC0D0](5);
      break;
    default:
      v26 = *v24;
      v25 = v24[1];
      v28 = v24[2];
      v27 = v24[3];
      v30 = v24[4];
      v29 = v24[5];
      v31 = *(v24 + 48);
      v32 = v54;
      MEMORY[0x1DA6EC0D0](0);
      v55 = v26;
      v56 = v25;
      v57 = v28;
      v58 = v27;
      v59 = v30;
      v60 = v29;
      v61 = v31;
      MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hash(into:)(v32);

      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.hashValue.getter()
{
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4FE505C(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.hash(into:)();
  return sub_1D5616328();
}

void sub_1D4FE5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v244 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v241 = (v31 - v32);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  v243 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v220 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  v246 = &v220 - v40;
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D560E728();
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v245 = v44 - v43;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D560D9A8();
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v247 = v50;
  v248 = v51;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_135();
  v242 = v53;
  OUTLINED_FUNCTION_23();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = (&v220 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v58 = OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5();
  v62 = (v61 - v60);
  switch([v25 musicKit_changeDetails_type])
  {
    case 0uLL:
      goto LABEL_32;
    case 1uLL:
      v235 = v62;
      v236 = v27;
      v237 = v37;
      v238 = v57;
      v239 = v28;
      v240 = v58;
      v63 = [v25 musicKit_changeDetails_item];
      if (!v63)
      {
        goto LABEL_33;
      }

      v64 = v63;
      v241 = [v63 legacyIdentifierSet];
      sub_1D560D898();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v66 = sub_1D560DB08();
      OUTLINED_FUNCTION_4();
      v68 = v67;
      v70 = *(v69 + 72);
      v71 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      OUTLINED_FUNCTION_42_15();
      *(v72 - 256) = v65;
      v230 = v73;
      v74 = swift_allocObject();
      v226 = xmmword_1D5621D90;
      *(v74 + 16) = xmmword_1D5621D90;
      v231 = v71;
      v75 = v74 + v71;
      v76 = *(v68 + 104);
      LODWORD(v227) = *MEMORY[0x1E6975040];
      v76(v75);
      v77 = *MEMORY[0x1E6975030];
      v232 = v70;
      LODWORD(v225) = v77;
      v234 = v66;
      v229 = v76;
      v228 = v68 + 104;
      v76(v75 + v70);
      v78 = v245;
      sub_1D560E718();
      v79 = sub_1D560D9E8();
      v80 = v246;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v79);
      sub_1D4F40E88(v241, v49, v78, v80, v21);
      v84 = v247;
      v85 = *(v248 + 16);
      (v85)(v238, v21, v247);
      v241 = v64;
      v86 = [v64 underlyingObject];
      OUTLINED_FUNCTION_5_28();
      v87 = v237;
      sub_1D5614718();
      v88 = [v25 musicKit_changeDetails_isLastItem];
      if ((v88 & 1) != 0 || (v89 = [v25 musicKit_changeDetails_referenceItemPositionIdentifier]) == 0)
      {
        swift_unknownObjectRelease();

        (*(v248 + 8))(v21, v84);
        v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48);
        v62 = v235;
        (*(v244 + 32))(v235, v87, v239);
        *(v62 + v200) = v88;
        goto LABEL_25;
      }

      v223 = v85;
      v224 = v79;

      v90 = [v25 musicKit_changeDetails_referenceItem];
      if (v90)
      {
        v222 = v90;
        v221 = [v90 legacyIdentifierSet];
        sub_1D560D898();
        v91 = OUTLINED_FUNCTION_20_29();
        v92 = OUTLINED_FUNCTION_36_13(v91, v249);
        v95 = v93 + v94;
        v96 = v234;
        v97 = v49;
        v98 = v229;
        (v229)(v93 + v94, v227, v234, v92);
        (v98)(v95 + v232, v225, v96);
        v99 = v245;
        sub_1D560E718();
        v100 = v246;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v101, v102, v103, v224);
        v104 = v238;
        sub_1D4F40E88(v221, v97, v99, v100, v238);
        v105 = OUTLINED_FUNCTION_46_1();
        v106 = v247;
        v223(v105);
        v107 = v222;
        v108 = [v222 underlyingObject];
        OUTLINED_FUNCTION_5_28();
        v109 = v243;
        sub_1D5614718();
        swift_unknownObjectRelease();

        v110 = *(v248 + 8);
        v110(v104, v106);
        v110(v21, v106);
        v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
        v112 = *(v244 + 32);
        v62 = v235;
        v113 = v239;
        v112(v235, v237, v239);
        v112((v62 + v111), v109, v113);
LABEL_25:
        v27 = v236;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5681000);
      v249[0] = v25;
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16(v218, v219, v218, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_11_29();
      i = 63;
      goto LABEL_31;
    case 2uLL:
      v238 = v57;
      v239 = v28;
      v240 = v58;
      v114 = [v25 musicKit_changeDetails_item];
      v237 = v25;
      if (!v114)
      {
        OUTLINED_FUNCTION_13_28();
        sub_1D5615B68();
        OUTLINED_FUNCTION_29_18();
        OUTLINED_FUNCTION_23_22();
        MEMORY[0x1DA6EAC70](v210 + 28, v211 | 0x8000000000000000);
        v249[0] = v237;
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
        OUTLINED_FUNCTION_35_16(v212, v213, v212, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
        OUTLINED_FUNCTION_11_29();
        for (i = 76; ; i = 42)
        {
LABEL_31:
          v220 = i;
LABEL_32:
          sub_1D5615E08();
          __break(1u);
LABEL_33:
          OUTLINED_FUNCTION_13_28();
          sub_1D5615B68();
          OUTLINED_FUNCTION_29_18();
          OUTLINED_FUNCTION_23_22();
          MEMORY[0x1DA6EAC70](v206 + 25, v207 | 0x8000000000000000);
          v249[0] = v25;
          v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
          OUTLINED_FUNCTION_35_16(v208, v209, v208, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
          OUTLINED_FUNCTION_11_29();
        }
      }

      v115 = v114;
      v241 = [v114 legacyIdentifierSet];
      sub_1D560D898();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v116 = sub_1D560DB08();
      OUTLINED_FUNCTION_4();
      v118 = v117;
      v120 = *(v119 + 72);
      v121 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D5621D90;
      v123 = v122 + v121;
      v124 = *(v118 + 104);
      v124(v123, *MEMORY[0x1E6975040], v116);
      v124(v123 + v120, *MEMORY[0x1E6975030], v116);
      v125 = v245;
      sub_1D560E718();
      sub_1D560D9E8();
      v126 = v246;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
      v131 = v238;
      sub_1D4F40E88(v241, v49, v125, v126, v238);
      v132 = v247;
      v133 = v248;
      (*(v248 + 16))(v242, v131, v247);
      v134 = [v115 underlyingObject];
      OUTLINED_FUNCTION_5_28();
      v135 = v243;
      sub_1D5614718();
      swift_unknownObjectRelease();

      (*(v133 + 8))(v131, v132);
      (*(v244 + 32))(v62, v135, v239);
LABEL_26:
      v58 = v240;
LABEL_29:
      swift_storeEnumTagMultiPayload();
      sub_1D4FE7234(v62, v27);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v58);
      OUTLINED_FUNCTION_46();
      return;
    case 3uLL:
      v239 = v28;
      v240 = v58;
      v236 = v27;
      v136 = [v25 musicKit_changeDetails_item];
      v237 = v25;
      if (v136)
      {
        v235 = v136;
        v238 = [v136 legacyIdentifierSet];
        sub_1D560D898();
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
        v138 = sub_1D560DB08();
        OUTLINED_FUNCTION_4();
        v140 = v139;
        v142 = *(v141 + 72);
        v143 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        OUTLINED_FUNCTION_42_15();
        *(v144 - 256) = v137;
        v230 = v145;
        v146 = swift_allocObject();
        v227 = xmmword_1D5621D90;
        *(v146 + 16) = xmmword_1D5621D90;
        v231 = v143;
        v147 = v146 + v143;
        v148 = *(v140 + 104);
        LODWORD(v228) = *MEMORY[0x1E6975040];
        v148(v147);
        v149 = *MEMORY[0x1E6975030];
        v232 = v142;
        LODWORD(v226) = v149;
        v234 = v138;
        v229 = v148;
        v148(v147 + v142);
        v150 = v245;
        sub_1D560E718();
        v151 = sub_1D560D9E8();
        v152 = v246;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v153, v154, v155, v151);
        sub_1D4F40E88(v238, v49, v150, v152, v20);
        v156 = v248;
        v157 = *(v248 + 16);
        v225 = v248 + 16;
        v224 = v157;
        v157(v57, v20, v247);
        v158 = [v235 underlyingObject];
        OUTLINED_FUNCTION_5_28();
        v159 = v241;
        sub_1D5614718();
        v160 = [v237 musicKit_changeDetails_referenceItem];
        if (v160)
        {
          v223 = v160;
          v222 = [v160 legacyIdentifierSet];
          sub_1D560D898();
          v161 = OUTLINED_FUNCTION_20_29();
          v238 = v57;
          v162 = OUTLINED_FUNCTION_36_13(v161, &a9);
          v163 = v150;
          v166 = v164 + v165;
          v167 = v234;
          v233 = v151;
          v168 = v152;
          v169 = v229;
          (v229)(v164 + v165, v228, v234, v162);
          (v169)(v166 + v232, v226, v167);
          sub_1D560E718();
          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v170, v171, v172, v233);
          v173 = v238;
          sub_1D4F40E88(v222, v49, v163, v168, v238);
          v174 = v247;
          v224(v242, v173, v247);
          v175 = v223;
          v176 = [v223 underlyingObject];
          OUTLINED_FUNCTION_5_28();
          v177 = v243;
          sub_1D5614718();
          swift_unknownObjectRelease();

          v178 = *(v248 + 8);
          v178(v173, v174);
          v178(v20, v174);
          v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
          v180 = *(v244 + 32);
          v181 = v239;
          v180(v62, v241, v239);
          v180((v62 + v179), v177, v181);
          v182 = v62 + v179;
          v183 = 0;
          v184 = 1;
          v185 = v181;
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v156 + 8))(v20, v247);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00);
          v201 = v239;
          (*(v244 + 32))(v62, v159, v239);
          OUTLINED_FUNCTION_33();
          v185 = v201;
        }

        __swift_storeEnumTagSinglePayload(v182, v183, v184, v185);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_23_22();
      MEMORY[0x1DA6EAC70](v214 + 26, v215 | 0x8000000000000000);
      v249[0] = v237;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16(v216, v217, v216, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      OUTLINED_FUNCTION_11_29();
      i = 88;
      goto LABEL_31;
    case 4uLL:
      swift_unknownObjectRelease();
      goto LABEL_29;
    case 5uLL:
      if (qword_1EC7E8DF0 != -1)
      {
        swift_once();
      }

      v191 = sub_1D560C758();
      __swift_project_value_buffer(v191, qword_1EC87C140);
      v192 = sub_1D560C738();
      v193 = sub_1D56156E8();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        MEMORY[0x1DA6ED200](v194, -1, -1);
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_46();

      __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
      return;
    case 6uLL:
      v186 = [v25 musicKit_changeDetails_playlistName];
      if (v186)
      {
        v187 = v186;
        v188 = sub_1D5614D68();
        v190 = v189;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v188 = 0;
        v190 = 0;
      }

      *v62 = v188;
      v62[1] = v190;
      *(v62 + 1) = 0u;
      *(v62 + 2) = 0u;
      *(v62 + 48) = 2;
      goto LABEL_29;
    default:
      OUTLINED_FUNCTION_13_28();
      sub_1D5615B68();
      OUTLINED_FUNCTION_29_18();
      v202 = v25;
      v25 = 0xD000000000000010;
      MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5680EE0);
      v249[0] = v202;
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
      OUTLINED_FUNCTION_35_16(v203, v204, v203, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5680F00);
      OUTLINED_FUNCTION_11_29();
      i = 127;
      goto LABEL_31;
  }
}

void sub_1D4FE631C()
{
  OUTLINED_FUNCTION_47();
  v124 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v119 - v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v125 = v14;
  v126 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v121 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v122 = v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v119 - v28;
  type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v135 = 0;
  v136 = 0xE000000000000000;
  sub_1D4FE4934(v0, v32 - v31);
  OUTLINED_FUNCTION_130();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10);
      v78 = v125;
      v77 = v126;
      (*(v125 + 32))(v29, v33, v126);
      MEMORY[0x1DA6EAC70](0x286464612ELL, 0xE500000000000000);
      if (v124)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v79 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v79, v80);
        v131 = v81;
        v132 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        sub_1D5615968();
        OUTLINED_FUNCTION_26_0();
        v82 = OUTLINED_FUNCTION_46_1();
        MEMORY[0x1DA6EAC70](v82);

        MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
        OUTLINED_FUNCTION_37_15();
        OUTLINED_FUNCTION_19_23(v83);
        v86 = v85 | 0x646E0000u;
        if (v84)
        {
          v87 = 0x696E6E696765622ELL;
        }

        else
        {
          v87 = v86;
        }

        if (v84)
        {
          v88 = 0xEA0000000000676ELL;
        }

        else
        {
          v88 = 0xE400000000000000;
        }

        MEMORY[0x1DA6EAC70](v87, v88);

        OUTLINED_FUNCTION_21_20();

        v89 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v89);
      }

      else
      {
        v100 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v100);

        OUTLINED_FUNCTION_37_15();
        OUTLINED_FUNCTION_19_23(v101 | 0xC);
        v104 = v103 | 0x646E0000u;
        if (v102)
        {
          v105 = 0x696E6E696765622ELL;
        }

        else
        {
          v105 = v104;
        }

        if (v102)
        {
          v106 = 0xEA0000000000676ELL;
        }

        else
        {
          v106 = 0xE400000000000000;
        }

        MEMORY[0x1DA6EAC70](v105, v106);

        v107 = OUTLINED_FUNCTION_31_17();
        MEMORY[0x1DA6EAC70](v107);
        OUTLINED_FUNCTION_21_20();
      }

      (*(v78 + 8))(v29, v77);
      break;
    case 2u:
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
      v54 = v125;
      v53 = v126;
      v55 = *(v125 + 32);
      v55(v2, v33, v126);
      v55(v26, v33 + v52, v53);
      MEMORY[0x1DA6EAC70](0x28747265736E692ELL, 0xE800000000000000);
      if (v124)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v56 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v56, v57);
        v131 = v58;
        v132 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v59 = sub_1D5615968();
        v61 = v60;

        MEMORY[0x1DA6EAC70](v59, v61);

        MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
        MEMORY[0x1DA6EAC70](0x3A72657466612020, 0xE900000000000020);
        v129 = sub_1D5614748();
        v130 = v62;
        v132 = 0xE500000000000000;
        v133 = 10;
        v134 = 0xE100000000000000;
        OUTLINED_FUNCTION_8_33();
        v131 = v63;
        v54 = v125;
        OUTLINED_FUNCTION_3_31();
        sub_1D5615968();
        OUTLINED_FUNCTION_26_0();
        v64 = OUTLINED_FUNCTION_46_1();
        MEMORY[0x1DA6EAC70](v64);

        v65 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v65);
      }

      else
      {
        v91 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v91);

        v129 = 0x3A7265746661202CLL;
        v130 = 0xE900000000000020;
        v92 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v92);

        v93 = OUTLINED_FUNCTION_31_17();
        MEMORY[0x1DA6EAC70](v93);
        OUTLINED_FUNCTION_21_20();
      }

      v94 = *(v54 + 8);
      v95 = v126;
      v94(v26, v126);
      v94(v2, v95);
      break;
    case 3u:
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00) + 48);
      v67 = v126;
      v68 = v122;
      v120 = *(v125 + 32);
      v120(v122, v33, v126);
      v69 = v123;
      sub_1D4FE49F4(v33 + v66, v123);
      MEMORY[0x1DA6EAC70](0x2865766F6D2ELL, 0xE600000000000000);
      if (v124)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v129 = sub_1D5614748();
        v130 = v70;
        v133 = 10;
        v134 = 0xE100000000000000;
        v131 = 0x202020200ALL;
        v132 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v71 = sub_1D5615968();
        v73 = v72;

        MEMORY[0x1DA6EAC70](v71, v73);
        v74 = v123;
        v75 = v126;

        sub_1D4FE4A64(v74, v3);
        if (__swift_getEnumTagSinglePayload(v3, 1, v75) == 1)
        {
          sub_1D4E50004(v3, &unk_1EC7F2BE0, &qword_1D56250F0);
          MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
          MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D5681070);
          v76 = v125;
        }

        else
        {
          v108 = v121;
          v120(v121, v3, v75);
          MEMORY[0x1DA6EAC70](2604, 0xE200000000000000);
          MEMORY[0x1DA6EAC70](0x3A72657466612020, 0xE900000000000020);
          v129 = sub_1D5614748();
          v130 = v109;
          v132 = 0xE500000000000000;
          v133 = 10;
          v134 = 0xE100000000000000;
          OUTLINED_FUNCTION_8_33();
          v131 = v110;
          OUTLINED_FUNCTION_3_31();
          v111 = sub_1D5615968();
          v113 = v112;

          MEMORY[0x1DA6EAC70](v111, v113);

          v76 = v125;
          (*(v125 + 8))(v108, v75);
        }

        v114 = OUTLINED_FUNCTION_30_12();
        MEMORY[0x1DA6EAC70](v114);
        sub_1D4E50004(v74, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v76 + 8))(v122, v75);
      }

      else
      {
        v96 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v96);

        sub_1D4FE4A64(v69, v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v67) == 1)
        {
          sub_1D4E50004(v9, &unk_1EC7F2BE0, &qword_1D56250F0);
          MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D5681040);
          sub_1D4E50004(v69, &unk_1EC7F2BE0, &qword_1D56250F0);
          (*(v125 + 8))(v68, v67);
        }

        else
        {
          v115 = OUTLINED_FUNCTION_46_1();
          (v120)(v115);
          v129 = 0x3A7265746661202CLL;
          v130 = 0xE900000000000020;
          v116 = sub_1D5614708();
          MEMORY[0x1DA6EAC70](v116);

          v117 = OUTLINED_FUNCTION_31_17();
          MEMORY[0x1DA6EAC70](v117);
          OUTLINED_FUNCTION_21_20();

          v118 = *(v125 + 8);
          v118(v1, v67);
          sub_1D4E50004(v69, &unk_1EC7F2BE0, &qword_1D56250F0);
          v118(v68, v67);
        }
      }

      break;
    case 4u:
      v44 = v125;
      v43 = v126;
      (*(v125 + 32))(v17, v33, v126);
      MEMORY[0x1DA6EAC70](0x2865766F6D65722ELL, 0xE800000000000000);
      if (v124)
      {
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_10_32();
        v45 = sub_1D5614748();
        OUTLINED_FUNCTION_7_32(v45, v46);
        v131 = v47;
        v132 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_2_26();
        v48 = sub_1D5615968();
        v50 = v49;

        MEMORY[0x1DA6EAC70](v48, v50);

        v51 = OUTLINED_FUNCTION_30_12();
      }

      else
      {
        v90 = sub_1D5614708();
        MEMORY[0x1DA6EAC70](v90);

        v51 = OUTLINED_FUNCTION_31_17();
      }

      MEMORY[0x1DA6EAC70](v51);
      (*(v44 + 8))(v17, v43);
      break;
    case 5u:
      v41 = 0x4165766F6D65722ELL;
      v42 = 0xEA00000000006C6CLL;
      goto LABEL_27;
    default:
      MEMORY[0x1DA6EAC70](0x286574616470752ELL, 0xE800000000000000);
      if (v124)
      {
        OUTLINED_FUNCTION_16_22();
        MEMORY[0x1DA6EAC70](0xD000000000000013, 0x80000001D56810A0);
        OUTLINED_FUNCTION_27_16();
        v34 = MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.debugDescription.getter();
        v36 = v35;

        v133 = v34;
        v134 = v36;
        v131 = 10;
        v132 = 0xE100000000000000;
        OUTLINED_FUNCTION_8_33();
        v127 = v37;
        v128 = 0xE500000000000000;
        sub_1D4F53278();
        OUTLINED_FUNCTION_3_31();
        v38 = sub_1D5615968();
        v40 = v39;

        MEMORY[0x1DA6EAC70](v38, v40);

        v41 = OUTLINED_FUNCTION_30_12();
      }

      else
      {
        OUTLINED_FUNCTION_27_16();
        v97 = MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.description.getter();
        v99 = v98;

        MEMORY[0x1DA6EAC70](v97, v99);

        v41 = OUTLINED_FUNCTION_31_17();
      }

LABEL_27:
      MEMORY[0x1DA6EAC70](v41, v42);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FE6FF0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D4FE7038(uint64_t a1)
{
  sub_1D4FE70E0(319);
  if (v1 <= 0x3F)
  {
    sub_1D4FE714C(319);
    if (v2 <= 0x3F)
    {
      sub_1D4FE71B4(319);
      if (v3 <= 0x3F)
      {
        sub_1D5614828();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4FE70E0(uint64_t a1)
{
  if (!qword_1EC7ED5C8)
  {
    sub_1D5614828();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5C8);
    }
  }
}

void sub_1D4FE714C(uint64_t a1)
{
  if (!qword_1EC7ED5D0)
  {
    sub_1D5614828();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5D0);
    }
  }
}

void sub_1D4FE71B4(uint64_t a1)
{
  if (!qword_1EC7ED5D8)
  {
    sub_1D5614828();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7F2BE0, &qword_1D56250F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7ED5D8);
    }
  }
}

uint64_t sub_1D4FE7234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_20()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_47_15(uint64_t a1)
{

  return sub_1D4E50004(a1, v1, v2);
}

uint64_t FlexAnalysis.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_201();
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  v13 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  type metadata accessor for FlexAnalysis(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for FlexAnalysis(uint64_t a1)
{
  result = qword_1EDD57C80;
  if (!qword_1EDD57C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FE7520(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v3);
  OUTLINED_FUNCTION_0_44();
  v5 = sub_1D4FEE8A0(v4);
  OUTLINED_FUNCTION_36_1(v5);
  if (v7)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D4FE7608(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v3);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v4);

  return sub_1D560EC28();
}

uint64_t FlexAnalysis.events.getter()
{
  if (qword_1EC7E8AC8 != -1)
  {
    OUTLINED_FUNCTION_16_23(&qword_1EC7E8AC8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v0);
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_36_1(v2);
  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

MusicKitInternal::FlexAnalysis::Event_optional __swiftcall FlexAnalysis.Event.init(time:score:)(Swift::Double time, Swift::Int score)
{
  if ((score - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 0;
LABEL_10:
    v5 = (score % 100);
    *v2 = time;
    v3 = v5 / 100.0;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5 / 100.0;
    goto LABEL_11;
  }

  if ((score - 500) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 1;
    goto LABEL_10;
  }

  if ((score - 700) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if ((score - 900) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 3;
    goto LABEL_10;
  }

  v3 = 0.0;
  *v2 = xmmword_1D56257E0;
  *(v2 + 16) = 0;
LABEL_11:
  result.value.amplitude = v5;
  result.value.time = v3;
  result.value.timeScale = score;
  return result;
}

uint64_t FlexAnalysis.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlexAnalysis(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static FlexAnalysis.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FlexAnalysis(0);

  return sub_1D5611A78();
}

uint64_t FlexAnalysis.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for FlexAnalysis(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_12_29();
  sub_1D4FEE8A0(v1);
  return sub_1D5614CB8();
}

uint64_t FlexAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  sub_1D5614E28();
  type metadata accessor for FlexAnalysis(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_12_29();
  sub_1D4FEE8A0(v0);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FE7A80(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D4FEE8A0(&qword_1EC7ECF08);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FE7B24@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlexAnalysis.subscript.getter(uint64_t a1)
{
  return sub_1D4FE7B8C();
}

{
  return sub_1D4FE7B8C();
}

uint64_t sub_1D4FE7B8C()
{
  OUTLINED_FUNCTION_10_33();
  sub_1D4FEE8A0(v0);
  OUTLINED_FUNCTION_15_25(&qword_1EC7ECFF0);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t FlexAnalysis.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_10_33();
  sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_15_25(&qword_1EC7ECFF0);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FE7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v11 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D4FE7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v13 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D4FE7FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4FEE8A0(&qword_1EC7ECFF0);
  v13 = sub_1D4FEE8A0(&unk_1EC7ED960);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D4FE815C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEEA10();
  v0 = OUTLINED_FUNCTION_49_8(0x696F507972746E65);

  qword_1EC87BF08 = v0;
  return result;
}

uint64_t sub_1D4FE81D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEE938();
  v0 = OUTLINED_FUNCTION_49_8(0x6576456F65646976);

  qword_1EC87BF10 = v0;
  return result;
}

uint64_t sub_1D4FE8244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEEA10();
  v0 = sub_1D560D178();

  qword_1EC87BF18 = v0;
  return result;
}

uint64_t sub_1D4FE82E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED968, &qword_1D5626D80);
  swift_getKeyPath();
  sub_1D4FEE8E4();
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

double sub_1D4FE83A4@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t FlexAnalysis.init(from:)(void *a1)
{
  type metadata accessor for FlexAnalysis(0);
  sub_1D4E628D4(a1, v5);
  OUTLINED_FUNCTION_11_30();
  sub_1D4FEE8A0(v2);
  OUTLINED_FUNCTION_9_32();
  sub_1D4FEE8A0(v3);
  OUTLINED_FUNCTION_14_23(&unk_1EC7ED628);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FlexAnalysis.encode(to:)(uint64_t a1)
{
  type metadata accessor for FlexAnalysis(0);
  OUTLINED_FUNCTION_11_30();
  sub_1D4FEE8A0(v1);
  OUTLINED_FUNCTION_9_32();
  sub_1D4FEE8A0(v2);
  OUTLINED_FUNCTION_14_23(&unk_1EC7ED628);
  return sub_1D5612688();
}

unint64_t FlexAnalysis.description.getter()
{
  sub_1D5615B68();

  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t FlexAnalysis.debugDescription.getter()
{
  strcpy(v19, "FlexAnalysis(");
  HIWORD(v19[1]) = -4864;
  strcpy(v18, "\n  id: ");
  BYTE1(v18[1]) = 0;
  WORD1(v18[1]) = 0;
  HIDWORD(v18[1]) = -402653184;
  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v18[0], v18[1]);

  sub_1D5615B68();

  strcpy(v18, ",\n  events: ");
  HIWORD(v18[1]) = -4864;
  if (qword_1EC7E8AC8 != -1)
  {
    OUTLINED_FUNCTION_16_23(&qword_1EC7E8AC8);
  }

  v1 = qword_1EC87BF10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_2_27();
  sub_1D4FEE8A0(v2);
  OUTLINED_FUNCTION_0_44();
  sub_1D4FEE8A0(v3);
  OUTLINED_FUNCTION_22_22(v1);
  v4 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v5 = v17;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1DA6EAF70](v5, &type metadata for FlexAnalysis.Event);
  v8 = v7;

  MEMORY[0x1DA6EAC70](v6, v8);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v18[0], v18[1]);

  sub_1D5615B68();

  v18[0] = 0xD000000000000011;
  v18[1] = 0x80000001D56810E0;
  if (qword_1EC7E8AC0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC87BF08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_22_22(v9);
  if (v17)
  {
    v10 = v17;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x1DA6EAF70](v10, &type metadata for FlexAnalysis.PivotPoints);

  v11 = OUTLINED_FUNCTION_201();
  MEMORY[0x1DA6EAC70](v11);

  MEMORY[0x1DA6EAC70](v18[0], v18[1]);

  sub_1D5615B68();

  v18[0] = 0xD000000000000010;
  v18[1] = 0x80000001D5681100;
  if (qword_1EC7E8AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22_22(qword_1EC87BF18);
  if (v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = v4;
  }

  v13 = MEMORY[0x1DA6EAF70](v12, &type metadata for FlexAnalysis.PivotPoints);
  v15 = v14;

  MEMORY[0x1DA6EAC70](v13, v15);

  MEMORY[0x1DA6EAC70](v18[0], v18[1]);

  if (qword_1EC7E8AE0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v18[2])
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5681120);
    LOBYTE(v18[1]) &= 1u;
    sub_1D5615D48();

    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v19[0];
}

uint64_t sub_1D4FE8B30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7ED5E8 = v4;
  return result;
}

uint64_t static FlexAnalysis.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E8AE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FE8CCC()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ED5F0);
  __swift_project_value_buffer(v0, qword_1EC7ED5F0);
  type metadata accessor for FlexAnalysis(0);
  sub_1D4FEE8A0(&qword_1EC7ECFF0);
  return sub_1D560D988();
}

uint64_t sub_1D4FE8D8C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ED608);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E8AF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7ED5F0);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D4FE8E70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D560D9A8();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_24_0();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t sub_1D4FE8F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1735290732 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F4C6172747865 && a2 == 0xE900000000000067)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

uint64_t sub_1D4FE9088(char a1)
{
  result = 0x74726F6873;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1735290732;
      break;
    case 3:
      result = 0x6E6F4C6172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FE9120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE8F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FE9148(uint64_t a1)
{
  v2 = sub_1D4FE973C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9184(uint64_t a1)
{
  v2 = sub_1D4FE973C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE91C0(uint64_t a1)
{
  v2 = sub_1D4FE9790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE91FC(uint64_t a1)
{
  v2 = sub_1D4FE9790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE9238(uint64_t a1)
{
  v2 = sub_1D4FE97E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9274(uint64_t a1)
{
  v2 = sub_1D4FE97E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE92B0(uint64_t a1)
{
  v2 = sub_1D4FE9838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE92EC(uint64_t a1)
{
  v2 = sub_1D4FE9838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FE9328(uint64_t a1)
{
  v2 = sub_1D4FE988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FE9364(uint64_t a1)
{
  v2 = sub_1D4FE988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Event.TimeScale.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED630, &qword_1D5625800);
  OUTLINED_FUNCTION_4();
  v64 = v31;
  v65 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v63 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED638, &qword_1D5625808);
  OUTLINED_FUNCTION_4();
  v61 = v35;
  v62 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v60 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED640, &qword_1D5625810);
  OUTLINED_FUNCTION_4();
  v58 = v39;
  v59 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v57 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED648, &qword_1D5625818);
  OUTLINED_FUNCTION_4();
  v55 = v43;
  v56 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED650, &qword_1D5625820);
  OUTLINED_FUNCTION_4();
  v47 = v46;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v55 - v49;
  v51 = *v24;
  OUTLINED_FUNCTION_23_23(v29, v29[3]);
  sub_1D4FE973C();
  sub_1D56163D8();
  switch(v51)
  {
    case 1:
      OUTLINED_FUNCTION_41_15();
      sub_1D4FE9838();
      v52 = v57;
      OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Event.TimeScale.MediumCodingKeys, &a12);
      v54 = v58;
      v53 = v59;
      goto LABEL_6;
    case 2:
      a13 = 2;
      sub_1D4FE97E4();
      v52 = v60;
      OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Event.TimeScale.LongCodingKeys, &a13);
      v54 = v61;
      v53 = v62;
      goto LABEL_6;
    case 3:
      a14 = 3;
      sub_1D4FE9790();
      v52 = v63;
      OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Event.TimeScale.ExtraLongCodingKeys, &a14);
      v54 = v64;
      v53 = v65;
LABEL_6:
      (*(v54 + 8))(v52, v53);
      break;
    default:
      a11 = 0;
      sub_1D4FE988C();
      OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Event.TimeScale.ShortCodingKeys, &a11);
      (*(v55 + 8))(v25, v56);
      break;
  }

  (*(v47 + 8))(v50, v45);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FE973C()
{
  result = qword_1EC7ED658;
  if (!qword_1EC7ED658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED658);
  }

  return result;
}

unint64_t sub_1D4FE9790()
{
  result = qword_1EC7ED660;
  if (!qword_1EC7ED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED660);
  }

  return result;
}

unint64_t sub_1D4FE97E4()
{
  result = qword_1EC7ED668;
  if (!qword_1EC7ED668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED668);
  }

  return result;
}

unint64_t sub_1D4FE9838()
{
  result = qword_1EC7ED670;
  if (!qword_1EC7ED670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED670);
  }

  return result;
}

unint64_t sub_1D4FE988C()
{
  result = qword_1EC7ED678;
  if (!qword_1EC7ED678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED678);
  }

  return result;
}

uint64_t FlexAnalysis.Event.TimeScale.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void FlexAnalysis.Event.TimeScale.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v28;
  a24 = v29;
  v31 = v30;
  v73 = v32;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED680, &qword_1D5625828);
  OUTLINED_FUNCTION_4();
  v72 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v75 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED688, &qword_1D5625830);
  OUTLINED_FUNCTION_4();
  v69 = v37;
  v70 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v71 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED690, &qword_1D5625838);
  OUTLINED_FUNCTION_4();
  v67 = v41;
  v68 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_71_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED698, &qword_1D5625840);
  OUTLINED_FUNCTION_4();
  v66 = v44;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6A0, &unk_1D5625848);
  OUTLINED_FUNCTION_4();
  v74 = v47;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v31, v31[3]);
  sub_1D4FE973C();
  OUTLINED_FUNCTION_28_21();
  sub_1D5616398();
  if (v24)
  {
    goto LABEL_8;
  }

  v77 = v31;
  v49 = v25;
  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v51 == v52 >> 1)
  {
LABEL_7:
    sub_1D5615C18();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v59 = &type metadata for FlexAnalysis.Event.TimeScale;
    v60 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v60);
    OUTLINED_FUNCTION_24_0();
    (*(v61 + 104))(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v49, v46);
    v31 = v77;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v51 < (v52 >> 1))
  {
    v53 = *(v50 + v51);
    sub_1D4FE35EC();
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    if (v55 == v57 >> 1)
    {
      v65 = v53;
      switch(v53)
      {
        case 1:
          OUTLINED_FUNCTION_41_15();
          sub_1D4FE9838();
          v62 = v27;
          OUTLINED_FUNCTION_21_4(&type metadata for FlexAnalysis.Event.TimeScale.MediumCodingKeys, &a12);
          swift_unknownObjectRelease();
          v64 = v67;
          v63 = v68;
          goto LABEL_13;
        case 2:
          a13 = 2;
          sub_1D4FE97E4();
          v62 = v71;
          OUTLINED_FUNCTION_21_4(&type metadata for FlexAnalysis.Event.TimeScale.LongCodingKeys, &a13);
          swift_unknownObjectRelease();
          v64 = v69;
          v63 = v70;
LABEL_13:
          (*(v64 + 8))(v62, v63);
          break;
        case 3:
          a14 = 3;
          sub_1D4FE9790();
          sub_1D5615F18();
          swift_unknownObjectRelease();
          (*(v72 + 8))(v75, v76);
          break;
        default:
          a11 = 0;
          sub_1D4FE988C();
          OUTLINED_FUNCTION_21_4(&type metadata for FlexAnalysis.Event.TimeScale.ShortCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v66 + 8))(v26, v43);
          break;
      }

      (*(v74 + 8))(v49, v46);
      *v73 = v65;
      __swift_destroy_boxed_opaque_existential_1(v77);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static FlexAnalysis.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D4FE9F74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616353656D6974 && a2 == 0xE900000000000065;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x647574696C706D61 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D4FEA094(char a1)
{
  if (!a1)
  {
    return 1701669236;
  }

  if (a1 == 1)
  {
    return 0x6C616353656D6974;
  }

  return 0x647574696C706D61;
}

uint64_t sub_1D4FEA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FE9F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEA11C(uint64_t a1)
{
  v2 = sub_1D4FECB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEA158(uint64_t a1)
{
  v2 = sub_1D4FECB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Event.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_47_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6A8, &qword_1D5625858);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v3, v4);
  sub_1D4FECB70();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_39_10();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_41_15();
    sub_1D4FECBC4();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v5 = OUTLINED_FUNCTION_134_0();
  v6(v5);
  OUTLINED_FUNCTION_46_10();
}

uint64_t FlexAnalysis.Event.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  MEMORY[0x1DA6EC0D0](v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  return MEMORY[0x1DA6EC100](*&v4);
}

uint64_t FlexAnalysis.Event.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA6EC100](*&v3);
  MEMORY[0x1DA6EC0D0](v2);
  OUTLINED_FUNCTION_50_9();
  return sub_1D5616328();
}

void FlexAnalysis.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14)
{
  OUTLINED_FUNCTION_47_16();
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6C0, &qword_1D5625860);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  v18 = sub_1D4FECB70();
  OUTLINED_FUNCTION_19_24(&type metadata for FlexAnalysis.Event.CodingKeys, v19, v18);
  if (!v15)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v21 = v20;
    OUTLINED_FUNCTION_41_15();
    sub_1D4FECC18();
    sub_1D5615FD8();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_3_32();
    v25(v24);
    *v16 = v21;
    *(v16 + 8) = a14;
    *(v16 + 16) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_46_10();
}

uint64_t sub_1D4FEA57C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D56162D8();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  MEMORY[0x1DA6EC0D0](v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1DA6EC100](*&v6);
  return sub_1D5616328();
}

uint64_t static FlexAnalysis.SampledValues.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return OUTLINED_FUNCTION_29_4();
    }
  }

  return sub_1D4EFA0D0(v5, v7);
}

uint64_t sub_1D4FEA64C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D5681140 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D4FEA718(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D4FEA770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEA64C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEA798(uint64_t a1)
{
  v2 = sub_1D4FECC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEA7D4(uint64_t a1)
{
  v2 = sub_1D4FECC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.SampledValues.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6D0, &qword_1D5625868);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(v2, v2[3]);
  sub_1D4FECC6C();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D5616048();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    sub_1D4FECCC0(&unk_1EC7ED6E8);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v4 = OUTLINED_FUNCTION_134_0();
  v5(v4);
  OUTLINED_FUNCTION_26();
}

void FlexAnalysis.SampledValues.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v1 = *v0;
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA6EC100](v2);
  }

  sub_1D4F07ACC();
}

uint64_t FlexAnalysis.SampledValues.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC100](v3);
  }

  sub_1D4F07ACC();
  return sub_1D5616328();
}

void FlexAnalysis.SampledValues.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6F0, &qword_1D5625878);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  v4 = sub_1D4FECC6C();
  OUTLINED_FUNCTION_19_24(&type metadata for FlexAnalysis.SampledValues.CodingKeys, v5, v4);
  if (!v1)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    v6 = sub_1D5615F58();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED6E0, &qword_1D5625870);
    sub_1D4FECCC0(&unk_1EC7ED6F8);
    OUTLINED_FUNCTION_18_28();
    sub_1D5615FD8();
    v9 = OUTLINED_FUNCTION_3_32();
    v10(v9);
    *v2 = v6;
    *(v2 + 8) = v8 & 1;
    *(v2 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FEAC60(uint64_t a1)
{
  sub_1D56162D8();
  FlexAnalysis.SampledValues.hash(into:)();
  return sub_1D5616328();
}

uint64_t static FlexAnalysis.PivotPoints.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((sub_1D4F0B2DC() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_71();

  return sub_1D4F0B2E0();
}

uint64_t sub_1D4FEAD7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E696167 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D5681160 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1936154996 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

unint64_t sub_1D4FEAED8(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 0x736E696167;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FEAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FEAF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEAD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEAFC4(uint64_t a1)
{
  v2 = sub_1D4FECD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEB000(uint64_t a1)
{
  v2 = sub_1D4FECD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexAnalysis.PivotPoints.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED700, &qword_1D5625880);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_23_23(a1, a1[3]);
  sub_1D4FECD28();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECD7C();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616048();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FECE54();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  v4 = OUTLINED_FUNCTION_134_0();
  return v5(v4);
}

uint64_t FlexAnalysis.PivotPoints.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  sub_1D4F0B2F4();
  if (v3 == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA6EC100](v4);
  }

  return sub_1D4F0B2F8();
}

uint64_t FlexAnalysis.PivotPoints.hashValue.getter()
{
  sub_1D56162D8();
  FlexAnalysis.PivotPoints.hash(into:)();
  return sub_1D5616328();
}

uint64_t FlexAnalysis.PivotPoints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED740, &qword_1D5625898);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  sub_1D4FECD28();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_40_15();
  sub_1D5615FB8();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED710, &qword_1D5625888);
  sub_1D4FECF2C();
  OUTLINED_FUNCTION_18_28();
  sub_1D5615FD8();
  v9 = v15;
  LOBYTE(v15) = 2;
  OUTLINED_FUNCTION_40_15();
  v10 = sub_1D5615F58();
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED728, &qword_1D5625890);
  sub_1D4FED004();
  OUTLINED_FUNCTION_18_28();
  sub_1D5615FD8();
  v12 = OUTLINED_FUNCTION_3_32();
  v13(v12);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14 & 1;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4FEB5E8(uint64_t a1)
{
  sub_1D56162D8();
  FlexAnalysis.PivotPoints.hash(into:)();
  return sub_1D5616328();
}

uint64_t static FlexAnalysis.Gain.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_29_4();
  }
}

uint64_t sub_1D4FEB67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7366664F656D6974 && a2 == 0xEA00000000007465;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D4FEB748(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x7366664F656D6974;
  }
}

uint64_t sub_1D4FEB788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEB67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEB7B0(uint64_t a1)
{
  v2 = sub_1D4FED0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEB7EC(uint64_t a1)
{
  v2 = sub_1D4FED0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlexAnalysis.Gain.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED768, &qword_1D56258A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_23_23(v3, v4);
  sub_1D4FED0DC();
  OUTLINED_FUNCTION_28_21();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
  }

  v5 = OUTLINED_FUNCTION_134_0();
  return v6(v5);
}

uint64_t FlexAnalysis.Gain.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA6EC100](*&v3);
}

uint64_t FlexAnalysis.Gain.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  if (v1 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x1DA6EC100](*&v2);
  OUTLINED_FUNCTION_50_9();
  return sub_1D5616328();
}

void FlexAnalysis.Gain.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_47_16();
  OUTLINED_FUNCTION_26_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED778, &qword_1D56258A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_13_4();
  v5 = sub_1D4FED0DC();
  OUTLINED_FUNCTION_19_24(&type metadata for FlexAnalysis.Gain.CodingKeys, v6, v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_39_10();
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v8 = v7;
    OUTLINED_FUNCTION_6_33();
    sub_1D5615FB8();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_3_32();
    v12(v11);
    *v3 = v8;
    v3[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_46_10();
}

uint64_t sub_1D4FEBB7C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D56162D8();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1DA6EC100](*&v5);
  return sub_1D5616328();
}

uint64_t sub_1D4FEBC08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72746E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C6173 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D4FEBCCC(char a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a1 & 1);
  return sub_1D5616328();
}

uint64_t sub_1D4FEBD0C(char a1)
{
  if (a1)
  {
    return 0x746E65696C6173;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_1D4FEBD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FEBD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FEBC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FEBDBC(uint64_t a1)
{
  v2 = sub_1D4FED130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBDF8(uint64_t a1)
{
  v2 = sub_1D4FED130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FEBE34(uint64_t a1)
{
  v2 = sub_1D4FED1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBE70(uint64_t a1)
{
  v2 = sub_1D4FED1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4FEBEAC(uint64_t a1)
{
  v2 = sub_1D4FED184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FEBEE8(uint64_t a1)
{
  v2 = sub_1D4FED184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlexAnalysis.Tag.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED780, &qword_1D56258B0);
  OUTLINED_FUNCTION_4();
  v49 = v29;
  v50 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v48 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED788, &qword_1D56258B8);
  OUTLINED_FUNCTION_4();
  v46 = v33;
  v47 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED790, &qword_1D56258C0);
  OUTLINED_FUNCTION_4();
  v39 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v46 - v41;
  v43 = *v23;
  OUTLINED_FUNCTION_23_23(v27, v27[3]);
  sub_1D4FED130();
  sub_1D56163D8();
  v44 = (v39 + 8);
  if (v43)
  {
    a13 = 1;
    sub_1D4FED184();
    v45 = v48;
    OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Tag.SalientCodingKeys, &a13);
    (*(v49 + 8))(v45, v50);
  }

  else
  {
    a12 = 0;
    sub_1D4FED1D8();
    OUTLINED_FUNCTION_17_23(&type metadata for FlexAnalysis.Tag.IntroCodingKeys, &a12);
    (*(v46 + 8))(v36, v47);
  }

  (*v44)(v42, v37);
  OUTLINED_FUNCTION_26();
}

uint64_t FlexAnalysis.Tag.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void FlexAnalysis.Tag.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v26;
  a23 = v27;
  v69 = v23;
  v29 = v28;
  v66 = v30;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7B0, &qword_1D56258C8);
  OUTLINED_FUNCTION_4();
  v65 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v61 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7B8, &qword_1D56258D0);
  OUTLINED_FUNCTION_4();
  v64 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_71_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED7C0, &qword_1D56258D8);
  OUTLINED_FUNCTION_4();
  v67 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_23(v29, v29[3]);
  sub_1D4FED130();
  v41 = v69;
  sub_1D5616398();
  if (v41)
  {
    goto LABEL_10;
  }

  v62 = v35;
  v63 = v25;
  v69 = v29;
  v42 = v68;
  sub_1D5615FE8();
  v43 = sub_1D4FE35F0();
  if (v45 == v46 >> 1)
  {
    v68 = v43;
LABEL_9:
    sub_1D5615C18();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v57 = &type metadata for FlexAnalysis.Tag;
    v58 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v58);
    OUTLINED_FUNCTION_24_0();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v24, v38);
    v29 = v69;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  v61[1] = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    v48 = sub_1D4FE35EC();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      if (v47)
      {
        a13 = 1;
        sub_1D4FED184();
        v53 = v34;
        OUTLINED_FUNCTION_3_0(&type metadata for FlexAnalysis.Tag.SalientCodingKeys, &a13);
        v54 = v66;
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v53, v42);
      }

      else
      {
        a12 = 0;
        sub_1D4FED1D8();
        v60 = v63;
        OUTLINED_FUNCTION_3_0(&type metadata for FlexAnalysis.Tag.IntroCodingKeys, &a12);
        v54 = v66;
        v55 = v67;
        swift_unknownObjectRelease();
        (*(v64 + 8))(v60, v62);
      }

      (*(v55 + 8))(v24, v50);
      *v54 = v47;
      __swift_destroy_boxed_opaque_existential_1(v69);
      goto LABEL_11;
    }

    v68 = v48;
    goto LABEL_9;
  }

  __break(1u);
}

void FlexAnalysis.SampledValues.subscript.getter(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(*(v2 + 16) + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    OUTLINED_FUNCTION_8_1();
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t FlexAnalysis.SampledValues.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*(v1 + 16) + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FlexAnalysis.SampledValues.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall FlexAnalysis.SampledValues.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall FlexAnalysis.SampledValues.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (offsetBy < 1)
  {
    if (v3 <= 0 && v3 > offsetBy)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (v3 < 0 || v3 >= offsetBy)
  {
LABEL_11:
    v5 = __OFADD__(_, offsetBy);
    _ += offsetBy;
    if (!v5)
    {
      LOBYTE(offsetBy) = 0;
      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_5:
  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_15:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall FlexAnalysis.SampledValues.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1D4FEC7D4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = FlexAnalysis.SampledValues.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D4FEC818@<X0>(uint64_t *a1@<X8>)
{
  result = FlexAnalysis.SampledValues.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1D4FEC840(void *a1, unint64_t *a2))()
{
  FlexAnalysis.SampledValues.subscript.getter(*a2);
  *a1 = v3;
  return nullsub_1;
}

void sub_1D4FEC888(uint64_t a1@<X0>, void *a2@<X8>)
{
  FlexAnalysis.SampledValues.subscript.getter(*a1, *(a1 + 8));
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_1D4FEC8BC@<X0>(void *a1@<X8>)
{
  result = FlexAnalysis.SampledValues.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FEC92C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FEC984(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FEC9C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1D4FEC9D4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = FlexAnalysis.SampledValues.index(after:)(*a1);
  *a2 = result;
  return result;
}

void sub_1D4FECA18(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

void *sub_1D4FECA6C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D4F033A0(*(a3 + 16), 0);
  v8 = sub_1D4EFECA0(v10, (v7 + 4), v4, a1, a2 & 1, a3);

  if (v8 == v4)
  {

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4FECB70()
{
  result = qword_1EC7ED6B0;
  if (!qword_1EC7ED6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6B0);
  }

  return result;
}

unint64_t sub_1D4FECBC4()
{
  result = qword_1EC7ED6B8;
  if (!qword_1EC7ED6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6B8);
  }

  return result;
}

unint64_t sub_1D4FECC18()
{
  result = qword_1EC7ED6C8;
  if (!qword_1EC7ED6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6C8);
  }

  return result;
}

unint64_t sub_1D4FECC6C()
{
  result = qword_1EC7ED6D8;
  if (!qword_1EC7ED6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED6D8);
  }

  return result;
}

unint64_t sub_1D4FECCC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED6E0, &qword_1D5625870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FECD28()
{
  result = qword_1EC7ED708;
  if (!qword_1EC7ED708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED708);
  }

  return result;
}

unint64_t sub_1D4FECD7C()
{
  result = qword_1EC7ED718;
  if (!qword_1EC7ED718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED718);
  }

  return result;
}

unint64_t sub_1D4FECE00()
{
  result = qword_1EC7ED720;
  if (!qword_1EC7ED720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED720);
  }

  return result;
}

unint64_t sub_1D4FECE54()
{
  result = qword_1EC7ED730;
  if (!qword_1EC7ED730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FECED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED730);
  }

  return result;
}

unint64_t sub_1D4FECED8()
{
  result = qword_1EC7ED738;
  if (!qword_1EC7ED738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED738);
  }

  return result;
}

unint64_t sub_1D4FECF2C()
{
  result = qword_1EC7ED748;
  if (!qword_1EC7ED748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED710, &qword_1D5625888);
    sub_1D4FECFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED748);
  }

  return result;
}

unint64_t sub_1D4FECFB0()
{
  result = qword_1EC7ED750;
  if (!qword_1EC7ED750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED750);
  }

  return result;
}

unint64_t sub_1D4FED004()
{
  result = qword_1EC7ED758;
  if (!qword_1EC7ED758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED728, &qword_1D5625890);
    sub_1D4FED088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED758);
  }

  return result;
}

unint64_t sub_1D4FED088()
{
  result = qword_1EC7ED760;
  if (!qword_1EC7ED760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED760);
  }

  return result;
}

unint64_t sub_1D4FED0DC()
{
  result = qword_1EC7ED770;
  if (!qword_1EC7ED770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED770);
  }

  return result;
}

unint64_t sub_1D4FED130()
{
  result = qword_1EC7ED798;
  if (!qword_1EC7ED798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED798);
  }

  return result;
}

unint64_t sub_1D4FED184()
{
  result = qword_1EC7ED7A0;
  if (!qword_1EC7ED7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7A0);
  }

  return result;
}

unint64_t sub_1D4FED1D8()
{
  result = qword_1EC7ED7A8;
  if (!qword_1EC7ED7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7A8);
  }

  return result;
}

unint64_t sub_1D4FED2C0()
{
  result = qword_1EC7ED7C8;
  if (!qword_1EC7ED7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7C8);
  }

  return result;
}

unint64_t sub_1D4FED318()
{
  result = qword_1EC7ED7D0;
  if (!qword_1EC7ED7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7D0);
  }

  return result;
}

unint64_t sub_1D4FED370()
{
  result = qword_1EC7ED7D8;
  if (!qword_1EC7ED7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7D8);
  }

  return result;
}

unint64_t sub_1D4FED3C8()
{
  result = qword_1EC7ED7E0;
  if (!qword_1EC7ED7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7E0);
  }

  return result;
}

unint64_t sub_1D4FED420()
{
  result = qword_1EC7ED7E8;
  if (!qword_1EC7ED7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7E8);
  }

  return result;
}

unint64_t sub_1D4FED4BC()
{
  result = qword_1EC7ED7F8;
  if (!qword_1EC7ED7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED7F8);
  }

  return result;
}

unint64_t sub_1D4FED514()
{
  result = qword_1EC7ED800;
  if (!qword_1EC7ED800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED800);
  }

  return result;
}

unint64_t sub_1D4FED59C()
{
  result = qword_1EC7ED818;
  if (!qword_1EC7ED818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED818);
  }

  return result;
}

unint64_t sub_1D4FED638()
{
  result = qword_1EC7ED830;
  if (!qword_1EC7ED830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED830);
  }

  return result;
}

unint64_t sub_1D4FED708()
{
  result = qword_1EC7ED848;
  if (!qword_1EC7ED848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED848);
  }

  return result;
}

unint64_t sub_1D4FED79C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED810, &qword_1D5625FD0);
    sub_1D4FED59C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FED898(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexAnalysis.Event(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 24))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for FlexAnalysis.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D4FED9A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1D4FED9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4FEDA34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D4FEDA74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AudioAnalysis.TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioAnalysis.TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

_BYTE *sub_1D4FEDB84(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_35(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlexAnalysis.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D4FEDD38(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_35(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FEDE54()
{
  result = qword_1EC7ED870;
  if (!qword_1EC7ED870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED870);
  }

  return result;
}

unint64_t sub_1D4FEDEAC()
{
  result = qword_1EC7ED878;
  if (!qword_1EC7ED878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED878);
  }

  return result;
}

unint64_t sub_1D4FEDF04()
{
  result = qword_1EC7ED880;
  if (!qword_1EC7ED880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED880);
  }

  return result;
}

unint64_t sub_1D4FEDF5C()
{
  result = qword_1EC7ED888;
  if (!qword_1EC7ED888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED888);
  }

  return result;
}

unint64_t sub_1D4FEDFB4()
{
  result = qword_1EC7ED890;
  if (!qword_1EC7ED890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED890);
  }

  return result;
}

unint64_t sub_1D4FEE00C()
{
  result = qword_1EC7ED898;
  if (!qword_1EC7ED898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED898);
  }

  return result;
}

unint64_t sub_1D4FEE064()
{
  result = qword_1EC7ED8A0;
  if (!qword_1EC7ED8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8A0);
  }

  return result;
}

unint64_t sub_1D4FEE0BC()
{
  result = qword_1EC7ED8A8;
  if (!qword_1EC7ED8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8A8);
  }

  return result;
}

unint64_t sub_1D4FEE114()
{
  result = qword_1EC7ED8B0;
  if (!qword_1EC7ED8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8B0);
  }

  return result;
}

unint64_t sub_1D4FEE16C()
{
  result = qword_1EC7ED8B8;
  if (!qword_1EC7ED8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8B8);
  }

  return result;
}

unint64_t sub_1D4FEE1C4()
{
  result = qword_1EC7ED8C0;
  if (!qword_1EC7ED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8C0);
  }

  return result;
}

unint64_t sub_1D4FEE21C()
{
  result = qword_1EC7ED8C8;
  if (!qword_1EC7ED8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8C8);
  }

  return result;
}

unint64_t sub_1D4FEE274()
{
  result = qword_1EC7ED8D0;
  if (!qword_1EC7ED8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8D0);
  }

  return result;
}

unint64_t sub_1D4FEE2CC()
{
  result = qword_1EC7ED8D8;
  if (!qword_1EC7ED8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8D8);
  }

  return result;
}

unint64_t sub_1D4FEE324()
{
  result = qword_1EC7ED8E0;
  if (!qword_1EC7ED8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8E0);
  }

  return result;
}

unint64_t sub_1D4FEE37C()
{
  result = qword_1EC7ED8E8;
  if (!qword_1EC7ED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8E8);
  }

  return result;
}

unint64_t sub_1D4FEE3D4()
{
  result = qword_1EC7ED8F0;
  if (!qword_1EC7ED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8F0);
  }

  return result;
}

unint64_t sub_1D4FEE42C()
{
  result = qword_1EC7ED8F8;
  if (!qword_1EC7ED8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED8F8);
  }

  return result;
}

unint64_t sub_1D4FEE484()
{
  result = qword_1EC7ED900;
  if (!qword_1EC7ED900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED900);
  }

  return result;
}

unint64_t sub_1D4FEE4DC()
{
  result = qword_1EC7ED908;
  if (!qword_1EC7ED908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED908);
  }

  return result;
}

unint64_t sub_1D4FEE534()
{
  result = qword_1EC7ED910;
  if (!qword_1EC7ED910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED910);
  }

  return result;
}

unint64_t sub_1D4FEE58C()
{
  result = qword_1EC7ED918;
  if (!qword_1EC7ED918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED918);
  }

  return result;
}

unint64_t sub_1D4FEE5E4()
{
  result = qword_1EC7ED920;
  if (!qword_1EC7ED920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED920);
  }

  return result;
}

unint64_t sub_1D4FEE63C()
{
  result = qword_1EC7ED928;
  if (!qword_1EC7ED928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED928);
  }

  return result;
}

unint64_t sub_1D4FEE694()
{
  result = qword_1EC7ED930;
  if (!qword_1EC7ED930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED930);
  }

  return result;
}

unint64_t sub_1D4FEE6EC()
{
  result = qword_1EC7ED938;
  if (!qword_1EC7ED938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED938);
  }

  return result;
}

unint64_t sub_1D4FEE744()
{
  result = qword_1EC7ED940;
  if (!qword_1EC7ED940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED940);
  }

  return result;
}

unint64_t sub_1D4FEE79C()
{
  result = qword_1EC7ED948;
  if (!qword_1EC7ED948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED948);
  }

  return result;
}

unint64_t sub_1D4FEE7F4()
{
  result = qword_1EC7ED950;
  if (!qword_1EC7ED950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED950);
  }

  return result;
}

unint64_t sub_1D4FEE84C()
{
  result = qword_1EC7ED958;
  if (!qword_1EC7ED958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED958);
  }

  return result;
}

unint64_t sub_1D4FEE8A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FEE8E4()
{
  result = qword_1EC7ED970;
  if (!qword_1EC7ED970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED970);
  }

  return result;
}

unint64_t sub_1D4FEE938()
{
  result = qword_1EC7ED978;
  if (!qword_1EC7ED978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED008, &qword_1D5623E38);
    sub_1D4FEE9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED978);
  }

  return result;
}

unint64_t sub_1D4FEE9BC()
{
  result = qword_1EC7ED980;
  if (!qword_1EC7ED980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED980);
  }

  return result;
}

unint64_t sub_1D4FEEA10()
{
  result = qword_1EC7ED988;
  if (!qword_1EC7ED988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED000, &unk_1D56257F0);
    sub_1D4FEEA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED988);
  }

  return result;
}

unint64_t sub_1D4FEEA94()
{
  result = qword_1EC7ED990;
  if (!qword_1EC7ED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED990);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_16MusicKitInternal0A24LibraryPlaylistViewModelC8RevisionV12SourceActionO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D4FEEBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D4FEEBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D4FEEC38()
{
  result = qword_1EC7ED998;
  if (!qword_1EC7ED998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED998);
  }

  return result;
}

uint64_t sub_1D4FEEC8C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D5616168() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;
    sub_1D4FEEE2C(v2);
    sub_1D4FEEE2C(v3);
    v5 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v8, &v7);
    sub_1D4FEEE48(v7);
    sub_1D4FEEE48(v8);
  }

  return v5 & 1;
}

uint64_t sub_1D4FEED68()
{
  sub_1D56162D8();
  sub_1D5614E28();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4FEEDDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *&v4[72] = *v1;
  v5 = v2;
  sub_1D56162D8();
  sub_1D4FEED24(v4);
  return sub_1D5616328();
}

unint64_t sub_1D4FEEE2C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_1D4FEEE48(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t MusicRecentlyPlayedRequest.configuration.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_59_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1D560E068();
  sub_1D560CCE8();
  (*(v5 + 8))(v8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v16 = type metadata accessor for MusicRequestConfiguration(0);
  v17 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v15, v17 ^ 1u, 1, v16);
  sub_1D4F73F78(v15, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a2);
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
    {
      sub_1D4FEF060(v12);
    }
  }

  else
  {
    sub_1D4E56C6C(v12, a2);
  }

  return sub_1D4FEF060(v15);
}

uint64_t sub_1D4FEF060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FEF108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v7);
  v8 = sub_1D560E0A8();
  return MusicRecentlyPlayedRequest.configuration.setter(v7, v8);
}

uint64_t MusicRecentlyPlayedRequest.configuration.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v5 + 16))(v9, v12, v3);
  sub_1D560E078();
  sub_1D4F581B8(a1);
  return (*(v5 + 8))(v12, v3);
}

void (*MusicRecentlyPlayedRequest.configuration.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = *(*(type metadata accessor for MusicRequestConfiguration(0) - 8) + 64);
  a1[2] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  a1[3] = v5;
  MusicRecentlyPlayedRequest.configuration.getter(v5);
  return sub_1D4FEF390;
}

void sub_1D4FEF390(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  if (a2)
  {
    sub_1D4F5A490(v3, v2);
    MusicRecentlyPlayedRequest.configuration.setter(v2, v4);
    sub_1D4F581B8(v3);
  }

  else
  {
    MusicRecentlyPlayedRequest.configuration.setter(v3, v4);
  }

  free(v3);

  free(v2);
}

uint64_t MusicRecentlyPlayedRequest.source.getter@<X0>(char *a2@<X8>)
{
  v3 = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560E088();
  result = (*(v5 + 88))(v8, v3);
  if (result != *MEMORY[0x1E6974E90])
  {
    if (result == *MEMORY[0x1E6974EA8])
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E98])
    {
      v10 = 2;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E88])
    {
      v10 = 3;
      goto LABEL_9;
    }

    if (result != *MEMORY[0x1E6974EA0])
    {
      result = (*(v5 + 8))(v8, v3);
    }
  }

  v10 = 0;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_1D4FEF574@<X0>(_BYTE *a3@<X8>)
{
  sub_1D560E0A8();
  result = MusicRecentlyPlayedRequest.source.getter(&v5);
  *a3 = v5;
  return result;
}

uint64_t sub_1D4FEF5C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v4 = sub_1D560E0A8();
  return MusicRecentlyPlayedRequest.source.setter(&v6, v4);
}

uint64_t MusicRecentlyPlayedRequest.source.setter(char *a1, uint64_t a2)
{
  v3 = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  (*(v5 + 104))(v9, **(&unk_1E84C4A70 + *a1), v3);
  (*(v5 + 32))(v12, v9, v3);
  return sub_1D560E098();
}

uint64_t (*MusicRecentlyPlayedRequest.source.modify(uint64_t a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  MusicRecentlyPlayedRequest.source.getter((a1 + 16));
  return sub_1D4FEF77C;
}

uint64_t sub_1D4FEF77C(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v6 = *(a1 + 16);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v4 = &v7;
  }

  return MusicRecentlyPlayedRequest.source.setter(v4, v3);
}

void static CloudTVEpisode.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4();
  v353 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v352 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v35);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B8, &unk_1D5626FA0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4();
  v343 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C8, &unk_1D5626FB8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v45);
  v46 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v355 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v354 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v51 = OUTLINED_FUNCTION_22(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  v356 = v54;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  v358 = v58;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v361 = v59;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  v359 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v63 = OUTLINED_FUNCTION_22(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_2();
  v360 = v65;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_154_3(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v366 = v70;
  v367 = v69;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v365 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_38_2();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_45();
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v369 = v77;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_3();
  v368 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v81 = OUTLINED_FUNCTION_22(v80);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_159_1();
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_59_0();
  v86 = v84 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v330 - v88;
  v90 = v28[1];
  v91 = v26[1];
  if (!v90)
  {
    if (v91)
    {
      goto LABEL_20;
    }

LABEL_10:
    v332 = v29;
    v333 = v46;
    v93 = type metadata accessor for CloudTVEpisode.Attributes(0);
    v370 = v26;
    v334 = v93;
    v94 = *(v93 + 20);
    v95 = *(v371 + 48);
    v335 = v28;
    sub_1D4F39AB0(v28 + v94, v89, &qword_1EC7EB5B8, &unk_1D56206A0);
    v96 = v370 + v94;
    v97 = v370;
    sub_1D4F39AB0(v96, &v89[v95], &qword_1EC7EB5B8, &unk_1D56206A0);
    v98 = v372;
    OUTLINED_FUNCTION_57(v89, 1, v372);
    if (v92)
    {
      OUTLINED_FUNCTION_57(&v89[v95], 1, v98);
      if (v92)
      {
        v331 = v86;
        sub_1D4E50004(v89, &qword_1EC7EB5B8, &unk_1D56206A0);
        goto LABEL_22;
      }
    }

    else
    {
      v99 = OUTLINED_FUNCTION_215();
      sub_1D4F39AB0(v99, v100, v101, v102);
      OUTLINED_FUNCTION_57(&v89[v95], 1, v98);
      if (!v103)
      {
        v331 = v86;
        v109 = v368;
        v108 = v369;
        (*(v369 + 32))(v368, &v89[v95], v98);
        sub_1D4F39858();
        v110 = sub_1D5614D18();
        v111 = v98;
        v112 = *(v108 + 8);
        v112(v109, v111);
        v112(v20, v111);
        v97 = v370;
        sub_1D4E50004(v89, &qword_1EC7EB5B8, &unk_1D56206A0);
        if ((v110 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v113 = v334;
        v114 = v334[6];
        v115 = v335;
        v116 = *(v97 + v114);
        if (*(v335 + v114))
        {
          if (!v116)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_116();
          sub_1D4EF9DD8();
          v118 = v117;

          if ((v118 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v116)
        {
          goto LABEL_20;
        }

        v119 = v113[7];
        v120 = *(v97 + v119);
        if (*(v115 + v119))
        {
          if (!v120)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_116();
          sub_1D4F2C07C();
          v122 = v121;

          if ((v122 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v120)
        {
          goto LABEL_20;
        }

        v123 = v113[8];
        v124 = *(v97 + v123 + 8);
        if (*(v115 + v123 + 8))
        {
          if (!v124)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_31_0(v115 + v123);
          v127 = v92 && v125 == v126;
          if (!v127 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v124)
        {
          goto LABEL_20;
        }

        v128 = v113[9];
        v129 = *(v97 + v128);
        if (*(v115 + v128))
        {
          if (!v129)
          {
            goto LABEL_20;
          }

          v130 = OUTLINED_FUNCTION_116();
          sub_1D4F2C5FC(v130, v131);
          v133 = v132;

          if ((v133 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v129)
        {
          goto LABEL_20;
        }

        v134 = v113[10];
        v135 = *(v75 + 48);
        sub_1D4F39AB0(v115 + v134, v21, &qword_1EC7EC978, &unk_1D56222A0);
        v136 = v370 + v134;
        v137 = v370;
        sub_1D4F39AB0(v136, v21 + v135, &qword_1EC7EC978, &unk_1D56222A0);
        v138 = v367;
        OUTLINED_FUNCTION_57(v21, 1, v367);
        if (v92)
        {
          OUTLINED_FUNCTION_5_1(v21 + v135);
          if (v92)
          {
            sub_1D4E50004(v21, &qword_1EC7EC978, &unk_1D56222A0);
LABEL_57:
            v145 = v113[11];
            v146 = *(v115 + v145);
            v147 = *(v137 + v145);
            if (v146)
            {
              if (!v147)
              {
                goto LABEL_20;
              }

              OUTLINED_FUNCTION_159();
              sub_1D4F28F1C();
              OUTLINED_FUNCTION_70_2();
              if ((v146 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            else if (v147)
            {
              goto LABEL_20;
            }

            v21 = v362;
            v148 = *(v363 + 48);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v149, v150, v151, v152);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v153, v154, v155, v156);
            v157 = v364;
            OUTLINED_FUNCTION_57(v21, 1, v364);
            if (v92)
            {
              OUTLINED_FUNCTION_43_0(v148 + v21);
              if (v92)
              {
                sub_1D4E50004(v21, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_72:
                v165 = v113[13];
                v166 = *(v115 + v165);
                v167 = *(v370 + v165);
                if (v166)
                {
                  if (!v167)
                  {
                    goto LABEL_20;
                  }

                  OUTLINED_FUNCTION_159();
                  sub_1D4F29174();
                  OUTLINED_FUNCTION_70_2();
                  if ((v166 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v167)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10();
                if (v169)
                {
                  if (!v168)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v170)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10();
                if (v172)
                {
                  if (!v171)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v173)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_55_10();
                if (v175)
                {
                  if (!v174)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_112_4();
                  if (v176)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_77_3();
                OUTLINED_FUNCTION_134_2();
                v179 = *(v370 + v178);
                if (*(v177 + v178))
                {
                  if (!v179)
                  {
                    goto LABEL_20;
                  }

                  sub_1D4EF81E0();
                  if ((v180 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v179)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_77_3();
                v181 = v358;
                v182 = *(v357 + 48);
                OUTLINED_FUNCTION_58_7();
                OUTLINED_FUNCTION_8_1();
                sub_1D4F39AB0(v183, v184, v185, v186);
                OUTLINED_FUNCTION_42_16();
                OUTLINED_FUNCTION_27_17(v181);
                if (v92)
                {
                  OUTLINED_FUNCTION_27_17(v182 + v358);
                  if (v92)
                  {
                    sub_1D4E50004(v358, &unk_1EC7E9CA8, &unk_1D561D1D0);
                    goto LABEL_104;
                  }
                }

                else
                {
                  v187 = v358;
                  sub_1D4F39AB0(v358, v356, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  OUTLINED_FUNCTION_27_17(v182 + v187);
                  if (!v188)
                  {
                    v189 = v354;
                    v181 = v355;
                    OUTLINED_FUNCTION_40_3();
                    v190 = v358;
                    v191 = OUTLINED_FUNCTION_174_1();
                    v192(v191);
                    OUTLINED_FUNCTION_2_28();
                    sub_1D4FF11E4(v193);
                    OUTLINED_FUNCTION_185_1(v356, v189);
                    OUTLINED_FUNCTION_160_3();
                    v194 = OUTLINED_FUNCTION_122_1();
                    v182(v194);
                    v195 = OUTLINED_FUNCTION_215();
                    v182(v195);
                    sub_1D4E50004(v190, &unk_1EC7E9CA8, &unk_1D561D1D0);
                    if ((v187 & 1) == 0)
                    {
                      goto LABEL_20;
                    }

LABEL_104:
                    OUTLINED_FUNCTION_77_3();
                    OUTLINED_FUNCTION_134_2();
                    v198 = *(v197 + v196);
                    v199 = *(v370 + v196);
                    if (v198 == 26)
                    {
                      if (v199 != 26)
                      {
                        goto LABEL_20;
                      }
                    }

                    else
                    {
                      if (v199 == 26)
                      {
                        goto LABEL_20;
                      }

                      v200 = sub_1D4FD39E0(v198);
                      v202 = v201;
                      if (v200 == sub_1D4FD39E0(v199) && v202 == v203)
                      {
                      }

                      else
                      {
                        OUTLINED_FUNCTION_63_1();
                        v205 = sub_1D5616168();

                        if ((v205 & 1) == 0)
                        {
                          goto LABEL_20;
                        }
                      }
                    }

                    OUTLINED_FUNCTION_77_3();
                    OUTLINED_FUNCTION_136_3();
                    if (v208)
                    {
                      if (!v206)
                      {
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_31_0(v207);
                      v211 = v92 && v209 == v210;
                      if (!v211 && (sub_1D5616168() & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v206)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_77_3();
                    OUTLINED_FUNCTION_134_2();
                    v214 = *(v213 + v212);
                    v215 = *(v370 + v212);
                    if (v214)
                    {
                      if (!v215)
                      {
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_159();
                      sub_1D4EF9F7C();
                      OUTLINED_FUNCTION_70_2();
                      if ((v214 & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v215)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_77_3();
                    v216 = *(v363 + 48);
                    OUTLINED_FUNCTION_58_7();
                    OUTLINED_FUNCTION_122_0();
                    OUTLINED_FUNCTION_8_1();
                    sub_1D4F39AB0(v217, v218, v219, v220);
                    OUTLINED_FUNCTION_42_16();
                    v221 = OUTLINED_FUNCTION_95_0();
                    OUTLINED_FUNCTION_57(v221, v222, v364);
                    if (v92)
                    {
                      v223 = OUTLINED_FUNCTION_86_1(&v370);
                      OUTLINED_FUNCTION_57(v223, v224, v364);
                      if (v92)
                      {
                        v225 = OUTLINED_FUNCTION_209_0();
                        sub_1D4E50004(v225, v226, v227);
                        goto LABEL_140;
                      }
                    }

                    else
                    {
                      v228 = OUTLINED_FUNCTION_145_0(&v370);
                      sub_1D4F39AB0(v228, v337, v229, v230);
                      OUTLINED_FUNCTION_57(&qword_1EC7EC960 + v216, 1, v364);
                      if (!v231)
                      {
                        OUTLINED_FUNCTION_81();
                        v233 = v338;
                        v181 = v359;
                        v234(v359, v338 + v216, v364);
                        sub_1D4F7BF60();
                        OUTLINED_FUNCTION_76();
                        v235 = OUTLINED_FUNCTION_51();
                        (unk_1D56334C0)(v235);
                        v236 = OUTLINED_FUNCTION_85();
                        (unk_1D56334C0)(v236);
                        sub_1D4E50004(v233, &qword_1EC7EC960, &unk_1D56334C0);
                        if ((&qword_1EC7EC960 & 1) == 0)
                        {
                          goto LABEL_20;
                        }

LABEL_140:
                        OUTLINED_FUNCTION_77_3();
                        v237 = *(v371 + 48);
                        OUTLINED_FUNCTION_58_7();
                        OUTLINED_FUNCTION_122_0();
                        OUTLINED_FUNCTION_8_1();
                        sub_1D4F39AB0(v238, v239, v240, v241);
                        OUTLINED_FUNCTION_42_16();
                        v242 = v181;
                        v243 = OUTLINED_FUNCTION_95_0();
                        OUTLINED_FUNCTION_57(v243, v244, v372);
                        if (v92)
                        {
                          OUTLINED_FUNCTION_57(v181 + v237, 1, v372);
                          if (v92)
                          {
                            sub_1D4E50004(v181, &qword_1EC7EB5B8, &unk_1D56206A0);
                            goto LABEL_150;
                          }
                        }

                        else
                        {
                          sub_1D4F39AB0(v181, v336, &qword_1EC7EB5B8, &unk_1D56206A0);
                          OUTLINED_FUNCTION_57(v181 + v237, 1, v372);
                          if (!v245)
                          {
                            v181 = v368;
                            OUTLINED_FUNCTION_81();
                            v247(v181, v242 + v237, v372);
                            sub_1D4F39858();
                            OUTLINED_FUNCTION_76();
                            v248 = OUTLINED_FUNCTION_51();
                            (unk_1D56206A0)(v248);
                            v249 = OUTLINED_FUNCTION_85();
                            (unk_1D56206A0)(v249);
                            sub_1D4E50004(v242, &qword_1EC7EB5B8, &unk_1D56206A0);
                            if ((&qword_1EC7EB5B8 & 1) == 0)
                            {
                              goto LABEL_20;
                            }

LABEL_150:
                            OUTLINED_FUNCTION_77_3();
                            OUTLINED_FUNCTION_134_2();
                            v252 = *(v251 + v250);
                            v253 = *(v370 + v250);
                            if (v252)
                            {
                              if (!v253)
                              {
                                goto LABEL_20;
                              }

                              OUTLINED_FUNCTION_159();
                              sub_1D4EF9FA4();
                              OUTLINED_FUNCTION_70_2();
                              if ((v252 & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v253)
                            {
                              goto LABEL_20;
                            }

                            OUTLINED_FUNCTION_77_3();
                            OUTLINED_FUNCTION_136_3();
                            if (v256)
                            {
                              if (!v254)
                              {
                                goto LABEL_20;
                              }

                              OUTLINED_FUNCTION_31_0(v255);
                              v259 = v92 && v257 == v258;
                              if (!v259 && (sub_1D5616168() & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            else if (v254)
                            {
                              goto LABEL_20;
                            }

                            OUTLINED_FUNCTION_77_3();
                            v260 = *(v339 + 48);
                            OUTLINED_FUNCTION_58_7();
                            OUTLINED_FUNCTION_122_0();
                            OUTLINED_FUNCTION_8_1();
                            sub_1D4F39AB0(v261, v262, v263, v264);
                            OUTLINED_FUNCTION_42_16();
                            v265 = OUTLINED_FUNCTION_95_0();
                            OUTLINED_FUNCTION_47_2(v265, v266, &a11);
                            if (v92)
                            {
                              v267 = OUTLINED_FUNCTION_86_1(&v373);
                              OUTLINED_FUNCTION_47_2(v267, v268, &a11);
                              if (!v92)
                              {
                                goto LABEL_171;
                              }

                              sub_1D4E50004(v341, &qword_1EC7ED9C0, &qword_1D5626FB0);
                            }

                            else
                            {
                              v269 = OUTLINED_FUNCTION_145_0(&v373);
                              sub_1D4F39AB0(v269, v340, v270, v271);
                              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&qword_1EC7ED9C0 + v260, 1, v344);
                              if (EnumTagSinglePayload == 1)
                              {
                                OUTLINED_FUNCTION_136();
                                v273(v340, v344);
LABEL_171:
                                v105 = &qword_1EC7ED9C8;
                                v106 = &unk_1D5626FB8;
                                v232 = &v373;
                                goto LABEL_138;
                              }

                              OUTLINED_FUNCTION_81();
                              v274 = v341;
                              v181 = v342;
                              v275(v342, v341 + v260, v344);
                              sub_1D4F0A770();
                              OUTLINED_FUNCTION_76();
                              v276 = OUTLINED_FUNCTION_51();
                              (qword_1D5626FB0)(v276);
                              v277 = OUTLINED_FUNCTION_85();
                              (qword_1D5626FB0)(v277);
                              sub_1D4E50004(v274, &qword_1EC7ED9C0, &qword_1D5626FB0);
                              if ((&qword_1EC7ED9C0 & 1) == 0)
                              {
                                goto LABEL_20;
                              }
                            }

                            OUTLINED_FUNCTION_77_3();
                            v278 = *(v357 + 48);
                            OUTLINED_FUNCTION_58_7();
                            OUTLINED_FUNCTION_122_0();
                            OUTLINED_FUNCTION_8_1();
                            sub_1D4F39AB0(v279, v280, v281, v282);
                            OUTLINED_FUNCTION_42_16();
                            OUTLINED_FUNCTION_27_17(v181);
                            if (v92)
                            {
                              OUTLINED_FUNCTION_119_3();
                              OUTLINED_FUNCTION_27_17(v278 + v283);
                              if (v92)
                              {
                                sub_1D4E50004(v345, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                goto LABEL_183;
                              }
                            }

                            else
                            {
                              v284 = OUTLINED_FUNCTION_145_0(&a12);
                              sub_1D4F39AB0(v284, v346, v285, v286);
                              OUTLINED_FUNCTION_27_17(&unk_1EC7E9CA8 + v278);
                              if (!v287)
                              {
                                v288 = v354;
                                v181 = v355;
                                OUTLINED_FUNCTION_40_3();
                                v289 = v345;
                                v290 = OUTLINED_FUNCTION_174_1();
                                v291(v290);
                                OUTLINED_FUNCTION_2_28();
                                sub_1D4FF11E4(v292);
                                v293 = OUTLINED_FUNCTION_115_5(&a13);
                                OUTLINED_FUNCTION_185_1(v293, v288);
                                OUTLINED_FUNCTION_160_3();
                                v294 = OUTLINED_FUNCTION_122_1();
                                v278(v294);
                                v295 = OUTLINED_FUNCTION_215();
                                v278(v295);
                                sub_1D4E50004(v289, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                if ((&unk_1EC7E9CA8 & 1) == 0)
                                {
                                  goto LABEL_20;
                                }

LABEL_183:
                                OUTLINED_FUNCTION_77_3();
                                v296 = *(v347 + 48);
                                OUTLINED_FUNCTION_58_7();
                                OUTLINED_FUNCTION_122_0();
                                OUTLINED_FUNCTION_8_1();
                                sub_1D4F39AB0(v297, v298, v299, v300);
                                OUTLINED_FUNCTION_42_16();
                                v301 = OUTLINED_FUNCTION_95_0();
                                OUTLINED_FUNCTION_47_2(v301, v302, &v364);
                                if (v92)
                                {
                                  v303 = OUTLINED_FUNCTION_86_1(&a18);
                                  OUTLINED_FUNCTION_47_2(v303, v304, &v364);
                                  if (v92)
                                  {
                                    sub_1D4E50004(v351, &qword_1EC7ED9B0, &unk_1D5631050);
LABEL_193:
                                    OUTLINED_FUNCTION_77_3();
                                    v313 = *(v357 + 48);
                                    OUTLINED_FUNCTION_58_7();
                                    OUTLINED_FUNCTION_122_0();
                                    OUTLINED_FUNCTION_8_1();
                                    sub_1D4F39AB0(v314, v315, v316, v317);
                                    OUTLINED_FUNCTION_42_16();
                                    OUTLINED_FUNCTION_27_17(v181);
                                    if (v92)
                                    {
                                      OUTLINED_FUNCTION_27_17(v348 + v313);
                                      if (v92)
                                      {
                                        sub_1D4E50004(v348, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                        goto LABEL_20;
                                      }
                                    }

                                    else
                                    {
                                      v318 = OUTLINED_FUNCTION_145_0(&a15);
                                      sub_1D4F39AB0(v318, v349, v319, v320);
                                      OUTLINED_FUNCTION_27_17(&unk_1EC7E9CA8 + v313);
                                      if (!v321)
                                      {
                                        v322 = v354;
                                        OUTLINED_FUNCTION_81();
                                        v323 = v348;
                                        v324 = v348 + v313;
                                        v325 = v333;
                                        v326(v322, v324, v333);
                                        OUTLINED_FUNCTION_2_28();
                                        sub_1D4FF11E4(v327);
                                        v328 = v349;
                                        OUTLINED_FUNCTION_15_2();
                                        sub_1D5614D18();
                                        v329 = OUTLINED_FUNCTION_51();
                                        v325(v329);
                                        (v325)(v328, v325);
                                        sub_1D4E50004(v323, &unk_1EC7E9CA8, &unk_1D561D1D0);
                                        goto LABEL_20;
                                      }

                                      (*(v355 + 8))(v349, v333);
                                    }

                                    v105 = &qword_1EC7E9FB0;
                                    v106 = &qword_1D562C590;
                                    v232 = &a15;
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  v305 = OUTLINED_FUNCTION_145_0(&a18);
                                  sub_1D4F39AB0(v305, v350, v306, v307);
                                  OUTLINED_FUNCTION_47_2(&qword_1EC7ED9B0 + v296, 1, &v364);
                                  if (!v308)
                                  {
                                    v181 = v352;
                                    OUTLINED_FUNCTION_81();
                                    v309 = v351;
                                    v310(v181, v351 + v296, v332);
                                    sub_1D4FF1130();
                                    OUTLINED_FUNCTION_76();
                                    v311 = OUTLINED_FUNCTION_51();
                                    (unk_1D5631050)(v311);
                                    v312 = OUTLINED_FUNCTION_85();
                                    (unk_1D5631050)(v312);
                                    sub_1D4E50004(v309, &qword_1EC7ED9B0, &unk_1D5631050);
                                    if ((&qword_1EC7ED9B0 & 1) == 0)
                                    {
                                      goto LABEL_20;
                                    }

                                    goto LABEL_193;
                                  }

                                  (*(v353 + 8))(v350, v332);
                                }

                                v105 = &qword_1EC7ED9B8;
                                v106 = &unk_1D5626FA0;
                                v232 = &a18;
                                goto LABEL_138;
                              }

                              (*(v355 + 8))(v346, v333);
                            }

                            v105 = &qword_1EC7E9FB0;
                            v106 = &qword_1D562C590;
                            v232 = &a12;
                            goto LABEL_138;
                          }

                          OUTLINED_FUNCTION_203_0();
                          v246(v336, v372);
                        }

                        v105 = &qword_1EC7EC330;
                        v106 = &qword_1D56222C0;
                        v107 = v181;
                        goto LABEL_19;
                      }

                      (*(v361 + 8))(v337, v364);
                    }

                    v105 = &qword_1EC7EC968;
                    v106 = &unk_1D5622290;
                    v232 = &v370;
LABEL_138:
                    v107 = *(v232 - 32);
                    goto LABEL_19;
                  }

                  (*(v355 + 8))(v356, v333);
                }

                v105 = &qword_1EC7E9FB0;
                v106 = &qword_1D562C590;
                v107 = v358;
LABEL_19:
                sub_1D4E50004(v107, v105, v106);
                goto LABEL_20;
              }
            }

            else
            {
              v158 = v360;
              sub_1D4F39AB0(v21, v360, &qword_1EC7EC960, &unk_1D56334C0);
              OUTLINED_FUNCTION_43_0(v148 + v21);
              if (!v159)
              {
                OUTLINED_FUNCTION_40_3();
                v162 = v359;
                v163(v359, v148 + v21, v157);
                sub_1D4F7BF60();
                OUTLINED_FUNCTION_185_1(v158, v162);
                OUTLINED_FUNCTION_160_3();
                v148(v162, v157);
                v164 = OUTLINED_FUNCTION_164_0();
                (v148)(v164);
                sub_1D4E50004(v21, &qword_1EC7EC960, &unk_1D56334C0);
                if ((&qword_1EC7EC960 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_72;
              }

              v160 = OUTLINED_FUNCTION_164_0();
              v161(v160);
            }

            v105 = &qword_1EC7EC968;
            v106 = &unk_1D5622290;
LABEL_55:
            v107 = v21;
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D4F39AB0(v21, v22, &qword_1EC7EC978, &unk_1D56222A0);
          OUTLINED_FUNCTION_5_1(v21 + v135);
          if (!v139)
          {
            v140 = v366;
            OUTLINED_FUNCTION_81();
            v141(v365, v21 + v135, v138);
            sub_1D4F7C058();
            v142 = sub_1D5614D18();
            v143 = *(v140 + 8);
            v144 = OUTLINED_FUNCTION_93();
            v143(v144);
            (v143)(v22, v138);
            v137 = v370;
            sub_1D4E50004(v21, &qword_1EC7EC978, &unk_1D56222A0);
            if ((v142 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_57;
          }

          (*(v366 + 8))(v22, v138);
        }

        v105 = &qword_1EC7EC980;
        v106 = &qword_1D5628710;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_203_0();
      v104(v20, v98);
    }

    v105 = &qword_1EC7EC330;
    v106 = &qword_1D56222C0;
    v107 = v89;
    goto LABEL_19;
  }

  if (v91)
  {
    v92 = *v28 == *v26 && v90 == v91;
    if (v92 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4FF1130()
{
  result = qword_1EC7ED9D0;
  if (!qword_1EC7ED9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EC7ED9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9D0);
  }

  return result;
}

unint64_t sub_1D4FF11E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D4FF1228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001D5681180 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x80000001D56811A0 == a2;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1684957547 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65725074726F6873 && a2 == 0xEC00000077656976;
                                              if (v27 || (sub_1D5616168() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x4C5255776F6873 && a2 == 0xE700000000000000;
                                                if (v28 || (sub_1D5616168() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                                  if (v29 || (sub_1D5616168() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v31 = sub_1D5616168();

                                                    if (v31)
                                                    {
                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      return 26;
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
        }
      }
    }
  }
}

unint64_t sub_1D4FF1A20(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x696C696261706163;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6867697279706F63;
      break;
    case 5:
      result = 0x73746964657263;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 9:
      result = 0x6169726F74696465;
      break;
    case 10:
      result = 0x4E65646F73697065;
      break;
    case 11:
    case 18:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x76697372656D6D69;
      break;
    case 15:
      result = 1684957547;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x73726566666FLL;
      break;
    case 19:
      result = 0x4177656976657270;
      break;
    case 20:
      result = 0x7377656976657270;
      break;
    case 21:
      result = 0x44657361656C6572;
      break;
    case 22:
      result = 0x65725074726F6873;
      break;
    case 23:
      result = 0x4C5255776F6873;
      break;
    case 24:
      result = 0xD000000000000010;
      break;
    case 25:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FF1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FF1228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FF1D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FF1A18();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FF1D54(uint64_t a1)
{
  v2 = sub_1D4FF2414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF1D90(uint64_t a1)
{
  v2 = sub_1D4FF2414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVEpisode.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9E0, &qword_1D5626FC8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v2 = sub_1D4FF2414();
  OUTLINED_FUNCTION_140_4(&type metadata for CloudTVEpisode.Attributes.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v0)
  {
    v4 = type metadata accessor for CloudTVEpisode.Attributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v4[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    v5 = sub_1D4FF2468();
    OUTLINED_FUNCTION_20_3(v5);
    OUTLINED_FUNCTION_42_2(v4[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v6 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3(v6);
    OUTLINED_FUNCTION_37_1(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v4[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v7 = sub_1D4FC7928();
    OUTLINED_FUNCTION_20_3(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v4[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v8 = sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3(v8);
    v17 = v4[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_53_10(v17);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v4[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v9 = sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3(v9);
    OUTLINED_FUNCTION_154(v4[14]);
    OUTLINED_FUNCTION_37_1(10);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v4[15]);
    OUTLINED_FUNCTION_37_1(11);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v4[16]);
    OUTLINED_FUNCTION_37_1(12);
    sub_1D5616058();
    OUTLINED_FUNCTION_42_2(v4[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v10 = sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3(v10);
    v16 = v4[18];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v11);
    OUTLINED_FUNCTION_53_10(v16);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    sub_1D4FF2540();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_37_1(16);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v4[21]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    v12 = sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3(v12);
    OUTLINED_FUNCTION_53_10(v4[22]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v4[23]);
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v4[24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    v13 = sub_1D4FF2594();
    OUTLINED_FUNCTION_20_3(v13);
    OUTLINED_FUNCTION_37_1(21);
    sub_1D5616028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF2618();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v4[27]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF2700();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_53_10(v4[29]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  v14 = OUTLINED_FUNCTION_86_0();
  v15(v14);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FF2414()
{
  result = qword_1EC7ED9E8;
  if (!qword_1EC7ED9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9E8);
  }

  return result;
}

unint64_t sub_1D4FF2468()
{
  result = qword_1EC7ED9F8;
  if (!qword_1EC7ED9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    sub_1D4FF24EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED9F8);
  }

  return result;
}

unint64_t sub_1D4FF24EC()
{
  result = qword_1EC7EDA00;
  if (!qword_1EC7EDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA00);
  }

  return result;
}

unint64_t sub_1D4FF2540()
{
  result = qword_1EC7EDA08;
  if (!qword_1EC7EDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA08);
  }

  return result;
}

unint64_t sub_1D4FF2594()
{
  result = qword_1EC7EDA18;
  if (!qword_1EC7EDA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDA10, &qword_1D5626FE0);
    sub_1D4FF2618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA18);
  }

  return result;
}

unint64_t sub_1D4FF2618()
{
  result = qword_1EC7EDA20;
  if (!qword_1EC7EDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4FF11E4(&unk_1EC7EDA28);
    sub_1D4FF11E4(&unk_1EC7EDA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA20);
  }

  return result;
}

unint64_t sub_1D4FF2700()
{
  result = qword_1EC7EDA38;
  if (!qword_1EC7EDA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF11E4(&unk_1EDD55388);
    sub_1D4FF11E4(&unk_1EDD55390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDA38);
  }

  return result;
}

void CloudTVEpisode.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4();
  v125 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v124 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v139 = v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_4();
  v123 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v135 = v14;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v140 = v16;
  v141 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v143 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v138 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v136 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v128 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v133 = v26;
  v134 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v132 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  v127 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v37 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_71_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v126 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v131 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v130 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v129 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v121 - v50;
  v52 = *(v0 + 8);
  v144 = v42;
  if (v52)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    v42 = v144;
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v53 = type metadata accessor for CloudTVEpisode.Attributes(0);
  sub_1D4F39AB0(v0 + v53[5], v51, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_32_1(v51);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v121[0] = v1;
    v55 = v131;
    v56 = *(v131 + 32);
    v121[1] = v37;
    v57 = v33;
    v58 = v130;
    v56(v130, v51, v42);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v59 = v58;
    v33 = v57;
    (*(v55 + 8))(v59, v42);
  }

  if (*(v0 + v53[6]))
  {
    OUTLINED_FUNCTION_27();
    v60 = OUTLINED_FUNCTION_141();
    sub_1D4F08620(v60);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v53[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v53[8] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v53[9]))
  {
    OUTLINED_FUNCTION_27();
    v61 = OUTLINED_FUNCTION_141();
    sub_1D4F35BFC(v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v63 = v140;
  v64 = v126;
  sub_1D4F39AB0(v2 + v53[10], v126, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_43_0(v64);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v65 = OUTLINED_FUNCTION_123_2();
    v66(v65);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v67 = OUTLINED_FUNCTION_215();
    v68(v67);
  }

  v69 = v141;
  v70 = v134;
  if (*(v2 + v53[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v71 = v127;
  sub_1D4F39AB0(v2 + v53[12], v127, &qword_1EC7EC960, &unk_1D56334C0);
  v72 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v72, v73, v70);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v75 = v132;
    v74 = v133;
    OUTLINED_FUNCTION_81();
    v76(v75, v71, v70);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v74 + 8))(v75, v70);
  }

  if (*(v2 + v53[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v78 = *v77;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v78);
  }

  OUTLINED_FUNCTION_157();
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v80 = *v79;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v80);
  }

  OUTLINED_FUNCTION_157();
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v82 = *v81;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v82);
  }

  if (*(v2 + v53[17]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v83 = v128;
  sub_1D4F39AB0(v2 + v53[18], v128, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v83);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v84 = v143;
    v85 = OUTLINED_FUNCTION_116();
    v86(v85);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v87);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v63 + 8))(v84, v69);
  }

  v88 = *(v2 + v53[19]);
  if (v88 == 26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4FD39E0(v88);
    sub_1D5614E28();
  }

  if (*(v2 + v53[20] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v53[21]))
  {
    OUTLINED_FUNCTION_27();
    v89 = OUTLINED_FUNCTION_24();
    sub_1D4F085F8(v89);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v2 + v53[22], v33, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v33, 1, v70);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v91 = v132;
    v90 = v133;
    OUTLINED_FUNCTION_81();
    v92(v91, v33, v70);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v90 + 8))(v91, v70);
  }

  v93 = v144;
  v94 = v129;
  sub_1D4F39AB0(v2 + v53[23], v129, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_43_0(v94);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v70 = v130;
    OUTLINED_FUNCTION_40_3();
    v95(v70, v94, v93);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v96 = OUTLINED_FUNCTION_122_1();
    v97(v96);
  }

  if (*(v2 + v53[24]))
  {
    OUTLINED_FUNCTION_27();
    v98 = OUTLINED_FUNCTION_24();
    sub_1D4F085D0(v98);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v53[25] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v99 = v142;
  v100 = v135;
  sub_1D4F39AB0(v2 + v53[26], v135, &qword_1EC7ED9C0, &qword_1D5626FB0);
  v101 = OUTLINED_FUNCTION_35_1();
  v102 = v137;
  OUTLINED_FUNCTION_57(v101, v103, v137);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_167_0();
    v105 = v63;
    v106 = v122;
    (*(v104 + 32))(v122, v100, v102);
    OUTLINED_FUNCTION_27();
    sub_1D4F0A6BC();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v107 = v106;
    v63 = v105;
    (*(v70 + 8))(v107, v102);
  }

  v108 = v136;
  sub_1D4F39AB0(v2 + v53[27], v136, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v108);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v109 = v143;
    (*(v63 + 32))(v143, v108, v69);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v110);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v63 + 8))(v109, v69);
  }

  v111 = v139;
  sub_1D4F39AB0(v2 + v53[28], v139, &qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_43_0(v111);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v112 = v124;
    OUTLINED_FUNCTION_40_3();
    v113(v112, v111, v99);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v114 = OUTLINED_FUNCTION_122_1();
    v115(v114);
  }

  v116 = v138;
  sub_1D4F39AB0(v2 + v53[29], v138, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_9_25(v116);
  if (v54)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v117 = v143;
    v118 = OUTLINED_FUNCTION_63_1();
    v119(v118);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_28();
    sub_1D4FF11E4(v120);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v63 + 8))(v117, v69);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v160 = v20;
  v25 = v24;
  v153 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40_12(v32, v144);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v152 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v151 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_194_1(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v148 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v144 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_59_0();
  v52 = v50 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_159_1();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA50, &qword_1D5626FE8);
  OUTLINED_FUNCTION_4();
  v55 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_9();
  v159 = type metadata accessor for CloudTVEpisode.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v157 = v25;
  v158 = v58;
  v59 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D4FF2414();
  v156 = v23;
  v60 = v160;
  sub_1D5616398();
  if (v60)
  {
    v160 = v60;
    v62 = 0;
    v63 = 0;
    LODWORD(v45) = 0;
    v64 = 0;
    v65 = 0;
    OUTLINED_FUNCTION_113_5();
    LODWORD(v145) = 0;
    OUTLINED_FUNCTION_6_34();
  }

  else
  {
    v160 = v22;
    v146 = v52;
    v147 = v55;
    v62 = v155;
    v61 = sub_1D5615F38();
    LODWORD(v22) = 0;
    v68 = v158;
    *v158 = v61;
    v68[1] = v69;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    v70 = sub_1D4F886BC();
    v71 = v21;
    sub_1D5615F78();
    v72 = v159;
    v145 = v70;
    sub_1D4F39A1C(v71, v68 + v159[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9F0, &unk_1D5626FD0);
    v161 = 2;
    sub_1D4FFFEEC();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v68 + v72[6]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v161 = 3;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    v65 = v147;
    *(v68 + v72[7]) = a10;
    LOBYTE(a10) = 4;
    v73 = sub_1D5615F38();
    v74 = (v68 + v72[8]);
    *v74 = v73;
    v74[1] = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v161 = 5;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v68 + v72[9]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 6;
    sub_1D4F888C0();
    OUTLINED_FUNCTION_188();
    v76 = v160;
    sub_1D5615F78();
    sub_1D4F39A1C(v76, v68 + v72[10], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v161 = 7;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_16_24();
    sub_1D5615F78();
    *(v68 + v72[11]) = a10;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F88A24();
    OUTLINED_FUNCTION_188();
    v144 = v77;
    sub_1D5615F78();
    v160 = 0;
    sub_1D4F39A1C(v45, v68 + v72[12], &qword_1EC7EC960, &unk_1D56334C0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v161 = 9;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_16_24();
    v78 = v160;
    sub_1D5615F78();
    v160 = v78;
    if (v78)
    {
      v79 = OUTLINED_FUNCTION_34_17();
      v80(v79);
      LODWORD(v148) = 0;
      LODWORD(v150) = 0;
      LODWORD(v151) = 0;
      LODWORD(v152) = 0;
      LODWORD(v153) = 0;
      LODWORD(v154) = 0;
      LODWORD(v155) = 0;
      OUTLINED_FUNCTION_0_45();
      LODWORD(v146) = v81;
    }

    else
    {
      OUTLINED_FUNCTION_213_0();
      *(v84 + *(v82 + 52)) = v83;
      OUTLINED_FUNCTION_43_15(10);
      v85 = sub_1D5615F68();
      v160 = 0;
      OUTLINED_FUNCTION_107_4(v85, v86, v159[14]);
      OUTLINED_FUNCTION_43_15(11);
      v87 = sub_1D5615F68();
      v160 = 0;
      OUTLINED_FUNCTION_107_4(v87, v88, v159[15]);
      OUTLINED_FUNCTION_43_15(12);
      v89 = sub_1D5615F68();
      v160 = 0;
      OUTLINED_FUNCTION_107_4(v89, v90, v159[16]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v161 = 13;
      sub_1D4F88BF4(&qword_1EDD52778);
      v91 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_125_4(v91, v92);
      v160 = 0;
      OUTLINED_FUNCTION_213_0();
      *(v95 + *(v93 + 68)) = v94;
      sub_1D560C0A8();
      OUTLINED_FUNCTION_2_28();
      sub_1D4FF11E4(v96);
      v59 = v156;
      v97 = v160;
      sub_1D5615F78();
      v160 = v97;
      if (v97)
      {
        v98 = OUTLINED_FUNCTION_34_17();
        v99(v98);
        LODWORD(v151) = 0;
        LODWORD(v152) = 0;
        LODWORD(v153) = 0;
        LODWORD(v154) = 0;
        LODWORD(v155) = 0;
        OUTLINED_FUNCTION_0_45();
        LODWORD(v146) = v100;
        LODWORD(v148) = v100;
        LODWORD(v150) = v100;
      }

      else
      {
        sub_1D4F39A1C(v154, v158 + v159[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
        v161 = 15;
        sub_1D4FFFFC4();
        v59 = v156;
        v101 = v160;
        sub_1D5615F78();
        v160 = v101;
        if (v101)
        {
          v103 = OUTLINED_FUNCTION_34_17();
          v104(v103);
          LODWORD(v152) = 0;
          LODWORD(v153) = 0;
          LODWORD(v154) = 0;
          LODWORD(v155) = 0;
          OUTLINED_FUNCTION_0_45();
          LODWORD(v146) = v105;
          LODWORD(v148) = v105;
          LODWORD(v150) = v105;
          LODWORD(v151) = v105;
        }

        else
        {
          *(v158 + v159[19]) = 14;
          OUTLINED_FUNCTION_43_15(16);
          v102 = sub_1D5615F38();
          v160 = 0;
          v106 = (v158 + v159[20]);
          *v106 = v102;
          v106[1] = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
          v161 = 17;
          sub_1D4F88C5C();
          v108 = OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_125_4(v108, v109);
          v160 = 0;
          OUTLINED_FUNCTION_213_0();
          *(v112 + *(v110 + 84)) = v111;
          OUTLINED_FUNCTION_148(18);
          v59 = v156;
          v113 = v160;
          sub_1D5615F78();
          v160 = v113;
          if (v113)
          {
            v114 = OUTLINED_FUNCTION_34_17();
            v115(v114);
            LODWORD(v154) = 0;
            LODWORD(v155) = 0;
            OUTLINED_FUNCTION_0_45();
            OUTLINED_FUNCTION_28_22(v116);
            LODWORD(v153) = v117;
          }

          else
          {
            sub_1D4F39A1C(v148, v158 + v159[22], &qword_1EC7EC960, &unk_1D56334C0);
            OUTLINED_FUNCTION_148(19);
            v59 = v156;
            v118 = v160;
            sub_1D5615F78();
            v160 = v118;
            if (!v118)
            {
              sub_1D4F39A1C(v146, v158 + v159[23], &qword_1EC7EB5B8, &unk_1D56206A0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA10, &qword_1D5626FE0);
              v161 = 20;
              sub_1D5000018();
              v123 = OUTLINED_FUNCTION_29_1();
              OUTLINED_FUNCTION_125_4(v123, v124);
              v160 = 0;
              OUTLINED_FUNCTION_213_0();
              *(v127 + *(v125 + 96)) = v126;
              OUTLINED_FUNCTION_43_15(21);
              v128 = sub_1D5615F38();
              v160 = 0;
              v129 = (v158 + v159[25]);
              *v129 = v128;
              v129[1] = v130;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
              sub_1D500009C();
              OUTLINED_FUNCTION_188();
              OUTLINED_FUNCTION_80_4(v131, v132);
              v160 = 0;
              sub_1D4F39A1C(v149, v158 + v159[26], &qword_1EC7ED9C0, &qword_1D5626FB0);
              OUTLINED_FUNCTION_148(23);
              OUTLINED_FUNCTION_177_1(v133, v134);
              v160 = 0;
              sub_1D4F39A1C(v151, v158 + v159[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
              sub_1D5000184();
              OUTLINED_FUNCTION_188();
              OUTLINED_FUNCTION_80_4(v135, v136);
              v160 = 0;
              sub_1D4F39A1C(v150, v158 + v159[28], &qword_1EC7ED9B0, &unk_1D5631050);
              OUTLINED_FUNCTION_148(25);
              OUTLINED_FUNCTION_177_1(v137, v138);
              v160 = 0;
              v139 = OUTLINED_FUNCTION_34_17();
              v140(v139);
              v141 = v158;
              sub_1D4F39A1C(v152, v158 + v159[29], &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_14_24();
              sub_1D50002E0(v141, v153, v142);
              __swift_destroy_boxed_opaque_existential_1(v157);
              OUTLINED_FUNCTION_13_29();
              sub_1D500033C(v141, v143);
              goto LABEL_46;
            }

            v119 = OUTLINED_FUNCTION_34_17();
            v120(v119);
            LODWORD(v155) = 0;
            OUTLINED_FUNCTION_0_45();
            OUTLINED_FUNCTION_28_22(v121);
            LODWORD(v153) = v122;
            LODWORD(v154) = v122;
          }
        }
      }
    }
  }

  v66 = v158;
  v67 = v159;
  __swift_destroy_boxed_opaque_existential_1(v157);
  if (v62)
  {
    LODWORD(v157) = 0;
    LODWORD(v147) = 0;
    LODWORD(v149) = 0;

    if (v63)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v149) = 0;
    LODWORD(v147) = 0;
    LODWORD(v157) = 0;
    if (v63)
    {
LABEL_6:
      sub_1D4E50004(v66 + v67[5], &qword_1EC7EB5B8, &unk_1D56206A0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  if (!v45)
  {
LABEL_7:
    if (v64)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (v64)
  {
LABEL_8:

    if ((v65 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v65)
  {
LABEL_9:
    if (v22)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:

  if (v22)
  {
LABEL_10:

    if ((v59 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v59)
  {
LABEL_11:
    if (v145)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D4E50004(v66 + v67[10], &qword_1EC7EC978, &unk_1D56222A0);
  if (v145)
  {
LABEL_12:

    if ((v146 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v146)
  {
LABEL_13:
    if (v148)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1D4E50004(v66 + v67[12], &qword_1EC7EC960, &unk_1D56334C0);
  if (v148)
  {
LABEL_14:

    if ((v150 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v150)
  {
LABEL_15:
    if (v151)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:

  if (v151)
  {
LABEL_16:
    sub_1D4E50004(v66 + v67[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v152 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v152)
  {
LABEL_17:
    if (v153)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:

  if (v153)
  {
LABEL_18:

    if ((v154 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v154)
  {
LABEL_19:
    if (v155)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_1D4E50004(v66 + v67[22], &qword_1EC7EC960, &unk_1D56334C0);
  if (v155)
  {
LABEL_20:
    sub_1D4E50004(v66 + v67[23], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v156 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:

    if (v157)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_41:
  if (v156)
  {
    goto LABEL_42;
  }

LABEL_21:
  if (v157)
  {
LABEL_22:
  }

LABEL_23:
  if (v147)
  {
    sub_1D4E50004(v66 + v67[27], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v149 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v149)
  {
LABEL_45:
    sub_1D4E50004(v66 + v67[28], &qword_1EC7ED9B0, &unk_1D5631050);
  }

LABEL_46:
  OUTLINED_FUNCTION_26();
}

MusicKitInternal::CloudTVEpisode::Relationships::CodingKeys_optional __swiftcall CloudTVEpisode.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVEpisode.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0x736E6F73616573;
  if (*v0 != 1)
  {
    v1 = 2003789939;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365726E6567;
  }
}

uint64_t sub_1D4FF483C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVEpisode.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FF487C(uint64_t a1)
{
  v2 = sub_1D500028C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF48B8(uint64_t a1)
{
  v2 = sub_1D500028C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVEpisode.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v71);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v9);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA60, &unk_1D5627000);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v11);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0F0, &unk_1D5623EF8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_114();
  v19 = OUTLINED_FUNCTION_224();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_71_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_161_3();
  OUTLINED_FUNCTION_222_0();
  v25 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v25, v26, v17);
  if (v27)
  {
    OUTLINED_FUNCTION_57(v4 + v1, 1, v17);
    if (v27)
    {
      sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
      goto LABEL_12;
    }

LABEL_9:
    v30 = &qword_1EC7ECA68;
    v31 = &unk_1D5622330;
LABEL_10:
    v32 = v1;
LABEL_21:
    sub_1D4E50004(v32, v30, v31);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_57(v4 + v1, 1, v17);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_123_2();
    v29(v28);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v33(v3, v4 + v1, v17);
  sub_1D4F88E6C();
  OUTLINED_FUNCTION_223_0();
  v34 = OUTLINED_FUNCTION_195_1();
  v4(v34);
  v35 = OUTLINED_FUNCTION_123_2();
  v4(v35);
  sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if ((&qword_1EC7EA7F0 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v36, v37, v38, v39);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v40, v41, v42, v43);
  OUTLINED_FUNCTION_57(v0, 1, v77);
  if (v27)
  {
    OUTLINED_FUNCTION_9_25(&qword_1EC7EA7F0 + v0);
    if (v27)
    {
      sub_1D4E50004(v0, &qword_1EC7ECD90, &unk_1D5622F80);
LABEL_24:
      v51 = *(v73 + 48);
      v1 = v74;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v52, v53, v54, v55);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v56, v57, v58, v59);
      v60 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_57(v60, v61, v75);
      if (v27)
      {
        OUTLINED_FUNCTION_43_0(v74 + v51);
        if (v27)
        {
          sub_1D4E50004(v74, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v74, v72, &qword_1EC7ECA58, &unk_1D5622310);
        OUTLINED_FUNCTION_43_0(v74 + v51);
        if (!v62)
        {
          OUTLINED_FUNCTION_40_3();
          v65 = OUTLINED_FUNCTION_207_0();
          v66(v65);
          sub_1D4F88DE8();
          v67 = OUTLINED_FUNCTION_85();
          OUTLINED_FUNCTION_185_1(v67, v68);
          v69 = OUTLINED_FUNCTION_221();
          (unk_1D5622310)(v69);
          v70 = OUTLINED_FUNCTION_215();
          (unk_1D5622310)(v70);
          sub_1D4E50004(v74, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }

        v63 = OUTLINED_FUNCTION_215();
        v64(v63);
      }

      v30 = &qword_1EC7ECA60;
      v31 = &unk_1D5627000;
      goto LABEL_10;
    }

LABEL_20:
    v30 = &qword_1EC7ED0F0;
    v31 = &unk_1D5623EF8;
    v32 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v76, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_9_25(&qword_1EC7EA7F0 + v0);
  if (v44)
  {
    OUTLINED_FUNCTION_203_0();
    v45 = OUTLINED_FUNCTION_217();
    v46(v45);
    goto LABEL_20;
  }

  v47 = OUTLINED_FUNCTION_130_4();
  v48(v47);
  sub_1D4FCE688();
  OUTLINED_FUNCTION_164_0();
  sub_1D5614D18();
  v49 = OUTLINED_FUNCTION_220_0();
  v77(v49);
  v50 = OUTLINED_FUNCTION_217();
  v77(v50);
  sub_1D4E50004(v0, &qword_1EC7ECD90, &unk_1D5622F80);
  if (&qword_1EC7ECD90)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Relationships.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA80, &qword_1D5627010);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v2 = sub_1D500028C();
  OUTLINED_FUNCTION_140_4(&type metadata for CloudTVEpisode.Relationships.CodingKeys, v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  sub_1D4F89134();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for CloudTVEpisode.Relationships(0);
    OUTLINED_FUNCTION_117_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE760();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_190_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F892A0();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  v4 = OUTLINED_FUNCTION_86_0();
  return v5(v4);
}

void CloudTVEpisode.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v34 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  v33 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v14 = OUTLINED_FUNCTION_93();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_184_1();
  v18 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v18, v19, v12);
  if (v20)
  {
    sub_1D56162F8();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_106();
    v22(v21);
    sub_1D56162F8();
    v23 = sub_1D4F89490();
    OUTLINED_FUNCTION_225_0(v23);
    v24 = OUTLINED_FUNCTION_224();
    v25(v24);
  }

  v26 = type metadata accessor for CloudTVEpisode.Relationships(0);
  sub_1D4F39AB0(v0 + *(v26 + 20), v1, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_9_25(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v27(v32, v1, v6);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8B4A0();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    (*(v33 + 8))(v32, v6);
  }

  sub_1D4F39AB0(v0 + *(v26 + 24), v34, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_5_1(v34);
  if (v20)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v28 = OUTLINED_FUNCTION_86_0();
    v29(v28);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F89514();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    v30 = OUTLINED_FUNCTION_93();
    v31(v30);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40_12(v4, v35);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v36 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_2();
  v16 = OUTLINED_FUNCTION_98();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v20 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v20, v21, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v22 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v22, v23, v12);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v25(v2, v0, v12);
    OUTLINED_FUNCTION_183_0();
    v26 = sub_1D4F89490();
    OUTLINED_FUNCTION_224_0(v26);
    v27 = *(v14 + 8);
    v14 += 8;
    v27(v2, v12);
  }

  v28 = type metadata accessor for CloudTVEpisode.Relationships(0);
  sub_1D4F39AB0(v0 + *(v28 + 20), v1, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v1, 1, v8);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_147_2();
    v30(v29);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B4A0();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    off_1EC7EA7F8(v14, v8);
  }

  sub_1D4F39AB0(v0 + *(v28 + 24), v36, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_1(v36);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_106();
    v32(v31);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F89514();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    v33 = OUTLINED_FUNCTION_134_0();
    v34(v33);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v22 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v23 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA90, &qword_1D5627018);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_227_0(v5);
  v17 = sub_1D500028C();
  OUTLINED_FUNCTION_179_1(&type metadata for CloudTVEpisode.Relationships.CodingKeys, v18, v17);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v3, &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE8EC();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v3 + *(v15 + 20), &qword_1EC7ECD90, &unk_1D5622F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_190_1();
    sub_1D4F89870();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v19 = OUTLINED_FUNCTION_88_2();
    v20(v19);
    sub_1D4F39A1C(v23, v3 + *(v15 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    sub_1D50002E0(v3, v22, type metadata accessor for CloudTVEpisode.Relationships);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_10_34();
    sub_1D500033C(v3, v21);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FF5CC8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v18, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v13 + 8))(v15, v12);
  }

  v19 = v33;
  sub_1D4F39AB0(v2 + *(v33 + 20), v11, &qword_1EC7ECD90, &unk_1D5622F80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v7);
  v21 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v23 = v28;
    v22 = v29;
    (*(v29 + 32))(v28, v11, v7);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    (*(v22 + 8))(v23, v7);
  }

  v24 = v32;
  sub_1D4F39AB0(v3 + *(v19 + 24), v32, &qword_1EC7ECA58, &unk_1D5622310);
  if (__swift_getEnumTagSinglePayload(v24, 1, v21) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v26 = v30;
    v25 = v31;
    (*(v31 + 32))(v30, v24, v21);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v21);
  }

  return sub_1D5616328();
}

MusicKitInternal::CloudTVEpisode::Associations::CodingKeys_optional __swiftcall CloudTVEpisode.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVEpisode.Associations.CodingKeys.stringValue.getter()
{
  v1 = 0x70652D726568746FLL;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72612D636973756DLL;
  }
}

uint64_t sub_1D4FF62BC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVEpisode.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4FF62FC(uint64_t a1)
{
  v2 = sub_1D50004DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FF6338(uint64_t a1)
{
  v2 = sub_1D50004DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVEpisode.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v71);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v9);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_194_1(v11);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA80, &unk_1D5622348);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_114();
  v19 = OUTLINED_FUNCTION_224();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_71_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_161_3();
  OUTLINED_FUNCTION_222_0();
  v25 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v25, v26, v17);
  if (v27)
  {
    OUTLINED_FUNCTION_57(v4 + v1, 1, v17);
    if (v27)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5A8, &unk_1D5622F00);
      goto LABEL_12;
    }

LABEL_9:
    v30 = &qword_1EC7EDAA0;
    v31 = &unk_1D5627040;
LABEL_10:
    v32 = v1;
LABEL_21:
    sub_1D4E50004(v32, v30, v31);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v4 + v1, 1, v17);
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_123_2();
    v29(v28);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v33(v3, v4 + v1, v17);
  sub_1D5000458();
  OUTLINED_FUNCTION_223_0();
  v34 = OUTLINED_FUNCTION_195_1();
  v4(v34);
  v35 = OUTLINED_FUNCTION_123_2();
  v4(v35);
  sub_1D4E50004(v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  if ((&qword_1EC7EB5A8 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v36, v37, v38, v39);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v40, v41, v42, v43);
  OUTLINED_FUNCTION_57(v0, 1, v77);
  if (v27)
  {
    OUTLINED_FUNCTION_9_25(&qword_1EC7EB5A8 + v0);
    if (v27)
    {
      sub_1D4E50004(v0, &qword_1EC7ECA78, &qword_1D5622340);
LABEL_24:
      v51 = *(v73 + 48);
      v1 = v74;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v52, v53, v54, v55);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v56, v57, v58, v59);
      v60 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_57(v60, v61, v75);
      if (v27)
      {
        OUTLINED_FUNCTION_43_0(v74 + v51);
        if (v27)
        {
          sub_1D4E50004(v74, &qword_1EC7ECD18, &qword_1D5631040);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v74, v72, &qword_1EC7ECD18, &qword_1D5631040);
        OUTLINED_FUNCTION_43_0(v74 + v51);
        if (!v62)
        {
          OUTLINED_FUNCTION_40_3();
          v65 = OUTLINED_FUNCTION_207_0();
          v66(v65);
          sub_1D50003B4();
          v67 = OUTLINED_FUNCTION_85();
          OUTLINED_FUNCTION_185_1(v67, v68);
          v69 = OUTLINED_FUNCTION_221();
          (qword_1D5631040)(v69);
          v70 = OUTLINED_FUNCTION_215();
          (qword_1D5631040)(v70);
          sub_1D4E50004(v74, &qword_1EC7ECD18, &qword_1D5631040);
          goto LABEL_22;
        }

        v63 = OUTLINED_FUNCTION_215();
        v64(v63);
      }

      v30 = &qword_1EC7EDA98;
      v31 = &unk_1D5627020;
      goto LABEL_10;
    }

LABEL_20:
    v30 = &qword_1EC7ECA80;
    v31 = &unk_1D5622348;
    v32 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v76, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_9_25(&qword_1EC7EB5A8 + v0);
  if (v44)
  {
    OUTLINED_FUNCTION_203_0();
    v45 = OUTLINED_FUNCTION_217();
    v46(v45);
    goto LABEL_20;
  }

  v47 = OUTLINED_FUNCTION_130_4();
  v48(v47);
  sub_1D4F88EF0();
  OUTLINED_FUNCTION_164_0();
  sub_1D5614D18();
  v49 = OUTLINED_FUNCTION_220_0();
  v77(v49);
  v50 = OUTLINED_FUNCTION_217();
  v77(v50);
  sub_1D4E50004(v0, &qword_1EC7ECA78, &qword_1D5622340);
  if (&qword_1EC7ECA78)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVEpisode.Associations.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAB8, &qword_1D5627050);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  v2 = sub_1D50004DC();
  OUTLINED_FUNCTION_140_4(&type metadata for CloudTVEpisode.Associations.CodingKeys, v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  sub_1D5000530();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for CloudTVEpisode.Associations(0);
    OUTLINED_FUNCTION_117_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F88FC8();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_190_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  v4 = OUTLINED_FUNCTION_86_0();
  return v5(v4);
}

void CloudTVEpisode.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v34 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  v33 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v14 = OUTLINED_FUNCTION_93();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_184_1();
  v18 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v18, v19, v12);
  if (v20)
  {
    sub_1D56162F8();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_106();
    v22(v21);
    sub_1D56162F8();
    v23 = sub_1D4F8B290();
    OUTLINED_FUNCTION_225_0(v23);
    v24 = OUTLINED_FUNCTION_224();
    v25(v24);
  }

  v26 = type metadata accessor for CloudTVEpisode.Associations(0);
  sub_1D4F39AB0(v0 + *(v26 + 20), v1, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_9_25(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v27(v32, v1, v6);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8940C();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    (*(v33 + 8))(v32, v6);
  }

  sub_1D4F39AB0(v0 + *(v26 + 24), v34, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_5_1(v34);
  if (v20)
  {
    OUTLINED_FUNCTION_228_0();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v28 = OUTLINED_FUNCTION_86_0();
    v29(v28);
    OUTLINED_FUNCTION_229_0();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_212_0();
    sub_1D5614CB8();
    v30 = OUTLINED_FUNCTION_93();
    v31(v30);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40_12(v4, v35);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v36 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_2();
  v16 = OUTLINED_FUNCTION_98();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v20 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v20, v21, &qword_1EC7EB5A8, &unk_1D5622F00);
  v22 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v22, v23, v12);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v25(v2, v0, v12);
    OUTLINED_FUNCTION_183_0();
    v26 = sub_1D4F8B290();
    OUTLINED_FUNCTION_224_0(v26);
    v27 = *(v14 + 8);
    v14 += 8;
    v27(v2, v12);
  }

  v28 = type metadata accessor for CloudTVEpisode.Associations(0);
  sub_1D4F39AB0(v0 + *(v28 + 20), v1, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v1, 1, v8);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_147_2();
    v30(v29);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8940C();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    off_1EC7EB5B0(v14, v8);
  }

  sub_1D4F39AB0(v0 + *(v28 + 24), v36, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_1(v36);
  if (v24)
  {
    OUTLINED_FUNCTION_135_5();
    sub_1D56162F8();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_106();
    v32(v31);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_109_5();
    sub_1D5614CB8();
    v33 = OUTLINED_FUNCTION_134_0();
    v34(v33);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVEpisode.Associations.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = v4;
  v22 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v23 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAE8, &qword_1D5627058);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_227_0(v5);
  v17 = sub_1D50004DC();
  OUTLINED_FUNCTION_179_1(&type metadata for CloudTVEpisode.Associations.CodingKeys, v18, v17);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000808();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v3, &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F89598();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v3 + *(v15 + 20), &qword_1EC7ECA78, &qword_1D5622340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_190_1();
    sub_1D5000974();
    OUTLINED_FUNCTION_163_5();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v19 = OUTLINED_FUNCTION_88_2();
    v20(v19);
    sub_1D4F39A1C(v23, v3 + *(v15 + 24), &qword_1EC7ECD18, &qword_1D5631040);
    sub_1D50002E0(v3, v22, type metadata accessor for CloudTVEpisode.Associations);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_9_33();
    sub_1D500033C(v3, v21);
  }

  OUTLINED_FUNCTION_26();
}