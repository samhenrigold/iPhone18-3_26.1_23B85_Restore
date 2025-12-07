unint64_t sub_1D5140980()
{
  result = qword_1EC7F0838;
  if (!qword_1EC7F0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0838);
  }

  return result;
}

unint64_t sub_1D51409D8()
{
  result = qword_1EC7F0840;
  if (!qword_1EC7F0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0840);
  }

  return result;
}

unint64_t sub_1D5140A30()
{
  result = qword_1EC7F0848;
  if (!qword_1EC7F0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0848);
  }

  return result;
}

uint64_t EditorialElementLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D560C0A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EditorialElementLink.target.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditorialElementLink(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EditorialElementLink(uint64_t a1)
{
  result = qword_1EDD55C38;
  if (!qword_1EDD55C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialElementLink.feature.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditorialElementLink(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

void static EditorialElementLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for EditorialElementLink(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6 == 7)
      {
        if (v7 != 7)
        {
          return;
        }
      }

      else if (v6 != v7)
      {
        return;
      }

      sub_1D4F286E0();
    }
  }
}

void EditorialElementLink.hash(into:)(uint64_t a1)
{
  sub_1D560C0A8();
  sub_1D51412B8(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  v2 = type metadata accessor for EditorialElementLink(0);
  MEMORY[0x1DA6EC0D0](*(v1 + *(v2 + 20)));
  v3 = *(v1 + *(v2 + 24));
  sub_1D56162F8();
  if (v3 != 7)
  {
    MEMORY[0x1DA6EC0D0](v3);
  }

  sub_1D4F31AC0();
}

uint64_t EditorialElementLink.hashValue.getter()
{
  sub_1D56162D8();
  EditorialElementLink.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5140D8C(uint64_t a1)
{
  sub_1D56162D8();
  EditorialElementLink.hash(into:)(v2);
  return sub_1D5616328();
}

void EditorialElementLink.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v25 = v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  OUTLINED_FUNCTION_4();
  v23 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v27 = a1;
  sub_1D4E628D4(a1, v26);
  type metadata accessor for CloudEditorialElementLink(0);
  sub_1D51412B8(&qword_1EDD55448, type metadata accessor for CloudEditorialElementLink, &unk_1D56652EC);
  OUTLINED_FUNCTION_0_105();
  sub_1D51412B8(v17, type metadata accessor for CloudEditorialElementLink, v18);
  sub_1D5610768();
  if (v2)
  {
    v26[0] = v2;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      v21 = v25;
      (*(v25 + 32))(v9, v11, v4);
      sub_1D5615C18();
      swift_allocError();
      v22 = v27;
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v22);
      (*(v21 + 8))(v9, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
    sub_1D54403B4(v24);
    v19 = (v23 + 8);
    __swift_destroy_boxed_opaque_existential_1(v27);
    (*v19)(v16, v12);
  }
}

uint64_t EditorialElementLink.encode(to:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1D544096C();
  sub_1D51412B8(&qword_1EDD55448, type metadata accessor for CloudEditorialElementLink, &unk_1D56652EC);
  OUTLINED_FUNCTION_0_105();
  sub_1D51412B8(v7, type metadata accessor for CloudEditorialElementLink, v8);
  sub_1D5610778();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1D51412B8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5141328(uint64_t a1)
{
  sub_1D560C0A8();
  if (v1 <= 0x3F)
  {
    sub_1D51413CC();
    if (v2 <= 0x3F)
    {
      sub_1D4E5CF94(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D51413CC()
{
  if (!qword_1EDD55C50[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD55C50);
    }
  }
}

uint64_t sub_1D514141C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_46_1();
  result = v4(v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t UploadedAudio.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v11 = sub_1D560D708();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  a2[1] = v13;
  v14 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  type metadata accessor for UploadedAudio(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D514160C(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v6, v4, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v7, v4, v8);

  return sub_1D560EC28();
}

uint64_t UploadedAudio.artistName.getter()
{
  if (qword_1EC7E8E38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v4 = sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_45_2(v4, MEMORY[0x1E69E6158], v5, v4);
  if (v8)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t static UploadedAudio.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UploadedAudio(0);

  return sub_1D5611A78();
}

uint64_t UploadedAudio.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v89 = v3;
  v90 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v86 = v4;
  OUTLINED_FUNCTION_70_0();
  v85 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v83 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v82 = v7;
  OUTLINED_FUNCTION_70_0();
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v80 = v9;
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v87 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v92 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v93 = v27;
  v28 = OUTLINED_FUNCTION_70_0();
  v29 = type metadata accessor for UploadedAudio(v28);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v91 = v32 - v31;
  sub_1D51459A0(v1, v32 - v31);
  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EC7E8EC8);
  }

  sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v35 = sub_1D4E74B10(v33, type metadata accessor for UploadedAudio, v34);
  OUTLINED_FUNCTION_48_18(v35, MEMORY[0x1E69E6158]);
  v36 = v94[0];
  v37 = v94[1];
  v38 = UploadedAudio.artistName.getter();
  v78 = v39;
  v79 = v38;
  if (qword_1EC7E8E40 != -1)
  {
    swift_once();
  }

  v40 = sub_1D56140F8();
  OUTLINED_FUNCTION_48_18(v40, v40);
  if (qword_1EC7E8E58 != -1)
  {
    OUTLINED_FUNCTION_39_23(&qword_1EC7E8E58);
  }

  v41 = sub_1D56106B8();
  v75 = v24;
  OUTLINED_FUNCTION_48_18(v41, v41);
  if (qword_1EC7E8EB8 != -1)
  {
    OUTLINED_FUNCTION_38_25(&qword_1EC7E8EB8);
  }

  v42 = 0xE000000000000000;
  if (v37)
  {
    v42 = v37;
  }

  v77 = v42;
  if (v37)
  {
    v43 = v36;
  }

  else
  {
    v43 = 0;
  }

  v76 = v43;
  v44 = sub_1D560C0A8();
  OUTLINED_FUNCTION_48_18(v44, v44);
  v45 = v84;
  v46 = v85;
  v47 = OUTLINED_FUNCTION_45_1();
  __swift_storeEnumTagSinglePayload(v47, v48, 1, v46);
  v95 = v29;
  v96 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
  sub_1D51459A0(v91, boxed_opaque_existential_0);
  v50 = __swift_project_boxed_opaque_existential_1(v94, v95);
  v52 = v80;
  v51 = v81;
  (*(v80 + 16))(v12, &v50[*(v29 + 20)], v81);
  v53 = v82;
  sub_1D5611A98();
  (*(v52 + 8))(v12, v51);
  v54 = v87;
  sub_1D560FDD8();
  (*(v83 + 8))(v53, v46);
  sub_1D4E50004(v45, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v46);
  v55 = OUTLINED_FUNCTION_98();
  sub_1D4F7AFE0(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v94);
  v57 = v86;
  sub_1D560EC98();
  v58 = OUTLINED_FUNCTION_128();
  sub_1D4E69970(v58, v59, &qword_1EC7EA358, &unk_1D561DF50);
  v60 = type metadata accessor for MusicSiriRepresentation(0);
  v61 = v88;
  v62 = v93;
  sub_1D4E69970(v93, v88 + v60[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v63 = v75;
  sub_1D4E69970(v75, v61 + v60[9], &qword_1EC7EC478, &unk_1D56299D0);
  v64 = v92;
  sub_1D4E69970(v92, v61 + v60[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v94[0]) = 17;
  sub_1D50391CC();
  v66 = v65;
  v68 = v67;
  sub_1D4E50004(v54, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v89 + 8))(v57, v90);
  v69 = OUTLINED_FUNCTION_128();
  sub_1D4E50004(v69, v70, &unk_1D561DF50);
  sub_1D4E50004(v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v63, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5146F00(v91);
  *v61 = v66;
  *(v61 + 8) = v68;
  *(v61 + 16) = 17;
  v72 = v77;
  *(v61 + 24) = v76;
  *(v61 + 32) = v72;
  v73 = v78;
  *(v61 + 40) = v79;
  *(v61 + 48) = v73;
  return result;
}

uint64_t UploadedAudio.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v3);
  v198 = sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v185 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v9);
  v195 = sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v183 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v15);
  v193 = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v181 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v18);
  v207 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v179 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v206 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v204 = &v165 - v23;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08B8, &unk_1D5642230);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v165 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v192 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v32);
  v177 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v176 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v35);
  v175 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v174 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v171 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_48(&v165 - v43);
  v197 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v168 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v50 = v49;
  OUTLINED_FUNCTION_70_0();
  v188 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v170 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v56);
  v187 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v167 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v165 - v62;
  v64 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v165 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5();
  v69 = v68 - v67;
  strcpy(v217, "UploadedAudio(");
  HIBYTE(v217[1]) = -18;
  v213 = 0x22203A646920200ALL;
  v214 = 0xE800000000000000;
  v70 = sub_1D560EEC8();
  v72 = v71;
  MEMORY[0x1DA6EAC70](v70);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_49_14();

  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EC7E8EC8);
  }

  OUTLINED_FUNCTION_3_86();
  v74 = sub_1D4E74B10(v73, v72, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v77 = sub_1D4E74B10(v75, v72, v76);
  v201 = v74;
  v203 = v77;
  v202 = v0;
  sub_1D560EC28();
  if (v214)
  {
    OUTLINED_FUNCTION_51_0();
    v213 = v78 | 0x6C74697400000000;
    v214 = 0xEB00000000203A65;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_49_14();
  }

  OUTLINED_FUNCTION_11_61();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v213 = 0xD000000000000011;
  v214 = v79;
  v80 = UploadedAudio.artistName.getter();
  MEMORY[0x1DA6EAC70](v80);

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_49_14();

  if (qword_1EC7E8E58 != -1)
  {
    OUTLINED_FUNCTION_39_23(&qword_1EC7E8E58);
  }

  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v63, 1, v64);
  v81 = v50;
  if (v82)
  {
    sub_1D4E50004(v63, &qword_1EC7EC478, &unk_1D56299D0);
  }

  else
  {
    v83 = v165;
    (*(v165 + 32))(v69, v63, v64);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D5685A90);
    sub_1D5615D48();
    OUTLINED_FUNCTION_49_14();

    (*(v83 + 8))(v69, v64);
  }

  v84 = v196;
  v85 = v187;
  if (qword_1EC7E8E60 != -1)
  {
    OUTLINED_FUNCTION_40(&qword_1EC7E8E60);
  }

  OUTLINED_FUNCTION_43_18(qword_1EC87C1A8, MEMORY[0x1E69E63B0]);
  if ((v214 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_1D5615568();
    OUTLINED_FUNCTION_19_44();
  }

  if (qword_1EC7E8E70 != -1)
  {
    swift_once();
  }

  v86 = v186;
  OUTLINED_FUNCTION_43_18(qword_1EC87C1B8, v85);
  v87 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v87, v88, v85);
  if (v82)
  {
    sub_1D4E50004(v86, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v187 = v81;
    v89 = v167;
    v90 = v166;
    (*(v167 + 32))(v166, v86, v85);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v213 = 0xD000000000000014;
    v214 = v91;
    v215 = sub_1D5610928();
    v216 = v92;
    v211 = 10;
    v212 = 0xE100000000000000;
    v209 = 2105354;
    v210 = 0xE300000000000000;
    v93 = sub_1D4F53278();
    v99 = OUTLINED_FUNCTION_23_5(&v211, &v209, v94, v95, v96, v97, MEMORY[0x1E69E6158], v98, v164, v93, v93, v93);
    v101 = v100;

    MEMORY[0x1DA6EAC70](v99, v101);

    OUTLINED_FUNCTION_19_44();

    v102 = v90;
    v84 = v196;
    (*(v89 + 8))(v102, v85);
    v81 = v187;
  }

  v103 = v205;
  v104 = v197;
  v105 = v188;
  if (qword_1EC7E8EB8 != -1)
  {
    OUTLINED_FUNCTION_38_25(&qword_1EC7E8EB8);
  }

  OUTLINED_FUNCTION_43_18(qword_1EC87C200, v105);
  OUTLINED_FUNCTION_57(v81, 1, v105);
  if (v82)
  {
    sub_1D4E50004(v81, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v106 = v170;
    v107 = v169;
    (*(v170 + 32))(v169, v81, v105);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v213 = v108 | 0x74736F7000000000;
    v214 = 0xEE0022203A4C5255;
    OUTLINED_FUNCTION_28_35();
    sub_1D4E74B10(v109, v110, MEMORY[0x1E6968FE0]);
    sub_1D56160F8();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_19_44();

    (*(v106 + 8))(v107, v105);
  }

  v111 = v199;
  if (qword_1EC7E8ED0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_43_18(qword_1EC87C218, v104);
  OUTLINED_FUNCTION_57(v84, 1, v104);
  if (v82)
  {
    sub_1D4E50004(v84, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v112 = v168;
    v113 = v189;
    (*(v168 + 32))(v189, v84, v104);
    v114 = v172;
    sub_1D56107A8();
    v115 = v171;
    (*(v112 + 16))(v171, v113, v104);
    __swift_storeEnumTagSinglePayload(v115, 0, 1, v104);
    v116 = v176;
    v117 = v173;
    v118 = v177;
    (*(v176 + 104))(v173, *MEMORY[0x1E6975DC8], v177);
    v119 = sub_1D56107B8();
    v121 = v120;
    (*(v116 + 8))(v117, v118);
    sub_1D4E50004(v115, &qword_1EC7EA3B8, &unk_1D561E370);
    (*(v174 + 8))(v114, v175);
    if (v121)
    {
      OUTLINED_FUNCTION_11_61();
      sub_1D5615B68();

      OUTLINED_FUNCTION_9_0();
      v213 = 0xD000000000000013;
      v214 = v122;
      MEMORY[0x1DA6EAC70](v119, v121);

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_19_44();
    }

    (*(v112 + 8))(v189, v197);
    v111 = v199;
  }

  v123 = v190;
  if (qword_1EC7E8EE0 != -1)
  {
    OUTLINED_FUNCTION_37_3(&qword_1EC7E8EE0);
  }

  OUTLINED_FUNCTION_43_18(qword_1EC7F0858, v103);
  OUTLINED_FUNCTION_57(v123, 1, v103);
  if (v82)
  {
    sub_1D4E50004(v123, &off_1EC7EB5B0, &unk_1D5632170);
  }

  else
  {
    v124 = v192;
    v125 = v191;
    (*(v192 + 32))(v191, v123, v103);
    v215 = 0;
    v216 = 0xE000000000000000;
    (*(v124 + 16))(v26, v125, v103);
    v126 = *(v178 + 36);
    sub_1D5146F5C();
    OUTLINED_FUNCTION_98();
    sub_1D5615608();
    v127 = (v179 + 16);
    v128 = (v179 + 32);
    v129 = (v179 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_98();
      sub_1D5615648();
      if (*&v26[v126] == v213)
      {
        break;
      }

      v130 = sub_1D5615688();
      v131 = v204;
      v132 = v207;
      (*v127)(v204);
      v130(&v213, 0);
      sub_1D5615658();
      (*v128)(v206, v131, v132);
      v133 = v215 & 0xFFFFFFFFFFFFLL;
      if ((v216 & 0x2000000000000000) != 0)
      {
        v133 = HIBYTE(v216) & 0xF;
      }

      if (v133)
      {
        MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      }

      v213 = 10;
      v214 = 0xE100000000000000;
      v134 = v206;
      v135 = sub_1D5613DF8();
      MEMORY[0x1DA6EAC70](v135);

      MEMORY[0x1DA6EAC70](v213, v214);

      (*v129)(v134, v207);
      v103 = v205;
    }

    sub_1D4E50004(v26, &qword_1EC7F08B8, &unk_1D5642230);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v213 = v136 | 0x6974726100000000;
    v214 = 0xEE005B203A737473;
    v211 = v215;
    v212 = v216;
    v209 = 10;
    v210 = 0xE100000000000000;
    v208[0] = 0x202020200ALL;
    v208[1] = 0xE500000000000000;
    v137 = sub_1D4F53278();
    OUTLINED_FUNCTION_23_5(&v209, v208, v138, v139, v140, v141, MEMORY[0x1E69E6158], v142, v164, v137, v137, v137);

    v143 = OUTLINED_FUNCTION_46_1();
    MEMORY[0x1DA6EAC70](v143);

    MEMORY[0x1DA6EAC70](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_19_44();

    (*(v192 + 8))(v191, v103);
    v111 = v199;
  }

  UploadedAudio.curator.getter(v111);
  v144 = OUTLINED_FUNCTION_45_1();
  v145 = v193;
  OUTLINED_FUNCTION_57(v144, v146, v193);
  v147 = v195;
  if (v82)
  {
    sub_1D4E50004(v111, &qword_1EC7EA9A0, &qword_1D561D230);
  }

  else
  {
    v148 = v181;
    v149 = v180;
    (*(v181 + 32))(v180, v111, v145);
    OUTLINED_FUNCTION_51_0();
    v213 = v150 | 0x6172756300000000;
    v214 = 0xED0000203A726F74;
    sub_1D5614148();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v148 + 8))(v149, v145);
  }

  v151 = v194;
  UploadedAudio.genre.getter(v194);
  v152 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v152, v153, v147);
  if (v82)
  {
    sub_1D4E50004(v151, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    v154 = v183;
    v155 = v182;
    (*(v183 + 32))(v182, v151, v147);
    OUTLINED_FUNCTION_51_0();
    v213 = v156 | 0x726E656700000000;
    v214 = 0xEB00000000203A65;
    sub_1D5613B88();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v154 + 8))(v155, v147);
  }

  UploadedAudio.radioShow.getter(v200);
  v157 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v157, v158, v198);
  if (v82)
  {
    sub_1D4E50004(v200, &qword_1EC7EA988, &qword_1D56397B0);
  }

  else
  {
    v159 = v185;
    v160 = v184;
    v161 = v198;
    (*(v185 + 32))(v184, v200, v198);
    OUTLINED_FUNCTION_11_61();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v213 = v162 | 0x6964617200000000;
    v214 = 0xEF203A776F68536FLL;
    sub_1D5614AB8();
    OUTLINED_FUNCTION_66_11();

    OUTLINED_FUNCTION_19_44();

    (*(v159 + 8))(v160, v161);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v217[0];
}

uint64_t UploadedAudio.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UploadedAudio(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t UploadedAudio.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  type metadata accessor for UploadedAudio(0);
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v11, v12, &protocol conformance descriptor for UploadedAudio);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v13 = sub_1D560F148();
  v14 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v14, v15, v13);
  if (v16)
  {
    sub_1D4E50004(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v17 = sub_1D560F138();
    v18 = OUTLINED_FUNCTION_128();
    v19(v18);
  }

  return v17;
}

uint64_t UploadedAudio.duration.getter()
{
  if (qword_1EC7E8E60 != -1)
  {
    OUTLINED_FUNCTION_40(&qword_1EC7E8E60);
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v4 = sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_45_2(v4, MEMORY[0x1E69E63B0], v5, v4);
  return v7;
}

uint64_t UploadedAudio._editorialArtworks.getter()
{
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_24_36();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_128();
  sub_1D560EC28();
  return v5;
}

uint64_t UploadedAudio._editorialVideoArtworks.getter()
{
  sub_1D4F84A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_24_36();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_128();
  sub_1D560EC28();

  return v5;
}

uint64_t sub_1D5143AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  if (qword_1EC7E8E80 != -1)
  {
    swift_once();
  }

  v7 = sub_1D56128E8();
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v8, v1, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v9, v1, v10);
  sub_1D560EC28();
  v11 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v11, v12, v7);
  if (v13)
  {
    OUTLINED_FUNCTION_8_0();
    (*(v14 + 104))(a1);
    v15 = OUTLINED_FUNCTION_45_1();
    result = OUTLINED_FUNCTION_57(v15, v16, v7);
    if (!v13)
    {
      return sub_1D4E50004(v6, &qword_1EC7EF5C8, &unk_1D5632130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_0();
    v17 = OUTLINED_FUNCTION_98();
    return v18(v17);
  }

  return result;
}

uint64_t sub_1D5143E38()
{
  OUTLINED_FUNCTION_19_1();
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v2, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v5 = sub_1D4E74B10(v3, v0, v4);
  OUTLINED_FUNCTION_45_2(v5, MEMORY[0x1E69E6158], v6, v5);
  return v8;
}

uint64_t UploadedAudio.artists.getter()
{
  if (qword_1EC7E8EE0 != -1)
  {
    OUTLINED_FUNCTION_37_3(&qword_1EC7E8EE0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.curator.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  if (qword_1EC7E8EE8 != -1)
  {
    OUTLINED_FUNCTION_36_26(&qword_1EC7E8EE8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v6, v2, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v9 = sub_1D4E74B10(v7, v2, v8);
  OUTLINED_FUNCTION_21_6(v9);
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA790, &unk_1D561FB10);
    sub_1D56141F8();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC94C4(a1);
    OUTLINED_FUNCTION_8_0();
    v14 = OUTLINED_FUNCTION_46_1();
    return v15(v14);
  }
}

uint64_t sub_1D5144100()
{
  if (qword_1EC7E8EE8 != -1)
  {
    OUTLINED_FUNCTION_36_26(&qword_1EC7E8EE8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.genre.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  if (off_1EC7E8EF0 != -1)
  {
    OUTLINED_FUNCTION_35_6(&off_1EC7E8EF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v6, v2, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v9 = sub_1D4E74B10(v7, v2, v8);
  OUTLINED_FUNCTION_21_6(v9);
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA788, &unk_1D56223A0);
    sub_1D5613C48();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC94F4(a1);
    OUTLINED_FUNCTION_8_0();
    v14 = OUTLINED_FUNCTION_46_1();
    return v15(v14);
  }
}

uint64_t sub_1D5144330()
{
  if (off_1EC7E8EF0 != -1)
  {
    OUTLINED_FUNCTION_35_6(&off_1EC7E8EF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.radioShow.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  if (off_1EC7E8EF8 != -1)
  {
    OUTLINED_FUNCTION_33_4(&off_1EC7E8EF8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_5_68();
  sub_1D4E74B10(v6, v2, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  v9 = sub_1D4E74B10(v7, v2, v8);
  OUTLINED_FUNCTION_21_6(v9);
  OUTLINED_FUNCTION_43_0(v1);
  if (v10)
  {
    sub_1D4E50004(v1, &qword_1EC7EA780, &unk_1D561FB20);
    sub_1D5614B68();
    v11 = OUTLINED_FUNCTION_45_1();
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  }

  else
  {
    sub_1D4EC9644(a1);
    OUTLINED_FUNCTION_8_0();
    v14 = OUTLINED_FUNCTION_46_1();
    return v15(v14);
  }
}

uint64_t sub_1D5144560()
{
  if (off_1EC7E8EF8 != -1)
  {
    OUTLINED_FUNCTION_33_4(&off_1EC7E8EF8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_2_86();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t UploadedAudio.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for UploadedAudio(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_22_38();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6976328]);
  OUTLINED_FUNCTION_128();
  return sub_1D5614CB8();
}

uint64_t UploadedAudio.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for UploadedAudio(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_22_38();
  sub_1D4E74B10(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D514474C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D4E74B10(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51447F0@<X0>(uint64_t *a1@<X8>)
{
  result = UploadedAudio.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t UploadedAudio.subscript.getter(uint64_t a1)
{
  return sub_1D5144858();
}

{
  return sub_1D5144858();
}

uint64_t sub_1D5144858()
{
  OUTLINED_FUNCTION_23_39();
  sub_1D4E74B10(v1, v0, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_32_31(&qword_1EDD57500);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t UploadedAudio.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_23_39();
  sub_1D4E74B10(v2, v1, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_32_31(&qword_1EDD57500);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5144A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v11 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D5144B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v13 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5144CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v13 = sub_1D4E74B10(&qword_1EC7EAB60, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D5144E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C180 = v0;
  return result;
}

uint64_t sub_1D5144E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C188 = v0;
  return result;
}

uint64_t sub_1D5144F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(qword_1EDD57DD8, type metadata accessor for AssetFlavors, &protocol conformance descriptor for AssetFlavors);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C190 = v0;
  return result;
}

uint64_t sub_1D5144FCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD533C0, MEMORY[0x1E6975930], MEMORY[0x1E6975948]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C198 = v0;
  return result;
}

uint64_t sub_1D514507C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&unk_1EDD5F228, MEMORY[0x1E6975D60], MEMORY[0x1E6975D80]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1A0 = v0;
  return result;
}

uint64_t sub_1D514512C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_15(22, 0x80000001D56819A0);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1A8 = v0;
  return result;
}

uint64_t sub_1D51451A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4FCE3FC();
  sub_1D560D118();
  OUTLINED_FUNCTION_63();

  qword_1EC87C1B0 = v0;
  return result;
}

uint64_t sub_1D514525C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_38();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6975E68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1B8 = v0;
  return result;
}

uint64_t sub_1D51452FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_53_16();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1C0 = v0;
  return result;
}

uint64_t sub_1D514538C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53058, MEMORY[0x1E6976600], MEMORY[0x1E6976618]);
  OUTLINED_FUNCTION_53_16();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1C8 = v0;
  return result;
}

uint64_t sub_1D514542C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53130, MEMORY[0x1E6976028], MEMORY[0x1E6976040]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15(17, v1);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1D0 = v0;
  return result;
}

uint64_t sub_1D51454D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52ED8, MEMORY[0x1E69768E8], MEMORY[0x1E6976900]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15(23, v1);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1D8 = v0;
  return result;
}

uint64_t sub_1D5145574()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52EC0, MEMORY[0x1E6976A18], MEMORY[0x1E6976A30]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15(30, v1);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1E0 = v0;
  return result;
}

uint64_t sub_1D5145618()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD52A48, MEMORY[0x1E69774A0], MEMORY[0x1E69774B8]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1E8 = v0;
  return result;
}

uint64_t sub_1D51456C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_38();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6975E68]);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_58_15(19, v3);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1F0 = v0;
  return result;
}

uint64_t sub_1D514575C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D4E74B10(&qword_1EDD53160, MEMORY[0x1E6975E88], MEMORY[0x1E6975EA8]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C1F8 = v0;
  return result;
}

uint64_t sub_1D5145804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_35();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6968FD0]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C200 = v0;
  return result;
}

uint64_t sub_1D5145898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C208 = v0;
  return result;
}

uint64_t sub_1D5145934()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C210 = v0;
  return result;
}

uint64_t sub_1D51459A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedAudio(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5145A04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_57();
  sub_1D4E74B10(v1, v2, MEMORY[0x1E6969558]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C218 = v0;
  return result;
}

uint64_t sub_1D5145A9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_58_15(19, 0x80000001D5683C10);
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C220 = v0;
  return result;
}

uint64_t sub_1D5145B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  sub_1D4E74B10(&unk_1EDD52E00, MEMORY[0x1E6976F28], MEMORY[0x1E6976F40]);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_63();

  qword_1EC7F0858 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.artists.getter()
{
  return sub_1D50355DC();
}

{
  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_2_104(&qword_1EC7E9070);
  }
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5145C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D4E74B10(&qword_1EDD52DE0, MEMORY[0x1E6977048], MEMORY[0x1E6977068]);
  OUTLINED_FUNCTION_13_45(v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F0860 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.curator.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5145CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D4E74B10(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
  OUTLINED_FUNCTION_13_45(v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F0868 = v0;
  return result;
}

uint64_t sub_1D5145D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_6();
  sub_1D560CDC8();
  v1 = sub_1D4E74B10(&qword_1EDD52A30, MEMORY[0x1E6977550], MEMORY[0x1E6977570]);
  OUTLINED_FUNCTION_13_45(v1);
  OUTLINED_FUNCTION_63();

  qword_1EC7F0870 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.radioShow.getter()
{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D5145EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D5145F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D5145FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D5146064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D51460E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D514615C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D51461D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D5146254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D51462D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D514634C(uint64_t a1, uint64_t a2)
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return sub_1D5613028();
}

uint64_t sub_1D51463C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D514644C(uint64_t a1, uint64_t a2)
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return sub_1D5612FD8();
}

uint64_t sub_1D51464D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D514654C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t static UploadedAudio.catalogFilterID(for:)(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v1 = sub_1D5614D18();

  if (v1)
  {
    return sub_1D5610A08();
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5146708(uint64_t a1, uint64_t a2)
{
  sub_1D4E74B10(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  return sub_1D5610C58();
}

uint64_t sub_1D514678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4E74B10(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t UploadedAudio.init(from:)(void *a1)
{
  type metadata accessor for UploadedAudio(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v3, v4, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_27_34();
  sub_1D4E74B10(v5, v1, &protocol conformance descriptor for CloudUploadedAudio);
  OUTLINED_FUNCTION_31_28(&qword_1EDD56478);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UploadedAudio.encode(to:)(uint64_t a1)
{
  type metadata accessor for UploadedAudio(0);
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v2, v3, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_27_34();
  sub_1D4E74B10(v4, v1, &protocol conformance descriptor for CloudUploadedAudio);
  OUTLINED_FUNCTION_31_28(&qword_1EDD56478);
  return sub_1D5612688();
}

unint64_t UploadedAudio.description.getter()
{
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v0 = sub_1D560EEC8();
  v2 = v1;
  MEMORY[0x1DA6EAC70](v0);

  OUTLINED_FUNCTION_55_0();
  if (qword_1EC7E8EC8 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EC7E8EC8);
  }

  OUTLINED_FUNCTION_3_86();
  sub_1D4E74B10(v3, v2, &protocol conformance descriptor for UploadedAudio);
  OUTLINED_FUNCTION_0_106();
  sub_1D4E74B10(v4, v2, v5);
  sub_1D560EC28();
  if (v8)
  {
    MEMORY[0x1DA6EAC70]();

    MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xE900000000000020);
  }

  sub_1D5615B68();

  v6 = UploadedAudio.artistName.getter();
  MEMORY[0x1DA6EAC70](v6);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x747369747261202CLL, 0xEF22203A656D614ELL);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1D5146C70()
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
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD0], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F0878 = v4;
  return result;
}

uint64_t sub_1D5146DCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6975208], v0);
  result = (v8)(v7 + v4, *MEMORY[0x1E6975218], v0);
  qword_1EC7F0880 = v6;
  return result;
}

uint64_t sub_1D5146F00(uint64_t a1)
{
  v2 = type metadata accessor for UploadedAudio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5146F5C()
{
  result = qword_1EDD53BB8;
  if (!qword_1EDD53BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53BB8);
  }

  return result;
}

uint64_t sub_1D5146FC0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F0888);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for UploadedAudio(0);
  OUTLINED_FUNCTION_1_93();
  sub_1D4E74B10(v3, v4, &protocol conformance descriptor for UploadedAudio);
  return sub_1D560D988();
}

uint64_t sub_1D514706C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F08A0);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EC7E8F10 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EC7F0888);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t sub_1D514719C(uint64_t a1)
{
  result = sub_1D4E74B10(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_28(unint64_t *a1)
{

  return sub_1D4E74B10(a1, v1, &protocol conformance descriptor for CloudUploadedAudio);
}

void OUTLINED_FUNCTION_66_11()
{

  JUMPOUT(0x1DA6EAC70);
}

void sub_1D5147334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D5621E90;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0928, &qword_1D563A320);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374168(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0930, &qword_1D563A350);
  OUTLINED_FUNCTION_2_19(v4);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D514740C()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 40) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0938, &qword_1D563A380);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D5147470()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D51474C4()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0940, &qword_1D563A3D8);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D5147520()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 64) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0948, &qword_1D563A408);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374160(v3);
}

uint64_t sub_1D5147560()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 72) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0950, &unk_1D563A438);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5373FF8(v3, sub_1D51478AC, 0);
  OUTLINED_FUNCTION_0_6();

  *(v0 + 80) = v1;
  qword_1EDD767B8 = v0;
  return result;
}

uint64_t sub_1D51475DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D5147634@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D51476A8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result & 1;
  return result;
}

void *sub_1D5147704@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D5147784(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1D5613348();
  a2(1);
  return v3(&v5, 0);
}

void *sub_1D51477EC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D5147854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1D51478AC(uint64_t a1, uint64_t a2)
{
  sub_1D526EC2C();
  v3 = v2;
  v4 = sub_1D5613428();
  sub_1D4EF34E0(v3);
  return v4(&v6, 0);
}

uint64_t sub_1D5147918()
{
  v0 = sub_1D5614438();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D561C770;
  swift_getKeyPath();
  v10 = *MEMORY[0x1E69771C8];
  v17 = v2[13];
  v17(v8, v10, v0);
  v16 = v2[2];
  v16(v6, v8, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0920, &qword_1D563A2D0);
  OUTLINED_FUNCTION_2_19(v11);
  v12 = OUTLINED_FUNCTION_34_29();
  v13 = v2[1];
  v13(v8, v0);
  *(v9 + 32) = v12;
  swift_getKeyPath();
  v17(v8, *MEMORY[0x1E69771A8], v0);
  v16(v6, v8, v0);
  swift_allocObject();
  v14 = OUTLINED_FUNCTION_34_29();
  result = (v13)(v8, v0);
  *(v9 + 40) = v14;
  qword_1EDD76D70 = v9;
  return result;
}

uint64_t sub_1D5147B40(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D5147B98(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D5147BF0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560E4D8() & 1) != 0 && (sub_1D560E4B8() & 1) == 0)
  {
    a2 |= 4uLL;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E6977668]);

  return [v4 initWithVariants:a1 options:a2];
}

uint64_t static Playlist.rawInternalPropertyKey(for:)(uint64_t a1)
{
  v2 = sub_1D5614438();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  OUTLINED_FUNCTION_71();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685BB0);
    v25 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v22 = v26;
    v23 = v27;
    goto LABEL_12;
  }

  v9 = v8;
  swift_retain_n();
  v10 = sub_1D560D1F8();
  v25 = v9;
  v26 = v10;
  sub_1D5147FC4();
  v11 = OUTLINED_FUNCTION_9_61();

  if ((v11 & 1) == 0)
  {
    v12 = qword_1EDD5D7E8;

    if (v12 != -1)
    {
      OUTLINED_FUNCTION_13_46(&qword_1EDD5D7E8);
    }

    v25 = v9;
    v26 = qword_1EDD5D7F0;
    v13 = OUTLINED_FUNCTION_9_61();

    if ((v13 & 1) == 0)
    {

      v14 = sub_1D560D218();
      v25 = v9;
      v26 = v14;
      v15 = OUTLINED_FUNCTION_9_61();

      if ((v15 & 1) == 0)
      {
        v16 = qword_1EDD54380;

        if (v16 != -1)
        {
          OUTLINED_FUNCTION_12_51(&qword_1EDD54380);
        }

        v25 = v9;
        v26 = qword_1EDD54388;
        v17 = OUTLINED_FUNCTION_9_61();

        if ((v17 & 1) == 0)
        {
          while (1)
          {
            v26 = 0;
            v27 = 0xE000000000000000;
            sub_1D5615B68();
            OUTLINED_FUNCTION_33_3();
            MEMORY[0x1DA6EAC70](0xD000000000000024);
            v25 = a1;
            sub_1D560CDE8();
            sub_1D5615D48();
            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
            v22 = v26;
            v23 = v27;
LABEL_12:
            OUTLINED_FUNCTION_10_62("Fatal error", v20, v21, v22, v23, "MusicKitInternal/Playlist+LegacyModelLibraryInternalRequestable.swift");
            __break(1u);
          }
        }
      }
    }
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69771E8], v2);
  v18 = sub_1D5614428();

  (*(v4 + 8))(v7, v2);
  return v18;
}

unint64_t sub_1D5147FC4()
{
  result = qword_1EDD54390;
  if (!qword_1EDD54390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECEA8, &qword_1D563A170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54390);
  }

  return result;
}

uint64_t static Playlist.underlyingLegacyModelObjectTypeForCorrespondingUnderlyingInternalRelationship(_:)@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  OUTLINED_FUNCTION_0_6();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    sub_1D560D1F8();
    v3 = sub_1D5147FC4();
    v6 = OUTLINED_FUNCTION_8_58(v3, v4, v5);

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = qword_1EDD5D7E8;

    if (v7 != -1)
    {
      v8 = OUTLINED_FUNCTION_13_46(&qword_1EDD5D7E8);
    }

    v11 = OUTLINED_FUNCTION_8_58(v8, v9, v10);

    if (v11 & 1) != 0 || (, v30 = sub_1D560D218(), v14 = OUTLINED_FUNCTION_8_58(v30, v12, v13), , v15 = , (v14))
    {
LABEL_7:
    }

    else
    {
      if (qword_1EDD54380 != -1)
      {
        v15 = OUTLINED_FUNCTION_12_51(&qword_1EDD54380);
      }

      v26 = OUTLINED_FUNCTION_8_58(v15, v16, v17);

      if ((v26 & 1) == 0)
      {
        sub_1D5613158();
        OUTLINED_FUNCTION_33();
        return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      }
    }

    v18 = *MEMORY[0x1E6976868];
    v19 = sub_1D5613158();
    OUTLINED_FUNCTION_14();
    (*(v20 + 104))(a2, v18, v19);
    v21 = a2;
    v22 = 0;
    v23 = 1;
    v24 = v19;
    return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }

  sub_1D5615B68();
  v27 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x1DA6EAC70](v27, 0xE900000000000020);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL);
  result = OUTLINED_FUNCTION_10_62("Fatal error", v28, v29, 0, 0xE000000000000000, "MusicKitInternal/Playlist+LegacyModelLibraryInternalRequestable.swift");
  __break(1u);
  return result;
}

uint64_t Playlist.internalItemsForRelationshipWithoutCorrespondingUnderlyingRelationship(for:library:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v1[30] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v1[33] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v9);
  v1[36] = OUTLINED_FUNCTION_127();
  v10 = sub_1D560D4C8();
  v1[37] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[38] = v11;
  v1[39] = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08E0, &unk_1D563A188);
  OUTLINED_FUNCTION_22(v12);
  v1[40] = OUTLINED_FUNCTION_167();
  v1[41] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v13);
  v1[42] = OUTLINED_FUNCTION_167();
  v1[43] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v14);
  v1[44] = OUTLINED_FUNCTION_167();
  v1[45] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v15);
  v1[46] = OUTLINED_FUNCTION_167();
  v1[47] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08E8, &qword_1D563A198);
  OUTLINED_FUNCTION_22(v16);
  v1[48] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v17);
  v1[49] = OUTLINED_FUNCTION_167();
  v1[50] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v18);
  v1[51] = OUTLINED_FUNCTION_167();
  v1[52] = swift_task_alloc();
  v19 = _s15InternalStorageVMa_0(0);
  v1[53] = v19;
  OUTLINED_FUNCTION_22(v19);
  v1[54] = OUTLINED_FUNCTION_167();
  v1[55] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08F0, &qword_1D563A1A0);
  v1[56] = v20;
  OUTLINED_FUNCTION_69(v20);
  v1[57] = v21;
  v1[58] = OUTLINED_FUNCTION_127();
  v22 = sub_1D560D838();
  v1[59] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[60] = v23;
  v1[61] = OUTLINED_FUNCTION_127();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08F8, &qword_1D563A1A8);
  v1[62] = v24;
  OUTLINED_FUNCTION_69(v24);
  v1[63] = v25;
  v1[64] = OUTLINED_FUNCTION_127();
  v26 = sub_1D5614898();
  v1[65] = v26;
  OUTLINED_FUNCTION_69(v26);
  v1[66] = v27;
  v1[67] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1D514871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16[27];
  v16[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  v18 = swift_dynamicCastClass();
  v16[69] = v18;
  if (v18)
  {
    v19 = v16[26];
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;

    v25 = swift_task_alloc();
    v16[70] = v25;
    *v25 = v16;
    v25[1] = sub_1D51488D0;
    v26 = v16[67];
    v27 = v16[65];
    v28 = MEMORY[0x1E6977350];

    return MEMORY[0x1EEDCE198](v26, v27, v28, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_1D5615B68();
    v16[12] = 0;
    v16[13] = 0xE000000000000000;
    v29 = OUTLINED_FUNCTION_31_3();
    MEMORY[0x1DA6EAC70](v29, 0xE900000000000020);
    v16[20] = v17;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000001CLL);
    return OUTLINED_FUNCTION_10_62("Fatal error", v30, v31, v16[12], v16[13], "MusicKitInternal/Playlist+LegacyModelLibraryInternalRequestable.swift");
  }
}

uint64_t sub_1D51488D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D51489C8()
{
  v1 = qword_1EDD5D820;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[69];
  v0[21] = qword_1EDD5D828;
  v0[22] = v2;
  sub_1D5147FC4();
  v3 = sub_1D5614D18();

  if (v3)
  {
    v5 = v0[60];
    v4 = v0[61];
    v6 = v0[59];
    type metadata accessor for Playlist.Collaborator(0);
    sub_1D514A52C(&qword_1EC7F0918, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    sub_1D560E668();
    KeyPath = swift_getKeyPath();
    sub_1D560EC98();
    v8 = sub_1D560D808();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    if (!v10)
    {
      v8 = sub_1D5614698();
      v10 = v11;
    }

    v12 = v0[62];
    v0[18] = v8;
    v0[19] = v10;
    MEMORY[0x1DA6E4340](KeyPath, v0 + 18, v12, MEMORY[0x1E6977380], MEMORY[0x1E6975510]);

    _s8MusicKit0A23LibrarySectionedRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
    v13 = swift_task_alloc();
    v0[72] = v13;
    *v13 = v0;
    v13[1] = sub_1D51493C8;
    OUTLINED_FUNCTION_49_0();

    MEMORY[0x1EEDCEF40](v14, v15);
    return;
  }

  v17 = qword_1EDD5D7D8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = v0[69];
  v0[23] = qword_1EDD5D7E0;
  v0[24] = v18;
  v19 = sub_1D5614D18();

  if ((v19 & 1) == 0)
  {
    v26 = v0[27];
    sub_1D5615B68();
    v0[14] = 0;
    v0[15] = 0xE000000000000000;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL);
    v0[25] = v26;
    sub_1D560CDE8();
    OUTLINED_FUNCTION_71();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_10_62("Fatal error", v27, v28, v0[14], v0[15], "MusicKitInternal/Playlist+LegacyModelLibraryInternalRequestable.swift");
    OUTLINED_FUNCTION_49_0();
    return;
  }

  v21 = v0[36];
  v20 = v0[37];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_1D5614618();
  if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
  {
    sub_1D4E50004(v0[36], &unk_1EC7EBF20, &unk_1D561F530);
    goto LABEL_25;
  }

  (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
  v29 = sub_1D560D4B8();
  v31 = v30;
  if (v29 == sub_1D560EED8() && v31 == v32)
  {

    goto LABEL_24;
  }

  v34 = sub_1D5616168();

  if (v34)
  {
LABEL_24:
    (*(v0[38] + 8))(v0[39], v0[37]);
LABEL_25:
    v42 = v0[30];
    sub_1D4E50004(v0[41], &qword_1EC7F08E0, &unk_1D563A188);
    v43 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v42);
    v47 = v0[49];
    v48 = v0[46];
    v49 = v0[41];
    v50 = v0[30];
    sub_1D505BC94();
    Playlist.collaborators.getter();
    sub_1D505C360();
    sub_1D505DED8();
    if (!__swift_getEnumTagSinglePayload(v49, 1, v50))
    {
      v51 = OUTLINED_FUNCTION_14_46();
      v52(v51);
      sub_1D560DE38();
      (*(v48 + 8))(v47, 1);
      v43 = 0;
    }

    v93 = v0[67];
    v53 = v0[66];
    v92 = v0[65];
    v55 = v0[53];
    v54 = v0[54];
    v88 = v0[51];
    v89 = v0[49];
    v90 = v0[46];
    v91 = v0[44];
    v56 = v0[42];
    v94 = v0[41];
    v57 = v0[26];
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    __swift_storeEnumTagSinglePayload(v56, v43, 1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    v63 = v55[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    v68 = v55[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    v73 = v55[7];
    type metadata accessor for CuratorRelationshipProvider(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    v78 = v55[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    sub_1D514A440(v88, v54, &qword_1EC7ECF58, &qword_1D5623AF0);
    sub_1D514A440(v89, v54 + v63, &qword_1EC7EC8D0, &unk_1D5623AD0);
    sub_1D514A440(v90, v54 + v68, &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D514A440(v91, v54 + v73, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D514A440(v56, v54 + v78, &qword_1EC7ECF38, &qword_1D562E650);
    v0[5] = sub_1D56131D8();
    v0[6] = &protocol witness table for AnyPropertyProviderExtendedStorage;
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_2_87();
    v85 = sub_1D514A52C(v83, v84, &unk_1D56696C0);
    OUTLINED_FUNCTION_35_30(v85);
    sub_1D4E50004(v57, &qword_1EC7F0900, &qword_1D563A1B0);
    OUTLINED_FUNCTION_32_32();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
    sub_1D560D1D8();

    (*(v53 + 8))(v93, v92);
    sub_1D4FBFABC(v54);
    sub_1D4E50004(v94, &qword_1EC7F08E0, &unk_1D563A188);
    OUTLINED_FUNCTION_0_107();

    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X2, X16 }
  }

  v35 = v0[33];
  type metadata accessor for Playlist.Folder(0);
  sub_1D514A52C(&qword_1EC7F0910, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  sub_1D560DD68();
  v36 = swift_getKeyPath();
  v0[16] = sub_1D560D4B8();
  v0[17] = v37;
  MEMORY[0x1DA6E3AD0](v36, v0 + 16, v35, MEMORY[0x1E6975510]);

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  v38 = swift_task_alloc();
  v0[74] = v38;
  *v38 = v0;
  v38[1] = sub_1D51499C0;
  OUTLINED_FUNCTION_49_0();

  MEMORY[0x1EEDCEAC0](v39, v40);
}

uint64_t sub_1D51493C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51494C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = *(v26 + 384);
  sub_1D505BC94();
  v28 = sub_1D560E758();
  sub_1D4ECA228(v28);

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA548, &unk_1D561C4A0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
  {
    sub_1D4E50004(*(v26 + 384), &qword_1EC7F08E8, &qword_1D563A198);
    v30 = 1;
  }

  else
  {
    v31 = *(v26 + 384);
    _s8MusicKit0A14LibrarySectionV0aB8InternalE8childrenAA0A14ItemCollectionVyq_Gvg_0();
    (*(*(v29 - 8) + 8))(v31, v29);
    v30 = 0;
  }

  v100 = *(v26 + 536);
  v96 = *(v26 + 528);
  v98 = *(v26 + 520);
  v92 = *(v26 + 496);
  v94 = *(v26 + 512);
  v88 = *(v26 + 464);
  v90 = *(v26 + 504);
  v32 = *(v26 + 440);
  v84 = *(v26 + 456);
  v86 = *(v26 + 448);
  v33 = *(v26 + 424);
  v34 = *(v26 + 400);
  v77 = v34;
  v79 = *(v26 + 376);
  v81 = *(v26 + 416);
  v35 = *(v26 + 360);
  v36 = *(v26 + 344);
  v37 = *(v26 + 208);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  __swift_storeEnumTagSinglePayload(v34, v30, 1, v38);
  sub_1D505C360();
  sub_1D505DED8();
  sub_1D505BF4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = v33[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = v33[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = v33[7];
  type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v58 = v33[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  sub_1D514A440(v81, v32, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D514A440(v77, v32 + v43, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D514A440(v79, v32 + v48, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D514A440(v35, v32 + v53, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D514A440(v36, v32 + v58, &qword_1EC7ECF38, &qword_1D562E650);
  *(v26 + 80) = sub_1D56131D8();
  *(v26 + 88) = &protocol witness table for AnyPropertyProviderExtendedStorage;
  __swift_allocate_boxed_opaque_existential_0((v26 + 56));
  OUTLINED_FUNCTION_2_87();
  sub_1D514A52C(v63, v64, &unk_1D56696C0);
  sub_1D56130F8();
  sub_1D4E50004(v37, &qword_1EC7F0900, &qword_1D563A1B0);
  v65 = *(v26 + 88);
  v66 = *(v26 + 72);
  *v37 = *(v26 + 56);
  *(v37 + 16) = v66;
  *(v37 + 32) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
  v82 = sub_1D560D1D8();

  (*(v84 + 8))(v88, v86);
  (*(v90 + 8))(v94, v92);
  (*(v96 + 8))(v100, v98);
  sub_1D4FBFABC(v32);
  OUTLINED_FUNCTION_0_107();
  v76 = *(v26 + 384);
  v78 = *(v26 + 376);
  v80 = *(v26 + 368);
  v83 = *(v26 + 360);
  v85 = *(v26 + 352);
  v87 = *(v26 + 344);
  v89 = *(v26 + 336);
  v91 = *(v26 + 328);
  v93 = *(v26 + 320);
  v95 = *(v26 + 312);
  v97 = *(v26 + 288);
  v99 = *(v26 + 280);
  v101 = *(v26 + 256);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_97();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, v76, v78, v80, v82, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, a24, a25, a26);
}

uint64_t sub_1D51499C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5149AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[40];
  v29 = v26[38];
  v28 = v26[39];
  v30 = v26[37];
  v31 = v26[30];
  (*(v26[34] + 8))(v26[35], v26[33]);
  (*(v29 + 8))(v28, v30);
  v32 = 1;
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v31);
  v33 = OUTLINED_FUNCTION_71();
  sub_1D514A440(v33, v34, v35, v36);
  v37 = v26[49];
  v38 = v26[46];
  v39 = v26[44];
  v40 = v26[41];
  v41 = v26[30];
  sub_1D505BC94();
  Playlist.collaborators.getter();
  sub_1D505C360();
  sub_1D505DED8();
  if (!__swift_getEnumTagSinglePayload(v40, 1, v41))
  {
    v42 = OUTLINED_FUNCTION_14_46();
    v43(v42);
    sub_1D560DE38();
    (*(v39 + 8))(v37, v38);
    v32 = 0;
  }

  v95 = v26[67];
  v44 = v26[66];
  v93 = v26[65];
  v46 = v26[53];
  v45 = v26[54];
  v86 = v26[51];
  v87 = v26[49];
  v88 = v26[46];
  v90 = v26[44];
  v47 = v26[42];
  v97 = v26[41];
  v48 = v26[26];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  __swift_storeEnumTagSinglePayload(v47, v32, 1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = v46[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = v46[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  v64 = v46[7];
  type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  v69 = v46[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  sub_1D514A440(v86, v45, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D514A440(v87, v45 + v54, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D514A440(v88, v45 + v59, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D514A440(v90, v45 + v64, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D514A440(v47, v45 + v69, &qword_1EC7ECF38, &qword_1D562E650);
  v26[5] = sub_1D56131D8();
  v26[6] = &protocol witness table for AnyPropertyProviderExtendedStorage;
  __swift_allocate_boxed_opaque_existential_0(v26 + 2);
  OUTLINED_FUNCTION_2_87();
  v76 = sub_1D514A52C(v74, v75, &unk_1D56696C0);
  OUTLINED_FUNCTION_35_30(v76);
  sub_1D4E50004(v48, &qword_1EC7F0900, &qword_1D563A1B0);
  OUTLINED_FUNCTION_32_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0908, &qword_1D563A1B8);
  v91 = sub_1D560D1D8();

  (*(v44 + 8))(v95, v93);
  sub_1D4FBFABC(v45);
  sub_1D4E50004(v97, &qword_1EC7F08E0, &unk_1D563A188);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_1_94();
  v89 = v26[40];
  v92 = v26[39];
  v94 = v26[36];
  v96 = v26[35];
  v98 = v26[32];

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_97();

  return v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, v86, v87, v89, v91, v92, v94, v96, v98, a24, a25, a26);
}

uint64_t sub_1D5149F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = *(v26 + 208);

  sub_1D4E50004(v27, &qword_1EC7F0900, &qword_1D563A1B0);
  v38 = *(v26 + 568);
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66(v28);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v38, a24, a25, a26);
}

uint64_t sub_1D514A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[67];
  v28 = v26[66];
  v29 = v26[65];
  v31 = v26[63];
  v30 = v26[64];
  v32 = v26[62];
  v33 = v26[26];

  (*(v31 + 8))(v30, v32);
  (*(v28 + 8))(v27, v29);
  sub_1D4E50004(v33, &qword_1EC7F0900, &qword_1D563A1B0);
  v44 = v26[73];
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66(v34);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v44, a24, a25, a26);
}

uint64_t sub_1D514A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_111_0();
  v27 = v26[66];
  v28 = v26[65];
  v46 = v26[67];
  v47 = v26[41];
  v29 = v26[38];
  v30 = v26[39];
  v31 = v26[37];
  v32 = v26[34];
  v33 = v26[35];
  v34 = v26[33];
  v35 = v26[26];

  (*(v32 + 8))(v33, v34);
  (*(v29 + 8))(v30, v31);
  (*(v27 + 8))(v46, v28);
  sub_1D4E50004(v35, &qword_1EC7F0900, &qword_1D563A1B0);
  sub_1D4E50004(v47, &qword_1EC7F08E0, &unk_1D563A188);
  v48 = v26[75];
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_7_66(v36);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_97();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v46, v48, a24, a25, a26);
}

uint64_t sub_1D514A3EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_0_6();
  result = v5(v4, v3);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1D514A440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D514A52C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D514A5C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D514A678;

  return Playlist.internalItemsForRelationshipWithoutCorrespondingUnderlyingRelationship(for:library:)();
}

uint64_t sub_1D514A678()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_50();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D514A770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = swift_task_alloc();
  *(v13 + 16) = v14;
  *v14 = v13;
  v14[1] = sub_1D514A974;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D514A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_1D4E6F70C;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

uint64_t OUTLINED_FUNCTION_34_29()
{

  return sub_1D5375874(v0, v1);
}

uint64_t MusicItemTypedIdentifier.init(id:type:catalogIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  if (dynamic_cast_existential_1_conditional(a3, a3, MEMORY[0x1E6975230]))
  {
    v7 = type metadata accessor for MusicItemTypedIdentifier(0);
    sub_1D560E358();
    a5[2] = a4;
    v8 = *(v7 + 28);
    v9 = sub_1D5610088();

    return __swift_storeEnumTagSinglePayload(a5 + v8, 1, 1, v9);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D5685C90);
    v11 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v11);

    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MusicItemTypedIdentifier(uint64_t a1)
{
  result = qword_1EDD5B9E0;
  if (!qword_1EDD5B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicItemTypedIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static MusicItemTypedIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D4F0B2E8() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for MusicItemTypedIdentifier(0);
  if ((sub_1D560D8C8() & 1) == 0)
  {
    return 0;
  }

  v20 = *(v19 + 28);
  v21 = *(v14 + 48);
  sub_1D514AE90(a1 + v20, v17);
  sub_1D514AE90(a2 + v20, &v17[v21]);
  OUTLINED_FUNCTION_10(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_10(&v17[v21]);
    if (v18)
    {
      sub_1D4E50004(v17, &qword_1EC7EA358, &unk_1D561DF50);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1D514AE90(v17, v13);
  OUTLINED_FUNCTION_10(&v17[v21]);
  if (v22)
  {
    (*(v6 + 8))(v13, v4);
LABEL_16:
    sub_1D4E50004(v17, &qword_1EC7EB208, &qword_1D562F5E0);
    return 0;
  }

  (*(v6 + 32))(v10, &v17[v21], v4);
  OUTLINED_FUNCTION_2_88();
  sub_1D4E5E4D0(v24, v25, MEMORY[0x1E6975BE0]);
  v26 = sub_1D5614D18();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v13, v4);
  sub_1D4E50004(v17, &qword_1EC7EA358, &unk_1D561DF50);
  return (v26 & 1) != 0;
}

uint64_t sub_1D514AE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicItemTypedIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1D5614E28();
  sub_1D4F0B2F0();
  v12 = type metadata accessor for MusicItemTypedIdentifier(0);
  sub_1D560D9A8();
  sub_1D4E5E4D0(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D514AE90(v1 + *(v12 + 28), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v4 + 32))(v8, v11, v2);
  sub_1D56162F8();
  OUTLINED_FUNCTION_2_88();
  sub_1D4E5E4D0(v14, v15, MEMORY[0x1E6975BD8]);
  sub_1D5614CB8();
  return (*(v4 + 8))(v8, v2);
}

uint64_t MusicItemTypedIdentifier.hashValue.getter()
{
  sub_1D56162D8();
  MusicItemTypedIdentifier.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D514B170(uint64_t a1)
{
  sub_1D56162D8();
  MusicItemTypedIdentifier.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t MusicItemTypedIdentifier.init(id:resourceType:catalogIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a5;
  v38 = a1;
  v39 = a4;
  v42 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for MusicItemTypedIdentifier(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  MEMORY[0x1DA6E5E30](a3, v39);
  sub_1D5328334(v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v19 + 8))(v23, v17);

    sub_1D4E50004(v9, &qword_1EC7F6DF0, &qword_1D561D1E0);
    v29 = 1;
    v30 = v42;
  }

  else
  {
    v31 = *(v12 + 32);
    v31(v16, v9, v10);
    v32 = v40;
    *v28 = v38;
    v28[1] = v32;
    v31(v28 + *(v24 + 24), v16, v10);
    v28[2] = v41;
    v33 = *(v24 + 28);
    (*(v19 + 32))(v28 + v33, v23, v17);
    __swift_storeEnumTagSinglePayload(v28 + v33, 0, 1, v17);
    v34 = v28;
    v35 = v42;
    sub_1D514B46C(v34, v42);
    v29 = 0;
    v30 = v35;
  }

  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v24);
}

uint64_t sub_1D514B46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItemTypedIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D514B540(uint64_t a1)
{
  sub_1D514B5EC();
  if (v1 <= 0x3F)
  {
    sub_1D560D9A8();
    if (v2 <= 0x3F)
    {
      sub_1D514B63C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D514B5EC()
{
  if (!qword_1EDD527E0)
  {
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD527E0);
    }
  }
}

void sub_1D514B63C(uint64_t a1)
{
  if (!qword_1EDD53330)
  {
    sub_1D5610088();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53330);
    }
  }
}

uint64_t static Presto_MusicLibrary.shared.getter()
{
  type metadata accessor for Presto_MusicLibrary();

  return swift_initStaticObject();
}

uint64_t sub_1D514B6E8()
{
  OUTLINED_FUNCTION_160();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_7_67();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_43_1(v11);
  *v12 = v13;
  v12[1] = sub_1D514D02C;

  return v15(v9, v7, v3, v5, v1);
}

uint64_t sub_1D514B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_7_67();
  v22 = (v17 + *v17);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_43_1(v18);
  *v19 = v20;
  v19[1] = sub_1D514B974;

  return v22(a1, a2, a3, a4, a6, a7, a8, a10, a11, a5, a9);
}

uint64_t sub_1D514B974()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D514BA64()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_59(v0, v1, v2);
  OUTLINED_FUNCTION_7_67();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_65(v4);

  return v7(v6);
}

uint64_t sub_1D514BB54()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v19 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4) + 32;
  OUTLINED_FUNCTION_90_0();
  v20 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_0_108(v7);
  OUTLINED_FUNCTION_14_47();

  return v15(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t sub_1D514BC48()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_59(v0, v1, v2);
  OUTLINED_FUNCTION_7_67();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_65(v4);

  return v7(v6);
}

uint64_t sub_1D514BD38()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v19 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4) + 48;
  OUTLINED_FUNCTION_90_0();
  v20 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_0_108(v7);
  OUTLINED_FUNCTION_14_47();

  return v15(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t sub_1D514BE2C()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_59(v0, v1, v2);
  OUTLINED_FUNCTION_7_67();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_65(v4);

  return v7(v6);
}

uint64_t sub_1D514BF1C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v19 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4) + 64;
  OUTLINED_FUNCTION_90_0();
  v20 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_0_108(v7);
  OUTLINED_FUNCTION_14_47();

  return v15(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t sub_1D514C010()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_59(v0, v1, v2);
  OUTLINED_FUNCTION_7_67();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_65(v4);

  return v7(v6);
}

uint64_t sub_1D514C100()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v19 = OUTLINED_FUNCTION_3_87(v0, v1, v2, v3, v4) + 80;
  OUTLINED_FUNCTION_90_0();
  v20 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_0_108(v7);
  OUTLINED_FUNCTION_14_47();

  return v15(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
}

uint64_t Presto_MusicLibraryError.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

unint64_t sub_1D514C2D0()
{
  result = qword_1EC7F0958;
  if (!qword_1EC7F0958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0960, &qword_1D563A570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0958);
  }

  return result;
}

unint64_t sub_1D514C338()
{
  result = qword_1EC7F0968;
  if (!qword_1EC7F0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0968);
  }

  return result;
}

uint64_t dispatch thunk of Presto_MusicLibrary.add<A, B>(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v13 = (*v0 + 88);
  v14 = *v13 + **v13;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *v2 = v3;
  v2[1] = sub_1D514D028;
  OUTLINED_FUNCTION_14_47();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t dispatch thunk of Presto_MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = (*(*v11 + 96) + **(*v11 + 96));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_43_1(v17);
  *v18 = v19;
  v18[1] = sub_1D514C650;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1D514C650()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_59_1();
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of Presto_MusicLibrary.remove<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of Presto_MusicLibrary.remove<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v26 = v12 + 112;
  v27 = *(v12 + 112) + **(v12 + 112);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_43_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_1_7(v14);
  OUTLINED_FUNCTION_19_45();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.download<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of Presto_MusicLibrary.download<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v26 = v12 + 128;
  v27 = *(v12 + 128) + **(v12 + 128);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_43_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_1_7(v14);
  OUTLINED_FUNCTION_19_45();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.removeDownload<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of Presto_MusicLibrary.removeDownload<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v26 = v12 + 144;
  v27 = *(v12 + 144) + **(v12 + 144);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_43_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_1_7(v14);
  OUTLINED_FUNCTION_19_45();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

uint64_t dispatch thunk of Presto_MusicLibrary.cancelDownload<A>(_:)()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_6_63();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_69(v1);

  return v4(v3);
}

uint64_t dispatch thunk of Presto_MusicLibrary.cancelDownload<A, B>(_:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_45();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_89();
  v26 = v12 + 160;
  v27 = *(v12 + 160) + **(v12 + 160);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_43_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_1_7(v14);
  OUTLINED_FUNCTION_19_45();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, v26, v27, a12);
}

_BYTE *storeEnumTagSinglePayload for Presto_MusicLibraryError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D514D048@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  if (a1 < 2)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  sub_1D56123A8();
  v21 = sub_1D560CD98();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  sub_1D5613838();
  v22 = sub_1D560CD48();
  OUTLINED_FUNCTION_1_95();
  sub_1D514E330(v23, v24, MEMORY[0x1E6976BC0]);
  sub_1D5612368();
  sub_1D4E6C9CC(v10, &qword_1EC7EA7D8, &unk_1D561E8B0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v25);
  sub_1D514D2FC(v14, x8_0);

  (*(*(v22 - 8) + 8))(a2, v22);
  return (*(v17 + 8))(v20, v15);
}

uint64_t sub_1D514D2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1D514E378(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D5613838();
    sub_1D560D9F8();
    sub_1D4E6C9CC(a1, &qword_1EC7F0978, &qword_1D563A6D0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1D4E6C9CC(v7, &qword_1EC7F0978, &qword_1D563A6D0);
    }
  }

  else
  {
    sub_1D4E6C9CC(a1, &qword_1EC7F0978, &qword_1D563A6D0);
    (*(v10 + 32))(v13, v7, v8);
  }

  return (*(v10 + 32))(a2, v13, v8);
}

uint64_t sub_1D514D4D0(uint64_t a1)
{
  v1 = sub_1D5613578();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE4F8, &unk_1D563A840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v2 + 104))(v4, *MEMORY[0x1E6976A78], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D560CD48();
  sub_1D514E330(&qword_1EC7ECE40, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BC0]);
  sub_1D560DA98();
  (*(v2 + 8))(v4, v1);
  v9 = sub_1D56123B8();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t MusicSuggestedSongsResponse.suggestedSongs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicSuggestedSongsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5613838();
  OUTLINED_FUNCTION_1_95();
  sub_1D514E330(v2, v3, MEMORY[0x1E6976C00]);

  return sub_1D560DAA8();
}

uint64_t MusicSuggestedSongsResponse.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();

  return sub_1D5614CB8();
}

unint64_t sub_1D514D860()
{
  result = qword_1EC7F0970;
  if (!qword_1EC7F0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    sub_1D514E330(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0970);
  }

  return result;
}

uint64_t MusicSuggestedSongsResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D514D984(uint64_t a1)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514D860();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  OUTLINED_FUNCTION_22(v6);
  v3[3] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  v3[4] = v7;
  OUTLINED_FUNCTION_4();
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1D514DB40;

  return MEMORY[0x1EEDCE928](v9, a2, a3, v7);
}

uint64_t sub_1D514DB40()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D4F25038;
  }

  else
  {
    v2 = sub_1D514DC54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D514DC54()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  sub_1D514D2FC(v4, v5);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D514DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t MusicSuggestedSongsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D560CD48();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E628D4(a1, v13);
  v9 = sub_1D512F808(v13);
  if (!v2)
  {
    v10 = v9;
    OUTLINED_FUNCTION_3_88();
    OUTLINED_FUNCTION_2_90();
    sub_1D5616378();
    OUTLINED_FUNCTION_3_88();
    OUTLINED_FUNCTION_2_90();
    sub_1D5616368();
    sub_1D514D048(v10, v8, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicSuggestedSongsResponse.encode(to:)(void *a1)
{
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_2_90();
  sub_1D56163C8();
  v9 = sub_1D514D4D0(v8);
  if (v1)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v11 = v9;
  (*(v5 + 8))(v8, v3);
  sub_1D512F644(a1, v11);
  return sub_1D4EA7410(v11);
}

unint64_t sub_1D514E02C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D514E2CC();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t type metadata accessor for MusicSuggestedSongsResponse(uint64_t a1)
{
  result = qword_1EC7F0988;
  if (!qword_1EC7F0988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D514E200(uint64_t a1)
{
  sub_1D514E26C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D514E26C(uint64_t a1)
{
  if (!qword_1EC7F0998)
  {
    sub_1D5613838();
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F0998);
    }
  }
}

unint64_t sub_1D514E2CC()
{
  result = qword_1EC7F09A0;
  if (!qword_1EC7F09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA428, &unk_1D561C410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09A0);
  }

  return result;
}

uint64_t sub_1D514E330(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D514E378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0978, &qword_1D563A6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D514E3E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1D560C418();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_7();
  v10 = type metadata accessor for MusicRequestConfiguration(0);
  sub_1D514E7A8(a1 + *(v10 + 44), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D560C408();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_1D514E818(v5);
    }
  }

  else
  {
    (*(v8 + 32))(v1, v5, v6);
  }

  sub_1D514E880();
  return (*(v8 + 8))(v1, v6);
}

uint64_t sub_1D514E568(unsigned __int8 *a1)
{
  if (*a1 == 7)
  {
    static UserInterfaceIdiom.default.getter(&v2);
  }

  sub_1D560BB28();
}

uint64_t sub_1D514E690()
{
  v0 = sub_1D560BB98();
  __swift_allocate_value_buffer(v0, qword_1EDD5CFA8);
  __swift_project_value_buffer(v0, qword_1EDD5CFA8);
  return sub_1D560BB28();
}

uint64_t static URLQueryItem.extendedArtworkQueryItem.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD5CFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560BB98();
  v3 = __swift_project_value_buffer(v2, qword_1EDD5CFA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D514E7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D514E818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D514E880()
{
  v1 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_7();
  sub_1D560C318();
  v5 = sub_1D560C3E8();
  (*(v3 + 8))(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v8;
  *(v6 + 32) = v5 / 3600;
  v9 = v5 / 60;
  if (v5 < -59)
  {
    v9 = v5 / -60;
  }

  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9 % 0x3C;
  sub_1D5614D88();
  sub_1D560BB28();
}

uint64_t sub_1D514EA8C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D514EAD4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_0_6();
  return v3(v2, v1);
}

void sub_1D514EB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D5622FA0;
  KeyPath = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09B0, &qword_1D563A928);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374148(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09B8, &qword_1D563A958);
  OUTLINED_FUNCTION_2_19(v4);
  OUTLINED_FUNCTION_0_6();

  sub_1D537586C(v5);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 40) = v0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09C0, &qword_1D563A988);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

uint64_t sub_1D514EC40()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09C8, &qword_1D563A9B8);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375868(v3);
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  qword_1EDD767C8 = v0;
  return result;
}

void *sub_1D514ECA4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D514ED0C()
{
  v0 = sub_1D5613348();
  sub_1D560E4C8();
  return v0(&v2, 0);
}

uint64_t sub_1D514ED6C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D514EDC4()
{
  v0 = sub_1D5613598();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D561EAC0;
  KeyPath = swift_getKeyPath();
  (*(v1 + 104))(v6, *MEMORY[0x1E6976A98], v0);
  (*(v1 + 16))(v4, v6, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09A8, &unk_1D563A900);
  OUTLINED_FUNCTION_2_19(v9);
  v10 = sub_1D5375870(KeyPath, v4);
  result = (*(v1 + 8))(v6, v0);
  *(v7 + 32) = v10;
  qword_1EC87C228 = v7;
  return result;
}

uint64_t sub_1D514EF68(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D514EFC0(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E6977688]);

  return [v3 initWithVariants:3 options:a2];
}

uint64_t sub_1D514F074(uint64_t a1, uint64_t a2)
{
  if (a1 == 1835365481 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D514F100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D514F074(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D514F12C(uint64_t a1)
{
  v2 = sub_1D514F300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D514F168(uint64_t a1)
{
  v2 = sub_1D514F300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSiriItemResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09D0, &qword_1D563A9C0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D514F300();
  sub_1D56163D8();
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_0_109();
  sub_1D514F728(v8, v9, &protocol conformance descriptor for GenericMusicItem);
  sub_1D56160C8();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1D514F300()
{
  result = qword_1EC7F09D8;
  if (!qword_1EC7F09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09D8);
  }

  return result;
}

uint64_t MusicSiriItemResponse.hashValue.getter()
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

uint64_t MusicSiriItemResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F09E0, &qword_1D563A9C8);
  OUTLINED_FUNCTION_4();
  v20 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MusicSiriItemResponse(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D514F300();
  sub_1D5616398();
  if (!v2)
  {
    v14 = v19;
    OUTLINED_FUNCTION_0_109();
    sub_1D514F728(v15, v16, &protocol conformance descriptor for GenericMusicItem);
    v17 = v21;
    sub_1D5615FD8();
    (*(v20 + 8))(v10, v6);
    sub_1D514F678(v17, v13, type metadata accessor for GenericMusicItem);
    sub_1D514F678(v13, v14, type metadata accessor for MusicSiriItemResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicSiriItemResponse(uint64_t a1)
{
  result = qword_1EDD5BD28;
  if (!qword_1EDD5BD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D514F678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D514F728(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D514F798(uint64_t a1)
{
  result = type metadata accessor for GenericMusicItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSiriItemResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D514F8B4()
{
  result = qword_1EC7F09F0;
  if (!qword_1EC7F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09F0);
  }

  return result;
}

unint64_t sub_1D514F90C()
{
  result = qword_1EC7F09F8;
  if (!qword_1EC7F09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F09F8);
  }

  return result;
}

unint64_t sub_1D514F964()
{
  result = qword_1EC7F0A00;
  if (!qword_1EC7F0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal27CloudResourceMapRawResponseV0eF0VSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D514F9E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 192))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D514FA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D514FAD4()
{
  result = qword_1EC7F0A08;
  if (!qword_1EC7F0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A08);
  }

  return result;
}

uint64_t sub_1D514FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D514FB4C, 0, 0);
}

uint64_t sub_1D514FB4C()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v2 = v0[4];
  v1 = v0[5];
  v3 = MEMORY[0x1DA6EC3C0]();
  sub_1D5150038(v2, v1, v0 + 2);
  objc_autoreleasePoolPop(v3);
  if (*(v0[2] + 16))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A40, &qword_1D563ADD8);
    v8 = swift_task_alloc();
    v0[8] = v8;
    v8[2] = v0 + 2;
    v8[3] = v4;
    v8[4] = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[9] = v9;
    *v9 = v10;
    v9[1] = sub_1D514FDCC;

    return MEMORY[0x1EEE6DD58](v0 + 3, v6, v7, 0, 0, &unk_1D563ADE8, v8, v6);
  }

  else
  {
    v12 = v0[4];
    v11 = v0[5];
    type metadata accessor for LooselyComparableTypedIdentifier(0);
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_17_46();
    sub_1D5157970(v13, v14, &unk_1D56579DC);
    v15 = sub_1D5614BD8();

    sub_1D4E55E1C(v12, v11);
    v16 = v0[6];

    sub_1D560CD48();
    OUTLINED_FUNCTION_4_0();
    (*(v17 + 8))(v16);
    v18 = v0[1];

    return v18(v15);
  }
}

uint64_t sub_1D514FDCC()
{
  OUTLINED_FUNCTION_60();
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D514FF84;
  }

  else
  {

    v3 = sub_1D514FEDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D514FEDC()
{
  OUTLINED_FUNCTION_60();

  v1 = OUTLINED_FUNCTION_71();
  sub_1D4E55E1C(v1, v2);
  v3 = v0[3];
  v4 = v0[6];

  sub_1D560CD48();
  OUTLINED_FUNCTION_4_0();
  (*(v5 + 8))(v4);
  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1D514FF84()
{
  v1 = v0[6];
  sub_1D4E55E1C(v0[4], v0[5]);

  sub_1D560CD48();
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D5150038(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v71 = xmmword_1D5628AA0;
  sub_1D51507A8(123, 0xE100000000000000);
  v5 = MEMORY[0x1DA6E1FB0](a1, a2);
  if (v5 < 0)
  {
    goto LABEL_109;
  }

  v6 = v5;
  v53 = a1;
  if (v5)
  {
    v7 = 0;
    v59 = 0;
    v61 = 0;
    v58 = 0;
    v8 = 0;
    v55 = a1;
    v51 = BYTE6(a2);
    v52 = a1 >> 32;
    v49 = a1 >> 16;
    v50 = a1 >> 8;
    v47 = HIDWORD(a1);
    v48 = a1 >> 24;
    v45 = HIWORD(a1);
    v46 = a1 >> 40;
    v43 = a2 >> 8;
    v44 = HIBYTE(a1);
    v41 = a2 >> 24;
    v42 = a2 >> 16;
    v40 = HIDWORD(a2);
    v56 = v5;
    v57 = a2 >> 62;
    v54 = a2;
    while (1)
    {
      v9 = v8;
      while (2)
      {
        if (v9 >= v6)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_98;
        }

        switch(v57)
        {
          case 1uLL:
            if (v9 < v53 || v9 >= v52)
            {
              goto LABEL_103;
            }

            v16 = sub_1D560BCA8();
            if (!v16)
            {
              goto LABEL_111;
            }

            v12 = v16;
            v17 = sub_1D560BCC8();
            v14 = v9 - v17;
            if (!__OFSUB__(v9, v17))
            {
              goto LABEL_23;
            }

            goto LABEL_105;
          case 2uLL:
            if (v9 < *(v53 + 16))
            {
              goto LABEL_101;
            }

            if (v9 >= *(v53 + 24))
            {
              goto LABEL_104;
            }

            v11 = sub_1D560BCA8();
            if (!v11)
            {
              goto LABEL_112;
            }

            v12 = v11;
            v13 = sub_1D560BCC8();
            v14 = v9 - v13;
            if (__OFSUB__(v9, v13))
            {
              goto LABEL_106;
            }

LABEL_23:
            v10 = *(v12 + v14);
LABEL_24:
            v18 = ((v10 >> 6) & 0xFFFFC0FF | ((v10 & 0x3F) << 8)) + 33217;
            if ((v10 & 0x80) == 0)
            {
              v18 = v10 + 1;
            }

            v62 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
            v20 = sub_1D5614E18();
            v21 = v19;
            v22 = v20 == 123 && v19 == 0xE100000000000000;
            v23 = v22;
            v60 = v9 + 1;
            if (v22 || (sub_1D5616168() & 1) != 0)
            {
              v24 = __OFADD__(v7++, 1);
              if (v24)
              {
                goto LABEL_99;
              }
            }

            else
            {
              v28 = v20 == 125 && v21 == 0xE100000000000000;
              if (v28 || (sub_1D5616168() & 1) != 0)
              {
                v24 = __OFSUB__(v7--, 1);
                if (v24)
                {
                  goto LABEL_107;
                }
              }
            }

            if ((v58 & 1) == 0)
            {
              goto LABEL_71;
            }

            if (v23 & 1) != 0 || (sub_1D5616168())
            {
              v25 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                goto LABEL_100;
              }
            }

            else
            {
              v29 = v20 == 125 && v21 == 0xE100000000000000;
              if (v29 || (v25 = v61, (sub_1D5616168() & 1) != 0))
              {
                v25 = v61 - 1;
                if (__OFSUB__(v61, 1))
                {
                  goto LABEL_108;
                }
              }
            }

            if (v61)
            {
              goto LABEL_50;
            }

            v26 = v20 == 44 && v21 == 0xE100000000000000;
            if (v26 || (sub_1D5616168() & 1) != 0)
            {

              v6 = v56;
              goto LABEL_93;
            }

            v27 = v20 == 125 && v21 == 0xE100000000000000;
            if (v27 || (sub_1D5616168() & 1) != 0)
            {
              sub_1D4E55E1C(v71, *(&v71 + 1));
            }

LABEL_50:
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A60, &unk_1D563AE40);
            v69 = v30;
            v70 = sub_1D4E62A60(&unk_1EDD525A0, &qword_1EC7F0A60, &unk_1D563AE40, MEMORY[0x1E696A0B0]);
            LOBYTE(v62) = v10;
            __swift_project_boxed_opaque_existential_1(&v62, v30);
            sub_1D560C138();
            __swift_destroy_boxed_opaque_existential_1(&v62);
            if (v61)
            {
              v61 = v25;
              a2 = v54;
              if (v25)
              {
                goto LABEL_71;
              }

              sub_1D51507A8(125, 0xE100000000000000);
              v32 = v71;
              v33 = *a3;
              sub_1D4F48DE4(v71, *(&v71 + 1));
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a3 = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D4F019A0();
                v33 = v36;
                *a3 = v36;
              }

              v6 = v56;
              v35 = *(v33 + 16);
              if (v35 >= *(v33 + 24) >> 1)
              {
                sub_1D4F019A0();
                v33 = v37;
                *a3 = v37;
              }

              *(v33 + 16) = v35 + 1;
              *(v33 + 16 * v35 + 32) = v32;
              sub_1D4E55E1C(v71, *(&v71 + 1));
              v71 = xmmword_1D5628AA0;
              sub_1D51507A8(123, 0xE100000000000000);
              v25 = 0;
LABEL_93:
              v58 = 1;
              v61 = v25;
              v8 = v9 + 1;
              a2 = v54;
              if (v60 == v6)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v61 = v25;
              a2 = v54;
LABEL_71:
              if ((v59 & 1) == 0)
              {
                if ((sub_1D5614F28() & 1) != 0 && v7 == 1)
                {

                  v6 = v56;
                  if (v60 == v56)
                  {
                    goto LABEL_94;
                  }

                  v7 = 1;
LABEL_80:
                  v59 = 1;
                  goto LABEL_83;
                }

                MEMORY[0x1DA6EAC60](v20, v21);

                v6 = v56;
                if (v60 == v56)
                {
                  goto LABEL_94;
                }

                v59 = 0;
LABEL_83:
                ++v9;
                continue;
              }

              v8 = v9 + 1;
              if (!v23)
              {
                v31 = sub_1D5616168();

                if (v31)
                {
                  goto LABEL_85;
                }

                v6 = v56;
                if (v60 == v56)
                {
                  goto LABEL_94;
                }

                goto LABEL_80;
              }

LABEL_85:
              v59 = 1;
              v58 = 1;
              v6 = v56;
              if (v60 == v56)
              {
                goto LABEL_94;
              }
            }

            break;
          case 3uLL:
            goto LABEL_110;
          default:
            if (v9 >= v51)
            {
              goto LABEL_102;
            }

            LOBYTE(v62) = v55;
            BYTE1(v62) = v50;
            BYTE2(v62) = v49;
            BYTE3(v62) = v48;
            BYTE4(v62) = v47;
            BYTE5(v62) = v46;
            BYTE6(v62) = v45;
            HIBYTE(v62) = v44;
            v63 = a2;
            v64 = v43;
            v65 = v42;
            v66 = v41;
            v67 = v40;
            v68 = BYTE5(a2);
            v10 = *(&v62 + v9);
            goto LABEL_24;
        }

        break;
      }
    }
  }

LABEL_94:
  sub_1D4E55E1C(v71, *(&v71 + 1));
}

unint64_t sub_1D51507A8(uint64_t a1, unint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v44[0] = a1;
  v44[1] = a2;
  v42 = a1;
  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF38, &qword_1D5628B98);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v45, &v47);
    v5 = __swift_project_boxed_opaque_existential_1(&v47, v48);
    MEMORY[0x1EEE9AC00](v5);
    v38 = v2;
    sub_1D560BDA8();
    return __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_1D4E765C8(v45, &qword_1EC7EDF40, &qword_1D563AE50);
  v7 = 0;
  result = sub_1D5155FD0(a1, a2);
  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_61;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v9 = *v2;
    v10 = v2[1];
    v11 = 0;
    v12 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_68;
        }

        v12 = HIDWORD(v9) - v9;
        v11 = v9 >> 32;
LABEL_13:
        if (__OFADD__(v11, v8))
        {
          __break(1u);
        }

        else if ((v11 + v8) >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v15 = sub_1D560C128();
            MEMORY[0x1EEE9AC00](v15);
            v37[2] = v12;
            v37[3] = v8;
            v38 = v44;
            v16 = sub_1D5014E3C(sub_1D515609C, v37);
            v20 = v17;
            if (v19 == v8)
            {
              v21 = v16;
              v22 = v18;
              LOBYTE(v23) = 0;
              if ((v17 & 0x2000000000000000) != 0)
              {
                v24 = HIBYTE(v17) & 0xF;
              }

              else
              {
                v24 = v16 & 0xFFFFFFFFFFFFLL;
              }

              v25 = (v16 >> 59) & 1;
              if ((v17 & 0x1000000000000000) == 0)
              {
                LOBYTE(v25) = 1;
              }

              v26 = 4 << v25;
              v41 = v17 & 0xFFFFFFFFFFFFFFLL;
              v39 = v7;
              v40 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
              *(v45 + 7) = 0;
              *&v45[0] = 0;
              while (1)
              {
                if (4 * v24 == v22 >> 14)
                {
                  if (v23)
                  {
                    *&v47 = *&v45[0];
                    *(&v47 + 6) = *(v45 + 6);
                    sub_1D560C158();
                  }
                }

                v7 = v22 & 0xC;
                v27 = v22;
                if (v7 == v26)
                {
                  v27 = sub_1D53408C0(v22, v21, v20);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v24)
                {
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  v8 = sub_1D5614EC8();
                  goto LABEL_8;
                }

                if ((v20 & 0x1000000000000000) != 0)
                {
                  v30 = sub_1D5614EF8();
                }

                else if ((v20 & 0x2000000000000000) != 0)
                {
                  *&v47 = v21;
                  *(&v47 + 1) = v41;
                  v30 = *(&v47 + v28);
                }

                else
                {
                  v29 = v40;
                  if ((v21 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_1D5615C58();
                  }

                  v30 = *(v29 + v28);
                }

                if (v7 == v26)
                {
                  v22 = sub_1D53408C0(v22, v21, v20);
                  if ((v20 & 0x1000000000000000) == 0)
                  {
LABEL_35:
                    v22 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
                    goto LABEL_40;
                  }
                }

                else if ((v20 & 0x1000000000000000) == 0)
                {
                  goto LABEL_35;
                }

                if (v24 <= v22 >> 16)
                {
                  goto LABEL_60;
                }

                v22 = sub_1D5614ED8();
LABEL_40:
                *(v45 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_59;
                }

                if (v23 == 14)
                {
                  *&v47 = *&v45[0];
                  *(&v47 + 6) = *(v45 + 6);
                  sub_1D560C158();
                  LOBYTE(v23) = 0;
                }
              }
            }

            v31 = *v2;
            v32 = v2[1];
            v33 = 0;
            switch(v32 >> 62)
            {
              case 1uLL:
                v33 = v31;
                break;
              case 2uLL:
                v33 = *(v31 + 16);
                break;
              default:
                break;
            }

            v34 = __OFADD__(v33, v12);
            v35 = v33 + v12;
            if (!v34)
            {
              if (!__OFADD__(v35, v19))
              {
                v36 = 0;
                switch(v32 >> 62)
                {
                  case 1uLL:
                    v36 = v31 >> 32;
                    break;
                  case 2uLL:
                    v36 = *(v31 + 24);
                    break;
                  case 3uLL:
                    break;
                  default:
                    v36 = BYTE6(v32);
                    break;
                }

                if (v36 >= v35 + v19)
                {
                  sub_1D560C138();
                }

LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_64;
      case 2uLL:
        v14 = v9 + 16;
        v13 = *(v9 + 16);
        v11 = *(v14 + 8);
        v12 = v11 - v13;
        if (!__OFSUB__(v11, v13))
        {
          goto LABEL_13;
        }

        goto LABEL_69;
      case 3uLL:
        goto LABEL_13;
      default:
        v11 = BYTE6(v10);
        v12 = BYTE6(v10);
        goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_1D5150C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
  v5[25] = swift_task_alloc();
  v6 = type metadata accessor for GenericMusicItem(0);
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE70, &unk_1D563ADF0);
  v5[36] = swift_task_alloc();
  v8 = sub_1D560CD48();
  v5[37] = v8;
  v9 = *(v8 - 8);
  v5[38] = v9;
  v5[39] = *(v9 + 64);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A48, &qword_1D563AE00);
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5150F9C, 0, 0);
}

uint64_t sub_1D5150F9C()
{
  v1 = *(*v0[21] + 16);
  if (v1)
  {
    v26 = v0 + 9;
    v29 = *v0[20];
    v28 = v0[39] + 7;
    v30 = v0[38];
    v2 = ( + 40);
    v27 = v0;
    do
    {
      v34 = v1;
      v3 = v0[42];
      v4 = v0[40];
      v5 = v0[37];
      v6 = v0[23];
      v31 = v0[22];
      v7 = *v2;
      v32 = *(v2 - 1);
      v33 = v0[41];
      sub_1D4F48DE4(v32, *v2);
      sub_1D56153D8();
      v8 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
      (*(v30 + 16))(v4, v6, v5);
      v9 = (*(v30 + 80) + 40) & ~*(v30 + 80);
      v10 = swift_allocObject();
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 4) = v31;
      (*(v30 + 32))(&v10[v9], v4, v5);
      v11 = &v10[(v28 + v9) & 0xFFFFFFFFFFFFFFF8];
      v0 = v27;
      *v11 = v32;
      v11[1] = v7;
      sub_1D5155C5C(v3, v33);
      v12 = OUTLINED_FUNCTION_35_1();
      LODWORD(v4) = __swift_getEnumTagSinglePayload(v12, v13, v8);
      sub_1D4F48DE4(v32, v7);

      v14 = v27[41];
      if (v4 == 1)
      {
        sub_1D4E765C8(v27[41], &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        (*(*(v8 - 8) + 8))(v14, v8);
      }

      if (*(v10 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1D5615338();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
      v18 = (v17 | v15);
      if (v17 | v15)
      {
        v18 = v26;
        *v26 = 0;
        v26[1] = 0;
        v27[11] = v15;
        v27[12] = v17;
      }

      v2 += 2;
      v19 = v27[42];
      v27[13] = 1;
      v27[14] = v18;
      v27[15] = v29;
      swift_task_create();

      sub_1D4E55E1C(v32, v7);
      sub_1D4E765C8(v19, &qword_1EC7EB710, &qword_1D561F440);
      v1 = v34 - 1;
    }

    while (v34 != 1);
  }

  OUTLINED_FUNCTION_17_46();
  sub_1D5157970(v20, v21, &unk_1D56579DC);
  v22 = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A38, &qword_1D563ADD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615508();
  v0[47] = v22;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[46] = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_25_40(v23);

  return MEMORY[0x1EEE6DAD8](v0 + 16);
}

uint64_t sub_1D51513CC()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1D5151AE8;
  }

  else
  {
    v4 = sub_1D51514D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D51514D8()
{
  v2 = v1[16];
  if (v2 == 1)
  {
    v36 = v1[47];
    OUTLINED_FUNCTION_39_24();
    v37 = v1[19];
    (*(v38 + 8))(v0);
    *v37 = v36;

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_21();

    __asm { BRAA            X1, X16 }
  }

  if (v2)
  {
    v3 = v1[47];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[18] = v3;
    sub_1D4FB6898(v2, sub_1D4FB6938, 0, v1 + 2);
    v50 = v1[2];
    v5 = v1[5];
    v6 = v1[6];
    v48 = v1[3];
    v49 = v1[7];
    v46 = v2;
    v47 = (v1[4] + 64) >> 6;
    v7 = v1[47];

    while (1)
    {
      v9 = v6;
      v10 = v5;
      v52 = isUniquelyReferenced_nonNull_native;
      if (!v6)
      {
        v11 = v5;
        while (1)
        {
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v10 >= v47)
          {
            v51 = 0;
            v12 = 1;
            goto LABEL_10;
          }

          v9 = *(v48 + 8 * v10);
          ++v11;
          if (v9)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v8);
      }

LABEL_9:
      v51 = (v9 - 1) & v9;
      sub_1D5155CCC();
      sub_1D5155CCC();
      sub_1D5155D24();
      sub_1D5155D24();
      v12 = 0;
      v11 = v10;
LABEL_10:
      v13 = v1[34];
      v14 = v1[24];
      v15 = 1;
      __swift_storeEnumTagSinglePayload(v1[35], v12, 1, v14);
      sub_1D4FB8058();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
      {
        v16 = v1[25];
        sub_1D4FB8058();
        v49(v16);
        sub_1D4E765C8(v16, &qword_1EC7EB210, &unk_1D561DF60);
        v15 = 0;
      }

      v17 = v1[36];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
      __swift_storeEnumTagSinglePayload(v17, v15, 1, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
      if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
      {
        sub_1D4E6456C(v50);

        sub_1D4EA7410(v46);
        v1[47] = v7;
        break;
      }

      v20 = v1[32];
      OUTLINED_FUNCTION_16_48();
      sub_1D5155D24();
      OUTLINED_FUNCTION_18_45();
      sub_1D5155D24();
      v22 = sub_1D4F0DDB4(v20);
      v23 = v7[2];
      v24 = (v21 & 1) == 0;
      v8 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_36;
      }

      v25 = v21;
      if (v7[3] >= v8)
      {
        if ((v52 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
          sub_1D5615D88();
        }
      }

      else
      {
        v26 = v1[32];
        sub_1D52C7190();
        v27 = sub_1D4F0DDB4(v26);
        if ((v25 & 1) != (v28 & 1))
        {
          OUTLINED_FUNCTION_42_21();

          return sub_1D5616238();
        }

        v22 = v27;
      }

      v30 = v1[27];
      v29 = v1[28];
      if (v25)
      {
        v31 = v1[29];
        sub_1D5155D7C(v1[32], type metadata accessor for LooselyComparableTypedIdentifier);
        v7 = v1[18];
        v32 = *(v30 + 72) * v22;
        OUTLINED_FUNCTION_27_35();
        sub_1D5155CCC();
        sub_1D5155D7C(v29, v22);
        v8 = sub_1D4F159C4(v31, v7[7] + v32);
      }

      else
      {
        v7 = v1[18];
        v7[(v22 >> 6) + 8] |= 1 << v22;
        OUTLINED_FUNCTION_16_48();
        sub_1D5155D24();
        OUTLINED_FUNCTION_18_45();
        v8 = sub_1D5155D24();
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_37;
        }

        v7[2] = v35;
      }

      isUniquelyReferenced_nonNull_native = 1;
      v5 = v11;
      v6 = v51;
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[46] = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_25_40(v41);
  OUTLINED_FUNCTION_42_21();

  return MEMORY[0x1EEE6DAD8](v8);
}

uint64_t sub_1D5151AE8()
{
  OUTLINED_FUNCTION_39_24();
  (*(v1 + 8))(v0);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5151BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A50, &unk_1D563AE20);
  v7[10] = swift_task_alloc();
  v8 = sub_1D5615C18();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = sub_1D560D838();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v11 = type metadata accessor for GenericMusicItem(0);
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD40, &unk_1D563AE30);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v13 = sub_1D5610088();
  v7[34] = v13;
  v7[35] = *(v13 - 8);
  v7[36] = swift_task_alloc();
  v14 = sub_1D560CD48();
  v7[37] = v14;
  v7[38] = *(v14 - 8);
  v7[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5151FB8, 0, 0);
}

uint64_t sub_1D5151FB8()
{
  v140 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[7];
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();

  sub_1D560B968();
  (*(v1 + 16))(v2, v4, v3);
  v5 = v0;
  sub_1D560B988();
  OUTLINED_FUNCTION_17_46();
  sub_1D5157970(v6, v7, &unk_1D56579DC);
  v8 = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A58, &qword_1D564C060);
  sub_1D5155DD0();
  OUTLINED_FUNCTION_61();
  sub_1D560B948();
  v138 = v8;
  v30 = 0;
  v31 = v0[2];
  v32 = v5[2];
  v35 = *(v32 + 64);
  v34 = v32 + 64;
  v33 = v35;
  v36 = -1 << *(v31 + 32);
  v37 = v5[35];
  if (-v36 < 64)
  {
    v38 = ~(-1 << -v36);
  }

  else
  {
    v38 = -1;
  }

  v39 = v5[30];
  v40 = v38 & v33;
  v41 = (63 - v36) >> 6;
  v116 = v39 + 16;
  v117 = v39;
  v126 = (v39 + 32);
  v123 = (v5[18] + 8);
  v115 = v5[32];
  v122 = (v37 + 16);
  v119 = v5[26];
  v121 = v5[24];
  v108 = (v37 + 8);
  v109 = v41;
  v114 = v5[22];
  v120 = v5[21];
  v110 = v34;
  v136 = v5;
  v111 = v31;
  if (!v40)
  {
    while (1)
    {
LABEL_9:
      v42 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_49;
      }

      if (v42 >= v41)
      {
        break;
      }

      v40 = *(v34 + 8 * v42);
      ++v30;
      if (v40)
      {
        goto LABEL_12;
      }
    }

    v103 = v5[5];

    *v103 = v138;
LABEL_43:

    OUTLINED_FUNCTION_55();

    return v107();
  }

  while (1)
  {
    v42 = v30;
LABEL_12:
    v112 = v42;
    v113 = (v40 - 1) & v40;
    v43 = __clz(__rbit64(v40)) | (v42 << 6);
    v44 = (*(v31 + 48) + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    v47 = *(*(v31 + 56) + 8 * v43);

    MEMORY[0x1DA6E5E30](v45, v46);
    v48 = 0;
    v50 = v47 + 64;
    v49 = *(v47 + 64);
    v118 = v47;
    v51 = -1 << *(v47 + 32);
    if (-v51 < 64)
    {
      v52 = ~(-1 << -v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & v49;
    v54 = (63 - v51) >> 6;
    v124 = v54;
    v125 = v47 + 64;
    if ((v52 & v49) != 0)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_17:
      v55 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        swift_once();
        v10 = v5[15];
        v9 = v5[16];
        v11 = v5[11];
        v12 = v5[12];
        v13 = sub_1D560C758();
        __swift_project_value_buffer(v13, qword_1EDD76DC8);
        v14 = v5;
        v15 = *(v12 + 16);
        v15(v10, v9, v11);
        v16 = sub_1D560C738();
        v17 = sub_1D56156C8();
        v18 = os_log_type_enabled(v16, v17);
        v20 = v5[15];
        v19 = v5[16];
        if (v18)
        {
          v135 = v17;
          v21 = v5[14];
          v22 = v5[11];
          v133 = v5[12];
          v137 = v5[16];
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v139[0] = v24;
          *v23 = 136446210;
          v15(v21, v20, v22);
          v25 = sub_1D5614DB8();
          v27 = v26;
          v28 = *(v133 + 8);
          v28(v20, v22);
          v29 = sub_1D4E6835C(v25, v27, v139);

          *(v23 + 4) = v29;
          _os_log_impl(&dword_1D4E3F000, v16, v135, "MusicLibraryAdvancedMappingRequest: Decoding failed with error: %{public}s. Gracefully treating as nil.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x1DA6ED200](v24, -1, -1);
          MEMORY[0x1DA6ED200](v23, -1, -1);

          v28(v137, v22);
        }

        else
        {
          v105 = v5[11];
          v104 = v5[12];

          v106 = *(v104 + 8);
          v106(v20, v105);
          v106(v19, v105);
        }

        *v14[5] = 0;

        goto LABEL_43;
      }

      if (v55 >= v54)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
        v99 = OUTLINED_FUNCTION_35_1();
        __swift_storeEnumTagSinglePayload(v99, v100, 1, v101);
        v53 = 0;
        goto LABEL_22;
      }

      v53 = *(v50 + 8 * v55);
      ++v48;
    }

    while (!v53);
    v48 = v55;
LABEL_21:
    v56 = v5[31];
    v57 = v5[32];
    v58 = v5[29];
    v59 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v60 = v59 | (v55 << 6);
    v61 = (*(v118 + 48) + 16 * v60);
    v62 = *v61;
    v63 = v61[1];
    (*(v117 + 16))(v56, *(v118 + 56) + *(v117 + 72) * v60, v58);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    v65 = *(v64 + 48);
    *v57 = v62;
    *(v115 + 8) = v63;
    v5 = v136;
    (*(v117 + 32))(&v57[v65], v56, v58);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v64);

LABEL_22:
    v66 = v5[33];
    sub_1D4FB8058();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    if (__swift_getEnumTagSinglePayload(v66, 1, v67) != 1)
    {
      break;
    }

    (*v108)(v5[36], v5[34]);

    v31 = v111;
    v30 = v112;
    v41 = v109;
    v34 = v110;
    v40 = v113;
    if (!v113)
    {
      goto LABEL_9;
    }
  }

  v68 = v5;
  v69 = v5[39];
  v70 = v5[33];
  v131 = v5[34];
  v132 = v5[36];
  v71 = v5[31];
  v72 = v68[29];
  v134 = v68[23];
  v74 = v68[19];
  v73 = v68[20];
  v129 = v68[17];
  v130 = v68[24];

  (*v126)(v71, v70 + *(v67 + 48), v72);
  sub_1D560B978();
  v75 = sub_1D560B958();
  sub_1D50773C4(v71, v69, v75, v76, v77, v78, v79, v80, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
  sub_1D5157970(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  sub_1D560EC98();
  v128 = sub_1D560D708();
  v127 = v81;
  v5 = v123;
  v82 = *v123;
  (*v123)(v73, v129);
  sub_1D560EC98();
  sub_1D560D828();
  v82(v74, v129);
  v83 = *(v120 + 24);
  (*v122)(v130 + v83, v132, v131);
  __swift_storeEnumTagSinglePayload(v130 + v83, 0, 1, v131);
  *v130 = v128;
  *(v121 + 8) = v127;
  OUTLINED_FUNCTION_16_48();
  sub_1D5155CCC();
  OUTLINED_FUNCTION_18_45();
  sub_1D5155CCC();
  swift_isUniquelyReferenced_nonNull_native();
  v139[0] = v138;
  v84 = sub_1D4F0DDB4(v134);
  if (__OFADD__(*(v138 + 16), (v85 & 1) == 0))
  {
    goto LABEL_47;
  }

  v86 = v84;
  v87 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
  v88 = v139[0];
  v138 = v139[0];
  if ((sub_1D5615D78() & 1) == 0)
  {
    v89 = v136;
LABEL_28:
    v5 = v89[27];
    v92 = v89[28];
    v94 = v89[23];
    v93 = v89[24];
    if (v87)
    {
      sub_1D4F159C4(v89[27], *(v88 + 56) + *(v119 + 72) * v86);
      OUTLINED_FUNCTION_26_39();
      sub_1D5155D7C(v94, v95);
      sub_1D5155D7C(v93, v89);
      sub_1D5155D7C(v92, type metadata accessor for GenericMusicItem);
    }

    else
    {
      *(v88 + 8 * (v86 >> 6) + 64) |= 1 << v86;
      OUTLINED_FUNCTION_26_39();
      sub_1D5155CCC();
      OUTLINED_FUNCTION_27_35();
      sub_1D5155D24();
      sub_1D5155D7C(v94, v89);
      sub_1D5155D7C(v93, v89);
      sub_1D5155D7C(v92, v86);
      v96 = *(v138 + 16);
      v97 = __OFADD__(v96, 1);
      v98 = v96 + 1;
      if (v97)
      {
        goto LABEL_48;
      }

      *(v138 + 16) = v98;
    }

    v5 = v136;
    v54 = v124;
    v50 = v125;
    if (!v53)
    {
      goto LABEL_17;
    }

LABEL_16:
    v55 = v48;
    goto LABEL_21;
  }

  v89 = v136;
  v90 = sub_1D4F0DDB4(v136[23]);
  if ((v87 & 1) == (v91 & 1))
  {
    v86 = v90;
    v88 = v139[0];
    goto LABEL_28;
  }

  return sub_1D5616238();
}

unint64_t sub_1D5152D1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5616208();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5152D74(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x75632D656C707061;
      break;
    case 3:
      result = 0x612D746964657263;
      break;
    case 4:
      result = 0x73726F7461727563;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x7365726E6567;
      break;
    case 7:
      result = 0x6F6D2D636973756DLL;
      break;
    case 8:
      result = 0x69762D636973756DLL;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0x6C2D64726F636572;
      break;
    case 11:
      result = 0x73676E6F73;
      break;
    case 12:
      result = 0x702D6C6169636F73;
      break;
    case 13:
      result = 0x736E6F6974617473;
      break;
    case 14:
      v3 = 0x6970652D7674;
      goto LABEL_11;
    case 15:
      v3 = 0x6165732D7674;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 16:
      result = 0x73776F68732D7674;
      break;
    case 17:
    case 18:
      result = 0x646564616F6C7075;
      break;
    case 19:
    case 20:
    case 23:
      result = 0x2D7972617262696CLL;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5153038()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2;
  v5 = *v4;
  if (*v2)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F293F4();
    OUTLINED_FUNCTION_30_31();
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = v1[1];
  v7 = v0[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2964C();
    OUTLINED_FUNCTION_30_31();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = v1[2];
  v9 = v0[2];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F298A4();
    OUTLINED_FUNCTION_30_31();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v1[3];
  v11 = v0[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F29AFC();
    OUTLINED_FUNCTION_30_31();
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = v1[4];
  v13 = v0[4];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F29D54();
    OUTLINED_FUNCTION_30_31();
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = v1[5];
  v15 = v0[5];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F29FAC();
    OUTLINED_FUNCTION_30_31();
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = v1[6];
  v17 = v0[6];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A204();
    OUTLINED_FUNCTION_30_31();
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = v1[7];
  v19 = v0[7];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A45C();
    OUTLINED_FUNCTION_30_31();
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = v1[8];
  v21 = v0[8];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A6B4();
    OUTLINED_FUNCTION_30_31();
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = v1[9];
  v23 = v0[9];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A90C();
    OUTLINED_FUNCTION_30_31();
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = v1[10];
  v25 = v0[10];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2AB64();
    OUTLINED_FUNCTION_30_31();
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = v1[11];
  v27 = v0[11];
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2ADBC();
    OUTLINED_FUNCTION_30_31();
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = v1[12];
  v29 = v0[12];
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2B014();
    OUTLINED_FUNCTION_30_31();
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = v1[13];
  v31 = v0[13];
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2B26C();
    OUTLINED_FUNCTION_30_31();
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v1[14];
  v33 = v0[14];
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2B4C4();
    OUTLINED_FUNCTION_30_31();
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v1[15];
  v35 = v0[15];
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2B71C();
    OUTLINED_FUNCTION_30_31();
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = v1[16];
  v37 = v0[16];
  if (v36)
  {
    if (!v37)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2B974();
    OUTLINED_FUNCTION_30_31();
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = v1[17];
  v39 = v0[17];
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2BBCC();
    OUTLINED_FUNCTION_30_31();
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v1[18];
  v41 = v0[18];
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2BE24();
    OUTLINED_FUNCTION_30_31();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v1[19];
  v43 = v0[19];
  if (v42)
  {
    if (!v43)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F293F4();
    OUTLINED_FUNCTION_30_31();
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = v1[20];
  v45 = v0[20];
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2964C();
    OUTLINED_FUNCTION_30_31();
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v1[21];
  v47 = v0[21];
  if (v46)
  {
    if (!v47)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A6B4();
    OUTLINED_FUNCTION_30_31();
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = v1[22];
  v49 = v0[22];
  if (v48)
  {
    if (!v49)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61();
    sub_1D4F2A90C();
    OUTLINED_FUNCTION_30_31();
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v0[23];
  if (v1[23])
  {
    if (v50)
    {

      sub_1D4F2B014();
      v52 = v51;

      if (v52)
      {
        return 1;
      }
    }
  }

  else if (!v50)
  {
    return 1;
  }

  return 0;
}

void sub_1D51534F4()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B18, &qword_1D563B248);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51563D8();
  sub_1D56163D8();
  v70 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A80, &unk_1D563B118);
  v10 = sub_1D5157A20();
  v11 = OUTLINED_FUNCTION_12_52();
  OUTLINED_FUNCTION_29_32(v11, v12, v13, v9, v10);
  if (!v0)
  {
    v69 = v9;
    v70 = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A88, &unk_1D563B128);
    v15 = sub_1D5157B94();
    v16 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v16, v17, v18, v14, v15);
    v67 = v15;
    v68 = v14;
    v70 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A90, &unk_1D563B138);
    v19 = sub_1D5157C20();
    OUTLINED_FUNCTION_20_3(v19);
    v70 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A98, &unk_1D563B148);
    v20 = sub_1D5157D94();
    OUTLINED_FUNCTION_20_3(v20);
    v70 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA0, &unk_1D563B158);
    v21 = sub_1D5157F08();
    OUTLINED_FUNCTION_20_3(v21);
    v70 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA8, &unk_1D563B168);
    v22 = sub_1D515807C();
    OUTLINED_FUNCTION_20_3(v22);
    v70 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB0, &unk_1D563B178);
    v23 = sub_1D51581F0();
    OUTLINED_FUNCTION_20_3(v23);
    v70 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB8, &unk_1D563B188);
    v24 = sub_1D515827C();
    OUTLINED_FUNCTION_20_3(v24);
    v70 = 8;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC0, &unk_1D563B198);
    v26 = sub_1D51583F0();
    v27 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v27, v28, v29, v25, v26);
    v70 = 9;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC8, &unk_1D563B1A8);
    sub_1D5158564();
    v31 = OUTLINED_FUNCTION_11_62();
    v65 = v32;
    v66 = v30;
    OUTLINED_FUNCTION_29_32(v31, v33, v34, v30, v32);
    v70 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD0, &unk_1D563B1B8);
    v35 = sub_1D51585F0();
    OUTLINED_FUNCTION_20_3(v35);
    v70 = 11;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD8, &unk_1D563B1C8);
    sub_1D5158764();
    v37 = OUTLINED_FUNCTION_11_62();
    v63 = v38;
    v64 = v36;
    OUTLINED_FUNCTION_29_32(v37, v39, v40, v36, v38);
    v70 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE0, &unk_1D563B1D8);
    v41 = sub_1D51588D8();
    OUTLINED_FUNCTION_20_3(v41);
    v70 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE8, &unk_1D563B1E8);
    v42 = sub_1D5158A4C();
    OUTLINED_FUNCTION_20_3(v42);
    v70 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF0, &unk_1D563B1F8);
    v43 = sub_1D5158BC0();
    OUTLINED_FUNCTION_20_3(v43);
    v70 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF8, &unk_1D563B208);
    v44 = sub_1D5158C4C();
    OUTLINED_FUNCTION_20_3(v44);
    v70 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B00, &unk_1D563B218);
    v45 = sub_1D5158CD8();
    OUTLINED_FUNCTION_20_3(v45);
    v70 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B08, &qword_1D563B228);
    v46 = sub_1D5158D64();
    OUTLINED_FUNCTION_20_3(v46);
    v70 = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B10, &unk_1D563B238);
    v47 = sub_1D5158ED8();
    OUTLINED_FUNCTION_20_3(v47);
    v70 = 19;
    v48 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v48, v49, v50, v69, v10);
    v70 = 20;
    v51 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v51, v52, v53, v68, v67);
    v70 = 21;
    v54 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v54, v55, v56, v25, v26);
    v70 = 22;
    v57 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v57, v58, v59, v66, v65);
    v70 = 23;
    v60 = OUTLINED_FUNCTION_12_52();
    OUTLINED_FUNCTION_29_32(v60, v61, v62, v64, v63);
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_26();
}

void sub_1D5153B24()
{
  if (*v0)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F35130();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[1])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34F18();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[2])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34D00();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[3])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34AE8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[4])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F348D0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[5])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F346B8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[6])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F344A0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[7])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34288();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[8])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34070();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[9])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33E58();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[10])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33C40();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[11])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33A28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[12])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33810();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[13])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F335F8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[14])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F333E0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[15])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F331C8();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[16])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32FB0();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[17])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32D98();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[18])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F32B80();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[19])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F35130();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[20])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34F18();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[21])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F34070();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[22])
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_222();
    sub_1D4F33E58();
  }

  else
  {
    sub_1D56162F8();
  }

  if (v0[23])
  {
    sub_1D56162F8();

    sub_1D4F33810();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t sub_1D5153ECC()
{
  sub_1D56162D8();
  sub_1D5153B24();
  return sub_1D5616328();
}

void sub_1D5153F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A78, &qword_1D563B110);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  v21 = v12[3];
  v115 = v12;
  __swift_project_boxed_opaque_existential_1(v12, v21);
  sub_1D51563D8();
  sub_1D5616398();
  if (v10)
  {
    v124 = v10;
    LODWORD(v15) = 0;
    LODWORD(v23) = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = 0;
    LODWORD(v27) = 0;
    LODWORD(v20) = 0;
    v110 = 0;
    v111 = 0;
    v113 = 0;
    v116 = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
  }

  else
  {
    v122 = v14;
    v123 = v17;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A80, &unk_1D563B118);
    LOBYTE(v125[0]) = 0;
    v22 = sub_1D515642C();
    OUTLINED_FUNCTION_24_37();
    sub_1D5615F78();
    v121 = v22;
    v109 = v126[0];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A88, &unk_1D563B128);
    LOBYTE(v125[0]) = 1;
    v28 = sub_1D51565A0();
    OUTLINED_FUNCTION_24_37();
    sub_1D5615F78();
    v120 = v28;
    v108 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A90, &unk_1D563B138);
    LOBYTE(v125[0]) = 2;
    sub_1D515662C();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v107 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A98, &unk_1D563B148);
    LOBYTE(v125[0]) = 3;
    sub_1D51567A0();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v106 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA0, &unk_1D563B158);
    LOBYTE(v125[0]) = 4;
    sub_1D5156914();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v105 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AA8, &unk_1D563B168);
    LOBYTE(v125[0]) = 5;
    sub_1D5156A88();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v104 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB0, &unk_1D563B178);
    LOBYTE(v125[0]) = 6;
    sub_1D5156BFC();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v103 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AB8, &unk_1D563B188);
    LOBYTE(v125[0]) = 7;
    sub_1D5156C88();
    OUTLINED_FUNCTION_6_64();
    sub_1D5615F78();
    v102 = v126[0];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC0, &unk_1D563B198);
    LOBYTE(v125[0]) = 8;
    sub_1D5156DFC();
    OUTLINED_FUNCTION_24_37();
    v119 = v30;
    sub_1D5615F78();
    v124 = 0;
    v101 = v126[0];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AC8, &unk_1D563B1A8);
    LOBYTE(v125[0]) = 9;
    v24 = sub_1D5156F70();
    OUTLINED_FUNCTION_24_37();
    OUTLINED_FUNCTION_31_29(v23, v31, v15, v23);
    v124 = 0;
    v100 = v126[0];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD0, &unk_1D563B1B8);
    LOBYTE(v125[0]) = 10;
    sub_1D5156FFC();
    OUTLINED_FUNCTION_6_64();
    v32 = v124;
    sub_1D5615F78();
    v124 = v32;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_10_63();
      v34(v33);
      OUTLINED_FUNCTION_5_70();
      OUTLINED_FUNCTION_0_110();
      v111 = v35;
    }

    else
    {
      v99 = v126[0];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AD8, &unk_1D563B1C8);
      LOBYTE(v125[0]) = 11;
      sub_1D5157170();
      OUTLINED_FUNCTION_24_37();
      v117 = v37;
      v118 = v36;
      OUTLINED_FUNCTION_31_29(v36, v38, v15, v36);
      v124 = 0;
      v98 = v126[0];
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE0, &unk_1D563B1D8);
      LOBYTE(v125[0]) = 12;
      sub_1D51572E4();
      OUTLINED_FUNCTION_6_64();
      v39 = v124;
      sub_1D5615F78();
      v124 = v39;
      if (v39)
      {
        v40 = OUTLINED_FUNCTION_10_63();
        v41(v40);
        OUTLINED_FUNCTION_7_68();
        OUTLINED_FUNCTION_0_110();
        OUTLINED_FUNCTION_28_36(v42);
        v116 = 0;
        LODWORD(v117) = v43;
      }

      else
      {
        v97 = v126[0];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AE8, &unk_1D563B1E8);
        LOBYTE(v125[0]) = 13;
        sub_1D5157458();
        OUTLINED_FUNCTION_6_64();
        v44 = v124;
        sub_1D5615F78();
        v124 = v44;
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_10_63();
          v46(v45);
          OUTLINED_FUNCTION_7_68();
          OUTLINED_FUNCTION_0_110();
          OUTLINED_FUNCTION_28_36(v47);
          v116 = v48;
          LODWORD(v117) = v48;
        }

        else
        {
          v96 = v126[0];
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF0, &unk_1D563B1F8);
          LOBYTE(v125[0]) = 14;
          sub_1D51574E4();
          OUTLINED_FUNCTION_6_64();
          v49 = v124;
          sub_1D5615F78();
          v124 = v49;
          if (v49)
          {
            v50 = OUTLINED_FUNCTION_10_63();
            v51(v50);
            LODWORD(v119) = 0;
            OUTLINED_FUNCTION_8_60();
            OUTLINED_FUNCTION_0_110();
            OUTLINED_FUNCTION_28_36(v52);
            v116 = v53;
            LODWORD(v117) = v53;
            LODWORD(v118) = v53;
          }

          else
          {
            v95 = v126[0];
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0AF8, &unk_1D563B208);
            LOBYTE(v125[0]) = 15;
            sub_1D5157570();
            OUTLINED_FUNCTION_6_64();
            v54 = v124;
            sub_1D5615F78();
            v124 = v54;
            if (v54)
            {
              v55 = OUTLINED_FUNCTION_10_63();
              v56(v55);
              OUTLINED_FUNCTION_8_60();
              OUTLINED_FUNCTION_0_110();
              OUTLINED_FUNCTION_15_50(v57);
            }

            else
            {
              v94 = v126[0];
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B00, &unk_1D563B218);
              LOBYTE(v125[0]) = 16;
              sub_1D51575FC();
              OUTLINED_FUNCTION_6_64();
              v58 = v124;
              sub_1D5615F78();
              v124 = v58;
              if (v58)
              {
                v59 = OUTLINED_FUNCTION_10_63();
                v60(v59);
                LODWORD(v121) = 0;
                LODWORD(v122) = 0;
                LODWORD(v123) = 0;
                LODWORD(v15) = 1;
                OUTLINED_FUNCTION_0_110();
                OUTLINED_FUNCTION_15_50(v61);
                LODWORD(v120) = v62;
              }

              else
              {
                v91 = v126[0];
                v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B08, &qword_1D563B228);
                LOBYTE(v125[0]) = 17;
                sub_1D5157688();
                OUTLINED_FUNCTION_6_64();
                v63 = v124;
                sub_1D5615F78();
                v124 = v63;
                if (v63)
                {
                  v64 = OUTLINED_FUNCTION_10_63();
                  v65(v64);
                  LODWORD(v122) = 0;
                  LODWORD(v123) = 0;
                  LODWORD(v15) = 1;
                  OUTLINED_FUNCTION_0_110();
                  OUTLINED_FUNCTION_28_36(v66);
                  OUTLINED_FUNCTION_14_48(v67);
                }

                else
                {
                  v92 = v126[0];
                  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0B10, &unk_1D563B238);
                  LOBYTE(v125[0]) = 18;
                  sub_1D51577FC();
                  OUTLINED_FUNCTION_6_64();
                  v68 = v124;
                  sub_1D5615F78();
                  v124 = v68;
                  if (!v68)
                  {
                    v93 = v126[0];
                    LOBYTE(v125[0]) = 19;
                    OUTLINED_FUNCTION_24_37();
                    OUTLINED_FUNCTION_31_29(v27, v74, v15, v27);
                    v124 = 0;
                    v87 = v126[0];
                    LOBYTE(v125[0]) = 20;
                    OUTLINED_FUNCTION_24_37();
                    OUTLINED_FUNCTION_31_29(v26, v75, v15, v26);
                    v124 = 0;
                    v90 = v126[0];
                    LOBYTE(v125[0]) = 21;
                    OUTLINED_FUNCTION_24_37();
                    OUTLINED_FUNCTION_31_29(v29, v76, v15, v29);
                    v124 = 0;
                    v89 = v126[0];
                    LOBYTE(v125[0]) = 22;
                    OUTLINED_FUNCTION_24_37();
                    OUTLINED_FUNCTION_31_29(v23, v77, v15, v23);
                    v124 = 0;
                    v88 = v126[0];
                    v127 = 23;
                    OUTLINED_FUNCTION_31_29(v118, &v127, v15, v118);
                    v124 = 0;
                    v78 = OUTLINED_FUNCTION_10_63();
                    v79(v78);
                    v125[0] = v109;
                    v125[1] = v108;
                    v125[2] = v107;
                    v125[3] = v106;
                    v125[4] = v105;
                    v125[5] = v104;
                    v125[6] = v103;
                    v125[7] = v102;
                    v125[8] = v101;
                    v125[9] = v100;
                    v80 = v98;
                    v81 = v96;
                    v125[10] = v99;
                    v125[11] = v97;
                    v125[12] = v98;
                    v125[13] = v96;
                    v82 = v94;
                    v83 = v95;
                    v125[14] = v95;
                    v125[15] = v94;
                    v85 = v91;
                    v84 = v92;
                    v125[16] = v91;
                    v125[17] = v92;
                    v86 = v93;
                    v125[18] = v93;
                    v125[19] = v87;
                    v125[20] = v90;
                    v125[21] = v89;
                    v125[22] = v88;
                    v125[23] = a10;
                    sub_1D51579B8(v125, v126);
                    __swift_destroy_boxed_opaque_existential_1(v115);
                    v126[0] = v109;
                    v126[1] = v108;
                    v126[2] = v107;
                    v126[3] = v106;
                    v126[4] = v105;
                    v126[5] = v104;
                    v126[6] = v103;
                    v126[7] = v102;
                    v126[8] = v101;
                    v126[9] = v100;
                    v126[10] = v99;
                    v126[11] = v97;
                    v126[12] = v80;
                    v126[13] = v81;
                    v126[14] = v83;
                    v126[15] = v82;
                    v126[16] = v85;
                    v126[17] = v84;
                    v126[18] = v86;
                    v126[19] = v87;
                    v126[20] = v90;
                    v126[21] = v89;
                    v126[22] = v88;
                    v126[23] = a10;
                    sub_1D51579F0(v126);
                    memcpy(v122, v125, 0xC0uLL);
                    goto LABEL_50;
                  }

                  v69 = OUTLINED_FUNCTION_10_63();
                  v70(v69);
                  LODWORD(v123) = 0;
                  LODWORD(v15) = 1;
                  OUTLINED_FUNCTION_0_110();
                  OUTLINED_FUNCTION_28_36(v71);
                  OUTLINED_FUNCTION_14_48(v72);
                  LODWORD(v122) = v73;
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v115);
  if (v15)
  {
    v112 = 0;
    v114 = 0;
    LODWORD(v115) = 0;

    if (v23)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v114 = 0;
    LODWORD(v115) = 0;
    v112 = 0;
    if (v23)
    {
LABEL_6:

      if ((v24 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  if (!v24)
  {
LABEL_7:
    if (v25)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v25)
  {
LABEL_8:

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v26)
  {
LABEL_9:
    if (v27)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:

  if (v27)
  {
LABEL_10:

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v20)
  {
LABEL_11:
    if (v110)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:

  if (v110)
  {
LABEL_12:

    if ((v110 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!HIDWORD(v110))
  {
LABEL_13:
    if (v111)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v111)
  {
LABEL_14:

    if ((v113 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v113)
  {
LABEL_15:
    if (v116)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:

  if (v116)
  {
LABEL_16:

    if ((v117 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  if (!v117)
  {
LABEL_17:
    if (v118)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:

  if (v118)
  {
LABEL_18:

    if ((v119 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (!v119)
  {
LABEL_19:
    if (v120)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:

  if (v120)
  {
LABEL_20:

    if ((v121 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (!v121)
  {
LABEL_21:
    if (v122)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:

  if (v122)
  {
LABEL_22:

    if ((v123 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_45:

    goto LABEL_46;
  }

LABEL_44:
  if (v123)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (!v112)
  {
    if (!v114)
    {
      goto LABEL_48;
    }

LABEL_25:

    if ((v115 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v114)
  {
    goto LABEL_25;
  }

LABEL_48:
  if (v115)
  {
LABEL_49:
  }

LABEL_50:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5154E18()
{
  OUTLINED_FUNCTION_69_0();
  memcpy(__dst, v1, 0xC0uLL);
  memcpy(&__dst[192], v0, 0xC0uLL);
  memcpy(v8, v1, sizeof(v8));
  if (sub_1D4FB6A7C(v8) != 1)
  {
    memcpy(v6, &__dst[192], 0xC0uLL);
    if (sub_1D4FB6A7C(v6) != 1)
    {
      memcpy(v4, &__dst[192], sizeof(v4));
      sub_1D5155938(v1, v5);
      sub_1D5155938(v0, v5);
      v2 = sub_1D5153038();
      sub_1D4E765C8(v4, &qword_1EC7F0A28, &qword_1D563ADB8);
      memcpy(v5, __dst, sizeof(v5));
      sub_1D4E765C8(v5, &qword_1EC7F0A28, &qword_1D563ADB8);
      return v2 & 1;
    }

    goto LABEL_5;
  }

  memcpy(v6, &__dst[192], 0xC0uLL);
  if (sub_1D4FB6A7C(v6) != 1)
  {
LABEL_5:
    memcpy(v6, __dst, sizeof(v6));
    sub_1D5155938(v1, v5);
    sub_1D5155938(v0, v5);
    sub_1D4E765C8(v6, &qword_1EC7F0A30, &qword_1D563ADC0);
    v2 = 0;
    return v2 & 1;
  }

  memcpy(v5, __dst, sizeof(v5));
  sub_1D5155938(v1, v4);
  sub_1D5155938(v0, v4);
  sub_1D4E765C8(v5, &qword_1EC7F0A28, &qword_1D563ADB8);
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1D5154FD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1D5155074()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A18, &qword_1D563ADB0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5155890();
  sub_1D56163D8();
  memcpy(v12, v1, sizeof(v12));
  sub_1D5155938(v1, v11);
  sub_1D5155970();
  sub_1D5616068();
  memcpy(v11, v12, sizeof(v11));
  sub_1D4E765C8(v11, &qword_1EC7F0A28, &qword_1D563ADB8);
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_26();
}

void sub_1D51551EC()
{
  memcpy(v1, v0, sizeof(v1));
  if (sub_1D4FB6A7C(v1) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5153B24();
  }
}

uint64_t sub_1D5155258()
{
  sub_1D56162D8();
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_1D4FB6A7C(__dst) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5153B24();
  }

  return sub_1D5616328();
}

void sub_1D51552E0()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v13 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0A10, &qword_1D563ADA8);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5155890();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D51558E4();
    sub_1D5615F78();
    (*(v6 + 8))(v9, v4);
    memcpy(v11, v12, sizeof(v11));
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v13, v11, 0xC0uLL);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5155498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5152D1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D51554C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5152D74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D51554FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5152D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5155540(uint64_t a1)
{
  v2 = sub_1D51563D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D515557C(uint64_t a1)
{
  v2 = sub_1D51563D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D51555B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1D5153F0C(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0xC0uLL);
  }
}

uint64_t sub_1D5155628(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5153B24();
  return sub_1D5616328();
}

uint64_t sub_1D5155668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5154FD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D5155694(uint64_t a1)
{
  v2 = sub_1D5155890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51556D0(uint64_t a1)
{
  v2 = sub_1D5155890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D515570C(void *a1@<X8>)
{
  sub_1D51552E0();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

uint64_t sub_1D51557AC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1D5154E18() & 1;
}

uint64_t sub_1D515580C(uint64_t a1)
{
  sub_1D56162D8();
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_1D4FB6A7C(__dst) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    sub_1D5153B24();
  }

  return sub_1D5616328();
}

unint64_t sub_1D5155890()
{
  result = qword_1EDD54F40;
  if (!qword_1EDD54F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F40);
  }

  return result;
}

unint64_t sub_1D51558E4()
{
  result = qword_1EDD54F48;
  if (!qword_1EDD54F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F48);
  }

  return result;
}

unint64_t sub_1D5155970()
{
  result = qword_1EC7F0A20;
  if (!qword_1EC7F0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A20);
  }

  return result;
}

uint64_t sub_1D51559C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1D5615B78();
  if ((v6 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5155A60(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1D51592F8;

  return sub_1D5150C98(a1, a2, v6, v7, v8);
}

uint64_t sub_1D5155B20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D560CD48() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D4E6E494;

  return sub_1D5151BF8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1D5155C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5155CCC()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5155D24()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D5155D7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D5155DD0()
{
  result = qword_1EDD528E0;
  if (!qword_1EDD528E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A58, &qword_1D564C060);
    sub_1D5155E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD528E0);
  }

  return result;
}

unint64_t sub_1D5155E5C()
{
  result = qword_1EDD52998;
  if (!qword_1EDD52998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF2C0, &qword_1D5630FB0);
    sub_1D5155EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52998);
  }

  return result;
}

unint64_t sub_1D5155EE8()
{
  result = qword_1EDD532D8;
  if (!qword_1EDD532D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D5157970(&qword_1EDD5CE68, type metadata accessor for CloudGenericMusicItem, &protocol conformance descriptor for CloudGenericMusicItem);
    sub_1D5157970(qword_1EDD5CE70, type metadata accessor for CloudGenericMusicItem, &protocol conformance descriptor for CloudGenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532D8);
  }

  return result;
}

unint64_t sub_1D5155FD0(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1D5615C58();
    }

    sub_1D560C158();
  }

  return v2 >> 60;
}

uint64_t sub_1D5156064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1D51559C4(a1, a2, a3, a4, *a5, a5[1]);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceMapRawResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D5156194(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D51561E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D515627C()
{
  result = qword_1EC7F0A68;
  if (!qword_1EC7F0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A68);
  }

  return result;
}

unint64_t sub_1D51562D4()
{
  result = qword_1EC7F0A70;
  if (!qword_1EC7F0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0A70);
  }

  return result;
}

unint64_t sub_1D515632C()
{
  result = qword_1EDD54F30;
  if (!qword_1EDD54F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F30);
  }

  return result;
}

unint64_t sub_1D5156384()
{
  result = qword_1EDD54F38;
  if (!qword_1EDD54F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F38);
  }

  return result;
}

unint64_t sub_1D51563D8()
{
  result = qword_1EDD54F60[0];
  if (!qword_1EDD54F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD54F60);
  }

  return result;
}

unint64_t sub_1D515642C()
{
  result = qword_1EDD52960;
  if (!qword_1EDD52960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A80, &unk_1D563B118);
    sub_1D51564B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52960);
  }

  return result;
}

unint64_t sub_1D51564B8()
{
  result = qword_1EDD532A0;
  if (!qword_1EDD532A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    v1 = MEMORY[0x1E6975660];
    sub_1D5157970(&qword_1EDD53420, MEMORY[0x1E6975660], MEMORY[0x1E6975680]);
    sub_1D5157970(&qword_1EDD53428, v1, MEMORY[0x1E6975668]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532A0);
  }

  return result;
}

unint64_t sub_1D51565A0()
{
  result = qword_1EDD52950;
  if (!qword_1EDD52950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A88, &unk_1D563B128);
    sub_1D500088C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52950);
  }

  return result;
}

unint64_t sub_1D515662C()
{
  result = qword_1EDD52988;
  if (!qword_1EDD52988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A90, &unk_1D563B138);
    sub_1D51566B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52988);
  }

  return result;
}

unint64_t sub_1D51566B8()
{
  result = qword_1EDD532C8;
  if (!qword_1EDD532C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    v1 = MEMORY[0x1E6975F48];
    sub_1D5157970(&qword_1EDD53148, MEMORY[0x1E6975F48], MEMORY[0x1E6975F68]);
    sub_1D5157970(&qword_1EDD53150, v1, MEMORY[0x1E6975F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532C8);
  }

  return result;
}

unint64_t sub_1D51567A0()
{
  result = qword_1EDD52978;
  if (!qword_1EDD52978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A98, &unk_1D563B148);
    sub_1D515682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52978);
  }

  return result;
}

unint64_t sub_1D515682C()
{
  result = qword_1EDD532B8;
  if (!qword_1EDD532B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    v1 = MEMORY[0x1E6976090];
    sub_1D5157970(&qword_1EDD53118, MEMORY[0x1E6976090], MEMORY[0x1E69760B0]);
    sub_1D5157970(&qword_1EDD53120, v1, MEMORY[0x1E6976098]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532B8);
  }

  return result;
}

unint64_t sub_1D5156914()
{
  result = qword_1EDD52948;
  if (!qword_1EDD52948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AA0, &unk_1D563B158);
    sub_1D51569A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52948);
  }

  return result;
}

unint64_t sub_1D51569A0()
{
  result = qword_1EDD53288;
  if (!qword_1EDD53288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    v1 = MEMORY[0x1E6975A30];
    sub_1D5157970(&qword_1EDD53390, MEMORY[0x1E6975A30], MEMORY[0x1E6975A50]);
    sub_1D5157970(&qword_1EDD53398, v1, MEMORY[0x1E6975A38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53288);
  }

  return result;
}

unint64_t sub_1D5156A88()
{
  result = qword_1EDD529C8;
  if (!qword_1EDD529C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AA8, &unk_1D563B168);
    sub_1D5156B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529C8);
  }

  return result;
}

unint64_t sub_1D5156B14()
{
  result = qword_1EDD53308;
  if (!qword_1EDD53308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D5157970(&qword_1EDD56738, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    sub_1D5157970(&qword_1EDD56740, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53308);
  }

  return result;
}

unint64_t sub_1D5156BFC()
{
  result = qword_1EDD52958;
  if (!qword_1EDD52958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AB0, &unk_1D563B178);
    sub_1D4F89788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52958);
  }

  return result;
}

unint64_t sub_1D5156C88()
{
  result = qword_1EDD52990;
  if (!qword_1EDD52990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AB8, &unk_1D563B188);
    sub_1D5156D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52990);
  }

  return result;
}

unint64_t sub_1D5156D14()
{
  result = qword_1EDD532D0;
  if (!qword_1EDD532D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D5157970(&qword_1EDD5C6D0, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    sub_1D5157970(&qword_1EDD5C6D8, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532D0);
  }

  return result;
}

unint64_t sub_1D5156DFC()
{
  result = qword_1EDD52930;
  if (!qword_1EDD52930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AC0, &unk_1D563B198);
    sub_1D5156E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52930);
  }

  return result;
}

unint64_t sub_1D5156E88()
{
  result = qword_1EDD53270;
  if (!qword_1EDD53270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    v1 = MEMORY[0x1E6974DD8];
    sub_1D5157970(&qword_1EDD543A0, MEMORY[0x1E6974DD8], MEMORY[0x1E6974DF8]);
    sub_1D5157970(&qword_1EDD543A8, v1, MEMORY[0x1E6974DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53270);
  }

  return result;
}

unint64_t sub_1D5156F70()
{
  result = qword_1EDD52938;
  if (!qword_1EDD52938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AC8, &unk_1D563B1A8);
    sub_1D50009F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52938);
  }

  return result;
}

unint64_t sub_1D5156FFC()
{
  result = qword_1EDD52980;
  if (!qword_1EDD52980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AD0, &unk_1D563B1B8);
    sub_1D5157088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52980);
  }

  return result;
}

unint64_t sub_1D5157088()
{
  result = qword_1EDD532C0;
  if (!qword_1EDD532C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    v1 = MEMORY[0x1E6975FE8];
    sub_1D5157970(&qword_1EDD53138, MEMORY[0x1E6975FE8], MEMORY[0x1E6976008]);
    sub_1D5157970(&qword_1EDD53140, v1, MEMORY[0x1E6975FF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532C0);
  }

  return result;
}

unint64_t sub_1D5157170()
{
  result = qword_1EDD52968;
  if (!qword_1EDD52968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AD8, &unk_1D563B1C8);
    sub_1D51571FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52968);
  }

  return result;
}

unint64_t sub_1D51571FC()
{
  result = qword_1EDD532A8;
  if (!qword_1EDD532A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    v1 = MEMORY[0x1E6977468];
    sub_1D5157970(&qword_1EDD52A60, MEMORY[0x1E6977468], MEMORY[0x1E6977488]);
    sub_1D5157970(&qword_1EDD52A68, v1, MEMORY[0x1E6977470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532A8);
  }

  return result;
}

unint64_t sub_1D51572E4()
{
  result = qword_1EDD52970;
  if (!qword_1EDD52970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AE0, &unk_1D563B1D8);
    sub_1D5157370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52970);
  }

  return result;
}

unint64_t sub_1D5157370()
{
  result = qword_1EDD532B0;
  if (!qword_1EDD532B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v1 = MEMORY[0x1E69762A8];
    sub_1D5157970(&qword_1EDD530F8, MEMORY[0x1E69762A8], MEMORY[0x1E69762C8]);
    sub_1D5157970(&qword_1EDD53100, v1, MEMORY[0x1E69762B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532B0);
  }

  return result;
}

unint64_t sub_1D5157458()
{
  result = qword_1EDD52940;
  if (!qword_1EDD52940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AE8, &unk_1D563B1E8);
    sub_1D50D2218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52940);
  }

  return result;
}

unint64_t sub_1D51574E4()
{
  result = qword_1EDD529A0;
  if (!qword_1EDD529A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AF0, &unk_1D563B1F8);
    sub_1D4F8961C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529A0);
  }

  return result;
}

unint64_t sub_1D5157570()
{
  result = qword_1EDD529A8;
  if (!qword_1EDD529A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AF8, &unk_1D563B208);
    sub_1D4FCE970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529A8);
  }

  return result;
}

unint64_t sub_1D51575FC()
{
  result = qword_1EDD529B0;
  if (!qword_1EDD529B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B00, &unk_1D563B218);
    sub_1D4F898F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529B0);
  }

  return result;
}

unint64_t sub_1D5157688()
{
  result = qword_1EDD529C0;
  if (!qword_1EDD529C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B08, &qword_1D563B228);
    sub_1D5157714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529C0);
  }

  return result;
}

unint64_t sub_1D5157714()
{
  result = qword_1EDD53300;
  if (!qword_1EDD53300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D5157970(&qword_1EDD56470, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    sub_1D5157970(&qword_1EDD56478, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53300);
  }

  return result;
}

unint64_t sub_1D51577FC()
{
  result = qword_1EDD529B8;
  if (!qword_1EDD529B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B10, &unk_1D563B238);
    sub_1D5157888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529B8);
  }

  return result;
}

unint64_t sub_1D5157888()
{
  result = qword_1EDD532F8;
  if (!qword_1EDD532F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D5157970(&qword_1EDD561D8, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    sub_1D5157970(&qword_1EDD561E0, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532F8);
  }

  return result;
}

uint64_t sub_1D5157970(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5157A20()
{
  result = qword_1EC7F0B20;
  if (!qword_1EC7F0B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A80, &unk_1D563B118);
    sub_1D5157AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B20);
  }

  return result;
}

unint64_t sub_1D5157AAC()
{
  result = qword_1EC7EF050;
  if (!qword_1EC7EF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    v1 = MEMORY[0x1E6975660];
    sub_1D5157970(&qword_1EDD53420, MEMORY[0x1E6975660], MEMORY[0x1E6975680]);
    sub_1D5157970(&qword_1EDD53428, v1, MEMORY[0x1E6975668]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF050);
  }

  return result;
}

unint64_t sub_1D5157B94()
{
  result = qword_1EC7F0B28;
  if (!qword_1EC7F0B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A88, &unk_1D563B128);
    sub_1D50005B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B28);
  }

  return result;
}

unint64_t sub_1D5157C20()
{
  result = qword_1EC7F0B30;
  if (!qword_1EC7F0B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A90, &unk_1D563B138);
    sub_1D5157CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B30);
  }

  return result;
}

unint64_t sub_1D5157CAC()
{
  result = qword_1EC7F0B38;
  if (!qword_1EC7F0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    v1 = MEMORY[0x1E6975F48];
    sub_1D5157970(&qword_1EDD53148, MEMORY[0x1E6975F48], MEMORY[0x1E6975F68]);
    sub_1D5157970(&qword_1EDD53150, v1, MEMORY[0x1E6975F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B38);
  }

  return result;
}

unint64_t sub_1D5157D94()
{
  result = qword_1EC7F0B40;
  if (!qword_1EC7F0B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0A98, &unk_1D563B148);
    sub_1D5157E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B40);
  }

  return result;
}

unint64_t sub_1D5157E20()
{
  result = qword_1EC7F0B48;
  if (!qword_1EC7F0B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    v1 = MEMORY[0x1E6976090];
    sub_1D5157970(&qword_1EDD53118, MEMORY[0x1E6976090], MEMORY[0x1E69760B0]);
    sub_1D5157970(&qword_1EDD53120, v1, MEMORY[0x1E6976098]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B48);
  }

  return result;
}

unint64_t sub_1D5157F08()
{
  result = qword_1EC7F0B50;
  if (!qword_1EC7F0B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AA0, &unk_1D563B158);
    sub_1D5157F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B50);
  }

  return result;
}

unint64_t sub_1D5157F94()
{
  result = qword_1EC7F0B58;
  if (!qword_1EC7F0B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    v1 = MEMORY[0x1E6975A30];
    sub_1D5157970(&qword_1EDD53390, MEMORY[0x1E6975A30], MEMORY[0x1E6975A50]);
    sub_1D5157970(&qword_1EDD53398, v1, MEMORY[0x1E6975A38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B58);
  }

  return result;
}

unint64_t sub_1D515807C()
{
  result = qword_1EC7F0B60;
  if (!qword_1EC7F0B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AA8, &unk_1D563B168);
    sub_1D5158108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B60);
  }

  return result;
}

unint64_t sub_1D5158108()
{
  result = qword_1EC7F0B68;
  if (!qword_1EC7F0B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D5157970(&qword_1EDD56738, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    sub_1D5157970(&qword_1EDD56740, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B68);
  }

  return result;
}

unint64_t sub_1D51581F0()
{
  result = qword_1EC7F0B70;
  if (!qword_1EC7F0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AB0, &unk_1D563B178);
    sub_1D4F891B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B70);
  }

  return result;
}

unint64_t sub_1D515827C()
{
  result = qword_1EC7F0B78;
  if (!qword_1EC7F0B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AB8, &unk_1D563B188);
    sub_1D5158308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B78);
  }

  return result;
}

unint64_t sub_1D5158308()
{
  result = qword_1EC7F0B80;
  if (!qword_1EC7F0B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D5157970(&qword_1EDD5C6D0, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    sub_1D5157970(&qword_1EDD5C6D8, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B80);
  }

  return result;
}

unint64_t sub_1D51583F0()
{
  result = qword_1EC7F0B88;
  if (!qword_1EC7F0B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AC0, &unk_1D563B198);
    sub_1D515847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B88);
  }

  return result;
}

unint64_t sub_1D515847C()
{
  result = qword_1EC7F0B90;
  if (!qword_1EC7F0B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    v1 = MEMORY[0x1E6974DD8];
    sub_1D5157970(&qword_1EDD543A0, MEMORY[0x1E6974DD8], MEMORY[0x1E6974DF8]);
    sub_1D5157970(&qword_1EDD543A8, v1, MEMORY[0x1E6974DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B90);
  }

  return result;
}

unint64_t sub_1D5158564()
{
  result = qword_1EC7F0B98;
  if (!qword_1EC7F0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AC8, &unk_1D563B1A8);
    sub_1D5000720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0B98);
  }

  return result;
}

unint64_t sub_1D51585F0()
{
  result = qword_1EC7F0BA0;
  if (!qword_1EC7F0BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AD0, &unk_1D563B1B8);
    sub_1D515867C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BA0);
  }

  return result;
}

unint64_t sub_1D515867C()
{
  result = qword_1EC7F0BA8;
  if (!qword_1EC7F0BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    v1 = MEMORY[0x1E6975FE8];
    sub_1D5157970(&qword_1EDD53138, MEMORY[0x1E6975FE8], MEMORY[0x1E6976008]);
    sub_1D5157970(&qword_1EDD53140, v1, MEMORY[0x1E6975FF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BA8);
  }

  return result;
}

unint64_t sub_1D5158764()
{
  result = qword_1EC7F0BB0;
  if (!qword_1EC7F0BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AD8, &unk_1D563B1C8);
    sub_1D51587F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BB0);
  }

  return result;
}

unint64_t sub_1D51587F0()
{
  result = qword_1EC7EE4A8;
  if (!qword_1EC7EE4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    v1 = MEMORY[0x1E6977468];
    sub_1D5157970(&qword_1EDD52A60, MEMORY[0x1E6977468], MEMORY[0x1E6977488]);
    sub_1D5157970(&qword_1EDD52A68, v1, MEMORY[0x1E6977470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE4A8);
  }

  return result;
}

unint64_t sub_1D51588D8()
{
  result = qword_1EC7F0BB8;
  if (!qword_1EC7F0BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AE0, &unk_1D563B1D8);
    sub_1D5158964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BB8);
  }

  return result;
}

unint64_t sub_1D5158964()
{
  result = qword_1EC7F0BC0;
  if (!qword_1EC7F0BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    v1 = MEMORY[0x1E69762A8];
    sub_1D5157970(&qword_1EDD530F8, MEMORY[0x1E69762A8], MEMORY[0x1E69762C8]);
    sub_1D5157970(&qword_1EDD53100, v1, MEMORY[0x1E69762B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BC0);
  }

  return result;
}

unint64_t sub_1D5158A4C()
{
  result = qword_1EC7F0BC8;
  if (!qword_1EC7F0BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AE8, &unk_1D563B1E8);
    sub_1D5158AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BC8);
  }

  return result;
}

unint64_t sub_1D5158AD8()
{
  result = qword_1EC7F0BD0;
  if (!qword_1EC7F0BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    v1 = MEMORY[0x1E6975B30];
    sub_1D5157970(&qword_1EDD53370, MEMORY[0x1E6975B30], MEMORY[0x1E6975B50]);
    sub_1D5157970(&qword_1EDD53378, v1, MEMORY[0x1E6975B38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BD0);
  }

  return result;
}

unint64_t sub_1D5158BC0()
{
  result = qword_1EC7F0BD8;
  if (!qword_1EC7F0BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AF0, &unk_1D563B1F8);
    sub_1D4F8904C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BD8);
  }

  return result;
}

unint64_t sub_1D5158C4C()
{
  result = qword_1EC7F0BE0;
  if (!qword_1EC7F0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0AF8, &unk_1D563B208);
    sub_1D4FCE7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BE0);
  }

  return result;
}

unint64_t sub_1D5158CD8()
{
  result = qword_1EC7F0BE8;
  if (!qword_1EC7F0BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B00, &unk_1D563B218);
    sub_1D4F89324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BE8);
  }

  return result;
}

unint64_t sub_1D5158D64()
{
  result = qword_1EC7F0BF0;
  if (!qword_1EC7F0BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B08, &qword_1D563B228);
    sub_1D5158DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BF0);
  }

  return result;
}

unint64_t sub_1D5158DF0()
{
  result = qword_1EC7F0BF8;
  if (!qword_1EC7F0BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D5157970(&qword_1EDD56470, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    sub_1D5157970(&qword_1EDD56478, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0BF8);
  }

  return result;
}

unint64_t sub_1D5158ED8()
{
  result = qword_1EC7F0C00;
  if (!qword_1EC7F0C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0B10, &unk_1D563B238);
    sub_1D5158F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0C00);
  }

  return result;
}

unint64_t sub_1D5158F64()
{
  result = qword_1EC7F0C08;
  if (!qword_1EC7F0C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D5157970(&qword_1EDD561D8, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    sub_1D5157970(&qword_1EDD561E0, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0C08);
  }

  return result;
}

uint64_t _s31LegacyModelTVEpisodePropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}