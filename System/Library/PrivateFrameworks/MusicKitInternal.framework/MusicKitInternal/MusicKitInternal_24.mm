uint64_t sub_1D50A4F64()
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
  qword_1EC7EF468 = v4;
  return result;
}

uint64_t sub_1D50A510C()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EF478);
  __swift_project_value_buffer(v0, qword_1EC7EF478);
  type metadata accessor for Playlist.Entry.Reaction(0);
  sub_1D50A53F4(&qword_1EC7EF4A8, type metadata accessor for Playlist.Entry.Reaction, &protocol conformance descriptor for Playlist.Entry.Reaction);
  return sub_1D560D978();
}

uint64_t sub_1D50A51E4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EF490);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EF490);
  if (qword_1EC7E8D80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7EF478);
  OUTLINED_FUNCTION_24_0();
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D50A53F4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_25_31()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_1D5615B68();
}

uint64_t type metadata accessor for PlaylistCollaborationPropertyProvider(uint64_t a1)
{
  result = qword_1EC7EF4F0;
  if (!qword_1EC7EF4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50A54E8(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EC7EF500, &type metadata for Playlist.Collaborator.Status);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1D50A5760(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7EF508, &type metadata for Playlist.Collaboration.InvitationMode);
        if (v4 <= 0x3F)
        {
          sub_1D50A5760(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D4E6D600(319, qword_1EDD5F330, &qword_1EC7EC8E0, &qword_1D563D3C0);
            if (v6 <= 0x3F)
            {
              sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
              if (v7 <= 0x3F)
              {
                sub_1D50A5760(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_1D560D838();
                  if (v9 <= 0x3F)
                  {
                    sub_1D5610088();
                    if (v10 <= 0x3F)
                    {
                      sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D4E5CF94(319);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1D50A5760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D50A580C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v10 = OUTLINED_FUNCTION_22(v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56836A0);
    v78 = v2;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v71 = 30;
    goto LABEL_58;
  }

  v25 = v24;
  v73 = v13;
  v74 = v8;
  v75 = v0;
  v26 = qword_1EC7E8F80;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_7_49(&qword_1EC7E8F80);
  }

  *&v76 = qword_1EC87C258;
  v78 = v25;
  sub_1D50A8B94(&unk_1EC7EF548);
  if (sub_1D5614D18())
  {
    v27 = *v75;

    v28 = &type metadata for Playlist.Collaborator.Status;
    if (v27 == 4)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v27 == 4)
    {
      v28 = 0;
    }

    *v4 = v29;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v28;
    goto LABEL_56;
  }

  v30 = qword_1EC7E8F88;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_6_48(&qword_1EC7E8F88);
  }

  v31 = OUTLINED_FUNCTION_0_71(qword_1EC87C260);

  if ((v31 & 1) == 0)
  {
    v35 = qword_1EC7E8F90;

    if (v35 != -1)
    {
      OUTLINED_FUNCTION_32_24(&qword_1EC7E8F90);
    }

    v36 = OUTLINED_FUNCTION_0_71(qword_1EC87C268);

    if (v36)
    {
      v37 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
      v38 = OUTLINED_FUNCTION_50_14(*(v37 + 24));
      sub_1D4F1C460(v38, v23, v39, v40);
      v41 = sub_1D560C328();
      OUTLINED_FUNCTION_10(v23);
      if (!v42)
      {
LABEL_54:
        *(&v77 + 1) = v41;
        __swift_allocate_boxed_opaque_existential_0(&v76);
        OUTLINED_FUNCTION_24_0();
        (*(v65 + 32))();

        goto LABEL_55;
      }

      v43 = &qword_1EC7EA3B8;
      v44 = &unk_1D561E370;
      goto LABEL_24;
    }

    v46 = qword_1EC7E8F98;

    if (v46 != -1)
    {
      OUTLINED_FUNCTION_31_24(&qword_1EC7E8F98);
    }

    OUTLINED_FUNCTION_0_71(qword_1EC87C270);
    OUTLINED_FUNCTION_58_11();
    if (v46)
    {
      v32 = v75[*(type metadata accessor for PlaylistCollaborationPropertyProvider(0) + 28)];

      v33 = v32 & 1;
      v34 = &type metadata for Playlist.Collaboration.InvitationMode;
      goto LABEL_15;
    }

    v47 = qword_1EC7E8FA0;

    if (v47 != -1)
    {
      OUTLINED_FUNCTION_5_50(&qword_1EC7E8FA0);
    }

    OUTLINED_FUNCTION_0_71(qword_1EC7F0F78);
    OUTLINED_FUNCTION_58_11();
    if (v47)
    {
      v48 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
      v49 = OUTLINED_FUNCTION_50_14(*(v48 + 32));
      sub_1D4F1C460(v49, v19, v50, v51);
      v41 = sub_1D560C0A8();
      OUTLINED_FUNCTION_10(v19);
      if (!v42)
      {
        goto LABEL_54;
      }

      v43 = &unk_1EC7E9CA8;
      v44 = &unk_1D561D1D0;
      v45 = v19;
    }

    else
    {
      v52 = qword_1EC7E8FA8;

      if (v52 != -1)
      {
        OUTLINED_FUNCTION_4_46(&qword_1EC7E8FA8);
      }

      OUTLINED_FUNCTION_0_71(qword_1EC7F0F80);
      OUTLINED_FUNCTION_58_11();
      if ((v52 & 1) == 0)
      {
        v57 = qword_1EC7E8FB8;

        if (v57 != -1)
        {
          OUTLINED_FUNCTION_3_57(&qword_1EC7E8FB8);
        }

        OUTLINED_FUNCTION_0_71(qword_1EC7F0F90);
        OUTLINED_FUNCTION_58_11();
        if (v57)
        {
          v58 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
          v59 = OUTLINED_FUNCTION_50_14(*(v58 + 40));
          v23 = v73;
          sub_1D4F1C460(v59, v73, v60, v61);
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
          OUTLINED_FUNCTION_10(v23);
          if (!v42)
          {
            goto LABEL_54;
          }

          v43 = &qword_1EC7EC8D0;
          v44 = &unk_1D5623AD0;
        }

        else
        {
          v62 = qword_1EC7E8FB0;

          if (v62 != -1)
          {
            OUTLINED_FUNCTION_2_55(&qword_1EC7E8FB0);
          }

          v63 = OUTLINED_FUNCTION_0_71(qword_1EC7F0F88);

          if ((v63 & 1) == 0)
          {
            while (1)
            {
              OUTLINED_FUNCTION_30();
              sub_1D5615B68();
              OUTLINED_FUNCTION_16_6();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v78 = v2;
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_28();
              v71 = 53;
LABEL_58:
              v72 = v71;
              OUTLINED_FUNCTION_35_23("Fatal error", v67, v68, v69, v70, "MusicKitInternal/PlaylistCollaborationPropertyProvider.swift");
              __break(1u);
            }
          }

          v64 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
          v23 = v74;
          sub_1D4F1C460(&v75[*(v64 + 44)], v74, &qword_1EC7EB620, &unk_1D561E5B0);
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
          OUTLINED_FUNCTION_10(v23);
          if (!v42)
          {
            goto LABEL_54;
          }

          v43 = &qword_1EC7EB620;
          v44 = &unk_1D561E5B0;
        }

LABEL_24:
        v45 = v23;
        goto LABEL_25;
      }

      v53 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
      v54 = OUTLINED_FUNCTION_50_14(*(v53 + 36));
      sub_1D4F1C460(v54, v15, v55, v56);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_10(v15);
      if (!v42)
      {
        goto LABEL_54;
      }

      v43 = &qword_1EC7EC8D0;
      v44 = &unk_1D5623AD0;
      v45 = v15;
    }

LABEL_25:
    sub_1D4E50004(v45, v43, v44);
    v76 = 0u;
    v77 = 0u;
LABEL_55:
    v66 = v77;
    *v4 = v76;
    *(v4 + 1) = v66;
    goto LABEL_56;
  }

  v32 = v75[1];

  v33 = v32 & 1;
  v34 = MEMORY[0x1E69E6370];
LABEL_15:
  if (v32 == 2)
  {
    v34 = 0;
  }

  *v4 = v33;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = v34;
LABEL_56:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50A6010(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56836A0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_24;
  }

  v5 = v4;
  v6 = qword_1EC7E8F80;
  swift_retain_n();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_7_49(&qword_1EC7E8F80);
  }

  v76 = qword_1EC87C258;
  sub_1D50A8B94(&unk_1EC7EF548);
  sub_1D5614D18();
  OUTLINED_FUNCTION_44_2();
  if (v3)
  {
    goto LABEL_11;
  }

  v7 = qword_1EC7E8F88;

  if (v7 != -1)
  {
    v8 = OUTLINED_FUNCTION_6_48(&qword_1EC7E8F88);
  }

  OUTLINED_FUNCTION_9_44(v8, v9, v10, v11, v12, v13, v14, v15, v57, v62, v67, v5, v76);
  OUTLINED_FUNCTION_44_2();
  if (v7)
  {
    goto LABEL_11;
  }

  v16 = qword_1EC7E8FA0;

  if (v16 != -1)
  {
    v17 = OUTLINED_FUNCTION_5_50(&qword_1EC7E8FA0);
  }

  OUTLINED_FUNCTION_9_44(v17, v18, v19, v20, v21, v22, v23, v24, v58, v63, v68, v72, v77);
  OUTLINED_FUNCTION_44_2();
  if (v16)
  {
LABEL_11:
    swift_getKeyPath();
    OUTLINED_FUNCTION_24_27();
    sub_1D50A8D50(v25);
    OUTLINED_FUNCTION_52();
    sub_1D5612248();
  }

  else
  {
    v27 = qword_1EC7E8FA8;

    if (v27 != -1)
    {
      v28 = OUTLINED_FUNCTION_4_46(&qword_1EC7E8FA8);
    }

    OUTLINED_FUNCTION_9_44(v28, v29, v30, v31, v32, v33, v34, v35, v59, v64, v69, v73, v78);
    OUTLINED_FUNCTION_44_2();
    if ((v27 & 1) == 0)
    {
      v36 = qword_1EC7E8FB8;

      if (v36 != -1)
      {
        v37 = OUTLINED_FUNCTION_3_57(&qword_1EC7E8FB8);
      }

      OUTLINED_FUNCTION_9_44(v37, v38, v39, v40, v41, v42, v43, v44, v60, v65, v70, v74, v79);
      OUTLINED_FUNCTION_44_2();
      if ((v36 & 1) == 0)
      {
        v45 = qword_1EC7E8FB0;

        if (v45 != -1)
        {
          v46 = OUTLINED_FUNCTION_2_55(&qword_1EC7E8FB0);
        }

        OUTLINED_FUNCTION_9_44(v46, v47, v48, v49, v50, v51, v52, v53, v61, v66, v71, v75, v80);
        OUTLINED_FUNCTION_44_2();
        if ((v45 & 1) == 0)
        {
          while (1)
          {
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D56836E0);
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
LABEL_24:
            OUTLINED_FUNCTION_35_23("Fatal error", v55, v56, 0, 0xE000000000000000, "MusicKitInternal/PlaylistCollaborationPropertyProvider.swift");
            __break(1u);
          }
        }
      }
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_24_27();
    sub_1D50A8D50(v54);
    OUTLINED_FUNCTION_52();
    sub_1D5612238();
  }

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D50A6414()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v89 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_2();
  v90 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v87 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v86 - v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v86 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v92 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v93 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF528, &qword_1D56319C8);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = (v34 - v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF530, &unk_1D56319D0);
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000003BLL, 0x80000001D56835E0);
    v95 = v6;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v85 = 85;
    goto LABEL_53;
  }

  v1 = v36;
  sub_1D4E628D4(v4, v94);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
    sub_1D4E50004(v30, &qword_1EC7EF528, &qword_1D56319C8);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D5683620);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v85 = 88;
    goto LABEL_53;
  }

  v37 = OUTLINED_FUNCTION_33_27();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
  sub_1D50A8B30(v30, v35);
  v40 = qword_1EC7E8F80;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_7_49(&qword_1EC7E8F80);
  }

  v94[0] = qword_1EC87C258;
  v95 = v1;
  sub_1D50A8B94(&unk_1EC7EF538);
  sub_1D5614D18();
  OUTLINED_FUNCTION_48_14();
  if (v40)
  {

    v41 = *v35;
    sub_1D50A8BE4(v35);
    if (v41 == 4)
    {
      LOBYTE(v41) = *v2;
    }

    *v2 = v41;
    goto LABEL_50;
  }

  v86 = v31;
  v42 = qword_1EC7E8F88;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_6_48(&qword_1EC7E8F88);
  }

  v94[0] = qword_1EC87C260;
  v95 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF540, &unk_1D56319E0);
  sub_1D50A8B94(&unk_1EC7EF548);
  sub_1D5614D18();
  OUTLINED_FUNCTION_48_14();
  if ((&qword_1EC7EF540 & 1) == 0)
  {
    v44 = qword_1EC7E8FA0;

    if (v44 != -1)
    {
      OUTLINED_FUNCTION_5_50(&qword_1EC7E8FA0);
    }

    OUTLINED_FUNCTION_14_37(qword_1EC7F0F78);
    OUTLINED_FUNCTION_48_14();
    if (v44)
    {

      v45 = v86;
      sub_1D4F1C460(&v35[v86[8]], v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D50A8BE4(v35);
      v46 = sub_1D560C0A8();
      OUTLINED_FUNCTION_1(v25);
      if (v47)
      {
        v53 = v93;
        sub_1D4F1C460(&v2[v45[8]], v93, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_1(v25);
        if (!v47)
        {
          sub_1D4E50004(v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        v53 = v93;
        (*(v52 + 32))(v93, v25, v46);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v46);
      }

      v54 = &unk_1EC7E9CA8;
      v55 = &unk_1D561D1D0;
      v56 = &v2[v45[8]];
      v57 = v53;
      goto LABEL_49;
    }

    v48 = qword_1EC7E8FA8;

    v49 = v86;
    if (v48 != -1)
    {
      OUTLINED_FUNCTION_4_46(&qword_1EC7E8FA8);
    }

    OUTLINED_FUNCTION_14_37(qword_1EC7F0F80);
    OUTLINED_FUNCTION_48_14();
    if (v48)
    {

      v50 = v91;
      sub_1D4F1C460(&v35[v49[9]], v91, &qword_1EC7EC8D0, &unk_1D5623AD0);
      sub_1D50A8BE4(v35);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_1(v50);
      if (v47)
      {
        v61 = v92;
        sub_1D4F1C460(&v2[v49[9]], v92, &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v50);
        if (!v47)
        {
          sub_1D4E50004(v50, &qword_1EC7EC8D0, &unk_1D5623AD0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        v61 = v92;
        v62 = OUTLINED_FUNCTION_42_18();
        v63(v62);
        v64 = OUTLINED_FUNCTION_33_27();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v51);
      }

      v67 = v49[9];
    }

    else
    {
      v58 = qword_1EC7E8FB8;

      if (v58 != -1)
      {
        OUTLINED_FUNCTION_3_57(&qword_1EC7E8FB8);
      }

      OUTLINED_FUNCTION_14_37(qword_1EC7F0F90);
      OUTLINED_FUNCTION_48_14();
      if ((v58 & 1) == 0)
      {
        v68 = qword_1EC7E8FB0;

        if (v68 != -1)
        {
          OUTLINED_FUNCTION_2_55(&qword_1EC7E8FB0);
        }

        OUTLINED_FUNCTION_14_37(qword_1EC7F0F88);
        OUTLINED_FUNCTION_48_14();
        if ((v68 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            OUTLINED_FUNCTION_16_6();
            MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5683660);
            v95 = v1;
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v85 = 107;
LABEL_53:
            v86 = v85;
            OUTLINED_FUNCTION_35_23("Fatal error", v81, v82, v83, v84, "MusicKitInternal/PlaylistCollaborationPropertyProvider.swift");
            __break(1u);
          }
        }

        v69 = v89;
        sub_1D4F1C460(&v35[v49[11]], v89, &qword_1EC7EB620, &unk_1D561E5B0);
        sub_1D50A8BE4(v35);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
        OUTLINED_FUNCTION_1(v69);
        v61 = v90;
        if (v47)
        {
          sub_1D4F1C460(&v2[v49[11]], v90, &qword_1EC7EB620, &unk_1D561E5B0);
          OUTLINED_FUNCTION_1(v69);
          if (!v47)
          {
            sub_1D4E50004(v69, &qword_1EC7EB620, &unk_1D561E5B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          v76 = OUTLINED_FUNCTION_42_18();
          v77(v76);
          v78 = OUTLINED_FUNCTION_33_27();
          __swift_storeEnumTagSinglePayload(v78, v79, v80, v70);
        }

        v67 = v49[11];
        v54 = &qword_1EC7EB620;
        v55 = &unk_1D561E5B0;
        goto LABEL_48;
      }

      v59 = v87;
      sub_1D4F1C460(&v35[v49[10]], v87, &qword_1EC7EC8D0, &unk_1D5623AD0);
      sub_1D50A8BE4(v35);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      OUTLINED_FUNCTION_1(v59);
      if (v47)
      {
        v61 = v88;
        sub_1D4F1C460(&v2[v49[10]], v88, &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v59);
        if (!v47)
        {
          sub_1D4E50004(v59, &qword_1EC7EC8D0, &unk_1D5623AD0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        v61 = v88;
        v71 = OUTLINED_FUNCTION_42_18();
        v72(v71);
        v73 = OUTLINED_FUNCTION_33_27();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v60);
      }

      v67 = v49[10];
    }

    v54 = &qword_1EC7EC8D0;
    v55 = &unk_1D5623AD0;
LABEL_48:
    v56 = &v2[v67];
    v57 = v61;
LABEL_49:
    sub_1D4F1C350(v57, v56, v54, v55);
    goto LABEL_50;
  }

  v43 = v35[1];
  sub_1D50A8BE4(v35);
  if (v43 == 2)
  {
    LOBYTE(v43) = v2[1];
  }

  v2[1] = v43;
LABEL_50:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50A6E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5631850;
  if (qword_1EC7E8F80 != -1)
  {
    OUTLINED_FUNCTION_7_49(&qword_1EC7E8F80);
  }

  *(v0 + 32) = qword_1EC87C258;
  v1 = qword_1EC7E8F88;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_6_48(&qword_1EC7E8F88);
  }

  *(v0 + 40) = qword_1EC87C260;
  v2 = qword_1EC7E8F90;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_32_24(&qword_1EC7E8F90);
  }

  *(v0 + 48) = qword_1EC87C268;
  v3 = qword_1EC7E8F98;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_31_24(&qword_1EC7E8F98);
  }

  *(v0 + 56) = qword_1EC87C270;
  v4 = qword_1EC7E8FA0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_5_50(&qword_1EC7E8FA0);
  }

  *(v0 + 64) = qword_1EC7F0F78;
  v5 = qword_1EC7E8FA8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_4_46(&qword_1EC7E8FA8);
  }

  *(v0 + 72) = qword_1EC7F0F80;
  v6 = qword_1EC7E8FB8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_3_57(&qword_1EC7E8FB8);
  }

  *(v0 + 80) = qword_1EC7F0F90;
  v7 = qword_1EC7E8FB0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_2_55(&qword_1EC7E8FB0);
  }

  *(v0 + 88) = qword_1EC7F0F88;
  qword_1EC87C090 = v0;
}

void sub_1D50A7068()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v126 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v124 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v125 = v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v128 = v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4();
  v134 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v130 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v129 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v132 = v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF550, &qword_1D5669880);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v131 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v135 = v24;
  v141 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v137 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v133 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v136 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v140 = v34;
  v35 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v119 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v119 - v48;
  v50 = *v3;
  v51 = *v1;
  if (v50 == 4)
  {
    if (v51 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v50 != v51)
  {
    goto LABEL_20;
  }

  v52 = v3[1];
  v53 = v1[1];
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
  {
    goto LABEL_20;
  }

  v120 = v4;
  v54 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  v123 = v1;
  v55 = *(v54 + 24);
  v56 = v3;
  v57 = *(v46 + 48);
  v121 = v54;
  v122 = v56;
  sub_1D4F1C460(&v56[v55], v49, &qword_1EC7EA3B8, &unk_1D561E370);
  v58 = &v123[v55];
  v59 = v123;
  sub_1D4F1C460(v58, &v49[v57], &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(v49);
  if (v60)
  {
    OUTLINED_FUNCTION_10(&v49[v57]);
    if (v60)
    {
      sub_1D4E50004(v49, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_22;
    }

LABEL_18:
    v61 = &qword_1EC7EB578;
    v62 = &unk_1D5644D10;
    v63 = v49;
LABEL_19:
    sub_1D4E50004(v63, v61, v62);
    goto LABEL_20;
  }

  sub_1D4F1C460(v49, v45, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_10(&v49[v57]);
  if (v60)
  {
    (*(v37 + 8))(v45, v35);
    goto LABEL_18;
  }

  (*(v37 + 32))(v41, &v49[v57], v35);
  OUTLINED_FUNCTION_23_30();
  sub_1D50A8D50(v64);
  OUTLINED_FUNCTION_26_27();
  v65 = sub_1D5614D18();
  v66 = *(v37 + 8);
  v66(v41, v35);
  v66(v45, v35);
  sub_1D4E50004(v49, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v65 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v68 = v121;
  v67 = v122;
  v69 = v121[7];
  v70 = v122[v69];
  v71 = v59[v69];
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
  {
    goto LABEL_20;
  }

  v72 = v121[8];
  v73 = *(v32 + 48);
  v74 = v140;
  OUTLINED_FUNCTION_47_4(&v122[v72], v140);
  OUTLINED_FUNCTION_47_4(&v59[v72], v74 + v73);
  if (__swift_getEnumTagSinglePayload(v74, 1, v141) == 1)
  {
    OUTLINED_FUNCTION_43_0(v74 + v73);
    if (!v60)
    {
      goto LABEL_34;
    }

    sub_1D4E50004(v74, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    sub_1D4F1C460(v74, v136, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_43_0(v74 + v73);
    if (v60)
    {
      v75 = OUTLINED_FUNCTION_26_27();
      v76(v75);
LABEL_34:
      v61 = &qword_1EC7E9FB0;
      v62 = &qword_1D562C590;
LABEL_35:
      v63 = v74;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_39_18();
    v77(v133);
    OUTLINED_FUNCTION_21_29();
    sub_1D50A8D50(v78);
    OUTLINED_FUNCTION_28_28();
    v79 = OUTLINED_FUNCTION_221();
    (unk_1D561D1D0)(v79);
    v80 = OUTLINED_FUNCTION_26_27();
    (unk_1D561D1D0)(v80);
    sub_1D4E50004(v74, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((&unk_1EC7E9CA8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v81 = v68[9];
  v82 = *(v138 + 48);
  v83 = v135;
  OUTLINED_FUNCTION_47_4(&v67[v81], v135);
  v84 = v83;
  sub_1D4F1C460(&v59[v81], v83 + v82, &qword_1EC7EC8D0, &unk_1D5623AD0);
  v85 = v139;
  if (__swift_getEnumTagSinglePayload(v83, 1, v139) == 1)
  {
    OUTLINED_FUNCTION_43_0(v83 + v82);
    if (!v60)
    {
      goto LABEL_44;
    }

    sub_1D4E50004(v83, &qword_1EC7EC8D0, &unk_1D5623AD0);
  }

  else
  {
    sub_1D4F1C460(v83, v132, &qword_1EC7EC8D0, &unk_1D5623AD0);
    OUTLINED_FUNCTION_43_0(v83 + v82);
    if (v60)
    {
      v86 = OUTLINED_FUNCTION_26_27();
      v87(v86);
LABEL_44:
      v61 = &qword_1EC7EF550;
      v62 = &qword_1D5669880;
      v63 = v83;
      goto LABEL_19;
    }

    v88 = v134;
    v89 = v130;
    (*(v134 + 32))(v130, v84 + v82, v85);
    OUTLINED_FUNCTION_25_32();
    sub_1D50A8C40(v90);
    LODWORD(v141) = sub_1D5614D18();
    v91 = *(v88 + 8);
    v91(v89, v85);
    v92 = OUTLINED_FUNCTION_26_27();
    (v91)(v92);
    sub_1D4E50004(v84, &qword_1EC7EC8D0, &unk_1D5623AD0);
    if ((v141 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v93 = v68[10];
  v94 = *(v138 + 48);
  v74 = v131;
  OUTLINED_FUNCTION_47_4(&v67[v93], v131);
  OUTLINED_FUNCTION_47_4(&v59[v93], v74 + v94);
  OUTLINED_FUNCTION_43_0(v74);
  if (v60)
  {
    OUTLINED_FUNCTION_43_0(v74 + v94);
    if (v60)
    {
      sub_1D4E50004(v74, &qword_1EC7EC8D0, &unk_1D5623AD0);
      goto LABEL_56;
    }

LABEL_54:
    v61 = &qword_1EC7EF550;
    v62 = &qword_1D5669880;
    goto LABEL_35;
  }

  sub_1D4F1C460(v74, v129, &qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_43_0(v74 + v94);
  if (v95)
  {
    v96 = OUTLINED_FUNCTION_26_27();
    v97(v96);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_39_18();
  v98(v130);
  OUTLINED_FUNCTION_25_32();
  sub_1D50A8C40(v99);
  OUTLINED_FUNCTION_28_28();
  v100 = OUTLINED_FUNCTION_221();
  (unk_1D5623AD0)(v100);
  v101 = OUTLINED_FUNCTION_26_27();
  (unk_1D5623AD0)(v101);
  sub_1D4E50004(v74, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if ((&qword_1EC7EC8D0 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_56:
  v102 = v68[11];
  v74 = v128;
  v103 = *(v127 + 48);
  OUTLINED_FUNCTION_47_4(&v67[v102], v128);
  OUTLINED_FUNCTION_47_4(&v59[v102], v74 + v103);
  if (__swift_getEnumTagSinglePayload(v74, 1, v120) == 1)
  {
    OUTLINED_FUNCTION_43_0(v74 + v103);
    if (!v60)
    {
      goto LABEL_63;
    }

    sub_1D4E50004(v74, &qword_1EC7EB620, &unk_1D561E5B0);
  }

  else
  {
    sub_1D4F1C460(v74, v125, &qword_1EC7EB620, &unk_1D561E5B0);
    OUTLINED_FUNCTION_43_0(v74 + v103);
    if (v60)
    {
      v104 = OUTLINED_FUNCTION_26_27();
      v105(v104);
LABEL_63:
      v61 = &qword_1EC7EB670;
      v62 = qword_1D561E830;
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_39_18();
    v106(v124);
    sub_1D50A8CC8(&qword_1EC7EB6A0);
    OUTLINED_FUNCTION_28_28();
    v107 = OUTLINED_FUNCTION_221();
    (unk_1D561E5B0)(v107);
    v108 = OUTLINED_FUNCTION_26_27();
    (unk_1D561E5B0)(v108);
    sub_1D4E50004(v74, &qword_1EC7EB620, &unk_1D561E5B0);
    if ((&qword_1EC7EB620 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_1D4EF6F7C();
  if ((v109 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v110 = v68[15];
  v111 = &v67[v110];
  v112 = *&v67[v110 + 8];
  v113 = &v59[v110];
  v114 = *(v113 + 1);
  if (!v112)
  {
    if (v114)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

  if (v114)
  {
    v115 = *v111 == *v113 && v112 == v114;
    if (v115 || (sub_1D5616168() & 1) != 0)
    {
LABEL_77:
      OUTLINED_FUNCTION_36_21();
      if (v116)
      {
        OUTLINED_FUNCTION_36_21();
        if (v117)
        {
          OUTLINED_FUNCTION_36_21();
          if (v118)
          {
            OUTLINED_FUNCTION_36_21();
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_46();
}

void sub_1D50A7D54()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v68 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v67 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v74 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_4();
  v72 = v9;
  v73 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v71 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v70 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v69 = v16;
  v17 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v66 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v65 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v37 = *v0;
  if (v37 == 4)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v37);
  }

  if (v0[1] != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v38 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  sub_1D4F1C460(&v0[v38[6]], v36, &qword_1EC7EA3B8, &unk_1D561E370);
  if (__swift_getEnumTagSinglePayload(v36, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v28 + 32))(v32, v36, v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_23_30();
    sub_1D50A8D50(v39);
    sub_1D5614CB8();
    v40 = *(v28 + 8);
    v28 += 8;
    v40(v32, v26);
  }

  v41 = v0[v38[7]];
  if (v41 == 2)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v41 & 1);
  }

  v42 = v73;
  sub_1D4F1C460(&v0[v38[8]], v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_43_0(v25);
  if (v43)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = v65;
    v44 = v66;
    (*(v66 + 32))(v65, v25, v17);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_21_29();
    sub_1D50A8D50(v45);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    v32 = v44 + 8;
    v46 = OUTLINED_FUNCTION_26_27();
    v47(v46);
  }

  v48 = v75;
  v49 = v69;
  sub_1D4F1C460(&v1[v38[9]], v69, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v42) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v50 = OUTLINED_FUNCTION_37_21();
    v51(v50);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_31();
    sub_1D50A8C40(v52);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    (*(v32 + 8))(v28, v42);
  }

  v53 = v70;
  sub_1D4F1C460(&v1[v38[10]], v70, &qword_1EC7EC8D0, &unk_1D5623AD0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v42) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v54 = OUTLINED_FUNCTION_37_21();
    v55(v54);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_31();
    sub_1D50A8C40(v56);
    OUTLINED_FUNCTION_41_22();
    sub_1D5614CB8();
    (*(v32 + 8))(v28, v42);
  }

  v57 = v74;
  sub_1D4F1C460(&v1[v38[11]], v74, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_43_0(v57);
  if (v43)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v59 = v67;
    v58 = v68;
    (*(v68 + 32))(v67, v57, v48);
    OUTLINED_FUNCTION_27();
    sub_1D50A8CC8(&qword_1EC7EB6C0);
    sub_1D5614CB8();
    (*(v58 + 8))(v59, v48);
  }

  v60 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v60, v61);
  sub_1D560D838();
  v62 = sub_1D50A8D50(&qword_1EDD53DC0);
  OUTLINED_FUNCTION_42(v62);
  sub_1D5610088();
  v63 = sub_1D50A8D50(&qword_1EDD53358);
  OUTLINED_FUNCTION_42(v63);
  if (*&v1[v38[15] + 8])
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
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

uint64_t sub_1D50A854C()
{
  sub_1D56162D8();
  sub_1D50A7D54();
  return sub_1D5616328();
}

void (*sub_1D50A8594(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D50A580C();
  return sub_1D50A8600;
}

void sub_1D50A8600(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50A6010(v2 + 32, v3);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D50A6010(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D50A86C0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50A7D54();
  return sub_1D5616328();
}

uint64_t sub_1D50A8744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50A8D50(&unk_1EC7EF520);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50A87D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50A884C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D50A88E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50A8958(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_1D50A899C(uint64_t a1)
{
  v2 = sub_1D50A8D50(&unk_1EC7EF520);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50A8A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50A8D50(&unk_1EC7EF510);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50A8AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50A8D50(&unk_1EC7EF518);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D50A8B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D50A8B94(uint64_t a1)
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

uint64_t sub_1D50A8BE4(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50A8C40(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    sub_1D50A8D50(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50A8CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA538, &qword_1D561C490);
    sub_1D50A8D50(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50A8D50(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_28_28()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_31_24(uint64_t a1)
{

  return swift_once();
}

uint64_t MusicLibrary.LikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D50A8F34()
{
  result = qword_1EC7EF578;
  if (!qword_1EC7EF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF578);
  }

  return result;
}

_BYTE *_s10LikeActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s10LikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D50A911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>)
{
  v10 = sub_1D560D838();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  if (sub_1D560F0C8())
  {
LABEL_2:

    v17 = 0;
LABEL_3:
    v18 = 2;
LABEL_4:
    *a4 = v17;
    *(a4 + 8) = v18;
    return __swift_destroy_boxed_opaque_existential_1(a3);
  }

  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v11 + 8))(v13, v10);
  v20 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_1D50AA0F4(v16);
LABEL_14:
    v27 = v29;
    goto LABEL_15;
  }

  v21 = sub_1D560D488();
  v23 = v22;
  (*(*(v20 - 8) + 8))(v16, v20);
  if (v21 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v23 == v24)
  {

    goto LABEL_14;
  }

  v26 = sub_1D5616168();

  v27 = v29;
  if ((v26 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_15:
  switch(a1)
  {
    case 0:
      goto LABEL_2;
    case 1:

      v18 = 2;
      v17 = 1;
      goto LABEL_4;
    case 2:

      v17 = 2;
      goto LABEL_3;
    case 3:

      v18 = 0;
      v17 = a5;
      goto LABEL_4;
    case 4:

      v18 = 2;
      v17 = 3;
      goto LABEL_4;
    case 5:

      v18 = 2;
      v17 = 4;
      goto LABEL_4;
    case 6:

      v17 = v27 & 7;
      v18 = 1;
      goto LABEL_4;
    default:
      result = sub_1D5615E08();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1D50A94B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MusicLibrary.DownloadStatus.DownloadPauseReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D50A94F8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibrary.DownloadStatus.DownloadPauseReasons.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static MusicLibrary.DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      switch(*&v2)
      {
        case 1:
          return v4 == 2 && *&v3 == 1;
        case 2:
          return v4 == 2 && *&v3 == 2;
        case 3:
          return v4 == 2 && *&v3 == 3;
        case 4:
          return v4 == 2 && *&v3 == 4;
        default:
          return v4 == 2 && *&v3 == 0;
      }
    }

    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  return !*(a2 + 8) && v2 == v3;
}

uint64_t MusicLibrary.DownloadStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](6);
      v2 = v1;
    }

    else
    {
      switch(v1)
      {
        case 1:
          v2 = 1;
          break;
        case 2:
          v2 = 2;
          break;
        case 3:
          v2 = 4;
          break;
        case 4:
          v2 = 5;
          break;
        default:
          v2 = 0;
          break;
      }
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1DA6EC100](v4);
  }
}

uint64_t MusicLibrary.DownloadStatus.hashValue.getter()
{
  sub_1D56162D8();
  MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50A96F0(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

unint64_t MusicLibrary.DownloadStatus.description.getter()
{
  if (!*(v0 + 8))
  {
    v3 = 0;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000017, 0x80000001D5683730);
    sub_1D5615568();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_1D5615B68();

    v3 = 0xD000000000000011;
    v1 = MusicLibrary.DownloadStatus.DownloadPauseReasons.description.getter();
    MEMORY[0x1DA6EAC70](v1);

LABEL_5:
    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    return v3;
  }

  result = 0x616F6C6E776F642ELL;
  switch(*v0)
  {
    case 1:
    case 3:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t MusicLibrary.DownloadStatus.DownloadPauseReasons.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1D4EFF8E4();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_72();
    v2 = v17;
  }

  OUTLINED_FUNCTION_1_67();
  v5 = v2 + 16 * v4;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = v6;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_56(0, *(v2 + 16) + 1);
      v2 = v18;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v2 = v19;
    }

    OUTLINED_FUNCTION_1_67();
    v8 = v2 + 16 * v7;
    *(v8 + 32) = 0xD000000000000013;
    *(v8 + 40) = v9;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_56(0, *(v2 + 16) + 1);
      v2 = v20;
    }

    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v2 = v21;
    }

    OUTLINED_FUNCTION_1_67();
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0xD000000000000017;
    *(v11 + 40) = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v13 = sub_1D5614CF8();
  v15 = v14;

  MEMORY[0x1DA6EAC70](v13, v15);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_1D50A9AEC()
{
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50A9C08(char a1)
{
  sub_1D4EFF8E4();
  v3 = v2;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_2_56(v4 > 1, v5 + 1);
    v3 = v21;
  }

  *(v3 + 16) = v6;
  v7 = v3 + 16 * v5;
  *(v7 + 32) = 0x656E6F6E2ELL;
  *(v7 + 40) = 0xE500000000000000;
  if (a1)
  {
    v8 = *(v3 + 24);
    v9 = v5 + 2;
    if (v9 > (v8 >> 1))
    {
      OUTLINED_FUNCTION_2_56(v8 > 1, v9);
      v3 = v22;
    }

    *(v3 + 16) = v9;
    v10 = v3 + 16 * v6;
    *(v10 + 32) = 0xD000000000000010;
    *(v10 + 40) = 0x80000001D56837D0;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (v12 >= v11 >> 1)
  {
    OUTLINED_FUNCTION_2_56(v11 > 1, v12 + 1);
    v3 = v23;
  }

  *(v3 + 16) = v12 + 1;
  v13 = v3 + 16 * v12;
  *(v13 + 32) = 0xD000000000000013;
  *(v13 + 40) = 0x80000001D56837B0;
  if ((a1 & 4) != 0)
  {
LABEL_13:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_72();
      v3 = v24;
    }

    OUTLINED_FUNCTION_1_67();
    v15 = v3 + 16 * v14;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = v16;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v17 = sub_1D5614CF8();
  v19 = v18;

  MEMORY[0x1DA6EAC70](v17, v19);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_1D50A9E08()
{
  result = qword_1EDD52780;
  if (!qword_1EDD52780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52780);
  }

  return result;
}

unint64_t sub_1D50A9E70()
{
  result = qword_1EC7EF580;
  if (!qword_1EC7EF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF580);
  }

  return result;
}

unint64_t sub_1D50A9EC8()
{
  result = qword_1EC7EF588;
  if (!qword_1EC7EF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF588);
  }

  return result;
}

unint64_t sub_1D50A9F1C()
{
  result = qword_1EC7EF590;
  if (!qword_1EC7EF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF590);
  }

  return result;
}

unint64_t sub_1D50A9F74()
{
  result = qword_1EC7EF598;
  if (!qword_1EC7EF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF598);
  }

  return result;
}

unint64_t sub_1D50A9FCC()
{
  result = qword_1EC7EF5A0;
  if (!qword_1EC7EF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF5A0);
  }

  return result;
}

uint64_t _s14DownloadStatusOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t _s14DownloadStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D50AA0A4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D50AA0BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D50AA0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudMovieClip(uint64_t a1)
{
  result = qword_1EDD57428;
  if (!qword_1EDD57428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50AA1D4(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1D500A1D4(319);
      if (v3 <= 0x3F)
      {
        sub_1D4F55058(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_1D50AA2F0(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v64 = v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v66 = v16;
  v17 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_2();
  v27 = *(a1 + 8);
  v28 = *(a2 + 8);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *a1 == *a2 && v27 == v28;
    if (!v29 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v30 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v62 = v11;
  v63 = v8;
  v61 = v6;
  v60 = type metadata accessor for CloudMovieClip(0);
  v31 = *(v60 + 24);
  v32 = *(v25 + 48);
  sub_1D4F1C460(a1 + v31, v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F1C460(a2 + v31, v3 + v32, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v3, 1, v17);
  if (v29)
  {
    OUTLINED_FUNCTION_57(v3 + v32, 1, v17);
    v34 = v62;
    v33 = v63;
    if (v29)
    {
      sub_1D4E50004(v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_26;
    }

LABEL_24:
    v36 = &qword_1EC7E9FB0;
    v37 = &qword_1D562C590;
    v38 = v3;
LABEL_35:
    sub_1D4E50004(v38, v36, v37);
    return 0;
  }

  sub_1D4F1C460(v3, v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v3 + v32, 1, v17);
  v33 = v63;
  if (v35)
  {
    (*(v67 + 8))(v2, v17);
    goto LABEL_24;
  }

  v39 = v67;
  (*(v67 + 32))(v22, v3 + v32, v17);
  OUTLINED_FUNCTION_0_73();
  sub_1D50AB7AC(v40, v41, MEMORY[0x1E6968FC8]);
  v42 = sub_1D5614D18();
  v43 = *(v39 + 8);
  v43(v22, v17);
  v43(v2, v17);
  v34 = v62;
  sub_1D4E50004(v3, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v44 = *(v65 + 48);
  v45 = v66;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v46, v47, v48, v49);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v50, v51, v52, v53);
  v54 = v61;
  OUTLINED_FUNCTION_57(v45, 1, v61);
  if (v29)
  {
    OUTLINED_FUNCTION_57(v45 + v44, 1, v54);
    if (v29)
    {
      sub_1D4E50004(v45, &qword_1EC7EB5B8, &unk_1D56206A0);
      return 1;
    }

    goto LABEL_34;
  }

  v55 = v64;
  sub_1D4F1C460(v45, v64, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v45 + v44, 1, v54);
  if (v56)
  {
    (*(v33 + 8))(v55, v54);
LABEL_34:
    v36 = &qword_1EC7EC330;
    v37 = &qword_1D56222C0;
    v38 = v45;
    goto LABEL_35;
  }

  (*(v33 + 32))(v34, v45 + v44, v54);
  sub_1D50AB710(&qword_1EC7EBEB8, &qword_1EC7EBDD0, MEMORY[0x1E6975980], MEMORY[0x1E6975DB8]);
  v58 = sub_1D5614D18();
  v59 = *(v33 + 8);
  v59(v34, v54);
  v59(v55, v54);
  sub_1D4E50004(v45, &qword_1EC7EB5B8, &unk_1D56206A0);
  return (v58 & 1) != 0;
}

uint64_t sub_1D50AA8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7255736C68 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472)
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

unint64_t sub_1D50AAA44(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6C7255736C68;
      break;
    case 3:
      result = 0x4177656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50AAAD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5B0, &qword_1D5631FA8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50AB5E8();
  sub_1D56163D8();
  v12[15] = 0;
  OUTLINED_FUNCTION_10_43();
  sub_1D5616028();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616058();
    type metadata accessor for CloudMovieClip(0);
    v12[13] = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_73();
    sub_1D50AB7AC(v9, v10, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v12[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50AB63C(&qword_1EC7EC350, MEMORY[0x1E6975DA8]);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1D50AACEC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v32 = v3;
  v33 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v21 = *(v1 + 16);
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v21);
  }

  v22 = type metadata accessor for CloudMovieClip(0);
  sub_1D4F1C460(v1 + *(v22 + 24), v20, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v20, 1, v10);
  if (v23)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_73();
    sub_1D50AB7AC(v24, v25, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v12 + 8))(v16, v10);
  }

  sub_1D4F1C460(v1 + *(v22 + 28), v9, &qword_1EC7EB5B8, &unk_1D56206A0);
  v26 = v33;
  OUTLINED_FUNCTION_57(v9, 1, v33);
  if (v23)
  {
    return OUTLINED_FUNCTION_36();
  }

  v28 = v31;
  v27 = v32;
  (*(v32 + 32))(v31, v9, v26);
  OUTLINED_FUNCTION_27();
  sub_1D50AB710(&qword_1EC7EBE78, &qword_1EC7EBDC8, MEMORY[0x1E6975978], MEMORY[0x1E6975DB0]);
  sub_1D5614CB8();
  return (*(v27 + 8))(v28, v26);
}

uint64_t sub_1D50AB068()
{
  sub_1D56162D8();
  sub_1D50AACEC(v1);
  return sub_1D5616328();
}

uint64_t sub_1D50AB0A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5A8, &qword_1D5631FA0);
  OUTLINED_FUNCTION_4();
  v36 = v14;
  v37 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_2();
  v16 = type metadata accessor for CloudMovieClip(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D50AB5E8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v22 = v12;
  v34 = v8;
  v42 = 0;
  v23 = v36;
  OUTLINED_FUNCTION_13_36();
  v24 = sub_1D5615F38();
  v26 = v25;
  *v20 = v24;
  *(v20 + 8) = v25;
  v41 = 1;
  OUTLINED_FUNCTION_13_36();
  v27 = sub_1D5615F68();
  v33 = v26;
  *(v20 + 16) = v27;
  *(v20 + 24) = v28 & 1;
  sub_1D560C0A8();
  v40 = 2;
  OUTLINED_FUNCTION_0_73();
  sub_1D50AB7AC(v29, v30, MEMORY[0x1E6968FD0]);
  OUTLINED_FUNCTION_13_36();
  sub_1D5615F78();
  sub_1D4FD23EC(v22, v20 + *(v16 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v39 = 3;
  sub_1D50AB63C(&qword_1EDD531B8, MEMORY[0x1E6975DC0]);
  v31 = v34;
  OUTLINED_FUNCTION_13_36();
  sub_1D5615F78();
  (*(v23 + 8))(v3, v37);
  sub_1D4FD23EC(v31, v20 + *(v16 + 28), &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50AC340(v20, v35, type metadata accessor for CloudMovieClip);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D50AC3A0(v20, type metadata accessor for CloudMovieClip);
}

uint64_t sub_1D50AB4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50AA8E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50AB4F8(uint64_t a1)
{
  v2 = sub_1D50AB5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50AB534(uint64_t a1)
{
  v2 = sub_1D50AB5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50AB5AC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50AACEC(v2);
  return sub_1D5616328();
}

unint64_t sub_1D50AB5E8()
{
  result = qword_1EDD57458[0];
  if (!qword_1EDD57458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD57458);
  }

  return result;
}

uint64_t sub_1D50AB63C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v4 = MEMORY[0x1E6975968];
    sub_1D50AB7AC(&qword_1EDD533A8, MEMORY[0x1E6975968], MEMORY[0x1E6975988]);
    sub_1D50AB7AC(&qword_1EDD533B0, v4, MEMORY[0x1E6975970]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50AB710(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50AB7AC(a2, MEMORY[0x1E6975968], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50AB7AC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D50AB7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v41 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v45 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v46 = v11;
  v12 = type metadata accessor for CloudMovieClip(0);
  OUTLINED_FUNCTION_14();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v41 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v41 - v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  sub_1D5610708();
  v25 = v24[1];
  v43 = *v24;
  v44 = v25;

  OUTLINED_FUNCTION_6_49();
  sub_1D50AC3A0(v24, v26);
  sub_1D5610708();
  v27 = *(v22 + 2);
  v28 = v22[24];
  sub_1D50AC3A0(v22, v1);
  v29 = 0.0;
  v42 = v28;
  if ((v28 & 1) == 0)
  {
    v29 = v27 / 1000.0;
  }

  sub_1D5610708();
  sub_1D4F1C460(&v19[*(v12 + 24)], v46, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_6_49();
  sub_1D50AC3A0(v19, v30);
  sub_1D5610708();
  v31 = v41;
  sub_1D4F1C460(&v16[*(v12 + 28)], v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D50AC3A0(v16, v1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_57(v31, 1, v32);
  if (v33)
  {
    sub_1D4E50004(v31, &qword_1EC7EB5B8, &unk_1D56206A0);
    v35 = 1;
    v34 = v45;
  }

  else
  {
    v34 = v45;
    sub_1D5610758();
    (*(*(v32 - 8) + 8))(v31, v32);
    v35 = 0;
  }

  v36 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  v37 = sub_1D5610718();
  v38 = v44;
  *a1 = v43;
  *(a1 + 8) = v38;
  *(a1 + 16) = v29;
  *(a1 + 24) = v42;
  v39 = type metadata accessor for MovieClip(0);
  sub_1D4FD23EC(v46, a1 + v39[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
  result = sub_1D4FD23EC(v34, a1 + v39[7], &qword_1EC7E9CA0, &unk_1D561A0C0);
  *(a1 + v39[8]) = v37;
  return result;
}

uint64_t sub_1D50ABBD4(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = type metadata accessor for MovieClip(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D4F039C4(0, v10, 0);
    v11 = v24;
    v12 = v4 + 16;
    OUTLINED_FUNCTION_43_3();
    v14 = a1 + v13;
    v21 = *(v12 + 56);
    v22 = v15;
    do
    {
      v22(v1, v14, v23);
      sub_1D50AB7F4(v9);
      (*(v12 - 8))(v1, v23);
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D4F039C4(v16 > 1, v17 + 1, 1);
      }

      *(v24 + 16) = v17 + 1;
      OUTLINED_FUNCTION_43_3();
      sub_1D50AC3F8(v9, v24 + v18 + *(v19 + 72) * v17);
      v14 += v21;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_1D50ABDF0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_2();
  v60 = type metadata accessor for CloudMovieClip(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v57 = (v14 - v13);
  v63 = type metadata accessor for MovieClip(0);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE90, &qword_1D561DC80);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v58 = v24;
  v25 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    return result;
  }

  v65 = MEMORY[0x1E69E7CC0];
  v51 = v7;
  sub_1D4F042CC(0, v25, 0);
  v27 = v51;
  OUTLINED_FUNCTION_43_3();
  v29 = a1 + v28;
  v64 = v65;
  v52 = *(v16 + 72);
  v53 = v22 + 32;
  v55 = v2;
  v56 = v1;
  v54 = v22;
  while (1)
  {
    result = sub_1D50AC340(v29, v20, type metadata accessor for MovieClip);
    v30 = *(v20 + 8);
    v31 = *(v20 + 24);
    v62 = *v20;
    if (v31)
    {
      v61 = 0;
      goto LABEL_9;
    }

    v32 = *(v20 + 16) * 1000.0;
    if (COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v32 <= -9.22337204e18)
    {
      goto LABEL_18;
    }

    if (v32 >= 9.22337204e18)
    {
      goto LABEL_19;
    }

    v61 = v32;
LABEL_9:
    v33 = v63;
    sub_1D4F1C460(v20 + *(v63 + 24), v2, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F1C460(v20 + *(v33 + 28), v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v34 = sub_1D56140F8();
    v35 = v27;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v34);

    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v35, &qword_1EC7E9CA0, &unk_1D561A0C0);
      v37 = 1;
      v27 = v35;
      v38 = v56;
    }

    else
    {
      v38 = v56;
      v27 = v35;
      sub_1D5613F28();
      (*(*(v34 - 8) + 8))(v35, v34);
      v37 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    __swift_storeEnumTagSinglePayload(v38, v37, 1, v39);
    v40 = v57;
    v41 = v61;
    *v57 = v62;
    v40[1] = v30;
    v40[2] = v41;
    *(v40 + 24) = v31;
    v42 = v60;
    v2 = v55;
    sub_1D4FD23EC(v55, v40 + *(v60 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4FD23EC(v38, v40 + *(v42 + 28), &qword_1EC7EB5B8, &unk_1D56206A0);

    v43 = v58;
    sub_1D56106F8();
    sub_1D50AC3A0(v20, type metadata accessor for MovieClip);
    v44 = v64;
    v65 = v64;
    v46 = *(v64 + 16);
    v45 = *(v64 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_1D4F042CC(v45 > 1, v46 + 1, 1);
      v27 = v51;
      v44 = v65;
    }

    *(v44 + 16) = v46 + 1;
    v47 = v54;
    OUTLINED_FUNCTION_43_3();
    v64 = v48;
    (*(v47 + 32))(v48 + v49 + *(v47 + 72) * v46, v43, v59);
    v29 += v52;
    if (!--v25)
    {
      return v64;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D50AC340(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D50AC3A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D50AC3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovieClip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudMovieClip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50AC53C()
{
  result = qword_1EC7EF5B8;
  if (!qword_1EC7EF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF5B8);
  }

  return result;
}

unint64_t sub_1D50AC594()
{
  result = qword_1EDD57448;
  if (!qword_1EDD57448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57448);
  }

  return result;
}

unint64_t sub_1D50AC5EC()
{
  result = qword_1EDD57450;
  if (!qword_1EDD57450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57450);
  }

  return result;
}

uint64_t static Playlist.Entry.extendedStorage(for:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v205 = a4;
  v207 = a3;
  v219 = a1;
  v210 = a5;
  v209 = _s15InternalStorageVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v7 = OUTLINED_FUNCTION_48(v6);
  v8 = type metadata accessor for TVEpisode(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v11 = OUTLINED_FUNCTION_48(v10);
  v12 = type metadata accessor for MusicMovie(v11);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v14);
  v199 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v198 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v18);
  v218 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v196 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v22 = OUTLINED_FUNCTION_48(v21);
  v23 = type metadata accessor for UploadedAudio(v22);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v26 = OUTLINED_FUNCTION_48(v25);
  v27 = type metadata accessor for UploadedVideo(v26);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v29);
  v201 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v204 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_2();
  v203 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v225 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_48(v195 - v40);
  v217 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v216 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v43);
  v222 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v221 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D56146E8();
  OUTLINED_FUNCTION_4();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = v195 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v56 = OUTLINED_FUNCTION_22(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  v224 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v228 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C0, &qword_1D56320D8);
  v61 = OUTLINED_FUNCTION_22(v60);
  MEMORY[0x1EEE9AC00](v61);
  v63 = v195 - v62;
  v64 = sub_1D56147D8();
  OUTLINED_FUNCTION_4();
  v66 = v65;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  v70 = v195 - v69;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_5_51();
  sub_1D50AE870(v71, v72, MEMORY[0x1E6977288]);
  v73 = sub_1D5614C68();

  sub_1D56147C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
  v226 = v66;
  v227 = v64;
  if (EnumTagSinglePayload == 1)
  {
    (*(v66 + 104))(v70, *MEMORY[0x1E69772D8], v64);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      sub_1D4E50004(v63, &qword_1EC7EF5C0, &qword_1D56320D8);
    }
  }

  else
  {
    (*(v66 + 32))(v70, v63, v64);
  }

  v75 = sub_1D560F7B8();
  if (v75)
  {
    v76 = v75;

    v77 = type metadata accessor for SocialProfile(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
    (*(v51 + 104))(v54, *MEMORY[0x1E6977268], v49);
    v81 = OUTLINED_FUNCTION_30_22();
    sub_1D4ED08C8(v81, v73);

    (*(v51 + 8))(v54, v49);
    v82 = v226;
    v223 = v70;
    if (*(&v235 + 1))
    {
      v83 = OUTLINED_FUNCTION_72_2();
      sub_1D4E519A8(v83, v84);
      sub_1D4E5194C(&v232, &v234);
      sub_1D50AE7BC();
      v85 = swift_dynamicCast();
      v86 = v225;
      v87 = v227;
      if (v85)
      {

        __swift_destroy_boxed_opaque_existential_1(&v232);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(&v232, v233);
        v88 = sub_1D5616158();
        if (qword_1EDD53D08 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v218, qword_1EDD53D10);
        v89 = v215;
        sub_1D560D588();
        v90 = v214;
        sub_1D560D4F8();
        v91 = v220;
        sub_1D560F7D8();
        sub_1D4E50004(v90, &unk_1EC7EBF30, &qword_1D561C8C0);
        (*(v216 + 8))(v89, v217);
        v92 = v221;
        v93 = v212;
        v94 = v222;
        (*(v221 + 16))(v212, v91, v222);
        v236 = 0;
        v234 = 0u;
        v235 = 0u;
        v95 = v224;
        SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v93, v88, &v234, MEMORY[0x1E69E7CC0], v224);
        (*(v92 + 8))(v91, v94);
        v96 = v228;
        sub_1D4E50004(v228, &unk_1EC7ED370, &unk_1D5624FE0);
        __swift_destroy_boxed_opaque_existential_1(&v232);
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v77);
        sub_1D50AE800(v95, v96);
        v86 = v225;
        v70 = v223;
      }
    }

    else
    {
      sub_1D4E50004(&v234, &qword_1EC7E9F98, &qword_1D561C420);
      v86 = v225;
      v87 = v227;
    }

    sub_1D4FB8150();
    sub_1D4FB8150();
    if (v233)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
      OUTLINED_FUNCTION_33_28();
      if (swift_dynamicCast())
      {
        if (*(&v230 + 1))
        {
          v97 = OUTLINED_FUNCTION_33_28();
          sub_1D4F69344(v97, v98);
          __swift_project_boxed_opaque_existential_1(&v232, v233);
          sub_1D560D078();
          sub_1D4E50004(&v234, &qword_1EC7EEC40, &unk_1D561C070);
          v234 = v229;
          v235 = v230;
          v236 = v231;
          __swift_destroy_boxed_opaque_existential_1(&v232);
          goto LABEL_20;
        }
      }

      else
      {
        v231 = 0;
        v229 = 0u;
        v230 = 0u;
      }
    }

    else
    {
      sub_1D4E50004(&v232, &qword_1EC7EEC40, &unk_1D561C070);
      v229 = 0u;
      v230 = 0u;
      v231 = 0;
    }

    sub_1D4E50004(&v229, &qword_1EC7EC520, &unk_1D5621050);
LABEL_20:
    v99 = _s12InternalItemOMa(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
    v103 = v213;
    (*(v82 + 16))(v213, v70, v87);
    v104 = (*(v82 + 88))(v103, v87);
    v105 = v104 == *MEMORY[0x1E69772D0];
    v208 = v77;
    v206 = v76;
    if (v105)
    {
      v106 = v86;
      if (qword_1EDD53D48 != -1)
      {
        v104 = swift_once();
      }

      v107 = OUTLINED_FUNCTION_11_46(v104, qword_1EDD53D50);
      OUTLINED_FUNCTION_31_25(v107);
      OUTLINED_FUNCTION_10_48();
      sub_1D4E50004(v87, &unk_1EC7EBF30, &qword_1D561C8C0);
      v108 = OUTLINED_FUNCTION_8_45();
      v109(v108);
      v110 = OUTLINED_FUNCTION_0_74();
      v111(v110);
      OUTLINED_FUNCTION_72_2();
      sub_1D4FB8150();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_28_29();
      OUTLINED_FUNCTION_12_38();
      MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      v112 = OUTLINED_FUNCTION_24_28();
      v113(v112);
      sub_1D4E50004(v86, &qword_1EC7EB6E0, &qword_1D56320D0);
      OUTLINED_FUNCTION_7_1();
      sub_1D50AE764();
    }

    else
    {
      if (v104 == *MEMORY[0x1E69772D8])
      {
        v124 = sub_1D560F7E8();
        v125 = *(v204 + 104);
        v126 = v201;
        v125(v203, *MEMORY[0x1E6976AB0], v201);
        v127 = sub_1D5613588();
        sub_1D4E494C8(v127, v128, v124);

        if (v233)
        {
          OUTLINED_FUNCTION_33_28();
          if (swift_dynamicCast())
          {
            v129 = v229;
            goto LABEL_39;
          }
        }

        else
        {
          sub_1D4E50004(&v232, &qword_1EC7E9F98, &qword_1D561C420);
        }

        v129 = 0;
LABEL_39:
        v125(v202, *MEMORY[0x1E6976B00], v126);
        v142 = sub_1D5613588();
        sub_1D4E494C8(v142, v143, v124);

        if (v233)
        {
          OUTLINED_FUNCTION_33_28();
          v144 = swift_dynamicCast();
          if (v144)
          {
            if (v129)
            {
              if (v229)
              {
                if (qword_1EDD53CE8 != -1)
                {
                  v144 = swift_once();
                }

                v145 = OUTLINED_FUNCTION_11_46(v144, qword_1EDD53CF0);
                OUTLINED_FUNCTION_31_25(v145);
                OUTLINED_FUNCTION_10_48();
                sub_1D4E50004(v125, &unk_1EC7EBF30, &qword_1D561C8C0);
                v146 = OUTLINED_FUNCTION_8_45();
                v147(v146);
                v148 = OUTLINED_FUNCTION_0_74();
                v149(v148);
                OUTLINED_FUNCTION_72_2();
                sub_1D4FB8150();
                swift_unknownObjectRetain();
                OUTLINED_FUNCTION_28_29();
                v150 = OUTLINED_FUNCTION_12_38();
                UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v150, v151, v152, v153, v154);
                v155 = OUTLINED_FUNCTION_24_28();
                v156(v155);
                v157 = OUTLINED_FUNCTION_14_38();
                v124(v157);
                v158 = OUTLINED_FUNCTION_32_25();
                v124(v158);
                v86 = v225;
                sub_1D4E50004(v225, &qword_1EC7EB6E0, &qword_1D56320D0);
                OUTLINED_FUNCTION_10_6();
                sub_1D50AE764();
LABEL_51:
                swift_storeEnumTagMultiPayload();
                v114 = v86;
                goto LABEL_26;
              }

LABEL_48:
              if (qword_1EC7E8F18 != -1)
              {
                v144 = swift_once();
              }

              v159 = OUTLINED_FUNCTION_11_46(v144, qword_1EC7F08A0);
              OUTLINED_FUNCTION_31_25(v159);
              OUTLINED_FUNCTION_10_48();
              sub_1D4E50004(v125, &unk_1EC7EBF30, &qword_1D561C8C0);
              v160 = OUTLINED_FUNCTION_8_45();
              v161(v160);
              v162 = OUTLINED_FUNCTION_0_74();
              v163(v162);
              OUTLINED_FUNCTION_72_2();
              sub_1D4FB8150();
              swift_unknownObjectRetain();
              OUTLINED_FUNCTION_28_29();
              v164 = OUTLINED_FUNCTION_12_38();
              UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v164, v165, v166, v167);
              v168 = OUTLINED_FUNCTION_24_28();
              v169(v168);
              v170 = OUTLINED_FUNCTION_14_38();
              v124(v170);
              v171 = OUTLINED_FUNCTION_32_25();
              v124(v171);
              v86 = v225;
              sub_1D4E50004(v225, &qword_1EC7EB6E0, &qword_1D56320D0);
              OUTLINED_FUNCTION_8_8();
              sub_1D50AE764();
              goto LABEL_51;
            }

LABEL_52:
            v172 = v195[4];
            sub_1D560D928();
            v173 = v215;
            sub_1D560D588();
            v174 = v214;
            sub_1D560D4F8();
            v175 = v195[2];
            sub_1D560F7D8();
            sub_1D4E50004(v174, &unk_1EC7EBF30, &qword_1D561C8C0);
            (*(v216 + 8))(v173, v217);
            (*(v196 + 8))(v172, v218);
            v176 = v221;
            v177 = v222;
            (*(v221 + 16))(v220, v175, v222);
            OUTLINED_FUNCTION_72_2();
            sub_1D4FB8150();
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_28_29();
            v178 = v197;
            sub_1D5613C88();
            (*(v176 + 8))(v175, v177);
            v179 = OUTLINED_FUNCTION_14_38();
            v173(v179);
            v180 = OUTLINED_FUNCTION_32_25();
            v173(v180);
            v181 = v200;
            (*(v198 + 32))(v200, v178, v199);
            v182 = OUTLINED_FUNCTION_71();
            v184 = v183(v182);
            if (v184 != *MEMORY[0x1E6976E18])
            {
              v189 = v225;
              if (v184 == *MEMORY[0x1E6976DF8])
              {
                sub_1D4E50004(v225, &qword_1EC7EB6E0, &qword_1D56320D0);
                v190 = OUTLINED_FUNCTION_71();
                v191(v190);
                sub_1D560EEA8();
                OUTLINED_FUNCTION_14();
                (*(v192 + 32))(v189, v181);
                swift_storeEnumTagMultiPayload();
                __swift_storeEnumTagSinglePayload(v189, 0, 1, v99);
              }

              else
              {
                v193 = OUTLINED_FUNCTION_71();
                v194(v193);
              }

              v86 = v189;
              goto LABEL_27;
            }

            v185 = v225;
            sub_1D4E50004(v225, &qword_1EC7EB6E0, &qword_1D56320D0);
            v186 = OUTLINED_FUNCTION_71();
            v187(v186);
            v86 = v185;
            sub_1D5613838();
            OUTLINED_FUNCTION_14();
            (*(v188 + 32))(v185, v181);
            swift_storeEnumTagMultiPayload();
            v114 = v185;
            goto LABEL_26;
          }
        }

        else
        {
          v144 = sub_1D4E50004(&v232, &qword_1EC7E9F98, &qword_1D561C420);
        }

        if (v129)
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      if (v104 != *MEMORY[0x1E69772E0])
      {
        (*(v82 + 8))(v213, v87);
        goto LABEL_27;
      }

      v106 = v86;
      if (qword_1EDD53C38 != -1)
      {
        v104 = swift_once();
      }

      v130 = OUTLINED_FUNCTION_11_46(v104, qword_1EDD53C40);
      OUTLINED_FUNCTION_31_25(v130);
      OUTLINED_FUNCTION_10_48();
      sub_1D4E50004(v87, &unk_1EC7EBF30, &qword_1D561C8C0);
      v131 = OUTLINED_FUNCTION_8_45();
      v132(v131);
      v133 = OUTLINED_FUNCTION_0_74();
      v134(v133);
      OUTLINED_FUNCTION_72_2();
      sub_1D4FB8150();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_28_29();
      v135 = OUTLINED_FUNCTION_12_38();
      TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v135, v136, v137, v138, v139);
      v140 = OUTLINED_FUNCTION_24_28();
      v141(v140);
      sub_1D4E50004(v86, &qword_1EC7EB6E0, &qword_1D56320D0);
      OUTLINED_FUNCTION_9_7();
      sub_1D50AE764();
    }

    swift_storeEnumTagMultiPayload();
    v114 = v106;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v99);
LABEL_27:
    sub_1D4FB8150();
    v115 = v228;
    sub_1D4FB8150();
    v116 = v211;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v99);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v208);
    sub_1D50ADCCC();
    sub_1D50ADCCC();
    sub_1D50AE870(&qword_1EDD52F88, _s15InternalStorageVMa, &unk_1D5656D18);
    sub_1D56130F8();
    swift_unknownObjectRelease();
    sub_1D4E50004(v86, &qword_1EC7EB6E0, &qword_1D56320D0);
    sub_1D4E50004(&v234, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D4E50004(v115, &unk_1EC7ED370, &unk_1D5624FE0);
    (*(v226 + 8))(v223, v227);
    return sub_1D50AE910(v116, _s15InternalStorageVMa);
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50ADCCC()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t Playlist.Entry.extractExtendedRawDictionary(for:)(uint64_t a1)
{
  v109 = a1;
  v102 = type metadata accessor for SocialProfile(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v100 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v104 = v98 - v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for UploadedVideo(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_2();
  v99 = v11;
  v12 = OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for UploadedAudio(v12);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v20 = OUTLINED_FUNCTION_48(v19);
  v21 = type metadata accessor for MusicMovie(v20);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v24);
  sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v107 = v25;
  v108 = v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v106 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = sub_1D56146E8();
  OUTLINED_FUNCTION_4();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v105 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  v101 = v34;
  v35 = OUTLINED_FUNCTION_70_0();
  v36 = type metadata accessor for TVEpisode(v35);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v98 - v39;
  type metadata accessor for Playlist.Entry.InternalItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_51();
  v98[1] = sub_1D50AE870(v44, v45, MEMORY[0x1E6977298]);
  v46 = sub_1D5614BD8();
  v103 = v1;
  Playlist.Entry.internalItem.getter();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_7_1();
      sub_1D50AE764();
      v47 = *MEMORY[0x1E6977260];
      v48 = v30;
      v99 = *(v30 + 104);
      v49 = v101;
      v99(v101, v47, v28);
      v50 = OUTLINED_FUNCTION_17_34();
      v51(v50);
      sub_1D50AE8B8();
      sub_1D4ECB560();
      v53 = v52;
      v54 = [v52 underlyingObject];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v46 = v110;
      v55 = v49;
      v56 = v99;
      (*(v30 + 8))(v55, v28);
      v57 = type metadata accessor for MusicMovie;
      v58 = &v113;
      goto LABEL_4;
    case 3u:
      OUTLINED_FUNCTION_9_7();
      sub_1D50AE764();
      v99 = *(v30 + 104);
      v67 = OUTLINED_FUNCTION_18_36();
      v68(v67);
      v69 = OUTLINED_FUNCTION_17_34();
      v70(v69);
      sub_1D50AE8B8();
      v48 = v30;
      sub_1D4ECB77C();
      v72 = v71;
      v73 = [v71 byte_1E84C57A5];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v74 = OUTLINED_FUNCTION_16_36();
      v75(v74);
      v57 = type metadata accessor for TVEpisode;
      v66 = v40;
      v56 = v99;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_8_8();
      sub_1D50AE764();
      v48 = v30;
      v56 = *(v30 + 104);
      v59 = OUTLINED_FUNCTION_18_36();
      v56(v59);
      v60 = v106;
      v30 = v107;
      (*(v108 + 16))(v106, v109, v107);
      sub_1D50AE8B8();
      v17 = v60;
      sub_1D4ECB344();
      v62 = v61;
      v63 = [v61 underlyingObject];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v64 = OUTLINED_FUNCTION_16_36();
      v65(v64);
      v57 = type metadata accessor for UploadedAudio;
      v58 = &v114;
LABEL_4:
      v66 = *(v58 - 32);
      goto LABEL_7;
    case 5u:
      OUTLINED_FUNCTION_10_6();
      sub_1D50AE764();
      v48 = v30;
      v56 = *(v30 + 104);
      v76 = OUTLINED_FUNCTION_18_36();
      v56(v76);
      v77 = OUTLINED_FUNCTION_17_34();
      v78(v77);
      sub_1D50AE8B8();
      sub_1D4ECB128();
      v80 = v79;
      v81 = [v79 byte_1E84C57A5];

      OUTLINED_FUNCTION_30_22();
      sub_1D56159A8();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_28();
      OUTLINED_FUNCTION_9_45();
      sub_1D4F144AC();
      v82 = OUTLINED_FUNCTION_16_36();
      v83(v82);
      v57 = type metadata accessor for UploadedVideo;
      v66 = v99;
LABEL_7:
      sub_1D50AE910(v66, v57);
      break;
    default:
      sub_1D50AE910(v43, type metadata accessor for Playlist.Entry.InternalItem);
      v48 = v30;
      v56 = *(v30 + 104);
      v17 = v106;
      v30 = v107;
      break;
  }

  v84 = v105;
  (v56)(v105, *MEMORY[0x1E6977268], v28);
  v85 = v104;
  Playlist.Entry.contributor.getter();
  if (__swift_getEnumTagSinglePayload(v85, 1, v102) == 1)
  {
    sub_1D4E50004(v85, &unk_1EC7ED370, &unk_1D5624FE0);
    sub_1D4F0E460();
    if (v87)
    {
      v88 = v86;
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A0, &qword_1D561E268);
      sub_1D5615D78();
      v89 = v111;
      v90 = *(v48 + 8);
      v90(*(v111 + 48) + *(v48 + 72) * v88, v28);
      sub_1D4E519A8((*(v89 + 56) + 32 * v88), v112);
      sub_1D5615D98();
    }

    else
    {
      memset(v112, 0, 32);
      v90 = *(v48 + 8);
    }

    v90(v84, v28);
    sub_1D4E50004(v112, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    (*(v108 + 16))(v17, v109, v30);
    sub_1D50AE8B8();
    sub_1D4ECAE94();
    v92 = v91;
    sub_1D50AE910(v85, type metadata accessor for SocialProfile);
    v93 = [v92 underlyingObject];

    OUTLINED_FUNCTION_30_22();
    sub_1D56159A8();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_9_45();
    sub_1D4F144AC();
    (*(v48 + 8))(v84, v28);
  }

  OUTLINED_FUNCTION_5_51();
  sub_1D50AE870(v94, v95, MEMORY[0x1E6977288]);
  v96 = sub_1D5614BF8();

  return v96;
}

uint64_t sub_1D50AE764()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

unint64_t sub_1D50AE7BC()
{
  result = qword_1EDD525C0;
  if (!qword_1EDD525C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD525C0);
  }

  return result;
}

uint64_t sub_1D50AE800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50AE870(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D50AE8B8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D50AE910(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_28_29()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_31_25(uint64_t a1)
{

  return sub_1D560D4F8();
}

uint64_t type metadata accessor for UploadedVideoPropertyProvider(uint64_t a1)
{
  result = qword_1EDD54CC0;
  if (!qword_1EDD54CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50AEA20(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D50AF0B0(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, qword_1EDD57D80, type metadata accessor for AssetFlavors, MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD5F220, MEMORY[0x1E6975D60], MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
    if (v12 > 0x3F)
    {
      return v11;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_1D50AF0B0(319, &qword_1EDD53050, MEMORY[0x1E6976600], MEMORY[0x1E69E6720]);
    if (v16 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, qword_1EDD54730, type metadata accessor for HLSAsset, MEMORY[0x1E69E6720]);
    if (v17 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD53128, MEMORY[0x1E6976028], MEMORY[0x1E69E6720]);
    if (v18 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v19 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
    if (v20 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
    if (v21 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
    if (v22 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
    if (v23 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
    if (v24 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, qword_1EDD5DAA8, type metadata accessor for CuratorRelationshipProvider, MEMORY[0x1E69E6720]);
    if (v25 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52790, &qword_1EC7ED150, &unk_1D565B6C0);
    if (v26 > 0x3F)
    {
      return v4;
    }

    sub_1D50AF0B0(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v27 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D560D838();
    if (v28 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D5610088();
    if (v29 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E5CF94(319);
      v2 = v30;
      if (v31 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1D50AF0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D50AF15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v296 = v20;
  v297 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v283 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v286 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v288 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v289 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v290 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v56 = OUTLINED_FUNCTION_22(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  v285 = v57;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v292 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v291 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v63);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_3();
  v293 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v66);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_3();
  v294 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v70 = OUTLINED_FUNCTION_22(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  v284 = v71;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v279 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v76 = OUTLINED_FUNCTION_22(v75);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13();
  v287 = v77;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v279 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v81);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v279 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v279 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v89);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v279 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v93);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v279 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  v98 = swift_dynamicCastClass();
  if (!v98)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v301 = v25;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v278 = 48;
    goto LABEL_180;
  }

  v99 = v98;
  v100 = qword_1EDD53F80;
  v298 = v25;

  if (v100 != -1)
  {
    OUTLINED_FUNCTION_96_7(&qword_1EDD53F80);
  }

  *&v299 = qword_1EDD76888;
  v301 = v99;
  v101 = sub_1D4EC5794(&qword_1EDD53DE8, &qword_1EC7ECD58, &qword_1D56322F0);
  if (sub_1D5614D18())
  {
    v102 = v296;
    v103 = v296[1];
    if (!v103)
    {
      v105 = 0;
      v104 = 0;
      goto LABEL_20;
    }

LABEL_6:
    v104 = *v102;

    v105 = MEMORY[0x1E69E6158];
LABEL_20:

    v121 = v297;
    *v297 = v104;
    v121[1] = v103;
    v121[2] = 0;
    v121[3] = v105;
    goto LABEL_44;
  }

  v295 = v101;
  v106 = qword_1EDD53E58;

  if (v106 != -1)
  {
    OUTLINED_FUNCTION_95_8(&qword_1EDD53E58);
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76800);
  v107 = sub_1D5614D18();

  if (v107)
  {
    v108 = type metadata accessor for UploadedVideoPropertyProvider(0);
    v109 = OUTLINED_FUNCTION_51_3(*(v108 + 20));
    sub_1D4E69910(v109, v96, v110, v111);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v96);
    if (!v254)
    {
      goto LABEL_169;
    }

    v112 = &qword_1EC7E9CA0;
    v113 = &unk_1D561A0C0;
    v114 = v96;
    goto LABEL_34;
  }

  v115 = qword_1EDD53F70;

  if (v115 != -1)
  {
    OUTLINED_FUNCTION_94_8(&qword_1EDD53F70);
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76880);
  v116 = sub_1D5614D18();

  if (v116)
  {
    v117 = type metadata accessor for UploadedVideoPropertyProvider(0);
    v118 = OUTLINED_FUNCTION_51_3(*(v117 + 24));
    sub_1D4E69910(v118, v92, v119, v120);
    type metadata accessor for AssetFlavors(0);
    OUTLINED_FUNCTION_1(v92);
    if (!v254)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_65_14();
      v130 = v92;
LABEL_27:
      sub_1D50B69BC(v130, v128, v129);
LABEL_42:

      goto LABEL_43;
    }

    v112 = &qword_1EC7ECC88;
    v113 = &unk_1D56310F0;
    v114 = v92;
    goto LABEL_34;
  }

  v122 = qword_1EDD53F68;

  if (v122 != -1)
  {
    OUTLINED_FUNCTION_93_8(&qword_1EDD53F68);
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76878);
  v123 = sub_1D5614D18();

  if (v123)
  {
    v124 = type metadata accessor for UploadedVideoPropertyProvider(0);
    v125 = OUTLINED_FUNCTION_51_3(*(v124 + 28));
    sub_1D4E69910(v125, v88, v126, v127);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v88);
    if (!v254)
    {
      goto LABEL_169;
    }

    v112 = &qword_1EC7EDB98;
    v113 = L"X\b\a";
    v114 = v88;
    goto LABEL_34;
  }

  v131 = qword_1EDD53F30;

  if (v131 != -1)
  {
    OUTLINED_FUNCTION_90_9(&qword_1EDD53F30);
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD76868);
  v132 = sub_1D5614D18();

  if (v132)
  {
    v133 = type metadata accessor for UploadedVideoPropertyProvider(0);
    v134 = OUTLINED_FUNCTION_51_3(*(v133 + 32));
    sub_1D4E69910(v134, v84, v135, v136);
    sub_1D56106B8();
    OUTLINED_FUNCTION_1(v84);
    if (!v254)
    {
      goto LABEL_169;
    }

    v112 = &qword_1EC7EC478;
    v113 = &unk_1D56299D0;
    v114 = v84;
    goto LABEL_34;
  }

  v137 = qword_1EDD53E28;

  if (v137 != -1)
  {
    OUTLINED_FUNCTION_89_2(&qword_1EDD53E28);
  }

  OUTLINED_FUNCTION_0_75(qword_1EDD767F0);
  sub_1D5614D18();
  OUTLINED_FUNCTION_134_3();
  if (v137)
  {
    v138 = 0;
    v139 = 0;
    v140 = v296 + *(type metadata accessor for UploadedVideoPropertyProvider(0) + 36);
    if ((v140[8] & 1) == 0)
    {
      v139 = *v140;
      v138 = MEMORY[0x1E69E63B0];
    }

    v141 = v297;
    *v297 = v139;
    v141[1] = 0;
    v141[2] = 0;
    v141[3] = v138;
  }

  else
  {
    v144 = qword_1EDD53ED0;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_23_31(&qword_1EDD53ED0);
    }

    OUTLINED_FUNCTION_0_75(qword_1EDD76830);
    sub_1D5614D18();
    OUTLINED_FUNCTION_134_3();
    if ((v144 & 1) == 0)
    {
      v146 = qword_1EDD53F18;

      if (v146 != -1)
      {
        OUTLINED_FUNCTION_87_8(&qword_1EDD53F18);
      }

      OUTLINED_FUNCTION_0_75(qword_1EDD76858);
      sub_1D5614D18();
      OUTLINED_FUNCTION_134_3();
      if (v146)
      {
        v147 = type metadata accessor for UploadedVideoPropertyProvider(0);
        v148 = OUTLINED_FUNCTION_51_3(*(v147 + 44));
        sub_1D4E69910(v148, v80, v149, v150);
        sub_1D5610978();
        v151 = OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_57(v151, 1, v97);
        if (!v254)
        {
          *(&v300 + 1) = v97;
          __swift_allocate_boxed_opaque_existential_0(&v299);
          v153 = *(*(v97 - 8) + 32);
LABEL_41:
          v153();
          goto LABEL_42;
        }

        v112 = &qword_1EC7EAC98;
        v113 = &unk_1D561DA80;
        v114 = v80;
      }

      else
      {

        *&v299 = sub_1D4F84AB8();
        OUTLINED_FUNCTION_3_58();
        sub_1D5614D18();
        OUTLINED_FUNCTION_134_3();

        v154 = qword_1EDD53F20;

        if (v154 != -1)
        {
          OUTLINED_FUNCTION_86_9(&qword_1EDD53F20);
        }

        OUTLINED_FUNCTION_0_75(qword_1EDD76860);
        sub_1D5614D18();
        OUTLINED_FUNCTION_125_5();
        if (v154)
        {
          v155 = type metadata accessor for UploadedVideoPropertyProvider(0);
          v156 = OUTLINED_FUNCTION_51_3(*(v155 + 52));
          sub_1D4E69910(v156, v74, v157, v158);
          sub_1D560C328();
          OUTLINED_FUNCTION_1(v74);
          if (!v254)
          {
            goto LABEL_169;
          }

          v112 = &qword_1EC7EA3B8;
          v113 = &unk_1D561E370;
          v114 = v74;
          goto LABEL_34;
        }

        v159 = qword_1EDD53EE8;

        if (v159 != -1)
        {
          OUTLINED_FUNCTION_85_4(&qword_1EDD53EE8);
        }

        OUTLINED_FUNCTION_0_75(qword_1EDD76840);
        sub_1D5614D18();
        OUTLINED_FUNCTION_125_5();
        if (v159)
        {
          v160 = type metadata accessor for UploadedVideoPropertyProvider(0);
          v161 = OUTLINED_FUNCTION_51_3(*(v160 + 56));
          v162 = v294;
          sub_1D4E69910(v161, v294, v163, v164);
          v165 = sub_1D56128E8();
          OUTLINED_FUNCTION_1_9(v165);
          if (!v254)
          {
            goto LABEL_169;
          }

          v112 = &qword_1EC7EF5C8;
          v113 = &unk_1D5632130;
        }

        else
        {
          v166 = qword_1EDD53E18;

          if (v166 != -1)
          {
            OUTLINED_FUNCTION_22_32(&qword_1EDD53E18);
          }

          OUTLINED_FUNCTION_0_75(qword_1EDD53E20);
          sub_1D5614D18();
          OUTLINED_FUNCTION_125_5();
          if (v166)
          {
            v167 = type metadata accessor for UploadedVideoPropertyProvider(0);
            v168 = OUTLINED_FUNCTION_51_3(*(v167 + 60));
            v162 = v293;
            sub_1D4E69910(v168, v293, v169, v170);
            v171 = type metadata accessor for HLSAsset(0);
            OUTLINED_FUNCTION_1_9(v171);
            if (!v254)
            {
              OUTLINED_FUNCTION_72_3();
              OUTLINED_FUNCTION_13_37();
              v130 = v162;
              goto LABEL_27;
            }

            v112 = &qword_1EC7EF398;
            v113 = &qword_1D5631120;
          }

          else
          {
            v172 = qword_1EDD53EE0;

            if (v172 != -1)
            {
              OUTLINED_FUNCTION_83_8(&qword_1EDD53EE0);
            }

            OUTLINED_FUNCTION_0_75(qword_1EDD76838);
            sub_1D5614D18();
            OUTLINED_FUNCTION_125_5();
            if ((v172 & 1) == 0)
            {
              v178 = qword_1EDD53F50;

              if (v178 != -1)
              {
                OUTLINED_FUNCTION_33_29(&qword_1EDD53F50);
              }

              OUTLINED_FUNCTION_0_75(qword_1EDD53F58);
              sub_1D5614D18();
              OUTLINED_FUNCTION_125_5();
              if (v178)
              {
                v179 = type metadata accessor for UploadedVideoPropertyProvider(0);
                v180 = OUTLINED_FUNCTION_51_3(*(v179 + 68));
                sub_1D4E69910(v180, v292, v181, v182);
                v183 = sub_1D560C0A8();
                OUTLINED_FUNCTION_1_9(v183);
                if (!v254)
                {
                  goto LABEL_169;
                }

                v112 = &unk_1EC7E9CA8;
                v113 = &unk_1D561D1D0;
                v114 = v292;
              }

              else
              {
                v184 = qword_1EDD53EA8;

                if (v184 != -1)
                {
                  OUTLINED_FUNCTION_82_9(&qword_1EDD53EA8);
                }

                OUTLINED_FUNCTION_0_75(qword_1EDD76818);
                sub_1D5614D18();
                OUTLINED_FUNCTION_109_1();
                if (v184)
                {
                  v185 = type metadata accessor for UploadedVideoPropertyProvider(0);
                  v186 = OUTLINED_FUNCTION_51_3(*(v185 + 72));
                  sub_1D4E69910(v186, v290, v187, v188);
                  v189 = sub_1D5613198();
                  OUTLINED_FUNCTION_1_9(v189);
                  if (!v254)
                  {
                    goto LABEL_169;
                  }

                  v112 = &qword_1EC7EC530;
                  v113 = &unk_1D5632150;
                  v114 = v290;
                }

                else
                {
                  v190 = qword_1EDD53EA0;

                  if (v190 != -1)
                  {
                    OUTLINED_FUNCTION_81_11(&qword_1EDD53EA0);
                  }

                  OUTLINED_FUNCTION_0_75(qword_1EDD76810);
                  sub_1D5614D18();
                  OUTLINED_FUNCTION_109_1();
                  if (v190)
                  {
                    v191 = type metadata accessor for UploadedVideoPropertyProvider(0);
                    v192 = OUTLINED_FUNCTION_51_3(*(v191 + 76));
                    sub_1D4E69910(v192, v289, v193, v194);
                    v195 = sub_1D56134E8();
                    OUTLINED_FUNCTION_1_9(v195);
                    if (!v254)
                    {
                      goto LABEL_169;
                    }

                    v112 = &qword_1EC7EC528;
                    v113 = &unk_1D5621070;
                    v114 = v289;
                  }

                  else
                  {
                    v196 = qword_1EDD53F08;

                    if (v196 != -1)
                    {
                      OUTLINED_FUNCTION_80_6(&qword_1EDD53F08);
                    }

                    OUTLINED_FUNCTION_0_75(qword_1EDD76850);
                    sub_1D5614D18();
                    OUTLINED_FUNCTION_109_1();
                    if (v196)
                    {
                      v197 = type metadata accessor for UploadedVideoPropertyProvider(0);
                      v198 = OUTLINED_FUNCTION_51_3(*(v197 + 80));
                      sub_1D4E69910(v198, v288, v199, v200);
                      v201 = sub_1D5614A78();
                      OUTLINED_FUNCTION_1_9(v201);
                      if (!v254)
                      {
                        goto LABEL_169;
                      }

                      v112 = &qword_1EC7EF5D8;
                      v113 = &unk_1D5632160;
                      v114 = v288;
                    }

                    else
                    {
                      v202 = qword_1EDD53EC0;

                      if (v202 != -1)
                      {
                        OUTLINED_FUNCTION_100_6(&qword_1EDD53EC0);
                      }

                      OUTLINED_FUNCTION_0_75(qword_1EDD76828);
                      sub_1D5614D18();
                      OUTLINED_FUNCTION_109_1();
                      if (v202)
                      {
                        v203 = type metadata accessor for UploadedVideoPropertyProvider(0);
                        v204 = OUTLINED_FUNCTION_51_3(*(v203 + 84));
                        sub_1D4E69910(v204, v287, v205, v206);
                        v207 = sub_1D5610978();
                        OUTLINED_FUNCTION_1_9(v207);
                        if (!v254)
                        {
                          goto LABEL_169;
                        }

                        v112 = &qword_1EC7EAC98;
                        v113 = &unk_1D561DA80;
                        v114 = v287;
                      }

                      else
                      {
                        v208 = qword_1EDD53EF8;

                        if (v208 != -1)
                        {
                          OUTLINED_FUNCTION_99_8(&qword_1EDD53EF8);
                        }

                        OUTLINED_FUNCTION_0_75(qword_1EDD76848);
                        sub_1D5614D18();
                        OUTLINED_FUNCTION_109_1();
                        if (v208)
                        {
                          v209 = type metadata accessor for UploadedVideoPropertyProvider(0);
                          v210 = OUTLINED_FUNCTION_51_3(*(v209 + 88));
                          sub_1D4E69910(v210, v286, v211, v212);
                          v213 = sub_1D56109F8();
                          OUTLINED_FUNCTION_1_9(v213);
                          if (!v254)
                          {
                            goto LABEL_169;
                          }

                          v112 = &qword_1EC7EB5C0;
                          v113 = &unk_1D56223C0;
                          v114 = v286;
                        }

                        else
                        {
                          v214 = qword_1EDD53E30;

                          if (v214 != -1)
                          {
                            OUTLINED_FUNCTION_98_7(&qword_1EDD53E30);
                          }

                          OUTLINED_FUNCTION_0_75(qword_1EDD767F8);
                          sub_1D5614D18();
                          OUTLINED_FUNCTION_109_1();
                          if (v214)
                          {
                            v215 = type metadata accessor for UploadedVideoPropertyProvider(0);
                            v216 = OUTLINED_FUNCTION_51_3(*(v215 + 92));
                            sub_1D4E69910(v216, v285, v217, v218);
                            v219 = sub_1D560C0A8();
                            OUTLINED_FUNCTION_1_9(v219);
                            if (!v254)
                            {
                              goto LABEL_169;
                            }

                            v112 = &unk_1EC7E9CA8;
                            v113 = &unk_1D561D1D0;
                            v114 = v285;
                          }

                          else
                          {
                            v220 = qword_1EDD53E78;

                            if (v220 != -1)
                            {
                              OUTLINED_FUNCTION_97_0(&qword_1EDD53E78);
                            }

                            OUTLINED_FUNCTION_0_75(qword_1EDD76808);
                            sub_1D5614D18();
                            OUTLINED_FUNCTION_109_1();
                            if (v220)
                            {
                              v221 = *(type metadata accessor for UploadedVideoPropertyProvider(0) + 96);
LABEL_130:
                              v102 = (v296 + v221);
                              v103 = v102[1];
                              if (!v103)
                              {
                                v104 = 0;
                                v105 = 0;
                                goto LABEL_20;
                              }

                              goto LABEL_6;
                            }

                            v80 = qword_1EDD53F40;

                            if (v80 != -1)
                            {
                              goto LABEL_181;
                            }

                            while (1)
                            {
                              OUTLINED_FUNCTION_0_75(qword_1EDD76870);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v80)
                              {
                                v222 = type metadata accessor for UploadedVideoPropertyProvider(0);
                                v223 = OUTLINED_FUNCTION_51_3(*(v222 + 100));
                                sub_1D4E69910(v223, v284, v224, v225);
                                v226 = sub_1D560C328();
                                OUTLINED_FUNCTION_1_9(v226);
                                if (!v254)
                                {
                                  goto LABEL_169;
                                }

                                v112 = &qword_1EC7EA3B8;
                                v113 = &unk_1D561E370;
                                v114 = v284;
                                goto LABEL_34;
                              }

                              v227 = qword_1EDD53EB8;

                              if (v227 != -1)
                              {
                                OUTLINED_FUNCTION_91_8(&qword_1EDD53EB8);
                              }

                              OUTLINED_FUNCTION_0_75(qword_1EDD76820);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v227)
                              {
                                v221 = *(type metadata accessor for UploadedVideoPropertyProvider(0) + 104);
                                goto LABEL_130;
                              }

                              v228 = qword_1EDD53E68;

                              if (v228 != -1)
                              {
                                OUTLINED_FUNCTION_38_20(&qword_1EDD53E68);
                              }

                              OUTLINED_FUNCTION_0_75(qword_1EDD53E70);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v228)
                              {
                                v229 = type metadata accessor for UploadedVideoPropertyProvider(0);
                                v230 = OUTLINED_FUNCTION_51_3(*(v229 + 108));
                                OUTLINED_FUNCTION_108_0(v230, v231, v232, &a13);
                                v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
                                OUTLINED_FUNCTION_1_9(v233);
                                if (!v254)
                                {
                                  goto LABEL_169;
                                }

                                v112 = &off_1EC7EB5B0;
                                v113 = &unk_1D5632170;
                                v234 = &a13;
                                goto LABEL_171;
                              }

                              v235 = qword_1EDD53E40;

                              if (v235 != -1)
                              {
                                OUTLINED_FUNCTION_37_5(&qword_1EDD53E40);
                              }

                              OUTLINED_FUNCTION_0_75(qword_1EDD53E48);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v235)
                              {
                                v236 = type metadata accessor for UploadedVideoPropertyProvider(0);
                                v237 = OUTLINED_FUNCTION_51_3(*(v236 + 112));
                                v238 = v280;
                                sub_1D4E69910(v237, v280, v239, v240);
                                type metadata accessor for CuratorRelationshipProvider(0);
                                v241 = OUTLINED_FUNCTION_104();
                                OUTLINED_FUNCTION_57(v241, 1, v242);
                                if (v254)
                                {

                                  v112 = &qword_1EC7ECC80;
                                  v113 = &unk_1D5622EA0;
                                  v234 = &a14;
                                }

                                else
                                {
                                  v249 = OUTLINED_FUNCTION_145_0(&a14);
                                  OUTLINED_FUNCTION_108_0(v249, v250, v251, &a15);
                                  OUTLINED_FUNCTION_10_49();
                                  sub_1D50B6A1C(v238, v252);
                                  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
                                  OUTLINED_FUNCTION_1_9(v253);
                                  if (!v254)
                                  {
                                    goto LABEL_169;
                                  }

                                  v112 = &qword_1EC7EA790;
                                  v113 = &unk_1D561FB10;
                                  v234 = &a15;
                                }

LABEL_171:
                                v114 = *(v234 - 32);
                                goto LABEL_34;
                              }

                              v243 = off_1EDD53E88;

                              if (v243 != -1)
                              {
                                OUTLINED_FUNCTION_36_22(&off_1EDD53E88);
                              }

                              OUTLINED_FUNCTION_0_75(qword_1EDD53E90);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v243)
                              {
                                v244 = type metadata accessor for UploadedVideoPropertyProvider(0);
                                v245 = OUTLINED_FUNCTION_51_3(*(v244 + 112));
                                OUTLINED_FUNCTION_108_0(v245, v246, v247, &a16);
                                v248 = type metadata accessor for CuratorRelationshipProvider(0);
                                OUTLINED_FUNCTION_1_9(v248);
                                if (v254)
                                {

                                  v112 = &qword_1EC7ECC80;
                                  v113 = &unk_1D5622EA0;
                                  v234 = &a16;
                                  goto LABEL_171;
                                }

                                v261 = v243[5];
                                v262 = v281;
                                OUTLINED_FUNCTION_108_0(v281 + v261, &qword_1EC7EA788, &unk_1D56223A0, &a18);
                                OUTLINED_FUNCTION_10_49();
                                sub_1D50B6A1C(v262, v263);
                                v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                                OUTLINED_FUNCTION_1_9(v264);
                                if (v265)
                                {

                                  v112 = &qword_1EC7EA788;
                                  v113 = &unk_1D56223A0;
                                  v234 = &a18;
                                  goto LABEL_171;
                                }

                                goto LABEL_169;
                              }

                              v255 = off_1EDD53E00;

                              if (v255 != -1)
                              {
                                OUTLINED_FUNCTION_35_24(&off_1EDD53E00);
                              }

                              OUTLINED_FUNCTION_0_75(qword_1EDD53E08);
                              sub_1D5614D18();
                              OUTLINED_FUNCTION_109_1();
                              if (v255)
                              {
                                break;
                              }

                              OUTLINED_FUNCTION_9_46();
                              sub_1D50B6B10(v266, v267, &protocol conformance descriptor for UploadedVideo);

                              v80 = sub_1D560D198();
                              *&v299 = v80;
                              OUTLINED_FUNCTION_3_58();
                              v97 = sub_1D5614D18();

                              if (v97)
                              {
                                v145 = *(v296 + *(type metadata accessor for UploadedVideoPropertyProvider(0) + 116));
                                if (v145)
                                {
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
                                  OUTLINED_FUNCTION_82();
                                }

                                else
                                {
                                  v97 = 0;
                                }

                                goto LABEL_58;
                              }

                              OUTLINED_FUNCTION_30();
                              sub_1D5615B68();
                              OUTLINED_FUNCTION_16_6();
                              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                              v301 = v298;
                              sub_1D560CDE8();
                              sub_1D5615D48();
                              OUTLINED_FUNCTION_33_0();
                              OUTLINED_FUNCTION_28();
                              v278 = 112;
LABEL_180:
                              v279 = v278;
                              OUTLINED_FUNCTION_17_13("Fatal error", v274, v275, v276, v277, "MusicKitInternal/UploadedVideoPropertyProvider.swift");
                              __break(1u);
LABEL_181:
                              OUTLINED_FUNCTION_92_7(&qword_1EDD53F40);
                            }

                            v256 = type metadata accessor for UploadedVideoPropertyProvider(0);
                            v257 = OUTLINED_FUNCTION_51_3(*(v256 + 112));
                            OUTLINED_FUNCTION_108_0(v257, v258, v259, &a17);
                            v260 = type metadata accessor for CuratorRelationshipProvider(0);
                            OUTLINED_FUNCTION_1_9(v260);
                            if (v254)
                            {

                              v112 = &qword_1EC7ECC80;
                              v113 = &unk_1D5622EA0;
                              v234 = &a17;
                              goto LABEL_171;
                            }

                            v268 = v255[6];
                            v269 = v282;
                            sub_1D4E69910(v282 + v268, v283, &qword_1EC7EA780, &unk_1D561FB20);
                            OUTLINED_FUNCTION_10_49();
                            sub_1D50B6A1C(v269, v270);
                            v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
                            OUTLINED_FUNCTION_1_9(v271);
                            if (!v272)
                            {
LABEL_169:
                              OUTLINED_FUNCTION_72_3();
                              OUTLINED_FUNCTION_15_1();
                              v153 = *(v273 + 32);
                              goto LABEL_41;
                            }

                            v112 = &qword_1EC7EA780;
                            v113 = &unk_1D561FB20;
                            v114 = v283;
                          }
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_34;
            }

            v173 = type metadata accessor for UploadedVideoPropertyProvider(0);
            v174 = OUTLINED_FUNCTION_51_3(*(v173 + 64));
            v162 = v291;
            sub_1D4E69910(v174, v291, v175, v176);
            v177 = sub_1D5610CB8();
            OUTLINED_FUNCTION_1_9(v177);
            if (!v254)
            {
              goto LABEL_169;
            }

            v112 = &qword_1EC7EF5D0;
            v113 = &unk_1D5632140;
          }
        }

        v114 = v162;
      }

LABEL_34:
      sub_1D4E50004(v114, v112, v113);
      v299 = 0u;
      v300 = 0u;
LABEL_43:
      v142 = v300;
      v143 = v297;
      *v297 = v299;
      *(v143 + 1) = v142;
      goto LABEL_44;
    }

    v145 = *(v296 + *(type metadata accessor for UploadedVideoPropertyProvider(0) + 40));
    if (v145)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
      OUTLINED_FUNCTION_82();
    }

    else
    {
      v97 = 0;
    }

LABEL_58:

    v152 = v297;
    *v297 = v145;
    v152[1] = 0;
    v152[2] = 0;
    v152[3] = v97;
  }

LABEL_44:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50B0D7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_82();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5683A60);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_33;
  }

  v6 = v5;
  v7 = qword_1EDD53ED0;
  swift_retain_n();
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_23_31(&qword_1EDD53ED0);
  }

  v8 = sub_1D4EC5794(&qword_1EDD53DE8, &qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_39_0(v8, v9, v10);
  OUTLINED_FUNCTION_77_0();
  if ((v3 & 1) == 0)
  {

    v108 = sub_1D4F84AB8();
    v13 = OUTLINED_FUNCTION_39_0(v108, v11, v12);

    if ((v13 & 1) == 0)
    {
      v14 = qword_1EDD53E18;

      if (v14 != -1)
      {
        v15 = OUTLINED_FUNCTION_22_32(&qword_1EDD53E18);
      }

      OUTLINED_FUNCTION_22_9(v15, v16, v17, v18, v19, v20, v21, v22, v85, v91, v97, v6, v108);
      OUTLINED_FUNCTION_77_0();
      if ((v14 & 1) == 0)
      {
        v23 = qword_1EDD53F50;

        if (v23 != -1)
        {
          v24 = OUTLINED_FUNCTION_33_29(&qword_1EDD53F50);
        }

        OUTLINED_FUNCTION_22_9(v24, v25, v26, v27, v28, v29, v30, v31, v86, v92, v98, v103, v109);
        OUTLINED_FUNCTION_77_0();
        if ((v23 & 1) == 0)
        {
          v35 = qword_1EDD53E68;

          if (v35 != -1)
          {
            v36 = OUTLINED_FUNCTION_38_20(&qword_1EDD53E68);
          }

          OUTLINED_FUNCTION_22_9(v36, v37, v38, v39, v40, v41, v42, v43, v87, v93, v99, v104, v110);
          OUTLINED_FUNCTION_77_0();
          if (v35)
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_69_11();
            sub_1D50B6B10(v44, v45, &unk_1D5632208);
            OUTLINED_FUNCTION_93();
            sub_1D5612238();
            goto LABEL_13;
          }

          v46 = qword_1EDD53E40;

          if (v46 != -1)
          {
            v47 = OUTLINED_FUNCTION_37_5(&qword_1EDD53E40);
          }

          OUTLINED_FUNCTION_22_9(v47, v48, v49, v50, v51, v52, v53, v54, v88, v94, v100, v105, v111);
          OUTLINED_FUNCTION_77_0();
          if (v46)
          {
            swift_getKeyPath();
            type metadata accessor for UploadedVideoPropertyProvider(0);
            v55 = OUTLINED_FUNCTION_93();
            sub_1D54CE644(v55, v56);
            goto LABEL_13;
          }

          v57 = off_1EDD53E88;

          if (v57 != -1)
          {
            v58 = OUTLINED_FUNCTION_36_22(&off_1EDD53E88);
          }

          OUTLINED_FUNCTION_22_9(v58, v59, v60, v61, v62, v63, v64, v65, v89, v95, v101, v106, v112);
          OUTLINED_FUNCTION_77_0();
          if (v57)
          {
            swift_getKeyPath();
            type metadata accessor for UploadedVideoPropertyProvider(0);
            v66 = OUTLINED_FUNCTION_93();
            sub_1D54CE668(v66, v67);
            goto LABEL_13;
          }

          v68 = off_1EDD53E00;

          if (v68 != -1)
          {
            v69 = OUTLINED_FUNCTION_35_24(&off_1EDD53E00);
          }

          OUTLINED_FUNCTION_22_9(v69, v70, v71, v72, v73, v74, v75, v76, v90, v96, v102, v107, v113);
          OUTLINED_FUNCTION_77_0();
          if (v68)
          {
            swift_getKeyPath();
            type metadata accessor for UploadedVideoPropertyProvider(0);
            v77 = OUTLINED_FUNCTION_93();
            sub_1D54CE68C(v77, v78);
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_9_46();
          sub_1D50B6B10(v79, v80, &protocol conformance descriptor for UploadedVideo);

          v114 = sub_1D560D198();
          OUTLINED_FUNCTION_39_0(v114, v81, v82);
          OUTLINED_FUNCTION_82();

          if ((v2 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
LABEL_33:
              OUTLINED_FUNCTION_17_13("Fatal error", v83, v84, 0, 0xE000000000000000, "MusicKitInternal/UploadedVideoPropertyProvider.swift");
              __break(1u);
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_69_11();
  sub_1D50B6B10(v32, v33, &unk_1D5632208);
  OUTLINED_FUNCTION_93();
  sub_1D5612248();
LABEL_13:

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D50B12C8()
{
  OUTLINED_FUNCTION_47();
  v48 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  v7 = OUTLINED_FUNCTION_22(v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5E8, &qword_1D56322E0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for UploadedVideoPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5F0, &qword_1D56322E8);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D56839B0);
    v50 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v44 = 151;
    goto LABEL_25;
  }

  v1 = v22;
  sub_1D4E628D4(v3, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v45 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v45, v46, 1, v17);
    sub_1D4E50004(v16, &qword_1EC7EF5E8, &qword_1D56322E0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D56839F0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v44 = 154;
    goto LABEL_25;
  }

  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  sub_1D50B69BC(v16, v21, type metadata accessor for UploadedVideoPropertyProvider);
  v23 = qword_1EDD53ED0;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_23_31(&qword_1EDD53ED0);
  }

  v49[0] = qword_1EDD76830;
  v50 = v1;
  sub_1D4EC5794(&qword_1EC7EF5F8, &qword_1EC7EF5F0, &qword_1D56322E8);
  v24 = OUTLINED_FUNCTION_124_3();

  if (v24)
  {

    v25 = *(v21 + v17[10]);

    OUTLINED_FUNCTION_18_37();
    v26 = v17[10];
LABEL_18:
    v37 = v48;
    if (!v25)
    {
    }

    *(v37 + v26) = v25;
    goto LABEL_21;
  }

  v27 = sub_1D4F84BFC();
  v28 = OUTLINED_FUNCTION_111_7(v27);

  if (v28)
  {

    v25 = *(v21 + v17[12]);

    OUTLINED_FUNCTION_18_37();
    v26 = v17[12];
    goto LABEL_18;
  }

  v29 = qword_1EDD53E18;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_22_32(&qword_1EDD53E18);
  }

  v49[0] = qword_1EDD53E20;
  v50 = v1;
  v30 = OUTLINED_FUNCTION_124_3();

  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_46();
    sub_1D50B6B10(v33, v34, &protocol conformance descriptor for UploadedVideo);

    v35 = sub_1D560D198();
    v36 = OUTLINED_FUNCTION_111_7(v35);

    if ((v36 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_30();
        sub_1D5615B68();
        OUTLINED_FUNCTION_16_6();
        MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5683A30);
        v50 = v1;
        sub_1D5615D48();
        OUTLINED_FUNCTION_33_0();
        OUTLINED_FUNCTION_28();
        v44 = 169;
LABEL_25:
        v47 = v44;
        OUTLINED_FUNCTION_17_13("Fatal error", v40, v41, v42, v43, "MusicKitInternal/UploadedVideoPropertyProvider.swift");
        __break(1u);
      }
    }

    v25 = *(v21 + v17[29]);

    OUTLINED_FUNCTION_18_37();
    v26 = v17[29];
    goto LABEL_18;
  }

  sub_1D4E69910(v21 + v17[15], v10, &qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_18_37();
  v31 = type metadata accessor for HLSAsset(0);
  OUTLINED_FUNCTION_1(v10);
  if (v32)
  {
    v39 = v48;
    sub_1D4E69910(v48 + v17[15], v12, &qword_1EC7EF398, &qword_1D5631120);
    OUTLINED_FUNCTION_1(v10);
    if (!v32)
    {
      sub_1D4E50004(v10, &qword_1EC7EF398, &qword_1D5631120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_37();
    sub_1D50B69BC(v10, v12, v38);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v31);
    v39 = v48;
  }

  sub_1D50B694C(v12, v39 + v17[15]);
LABEL_21:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50B18BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5632120;
  if (qword_1EDD53F80 != -1)
  {
    OUTLINED_FUNCTION_96_7(&qword_1EDD53F80);
  }

  *(v0 + 32) = qword_1EDD76888;
  v1 = qword_1EDD53E58;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_95_8(&qword_1EDD53E58);
  }

  *(v0 + 40) = qword_1EDD76800;
  v2 = qword_1EDD53F70;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_94_8(&qword_1EDD53F70);
  }

  *(v0 + 48) = qword_1EDD76880;
  v3 = qword_1EDD53F68;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_93_8(&qword_1EDD53F68);
  }

  *(v0 + 56) = qword_1EDD76878;
  v4 = qword_1EDD53F30;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_90_9(&qword_1EDD53F30);
  }

  *(v0 + 64) = qword_1EDD76868;
  v5 = qword_1EDD53E28;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_89_2(&qword_1EDD53E28);
  }

  *(v0 + 72) = qword_1EDD767F0;
  v6 = qword_1EDD53ED0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_23_31(&qword_1EDD53ED0);
  }

  *(v0 + 80) = qword_1EDD76830;
  v7 = qword_1EDD53F18;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_87_8(&qword_1EDD53F18);
  }

  *(v0 + 88) = qword_1EDD76858;

  *(v0 + 96) = sub_1D4F84AB8();
  if (qword_1EDD53F20 != -1)
  {
    OUTLINED_FUNCTION_86_9(&qword_1EDD53F20);
  }

  *(v0 + 104) = qword_1EDD76860;
  v8 = qword_1EDD53EE8;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_85_4(&qword_1EDD53EE8);
  }

  *(v0 + 112) = qword_1EDD76840;
  v9 = qword_1EDD53E18;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_22_32(&qword_1EDD53E18);
  }

  *(v0 + 120) = qword_1EDD53E20;
  v10 = qword_1EDD53EE0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_83_8(&qword_1EDD53EE0);
  }

  *(v0 + 128) = qword_1EDD76838;
  v11 = qword_1EDD53F50;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_33_29(&qword_1EDD53F50);
  }

  *(v0 + 136) = qword_1EDD53F58;
  v12 = qword_1EDD53EA8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_82_9(&qword_1EDD53EA8);
  }

  *(v0 + 144) = qword_1EDD76818;
  v13 = qword_1EDD53EA0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_81_11(&qword_1EDD53EA0);
  }

  *(v0 + 152) = qword_1EDD76810;
  v14 = qword_1EDD53F08;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_80_6(&qword_1EDD53F08);
  }

  *(v0 + 160) = qword_1EDD76850;
  v15 = qword_1EDD53EC0;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_100_6(&qword_1EDD53EC0);
  }

  *(v0 + 168) = qword_1EDD76828;
  v16 = qword_1EDD53EF8;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_99_8(&qword_1EDD53EF8);
  }

  *(v0 + 176) = qword_1EDD76848;
  v17 = qword_1EDD53E30;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_98_7(&qword_1EDD53E30);
  }

  *(v0 + 184) = qword_1EDD767F8;
  v18 = qword_1EDD53E78;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_97_0(&qword_1EDD53E78);
  }

  *(v0 + 192) = qword_1EDD76808;
  v19 = qword_1EDD53F40;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_92_7(&qword_1EDD53F40);
  }

  *(v0 + 200) = qword_1EDD76870;
  v20 = qword_1EDD53EB8;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_91_8(&qword_1EDD53EB8);
  }

  *(v0 + 208) = qword_1EDD76820;
  v21 = qword_1EDD53E68;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_38_20(&qword_1EDD53E68);
  }

  *(v0 + 216) = qword_1EDD53E70;
  v22 = qword_1EDD53E40;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_37_5(&qword_1EDD53E40);
  }

  *(v0 + 224) = qword_1EDD53E48;
  v23 = off_1EDD53E88;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_36_22(&off_1EDD53E88);
  }

  *(v0 + 232) = qword_1EDD53E90;
  v24 = off_1EDD53E00;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_35_24(&off_1EDD53E00);
  }

  *(v0 + 240) = qword_1EDD53E08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD58, &qword_1D56322F0);
  OUTLINED_FUNCTION_9_46();
  sub_1D50B6B10(v25, v26, &protocol conformance descriptor for UploadedVideo);

  result = sub_1D560D198();
  *(v0 + 248) = result;
  qword_1EDD76B50 = v0;
  return result;
}

void sub_1D50B1E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CuratorRelationshipProvider(0);
  v27 = OUTLINED_FUNCTION_20(v26, v590);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF600, &unk_1D5640880);
  OUTLINED_FUNCTION_20(v34, &v589);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_12_0(v37, &v588);
  v564 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_20(v44, &v584);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v46);
  v47 = sub_1D56109F8();
  v48 = OUTLINED_FUNCTION_12_0(v47, &v583);
  v560 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_20(v54, &v580);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v56);
  v57 = sub_1D5614A78();
  v58 = OUTLINED_FUNCTION_12_0(v57, &v597);
  v553 = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_20(v64, &v594);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D56134E8();
  v68 = OUTLINED_FUNCTION_12_0(v67, &v600);
  v570 = v69;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v71);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_20(v74, v596);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D5613198();
  v78 = OUTLINED_FUNCTION_12_0(v77, &v605);
  v574 = v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v81);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_20(v84, v601);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v86);
  v87 = sub_1D560C0A8();
  v88 = OUTLINED_FUNCTION_12_0(v87, &v611);
  v580 = v89;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v92 = OUTLINED_FUNCTION_22(v91);
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v96 = OUTLINED_FUNCTION_20(v95, &v606);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v98);
  v99 = sub_1D5610CB8();
  v100 = OUTLINED_FUNCTION_12_0(v99, &v616);
  v584 = v101;
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v103);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF630, &qword_1D5632450);
  OUTLINED_FUNCTION_20(v106, &v612);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_3();
  v109 = OUTLINED_FUNCTION_48(v108);
  v110 = type metadata accessor for HLSAsset(v109);
  v111 = OUTLINED_FUNCTION_20(v110, &v622);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v113);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF638, &qword_1D5632458);
  OUTLINED_FUNCTION_20(v116, &v617);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v118);
  v119 = sub_1D56128E8();
  v120 = OUTLINED_FUNCTION_12_0(v119, &a12);
  v592[1] = v121;
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v123);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF640, &unk_1D5632460);
  OUTLINED_FUNCTION_20(v126, &v623);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v128);
  v129 = sub_1D560C328();
  v130 = OUTLINED_FUNCTION_12_0(v129, &a16);
  v597 = v131;
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v134 = OUTLINED_FUNCTION_22(v133);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v138 = OUTLINED_FUNCTION_20(v137, &a15);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v140);
  v606 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v602 = v141;
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v145 = OUTLINED_FUNCTION_22(v144);
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_13_2();
  v603 = v147;
  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_13_2();
  v604 = v150;
  OUTLINED_FUNCTION_70_0();
  v613 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v609 = v151;
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_5_0();
  v607 = v153;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v154);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_13_3();
  v608 = v156;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_13_3();
  v612 = v158;
  OUTLINED_FUNCTION_70_0();
  v619 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v615 = v159;
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_5_0();
  v610 = v161;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v162);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_13_3();
  v614 = v164;
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v165);
  OUTLINED_FUNCTION_13_3();
  v618 = v166;
  v167 = OUTLINED_FUNCTION_70_0();
  v621 = type metadata accessor for AssetFlavors(v167);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_5_0();
  v616 = v169;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v170);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_13_3();
  v620 = v172;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF658, &qword_1D5632488);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_13_3();
  v622 = v175;
  OUTLINED_FUNCTION_70_0();
  v176 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v178 = v177;
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_5();
  v182 = v181 - v180;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v183);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v549 - v185;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v549 - v189;
  v191 = v25[1];
  v192 = v23[1];
  if (v191)
  {
    if (!v192)
    {
      goto LABEL_52;
    }

    v193 = *v25 == *v23 && v191 == v192;
    if (!v193 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v192)
  {
    goto LABEL_52;
  }

  v549 = v30;
  v194 = type metadata accessor for UploadedVideoPropertyProvider(0);
  v623 = v23;
  v550 = v194;
  v195 = *(v194 + 20);
  v196 = v25;
  v197 = *(v187 + 48);
  v551 = v196;
  sub_1D4E69910(v196 + v195, v190, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v198 = v623 + v195;
  v199 = v623;
  sub_1D4E69910(v198, &v190[v197], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v190, 1, v176);
  if (v193)
  {
    OUTLINED_FUNCTION_57(&v190[v197], 1, v176);
    if (v193)
    {
      sub_1D4E50004(v190, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_20;
    }

LABEL_18:
    v203 = &qword_1EC7E9FB8;
    v204 = &unk_1D561B9C0;
    v205 = v190;
LABEL_51:
    sub_1D4E50004(v205, v203, v204);
    goto LABEL_52;
  }

  sub_1D4E69910(v190, v186, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(&v190[v197], 1, v176);
  if (v200)
  {
    v201 = OUTLINED_FUNCTION_109();
    v202(v201);
    goto LABEL_18;
  }

  (*(v178 + 32))(v182, &v190[v197], v176);
  OUTLINED_FUNCTION_66_8();
  sub_1D50B6B10(v206, v207, MEMORY[0x1E6976F80]);
  v208 = sub_1D5614D18();
  v209 = *(v178 + 8);
  v209(v182, v176);
  v210 = OUTLINED_FUNCTION_109();
  (v209)(v210);
  sub_1D4E50004(v190, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v208 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_20:
  v211 = v550;
  v212 = v550[6];
  v213 = *(v173 + 48);
  v214 = v551;
  v215 = v622;
  OUTLINED_FUNCTION_102_8(v551 + v212, v622);
  OUTLINED_FUNCTION_102_8(v199 + v212, v215 + v213);
  OUTLINED_FUNCTION_57(v215, 1, v621);
  if (v193)
  {
    OUTLINED_FUNCTION_1(v215 + v213);
    if (v193)
    {
      sub_1D4E50004(v215, &qword_1EC7ECC88, &unk_1D56310F0);
      goto LABEL_31;
    }

LABEL_28:
    v203 = &qword_1EC7EF658;
    v204 = &qword_1D5632488;
LABEL_29:
    v205 = v215;
    goto LABEL_51;
  }

  v216 = v620;
  sub_1D4E69910(v215, v620, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_1(v215 + v213);
  if (v217)
  {
    sub_1D50B6A1C(v216, type metadata accessor for AssetFlavors);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_65_14();
  v218 = v215 + v213;
  v219 = v616;
  sub_1D50B69BC(v218, v616, v220);
  static AssetFlavors.== infix(_:_:)();
  v222 = v221;
  sub_1D50B6A1C(v219, type metadata accessor for AssetFlavors);
  sub_1D50B6A1C(v216, type metadata accessor for AssetFlavors);
  sub_1D4E50004(v215, &qword_1EC7ECC88, &unk_1D56310F0);
  if ((v222 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v223 = v211[7];
  v224 = v618;
  v225 = *(v617 + 48);
  OUTLINED_FUNCTION_102_8(v214 + v223, v618);
  OUTLINED_FUNCTION_102_8(v199 + v223, v224 + v225);
  v226 = v619;
  OUTLINED_FUNCTION_4_18(v224, 1);
  if (v193)
  {
    OUTLINED_FUNCTION_4_18(v224 + v225, 1);
    if (v193)
    {
      sub_1D4E50004(v224, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_41;
    }

LABEL_39:
    v203 = &qword_1EC7EF650;
    v204 = &qword_1D5632480;
LABEL_50:
    v205 = v224;
    goto LABEL_51;
  }

  sub_1D4E69910(v224, v614, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_4_18(v224 + v225, 1);
  if (v227)
  {
    v228 = OUTLINED_FUNCTION_164_0();
    v229(v228);
    goto LABEL_39;
  }

  (*(v615 + 32))(v610, v224 + v225, v226);
  OUTLINED_FUNCTION_74_9();
  v232 = sub_1D50B6B10(v230, v231, MEMORY[0x1E6975940]);
  OUTLINED_FUNCTION_122_2(v232);
  v233 = OUTLINED_FUNCTION_128_0();
  (*L"X\b\a")(v233);
  v234 = OUTLINED_FUNCTION_164_0();
  (*L"X\b\a")(v234);
  sub_1D4E50004(v224, &qword_1EC7EDB98, L"X\b\a");
  if ((&qword_1EC7EDB98 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_41:
  v235 = v211[8];
  v224 = v612;
  v236 = *(v611 + 48);
  OUTLINED_FUNCTION_102_8(v214 + v235, v612);
  OUTLINED_FUNCTION_102_8(v199 + v235, v224 + v236);
  v237 = v613;
  OUTLINED_FUNCTION_4_18(v224, 1);
  if (v193)
  {
    OUTLINED_FUNCTION_4_18(v224 + v236, 1);
    if (v193)
    {
      sub_1D4E50004(v224, &qword_1EC7EC478, &unk_1D56299D0);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  sub_1D4E69910(v224, v608, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_4_18(v224 + v236, 1);
  if (v238)
  {
    v239 = OUTLINED_FUNCTION_164_0();
    v240(v239);
LABEL_49:
    v203 = &qword_1EC7EE730;
    v204 = &unk_1D562C598;
    goto LABEL_50;
  }

  (*(v609 + 32))(v607, v224 + v236, v237);
  OUTLINED_FUNCTION_72_13();
  v243 = sub_1D50B6B10(v241, v242, MEMORY[0x1E6975D78]);
  OUTLINED_FUNCTION_122_2(v243);
  v244 = OUTLINED_FUNCTION_128_0();
  (unk_1D56299D0)(v244);
  v245 = OUTLINED_FUNCTION_164_0();
  (unk_1D56299D0)(v245);
  sub_1D4E50004(v224, &qword_1EC7EC478, &unk_1D56299D0);
  if ((&qword_1EC7EC478 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  v246 = v211[9];
  v247 = (v214 + v246);
  v248 = *(v214 + v246 + 8);
  v249 = (v199 + v246);
  v250 = *(v199 + v246 + 8);
  if (v248)
  {
    if (!v250)
    {
      goto LABEL_52;
    }

LABEL_60:
    v251 = v211[10];
    v252 = *(v214 + v251);
    v253 = *(v199 + v251);
    if (v252)
    {
      if (!v253)
      {
        goto LABEL_52;
      }

      sub_1D4F28F1C();
      OUTLINED_FUNCTION_82();

      if ((v252 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v253)
    {
      goto LABEL_52;
    }

    v254 = v211[11];
    v255 = v604;
    v256 = *(v605 + 48);
    OUTLINED_FUNCTION_102_8(v214 + v254, v604);
    v257 = v255;
    sub_1D4E69910(v199 + v254, v255 + v256, &qword_1EC7EAC98, &unk_1D561DA80);
    v258 = v606;
    OUTLINED_FUNCTION_4_18(v255, 1);
    if (v193)
    {
      v259 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_4_18(v259, v260);
      if (!v193)
      {
        goto LABEL_72;
      }

      sub_1D4E50004(v255, &qword_1EC7EAC98, &unk_1D561DA80);
    }

    else
    {
      sub_1D4E69910(v255, v603, &qword_1EC7EAC98, &unk_1D561DA80);
      v261 = OUTLINED_FUNCTION_72_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v261, v262, v258);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_136();
        v264 = OUTLINED_FUNCTION_164_0();
        v265(v264);
LABEL_72:
        v203 = &qword_1EC7EF648;
        v204 = &unk_1D5632470;
        v205 = v255;
        goto LABEL_51;
      }

      v266 = v602;
      (*(v602 + 32))(v601[1], v257 + v256, v258);
      OUTLINED_FUNCTION_12_39();
      sub_1D50B6B10(v267, v268, MEMORY[0x1E6975E60]);
      LODWORD(v622) = sub_1D5614D18();
      v256 = *(v266 + 8);
      v269 = OUTLINED_FUNCTION_26_27();
      (v256)(v269);
      v270 = OUTLINED_FUNCTION_164_0();
      (v256)(v270);
      sub_1D4E50004(v257, &qword_1EC7EAC98, &unk_1D561DA80);
      if ((v622 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v271 = v211[12];
    v272 = *(v214 + v271);
    v273 = *(v199 + v271);
    if (v272)
    {
      if (!v273)
      {
        goto LABEL_52;
      }

      sub_1D4F29174();
      OUTLINED_FUNCTION_82();

      if ((v272 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v273)
    {
      goto LABEL_52;
    }

    v274 = v211[13];
    OUTLINED_FUNCTION_62_0();
    v215 = v599;
    OUTLINED_FUNCTION_102_8(v214 + v274, v599);
    OUTLINED_FUNCTION_102_8(v199 + v274, v215 + v256);
    v275 = v601[0];
    OUTLINED_FUNCTION_4_18(v215, 1);
    if (v193)
    {
      OUTLINED_FUNCTION_4_18(v215 + v256, 1);
      if (!v193)
      {
        goto LABEL_86;
      }

      sub_1D4E50004(v215, &qword_1EC7EA3B8, &unk_1D561E370);
    }

    else
    {
      sub_1D4E69910(v215, v596[1], &qword_1EC7EA3B8, &unk_1D561E370);
      v276 = __swift_getEnumTagSinglePayload(v215 + v256, 1, v275);
      if (v276 == 1)
      {
        OUTLINED_FUNCTION_136();
        v277 = OUTLINED_FUNCTION_26_27();
        v278(v277);
LABEL_86:
        v203 = &qword_1EC7EB578;
        v204 = &unk_1D5644D10;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_69_2();
      v211 = v593;
      v279(v593, v215 + v256, v275);
      OUTLINED_FUNCTION_11_47();
      v282 = sub_1D50B6B10(v280, v281, MEMORY[0x1E6969550]);
      v285 = OUTLINED_FUNCTION_75_3(v282, v283, v284, v282);
      v256 = *(v214 + 8);
      v286 = OUTLINED_FUNCTION_122_1();
      (v256)(v286);
      v287 = OUTLINED_FUNCTION_26_27();
      (v256)(v287);
      sub_1D4E50004(v215, &qword_1EC7EA3B8, &unk_1D561E370);
      if ((v285 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_62_0();
    v288 = OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_30_23(v288, &a13);
    OUTLINED_FUNCTION_19_35();
    v289 = OUTLINED_FUNCTION_95_0();
    v290 = v598[0];
    OUTLINED_FUNCTION_57(v289, v291, v598[0]);
    if (v193)
    {
      OUTLINED_FUNCTION_1(v214 + v256);
      if (!v193)
      {
        goto LABEL_95;
      }

      sub_1D4E50004(v598[1], &qword_1EC7EF5C8, &unk_1D5632130);
    }

    else
    {
      sub_1D4E69910(v214, v595, &qword_1EC7EF5C8, &unk_1D5632130);
      v292 = __swift_getEnumTagSinglePayload(v214 + v256, 1, v290);
      if (v292 == 1)
      {
        OUTLINED_FUNCTION_136();
        v293(v595, v598[0]);
LABEL_95:
        v203 = &qword_1EC7EF640;
        v204 = &unk_1D5632460;
        v294 = &a13;
LABEL_178:
        v205 = *(v294 - 32);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_133();
      v295();
      OUTLINED_FUNCTION_68_10();
      sub_1D50B6B10(v296, v297, MEMORY[0x1E6976610]);
      OUTLINED_FUNCTION_76();
      v298 = OUTLINED_FUNCTION_51();
      (unk_1D5632130)(v298);
      v299 = OUTLINED_FUNCTION_85();
      (unk_1D5632130)(v299);
      sub_1D4E50004(v211, &qword_1EC7EF5C8, &unk_1D5632130);
      if ((v290 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_62_0();
    v300 = OUTLINED_FUNCTION_26_29();
    OUTLINED_FUNCTION_30_23(v300, &a9);
    OUTLINED_FUNCTION_19_35();
    v301 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_47_2(v301, v302, &v622);
    if (v193)
    {
      v303 = OUTLINED_FUNCTION_86_1(&a9);
      OUTLINED_FUNCTION_47_2(v303, v304, &v622);
      if (v193)
      {
        sub_1D4E50004(v596[0], &qword_1EC7EF398, &qword_1D5631120);
        goto LABEL_107;
      }
    }

    else
    {
      v305 = OUTLINED_FUNCTION_145_0(&a9);
      sub_1D4E69910(v305, v591, v306, v307);
      v308 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_47_2(v308, v309, &v622);
      if (!v310)
      {
        OUTLINED_FUNCTION_13_37();
        v312 = v596[0];
        v313 = v596[0] + v256;
        v256 = v585;
        sub_1D50B69BC(v313, v585, v314);
        v214 = v591;
        v315 = OUTLINED_FUNCTION_93();
        v317 = static HLSAsset.== infix(_:_:)(v315, v316);
        sub_1D50B6A1C(v256, type metadata accessor for HLSAsset);
        v318 = OUTLINED_FUNCTION_109();
        sub_1D50B6A1C(v318, v319);
        sub_1D4E50004(v312, &qword_1EC7EF398, &qword_1D5631120);
        if (!v317)
        {
          goto LABEL_52;
        }

LABEL_107:
        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v320 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v320, &v619);
        OUTLINED_FUNCTION_19_35();
        v321 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v321, v322, &v616);
        if (v193)
        {
          v323 = OUTLINED_FUNCTION_86_1(&v619);
          OUTLINED_FUNCTION_47_2(v323, v324, &v616);
          if (!v193)
          {
            goto LABEL_114;
          }

          sub_1D4E50004(v592[0], &qword_1EC7EF5D0, &unk_1D5632140);
        }

        else
        {
          v325 = OUTLINED_FUNCTION_145_0(&v619);
          sub_1D4E69910(v325, v587, v326, v327);
          v328 = OUTLINED_FUNCTION_72_1();
          v330 = __swift_getEnumTagSinglePayload(v328, v329, v590[0]);
          if (v330 == 1)
          {
            OUTLINED_FUNCTION_136();
            v331(v587, v590[0]);
LABEL_114:
            v203 = &qword_1EC7EF630;
            v204 = &qword_1D5632450;
            v294 = &v619;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v332();
          OUTLINED_FUNCTION_64_13();
          sub_1D50B6B10(v333, v334, MEMORY[0x1E6976038]);
          OUTLINED_FUNCTION_76();
          v335 = OUTLINED_FUNCTION_51();
          (unk_1D5632140)(v335);
          v336 = OUTLINED_FUNCTION_85();
          (unk_1D5632140)(v336);
          sub_1D4E50004(v211, &qword_1EC7EF5D0, &unk_1D5632140);
          if ((&qword_1EC7EF5D0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v337 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v337, &v614);
        OUTLINED_FUNCTION_19_35();
        v338 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v338, v339, &v611);
        if (v193)
        {
          v340 = OUTLINED_FUNCTION_86_1(&v614);
          OUTLINED_FUNCTION_47_2(v340, v341, &v611);
          if (!v193)
          {
            goto LABEL_123;
          }

          sub_1D4E50004(v588, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }

        else
        {
          v342 = OUTLINED_FUNCTION_145_0(&v614);
          sub_1D4E69910(v342, v582, v343, v344);
          v345 = OUTLINED_FUNCTION_72_1();
          v347 = __swift_getEnumTagSinglePayload(v345, v346, v586[0]);
          if (v347 == 1)
          {
            OUTLINED_FUNCTION_136();
            v348(v582, v586[0]);
LABEL_123:
            v203 = &qword_1EC7E9FB0;
            v204 = &qword_1D562C590;
            v294 = &v614;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_69_2();
          v349 = v588;
          v211 = v575;
          v350(v575, v588 + v256, v586[0]);
          OUTLINED_FUNCTION_14_39();
          v353 = sub_1D50B6B10(v351, v352, MEMORY[0x1E6968FC8]);
          v356 = OUTLINED_FUNCTION_75_3(v353, v354, v355, v353);
          v357 = *(v214 + 8);
          v358 = OUTLINED_FUNCTION_122_1();
          v357(v358);
          v359 = OUTLINED_FUNCTION_26_27();
          v357(v359);
          sub_1D4E50004(v349, &unk_1EC7E9CA8, &unk_1D561D1D0);
          if ((v356 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v360 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v360, &v608);
        OUTLINED_FUNCTION_19_35();
        v361 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v361, v362, &v605);
        if (v193)
        {
          v363 = OUTLINED_FUNCTION_86_1(&v608);
          OUTLINED_FUNCTION_47_2(v363, v364, &v605);
          if (!v193)
          {
            goto LABEL_132;
          }

          sub_1D4E50004(v583, &qword_1EC7EC530, &unk_1D5632150);
        }

        else
        {
          v365 = OUTLINED_FUNCTION_145_0(&v608);
          sub_1D4E69910(v365, v578, v366, v367);
          v368 = OUTLINED_FUNCTION_72_1();
          v370 = __swift_getEnumTagSinglePayload(v368, v369, v581[0]);
          if (v370 == 1)
          {
            OUTLINED_FUNCTION_136();
            v371(v578, v581[0]);
LABEL_132:
            v203 = &qword_1EC7EF628;
            v204 = &unk_1D5632440;
            v294 = &v608;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v372();
          OUTLINED_FUNCTION_75_8();
          sub_1D50B6B10(v373, v374, MEMORY[0x1E69768F8]);
          OUTLINED_FUNCTION_76();
          v375 = OUTLINED_FUNCTION_51();
          (unk_1D5632150)(v375);
          v376 = OUTLINED_FUNCTION_85();
          (unk_1D5632150)(v376);
          sub_1D4E50004(v211, &qword_1EC7EC530, &unk_1D5632150);
          if ((&qword_1EC7EC530 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v377 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v377, &v602);
        OUTLINED_FUNCTION_19_35();
        v378 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v378, v379, &v600);
        if (v193)
        {
          v380 = OUTLINED_FUNCTION_86_1(&v602);
          OUTLINED_FUNCTION_47_2(v380, v381, &v600);
          if (!v193)
          {
            goto LABEL_141;
          }

          sub_1D4E50004(v579, &qword_1EC7EC528, &unk_1D5621070);
        }

        else
        {
          v382 = OUTLINED_FUNCTION_145_0(&v602);
          sub_1D4E69910(v382, v571, v383, v384);
          v385 = OUTLINED_FUNCTION_72_1();
          v387 = __swift_getEnumTagSinglePayload(v385, v386, v576);
          if (v387 == 1)
          {
            OUTLINED_FUNCTION_136();
            v388(v571, v576);
LABEL_141:
            v203 = &qword_1EC7EF620;
            v204 = &unk_1D5637E80;
            v294 = &v602;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v389();
          OUTLINED_FUNCTION_73_8();
          sub_1D50B6B10(v390, v391, MEMORY[0x1E6976A28]);
          OUTLINED_FUNCTION_76();
          v392 = OUTLINED_FUNCTION_51();
          (unk_1D5621070)(v392);
          v393 = OUTLINED_FUNCTION_85();
          (unk_1D5621070)(v393);
          sub_1D4E50004(v211, &qword_1EC7EC528, &unk_1D5621070);
          if ((&qword_1EC7EC528 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v394 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v394, v598);
        OUTLINED_FUNCTION_19_35();
        v395 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v395, v396, &v597);
        if (v193)
        {
          v397 = OUTLINED_FUNCTION_86_1(v598);
          OUTLINED_FUNCTION_47_2(v397, v398, &v597);
          if (!v193)
          {
            goto LABEL_150;
          }

          sub_1D4E50004(v573, &qword_1EC7EF5D8, &unk_1D5632160);
        }

        else
        {
          v399 = OUTLINED_FUNCTION_145_0(v598);
          sub_1D4E69910(v399, v569, v400, v401);
          v402 = OUTLINED_FUNCTION_72_1();
          v404 = __swift_getEnumTagSinglePayload(v402, v403, v572);
          if (v404 == 1)
          {
            OUTLINED_FUNCTION_136();
            v405(v569, v572);
LABEL_150:
            v203 = &qword_1EC7EF618;
            v204 = &unk_1D5632430;
            v294 = v598;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v406();
          OUTLINED_FUNCTION_71_8();
          sub_1D50B6B10(v407, v408, MEMORY[0x1E69774B0]);
          OUTLINED_FUNCTION_76();
          v409 = OUTLINED_FUNCTION_51();
          (unk_1D5632160)(v409);
          v410 = OUTLINED_FUNCTION_85();
          (unk_1D5632160)(v410);
          sub_1D4E50004(v211, &qword_1EC7EF5D8, &unk_1D5632160);
          if ((&qword_1EC7EF5D8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        v411 = *(v605 + 48);
        v412 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v412, v592);
        OUTLINED_FUNCTION_19_35();
        v413 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v413, v414, v606);
        if (v193)
        {
          v415 = OUTLINED_FUNCTION_86_1(v592);
          OUTLINED_FUNCTION_57(v415, v416, v606);
          if (!v193)
          {
            goto LABEL_159;
          }

          sub_1D4E50004(v568, &qword_1EC7EAC98, &unk_1D561DA80);
        }

        else
        {
          v417 = OUTLINED_FUNCTION_145_0(v592);
          sub_1D4E69910(v417, v552, v418, v419);
          v420 = OUTLINED_FUNCTION_72_1();
          v422 = __swift_getEnumTagSinglePayload(v420, v421, v606);
          if (v422 == 1)
          {
            OUTLINED_FUNCTION_136();
            v423(v552, v606);
LABEL_159:
            v203 = &qword_1EC7EF648;
            v204 = &unk_1D5632470;
            v294 = v592;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          v424 = OUTLINED_FUNCTION_78();
          v411 = v606;
          v425(v424);
          OUTLINED_FUNCTION_12_39();
          sub_1D50B6B10(v426, v427, MEMORY[0x1E6975E60]);
          OUTLINED_FUNCTION_76();
          v428 = OUTLINED_FUNCTION_51();
          (unk_1D561DA80)(v428);
          v429 = OUTLINED_FUNCTION_85();
          (unk_1D561DA80)(v429);
          sub_1D4E50004(v211, &qword_1EC7EAC98, &unk_1D561DA80);
          if ((&qword_1EC7EAC98 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v430 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v430, v581);
        OUTLINED_FUNCTION_19_35();
        v431 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v431, v432, &v583);
        if (v193)
        {
          v433 = OUTLINED_FUNCTION_86_1(v581);
          OUTLINED_FUNCTION_47_2(v433, v434, &v583);
          if (!v193)
          {
            goto LABEL_168;
          }

          sub_1D4E50004(v559, &qword_1EC7EB5C0, &unk_1D56223C0);
        }

        else
        {
          v435 = OUTLINED_FUNCTION_145_0(v581);
          sub_1D4E69910(v435, v558, v436, v437);
          v438 = OUTLINED_FUNCTION_72_1();
          v440 = __swift_getEnumTagSinglePayload(v438, v439, v561);
          if (v440 == 1)
          {
            OUTLINED_FUNCTION_136();
            v441(v558, v561);
LABEL_168:
            v203 = &qword_1EC7EF610;
            v204 = &unk_1D5637E70;
            v294 = v581;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v442();
          OUTLINED_FUNCTION_70_9();
          sub_1D50B6B10(v443, v444, MEMORY[0x1E6975EA0]);
          OUTLINED_FUNCTION_76();
          v445 = OUTLINED_FUNCTION_51();
          (unk_1D56223C0)(v445);
          v446 = OUTLINED_FUNCTION_85();
          (unk_1D56223C0)(v446);
          sub_1D4E50004(v211, &qword_1EC7EB5C0, &unk_1D56223C0);
          if ((&qword_1EC7EB5C0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v447 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v447, &v579);
        OUTLINED_FUNCTION_19_35();
        v448 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v448, v449, &v611);
        if (v193)
        {
          v450 = OUTLINED_FUNCTION_86_1(&v579);
          OUTLINED_FUNCTION_47_2(v450, v451, &v611);
          if (!v193)
          {
            goto LABEL_177;
          }

          sub_1D4E50004(v557, &unk_1EC7E9CA8, &unk_1D561D1D0);
        }

        else
        {
          v452 = OUTLINED_FUNCTION_145_0(&v579);
          sub_1D4E69910(v452, v556, v453, v454);
          v455 = OUTLINED_FUNCTION_72_1();
          v457 = __swift_getEnumTagSinglePayload(v455, v456, v586[0]);
          if (v457 == 1)
          {
            OUTLINED_FUNCTION_136();
            v458(v556, v586[0]);
LABEL_177:
            v203 = &qword_1EC7E9FB0;
            v204 = &qword_1D562C590;
            v294 = &v579;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v459();
          OUTLINED_FUNCTION_14_39();
          sub_1D50B6B10(v460, v461, MEMORY[0x1E6968FC8]);
          OUTLINED_FUNCTION_76();
          v462 = OUTLINED_FUNCTION_51();
          (unk_1D561D1D0)(v462);
          v463 = OUTLINED_FUNCTION_85();
          (unk_1D561D1D0)(v463);
          sub_1D4E50004(v211, &unk_1EC7E9CA8, &unk_1D561D1D0);
          if ((&unk_1EC7E9CA8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_40_22();
        if (v466)
        {
          if (!v464)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_31_0(v465);
          v469 = v193 && v467 == v468;
          if (!v469 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else if (v464)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v470 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v470, &v577);
        OUTLINED_FUNCTION_19_35();
        v471 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v471, v472, &a16);
        if (v193)
        {
          v473 = OUTLINED_FUNCTION_86_1(&v577);
          OUTLINED_FUNCTION_47_2(v473, v474, &a16);
          if (!v193)
          {
            goto LABEL_196;
          }

          sub_1D4E50004(v555, &qword_1EC7EA3B8, &unk_1D561E370);
        }

        else
        {
          v475 = OUTLINED_FUNCTION_145_0(&v577);
          sub_1D4E69910(v475, v554, v476, v477);
          v478 = OUTLINED_FUNCTION_72_1();
          v480 = __swift_getEnumTagSinglePayload(v478, v479, v601[0]);
          if (v480 == 1)
          {
            OUTLINED_FUNCTION_136();
            v481(v554, v601[0]);
LABEL_196:
            v203 = &qword_1EC7EB578;
            v204 = &unk_1D5644D10;
            v294 = &v577;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v482();
          OUTLINED_FUNCTION_11_47();
          sub_1D50B6B10(v483, v484, MEMORY[0x1E6969550]);
          OUTLINED_FUNCTION_76();
          v485 = OUTLINED_FUNCTION_51();
          (unk_1D561E370)(v485);
          v486 = OUTLINED_FUNCTION_85();
          (unk_1D561E370)(v486);
          sub_1D4E50004(v211, &qword_1EC7EA3B8, &unk_1D561E370);
          if ((&qword_1EC7EA3B8 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_40_22();
        if (v489)
        {
          if (!v487)
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_31_0(v488);
          v492 = v193 && v490 == v491;
          if (!v492 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else if (v487)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v493 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v493, v586);
        OUTLINED_FUNCTION_19_35();
        v494 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v494, v495, &v588);
        if (v193)
        {
          v496 = OUTLINED_FUNCTION_86_1(v586);
          OUTLINED_FUNCTION_47_2(v496, v497, &v588);
          if (!v193)
          {
            goto LABEL_214;
          }

          sub_1D4E50004(v563, &off_1EC7EB5B0, &unk_1D5632170);
        }

        else
        {
          v498 = OUTLINED_FUNCTION_145_0(v586);
          sub_1D4E69910(v498, v562, v499, v500);
          v501 = OUTLINED_FUNCTION_72_1();
          v503 = __swift_getEnumTagSinglePayload(v501, v502, v565);
          if (v503 == 1)
          {
            OUTLINED_FUNCTION_136();
            v504(v562, v565);
LABEL_214:
            v203 = &qword_1EC7EF608;
            v204 = &unk_1D5632420;
            v294 = v586;
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v505();
          sub_1D50B6A74(&qword_1EC7EF660, &qword_1EC7EF668, MEMORY[0x1E6976F38], MEMORY[0x1E6975000]);
          OUTLINED_FUNCTION_76();
          v506 = OUTLINED_FUNCTION_51();
          (unk_1D5632170)(v506);
          v507 = OUTLINED_FUNCTION_85();
          (unk_1D5632170)(v507);
          sub_1D4E50004(v211, &off_1EC7EB5B0, &unk_1D5632170);
          if ((&off_1EC7EB5B0 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_50_15();
        OUTLINED_FUNCTION_62_0();
        v508 = OUTLINED_FUNCTION_26_29();
        OUTLINED_FUNCTION_30_23(v508, &v591);
        OUTLINED_FUNCTION_19_35();
        v509 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v509, v510, v590);
        if (v193)
        {
          v511 = OUTLINED_FUNCTION_86_1(&v591);
          OUTLINED_FUNCTION_47_2(v511, v512, v590);
          if (v193)
          {
            sub_1D4E50004(v567, &qword_1EC7ECC80, &unk_1D5622EA0);
            goto LABEL_226;
          }
        }

        else
        {
          v513 = OUTLINED_FUNCTION_145_0(&v591);
          sub_1D4E69910(v513, v566, v514, v515);
          v516 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_47_2(v516, v517, v590);
          if (!v518)
          {
            v520 = v567;
            v521 = v567 + v411;
            v522 = v549;
            sub_1D50B69BC(v521, v549, type metadata accessor for CuratorRelationshipProvider);
            v523 = OUTLINED_FUNCTION_93();
            v525 = sub_1D4F4AA50(v523, v524);
            sub_1D50B6A1C(v522, type metadata accessor for CuratorRelationshipProvider);
            v526 = OUTLINED_FUNCTION_109();
            sub_1D50B6A1C(v526, v527);
            sub_1D4E50004(v520, &qword_1EC7ECC80, &unk_1D5622EA0);
            if (!v525)
            {
              goto LABEL_52;
            }

LABEL_226:
            OUTLINED_FUNCTION_50_15();
            v529 = *(v528 + 116);
            v530 = *(v551 + v529);
            v531 = *(v623 + v529);
            if (v530)
            {
              if (!v531)
              {
                goto LABEL_52;
              }

              sub_1D4EF7D1C(v530, v531);
              OUTLINED_FUNCTION_82();

              if ((v530 & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else if (v531)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_27_24(*(v532 + 120));
            sub_1D4EF6F7C();
            if ((v533 & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_118_6(*(v534 + 124));
            if ((sub_1D560D6E8() & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_118_6(*(v535 + 128));
            if ((sub_1D4F3B22C() & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_40_22();
            if (v538)
            {
              if (!v536)
              {
                goto LABEL_52;
              }

              OUTLINED_FUNCTION_31_0(v537);
              v541 = v193 && v539 == v540;
              if (!v541 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else if (v536)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_50_15();
            OUTLINED_FUNCTION_27_24(*(v542 + 136));
            sub_1D4F286E0();
            if (v543)
            {
              OUTLINED_FUNCTION_50_15();
              OUTLINED_FUNCTION_27_24(*(v544 + 140));
              sub_1D4F286E0();
              if (v545)
              {
                OUTLINED_FUNCTION_50_15();
                OUTLINED_FUNCTION_27_24(*(v546 + 144));
                sub_1D4F286E0();
                if (v547)
                {
                  OUTLINED_FUNCTION_50_15();
                  OUTLINED_FUNCTION_27_24(*(v548 + 148));
                  sub_1D4F286E0();
                }
              }
            }

            goto LABEL_52;
          }

          OUTLINED_FUNCTION_10_49();
          sub_1D50B6A1C(v566, v519);
        }

        v203 = &qword_1EC7EF600;
        v204 = &unk_1D5640880;
        v294 = &v591;
        goto LABEL_178;
      }

      OUTLINED_FUNCTION_67_13();
      sub_1D50B6A1C(v591, v311);
    }

    v203 = &qword_1EC7EF638;
    v204 = &qword_1D5632458;
    v294 = &a9;
    goto LABEL_178;
  }

  if (*v247 != *v249)
  {
    LOBYTE(v250) = 1;
  }

  if ((v250 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_52:
  OUTLINED_FUNCTION_46();
}

void sub_1D50B4C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v279 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v300 = v31;
  OUTLINED_FUNCTION_70_0();
  v299 = sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  v278 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v298 = v37;
  OUTLINED_FUNCTION_70_0();
  v293 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v277 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v289 = v43;
  OUTLINED_FUNCTION_70_0();
  v288 = sub_1D56134E8();
  OUTLINED_FUNCTION_4();
  v276 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v287 = v49;
  OUTLINED_FUNCTION_70_0();
  v286 = sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v274 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v284 = v55;
  OUTLINED_FUNCTION_70_0();
  v303 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v297 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v296 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v60 = OUTLINED_FUNCTION_22(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  v295 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5610CB8();
  v65 = OUTLINED_FUNCTION_12_0(v64, &a16);
  v272 = v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v68);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  v71 = OUTLINED_FUNCTION_48(v70);
  v72 = type metadata accessor for HLSAsset(v71);
  v73 = OUTLINED_FUNCTION_20(v72, &a14);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  OUTLINED_FUNCTION_22(v75);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v77);
  v78 = sub_1D56128E8();
  v79 = OUTLINED_FUNCTION_12_0(v78, &a12);
  v270 = v80;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v82);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v84);
  v294 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v292 = v85;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  v291 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v89 = OUTLINED_FUNCTION_22(v88);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  v290 = v90;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v92);
  v302 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v285 = v93;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  v283 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v97 = OUTLINED_FUNCTION_22(v96);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D56106B8();
  v101 = OUTLINED_FUNCTION_12_0(v100, &v304);
  v268[3] = v102;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v104);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D560F928();
  v108 = OUTLINED_FUNCTION_12_0(v107, &v302);
  v268[1] = v109;
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v111);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  v114 = v268 - v113;
  v115 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v117 = v116;
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5();
  v121 = v120 - v119;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v122);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v123);
  v125 = v268 - v124;
  if (*(v20 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v126 = type metadata accessor for UploadedVideoPropertyProvider(0);
  sub_1D4E69910(v20 + v126[5], v125, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v125, 1, v115);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v117 + 32))(v121, v125, v115);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_66_8();
    sub_1D50B6B10(v128, v129, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v130 = *(v117 + 8);
    v117 += 8;
    v130(v121, v115);
  }

  v131 = v294;
  v132 = v302;
  v133 = v20 + v126[6];
  sub_1D4F8596C();
  sub_1D4E69910(v23 + v126[7], v114, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v114, 1, v280);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v117 = v268[0];
    v134 = OUTLINED_FUNCTION_164_0();
    v135(v134);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_74_9();
    sub_1D50B6B10(v136, v137, MEMORY[0x1E6975938]);
    OUTLINED_FUNCTION_104();
    v133 = v117;
    sub_1D5614CB8();
    v138 = OUTLINED_FUNCTION_116_7();
    v139(v138);
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[8], &qword_1EC7EC478, &unk_1D56299D0, &v303);
  v140 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v140, v141);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2();
    v142 = OUTLINED_FUNCTION_88_9();
    v143(v142);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_72_13();
    sub_1D50B6B10(v144, v145, MEMORY[0x1E6975D70]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v146 = OUTLINED_FUNCTION_122_1();
    v147(v146);
  }

  v148 = (v23 + v126[9]);
  if (*(v148 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v149 = *v148;
    OUTLINED_FUNCTION_27();
    if ((v149 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v150 = v149;
    }

    else
    {
      v150 = 0;
    }

    MEMORY[0x1DA6EC100](v150);
  }

  if (*(v23 + v126[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[11], &qword_1EC7EAC98, &unk_1D561DA80, &a9);
  v151 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v151, v152, v132);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v153 = v285;
    OUTLINED_FUNCTION_81();
    v154 = v283;
    v155 = OUTLINED_FUNCTION_109();
    v156(v155);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_39();
    sub_1D50B6B10(v157, v158, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    v133 = v154;
    sub_1D5614CB8();
    (*(v153 + 8))(v154, v132);
  }

  if (*(v23 + v126[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[13], &qword_1EC7EA3B8, &unk_1D561E370, &a10);
  v159 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v159, v160, v131);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v162 = v291;
    v161 = v292;
    (*(v292 + 32))(v291, v133, v131);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_11_47();
    sub_1D50B6B10(v163, v164, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    (*(v161 + 8))(v162, v131);
  }

  v165 = v282;
  v166 = v281;
  OUTLINED_FUNCTION_108_0(v23 + v126[14], &qword_1EC7EF5C8, &unk_1D5632130, &a11);
  v167 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v167, v168, v166);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6();
    v169 = v132;
    v170 = v131;
    v171 = v269;
    v172(v269, v133, v166);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_68_10();
    sub_1D50B6B10(v173, v174, MEMORY[0x1E6976608]);
    OUTLINED_FUNCTION_104();
    v133 = v171;
    sub_1D5614CB8();
    v175 = *(v117 + 8);
    v117 += 8;
    v176 = v171;
    v131 = v170;
    v132 = v169;
    v175(v176, v166);
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[15], &qword_1EC7EF398, &qword_1D5631120, &a13);
  v177 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_47_2(v177, v178, &a14);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_13_37();
    v179 = v271;
    sub_1D50B69BC(v133, v271, v180);
    OUTLINED_FUNCTION_27();
    HLSAsset.hash(into:)(v25);
    OUTLINED_FUNCTION_67_13();
    sub_1D50B6A1C(v179, v181);
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[16], &qword_1EC7EF5D0, &unk_1D5632140, &a15);
  v182 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v182, v183, v165);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v184 = OUTLINED_FUNCTION_127_6();
    v185(v184);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_64_13();
    sub_1D50B6B10(v186, v187, MEMORY[0x1E6976030]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v188 = OUTLINED_FUNCTION_116_7();
    v189(v188);
  }

  OUTLINED_FUNCTION_108_0(v23 + v126[17], &unk_1EC7E9CA8, &unk_1D561D1D0, &a17);
  v190 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v190, v191);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v192 = OUTLINED_FUNCTION_88_9();
    v193(v192);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_14_39();
    sub_1D50B6B10(v194, v195, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v196 = OUTLINED_FUNCTION_122_1();
    v197(v196);
  }

  v198 = v293;
  v199 = v288;
  v200 = v284;
  sub_1D4E69910(v23 + v126[18], v284, &qword_1EC7EC530, &unk_1D5632150);
  v201 = OUTLINED_FUNCTION_35_1();
  v202 = v286;
  OUTLINED_FUNCTION_4_18(v201, v203);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6();
    v204 = v273;
    v205(v273, v200, v202);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_75_8();
    sub_1D50B6B10(v206, v207, MEMORY[0x1E69768F0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v208 = *(v117 + 8);
    v117 += 8;
    v209 = v204;
    v132 = v302;
    v208(v209, v202);
  }

  v210 = v287;
  sub_1D4E69910(v23 + v126[19], v287, &qword_1EC7EC528, &unk_1D5621070);
  v211 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v211, v212, v199);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_115_6();
    v213 = v275;
    v214(v275, v210, v199);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_73_8();
    sub_1D50B6B10(v215, v216, MEMORY[0x1E6976A20]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v117 + 8))(v213, v199);
  }

  sub_1D4E69910(v23 + v126[20], v289, &qword_1EC7EF5D8, &unk_1D5632160);
  v217 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v217, v218, v198);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    v219 = OUTLINED_FUNCTION_127_6();
    v220(v219);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_71_8();
    sub_1D50B6B10(v221, v222, MEMORY[0x1E69774A8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v223 = OUTLINED_FUNCTION_116_7();
    v224(v223);
  }

  v225 = v131;
  OUTLINED_FUNCTION_108_0(v23 + v126[21], &qword_1EC7EAC98, &unk_1D561DA80, &a18);
  v226 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v226, v227, v132);
  v228 = v303;
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v229 = v285;
    OUTLINED_FUNCTION_81();
    v230 = v283;
    v231 = OUTLINED_FUNCTION_109();
    v232(v231);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_12_39();
    sub_1D50B6B10(v233, v234, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v229 + 8))(v230, v132);
  }

  sub_1D4E69910(v23 + v126[22], v298, &qword_1EC7EB5C0, &unk_1D56223C0);
  v235 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v235, v236);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2();
    v237 = OUTLINED_FUNCTION_88_9();
    v238(v237);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_70_9();
    sub_1D50B6B10(v239, v240, MEMORY[0x1E6975E98]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v241 = OUTLINED_FUNCTION_122_1();
    v242(v241);
  }

  sub_1D4E69910(v23 + v126[23], v295, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v243 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v243, v244, v228);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v246 = v296;
    v245 = v297;
    OUTLINED_FUNCTION_81();
    v247 = OUTLINED_FUNCTION_109();
    v248(v247);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_14_39();
    sub_1D50B6B10(v249, v250, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v245 + 8))(v246, v228);
  }

  if (*(v23 + v126[24] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v23 + v126[25], v290, &qword_1EC7EA3B8, &unk_1D561E370);
  v251 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v251, v252, v225);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v254 = v291;
    v253 = v292;
    OUTLINED_FUNCTION_81();
    v255 = OUTLINED_FUNCTION_109();
    v256(v255);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_11_47();
    sub_1D50B6B10(v257, v258, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v253 + 8))(v254, v225);
  }

  if (*(v23 + v126[26] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v23 + v126[27], v300, &off_1EC7EB5B0, &unk_1D5632170);
  v259 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_4_18(v259, v260);
  if (v127)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_69_2();
    v261 = OUTLINED_FUNCTION_88_9();
    v262(v261);
    OUTLINED_FUNCTION_27();
    sub_1D50B6A74(&qword_1EC7EF6C0, &qword_1EC7EC7E8, MEMORY[0x1E6976F30], MEMORY[0x1E6974FF8]);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v263 = OUTLINED_FUNCTION_122_1();
    v264(v263);
  }

  sub_1D4F84DAC();
  if (*(v23 + v126[29]))
  {
    OUTLINED_FUNCTION_27();
    v265 = OUTLINED_FUNCTION_24();
    sub_1D4F068B4(v265);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v266 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v266, v267);
  sub_1D560D838();
  sub_1D50B6B10(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  sub_1D5610088();
  sub_1D50B6B10(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  if (*(v23 + v126[33] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
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

uint64_t sub_1D50B6348()
{
  sub_1D56162D8();
  sub_1D50B4C38(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

void sub_1D50B63FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50B0D7C(v2 + 32, v3);
    v4 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v4, v5, &qword_1D561C420);
  }

  else
  {

    sub_1D50B0D7C(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D50B64B8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50B4C38(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50B653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50B6B10(&qword_1EDD54CE0, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D5632208);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50B65D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 124);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50B6644(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D50B66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 128);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50B6750(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 132));

  return v2;
}

uint64_t sub_1D50B67B8(uint64_t a1)
{
  v2 = sub_1D50B6B10(&qword_1EDD54CE0, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D5632208);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50B6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50B6B10(&qword_1EDD54CD0, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D56321E0);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50B68C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50B6B10(&qword_1EC7EF5E0, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D56321A0);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D50B694C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF398, &qword_1D5631120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50B69BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D50B6A1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D50B6A74(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D50B6B10(a2, MEMORY[0x1E6976F28], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D50B6B10(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_31(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_80_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_7(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_124_3()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_125_5()
{
}

uint64_t OUTLINED_FUNCTION_134_3()
{
}

uint64_t sub_1D50B6E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657469726F766166 && a2 == 0xE900000000000064;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
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

uint64_t sub_1D50B6F30(char a1)
{
  if (!a1)
  {
    return 0x6C61727475656ELL;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64656B696C736964;
}

uint64_t sub_1D50B6F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50B6E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50B6FBC(uint64_t a1)
{
  v2 = sub_1D50B7498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B6FF8(uint64_t a1)
{
  v2 = sub_1D50B7498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B7034(uint64_t a1)
{
  v2 = sub_1D50B74EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B7070(uint64_t a1)
{
  v2 = sub_1D50B74EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B70AC(uint64_t a1)
{
  v2 = sub_1D50B7540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B70E8(uint64_t a1)
{
  v2 = sub_1D50B7540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50B7124(uint64_t a1)
{
  v2 = sub_1D50B7594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50B7160(uint64_t a1)
{
  v2 = sub_1D50B7594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicFavoriteStatus.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6C8, &qword_1D56324B0);
  OUTLINED_FUNCTION_4();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6D0, &qword_1D56324B8);
  OUTLINED_FUNCTION_4();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6D8, &qword_1D56324C0);
  OUTLINED_FUNCTION_4();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6E0, &qword_1D56324C8);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50B7498();
  sub_1D56163D8();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_1D50B7540();
      v15 = v29;
      OUTLINED_FUNCTION_2_57(&type metadata for MusicFavoriteStatus.FavoritedCodingKeys, &v36);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_1D50B74EC();
      v15 = v32;
      OUTLINED_FUNCTION_2_57(&type metadata for MusicFavoriteStatus.DislikedCodingKeys, &v37);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1D50B7594();
    OUTLINED_FUNCTION_2_57(&type metadata for MusicFavoriteStatus.NeutralCodingKeys, &v35);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1D50B7498()
{
  result = qword_1EDD5EF98;
  if (!qword_1EDD5EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF98);
  }

  return result;
}

unint64_t sub_1D50B74EC()
{
  result = qword_1EC7EF6E8;
  if (!qword_1EC7EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF6E8);
  }

  return result;
}

unint64_t sub_1D50B7540()
{
  result = qword_1EC7EF6F0;
  if (!qword_1EC7EF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF6F0);
  }

  return result;
}

unint64_t sub_1D50B7594()
{
  result = qword_1EDD5EF80;
  if (!qword_1EDD5EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF80);
  }

  return result;
}

uint64_t MusicFavoriteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF6F8, &qword_1D56324D0);
  OUTLINED_FUNCTION_4();
  v56 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF700, &qword_1D56324D8);
  OUTLINED_FUNCTION_4();
  v53 = v7;
  v54 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF708, &qword_1D56324E0);
  OUTLINED_FUNCTION_4();
  v52 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF710, &unk_1D56324E8);
  OUTLINED_FUNCTION_4();
  v57 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50B7498();
  v21 = v60;
  sub_1D5616398();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v11;
  v50 = v15;
  v51 = v10;
  v23 = v58;
  v22 = v59;
  v60 = a1;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v26 == v27 >> 1)
  {
    goto LABEL_9;
  }

  v48 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v28) = *(v25 + v26);
    sub_1D4FE35EC();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v56;
    if (!v33)
    {
LABEL_9:
      v39 = sub_1D5615C18();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
      *v41 = &type metadata for MusicFavoriteStatus;
      sub_1D5615F28();
      sub_1D5615BF8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v20, v16);
      a1 = v60;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v62[0] = 1;
        sub_1D50B7540();
        v35 = v51;
        OUTLINED_FUNCTION_4_4(&type metadata for MusicFavoriteStatus.FavoritedCodingKeys, v62);
        v36 = v55;
        v37 = v16;
        v38 = v57;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v35, v54);
        (*(v38 + 8))(v20, v37);
      }

      else
      {
        LODWORD(v54) = v28;
        v62[1] = 2;
        sub_1D50B74EC();
        v43 = v48;
        sub_1D5615F18();
        v36 = v55;
        v28 = v16;
        v44 = v57;
        if (v43)
        {
          (*(v57 + 8))(v20, v28);
          swift_unknownObjectRelease();
          a1 = v60;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v34 + 8))(v23, v22);
        (*(v44 + 8))(v20, v28);
        LOBYTE(v28) = v54;
      }
    }

    else
    {
      v61 = 0;
      sub_1D50B7594();
      v42 = v50;
      OUTLINED_FUNCTION_4_4(&type metadata for MusicFavoriteStatus.NeutralCodingKeys, &v61);
      swift_unknownObjectRelease();
      (*(v52 + 8))(v42, v49);
      v45 = OUTLINED_FUNCTION_3_59();
      v46(v45);
      v36 = v55;
    }

    *v36 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

uint64_t MusicFavoriteStatus.description.getter()
{
  v1 = 0x7469726F7661662ELL;
  if (*v0 != 1)
  {
    v1 = 0x656B696C7369642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727475656E2ELL;
  }
}

unint64_t sub_1D50B7CB8()
{
  result = qword_1EC7EF718;
  if (!qword_1EC7EF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF718);
  }

  return result;
}

_BYTE *sub_1D50B7D0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50B7E1C()
{
  result = qword_1EC7EF720;
  if (!qword_1EC7EF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF720);
  }

  return result;
}

unint64_t sub_1D50B7E74()
{
  result = qword_1EDD5EF70;
  if (!qword_1EDD5EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF70);
  }

  return result;
}

unint64_t sub_1D50B7ECC()
{
  result = qword_1EDD5EF78;
  if (!qword_1EDD5EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF78);
  }

  return result;
}

unint64_t sub_1D50B7F24()
{
  result = qword_1EDD5EF50;
  if (!qword_1EDD5EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF50);
  }

  return result;
}

unint64_t sub_1D50B7F7C()
{
  result = qword_1EDD5EF58;
  if (!qword_1EDD5EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF58);
  }

  return result;
}

unint64_t sub_1D50B7FD4()
{
  result = qword_1EDD5EF60;
  if (!qword_1EDD5EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF60);
  }

  return result;
}

unint64_t sub_1D50B802C()
{
  result = qword_1EDD5EF68;
  if (!qword_1EDD5EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF68);
  }

  return result;
}

unint64_t sub_1D50B8084()
{
  result = qword_1EDD5EF88;
  if (!qword_1EDD5EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF88);
  }

  return result;
}

unint64_t sub_1D50B80DC()
{
  result = qword_1EDD5EF90;
  if (!qword_1EDD5EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EF90);
  }

  return result;
}

unint64_t sub_1D50B8148()
{
  result = qword_1EC7EF728;
  if (!qword_1EC7EF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF728);
  }

  return result;
}

uint64_t sub_1D50B81A4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F30474(v10, a1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D50B8208(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D4F30474(v11, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10]);
  return sub_1D5616328();
}

void *sub_1D50B824C(void *a1)
{
  v5 = a1;
  sub_1D4E628D4(a1, &v26);
  sub_1D50B873C();
  sub_1D5614C98();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v5;
  }

  else
  {
    v23 = v5;
    sub_1D50B8790();
    v5 = sub_1D5614BD8();
    v6 = 0;
    OUTLINED_FUNCTION_0_76();
    v9 = v8 >> 6;
    v24 = v8 >> 6;
    v25 = v7;
    if (v2)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_4:
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v10 >= v9)
      {
        __swift_destroy_boxed_opaque_existential_1(v23);

        return v5;
      }

      v2 = *(v7 + 8 * v10);
      ++v6;
    }

    while (!v2);
    v6 = v10;
LABEL_8:
    while (1)
    {
      OUTLINED_FUNCTION_3_60();
      v27 = 0;

      swift_isUniquelyReferenced_nonNull_native();
      v26 = v5;
      OUTLINED_FUNCTION_161();
      v11 = sub_1D4F15A78();
      if (__OFADD__(v5[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF740, &qword_1D5632A60);
      if (sub_1D5615D78())
      {
        OUTLINED_FUNCTION_161();
        v15 = sub_1D4F15A78();
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_23;
        }

        v13 = v15;
      }

      if (v14)
      {

        v5 = v26;
        *(v26[7] + 8 * v13) = v27;
      }

      else
      {
        v5 = v26;
        OUTLINED_FUNCTION_1_68(&v26[v13 >> 6]);
        v18 = (v17 + 16 * v13);
        *v18 = v4;
        v18[1] = v3;
        *(v5[7] + 8 * v13) = v27;
        v19 = v5[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_22;
        }

        v5[2] = v21;
      }

      v2 &= v2 - 1;
      v7 = v25;
      v9 = v24;
      if (!v2)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D50B84B0(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D5614BD8();
  v7 = a2 + 64;
  OUTLINED_FUNCTION_0_76();
  v9 = v8 >> 6;

  v10 = 0;
  v28 = v9;
  v29 = a2 + 64;
  if (v2)
  {
LABEL_6:
    while (1)
    {
      OUTLINED_FUNCTION_3_60();

      swift_isUniquelyReferenced_nonNull_native();
      v12 = OUTLINED_FUNCTION_161();
      v14 = sub_1D4E4EFA0(v12, v13);
      if (__OFADD__(*(v6 + 16), (v15 & 1) == 0))
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF748, &qword_1D5632A68);
      if (sub_1D5615D78())
      {
        v18 = OUTLINED_FUNCTION_161();
        v20 = sub_1D4E4EFA0(v18, v19);
        if ((v17 & 1) != (v21 & 1))
        {
          goto LABEL_20;
        }

        v16 = v20;
      }

      if (v17)
      {

        *(*(v6 + 56) + 8 * v16) = v7;
      }

      else
      {
        OUTLINED_FUNCTION_1_68(v6 + 8 * (v16 >> 6));
        v23 = (v22 + 16 * v16);
        *v23 = v4;
        v23[1] = v3;
        *(*(v6 + 56) + 8 * v16) = v7;
        v24 = *(v6 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_19;
        }

        *(v6 + 16) = v26;
      }

      v2 &= v2 - 1;
      v9 = v28;
      v7 = v29;
      if (!v2)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        sub_1D50B87E4();
        sub_1D5614C88();
      }

      v2 = *(v7 + 8 * v11);
      ++v10;
      if (v2)
      {
        v10 = v11;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

void *sub_1D50B86F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D50B824C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D50B873C()
{
  result = qword_1EC7EF730;
  if (!qword_1EC7EF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF730);
  }

  return result;
}

unint64_t sub_1D50B8790()
{
  result = qword_1EC7EF738;
  if (!qword_1EC7EF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF738);
  }

  return result;
}

unint64_t sub_1D50B87E4()
{
  result = qword_1EC7EF750;
  if (!qword_1EC7EF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF750);
  }

  return result;
}

uint64_t sub_1D50B8838()
{
  v1 = v0;
  v2 = sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D5615C18();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v1, v8);
  v14 = (*(v10 + 88))(v13, v8);
  if (v14 == *MEMORY[0x1E69E6AF8] || v14 == *MEMORY[0x1E69E6B08])
  {
    v15 = OUTLINED_FUNCTION_1_69();
    v16(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    v17 = OUTLINED_FUNCTION_0_77();
    v18(v17);
LABEL_4:
    sub_1D5615BE8();
    v19 = OUTLINED_FUNCTION_2_58();
    v20(v19);
    return v1;
  }

  if (v14 == *MEMORY[0x1E69E6AF0])
  {
    v22 = OUTLINED_FUNCTION_1_69();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF758, &unk_1D5632A70);
    v24 = OUTLINED_FUNCTION_0_77();
    v25(v24);
    sub_1D5615BE8();
    v26 = OUTLINED_FUNCTION_2_58();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v1;
  }

  if (v14 == *MEMORY[0x1E69E6B00])
  {
    v28 = OUTLINED_FUNCTION_1_69();
    v29(v28);
    (*(v4 + 32))(v7, v13, v2);
    goto LABEL_4;
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D5683AC0);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D50B8B48(uint64_t a1)
{
  type metadata accessor for ICError();
  sub_1D50B8C18();
  v1 = sub_1D560BE68();
  v2 = sub_1D5614D68();
  sub_1D4E494C8(v2, v3, v1);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D50B8C70(v6);
    return 0;
  }
}

unint64_t sub_1D50B8C18()
{
  result = qword_1EDD52A10;
  if (!qword_1EDD52A10)
  {
    type metadata accessor for ICError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52A10);
  }

  return result;
}

uint64_t sub_1D50B8C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D50B8D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v18 = a1;
  OUTLINED_FUNCTION_58_0();
  v4 = sub_1D560E4F8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  sub_1D56151C8();
  sub_1D5616128();
  swift_getAssociatedTypeWitness();
  sub_1D56151C8();
  sub_1D5616128();
  v10 = (v3 + *(*v3 + qword_1EDD76EF0 + 48));
  v11 = v17;
  *v10 = v16;
  v10[1] = v11;
  v12 = v18;
  (*(v6 + 16))(v9, v18, v4);
  v13 = sub_1D5613368();
  (*(v6 + 8))(v12, v4);
  return v13;
}

uint64_t sub_1D50B8F84()
{
  OUTLINED_FUNCTION_5_52();
  v1 = *(v0 + qword_1EDD76EF0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_7_50();
  v7 = OUTLINED_FUNCTION_3_61();
  v8(v7);
  OUTLINED_FUNCTION_4_47();
  (*(v3 + 8))(v6, v1);
  return v10;
}

uint64_t sub_1D50B9094()
{
  OUTLINED_FUNCTION_5_52();
  v1 = *(v0 + qword_1EDD76EF0 + 8);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_7_50();
  v7 = OUTLINED_FUNCTION_3_61();
  v8(v7);
  OUTLINED_FUNCTION_4_47();
  (*(v3 + 8))(v6, v1);
  return v10;
}

uint64_t sub_1D50B91F4()
{
  OUTLINED_FUNCTION_5_52();
  OUTLINED_FUNCTION_1_70();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_5_52();
  OUTLINED_FUNCTION_1_70();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_58_0();
}