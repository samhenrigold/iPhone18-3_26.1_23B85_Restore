uint64_t sub_1D51EE95C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D51EE9EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t Playlist.Collaboration.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v96 = a1;
  v84 = a4;
  v93 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v97 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v9 - v8);
  v10 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v87 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v14 - v13);
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v94 = v16;
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v79 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF528, &qword_1D56319C8);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = OUTLINED_FUNCTION_48(&v77 - v21);
  v91 = type metadata accessor for PlaylistCollaborationPropertyProvider(v22);
  OUTLINED_FUNCTION_24_0();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v78 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v29 = OUTLINED_FUNCTION_22(v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v77 - v33;
  v82 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v81 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;

  v85 = a2;
  sub_1D560F7E8();
  v90 = sub_1D506930C();
  v89 = sub_1D5614C68();

  sub_1D560FF78();
  OUTLINED_FUNCTION_31_4(v34, 0);
  sub_1D560FF78();
  OUTLINED_FUNCTION_31_4(v32, 0);
  v92 = v39;
  v40 = v96;
  sub_1D560D4D8();
  sub_1D4E7661C(v32, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v34, &qword_1EC7EA358, &unk_1D561DF50);
  v86 = a3;
  sub_1D4EC76A8(a3, v98);
  if (!v99)
  {
    sub_1D4E7661C(v98, &qword_1EC7EEC40, &unk_1D561C070);
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
LABEL_8:
    v41 = v27;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    goto LABEL_8;
  }

  v41 = v27;
  if (!*(&v101 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v100, &qword_1EC7EA368, &unk_1D5629620);
    v43 = v91;
    goto LABEL_10;
  }

  sub_1D4E48324(&v100, &v103);
  __swift_project_boxed_opaque_existential_1(&v103, v104);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v42 = v88;
  v43 = v91;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
    v44 = v78;
    sub_1D50A8B30(v42, v78);
    sub_1D5163A60(v44, v41);
    v45 = v79;
    sub_1D560D718();
    (*(v94 + 40))(&v41[v43[13]], v45, v95);
    v46 = v80;
    sub_1D5612468();
    (*(v87 + 40))(&v41[v43[14]], v46, v10);
    v47 = sub_1D5612458();
    v49 = v48;
    sub_1D50A8BE4(v44);
    v50 = &v41[v43[15]];

    *v50 = v47;
    v50[1] = v49;
    __swift_destroy_boxed_opaque_existential_1(&v103);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  sub_1D4E7661C(v42, &qword_1EC7EF528, &qword_1D56319C8);
  __swift_destroy_boxed_opaque_existential_1(&v103);
LABEL_10:
  v51 = sub_1D560C328();
  OUTLINED_FUNCTION_4_76(v51);
  v52 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4_76(v52);
  v53 = v43[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_31_4(&v41[v53], 1);
  OUTLINED_FUNCTION_31_4(&v41[v43[10]], 1);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4_76(v54);
  (*(v94 + 16))(&v41[v43[13]], v40, v95);
  sub_1D5612468();
  v55 = sub_1D5612458();
  v88 = v56;
  sub_1D5614A88();
  v57 = OUTLINED_FUNCTION_1_105();
  v58 = OUTLINED_FUNCTION_1_105();
  v59 = OUTLINED_FUNCTION_1_105();
  v60 = OUTLINED_FUNCTION_1_105();
  *v41 = 516;
  v41[v43[7]] = 2;
  if (qword_1EC7E8D90 != -1)
  {
    swift_once();
  }

  v61 = qword_1EC87C090;
  if (qword_1EC87C090 >> 62)
  {
    sub_1D560CDE8();

    v76 = sub_1D5615E18();

    v61 = v76;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v41[v43[12]] = v61;
  v62 = &v41[v43[15]];
  v63 = v88;
  *v62 = v55;
  v62[1] = v63;
  *&v41[v43[16]] = v57;
  *&v41[v43[17]] = v58;
  *&v41[v43[18]] = v59;
  *&v41[v43[19]] = v60;
LABEL_15:
  swift_getKeyPath();
  LOBYTE(v103) = 1;
  LODWORD(v88) = *MEMORY[0x1E6976668];
  v64 = v97;
  v87 = *(v97 + 104);
  v80 = v97 + 104;
  v65 = v83;
  v66 = v93;
  (v87)(v83);
  v67 = sub_1D51EFFA8(&qword_1EC7EC8E8, type metadata accessor for PlaylistCollaborationPropertyProvider, &unk_1D5631938);
  sub_1D51EF6C0();
  v79 = v67;
  v68 = v41;
  sub_1D5610D88();

  v69 = *(v64 + 8);
  v69(v65, v66);
  v97 = v64 + 8;
  swift_getKeyPath();
  LOBYTE(v103) = 4;
  v70 = v88;
  v71 = v87;
  (v87)(v65, v88, v66);
  sub_1D5610D68();

  v72 = v93;
  v69(v65, v93);
  swift_getKeyPath();
  LOBYTE(v103) = 0;
  v71(v65, v70, v72);
  sub_1D51EF714();
  v73 = v79;
  sub_1D5610D88();

  v69(v65, v72);
  swift_getKeyPath();
  LOBYTE(v103) = 3;
  (v87)(v65, v88, v72);
  sub_1D5610D68();

  v69(v65, v72);
  v104 = v91;
  v105 = v73;
  v74 = __swift_allocate_boxed_opaque_existential_0(&v103);
  sub_1D5163A60(v68, v74);
  Playlist.Collaboration.init(propertyProvider:)(&v103, v84);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v86, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v94 + 8))(v96, v95);
  (*(v81 + 8))(v92, v82);
  return sub_1D50A8BE4(v68);
}

unint64_t sub_1D51EF6C0()
{
  result = qword_1EC7F1BA8;
  if (!qword_1EC7F1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BA8);
  }

  return result;
}

unint64_t sub_1D51EF714()
{
  result = qword_1EC7F1BB0;
  if (!qword_1EC7F1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BB0);
  }

  return result;
}

uint64_t sub_1D51EF768()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F1B90);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F1B90);
  v2 = *MEMORY[0x1E6976888];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Collaboration.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F1B90);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t Playlist.Collaboration.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v58 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - v6;
  sub_1D4ECCA34();
  v64 = sub_1D5614BD8();
  if (qword_1EC7E8F98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC87C270;
  sub_1D51EFFA8(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  sub_1D51EFFA8(&qword_1EC7F0CA8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_3_104(v8, &type metadata for Playlist.Collaboration.InvitationMode);
  if (v61 == 2)
  {
    v9 = 0;
    v10 = 0;
    *(&v61 + 1) = 0;
    *&v62 = 0;
  }

  else
  {
    if (v61)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v9 = [objc_opt_self() rawValueForSharingMode_];
    v10 = MEMORY[0x1E69E6530];
  }

  *&v61 = v9;
  *(&v62 + 1) = v10;
  v12 = OUTLINED_FUNCTION_7_80();
  sub_1D4EC87F0(v12, 0, v13, v14, v15, v16, v17, v18, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
  if (qword_1EC7E8F80 != -1)
  {
    swift_once();
  }

  v19 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_3_104(qword_1EC87C258, &type metadata for Playlist.Collaborator.Status);
  v20 = 1;
  switch(v61)
  {
    case 1:
      v20 = 3;
      goto LABEL_16;
    case 2:
      goto LABEL_16;
    case 3:
      v20 = 2;
      goto LABEL_16;
    case 4:
      *(&v62 + 1) = MEMORY[0x1E69E6810];
      *&v61 = 0;
      goto LABEL_17;
    default:
      v20 = 4;
LABEL_16:
      v21 = [objc_opt_self() rawValueForCollaboratorStatus_];
      v60 = v19;
      *&v58 = v21;
      sub_1D4E519A8(&v58, &v61);
LABEL_17:
      v22 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v22, 1, v23, v24, v25, v26, v27, v28, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      if (qword_1EC7E8F88 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_3_104(qword_1EC87C260, MEMORY[0x1E69E6370]);
      if (v61 == 2)
      {
        v29 = 0;
        v61 = 0uLL;
        *&v62 = 0;
      }

      else
      {
        LOBYTE(v61) = v61 & 1;
        v29 = MEMORY[0x1E69E6370];
      }

      *(&v62 + 1) = v29;
      v30 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v30, 2, v31, v32, v33, v34, v35, v36, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      if (qword_1EC7E8F90 != -1)
      {
        swift_once();
      }

      v37 = qword_1EC87C268;
      v38 = sub_1D560C328();
      OUTLINED_FUNCTION_3_104(v37, v38);
      if (__swift_getEnumTagSinglePayload(v7, 1, v38) == 1)
      {
        sub_1D4E7661C(v7, &qword_1EC7EA3B8, &unk_1D561E370);
        v61 = 0u;
        v62 = 0u;
      }

      else
      {
        *(&v62 + 1) = v38;
        __swift_allocate_boxed_opaque_existential_0(&v61);
        OUTLINED_FUNCTION_24_0();
        (*(v39 + 32))();
      }

      v40 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v40, 4, v41, v42, v43, v44, v45, v46, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      if (qword_1EC7E8FA0 != -1)
      {
        swift_once();
      }

      v47 = qword_1EC7F0F78;
      v48 = sub_1D560C0A8();
      OUTLINED_FUNCTION_3_104(v47, v48);
      if (__swift_getEnumTagSinglePayload(v3, 1, v48) == 1)
      {
        sub_1D4E7661C(v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v61 = 0u;
        v62 = 0u;
      }

      else
      {
        *(&v62 + 1) = v48;
        __swift_allocate_boxed_opaque_existential_0(&v61);
        OUTLINED_FUNCTION_24_0();
        (*(v49 + 32))();
      }

      v50 = OUTLINED_FUNCTION_7_80();
      sub_1D4EC87F0(v50, 3, v51, v52, v53, v54, v55, v56, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      return v64;
  }
}

uint64_t Playlist.Collaboration.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976888];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D51EFE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D51EFFA8(&qword_1EC7F1BB8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D51EFF1C(uint64_t a1, uint64_t a2)
{
  sub_1D51EFFA8(&qword_1EC7EEFD0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);

  return sub_1D56132F8();
}

uint64_t sub_1D51EFFA8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D51EFFF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D4F03980(0, v2, 0);
  result = v10;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      if (*v4)
      {
        v5 = 0x4E79616C70736964;
      }

      else
      {
        v5 = 0x726F62616C6C6F63;
      }

      if (*v4)
      {
        v6 = 0xEB00000000656D61;
      }

      else
      {
        v6 = 0xED00006E6F697461;
      }

      v11 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D4F03980(v7 > 1, v8 + 1, 1);
        result = v11;
      }

      *(result + 16) = v8 + 1;
      v9 = result + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D51F0124(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v15 = result + 40;
  v16 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v3 = (v15 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = v5 == 0x726F62616C6C6F63 && v6 == 0xED00006E6F697461;
    if (v7 || (sub_1D5616168() & 1) != 0)
    {
      v9 = 0;
      goto LABEL_18;
    }

    if (v5 != 0x4E79616C70736964 || v6 != 0xEB00000000656D61)
    {
      ++v1;
      v3 += 2;
      if ((sub_1D5616168() & 1) == 0)
      {
        continue;
      }
    }

    v9 = 1;
LABEL_18:
    v10 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F00648(0, *(v16 + 16) + 1, 1, v16);
      v10 = v13;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D4F00648(v11 > 1, v12 + 1, 1, v10);
      v10 = v14;
    }

    *(v10 + 16) = v12 + 1;
    v16 = v10;
    *(v10 + v12 + 32) = v9;
    v1 = v4;
    goto LABEL_2;
  }
}

uint64_t CloudUserProfile.Attributes.handle.getter()
{
  type metadata accessor for CloudUserProfile.Attributes(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUserProfile.Attributes.name.getter()
{
  type metadata accessor for CloudUserProfile.Attributes(0);

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudUserProfile.Attributes.url.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Attributes(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 64));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

void static CloudUserProfile.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v102 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v104 = v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v105 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v20 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_38_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_47_5();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_45();
  v106 = v6;
  v26 = *v6;
  v27 = v4;
  v28 = *v4;
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_16;
    }

    sub_1D4EF81E0();
    if ((v29 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v28)
  {
    goto LABEL_16;
  }

  v100 = v12;
  v101 = type metadata accessor for CloudUserProfile.Attributes(0);
  v30 = *(v101 + 20);
  v31 = *(v24 + 48);
  sub_1D4F39AB0(v106 + v30, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v27 + v30, v1 + v31, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1, 1, v18);
  if (v32)
  {
    OUTLINED_FUNCTION_57(v1 + v31, 1, v18);
    if (v32)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_18;
    }

LABEL_14:
    v35 = &qword_1EC7EC330;
    v36 = &qword_1D56222C0;
    v37 = v1;
LABEL_15:
    sub_1D4E50004(v37, v35, v36);
    goto LABEL_16;
  }

  sub_1D4F39AB0(v1, v0, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1 + v31, 1, v18);
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_71();
    v34(v33);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_40_3();
  v38(v2, v1 + v31, v18);
  sub_1D4F39858();
  v39 = sub_1D5614D18();
  v40 = *(v20 + 8);
  v40(v2, v18);
  v41 = OUTLINED_FUNCTION_71();
  (v40)(v41);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v42 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v43 || ((v44 ^ v45) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v46 = *(v101 + 28);
  v47 = (v106 + v46);
  v48 = *(v106 + v46 + 8);
  v49 = (v27 + v46);
  v50 = *(v27 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_96_12();
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_16;
    }

    v55 = *v53 == *v54 && v51 == v52;
    if (!v55 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v52)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v56 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v57 || ((v58 ^ v59) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v60 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v61 || ((v62 ^ v63) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v64 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v65 || ((v66 ^ v67) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v68 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v69 || ((v70 ^ v71) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v72 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v73 || ((v74 ^ v75) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_13_58();
  if (v32)
  {
    if (v76 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v77 || ((v78 ^ v79) & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_96_12();
  if (!v80)
  {
    if (v81)
    {
      goto LABEL_16;
    }

    goto LABEL_84;
  }

  if (v81)
  {
    v84 = *v82 == *v83 && v80 == v81;
    if (v84 || (sub_1D5616168() & 1) != 0)
    {
LABEL_84:
      v85 = *(v103 + 48);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v86, v87, v88, v89);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v90, v91, v92, v93);
      OUTLINED_FUNCTION_57(v105, 1, v7);
      if (v32)
      {
        OUTLINED_FUNCTION_1(v105 + v85);
        if (v32)
        {
          sub_1D4E50004(v105, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_16;
        }
      }

      else
      {
        sub_1D4F39AB0(v105, v104, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_1(v105 + v85);
        if (!v94)
        {
          OUTLINED_FUNCTION_81();
          v95(v100, v105 + v85, v7);
          OUTLINED_FUNCTION_7_81();
          sub_1D51F0C00(v96, v97, MEMORY[0x1E6968FC8]);
          sub_1D5614D18();
          v98 = *(v102 + 8);
          v99 = OUTLINED_FUNCTION_93();
          v98(v99);
          (v98)(v104, v7);
          sub_1D4E50004(v105, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_16;
        }

        (*(v102 + 8))(v104, v7);
      }

      v35 = &qword_1EC7E9FB0;
      v36 = &qword_1D562C590;
      v37 = v105;
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F0C00(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D51F0C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747065636361 && a2 == 0xED0000736D726554;
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
      v7 = a1 == 0xD000000000000014 && 0x80000001D5687B20 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x80000001D5687B40 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72616F626E4F7369 && a2 == 0xEB00000000646564;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001D5687B60 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001D5687B80 == a2;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001D5687BA0 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701667182 && a2 == 0xE400000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 7107189 && a2 == 0xE300000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1D5616168();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1D51F1048(char a1)
{
  result = 0x6465747065636361;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0x656C646E6168;
      break;
    case 5:
      result = 0x7461766972507369;
      break;
    case 6:
      result = 0x6966697265567369;
      break;
    case 7:
      result = 0x72616F626E4F7369;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51F11F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D51F0C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51F1218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D51F1040();
  *a1 = result;
  return result;
}

uint64_t sub_1D51F1240(uint64_t a1)
{
  v2 = sub_1D51F15C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F127C(uint64_t a1)
{
  v2 = sub_1D51F15C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUserProfile.Attributes.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BC8, &unk_1D5642998);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = sub_1D51F15C8();
  OUTLINED_FUNCTION_15_35(&type metadata for CloudUserProfile.Attributes.CodingKeys, v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D51F9A3C(&qword_1EC7ECA00, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_31_33();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for CloudUserProfile.Attributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
    OUTLINED_FUNCTION_17_57(2);
    OUTLINED_FUNCTION_42_25(3);
    sub_1D5616058();
    OUTLINED_FUNCTION_42_25(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_17_57(5);
    OUTLINED_FUNCTION_17_57(6);
    OUTLINED_FUNCTION_17_57(7);
    OUTLINED_FUNCTION_17_57(8);
    OUTLINED_FUNCTION_17_57(9);
    OUTLINED_FUNCTION_17_57(10);
    OUTLINED_FUNCTION_42_25(11);
    sub_1D5616028();
    sub_1D560C0A8();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v6, v7, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
  }

  v8 = OUTLINED_FUNCTION_134_0();
  return v9(v8);
}

unint64_t sub_1D51F15C8()
{
  result = qword_1EDD56F18[0];
  if (!qword_1EDD56F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56F18);
  }

  return result;
}

void CloudUserProfile.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v28[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v28[0] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38_2();
  if (*v0)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v17 = type metadata accessor for CloudUserProfile.Attributes(0);
  sub_1D4F39AB0(v0 + v17[5], v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_12_7(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v19(v1, v2, v11);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v13 + 8))(v1, v11);
  }

  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v20 = v0 + v17[7];
  if (v20[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v21);
  }

  if (*(v0 + v17[8] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_67_22();
  if (!v18)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v0 + v17[15] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v17[16], v10, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v10, 1, v3);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v22 = v28[0];
    OUTLINED_FUNCTION_81();
    v23(v22, v10, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v24, v25, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v26 = OUTLINED_FUNCTION_93();
    v27(v26);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD0, &qword_1D56429A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45();
  v38 = type metadata accessor for CloudUserProfile.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v37 = v21;
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1D51F15C8();
  sub_1D5616398();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D51F9A3C(&qword_1EDD52778, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    *v37 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F886BC();
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    sub_1D4F39A1C(v12, v37 + v38[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_5_80(2);
    *(v37 + v38[6]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(3);
    v22 = sub_1D5615F68();
    v23 = v37 + v38[7];
    *v23 = v22;
    v23[8] = v24 & 1;
    OUTLINED_FUNCTION_5_80(4);
    v25 = sub_1D5615F38();
    v26 = (v37 + v38[8]);
    *v26 = v25;
    v26[1] = v27;
    OUTLINED_FUNCTION_5_80(5);
    *(v37 + v38[9]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(6);
    *(v37 + v38[10]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(7);
    *(v37 + v38[11]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(8);
    *(v37 + v38[12]) = sub_1D5615F48();
    OUTLINED_FUNCTION_5_80(9);
    *(v37 + v38[13]) = sub_1D5615F48();
    OUTLINED_FUNCTION_44_25();
    *(v37 + v38[14]) = sub_1D5615F48();
    OUTLINED_FUNCTION_44_25();
    v28 = sub_1D5615F38();
    v29 = (v37 + v38[15]);
    *v29 = v28;
    v29[1] = v30;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_7_81();
    sub_1D51F0C00(v31, v32, MEMORY[0x1E6968FD0]);
    OUTLINED_FUNCTION_44_25();
    sub_1D5615F78();
    v33 = OUTLINED_FUNCTION_84_11();
    v34(v33);
    sub_1D4F39A1C(v11, v37 + v38[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v35 = OUTLINED_FUNCTION_71();
    sub_1D51F9CFC(v35, v36);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F2138()
{
  v0 = OUTLINED_FUNCTION_94_13();
  v1(v0);
  OUTLINED_FUNCTION_64_5();
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.shareablePlaylists.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 28));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.sharedPlaylists.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 32));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.socialProfile.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 36));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.Relationships.topGenres.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  v1 = type metadata accessor for CloudUserProfile.Relationships(v0);
  v2 = OUTLINED_FUNCTION_152(*(v1 + 40));
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

MusicKitInternal::CloudUserProfile::Relationships::CodingKeys_optional __swiftcall CloudUserProfile.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKitInternal::CloudUserProfile::Relationships::CodingKeys_optional __swiftcall CloudUserProfile.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudUserProfile.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1D51F2360()
{
  result = 0x6565776F6C6C6F66;
  switch(*v0)
  {
    case 1:
      result = 0x7265776F6C6C6F66;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x702D6C6169636F73;
      break;
    case 6:
      result = 0x726E65672D706F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51F247C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudUserProfile.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51F24C0(uint64_t a1)
{
  v2 = sub_1D51F9B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F24FC(uint64_t a1)
{
  v2 = sub_1D51F9B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudUserProfile.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v180 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v182 = v12;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v190 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v187 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v186 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v189 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v188 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v191 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v200 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v196 = v29;
  v30 = OUTLINED_FUNCTION_159();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v184 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v192 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v195 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v178 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BD8, &unk_1D56429B0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v185 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  v194 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_111_9();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v178 - v49;
  v197 = v48;
  v51 = *(v48 + 48);
  v199 = v4;
  sub_1D4F39AB0(v4, &v178 - v49, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v198 = v2;
  sub_1D4F39AB0(v2, &v50[v51], &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v50, 1, v26);
  if (v52)
  {
    OUTLINED_FUNCTION_57(&v50[v51], 1, v26);
    if (v52)
    {
      sub_1D4E50004(v50, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_11;
    }

LABEL_9:
    v55 = &qword_1EC7F1BD8;
    v56 = &unk_1D56429B0;
    v57 = v50;
LABEL_51:
    sub_1D4E50004(v57, v55, v56);
    goto LABEL_52;
  }

  sub_1D4F39AB0(v50, v41, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(&v50[v51], 1, v26);
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_109();
    v54(v53);
    goto LABEL_9;
  }

  v58 = v21;
  v59 = v200;
  v60 = v196;
  (*(v200 + 32))(v196, &v50[v51], v26);
  sub_1D51F9AC8();
  v61 = sub_1D5614D18();
  v62 = v59;
  v21 = v58;
  v63 = *(v62 + 8);
  v63(v60, v26);
  v63(v41, v26);
  sub_1D4E50004(v50, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_11:
  v64 = type metadata accessor for CloudUserProfile.Relationships(0);
  v65 = *(v197 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v66, v67, v68, v69);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v70, v71, v72, v73);
  OUTLINED_FUNCTION_57(v0, 1, v26);
  v74 = v26;
  if (v52)
  {
    OUTLINED_FUNCTION_12_7(v0 + v65);
    if (v52)
    {
      sub_1D4E50004(v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v75 = v195;
  sub_1D4F39AB0(v0, v195, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_12_7(v0 + v65);
  if (v76)
  {
    (*(v200 + 8))(v75, v26);
LABEL_19:
    v55 = &qword_1EC7F1BD8;
    v56 = &unk_1D56429B0;
    v57 = v0;
    goto LABEL_51;
  }

  v77 = v200;
  v78 = v64;
  v79 = v196;
  (*(v200 + 32))(v196, v0 + v65, v74);
  sub_1D51F9AC8();
  OUTLINED_FUNCTION_201();
  v80 = sub_1D5614D18();
  v81 = *(v77 + 8);
  v82 = v79;
  v64 = v78;
  v81(v82, v74);
  v81(v75, v74);
  sub_1D4E50004(v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v80 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_21:
  v83 = *(v197 + 48);
  OUTLINED_FUNCTION_97_3();
  v84 = v194;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v85, v86, v87, v88);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v89, v90, v91, v92);
  OUTLINED_FUNCTION_12_7(v84);
  v93 = v74;
  if (v52)
  {
    OUTLINED_FUNCTION_43_0(v84 + v83);
    if (v52)
    {
      v192 = v74;
      sub_1D4E50004(v84, &qword_1EC7EA7E0, &unk_1D5623AB0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v94 = v192;
  sub_1D4F39AB0(v84, v192, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_43_0(v84 + v83);
  if (v95)
  {
    v96 = OUTLINED_FUNCTION_57_22();
    v97(v96);
LABEL_29:
    v55 = &qword_1EC7F1BD8;
    v56 = &unk_1D56429B0;
    v57 = v84;
    goto LABEL_51;
  }

  v98 = v200;
  v99 = v64;
  v100 = v196;
  (*(v200 + 32))(v196, v84 + v83, v93);
  sub_1D51F9AC8();
  v101 = OUTLINED_FUNCTION_74_0();
  v103 = OUTLINED_FUNCTION_185_1(v101, v102);
  v104 = *(v98 + 8);
  v105 = v100;
  v64 = v99;
  v104(v105, v93);
  v192 = v93;
  v104(v94, v93);
  sub_1D4E50004(v84, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v195 = v64;
  v106 = *(v21 + 48);
  OUTLINED_FUNCTION_97_3();
  v107 = v191;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v108, v109, v110, v111);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v112, v113, v114, v115);
  v116 = v193;
  OUTLINED_FUNCTION_57(v107, 1, v193);
  if (v52)
  {
    OUTLINED_FUNCTION_43_0(v107 + v106);
    if (v52)
    {
      sub_1D4E50004(v107, &qword_1EC7ECD18, &qword_1D5631040);
      goto LABEL_42;
    }

LABEL_39:
    v55 = &qword_1EC7EDA98;
    v56 = &unk_1D5627020;
LABEL_40:
    v57 = v107;
    goto LABEL_51;
  }

  v117 = v189;
  sub_1D4F39AB0(v107, v189, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_43_0(v107 + v106);
  if (v118)
  {
    (*(v190 + 8))(v117, v116);
    goto LABEL_39;
  }

  v119 = v190;
  v120 = v187;
  (*(v190 + 32))(v187, v107 + v106, v116);
  sub_1D50003B4();
  v121 = OUTLINED_FUNCTION_141();
  v123 = OUTLINED_FUNCTION_185_1(v121, v122);
  v124 = *(v119 + 8);
  v124(v120, v116);
  v124(v117, v116);
  sub_1D4E50004(v107, &qword_1EC7ECD18, &qword_1D5631040);
  if ((v123 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_42:
  v125 = *(v21 + 48);
  OUTLINED_FUNCTION_97_3();
  v126 = v188;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v127, v128, v129, v130);
  OUTLINED_FUNCTION_44_22();
  v131 = v193;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v132, v133, v134, v135);
  OUTLINED_FUNCTION_43_0(v126);
  if (v52)
  {
    OUTLINED_FUNCTION_43_0(v126 + v125);
    if (v52)
    {
      sub_1D4E50004(v126, &qword_1EC7ECD18, &qword_1D5631040);
      goto LABEL_54;
    }

LABEL_50:
    v55 = &qword_1EC7EDA98;
    v56 = &unk_1D5627020;
    v57 = v126;
    goto LABEL_51;
  }

  v136 = v186;
  sub_1D4F39AB0(v126, v186, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_43_0(v126 + v125);
  if (v137)
  {
    (*(v190 + 8))(v136, v131);
    goto LABEL_50;
  }

  v138 = v190;
  v139 = v126 + v125;
  v140 = v187;
  (*(v190 + 32))(v187, v139, v131);
  sub_1D50003B4();
  v141 = OUTLINED_FUNCTION_185_1(v136, v140);
  v142 = *(v138 + 8);
  v142(v140, v131);
  v142(v136, v131);
  sub_1D4E50004(v126, &qword_1EC7ECD18, &qword_1D5631040);
  if ((v141 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  v143 = *(v197 + 48);
  OUTLINED_FUNCTION_97_3();
  v107 = v185;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v144, v145, v146, v147);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v148, v149, v150, v151);
  v152 = v192;
  OUTLINED_FUNCTION_57(v107, 1, v192);
  if (v52)
  {
    OUTLINED_FUNCTION_1(v107 + v143);
    if (v52)
    {
      sub_1D4E50004(v107, &qword_1EC7EA7E0, &unk_1D5623AB0);
LABEL_64:
      v160 = v182;
      v161 = *(v181 + 48);
      OUTLINED_FUNCTION_97_3();
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v162, v163, v164, v165);
      OUTLINED_FUNCTION_44_22();
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v166, v167, v168, v169);
      v170 = v183;
      OUTLINED_FUNCTION_57(v160, 1, v183);
      if (v52)
      {
        OUTLINED_FUNCTION_43_0(v160 + v161);
        if (v52)
        {
          sub_1D4E50004(v160, &qword_1EC7EA7F0, &unk_1D561E8C0);
          goto LABEL_52;
        }
      }

      else
      {
        v171 = v179;
        sub_1D4F39AB0(v160, v179, &qword_1EC7EA7F0, &unk_1D561E8C0);
        OUTLINED_FUNCTION_43_0(v160 + v161);
        if (!v172)
        {
          v173 = v180;
          OUTLINED_FUNCTION_40_3();
          v174 = v160 + v161;
          v175 = v178;
          v176(v178, v174, v170);
          sub_1D4F88E6C();
          OUTLINED_FUNCTION_185_1(v171, v175);
          v177 = *(v173 + 8);
          v177(v175, v170);
          v177(v171, v170);
          sub_1D4E50004(v160, &qword_1EC7EA7F0, &unk_1D561E8C0);
          goto LABEL_52;
        }

        (*(v180 + 8))(v171, v170);
      }

      v55 = &qword_1EC7ECA68;
      v56 = &unk_1D5622330;
      v57 = v160;
      goto LABEL_51;
    }

    goto LABEL_62;
  }

  v153 = v184;
  sub_1D4F39AB0(v107, v184, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_1(v107 + v143);
  if (v154)
  {
    (*(v200 + 8))(v153, v152);
LABEL_62:
    v55 = &qword_1EC7F1BD8;
    v56 = &unk_1D56429B0;
    goto LABEL_40;
  }

  v155 = v200;
  v156 = v196;
  (*(v200 + 32))(v196, v107 + v143, v152);
  sub_1D51F9AC8();
  v157 = v152;
  v158 = sub_1D5614D18();
  v159 = *(v155 + 8);
  v159(v156, v157);
  v159(v153, v157);
  sub_1D4E50004(v107, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (v158)
  {
    goto LABEL_64;
  }

LABEL_52:
  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_25_1();
  a26 = v29;
  a27 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BE8, &qword_1D56429C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_31();
  v32 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v34 = sub_1D51F9B4C();
  OUTLINED_FUNCTION_15_35(&type metadata for CloudUserProfile.Relationships.CodingKeys, v35, v34);
  a17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  sub_1D51F9BA0();
  OUTLINED_FUNCTION_38(v27, &a17);
  if (!v28)
  {
    v36 = type metadata accessor for CloudUserProfile.Relationships(0);
    v37 = v36[5];
    a16 = 1;
    OUTLINED_FUNCTION_38(v27 + v37, &a16);
    v38 = v36[6];
    a15 = 2;
    OUTLINED_FUNCTION_38(v27 + v38, &a15);
    a14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    sub_1D5616068();
    a13 = 4;
    sub_1D5616068();
    v39 = v36[9];
    a12 = 5;
    OUTLINED_FUNCTION_38(v27 + v39, &a12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89134();
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
  }

  v40 = OUTLINED_FUNCTION_134_0();
  v41(v40);
  OUTLINED_FUNCTION_26();
}

void CloudUserProfile.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v65[1] = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v65[0] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v74 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v72 = v11;
  v73 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v71 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v69 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v68 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v21 = v20;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_47_5();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v70 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_111_9();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v65 - v29;
  v67 = v1;
  sub_1D4F39AB0(v1, v65 - v29, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v30, 1, v19);
  v76 = v0;
  v77 = v21;
  if (v31)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v32 = OUTLINED_FUNCTION_141();
    v33(v32);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v21 + 8))(v0, v19);
  }

  v66 = type metadata accessor for CloudUserProfile.Relationships(0);
  v34 = v67;
  sub_1D4F39AB0(v67 + *(v66 + 20), v2, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_57(v2, 1, v19);
  v35 = v73;
  if (v31)
  {
    sub_1D56162F8();
  }

  else
  {
    v36 = v76;
    OUTLINED_FUNCTION_40_3();
    v37(v36, v2, v19);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    v38 = OUTLINED_FUNCTION_201();
    v39(v38);
  }

  v40 = v75;
  v41 = v66;
  sub_1D4F39AB0(v34 + *(v66 + 24), v3, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v42 = OUTLINED_FUNCTION_52_22();
  OUTLINED_FUNCTION_57(v42, v43, v19);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v2 = v77;
    (*(v77 + 32))(v76, v3, v19);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v44 = OUTLINED_FUNCTION_201();
    v45(v44);
  }

  v46 = v68;
  sub_1D4F39AB0(v34 + v41[7], v68, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_12_7(v46);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_73_13();
    v48(v47);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v3 + 8))(v2, v35);
  }

  v49 = v69;
  sub_1D4F39AB0(v34 + v41[8], v69, &qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_12_7(v49);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_73_13();
    v51(v50);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v3 + 8))(v2, v35);
  }

  v52 = v70;
  sub_1D4F39AB0(v34 + v41[9], v70, &qword_1EC7EA7E0, &unk_1D5623AB0);
  v53 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v53, v54, v19);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v55 = v76;
    OUTLINED_FUNCTION_40_3();
    v56(v55, v52, v19);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B20C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v57 = OUTLINED_FUNCTION_201();
    v58(v57);
  }

  sub_1D4F39AB0(v34 + v41[10], v74, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v59 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v59, v60, v40);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v61 = OUTLINED_FUNCTION_109();
    v62(v61);
    OUTLINED_FUNCTION_27();
    sub_1D4F89490();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v63 = OUTLINED_FUNCTION_93();
    v64(v63);
  }

  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v76 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v75 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v83 = v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v82 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v81 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v79 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v78 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v20 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_114();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v80 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_4();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_91_13();
  sub_1D56162D8();
  v30 = v1;
  sub_1D4F39AB0(v1, v0, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v0);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_56_21();
    v33(v32, v0, v18);
    OUTLINED_FUNCTION_19_14();
    v34 = sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19(v34);
    v35 = OUTLINED_FUNCTION_55_19();
    v36(v35);
  }

  v37 = type metadata accessor for CloudUserProfile.Relationships(0);
  sub_1D4F39AB0(v1 + v37[5], v29, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v29);
  v38 = v77;
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v39 = OUTLINED_FUNCTION_56_21();
    v40(v39, v29, v18);
    OUTLINED_FUNCTION_19_14();
    v41 = sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19(v41);
    v42 = OUTLINED_FUNCTION_55_19();
    v43(v42);
  }

  sub_1D4F39AB0(v1 + v37[6], v3, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v3);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v44 = OUTLINED_FUNCTION_56_21();
    v45(v44, v3, v18);
    OUTLINED_FUNCTION_19_14();
    v46 = sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19(v46);
    v47 = OUTLINED_FUNCTION_55_19();
    v48(v47);
  }

  v49 = v1 + v37[7];
  v50 = v78;
  sub_1D4F39AB0(v49, v78, &qword_1EC7ECD18, &qword_1D5631040);
  v51 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v51, v52, v38);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v54 = v81;
    v53 = v82;
    OUTLINED_FUNCTION_40_3();
    v55(v54, v50, v38);
    OUTLINED_FUNCTION_19_14();
    v56 = sub_1D4F8B41C();
    OUTLINED_FUNCTION_115_8(v56);
    (*(v53 + 8))(v54, v38);
  }

  v57 = v79;
  sub_1D4F39AB0(v30 + v37[8], v79, &qword_1EC7ECD18, &qword_1D5631040);
  v58 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v58, v59, v38);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v60 = v81;
    OUTLINED_FUNCTION_40_3();
    v61(v60, v57, v38);
    OUTLINED_FUNCTION_19_14();
    v62 = sub_1D4F8B41C();
    OUTLINED_FUNCTION_115_8(v62);
    v63 = OUTLINED_FUNCTION_59_17();
    v64(v63);
  }

  v65 = v80;
  sub_1D4F39AB0(v30 + v37[9], v80, &qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_74(v65);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v66 = OUTLINED_FUNCTION_56_21();
    v67(v66, v65, v18);
    OUTLINED_FUNCTION_19_14();
    v68 = sub_1D4F8B20C();
    OUTLINED_FUNCTION_54_19(v68);
    (*(v20 + 8))(v2, v18);
  }

  v69 = v83;
  sub_1D4F39AB0(v30 + v37[10], v83, &qword_1EC7EA7F0, &unk_1D561E8C0);
  v70 = OUTLINED_FUNCTION_35_1();
  v71 = v84;
  OUTLINED_FUNCTION_57(v70, v72, v84);
  if (v31)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    (*(v76 + 32))(v75, v69, v71);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F89490();
    sub_1D5614CB8();
    v73 = OUTLINED_FUNCTION_134_0();
    v74(v73);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudUserProfile.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  a22 = v26;
  a23 = v27;
  v91 = v24;
  v29 = v28;
  v84 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v85 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v86 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40_4();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v82 - v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_91_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1BF8, &qword_1D56429C8);
  OUTLINED_FUNCTION_4();
  v87 = v49;
  v88 = v50;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v82 - v52;
  v90 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  v92 = v55;
  v93 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1D51F9B4C();
  v89 = v53;
  v56 = v91;
  sub_1D5616398();
  if (v56)
  {
    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  else
  {
    v91 = v25;
    v83 = v44;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    a13 = 0;
    v58 = sub_1D51F9C24();
    OUTLINED_FUNCTION_120_7(v57, &a13, v87, v57);
    v59 = v92;
    sub_1D4F39A1C(v23, v92, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v60 = v48;
    OUTLINED_FUNCTION_85_11();
    sub_1D5615F78();
    v61 = v90;
    sub_1D4F39A1C(v60, v59 + v90[5], &qword_1EC7EA7E0, &unk_1D5623AB0);
    v62 = v91;
    OUTLINED_FUNCTION_85_11();
    sub_1D5615F78();
    v82 = v58;
    sub_1D4F39A1C(v62, v59 + v61[6], &qword_1EC7EA7E0, &unk_1D5623AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000974();
    OUTLINED_FUNCTION_92_11();
    sub_1D5615F78();
    sub_1D4F39A1C(v39, v59 + v90[7], &qword_1EC7ECD18, &qword_1D5631040);
    v63 = v86;
    v64 = OUTLINED_FUNCTION_92_11();
    OUTLINED_FUNCTION_120_7(v64, v65, v66, v67);
    v68 = v63;
    v69 = v90;
    sub_1D4F39A1C(v68, v59 + v90[8], &qword_1EC7ECD18, &qword_1D5631040);
    v70 = v83;
    v71 = OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_120_7(v71, v72, v73, v74);
    sub_1D4F39A1C(v70, v59 + v69[9], &qword_1EC7EA7E0, &unk_1D5623AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    v75 = v85;
    v76 = OUTLINED_FUNCTION_92_11();
    OUTLINED_FUNCTION_120_7(v76, v77, v78, v79);
    v80 = OUTLINED_FUNCTION_86_15();
    v81(v80);
    sub_1D4F39A1C(v75, v59 + v69[10], &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v93);
    sub_1D51F9CFC(v59, type metadata accessor for CloudUserProfile.Relationships);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F49BC(uint64_t a1, int *a2)
{
  v58 = a2;
  v3 = v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v50 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v48 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  sub_1D56162D8();
  v28 = v3;
  sub_1D4F39AB0(v3, v27, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v13) == 1)
  {
    v29 = v14;
    sub_1D56162F8();
  }

  else
  {
    (*(v14 + 32))(v16, v27, v13);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    v29 = v14;
    (*(v14 + 8))(v16, v13);
  }

  v30 = v58;
  v31 = v28;
  sub_1D4F39AB0(v28 + v58[5], v25, &qword_1EC7EA7E0, &unk_1D5623AB0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v13);
  v33 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
    v34 = v29;
  }

  else
  {
    v35 = v25;
    v34 = v29;
    (*(v29 + 32))(v16, v35, v13);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v29 + 8))(v16, v13);
  }

  sub_1D4F39AB0(v28 + v30[6], v22, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v13) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v34 + 32))(v16, v22, v13);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v34 + 8))(v16, v13);
  }

  v36 = v51;
  sub_1D4F39AB0(v28 + v30[7], v51, &qword_1EC7ECD18, &qword_1D5631040);
  v37 = v56;
  if (__swift_getEnumTagSinglePayload(v36, 1, v56) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v39 = v54;
    v38 = v55;
    (*(v55 + 32))(v54, v36, v37);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v37);
  }

  v40 = v52;
  sub_1D4F39AB0(v31 + v30[8], v52, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v40, 1, v37) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v42 = v54;
    v41 = v55;
    (*(v55 + 32))(v54, v40, v37);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    (*(v41 + 8))(v42, v37);
  }

  v43 = v53;
  sub_1D4F39AB0(v31 + v30[9], v53, &qword_1EC7EA7E0, &unk_1D5623AB0);
  if (__swift_getEnumTagSinglePayload(v43, 1, v13) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v34 + 32))(v16, v43, v13);
    sub_1D56162F8();
    sub_1D4F8B20C();
    sub_1D5614CB8();
    (*(v34 + 8))(v16, v13);
  }

  v44 = v57;
  sub_1D4F39AB0(v31 + v30[10], v57, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v33) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v46 = v49;
    v45 = v50;
    (*(v50 + 32))(v49, v44, v33);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v45 + 8))(v46, v33);
  }

  return sub_1D5616328();
}

uint64_t sub_1D51F51EC(uint64_t a1)
{
  v2 = sub_1D51F9D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5228(uint64_t a1)
{
  v2 = sub_1D51F9D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51F532C(uint64_t a1)
{
  v2 = sub_1D51F9DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5368(uint64_t a1)
{
  v2 = sub_1D51F9DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D51F53E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudUserProfile.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_45_4();
  type metadata accessor for CloudUserProfile(v0);
  OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_152(v1);
  return sub_1D51F9CA8();
}

uint64_t sub_1D51F558C()
{
  v0 = OUTLINED_FUNCTION_94_13();
  v1(v0);
  OUTLINED_FUNCTION_64_5();
  return sub_1D4F39AB0(v2, v3, v4, v5);
}

uint64_t CloudUserProfile.views.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUserProfile(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudUserProfile.meta.getter()
{
  v2 = OUTLINED_FUNCTION_45_4();
  result = type metadata accessor for CloudUserProfile(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D51F5674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D560FE68();
  qword_1EDD56E10 = v0;
  return result;
}

void static CloudUserProfile.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_106_0();
  type metadata accessor for CloudUserProfile.Relationships(v3);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C20, &qword_1D56429E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v14 = *v1 == *v0 && v1[1] == v0[1];
  if (v14 || (sub_1D5616168() & 1) != 0)
  {
    v15 = type metadata accessor for CloudUserProfile(0);
    static CloudUserProfile.Attributes.== infix(_:_:)();
    if (v16)
    {
      v23 = v7;
      v17 = *(v15 + 24);
      v18 = *(v12 + 48);
      sub_1D4F39AB0(v1 + v17, v2, &qword_1EC7ECD48, &qword_1D56429E0);
      sub_1D4F39AB0(v0 + v17, v2 + v18, &qword_1EC7ECD48, &qword_1D56429E0);
      OUTLINED_FUNCTION_74(v2);
      if (!v14)
      {
        sub_1D4F39AB0(v2, v11, &qword_1EC7ECD48, &qword_1D56429E0);
        OUTLINED_FUNCTION_74(v2 + v18);
        if (!v19)
        {
          v21 = v23;
          sub_1D51F9F18();
          OUTLINED_FUNCTION_93();
          static CloudUserProfile.Relationships.== infix(_:_:)();
          sub_1D51F9CFC(v21, type metadata accessor for CloudUserProfile.Relationships);
          sub_1D51F9CFC(v11, type metadata accessor for CloudUserProfile.Relationships);
          sub_1D4E50004(v2, &qword_1EC7ECD48, &qword_1D56429E0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_1_106();
        sub_1D51F9CFC(v11, v20);
LABEL_15:
        sub_1D4E50004(v2, &qword_1EC7F1C20, &qword_1D56429E8);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_74(v2 + v18);
      if (!v14)
      {
        goto LABEL_15;
      }

      sub_1D4E50004(v2, &qword_1EC7ECD48, &qword_1D56429E0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F59F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51F5A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D51F5AE0(uint64_t a1)
{
  v2 = sub_1D51F9E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51F5B1C(uint64_t a1)
{
  v2 = sub_1D51F9E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudUserProfile.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C28, &qword_1D56429F0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = sub_1D51F9E1C();
  OUTLINED_FUNCTION_15_35(&type metadata for CloudUserProfile.CodingKeys, v5, v4);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v0)
  {
    type metadata accessor for CloudUserProfile(0);
    type metadata accessor for CloudUserProfile.Attributes(0);
    OUTLINED_FUNCTION_49_20();
    sub_1D51F0C00(v6, v7, &protocol conformance descriptor for CloudUserProfile.Attributes);
    OUTLINED_FUNCTION_31_33();
    sub_1D56160C8();
    type metadata accessor for CloudUserProfile.Relationships(0);
    OUTLINED_FUNCTION_48_23();
    sub_1D51F0C00(v8, v9, &protocol conformance descriptor for CloudUserProfile.Relationships);
    OUTLINED_FUNCTION_31_33();
    sub_1D5616068();
    sub_1D51F9E70();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D51F9EC4();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  v10 = OUTLINED_FUNCTION_134_0();
  return v11(v10);
}

uint64_t CloudUserProfile.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for CloudUserProfile(0);
  CloudUserProfile.Attributes.hash(into:)();
  sub_1D4F86798();
  sub_1D56162F8();
  return sub_1D56162F8();
}

uint64_t sub_1D51F5E40(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudUserProfile.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v20 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for CloudUserProfile.Attributes(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C50, &qword_1D56429F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_114();
  v9 = type metadata accessor for CloudUserProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51F9E1C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v13 = v21;
    v13[1] = v22;
    OUTLINED_FUNCTION_49_20();
    sub_1D51F0C00(v14, v15, &protocol conformance descriptor for CloudUserProfile.Attributes);
    sub_1D5615FD8();
    sub_1D51F9F18();
    type metadata accessor for CloudUserProfile.Relationships(0);
    OUTLINED_FUNCTION_48_23();
    sub_1D51F0C00(v16, v17, &protocol conformance descriptor for CloudUserProfile.Relationships);
    sub_1D5615F78();
    sub_1D4F39A1C(v20, v13 + v9[6], &qword_1EC7ECD48, &qword_1D56429E0);
    sub_1D51F9F6C();
    OUTLINED_FUNCTION_128_1(&type metadata for CloudUserProfile.Associations);
    *(v13 + v9[7]) = 2;
    sub_1D51F9FC0();
    OUTLINED_FUNCTION_128_1(&type metadata for CloudUserProfile.Metadata);
    v18 = OUTLINED_FUNCTION_51_1();
    v19(v18);
    *(v13 + v9[8]) = 2;
    sub_1D51F9CA8();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D51F9CFC(v13, type metadata accessor for CloudUserProfile);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D51F6338(uint64_t a1)
{
  v2 = sub_1D51F0C00(&qword_1EC7F1CD8, type metadata accessor for CloudUserProfile, &protocol conformance descriptor for CloudUserProfile);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D51F63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void UserProfile.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v334 = v23;
  v335 = v24;
  v333[1] = v25;
  v27 = v26;
  v319 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v329 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v326 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  v330 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  v328 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  v332 = v59;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v65 = OUTLINED_FUNCTION_22(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  v327 = v66;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v71);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v74);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v76);
  v331 = type metadata accessor for CloudUserProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  v336 = v78;
  v79 = OUTLINED_FUNCTION_70_0();
  v80 = type metadata accessor for UserProfilePropertyProvider(v79);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5();
  v84 = (v83 - v82);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_47_5();
  v87 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v89 = v88;
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5();
  v93 = v92 - v91;
  if (qword_1EDD53D28 != -1)
  {
    swift_once();
  }

  v94 = sub_1D560D9A8();
  __swift_project_value_buffer(v94, qword_1EDD53D30);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1C58, &unk_1D5642A00);
  OUTLINED_FUNCTION_159();
  sub_1D56105B8();
  sub_1D4E50004(v20, &qword_1EC7EB5C0, &unk_1D56223C0);
  v99 = v80[5];
  v100 = sub_1D56140F8();
  v305 = v99;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  OUTLINED_FUNCTION_33();
  v304 = v100;
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v100);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
  v111 = OUTLINED_FUNCTION_40_5(v80[20]);
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v107);
  v114 = OUTLINED_FUNCTION_40_5(v80[21]);
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v107);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v117);
  v121 = OUTLINED_FUNCTION_40_5(v80[23]);
  v324 = v117;
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v117);
  v124 = OUTLINED_FUNCTION_40_5(v80[24]);
  v337 = v107;
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_33();
  v314 = v127;
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
  v316 = v89;
  v315 = v93;
  v317 = v87;
  (*(v89 + 16))(v84 + v80[27], v93, v87);
  sub_1D5610658();
  v303 = sub_1D5610618();
  v132 = v131;
  v133 = sub_1D56105C8();
  v134 = sub_1D56105F8();
  v135 = sub_1D56105E8();
  v136 = sub_1D56105A8();
  *(v84 + v80[10]) = 2;
  v333[0] = v80;
  v137 = v80[13];
  v338 = v84;
  *(v84 + v137) = 2;
  if (qword_1EDD54F08 != -1)
  {
    swift_once();
  }

  v138 = qword_1EDD76B68;
  if (qword_1EDD76B68 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_109();
    v299 = sub_1D5615E18();

    v138 = v299;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v139 = v333[0];
  v140 = v338;
  *(v338 + *(v333[0] + 104)) = v138;
  v141 = v140;
  v142 = (v140 + v139[29]);
  *v142 = v303;
  v142[1] = v132;
  v143 = v139;
  *(v140 + v139[30]) = v133;
  *(v140 + v139[31]) = v134;
  *(v140 + v139[32]) = v135;
  *(v140 + v139[33]) = v136;
  sub_1D5610648();
  v144 = (v336 + *(v331 + 20));
  v145 = *v144;
  if (*v144)
  {
    sub_1D51F0124(v145);
  }

  *v141 = v145;
  v146 = type metadata accessor for CloudUserProfile.Attributes(0);
  sub_1D4F39AB0(v144 + v146[5], v306, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v306);
  v320 = v27;
  if (v174)
  {
    sub_1D4E50004(v306, &qword_1EC7EB5B8, &unk_1D56206A0);
    v150 = 1;
    v147 = v308;
  }

  else
  {
    v147 = v308;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v148 = OUTLINED_FUNCTION_159();
    v149(v148);
    v150 = 0;
  }

  __swift_storeEnumTagSinglePayload(v147, v150, 1, v304);
  v151 = v143[7];
  v152 = v141 + v143[8];
  v153 = (v338 + v143[9]);
  v307 = v143[11];
  v309 = v143[12];
  v154 = v147;
  v156 = v143[14];
  v155 = v143[15];
  v158 = v143[16];
  v157 = v143[17];
  v159 = (v338 + v143[18]);
  sub_1D4E68940(v154, v338 + v305, &qword_1EC7E9CA0, &unk_1D561A0C0);
  *(v338 + v151) = *(v144 + v146[6]);
  v160 = v144 + v146[7];
  v161 = *v160;
  LOBYTE(v160) = v160[8];
  *v152 = v161;
  v152[8] = v160;
  v162 = (v144 + v146[8]);
  v163 = v162[1];
  *v153 = *v162;
  v153[1] = v163;
  v164 = v338;
  *(v338 + v158) = *(v144 + v146[9]);
  *(v164 + v157) = *(v144 + v146[10]);
  *(v164 + v156) = *(v144 + v146[11]);
  *(v164 + v155) = *(v144 + v146[12]);
  *(v164 + v307) = *(v144 + v146[13]);
  *(v164 + v309) = *(v144 + v146[14]);
  v165 = (v144 + v146[15]);
  v166 = v165[1];
  *v159 = *v165;
  v159[1] = v166;
  v167 = *(v331 + 24);
  v168 = v336;
  sub_1D4F39AB0(v336 + v167, v310, &qword_1EC7ECD48, &qword_1D56429E0);
  v169 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_12_7(v310);
  if (v174)
  {

    v170 = &qword_1EC7ECD48;
    v171 = &qword_1D56429E0;
    v172 = v310;
  }

  else
  {
    sub_1D4F39AB0(v310, v300, &qword_1EC7EA7E0, &unk_1D5623AB0);

    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v310, v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v300);
    if (!v174)
    {
      v175 = sub_1D560CD98();
      v168 = v330;
      v178 = OUTLINED_FUNCTION_15_4(v330, v176, v177, v175);
      type metadata accessor for SocialProfile(v178);
      sub_1D51F0C00(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v179, type metadata accessor for SocialProfile, v180);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v181 = sub_1D5612368();
      OUTLINED_FUNCTION_116_11(v181, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v182 = OUTLINED_FUNCTION_159();
      v183(v182);
      v184 = 0;
      goto LABEL_19;
    }

    v170 = &qword_1EC7EA7E0;
    v171 = &unk_1D5623AB0;
    v172 = v300;
  }

  sub_1D4E50004(v172, v170, v171);
  v184 = 1;
LABEL_19:
  v185 = v332;
  v186 = v328;
  v187 = v323;
  OUTLINED_FUNCTION_122_6(v321, v184);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v321, v188, v189, v190);
  OUTLINED_FUNCTION_117_8(v168 + v167, &qword_1EC7ECD48, &qword_1D56429E0, v333);
  OUTLINED_FUNCTION_12_7(v321);
  if (v174)
  {
    v191 = &qword_1EC7ECD48;
    v192 = &qword_1D56429E0;
    v193 = v321;
  }

  else
  {
    sub_1D4F39AB0(v321 + v169[5], v311, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v321, v194);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v311);
    if (!v196)
    {
      v197 = sub_1D560CD98();
      v168 = v330;
      v200 = OUTLINED_FUNCTION_15_4(v330, v198, v199, v197);
      type metadata accessor for SocialProfile(v200);
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v201, v332, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v202, v332, v203);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v204 = sub_1D5612368();
      v187 = v323;
      v186 = v328;
      v185 = v332;
      OUTLINED_FUNCTION_116_11(v204, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v205 + 8))(v311, v195);
      v206 = 0;
      goto LABEL_26;
    }

    v191 = &qword_1EC7EA7E0;
    v192 = &unk_1D5623AB0;
    v193 = v311;
  }

  sub_1D4E50004(v193, v191, v192);
  v206 = 1;
LABEL_26:
  v207 = v329;
  OUTLINED_FUNCTION_122_6(v322, v206);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v322, v208, v209, v210);
  sub_1D4F39AB0(v168 + v167, v187, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_12_7(v187);
  if (v174)
  {
    sub_1D4E50004(v187, &qword_1EC7ECD48, &qword_1D56429E0);
    v211 = 1;
    v212 = v185;
  }

  else
  {
    sub_1D4F39AB0(v187 + v169[6], v301, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v187, v213);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v301);
    if (!v214)
    {
      v215 = sub_1D560CD98();
      v168 = v330;
      v218 = OUTLINED_FUNCTION_15_4(v330, v216, v217, v215);
      type metadata accessor for SocialProfile(v218);
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v219, v185, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      v220 = v185;
      v221 = v325;
      sub_1D51F0C00(v222, v220, v223);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      OUTLINED_FUNCTION_109_13();
      v224 = sub_1D5612368();
      v186 = v328;
      v212 = v332;
      OUTLINED_FUNCTION_116_11(v224, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v225 = OUTLINED_FUNCTION_159();
      v226(v225);
      v211 = 0;
      v207 = v329;
      goto LABEL_33;
    }

    v212 = v185;
    sub_1D4E50004(v301, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v211 = 1;
    v207 = v329;
  }

  v221 = v325;
LABEL_33:
  OUTLINED_FUNCTION_122_6(v312, v211);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v312, v227, v228, v229);
  sub_1D4F39AB0(v168 + v167, v186, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_12_7(v186);
  if (v174)
  {
    sub_1D4E50004(v186, &qword_1EC7ECD48, &qword_1D56429E0);
    v230 = 1;
    v231 = v313;
  }

  else
  {
    sub_1D4F39AB0(v186 + v169[7], v207, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v186, v232);
    v233 = v207;
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v233);
    v231 = v313;
    if (v234)
    {
      sub_1D4E50004(v233, &qword_1EC7ECD18, &qword_1D5631040);
      v230 = 1;
    }

    else
    {
      v235 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v330, v236, v237, v235);
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      sub_1D51F0C00(v238, v239, MEMORY[0x1E69773B8]);
      OUTLINED_FUNCTION_83_12();
      OUTLINED_FUNCTION_64_5();
      sub_1D5612368();
      v212 = v332;
      v221 = v325;
      sub_1D4E50004(v330, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v240 = OUTLINED_FUNCTION_159();
      v241(v240);
      v230 = 0;
    }
  }

  v242 = v324;
  __swift_storeEnumTagSinglePayload(v231, v230, 1, v324);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v231, v243, v244, v245);
  OUTLINED_FUNCTION_117_8(v168 + v167, &qword_1EC7ECD48, &qword_1D56429E0, &v338);
  OUTLINED_FUNCTION_12_7(v207);
  if (v174)
  {
    v246 = &qword_1EC7ECD48;
    v247 = &qword_1D56429E0;
    v248 = v207;
  }

  else
  {
    sub_1D4F39AB0(v207 + v169[8], v221, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v207, v249);
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v221);
    if (!v251)
    {
      v252 = sub_1D560CD98();
      v253 = v221;
      v221 = v330;
      OUTLINED_FUNCTION_15_4(v330, v254, v255, v252);
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      sub_1D51F0C00(v256, v257, MEMORY[0x1E69773B8]);
      OUTLINED_FUNCTION_83_12();
      OUTLINED_FUNCTION_64_5();
      sub_1D5612368();
      v242 = v324;
      v212 = v332;
      sub_1D4E50004(v330, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v258 + 8))(v253, v250);
      v259 = 0;
      goto LABEL_46;
    }

    v246 = &qword_1EC7ECD18;
    v247 = &qword_1D5631040;
    v248 = v221;
  }

  sub_1D4E50004(v248, v246, v247);
  v259 = 1;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v326, v259, 1, v242);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v326, v260, v261, v262);
  OUTLINED_FUNCTION_117_8(v168 + v167, &qword_1EC7ECD48, &qword_1D56429E0, v340);
  OUTLINED_FUNCTION_12_7(v326);
  if (v174)
  {
    sub_1D4E50004(v326, &qword_1EC7ECD48, &qword_1D56429E0);
    v263 = 1;
    v265 = v334;
    v264 = v335;
  }

  else
  {
    sub_1D4F39AB0(v326 + v169[9], v212, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v326, v266);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_1(v212);
    v265 = v334;
    if (v267)
    {
      sub_1D4E50004(v212, &qword_1EC7EA7E0, &unk_1D5623AB0);
      v263 = 1;
      v264 = v335;
    }

    else
    {
      v268 = sub_1D560CD98();
      v168 = v330;
      v271 = OUTLINED_FUNCTION_15_4(v330, v269, v270, v268);
      type metadata accessor for SocialProfile(v271);
      OUTLINED_FUNCTION_15_61();
      sub_1D51F0C00(v272, v221, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v273, v221, v274);
      OUTLINED_FUNCTION_58_21();
      OUTLINED_FUNCTION_105_11();
      v264 = v335;
      OUTLINED_FUNCTION_109_13();
      v275 = sub_1D5612368();
      OUTLINED_FUNCTION_116_11(v275, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v276 = OUTLINED_FUNCTION_159();
      v277(v276);
      v263 = 0;
    }
  }

  OUTLINED_FUNCTION_122_6(v327, v263);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v327, v278, v279, v280);
  OUTLINED_FUNCTION_117_8(v168 + v167, &qword_1EC7ECD48, &qword_1D56429E0, &a10);
  OUTLINED_FUNCTION_12_7(v327);
  if (v174)
  {
    sub_1D4E50004(v327, &qword_1EC7ECD48, &qword_1D56429E0);
    v281 = 1;
    v282 = v318;
  }

  else
  {
    sub_1D4F39AB0(v327 + v169[10], v302, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_1_106();
    sub_1D51F9CFC(v327, v283);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_1(v302);
    v282 = v318;
    if (v284)
    {
      sub_1D4E50004(v302, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v281 = 1;
    }

    else
    {
      v285 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v330, v286, v287, v285);
      sub_1D5613C48();
      OUTLINED_FUNCTION_46_20();
      sub_1D51F0C00(v288, v289, MEMORY[0x1E6976DB0]);
      OUTLINED_FUNCTION_83_12();
      sub_1D5612368();
      sub_1D4E50004(v330, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v290 = OUTLINED_FUNCTION_134_0();
      v291(v290);
      v281 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v282, v281, 1, v314);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v282, v292, v293, v294);
  v340[0] = v333[0];
  v340[1] = sub_1D51F0C00(&qword_1EDD54EF0, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E6A0);
  __swift_allocate_boxed_opaque_existential_0(v339);
  sub_1D51F9CA8();
  UserProfile.init(propertyProvider:)(v339, v319);

  OUTLINED_FUNCTION_24_0();
  (*(v295 + 8))(v265, v264);
  OUTLINED_FUNCTION_24_0();
  (*(v296 + 8))(v320);
  sub_1D51F9CFC(v168, type metadata accessor for CloudUserProfile);
  (*(v316 + 8))(v315, v317);
  v297 = OUTLINED_FUNCTION_134_0();
  sub_1D51F9CFC(v297, v298);
  OUTLINED_FUNCTION_46();
}

void UserProfile.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v1;
  v247 = v4;
  v271 = v5;
  v272 = v6;
  v254 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = sub_1D5610088();
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v19);
  v252 = sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v251 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v261 = v22;
  v23 = OUTLINED_FUNCTION_70_0();
  v249 = type metadata accessor for CloudUserProfile(v23);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v260 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  v258 = v34;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v269 = v36;
  v270 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v268 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_91_13();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_135();
  v265 = v51;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  v266 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v55 = OUTLINED_FUNCTION_22(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  v264 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  v267 = v62;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  v273 = v64;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_2();
  v275 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  v68 = OUTLINED_FUNCTION_22(v67);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v233 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v72);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_38_2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v74);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  v259 = v76;
  v77 = OUTLINED_FUNCTION_70_0();
  v78 = type metadata accessor for CloudUserProfile.Attributes(v77);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  v263 = v80;
  if (qword_1EDD54140 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDD76948;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
  v83 = sub_1D51F0C00(&qword_1EDD57E88, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
  sub_1D51F0C00(&qword_1EDD57E78, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
  OUTLINED_FUNCTION_29_37(v81, v82);
  if (v276)
  {
    v84 = v276;
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  v246 = sub_1D51EFFF0(v84);

  if (qword_1EDD54088 != -1)
  {
    swift_once();
  }

  v85 = qword_1EDD768F8;
  v86 = sub_1D56140F8();
  OUTLINED_FUNCTION_29_37(v85, v86);
  v87 = OUTLINED_FUNCTION_52_22();
  OUTLINED_FUNCTION_57(v87, v88, v86);
  if (v89)
  {
    sub_1D4E50004(v2, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v90 = v259;
  }

  else
  {
    v90 = v259;
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    (*(v91 + 8))(v2, v86);
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_24_8(v90, v93, v94, v92);
  if (qword_1EDD540D8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76928, MEMORY[0x1E69E6370]);
  v95 = v276;
  if (qword_1EDD540B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76910, MEMORY[0x1E69E6530]);
  v245 = v276;
  v244 = v277;
  if (qword_1EDD54098 != -1)
  {
    swift_once();
  }

  v274 = v71;
  v262 = v0;
  OUTLINED_FUNCTION_18_55(qword_1EDD76900, MEMORY[0x1E69E6158]);
  v243 = v276;
  v242 = v277;
  if (qword_1EDD54050 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD768F0, MEMORY[0x1E69E6370]);
  v96 = v276;
  if (qword_1EDD54158 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76960, MEMORY[0x1E69E6370]);
  v241 = v276;
  if (qword_1EDD54150 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76958, MEMORY[0x1E69E6370]);
  v97 = v276;
  if (qword_1EDD540E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76930, MEMORY[0x1E69E6370]);
  v98 = v276;
  if (qword_1EDD540C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76920, MEMORY[0x1E69E6370]);
  v99 = v276;
  if (qword_1EDD540C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76918, MEMORY[0x1E69E6370]);
  v100 = v95 & 1;
  v236 = v96 & 1;
  v237 = v241 & 1;
  v238 = v97 & 1;
  v239 = v98 & 1;
  v240 = v99 & 1;
  v241 = v276 & 1;
  if (qword_1EDD540A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_55(qword_1EDD76908, MEMORY[0x1E69E6158]);
  v101 = v276;
  v102 = v277;
  if (qword_1EC7E9148 != -1)
  {
    swift_once();
  }

  v103 = qword_1EC87C380;
  v104 = sub_1D560C0A8();
  v105 = v263;
  OUTLINED_FUNCTION_29_37(v103, v104);
  *v105 = v246;
  sub_1D4F39A1C(v259, v105 + v78[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v105 + v78[6]) = v100;
  v106 = v105 + v78[7];
  *v106 = v245;
  v106[8] = v244;
  v107 = (v105 + v78[8]);
  v108 = v242;
  *v107 = v243;
  v107[1] = v108;
  OUTLINED_FUNCTION_77_9(v78[9]);
  OUTLINED_FUNCTION_77_9(v78[10]);
  OUTLINED_FUNCTION_77_9(v78[11]);
  OUTLINED_FUNCTION_77_9(v78[12]);
  OUTLINED_FUNCTION_77_9(v78[13]);
  OUTLINED_FUNCTION_77_9(v78[14]);
  v109 = (v105 + v78[15]);
  *v109 = v101;
  v109[1] = v102;
  v110 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v110);
  if (qword_1EDD54070 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDD54078;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_29_37(v114, v115);
  v116 = v262;
  if (qword_1EDD54058 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37(qword_1EDD54060, v115);
  if (qword_1EDD54120 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37(qword_1EDD54128, v115);
  if (qword_1EDD540F8 != -1)
  {
    swift_once();
  }

  v117 = qword_1EDD54100;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_29_37(v117, v118);
  if (qword_1EDD54130 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37(qword_1EDD54138, v118);
  if (qword_1EDD54168 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_37(qword_1EDD54170, v115);
  if (qword_1EDD54040 != -1)
  {
    swift_once();
  }

  v119 = qword_1EDD54048;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_29_37(v119, v259);
  OUTLINED_FUNCTION_12_7(v275);
  if (!v89 || (OUTLINED_FUNCTION_12_7(v273), !v89) || (OUTLINED_FUNCTION_12_7(v267), !v89) || (OUTLINED_FUNCTION_57(v266, 1, v118), !v89) || (OUTLINED_FUNCTION_57(v265, 1, v118), !v89) || (OUTLINED_FUNCTION_12_7(v264), !v89) || (OUTLINED_FUNCTION_57(v116, 1, v259), !v89))
  {
    v246 = v118;
    v120 = v110;
    v121 = v233[0];
    sub_1D4F39AB0(v275, v233[0], &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_12_7(v121);
    if (v89)
    {
      sub_1D4E50004(v121, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v122, v83, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v123, v83, v124);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v125);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v126(v83);
      OUTLINED_FUNCTION_24_0();
      (*(v127 + 8))(v121, v115);
    }

    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v128);
    OUTLINED_FUNCTION_74_15();
    sub_1D4F39AB0(v129, v130, v131, v132);
    OUTLINED_FUNCTION_12_7(v102);
    v133 = v120;
    if (v89)
    {
      sub_1D4E50004(v102, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v134, v83, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v135, v83, v136);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v137);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v138(v83);
      OUTLINED_FUNCTION_24_0();
      (*(v139 + 8))(v102, v115);
    }

    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v140);
    OUTLINED_FUNCTION_74_15();
    sub_1D4F39AB0(v141, v142, v143, v144);
    OUTLINED_FUNCTION_12_7(v102);
    v145 = v246;
    if (v89)
    {
      sub_1D4E50004(v102, &qword_1EC7EA778, &qword_1D5622E60);
      v151 = v256;
    }

    else
    {
      type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v146, v83, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v147, v83, v148);
      v149 = v268;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v150);
      v151 = v256;
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v152(v149);
      OUTLINED_FUNCTION_24_0();
      (*(v153 + 8))(v102, v115);
    }

    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_24_8(v151, v155, v156, v154);
    OUTLINED_FUNCTION_74_15();
    sub_1D4F39AB0(v157, v158, v159, v160);
    v161 = OUTLINED_FUNCTION_52_22();
    OUTLINED_FUNCTION_57(v161, v162, v145);
    if (v89)
    {
      sub_1D4E50004(v102, &qword_1EC7EB620, &unk_1D561E5B0);
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      v151 = sub_1D51F0C00(v163, v164, MEMORY[0x1E69773B8]);
      v165 = v268;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v166);
      OUTLINED_FUNCTION_101_6(v271, v165);
      OUTLINED_FUNCTION_75_15();
      v167(v165);
      OUTLINED_FUNCTION_24_0();
      (*(v168 + 8))(v102, v145);
    }

    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_51_23(v169);
    OUTLINED_FUNCTION_74_15();
    sub_1D4F39AB0(v170, v171, v172, v173);
    v174 = OUTLINED_FUNCTION_52_22();
    OUTLINED_FUNCTION_57(v174, v175, v145);
    if (v89)
    {
      sub_1D4E50004(v102, &qword_1EC7EB620, &unk_1D561E5B0);
      v180 = v234;
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_6_73();
      v151 = sub_1D51F0C00(v176, v177, MEMORY[0x1E69773B8]);
      v178 = v268;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v179);
      v180 = v234;
      OUTLINED_FUNCTION_101_6(v271, v178);
      OUTLINED_FUNCTION_75_15();
      v181(v178);
      OUTLINED_FUNCTION_24_0();
      (*(v182 + 8))(v102, v145);
    }

    v183 = v233[5];
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_24_8(v180, v185, v186, v184);
    sub_1D4F39AB0(v264, v183, &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_12_7(v183);
    if (v89)
    {
      sub_1D4E50004(v183, &qword_1EC7EA778, &qword_1D5622E60);
    }

    else
    {
      type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_8_71();
      sub_1D51F0C00(v187, v151, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_10_1();
      sub_1D51F0C00(v188, v151, v189);
      OUTLINED_FUNCTION_20_52();
      sub_1D4F1ABE8(v190);
      OUTLINED_FUNCTION_32_36();
      sub_1D560DA98();
      OUTLINED_FUNCTION_75_15();
      v191(v151);
      OUTLINED_FUNCTION_24_0();
      (*(v192 + 8))(v183, v115);
    }

    v193 = v235;
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
    OUTLINED_FUNCTION_51_23(v194);
    OUTLINED_FUNCTION_74_15();
    sub_1D4F39AB0(v195, v196, v197, v198);
    v199 = OUTLINED_FUNCTION_52_22();
    v200 = v259;
    OUTLINED_FUNCTION_57(v199, v201, v259);
    v202 = v3;
    if (v89)
    {
      v208 = v274;
      sub_1D4E50004(v274, &qword_1EC7ECD48, &qword_1D56429E0);
      sub_1D4E50004(v183, &qword_1EC7EA788, &unk_1D56223A0);
    }

    else
    {
      sub_1D5613C48();
      OUTLINED_FUNCTION_46_20();
      sub_1D51F0C00(v203, v204, MEMORY[0x1E6976DB0]);
      v205 = v268;
      OUTLINED_FUNCTION_21_45();
      sub_1D4F1ABE8(v206);
      sub_1D560DA98();
      (*(v269 + 8))(v205, v270);
      v207 = v200;
      v208 = v274;
      sub_1D4E50004(v274, &qword_1EC7ECD48, &qword_1D56429E0);
      OUTLINED_FUNCTION_24_0();
      (*(v209 + 8))(v183, v207);
    }

    v210 = v256;
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v193, v212, v213, v211);
    OUTLINED_FUNCTION_74_15();
    OUTLINED_FUNCTION_118_9(v214, v215);
    OUTLINED_FUNCTION_118_9(v255, v183 + v133[5]);
    OUTLINED_FUNCTION_118_9(v210, v183 + v133[6]);
    sub_1D4F39A1C(v258, v183 + v133[7], &qword_1EC7ECD18, &qword_1D5631040);
    sub_1D4F39A1C(v180, v183 + v133[8], &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_118_9(v257, v183 + v133[9]);
    sub_1D4F39A1C(v193, v183 + v133[10], &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_storeEnumTagSinglePayload(v183, 0, 1, v133);
    sub_1D4F39A1C(v183, v208, &qword_1EC7ECD48, &qword_1D56429E0);
    v3 = v202;
  }

  v216 = *v3;
  v217 = v3[1];
  v218 = v249;
  OUTLINED_FUNCTION_47_28();
  v272 = v219;
  v220 = v250;
  sub_1D51F9CA8();
  sub_1D4F39AB0(v274, v220 + v218[6], &qword_1EC7ECD48, &qword_1D56429E0);
  *v220 = v216;
  v220[1] = v217;
  *(v220 + v218[7]) = 1;
  *(v220 + v218[8]) = 1;
  type metadata accessor for UserProfile(0);

  v221 = v248;
  sub_1D5611A28();
  v222 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v221, 0, 1, v222);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v223, v224, v225, v226);
  v227 = v261;
  OUTLINED_FUNCTION_109();
  sub_1D5612B38();
  v271 = type metadata accessor for CloudUserProfile;
  sub_1D51F9CA8();
  sub_1D5611A98();
  v228 = sub_1D5611A88();
  v269 = v229;
  v270 = v228;
  v230 = v251;
  v231 = v253;
  v232 = v252;
  (*(v251 + 16))(v253, v227, v252);
  __swift_storeEnumTagSinglePayload(v231, 0, 1, v232);
  v268 = sub_1D5611A38();
  v259 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D51F0C00(&qword_1EDD56D18, type metadata accessor for CloudUserProfile, &protocol conformance descriptor for CloudUserProfile);
  sub_1D5610628();
  (*(v230 + 8))(v261, v232);
  sub_1D51F9CFC(v220, v271);
  sub_1D4E50004(v274, &qword_1EC7ECD48, &qword_1D56429E0);
  sub_1D51F9CFC(v263, v272);
  OUTLINED_FUNCTION_119_1(v275);
  sub_1D4E50004(v262, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_119_1(v264);
  sub_1D4E50004(v265, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v266, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_119_1(v267);
  OUTLINED_FUNCTION_119_1(v273);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51F9964(uint64_t a1)
{
  sub_1D51F0C00(&qword_1EDD57E80, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);

  return sub_1D5612668();
}

uint64_t sub_1D51F99D0(uint64_t a1)
{
  v2 = sub_1D51F0C00(&qword_1EC7F1CD0, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D51F9A3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D51F9AC8()
{
  result = qword_1EC7F1BE0;
  if (!qword_1EC7F1BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D4F36DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BE0);
  }

  return result;
}

unint64_t sub_1D51F9B4C()
{
  result = qword_1EDD56DF8;
  if (!qword_1EDD56DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DF8);
  }

  return result;
}

unint64_t sub_1D51F9BA0()
{
  result = qword_1EC7F1BF0;
  if (!qword_1EC7F1BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D5158964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1BF0);
  }

  return result;
}

unint64_t sub_1D51F9C24()
{
  result = qword_1EDD530C8;
  if (!qword_1EDD530C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D5157370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD530C8);
  }

  return result;
}

uint64_t sub_1D51F9CA8()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D51F9CFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D51F9D54()
{
  result = qword_1EC7F1C08;
  if (!qword_1EC7F1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C08);
  }

  return result;
}

unint64_t sub_1D51F9DA8()
{
  result = qword_1EC7F1C18;
  if (!qword_1EC7F1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C18);
  }

  return result;
}

unint64_t sub_1D51F9E1C()
{
  result = qword_1EDD56E38[0];
  if (!qword_1EDD56E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56E38);
  }

  return result;
}

unint64_t sub_1D51F9E70()
{
  result = qword_1EC7F1C40;
  if (!qword_1EC7F1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C40);
  }

  return result;
}

unint64_t sub_1D51F9EC4()
{
  result = qword_1EC7F1C48;
  if (!qword_1EC7F1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C48);
  }

  return result;
}

uint64_t sub_1D51F9F18()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D51F9F6C()
{
  result = qword_1EDD56E20;
  if (!qword_1EDD56E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E20);
  }

  return result;
}

unint64_t sub_1D51F9FC0()
{
  result = qword_1EDD56D28[0];
  if (!qword_1EDD56D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56D28);
  }

  return result;
}

unint64_t sub_1D51FA060()
{
  result = qword_1EC7F1C68;
  if (!qword_1EC7F1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C68);
  }

  return result;
}

unint64_t sub_1D51FA0B8()
{
  result = qword_1EDD56DE8;
  if (!qword_1EDD56DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DE8);
  }

  return result;
}

unint64_t sub_1D51FA110()
{
  result = qword_1EDD56DF0;
  if (!qword_1EDD56DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56DF0);
  }

  return result;
}

unint64_t sub_1D51FA168()
{
  result = qword_1EC7F1C70;
  if (!qword_1EC7F1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1C78, &qword_1D5642BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C70);
  }

  return result;
}

unint64_t sub_1D51FA218()
{
  result = qword_1EC7F1C88;
  if (!qword_1EC7F1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C88);
  }

  return result;
}

unint64_t sub_1D51FA270()
{
  result = qword_1EC7F1C90;
  if (!qword_1EC7F1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1C90);
  }

  return result;
}

void sub_1D51FA4F8(uint64_t a1)
{
  type metadata accessor for CloudUserProfile.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D51FA7B0(319, qword_1EDD56D88, type metadata accessor for CloudUserProfile.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD56E18, &type metadata for CloudUserProfile.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD56D20, &type metadata for CloudUserProfile.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D51FA620(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1D51FA7B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1D51FA7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D51FA82C(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD530C0, &qword_1EC7EA800, &unk_1D5622EC0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD53090, &qword_1EC7ECD10, &unk_1D5622F10);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D51FAA24(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudUserProfile.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudUserProfile.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D51FAD34()
{
  result = qword_1EC7F1CA0;
  if (!qword_1EC7F1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CA0);
  }

  return result;
}

unint64_t sub_1D51FAD8C()
{
  result = qword_1EC7F1CA8;
  if (!qword_1EC7F1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CA8);
  }

  return result;
}

unint64_t sub_1D51FADE4()
{
  result = qword_1EDD56E28;
  if (!qword_1EDD56E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E28);
  }

  return result;
}

unint64_t sub_1D51FAE3C()
{
  result = qword_1EDD56E30;
  if (!qword_1EDD56E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56E30);
  }

  return result;
}

unint64_t sub_1D51FAE94()
{
  result = qword_1EC7F1CB0;
  if (!qword_1EC7F1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CB0);
  }

  return result;
}

unint64_t sub_1D51FAEEC()
{
  result = qword_1EC7F1CB8;
  if (!qword_1EC7F1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CB8);
  }

  return result;
}

unint64_t sub_1D51FAF44()
{
  result = qword_1EC7F1CC0;
  if (!qword_1EC7F1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CC0);
  }

  return result;
}

unint64_t sub_1D51FAF9C()
{
  result = qword_1EC7F1CC8;
  if (!qword_1EC7F1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CC8);
  }

  return result;
}

unint64_t sub_1D51FAFF4()
{
  result = qword_1EDD56F08;
  if (!qword_1EDD56F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56F08);
  }

  return result;
}

unint64_t sub_1D51FB04C()
{
  result = qword_1EDD56F10;
  if (!qword_1EDD56F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56F10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_23(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_115_8(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_116_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1D4E50004(v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_117_8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_1D4F39AB0(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_120_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_122_6(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 144);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t sub_1D51FB364()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C300);
  __swift_project_value_buffer(v0, qword_1EC87C300);
  return sub_1D560C748();
}

uint64_t sub_1D51FB404(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D560C758();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D560C748();
}

uint64_t sub_1D51FB47C()
{
  v0 = sub_1D560C758();
  __swift_allocate_value_buffer(v0, qword_1EC87C330);
  __swift_project_value_buffer(v0, qword_1EC87C330);
  return sub_1D560C748();
}

uint64_t sub_1D51FB4F8@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0198, &qword_1D5636268);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1D560BD68();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D560C3D8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = sub_1D560C418();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1D560BD58();
  sub_1D525C5A8();
  if (v16)
  {
    (*(v11 + 8))(v13, v10);
    v17 = a3;
    v18 = 1;
  }

  else
  {
    v21 = sub_1D5614E48();
    OUTLINED_FUNCTION_0_132(&v21, 89);
    sub_1D560BD18();
    OUTLINED_FUNCTION_0_132(&v21, 77);
    sub_1D560BD28();
    OUTLINED_FUNCTION_0_132(&v21, 87);
    sub_1D560BCE8();
    OUTLINED_FUNCTION_0_132(&v21, 68);
    sub_1D560BCF8();
    OUTLINED_FUNCTION_0_132(&v21, 84);
    OUTLINED_FUNCTION_0_132(&v21, 72);
    sub_1D560BD08();
    OUTLINED_FUNCTION_0_132(&v21, 77);
    sub_1D560BD38();
    OUTLINED_FUNCTION_0_132(&v21, 83);
    sub_1D560BD48();
    (*(v11 + 32))(a3, v13, v10);
    v17 = a3;
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v10);
}

unsigned __int8 *sub_1D51FB830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *a1;
  sub_1D55D61F0(*a1, a4, a5);
  sub_1D525C4DC();
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  if (v8 >> 14 < v6 >> 14)
  {
    __break(1u);
LABEL_72:

    v11 = 0;
LABEL_69:
    *a1 = sub_1D5614E48();
    return v11;
  }

  v12 = sub_1D5614F88();
  v13 = MEMORY[0x1DA6EABE0](v12);
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  v18 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_72;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v42 = 0;
    v21 = sub_1D5341FA0();
    v39 = v40;
LABEL_66:

    if (v39)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    goto LABEL_69;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D5615C58();
    }

    v20 = *result;
    if (v20 == 43)
    {
      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_64;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_64;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_64;
              }

              ++v28;
              if (!--v17)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_77;
    }

    if (v20 != 45)
    {
      if (v18)
      {
        v21 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_64;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v18)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      v21 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_65;
    }

    if (v18 >= 1)
    {
      v17 = v18 - 1;
      if (v18 != 1)
      {
        v21 = 0;
        if (result)
        {
          v22 = result + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_64;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_64;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_64;
            }

            ++v22;
            if (!--v17)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v17) = 0;
LABEL_65:
        v42 = v17;
        v39 = v17;
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v41[0] = v13;
  v41[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v17)
      {
        v21 = 0;
        v36 = v41;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v17)
    {
      if (--v17)
      {
        v21 = 0;
        v25 = v41 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v17)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_76;
  }

  if (v17)
  {
    if (--v17)
    {
      v21 = 0;
      v31 = v41 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v17)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1D51FBC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MusicLibrary.FilteringOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D51FBC6C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibrary.FilteringOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MusicLibrary.FilteringOptions.description.getter()
{
  if (*v0)
  {
    sub_1D4EFF8E4();
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v2 = v9;
    }

    *(v2 + 16) = v3 + 1;
    v4 = v2 + 16 * v3;
    *(v4 + 32) = 0xD000000000000012;
    *(v4 + 40) = 0x80000001D5687C00;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v5 = sub_1D5614CF8();
  v7 = v6;

  MEMORY[0x1DA6EAC70](v5, v7);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);

  return 91;
}

unint64_t sub_1D51FBDE0()
{
  result = qword_1EC7F1CE0;
  if (!qword_1EC7F1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CE0);
  }

  return result;
}

unint64_t sub_1D51FBE38()
{
  result = qword_1EC7F1CE8;
  if (!qword_1EC7F1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CE8);
  }

  return result;
}

unint64_t sub_1D51FBE8C()
{
  result = qword_1EC7F1CF0;
  if (!qword_1EC7F1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CF0);
  }

  return result;
}

unint64_t sub_1D51FBEE4()
{
  result = qword_1EC7F1CF8;
  if (!qword_1EC7F1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1CF8);
  }

  return result;
}

uint64_t MusicSuggestedPivotContainer.id.getter()
{
  MusicSuggestedPivotContainer.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

void sub_1D51FC038()
{
  OUTLINED_FUNCTION_47();
  v29 = v2;
  v30 = v3;
  v28 = v4;
  v5 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v27 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v8 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  type metadata accessor for MusicSuggestedPivotContainer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D503DEA4(v0, v21 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = (*(v10 + 32))(v14, v22, v8);
      v29(v24);
      (*(v10 + 8))(v14, v8);
    }

    else
    {
      v26 = (*(v27 + 32))(v1, v22, v5);
      v30(v26);
      (*(v27 + 8))(v1, v5);
    }
  }

  else
  {
    v25 = (*(v17 + 32))(v0, v22, v15);
    v28(v25);
    (*(v17 + 8))(v0, v15);
  }

  OUTLINED_FUNCTION_46();
}

void _s16MusicKitInternal0A19SuggestedPivotEntryV16recommendedTrack0aB00H0OSgvg_0()
{
  OUTLINED_FUNCTION_47();
  v43 = v0;
  v44 = v1;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v41 = v3;
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  v4 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  type metadata accessor for MusicSuggestedPivotContainer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  sub_1D503DEA4(v0, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v40;
      OUTLINED_FUNCTION_81();
      v30(v9, v20, v4);
      sub_1D5614668();
      (*(v29 + 8))(v9, v4);
    }

    else
    {
      v32 = v41;
      OUTLINED_FUNCTION_81();
      v33 = v20;
      v34 = v42;
      v35(v0, v33, v42);
      sub_1D5614348();
      (*(v32 + 8))(v0, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v31(v16, v20, v10);
    sub_1D5613A08();
    (*(v12 + 8))(v16, v10);
  }

  v36 = v44;
  sub_1D51FD5D0(v27, v24);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  if (__swift_getEnumTagSinglePayload(v24, 1, v37) == 1)
  {
    OUTLINED_FUNCTION_119_1(v27);
    OUTLINED_FUNCTION_119_1(v24);
    v38 = sub_1D5613D28();
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v38);
  }

  else
  {
    sub_1D4EC9F14(v36);
    sub_1D4E50004(v27, &qword_1EC7EC458, &unk_1D5620CD0);
    (*(*(v37 - 8) + 8))(v24, v37);
  }

  OUTLINED_FUNCTION_46();
}

void static MusicSuggestedPivotContainer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v46 = v1;
  v47 = v2;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v44 = v4;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_57(v5);
  OUTLINED_FUNCTION_4();
  v42 = v7;
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  type metadata accessor for MusicSuggestedPivotContainer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB410, &qword_1D5643790);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v40 - v27;
  v29 = *(v26 + 56);
  sub_1D503DEA4(v46, &v40 - v27);
  sub_1D503DEA4(v47, &v28[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D503DEA4(v28, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v42;
        v31 = v43;
        (*(v42 + 32))(v0, &v28[v29], v43);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v33 = *(v32 + 8);
        v33(v0, v31);
        v33(v22, v31);
LABEL_13:
        sub_1D51EAB28(v28);
        goto LABEL_14;
      }

      (*(v42 + 8))(v22, v43);
    }

    else
    {
      sub_1D503DEA4(v28, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = v44;
        v34 = v45;
        v36 = v41;
        (*(v44 + 32))(v41, &v28[v29], v45);
        sub_1D5614368();
        v37 = *(v35 + 8);
        v37(v36, v34);
        v37(v18, v34);
        goto LABEL_13;
      }

      (*(v44 + 8))(v18, v45);
    }
  }

  else
  {
    sub_1D503DEA4(v28, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_81();
      v38(v14, &v28[v29], v8);
      sub_1D5613A68();
      v39 = *(v10 + 8);
      v39(v14, v8);
      v39(v24, v8);
      goto LABEL_13;
    }

    (*(v10 + 8))(v24, v8);
  }

  sub_1D4E50004(v28, &qword_1EC7EB410, &qword_1D5643790);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

void sub_1D51FCAB8()
{
  OUTLINED_FUNCTION_47();
  v54 = v0;
  v57 = v2;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v52 = v4;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = OUTLINED_FUNCTION_14_57(v5);
  OUTLINED_FUNCTION_4();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v55 = v20;
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v25 = OUTLINED_FUNCTION_115();
  type metadata accessor for MusicSuggestedPivotContainer(v25);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  sub_1D503DEA4(v54, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v50;
      (*(v50 + 32))(v11, v0, v6);
      sub_1D560EC98();
      sub_1D5610038();
      v29 = sub_1D5610088();
      v30 = OUTLINED_FUNCTION_63_2();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
      sub_1D560FF58();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v29);
      OUTLINED_FUNCTION_3_105();
      OUTLINED_FUNCTION_119_1(v15);
      OUTLINED_FUNCTION_119_1(v18);
      v33 = OUTLINED_FUNCTION_7_82();
      v34(v33);
      (*(v28 + 8))(v11, v6);
    }

    else
    {
      v42 = v51;
      v41 = v52;
      v43 = v53;
      (*(v52 + 32))(v51, v0, v53);
      sub_1D560EC98();
      sub_1D5610008();
      v44 = sub_1D5610088();
      v45 = OUTLINED_FUNCTION_63_2();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v44);
      OUTLINED_FUNCTION_3_105();
      OUTLINED_FUNCTION_119_1(v15);
      OUTLINED_FUNCTION_119_1(v18);
      v48 = OUTLINED_FUNCTION_7_82();
      v49(v48);
      (*(v41 + 8))(v42, v43);
    }
  }

  else
  {
    (*(v23 + 32))(v1, v0, v21);
    sub_1D560EC98();
    sub_1D560FFB8();
    v35 = sub_1D5610088();
    v36 = OUTLINED_FUNCTION_63_2();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
    sub_1D560FEA8();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v35);
    OUTLINED_FUNCTION_3_105();
    sub_1D4E50004(v15, &qword_1EC7EA358, &unk_1D561DF50);
    sub_1D4E50004(v18, &qword_1EC7EA358, &unk_1D561DF50);
    v39 = OUTLINED_FUNCTION_7_82();
    v40(v39);
    (*(v23 + 8))(v1, v21);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotContainer.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicSuggestedPivotContainer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_59();
  sub_1D503DEA4(v1, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = sub_1D5614898();
      v6 = MEMORY[0x1E69773A0];
    }

    else
    {
      v5 = sub_1D5614408();
      v6 = MEMORY[0x1E6977150];
    }
  }

  else
  {
    v5 = sub_1D5613AF8();
    v6 = MEMORY[0x1E6976CF0];
  }

  a1[3] = v5;
  a1[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v5 - 8) + 32))(boxed_opaque_existential_0, v1, v5);
}

uint64_t type metadata accessor for MusicSuggestedPivotContainer(uint64_t a1)
{
  result = qword_1EC7F1D18;
  if (!qword_1EC7F1D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MusicSuggestedPivotContainer.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_115();
  v6 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v22 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for MusicSuggestedPivotContainer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1D503DEA4(v0, v18 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v22 + 32))(v2, v19, v6);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D51FD584(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
      sub_1D5614CB8();
      (*(v22 + 8))(v2, v6);
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v21(v1, v19, v3);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D51FD584(&qword_1EC7EBD38, MEMORY[0x1E6977180], MEMORY[0x1E6977188]);
      sub_1D5614CB8();
      (*(v23 + 8))(v1, v3);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D51FD584(&qword_1EC7EB598, MEMORY[0x1E6976D28], MEMORY[0x1E6976D38]);
    sub_1D5614CB8();
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotContainer.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotContainer.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D51FD4CC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedPivotContainer.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51FD584(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D51FD5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EditorialVideoArtworkFlavor.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D51FD760@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = EditorialVideoArtworkFlavor.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D51FD7A0@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialVideoArtworkFlavor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EditorialVideoArtworkFlavor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_1_1();
    v5 = sub_1D5616188();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EditorialVideoArtworkFlavor.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D51FD944(char *a1, uint64_t *a2)
{
  v30 = a2;
  v4 = type metadata accessor for MusicPin(0);
  v28 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v10 = sub_1D4E62A60(&qword_1EDD53C00, &qword_1EC7F1D28, &qword_1D5643A60, MEMORY[0x1E6975020]);
  v11 = sub_1D5615618();
  result = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D4F03DB4(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_1D5615608();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v32 = v2;
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v31 = i + 1;
        v14 = v10;
        v15 = a1;
        v16 = v9;
        v17 = v14;
        v18 = sub_1D5615688();
        a1 = v29;
        sub_1D5205744(v19, v29);
        v18(v34, 0);
        v20 = v8;
        v21 = v32;
        sub_1D5204A8C(a1, v30, v8);
        v32 = v21;
        if (v21)
        {
          goto LABEL_13;
        }

        sub_1D520579C(a1, type metadata accessor for MusicPin);
        v22 = v33;
        v35 = v33;
        v24 = *(v33 + 16);
        v23 = *(v33 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D4F03DB4(v23 > 1, v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v33 = v22;
        v26 = v22 + v25 + *(v28 + 72) * v24;
        v8 = v20;
        sub_1D52056EC(v20, v26);
        a1 = v15;
        v9 = v16;
        v10 = v17;
        sub_1D5615658();
        if (v31 == v11)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    sub_1D520579C(a1, type metadata accessor for MusicPin);

    __break(1u);
  }

  return result;
}

void sub_1D51FDC68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D51FDCD0()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v39 = v2;
  v37 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v42 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  OUTLINED_FUNCTION_4();
  v40 = v7;
  v41 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v38 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  type metadata accessor for MusicPin(0);
  OUTLINED_FUNCTION_3_106();
  sub_1D5204908(v17, v18, &protocol conformance descriptor for MusicPin);
  v19 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_55_20();
  v20 = *(v13 + 32);
  v20(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins, v16, v11);
  v21 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  OUTLINED_FUNCTION_55_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD8, &qword_1D5643DF8);
  swift_allocObject();
  *(v0 + v21) = sub_1D560C878();
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsAutoupdatingResponse) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords) = v19;
  OUTLINED_FUNCTION_55_20();
  v20(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins, v16, v11);
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pinsDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__librarySyncObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords) = 0;
  sub_1D560C4F8();
  v22 = v37;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController) = v37;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_isSharedLibrary) = v39;
  v23 = *(v22 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

  v24 = [v23 maximumAllowedPins];
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount) = v24;
  OUTLINED_FUNCTION_34_37(*(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController) + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController__status);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  v25 = v38;
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_40_13();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_37();
  sub_1D4E62A60(v26, &qword_1EC7F1DD0, &qword_1D5643DF0, v27);

  v28 = v40;
  v29 = sub_1D560C948();

  (*(v41 + 8))(v25, v28);
  sub_1D51FE724(v29);
  v30 = sub_1D5615458();
  v31 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v30);
  OUTLINED_FUNCTION_40_13();
  v32 = swift_allocObject();
  swift_weakInit();

  sub_1D56153C8();

  v33 = sub_1D56153B8();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v32;

  sub_1D51ECB60(0, 0, v31, &unk_1D5643E10, v34);

  OUTLINED_FUNCTION_46();
}

void sub_1D51FE158()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  OUTLINED_FUNCTION_59(v2 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins, &v17);
  v10 = *(v7 + 16);
  v10(v1, v2 + v9, v5);
  sub_1D5205850();
  LOBYTE(v9) = sub_1D5614D18();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_75_2();
  v11(v12);
  if (v9)
  {
    v10(v1, v4, v5);
    sub_1D51FEB3C(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_26_45();
    *(v14 - 16) = v2;
    *(v14 - 8) = v4;
    sub_1D5205500(v15, sub_1D5205BF8, v16);
  }

  (v11)(v4, v5);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51FE300(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  swift_beginAccess();

  sub_1D4EFC4E8();
  v5 = v4;

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_26_45();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_1D5205500(v9, sub_1D5205BA4, v10);
  }
}

void sub_1D51FE3E0()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins;
  OUTLINED_FUNCTION_59(v2 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins, &v20);
  v10 = *(v7 + 16);
  v10(v1, v2 + v9, v5);
  sub_1D5205850();
  v18 = v4;
  LOBYTE(v4) = sub_1D5614D18();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_75_2();
  v11(v12);
  if (v4)
  {
    v10(v1, v18, v5);
    OUTLINED_FUNCTION_54_0(v2 + v9, &v19);
    OUTLINED_FUNCTION_78_15();
    v13();
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_26_45();
    *(v15 - 16) = v2;
    *(v15 - 8) = v18;
    sub_1D5205500(v16, sub_1D5205B88, v17);
  }

  (v11)(v18, v5);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51FE5B4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount) != result)
  {
    v2 = result;
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_26_45();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_1D5205500(v5, sub_1D5205BE4, v6);
  }

  return result;
}

void sub_1D51FE650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_cloudStatusController);

    v4 = *(v3 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D51FE5B4([v4 maximumAllowedPins]);
    }
  }
}

uint64_t sub_1D51FE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D51FE7E4, v6, v5);
}

uint64_t sub_1D51FE7E4()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_59(v1 + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D51FFB14();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MusicLibraryPinsObserver.deinit()
{
  v1 = v0;
  if (sub_1D51FF4DC())
  {
    sub_1D560C808();
  }

  v2 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 8);
  v5(v1 + v2, v3);

  v5(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins, v3);

  v6 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver___observationRegistrar;
  sub_1D560C508();
  OUTLINED_FUNCTION_14();
  (*(v7 + 8))(v1 + v6);
  return v1;
}

uint64_t MusicLibraryPinsObserver.__deallocating_deinit()
{
  MusicLibraryPinsObserver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D51FEA2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  swift_beginAccess();

  sub_1D51FEC44(v3);
  sub_1D560C868();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D51FEB3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins;
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins, v8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_25_0();
  v6 = v5;
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1D51FEA2C();
  return (*(v6 + 8))(a1, v4);
}

uint64_t sub_1D51FEC58(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1D51FEB3C(v5);
}

uint64_t sub_1D51FEDA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_pinsPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL sub_1D51FEDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_93_5();
  sub_1D51FEC44(v0);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v5, &qword_1EC7F1D28, &qword_1D5643A60, v6);
  sub_1D5615608();
  sub_1D5615648();
  v7 = sub_1D5615638();
  (*(v3 + 8))(v0, v1);
  return v7 >= sub_1D51FEF88();
}

uint64_t sub_1D51FEF34@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D51FEF88();
  *a2 = result;
  return result;
}

uint64_t sub_1D51FEF88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  v3 = sub_1D5204908(v1, v2, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_52_23(v3, v4);

  return *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__maximumPinCount);
}

uint64_t sub_1D51FF050(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1D5205500(KeyPath, sub_1D5205BC0, &v5);
}

double sub_1D51FF0C4()
{
  swift_getKeyPath();
  v6[0] = v0;
  OUTLINED_FUNCTION_1_107();
  v3 = sub_1D5204908(v1, v2, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_52_23(v3, v4);

  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords, v6);

  return result;
}

uint64_t sub_1D51FF188(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1D51FF20C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  swift_getKeyPath();
  v12[0] = v3;
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v7, v8, &protocol conformance descriptor for MusicLibraryPinsObserver);
  sub_1D560C4C8();

  v9 = *a2;
  OUTLINED_FUNCTION_59(v12[0] + *a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_14();
  return (*(v10 + 16))(a3, v5 + v9);
}

uint64_t sub_1D51FF2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = OUTLINED_FUNCTION_61();
  v10(v9);
  return a5(v8);
}

uint64_t sub_1D51FF3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, a2, v4);
  v8 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__persistedPins;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

void sub_1D51FF518(uint64_t a1)
{
  sub_1D5204874(319);
  if (v1 <= 0x3F)
  {
    sub_1D560C508();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D51FF734(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;

  v9 = sub_1D52055A8(v8, a1);

  if (v9)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_26_45();
    *(v11 - 16) = v4;
    *(v11 - 8) = a1;
    sub_1D5205500(v12, a4, v13);
  }

  else
  {
    *(v4 + v7) = a1;
  }
}

uint64_t sub_1D51FF830(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v2, v3, &protocol conformance descriptor for MusicLibraryPinsObserver);
  sub_1D560C4C8();
}

uint64_t sub_1D51FF8F0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

void *sub_1D51FF930()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  v3 = sub_1D5204908(v1, v2, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_52_23(v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  v6 = v5;
  return v5;
}

void sub_1D51FF9C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D51FF9F0(v1);
}

void sub_1D51FF9F0(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  v5 = v4;
  LOBYTE(v4) = sub_1D5205670(v4, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_39_28();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_26_45();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_1D5205500(v8, sub_1D5205AE0, v9);
  }

  else
  {
    v10 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_1D51FFAD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords);
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__scheduledTimerForResettingPinsWithTransientStateRecords) = a2;
  v3 = a2;
}

void sub_1D51FFB14()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA8, &qword_1D5643CD8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DB0, &qword_1D5643CE0);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver_isSharedLibrary))
  {
    if (qword_1EDD544C8 != -1)
    {
      OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
    }

    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76B20);
    v28 = sub_1D560C738();
    v15 = sub_1D56156E8();
    if (os_log_type_enabled(v28, v15))
    {
      v16 = OUTLINED_FUNCTION_63_12();
      *v16 = 0;
      _os_log_impl(&dword_1D4E3F000, v28, v15, "Not observing pins because this is a shared library.", v16, 2u);
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_46();
  }

  else
  {
    type metadata accessor for MusicPin(0);
    OUTLINED_FUNCTION_3_106();
    sub_1D5204908(v19, v20, &protocol conformance descriptor for MusicPin);
    sub_1D560DD68();
    _s8MusicKit0A14LibraryRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvs_0();
    _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
    (*(v9 + 16))(v2, v13, v7);
    sub_1D560F0D8();
    _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DB8, &qword_1D5643CE8);
    swift_allocObject();
    sub_1D5479640();
    sub_1D51FF050(v21);
    v22 = sub_1D51FF010();
    if (v22)
    {
      OUTLINED_FUNCTION_34_37(v22 + *(*v22 + 104));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DC0, &qword_1D5643CF0);
      sub_1D560C8C8();
      swift_endAccess();

      OUTLINED_FUNCTION_40_13();
      swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37();
      sub_1D4E62A60(v23, v24, v25, v26);
      v27 = sub_1D560C948();

      (*(v5 + 8))(v1, v3);
    }

    else
    {
      v27 = 0;
    }

    sub_1D51FF70C(v27);
    (*(v9 + 8))(v13, v7);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D51FFEE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D51FFF44();
  }

  return result;
}

void sub_1D51FFF44()
{
  OUTLINED_FUNCTION_47();
  v122 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v121 - v6;
  v8 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v147 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v134 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v133 = v13;
  v14 = type metadata accessor for MusicPin(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v145 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v19);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D90, &qword_1D5643CC0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v137 = v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v125 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v144 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v121 - v35;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
  }

  v37 = sub_1D560C758();
  v38 = __swift_project_value_buffer(v37, qword_1EDD76B20);
  v39 = v3;
  v40 = OUTLINED_FUNCTION_61();
  sub_1D5205A68(v40, v41);
  v148 = v38;
  v42 = sub_1D560C738();
  v43 = sub_1D56156E8();
  v44 = os_log_type_enabled(v42, v43);
  v135 = v8;
  v136 = v7;
  v138 = v14;
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_142();
    *v45 = 134217984;
    sub_1D5205A68(v36, v1);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
    OUTLINED_FUNCTION_23_1(v1);
    if (v47)
    {
      sub_1D4E50004(v1, &qword_1EC7F1D98, &qword_1D5643CC8);
      v54 = 0;
    }

    else
    {
      v48 = v123;
      sub_1D560DE38();
      (*(*(v46 - 8) + 8))(v1, v46);
      OUTLINED_FUNCTION_14_1();
      sub_1D4E62A60(v49, v50, v51, v52);
      v53 = v139;
      sub_1D5615608();
      sub_1D5615648();
      v54 = sub_1D5615638();
      (*(v125 + 8))(v48, v53);
    }

    sub_1D4E50004(v36, &qword_1EC7F1D98, &qword_1D5643CC8);
    *(v45 + 4) = v54;
    _os_log_impl(&dword_1D4E3F000, v42, v43, "Received pins response with %ld from Media Player.", v45, 0xCu);
    OUTLINED_FUNCTION_122();
  }

  else
  {
    sub_1D4E50004(v36, &qword_1EC7F1D98, &qword_1D5643CC8);
  }

  sub_1D5205A68(v39, v32);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
  v56 = OUTLINED_FUNCTION_45_1();
  if (__swift_getEnumTagSinglePayload(v56, v57, v55) == 1)
  {
    sub_1D4E50004(v32, &qword_1EC7F1D98, &qword_1D5643CC8);
  }

  else
  {
    sub_1D560DE38();
    (*(*(v55 - 8) + 8))(v32, v55);
    OUTLINED_FUNCTION_172();
    v58 = v124;
    v59 = OUTLINED_FUNCTION_21_1();
    v60 = v139;
    v61(v59);
    v63 = *(v32 + 16);
    v62 = (v32 + 16);
    v64 = v137;
    v121[1] = v62;
    v121[0] = v63;
    v63(v137, v58, v60);
    v65 = *(v146 + 36);
    OUTLINED_FUNCTION_14_1();
    v70 = sub_1D4E62A60(v66, v67, v68, v69);
    sub_1D5615608();
    v128 = (v147 + 8);
    *&v71 = 136447490;
    v127 = v71;
    *&v71 = 136446210;
    v126 = v71;
    v72 = v145;
    v130 = v65;
    v129 = v70;
    while (1)
    {
      sub_1D5615648();
      if (*(v64 + v65) == v149)
      {
        break;
      }

      v73 = sub_1D5615688();
      OUTLINED_FUNCTION_0_134();
      v74 = v131;
      sub_1D5205744(v75, v131);
      v73(&v149, 0);
      sub_1D5615658();
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v74, v72);
      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5ECA0, v76, &protocol conformance descriptor for MusicPin);
      v77 = v133;
      sub_1D560EC98();
      v142 = sub_1D560D708();
      v146 = v78;
      v79 = *v128;
      v80 = v135;
      (*v128)(v77, v135);
      OUTLINED_FUNCTION_54_20();
      sub_1D560D768();
      v81 = OUTLINED_FUNCTION_41_30();
      v79(v81);
      OUTLINED_FUNCTION_21_1();
      v144 = sub_1D5615888();
      v147 = v82;

      OUTLINED_FUNCTION_54_20();
      sub_1D560D688();
      v83 = OUTLINED_FUNCTION_41_30();
      v79(v83);
      OUTLINED_FUNCTION_21_1();
      v143 = sub_1D5615888();
      v85 = v84;

      OUTLINED_FUNCTION_54_20();
      sub_1D560D808();
      v86 = OUTLINED_FUNCTION_41_30();
      v79(v86);
      OUTLINED_FUNCTION_21_1();
      v141 = sub_1D5615888();
      v88 = v87;

      if (qword_1EC7E9038 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5EC98, v89, &protocol conformance descriptor for MusicPin);
      sub_1D560EC28();
      v90 = v149;
      if (v150)
      {
        v90 = 0;
      }

      v140 = v90;
      v91 = v134;
      sub_1D560EC98();
      v92 = v136;
      sub_1D560D5C8();
      (v79)(v91, v80);
      v93 = sub_1D560D4C8();
      if (__swift_getEnumTagSinglePayload(v92, 1, v93) == 1)
      {
        sub_1D4E50004(v92, &unk_1EC7EBF20, &unk_1D561F530);
      }

      else
      {
        sub_1D560D4B8();
        (*(*(v93 - 8) + 8))(v92, v93);
      }

      v94 = v147;
      v95 = sub_1D5615888();
      v97 = v96;

      v98 = sub_1D560C738();
      v99 = sub_1D56156E8();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v147 = v95;
        v101 = v100;
        v149 = swift_slowAlloc();
        *v101 = v127;
        v102 = sub_1D560EEC8();
        v104 = v103;

        v105 = sub_1D4E6835C(v102, v104, &v149);
        v106 = v94;
        v107 = v105;

        *(v101 + 4) = v107;
        *(v101 + 12) = 2050;
        v108 = v141;
        *(v101 + 14) = v140;
        *(v101 + 22) = 2082;
        v109 = sub_1D4E6835C(v108, v88, &v149);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2082;
        v110 = sub_1D4E6835C(v144, v106, &v149);

        *(v101 + 34) = v110;
        *(v101 + 42) = 2082;
        v111 = sub_1D4E6835C(v143, v85, &v149);

        *(v101 + 44) = v111;
        *(v101 + 52) = 2082;
        v112 = sub_1D4E6835C(v147, v97, &v149);

        *(v101 + 54) = v112;
        _os_log_impl(&dword_1D4E3F000, v98, v99, "Pin identifier: %{public}s, position: %{public}ld, libraryID: %{public}s, cloudID: %{public}s, cloudAlbumLibraryID: %{public}s, deviceLocalID: %{public}s.", v101, 0x3Eu);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_134();
      v72 = v145;
      v113 = v132;
      sub_1D5205744(v145, v132);
      v62 = sub_1D560C738();
      v114 = sub_1D56156E8();
      if (os_log_type_enabled(v62, v114))
      {
        v115 = OUTLINED_FUNCTION_142();
        v116 = OUTLINED_FUNCTION_138_0();
        v149 = v116;
        *v115 = v126;
        v117 = MusicPin.description.getter();
        v119 = v118;
        sub_1D520579C(v113, type metadata accessor for MusicPin);
        v120 = sub_1D4E6835C(v117, v119, &v149);

        *(v115 + 4) = v120;
        _os_log_impl(&dword_1D4E3F000, v62, v114, "Received pin: %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        OUTLINED_FUNCTION_122();
        v72 = v145;
        OUTLINED_FUNCTION_122();
      }

      else
      {

        v62 = type metadata accessor for MusicPin;
        sub_1D520579C(v113, type metadata accessor for MusicPin);
      }

      sub_1D520579C(v72, type metadata accessor for MusicPin);
      v60 = v139;
      v64 = v137;
      v65 = v130;
    }

    sub_1D4E50004(v64, &qword_1EC7F1D90, &qword_1D5643CC0);
    OUTLINED_FUNCTION_165_4();
    (v121[0])();
    sub_1D51FE3E0();
    sub_1D5202768();
    (*(v125 + 8))(v62, v60);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5200C94@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_61();
  sub_1D5200D64();
  v5 = type metadata accessor for MusicPin(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  result = sub_1D4E50004(v1, &qword_1EC7F1D88, &unk_1D5643CB0);
  *a1 = v6;
  return result;
}

void sub_1D5200D64()
{
  OUTLINED_FUNCTION_47();
  v31[0] = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_114();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  type metadata accessor for MusicPin(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(v16 + 16))(v20, v7, v5);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_76_12(v1, 0);
    sub_1D52056EC(v1, v24);
    OUTLINED_FUNCTION_65();
    sub_1D52056EC(v25, v26);
    v27 = v9;
    v28 = 0;
LABEL_6:
    OUTLINED_FUNCTION_76_12(v27, v28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76_12(v1, 1);
  sub_1D4E50004(v1, &qword_1EC7F1D88, &unk_1D5643CB0);
  (*(v3 + 16))(&v32, v5, v3);
  if (!v33)
  {
    sub_1D4E50004(&v32, &qword_1EC7EC500, &unk_1D5621030);
    v27 = OUTLINED_FUNCTION_45_1();
    goto LABEL_6;
  }

  sub_1D4F69344(&v32, v34);
  v29 = sub_1D51FEC44(v13);
  MEMORY[0x1EEE9AC00](v29);
  v31[-2] = v34;
  v30 = sub_1D5595458(sub_1D5205C14, &v31[-4]);
  sub_1D4EC9F84(v30);

  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_7:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5201040(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_147();
  v3 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  MusicPin.item.getter(v15 - v14);
  OUTLINED_FUNCTION_13_60();
  sub_1D5204908(v17, v18, &protocol conformance descriptor for MusicPin.Item);
  sub_1D560EC98();
  sub_1D520579C(v16, type metadata accessor for MusicPin.Item);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D560EC98();
  v19 = sub_1D560D528();
  v20 = *(v5 + 8);
  v20(v9, v3);
  v20(v12, v3);
  return v19 & 1;
}

void sub_1D5201214()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v34 = v3;
  v33 = v4;
  v6 = v5;
  v36 = v7;
  v8 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v35 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = type metadata accessor for MusicPin(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v20 = *v6;
  sub_1D51FEC44(v1);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v21, &qword_1EC7F1D28, &qword_1D5643A60, v22);
  OUTLINED_FUNCTION_200();
  sub_1D5615608();
  OUTLINED_FUNCTION_200();
  sub_1D5615648();
  v23 = sub_1D5615638();
  (*(v13 + 8))(v1, v11);
  LOBYTE(v37[0]) = v20;
  sub_1D54729B4(v23, v37, v33, v34, v19);
  OUTLINED_FUNCTION_0_134();
  sub_1D5205744(v19, v36 + v24);
  sub_1D560C358();
  OUTLINED_FUNCTION_82_15();
  *v25 = 0;
  *(v25 + 8) = 2;
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v36, v35);
  swift_getKeyPath();
  v37[0] = v2;
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v26, v27, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4C8();

  v37[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4E8();

  v28 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_54_0(v2 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords, v37);
  sub_1D4EFF588();
  v29 = *(*(v2 + v28) + 16);
  sub_1D4EFF7D0(v29);
  v30 = *(v2 + v28);
  *(v30 + 16) = v29 + 1;
  OUTLINED_FUNCTION_9_73();
  sub_1D52056EC(v35, v31);
  *(v2 + v28) = v30;
  swift_endAccess();
  v37[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4D8();

  swift_getKeyPath();
  v37[0] = v2;
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4C8();

  v37[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_44();
  sub_1D560C4E8();

  OUTLINED_FUNCTION_54_0(v2 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins, v37);
  OUTLINED_FUNCTION_57_23();
  swift_endAccess();
  sub_1D51FEA2C();
  v37[0] = v2;
  swift_getKeyPath();
  sub_1D560C4D8();

  OUTLINED_FUNCTION_4_77();
  sub_1D520579C(v19, v32);
  OUTLINED_FUNCTION_46();
}

void sub_1D5201614()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_42_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_0_134();
  sub_1D5205744(v5, v1 + v7);
  sub_1D560C358();
  OUTLINED_FUNCTION_82_15();
  *v8 = 1;
  *(v8 + 8) = 2;
  OUTLINED_FUNCTION_5_81();
  v9 = OUTLINED_FUNCTION_112();
  sub_1D5205744(v9, v10);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v11, v12, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4C8();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4E8();

  v14 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords);
  sub_1D4EFF588();
  OUTLINED_FUNCTION_53_20();
  v15 = *(v3 + v14);
  *(v15 + 16) = KeyPath + 1;
  OUTLINED_FUNCTION_9_73();
  sub_1D52056EC(v2, v16);
  *(v3 + v14) = v15;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_37();
  OUTLINED_FUNCTION_78_15();
  sub_1D560C4D8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4C8();

  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4E8();

  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins);
  OUTLINED_FUNCTION_57_23();
  swift_endAccess();
  sub_1D51FEA2C();
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_30_37();
  sub_1D560C4D8();

  OUTLINED_FUNCTION_46();
}

void sub_1D520186C()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_42_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_0_134();
  sub_1D5205744(v7, v1 + v9);
  sub_1D560C358();
  OUTLINED_FUNCTION_82_15();
  *v10 = v5;
  *(v10 + 8) = 0;
  OUTLINED_FUNCTION_5_81();
  v11 = OUTLINED_FUNCTION_112();
  sub_1D5205744(v11, v12);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v13, v14, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4C8();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4E8();

  v16 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords);
  sub_1D4EFF588();
  OUTLINED_FUNCTION_53_20();
  v17 = *(v3 + v16);
  *(v17 + 16) = KeyPath + 1;
  OUTLINED_FUNCTION_9_73();
  sub_1D52056EC(v2, v18);
  *(v3 + v16) = v17;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_37();
  OUTLINED_FUNCTION_78_15();
  sub_1D560C4D8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4C8();

  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4E8();

  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins);
  OUTLINED_FUNCTION_57_23();
  swift_endAccess();
  sub_1D51FEA2C();
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_30_37();
  sub_1D560C4D8();

  OUTLINED_FUNCTION_46();
}

void sub_1D5201AC0()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_42_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v9 = *v5;
  OUTLINED_FUNCTION_0_134();
  sub_1D5205744(v7, v1 + v10);
  sub_1D560C358();
  OUTLINED_FUNCTION_82_15();
  *v11 = v9;
  *(v11 + 8) = 1;
  OUTLINED_FUNCTION_5_81();
  v12 = OUTLINED_FUNCTION_112();
  sub_1D5205744(v12, v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v14, v15, &protocol conformance descriptor for MusicLibraryPinsObserver);
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4C8();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_22_43();
  sub_1D560C4E8();

  v17 = OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords;
  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords);
  sub_1D4EFF588();
  OUTLINED_FUNCTION_53_20();
  v18 = *(v3 + v17);
  *(v18 + 16) = KeyPath + 1;
  OUTLINED_FUNCTION_9_73();
  sub_1D52056EC(v2, v19);
  *(v3 + v17) = v18;
  swift_endAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_37();
  OUTLINED_FUNCTION_78_15();
  sub_1D560C4D8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4C8();

  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_21_46();
  sub_1D560C4E8();

  OUTLINED_FUNCTION_34_37(v3 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__pins);
  OUTLINED_FUNCTION_57_23();
  swift_endAccess();
  sub_1D51FEA2C();
  OUTLINED_FUNCTION_74_16();
  OUTLINED_FUNCTION_30_37();
  sub_1D560C4D8();

  OUTLINED_FUNCTION_46();
}

void sub_1D5201D1C()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  v53 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
  }

  v17 = sub_1D560C758();
  v18 = __swift_project_value_buffer(v17, qword_1EDD76B20);
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v6, v16);
  v54 = v18;
  v19 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_59_18();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_138_0();
    v55[0] = v22;
    *v21 = 136446466;
    v23 = sub_1D5205034();
    v52 = v2;
    v24 = v11;
    v25 = v4;
    v27 = v26;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v16, v28);
    v29 = sub_1D4E6835C(v23, v27, v55);
    v4 = v25;
    v11 = v24;
    v2 = v52;

    *(v21 + 4) = v29;
    *(v21 + 12) = 1026;
    *(v21 + 14) = v4 & 1;
    _os_log_impl(&dword_1D4E3F000, v19, v1, "Initiating discard process for this corresponding transient state record: %{public}s. Operation did succeed: %{BOOL,public}d.", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v16, v30);
  }

  sub_1D51FF0C4();
  sub_1D525C678();
  v32 = v31;
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    swift_getKeyPath();
    v55[0] = v2;
    OUTLINED_FUNCTION_1_107();
    sub_1D5204908(v35, v36, &protocol conformance descriptor for MusicLibraryPinsObserver);
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4C8();

    v55[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4E8();

    OUTLINED_FUNCTION_34_37(v2 + OBJC_IVAR____TtC16MusicKitInternal24MusicLibraryPinsObserver__transientStateRecords);
    v37 = v53;
    sub_1D525CB38(v32);
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v37, v38);
    swift_endAccess();
    v55[0] = v2;
    swift_getKeyPath();
    OUTLINED_FUNCTION_40_32();
    sub_1D560C4D8();
  }

  OUTLINED_FUNCTION_5_81();
  v39 = OUTLINED_FUNCTION_75_2();
  sub_1D5205744(v39, v40);
  v41 = sub_1D560C738();
  v42 = sub_1D56156E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_142();
    v44 = v4;
    v45 = OUTLINED_FUNCTION_138_0();
    v55[0] = v45;
    *v43 = 136446210;
    v46 = sub_1D5205034();
    v48 = v47;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v11, v49);
    v50 = sub_1D4E6835C(v46, v48, v55);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_1D4E3F000, v41, v42, "Underlying library request has completed. Discarding this corresponding transient state record: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v4 = v44;
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v11, v51);
  }

  if (v4)
  {
    sub_1D5202118();
  }

  else
  {
    sub_1D5202768();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D5202118()
{
  OUTLINED_FUNCTION_47();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
  }

  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EDD76B20);
  v9 = sub_1D560C738();
  v10 = sub_1D56156E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_63_12();
    *v11 = 0;
    _os_log_impl(&dword_1D4E3F000, v9, v10, "Scheduling delayed pins reset with existing transient state records.", v11, 2u);
    OUTLINED_FUNCTION_122();
  }

  v12 = sub_1D51FF930();
  [v12 invalidate];

  type metadata accessor for MusicLibraryPinsObserver(0);

  sub_1D5612C48();
  v13 = objc_opt_self();
  v14 = OUTLINED_FUNCTION_75_2();
  v15(v14);
  v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v16, v7, v0);
  v22[4] = sub_1D5205904;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D51FDC68;
  v22[3] = &block_descriptor_16;
  v18 = _Block_copy(v22);

  v19 = [v13 scheduledTimerWithTimeInterval:0 repeats:v18 block:2.0];
  _Block_release(v18);
  sub_1D51FF9F0(v19);
  v20 = OUTLINED_FUNCTION_61();
  v21(v20);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52023E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a2, v3);
  sub_1D56153C8();
  v11 = sub_1D56153B8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  (*(v4 + 32))(v13 + v12, v6, v3);
  sub_1D51EC8B4(0, 0, v9, &unk_1D5643CA8, v13);
}

uint64_t sub_1D52025B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D56153C8();
  *(v4 + 24) = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5202650, v6, v5);
}

uint64_t sub_1D5202650()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  if (sub_1D5612C38())
  {
    if (qword_1EDD544C8 != -1)
    {
      OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
    }

    v1 = sub_1D560C758();
    __swift_project_value_buffer(v1, qword_1EDD76B20);
    v2 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v2, v3))
    {
      *OUTLINED_FUNCTION_63_12() = 0;
      OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v4, v5, "Starting delayed pins reset with existing transient state records.");
      OUTLINED_FUNCTION_122();
    }

    sub_1D5202768();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1D5202768()
{
  OUTLINED_FUNCTION_47();
  v4 = v0;
  v5 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_2();
  v57 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  if (qword_1EDD544C8 != -1)
  {
    OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
  }

  v15 = sub_1D560C758();
  v58 = __swift_project_value_buffer(v15, qword_1EDD76B20);
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_59_18();
  if (os_log_type_enabled(v16, v17))
  {
    *OUTLINED_FUNCTION_63_12() = 0;
    OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v18, v19, "Resetting pins.");
    OUTLINED_FUNCTION_122();
  }

  sub_1D51FF1F8(v14);
  sub_1D51FF0C4();
  v21 = *(v20 + 16);

  if (v21)
  {
    v53 = v3;
    v22 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_63_12() = 0;
      OUTLINED_FUNCTION_51_24(&dword_1D4E3F000, v24, v25, "Reevaluating pins by applying existing transient state records.");
      OUTLINED_FUNCTION_122();
    }

    sub_1D51FF0C4();
    v28 = *(v26 + 16);
    if (v28)
    {
      v51 = v10;
      v52 = v8;
      v29 = *(v55 + 80);
      v50 = v26;
      v30 = v26 + ((v29 + 32) & ~v29);
      v31 = *(v55 + 72);
      *&v27 = 136446210;
      v54 = v27;
      v55 = v31;
      v56 = v4;
      do
      {
        v32 = v57;
        sub_1D5205744(v30, v57);
        sub_1D5202C28();
        OUTLINED_FUNCTION_9_73();
        sub_1D52056EC(v32, v2);
        v33 = sub_1D560C738();
        sub_1D56156E8();
        OUTLINED_FUNCTION_59_18();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_142();
          v36 = OUTLINED_FUNCTION_138_0();
          v59 = v36;
          *v35 = v54;
          sub_1D5205034();
          OUTLINED_FUNCTION_2_106();
          sub_1D520579C(v2, v37);
          v38 = OUTLINED_FUNCTION_21_1();
          v41 = sub_1D4E6835C(v38, v39, v40);
          v31 = v55;

          *(v35 + 4) = v41;
          _os_log_impl(&dword_1D4E3F000, v33, v1, "Applying transient state record to pins: %{public}s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_122();
        }

        else
        {

          OUTLINED_FUNCTION_2_106();
          sub_1D520579C(v2, v42);
        }

        v30 += v31;
        --v28;
      }

      while (v28);

      v10 = v51;
      v8 = v52;
    }

    else
    {
    }

    v3 = v53;
  }

  sub_1D51FEC44(v3);
  sub_1D5205850();
  v43 = sub_1D5614D18();
  v44 = *(v10 + 8);
  v44(v3, v8);
  if ((v43 & 1) == 0)
  {
    v45 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_59_18();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_63_12();
      *v47 = 0;
      _os_log_impl(&dword_1D4E3F000, v45, v14, "Resetting pins after applying existing transient state records.", v47, 2u);
      OUTLINED_FUNCTION_122();
    }

    (*(v10 + 16))(v3, v14, v8);
    sub_1D51FE158();
  }

  v48 = sub_1D51FF930();
  [v48 invalidate];

  sub_1D51FF9F0(0);
  v49 = OUTLINED_FUNCTION_112();
  (v44)(v49);
  OUTLINED_FUNCTION_46();
}

void sub_1D5202C28()
{
  OUTLINED_FUNCTION_47();
  v263 = v0;
  v283 = v3;
  v305 = v4;
  v297 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D50, &unk_1D5643C60);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v268 = type metadata accessor for MusicPinPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D60, &unk_1D5643C70);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v17);
  v302 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v272 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v301 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  v300 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  k = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v298 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = type metadata accessor for MusicPin.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v40);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D68, &qword_1D5643C80);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v294 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D70, &qword_1D5643C88);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v296 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v261 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v261 - v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v55);
  v56 = type metadata accessor for MusicPin(0);
  OUTLINED_FUNCTION_4();
  v295 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_60_16();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v261 - v68;
  v282 = v70;
  v71 = *(v70 + 16);
  v275 = v70 + 16;
  v274 = v71;
  v71(&v261 - v68, v283, v64);
  v72 = sub_1D4E62A60(&qword_1EDD53C08, &qword_1EC7F1D28, &qword_1D5643A60, MEMORY[0x1E6975008]);
  v280 = v69;
  v277 = v64;
  v273 = v72;
  v73 = sub_1D5614FB8();
  OUTLINED_FUNCTION_3_106();
  v76 = sub_1D5204908(v74, v75, &protocol conformance descriptor for MusicPin);
  v281 = v1;
  v279 = v56;
  v304 = v76;
  sub_1D560D9F8();
  v77 = v305 + *(v297 + 24);
  v78 = *v77;
  v79 = *(v77 + 8);
  v303 = v73;
  if (!v79)
  {
    v296 = v53;
    k = v50;
    v290 = v78;
    v1 = 0;
    v116 = (v272 + 8);
    v117 = *(v73 + 16);
    v96 = v266;
    for (i = v117; ; v117 = i)
    {
      v118 = k;
      v119 = v293;
      if (v1 == v117)
      {
        v120 = 1;
        v1 = v117;
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (v1 >= *(v73 + 16))
        {
          goto LABEL_80;
        }

        v121 = v294;
        OUTLINED_FUNCTION_18_56();
        *v121 = v1;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v123, v121 + v122);
        sub_1D52057F4(v121, v118, &qword_1EC7F1D68, &qword_1D5643C80);
        v120 = 0;
        ++v1;
      }

      __swift_storeEnumTagSinglePayload(v118, v120, 1, v119);
      v124 = v296;
      sub_1D52057F4(v118, v296, &qword_1EC7F1D70, &qword_1D5643C88);
      v125 = OUTLINED_FUNCTION_45_1();
      if (__swift_getEnumTagSinglePayload(v125, v126, v119) == 1)
      {
        v96 = v283;
        OUTLINED_FUNCTION_28_43();
        goto LABEL_71;
      }

      v127 = v96;
      v291 = *v124;
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v124 + v128, v2);
      if (qword_1EC7E9028 != -1)
      {
        OUTLINED_FUNCTION_19_52();
        swift_once();
      }

      v53 = qword_1EC87C288;
      OUTLINED_FUNCTION_3_106();
      sub_1D5204908(&qword_1EDD5EC98, v129, &protocol conformance descriptor for MusicPin);
      v130 = v2;
      sub_1D560EC28();
      v106 = v298;
      OUTLINED_FUNCTION_23_1(v298);
      if (v107)
      {
LABEL_95:
        v258 = v106;
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_6_74();
      v131 = v288;
      sub_1D52056EC(v106, v288);
      OUTLINED_FUNCTION_84_12();
      v53 = v289;
      sub_1D560EC28();
      OUTLINED_FUNCTION_23_1(v53);
      if (v107)
      {
LABEL_94:
        v258 = v53;
LABEL_97:
        sub_1D4E50004(v258, &qword_1EC7EEDB8, &qword_1D5640B80);
        while (1)
        {
          sub_1D5615E08();
          __break(1u);
LABEL_99:
          v259 = OUTLINED_FUNCTION_45_1();
          OUTLINED_FUNCTION_76_12(v259, v260);
          sub_1D4E50004(v53, &qword_1EC7F1D50, &unk_1D5643C60);
          v307 = 0;
          v308 = 0xE000000000000000;
          sub_1D5615B68();
          v306[0] = v307;
          v306[1] = v308;
          MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D5687F20);
          sub_1D5612B18();
          sub_1D5615D48();
          __swift_destroy_boxed_opaque_existential_1(&v307);
          MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
        }
      }

      OUTLINED_FUNCTION_6_74();
      sub_1D52056EC(v53, v96);
      OUTLINED_FUNCTION_13_60();
      sub_1D5204908(&qword_1EC7EC830, v132, &protocol conformance descriptor for MusicPin.Item);
      v133 = v300;
      sub_1D560EC98();
      v134 = v301;
      sub_1D560EC98();
      v135 = sub_1D560D528();
      v136 = *v116;
      v137 = v134;
      v138 = v302;
      (*v116)(v137, v302);
      v139 = v138;
      v96 = v127;
      v136(v133, v139);
      sub_1D520579C(v127, type metadata accessor for MusicPin.Item);
      sub_1D520579C(v131, type metadata accessor for MusicPin.Item);
      v73 = v303;
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_4_77();
      v2 = v130;
      sub_1D520579C(v130, v140);
    }

    v167 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D54B45D4(v73, v164, v165, v166);
      v73 = v251;
    }

    v96 = v283;
    OUTLINED_FUNCTION_28_43();
    v171 = v291;
    v172 = *(v73 + 16);
    if (v291 < v172)
    {
      v173 = v172 - 1;
      OUTLINED_FUNCTION_18_56();
      v175 = *(v174 + 72);
      v177 = v176 + v175 * v171;
      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(v177, v178);
      sub_1D4F0373C(v177 + v175, v172 - 1 - v171, v177);
      *(v73 + 16) = v172 - 1;
      if (v172 <= v290)
      {
        goto LABEL_88;
      }

      v179 = v264;
      if (v290 < 0)
      {
        __break(1u);
      }

      else
      {
        v171 = v167;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v167, v179);
        v310 = v73;
        if (v172 <= *(v73 + 24) >> 1)
        {
LABEL_54:
          sub_1D54FB990();
          OUTLINED_FUNCTION_4_77();
          sub_1D520579C(v171, v180);
          goto LABEL_71;
        }
      }

      OUTLINED_FUNCTION_73_14(1);
      v73 = v254;
      v310 = v254;
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_86;
  }

  if (v79 == 1)
  {
    v80 = v78;
    v81 = *(v297 + 20);
    OUTLINED_FUNCTION_3_106();
    v84 = sub_1D5204908(v82, v83, &protocol conformance descriptor for MusicPin);
    v298 = v81;
    v297 = v84;
    sub_1D5612B18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
    v53 = v267;
    v85 = swift_dynamicCast();
    v86 = v293;
    if ((v85 & 1) == 0)
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_76_12(v53, 0);
    sub_1D52056EC(v53, v270);
    v87 = v291;
    if (qword_1EC7E9020 != -1)
    {
      swift_once();
    }

    v88 = qword_1EC87C280;
    v309 = &type metadata for MusicPin.Action;
    LOBYTE(v307) = v80;
    swift_retain_n();
    v286 = v88;
    sub_1D528FA08(&v307, v88);
    OUTLINED_FUNCTION_165_4();
    sub_1D5205744(v89, v90);
    v91 = sub_1D560D708();
    v92 = v271;
    *v271 = v91;
    v92[1] = v93;
    sub_1D5204908(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider, &unk_1D564BCEC);
    sub_1D5610D28();
    OUTLINED_FUNCTION_36_30();
    sub_1D520579C(v88, v94);
    v95 = 0;
    v289 = (v272 + 8);
    v1 = *(v73 + 16);
    v96 = v269;
    v53 = i;
    for (j = v1; ; v1 = j)
    {
      v97 = v296;
      if (v95 == v1)
      {
        v98 = 1;
        v95 = v1;
      }

      else
      {
        if ((v95 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v95 >= *(v73 + 16))
        {
          goto LABEL_81;
        }

        v99 = v294;
        OUTLINED_FUNCTION_18_56();
        *v99 = v95;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v101, v99 + v100);
        v102 = v99;
        v97 = v296;
        sub_1D52057F4(v102, v296, &qword_1EC7F1D68, &qword_1D5643C80);
        v98 = 0;
        ++v95;
      }

      __swift_storeEnumTagSinglePayload(v97, v98, 1, v86);
      v103 = v97;
      v104 = v290;
      sub_1D52057F4(v103, v290, &qword_1EC7F1D70, &qword_1D5643C88);
      if (__swift_getEnumTagSinglePayload(v104, 1, v86) == 1)
      {
        OUTLINED_FUNCTION_29_38();
        OUTLINED_FUNCTION_43_22();
        goto LABEL_59;
      }

      v288 = *v104;
      v1 = v86;
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v104 + v105, v53);
      if (qword_1EC7E9028 != -1)
      {
        OUTLINED_FUNCTION_19_52();
        swift_once();
      }

      OUTLINED_FUNCTION_161();
      sub_1D560EC28();
      v106 = k;
      OUTLINED_FUNCTION_23_1(k);
      if (v107)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_6_74();
      sub_1D52056EC(v106, v96);
      OUTLINED_FUNCTION_161();
      sub_1D560EC28();
      OUTLINED_FUNCTION_23_1(v87);
      if (v107)
      {
        v258 = v87;
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_6_74();
      OUTLINED_FUNCTION_165_4();
      sub_1D52056EC(v108, v109);
      OUTLINED_FUNCTION_13_60();
      sub_1D5204908(&qword_1EC7EC830, v110, &protocol conformance descriptor for MusicPin.Item);
      sub_1D560EC98();
      v111 = v301;
      sub_1D560EC98();
      v112 = sub_1D560D528();
      v113 = *v289;
      (*v289)(v111, v302);
      v114 = OUTLINED_FUNCTION_61();
      v113(v114);
      sub_1D520579C(v53, type metadata accessor for MusicPin.Item);
      sub_1D520579C(v96, type metadata accessor for MusicPin.Item);
      if (v112)
      {
        break;
      }

      OUTLINED_FUNCTION_4_77();
      v53 = i;
      sub_1D520579C(i, v115);
      v73 = v303;
      v87 = v291;
    }

    v73 = v303;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_56:
      v173 = v283;
      OUTLINED_FUNCTION_28_43();
      v181 = *(v73 + 16);
      v182 = v288;
      if (v288 >= v181)
      {
        __break(1u);
LABEL_88:
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_18_56();
        v184 = *(v183 + 72);
        v186 = v185 + v184 * v182;
        OUTLINED_FUNCTION_4_77();
        sub_1D520579C(v186, v187);
        sub_1D4F0373C(v186 + v184, v181 - 1 - v182, v186);
        *(v73 + 16) = v181 - 1;
        OUTLINED_FUNCTION_0_134();
        sub_1D5205744(v271, v265);
        v310 = v73;
        if (v181 <= *(v73 + 24) >> 1)
        {
          goto LABEL_58;
        }
      }

      OUTLINED_FUNCTION_73_14(1);
      v73 = v253;
      v310 = v253;
LABEL_58:
      v96 = v173;
      sub_1D54FB990();
      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(i, v188);
LABEL_59:
      v307 = v73;
      v189 = OUTLINED_FUNCTION_71();
      __swift_instantiateConcreteTypeFromMangledNameV2(v189, v190);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_65();
      v195 = sub_1D4E62A60(v191, v192, v193, v194);
      OUTLINED_FUNCTION_50_21(v195);

      OUTLINED_FUNCTION_4_77();
      sub_1D520579C(v271, v196);
      OUTLINED_FUNCTION_36_30();
      sub_1D520579C(v270, v197);
      goto LABEL_60;
    }

LABEL_86:
    sub_1D54B45D4(v73, v168, v169, v170);
    v73 = v252;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_43_22();
  v141 = v293;
  OUTLINED_FUNCTION_79_10();
  v96 = j;
  if (!v142)
  {
    OUTLINED_FUNCTION_14_1();
    sub_1D4E62A60(v198, v199, v200, v201);
    v96 = v283;
    sub_1D5615608();
    sub_1D5615648();
    v202 = sub_1D5615638();
    if (v202 >= sub_1D51FEF88())
    {

      v33 = v276;
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_0_134();
    v204 = v262;
    sub_1D5205744(v305 + v203, v262);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v276;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_63:
      v207 = *(v73 + 16);
      v206 = *(v73 + 24);
      if (v207 >= v206 >> 1)
      {
        OUTLINED_FUNCTION_73_14(v206 > 1);
        v73 = v257;
      }

      *(v73 + 16) = v207 + 1;
      OUTLINED_FUNCTION_18_56();
      OUTLINED_FUNCTION_7_83();
      sub_1D52056EC(v204, v208);
      v307 = v73;
      v209 = OUTLINED_FUNCTION_71();
      __swift_instantiateConcreteTypeFromMangledNameV2(v209, v210);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_65();
      v215 = sub_1D4E62A60(v211, v212, v213, v214);
      OUTLINED_FUNCTION_50_21(v215);
LABEL_60:
      (*(v282 + 40))(v281, &qword_1EC7F1D40, v1);
      goto LABEL_72;
    }

LABEL_93:
    sub_1D4F02190();
    v73 = v256;
    goto LABEL_63;
  }

  v1 = 0;
  v143 = (v272 + 8);
  v144 = *(v73 + 16);
  for (k = v144; ; v144 = k)
  {
    if (v1 == v144)
    {
      v145 = 1;
      v1 = v144;
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (v1 >= *(v73 + 16))
      {
        goto LABEL_83;
      }

      v146 = v294;
      OUTLINED_FUNCTION_18_56();
      *v146 = v1;
      OUTLINED_FUNCTION_0_134();
      sub_1D5205744(v148, v146 + v147);
      sub_1D52057F4(v146, v64, &qword_1EC7F1D68, &qword_1D5643C80);
      v145 = 0;
      ++v1;
    }

    __swift_storeEnumTagSinglePayload(v64, v145, 1, v141);
    v149 = v285;
    sub_1D52057F4(v64, v285, &qword_1EC7F1D70, &qword_1D5643C88);
    if (__swift_getEnumTagSinglePayload(v149, 1, v141) == 1)
    {
      OUTLINED_FUNCTION_29_38();
      OUTLINED_FUNCTION_43_22();
      goto LABEL_71;
    }

    v298 = *v149;
    OUTLINED_FUNCTION_7_83();
    sub_1D52056EC(v149 + v150, v96);
    if (qword_1EC7E9028 != -1)
    {
      OUTLINED_FUNCTION_19_52();
      swift_once();
    }

    OUTLINED_FUNCTION_3_106();
    sub_1D5204908(&qword_1EDD5EC98, v151, &protocol conformance descriptor for MusicPin);
    OUTLINED_FUNCTION_161();
    sub_1D560EC28();
    OUTLINED_FUNCTION_23_1(v53);
    if (v107)
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_6_74();
    v96 = v284;
    sub_1D52056EC(v53, v284);
    OUTLINED_FUNCTION_84_12();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_161();
    sub_1D560EC28();
    OUTLINED_FUNCTION_23_1(v53);
    if (v107)
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_6_74();
    OUTLINED_FUNCTION_165_4();
    sub_1D52056EC(v152, v153);
    OUTLINED_FUNCTION_13_60();
    sub_1D5204908(&qword_1EC7EC830, v154, &protocol conformance descriptor for MusicPin.Item);
    v155 = v300;
    OUTLINED_FUNCTION_200();
    sub_1D560EC98();
    v156 = v301;
    OUTLINED_FUNCTION_200();
    sub_1D560EC98();
    v157 = sub_1D560D528();
    v158 = *v143;
    v159 = v156;
    v160 = v302;
    (*v143)(v159, v302);
    v158(v155, v160);
    v64 = type metadata accessor for MusicPin.Item;
    sub_1D520579C(v53, type metadata accessor for MusicPin.Item);
    v161 = OUTLINED_FUNCTION_75_2();
    sub_1D520579C(v161, v162);
    v73 = v303;
    if (v157)
    {
      break;
    }

    OUTLINED_FUNCTION_4_77();
    v96 = j;
    sub_1D520579C(j, v163);
    OUTLINED_FUNCTION_79_10();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54B45D4(v73, v216, v217, v218);
    v73 = v255;
  }

  v204 = v283;
  OUTLINED_FUNCTION_28_43();
  v219 = v298;
  v220 = *(v73 + 16);
  if (v298 >= v220)
  {
    __break(1u);
    goto LABEL_93;
  }

  v221 = v220 - 1;
  OUTLINED_FUNCTION_18_56();
  v223 = *(v222 + 72);
  v225 = v224 + v223 * v219;
  sub_1D520579C(v225, type metadata accessor for MusicPin);
  sub_1D4F0373C(v225 + v223, v221 - v219, v225);
  *(v73 + 16) = v221;
  sub_1D520579C(j, type metadata accessor for MusicPin);
  v96 = v204;
LABEL_71:
  v307 = v73;
  v226 = OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v226, v227);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_65();
  sub_1D4E62A60(v228, v229, v230, v231);
  OUTLINED_FUNCTION_68_14();
  sub_1D560DAD8();
  v232 = v280;
  sub_1D520475C(&qword_1D5643C58);
  OUTLINED_FUNCTION_172();
  (*(v233 + 8))(&qword_1D5643C58, v1);
  (qword_1EC7F1D68)(v281, v232, v1);
LABEL_72:
  if (qword_1EDD544C8 != -1)
  {
LABEL_84:
    OUTLINED_FUNCTION_11_73(&qword_1EDD544C8);
  }

  v234 = sub_1D560C758();
  __swift_project_value_buffer(v234, qword_1EDD76B20);
  OUTLINED_FUNCTION_5_81();
  sub_1D5205744(v305, v33);
  v235 = sub_1D560C738();
  v236 = sub_1D56156E8();
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    *v237 = 136315394;
    v238 = sub_1D5205034();
    v240 = v239;
    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v33, v241);
    v242 = sub_1D4E6835C(v238, v240, &v307);

    *(v237 + 4) = v242;
    *(v237 + 12) = 2082;
    v243 = v281;
    OUTLINED_FUNCTION_59(v281, v306);
    sub_1D4E62A60(&qword_1EC7F1D78, &qword_1EC7F1D28, &qword_1D5643A60, MEMORY[0x1E6975028]);
    v244 = sub_1D56160F8();
    v246 = sub_1D4E6835C(v244, v245, &v307);

    *(v237 + 14) = v246;
    _os_log_impl(&dword_1D4E3F000, v235, v236, "Applying transient state record: %s. Updating pins collection to %{public}s", v237, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_2_106();
    sub_1D520579C(v33, v247);
    v243 = v281;
  }

  v248 = v275;
  v249 = v274;
  OUTLINED_FUNCTION_59(v243, &v307);
  v249(v280, v243, v1);
  OUTLINED_FUNCTION_172();
  (*(v250 + 32))(v278, v96, v1);
  sub_1D560DA18();
  (*(v248 + 8))(v243, v1);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D520475C(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v7 = sub_1D560DA58();
  sub_1D51FD944(a1, &v7);

  type metadata accessor for MusicPin(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D40, &qword_1D5643C58);
  OUTLINED_FUNCTION_3_106();
  sub_1D5204908(v2, v3, &protocol conformance descriptor for MusicPin);
  OUTLINED_FUNCTION_96();
  sub_1D4E62A60(v4, &qword_1EC7F1D40, &qword_1D5643C58, v5);
  sub_1D560DAD8();
}

void sub_1D5204874(uint64_t a1)
{
  if (!qword_1EDD5D790)
  {
    type metadata accessor for MusicPin(255);
    sub_1D5204908(&qword_1EDD5ECA0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5D790);
    }
  }
}

uint64_t sub_1D5204908(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5204998(uint64_t a1)
{
  result = sub_1D560C368();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicPin(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5204A38()
{
  result = qword_1EC7F1D30;
  if (!qword_1EC7F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1D30);
  }

  return result;
}

uint64_t sub_1D5204A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for MusicPin(0);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D50, &unk_1D5643C60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for MusicPinPropertyProvider(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v30 = a3;
  sub_1D5205744(a1, a3);
  v17 = *a2;

  sub_1D525C790(a1, v17);
  v19 = v18;
  LOBYTE(a3) = v20;

  if ((a3 & 1) == 0)
  {
    v29 = v7;
    if (qword_1EC7E9038 != -1)
    {
      swift_once();
    }

    v22 = qword_1EC87C298;
    sub_1D5204908(&qword_1EDD5ECA0, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    sub_1D5204908(&qword_1EDD5EC98, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v28 = v22;
    result = sub_1D560EC28();
    if (v35 == 1)
    {
      v23 = v29;
      if (!v19)
      {
        return result;
      }
    }

    else
    {
      v23 = v29;
      if (v19 == v34)
      {
        return result;
      }
    }

    sub_1D5612B18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
      sub_1D52056EC(v10, v16);
      v36 = MEMORY[0x1E69E6530];
      v34 = v19;
      v24 = v28;
      swift_retain_n();
      sub_1D528FA08(&v34, v24);
      sub_1D5205744(v16, v14);
      *v23 = sub_1D560D708();
      v23[1] = v25;
      sub_1D5204908(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider, &unk_1D564BCEC);
      sub_1D5610D28();

      sub_1D520579C(v14, type metadata accessor for MusicPinPropertyProvider);
      sub_1D520579C(v16, type metadata accessor for MusicPinPropertyProvider);
      v26 = v30;
      sub_1D520579C(v30, type metadata accessor for MusicPin);
      return sub_1D52056EC(v23, v26);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      sub_1D4E50004(v10, &qword_1EC7F1D50, &unk_1D5643C60);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1D5615B68();
      v32 = v34;
      v33 = v35;
      MEMORY[0x1DA6EAC70](0xD00000000000003DLL, 0x80000001D5687F20);
      sub_1D5612B18();
      sub_1D5615D48();
      __swift_destroy_boxed_opaque_existential_1(&v34);
      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5204FC0(uint64_t a1)
{
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v1, v2, MEMORY[0x1E69695B8]);

  return sub_1D5614CB8();
}

unint64_t sub_1D5205034()
{
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v0, v1, MEMORY[0x1E69695E0]);
  v2 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  v3 = MusicPin.description.getter();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x203A6E6970202CLL, 0xE700000000000000);

  MEMORY[0x1DA6EAC70](0x74617265706F202CLL, 0xED0000203A6E6F69);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000015;
}

BOOL sub_1D5205200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return 1;
    }

    if (v4 == 1)
    {
      return (v3 ^ v2) == 0;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1D5205268()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](3);
      v1 = v1;
    }

    else
    {
      v1 = v1 != 0;
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](2);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t sub_1D52052CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA6EC0D0](3);
      v1 = v1;
    }

    else
    {
      v1 = v1 != 0;
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](2);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D5205350()
{
  sub_1D56162D8();
  sub_1D560C368();
  OUTLINED_FUNCTION_20_53();
  sub_1D5204908(v0, v1, MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52053D4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5205268();
  return sub_1D5616328();
}

uint64_t sub_1D5205430(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D560C368();
  sub_1D5204908(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5205500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_107();
  sub_1D5204908(v3, v4, &protocol conformance descriptor for MusicLibraryPinsObserver);
  return sub_1D560C4B8();
}

BOOL sub_1D52055A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1D560C818();
      sub_1D5204908(&qword_1EC7EDEC0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);

      v2 = sub_1D5614D18();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

BOOL sub_1D5205670(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1D5205AFC();
    v5 = a1;
    v6 = a2;
    v2 = sub_1D5615848();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_1D52056EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D5205744(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D520579C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D52057F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

unint64_t sub_1D5205850()
{
  result = qword_1EDD53C10;
  if (!qword_1EDD53C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1D28, &qword_1D5643A60);
    sub_1D5204908(qword_1EDD593C8, type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53C10);
  }

  return result;
}

uint64_t sub_1D5205904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_22(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1D52023E4(a1, v5);
}

uint64_t sub_1D520597C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D80, &unk_1D5643C90);
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D4ECF3E8;
  v3 = OUTLINED_FUNCTION_18_27();

  return sub_1D52025B8(v3, v4, v5, v6);
}

uint64_t sub_1D5205A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5205AFC()
{
  result = qword_1EC7F1DC8;
  if (!qword_1EC7F1DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7F1DC8);
  }

  return result;
}

uint64_t sub_1D5205C3C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4ECF4E0;
  v4 = OUTLINED_FUNCTION_18_27();

  return sub_1D51FE74C(v4, v5, v6, v2);
}

uint64_t OUTLINED_FUNCTION_34_37(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_51_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_57_23()
{

  sub_1D5202C28();
}

uint64_t OUTLINED_FUNCTION_74_16()
{
  *(v1 - 104) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_76_12(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t Composer.name.getter()
{
  if (qword_1EC7E90E0 != -1)
  {
    swift_once();
  }

  sub_1D5208690(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_0_135();
  sub_1D5208690(v0, type metadata accessor for Composer, v1);
  sub_1D560EC28();
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t static Composer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Composer(0);

  return sub_1D5611A78();
}

uint64_t Composer.siriRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v99 = v3;
  v100 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v98 = v5 - v4;
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v95 = v7;
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v93 = v9 - v8;
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v88 = v11;
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v91 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v83 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v83 - v35;
  v37 = type metadata accessor for Composer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  sub_1D52077E8(v1, v40 - v39);
  v42 = Composer.name.getter();
  v86 = v43;
  v87 = v42;
  sub_1D56140F8();
  v90 = v36;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  sub_1D56106B8();
  v92 = v32;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_1D560C0A8();
  v94 = v28;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  if (qword_1EC7E90E8 != -1)
  {
    OUTLINED_FUNCTION_4_78(&qword_1EC7E90E8);
  }

  v56 = sub_1D560C328();
  OUTLINED_FUNCTION_3_107();
  sub_1D5208690(v57, v32, &protocol conformance descriptor for Composer);
  OUTLINED_FUNCTION_0_135();
  v60 = sub_1D5208690(v58, v32, v59);
  sub_1D560EC28();
  v85 = __swift_getEnumTagSinglePayload(v24, 1, v56) != 1;
  sub_1D4E50004(v24, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_33();
  v61 = v96;
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v96);
  v102 = v37;
  v103 = v60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
  v84 = v41;
  sub_1D52077E8(v41, boxed_opaque_existential_0);
  v66 = __swift_project_boxed_opaque_existential_1(v101, v102);
  v68 = v88;
  v67 = v89;
  (*(v88 + 16))(v14, &v66[*(v37 + 20)], v89);
  v69 = v93;
  sub_1D5611A98();
  (*(v68 + 8))(v14, v67);
  v70 = v91;
  sub_1D560FDD8();
  (*(v95 + 8))(v69, v61);
  sub_1D4E50004(v20, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v61);
  sub_1D4F7AFE0(v70, v20);
  __swift_destroy_boxed_opaque_existential_1(v101);
  v71 = v98;
  sub_1D560EC98();
  sub_1D4E69970(v20, v70, &qword_1EC7EA358, &unk_1D561DF50);
  v72 = type metadata accessor for MusicSiriRepresentation(0);
  v73 = v97;
  v74 = v90;
  sub_1D4E69970(v90, v97 + v72[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v75 = v92;
  sub_1D4E69970(v92, v73 + v72[9], &qword_1EC7EC478, &unk_1D56299D0);
  v76 = v94;
  sub_1D4E69970(v94, v73 + v72[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v101[0]) = 2;
  sub_1D50391CC();
  v78 = v77;
  v80 = v79;
  sub_1D4E50004(v70, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v99 + 8))(v71, v100);
  sub_1D4E50004(v20, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E50004(v75, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E50004(v74, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = sub_1D5208304(v84);
  *v73 = v78;
  *(v73 + 8) = v80;
  *(v73 + 16) = 2;
  v82 = v86;
  *(v73 + 24) = v87;
  *(v73 + 32) = v82;
  *(v73 + 40) = 0;
  *(v73 + 48) = 0;
  return result;
}